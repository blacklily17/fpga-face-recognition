/* C16 numerical specialization of the frozen C5 reference; see numeric_provenance.json. */
#include "cnn16_numeric.h"

#include <string.h>

#define C16_ACC_MIN (-(INT64_C(1) << 39))
#define C16_ACC_MAX ((INT64_C(1) << 39) - INT64_C(1))

static uint32_t c16_min_u32(uint32_t a, uint32_t b) { return a < b ? a : b; }

static int c16_buffer(const void *buffer, size_t capacity, size_t needed)
{
    return capacity >= needed && (needed == 0 || buffer != NULL);
}

/* Integer address comparison avoids undefined relational pointer comparisons.
 * Flat address spaces are required (ARM Cortex-A9 and Windows host).
 */
static int c16_overlaps(const void *a, size_t an, const void *b, size_t bn)
{
    uintptr_t aa, bb;
    if (an == 0 || bn == 0) return 0;
    aa = (uintptr_t)a; bb = (uintptr_t)b;
    if (aa <= bb) return (uintmax_t)(bb - aa) < (uintmax_t)an;
    return (uintmax_t)(aa - bb) < (uintmax_t)bn;
}

int c16_shape_bytes(c16_shape_t shape, size_t *bytes)
{
    uint64_t total;
    if (bytes == NULL || shape.width > 65535U || shape.height > 65535U ||
        shape.channels == 0 || shape.channels > 16U) return C5_BAD_ARG;
    total = (uint64_t)shape.width * shape.height * shape.channels;
    if (total > (uint64_t)SIZE_MAX) return C5_BAD_ARG;
    *bytes = (size_t)total;
    return C5_OK;
}

static int c16_tensor_bytes(const c16_tensor_t *source, size_t *bytes)
{
    if (source == NULL || c16_shape_bytes(source->shape, bytes) != C5_OK ||
        !c16_buffer(source->data, source->capacity, *bytes)) return C5_BAD_ARG;
    return C5_OK;
}

int c16_camera_input(const uint8_t *gray, size_t gray_capacity,
                    int8_t *output, size_t output_capacity)
{
    uint32_t x, y;
    if (!c16_buffer(gray, gray_capacity, C16_CAMERA_BYTES) ||
        !c16_buffer(output, output_capacity, C16_CAMERA_INPUT_BYTES) ||
        c16_overlaps(gray, C16_CAMERA_BYTES, output, C16_CAMERA_INPUT_BYTES)) return C5_BAD_ARG;
    for (y = 0; y < 96U; ++y) {
        uint32_t sy = ((2U * y + 1U) * 240U) / 192U;
        for (x = 0; x < 160U; ++x) {
            uint32_t sx = ((2U * x + 1U) * 400U) / 320U;
            output[y * 160U + x] = (int8_t)((int32_t)gray[sy * 400U + sx] - 128);
        }
    }
    return C5_OK;
}

static int8_t c16_quantize_unchecked(int64_t accumulator, uint32_t shift, uint32_t relu)
{
    int64_t shifted;
    if (relu != 0 && accumulator < 0) accumulator = 0;
    if (accumulator >= 0) shifted = (int64_t)((uint64_t)accumulator >> shift);
    else {
        uint64_t magnitude = (uint64_t)(-accumulator);
        uint64_t mask = (UINT64_C(1) << shift) - UINT64_C(1);
        shifted = -(int64_t)(magnitude >> shift);
        if ((magnitude & mask) != 0) --shifted;
    }
    if (shifted < -128) return (int8_t)-128;
    if (shifted > 127) return (int8_t)127;
    return (int8_t)shifted;
}

int c16_quantize_int8(int64_t accumulator, uint32_t shift, uint32_t relu, int8_t *output)
{
    if (output == NULL || accumulator < C16_ACC_MIN || accumulator > C16_ACC_MAX ||
        shift > 63U || relu > 1U) return C5_BAD_ARG;
    *output = c16_quantize_unchecked(accumulator, shift, relu);
    return C5_OK;
}

static int c16_conv_check(const c16_tensor_t *source, const c16_conv_params_t *params,
                         uint32_t valid, int8_t *output, size_t output_capacity,
                         size_t *source_bytes, size_t *output_bytes)
{
    c16_shape_t shape;
    size_t wn, bn;
    if (c16_tensor_bytes(source, source_bytes) != C5_OK || params == NULL ||
        source->shape.width == 0 || source->shape.height == 0 ||
        params->in_channels != source->shape.channels || params->out_channels == 0 ||
        params->out_channels > 16U || params->shift > 63U || params->relu > 1U) return C5_BAD_ARG;
    wn = (size_t)params->out_channels * 9U * params->in_channels;
    bn = (size_t)params->out_channels * sizeof(int32_t);
    if (!c16_buffer(params->weights, params->weights_count, wn) || params->bias == NULL ||
        params->bias_count < params->out_channels) return C5_BAD_ARG;
    shape = source->shape; shape.channels = params->out_channels;
    if (valid != 0) {
        if (shape.width < 3U || shape.width > 32U || shape.height < 3U || shape.height > 32U)
            return C5_BAD_ARG;
        shape.width -= 2U; shape.height -= 2U;
    }
    if (c16_shape_bytes(shape, output_bytes) != C5_OK ||
        !c16_buffer(output, output_capacity, *output_bytes) ||
        c16_overlaps(output, *output_bytes, source->data, *source_bytes) ||
        c16_overlaps(output, *output_bytes, params->weights, wn) ||
        c16_overlaps(output, *output_bytes, params->bias, bn)) return C5_BAD_ARG;
    /* |bias| <=2^31 and at most 144 products of magnitude <=16384.
     * Every partial sum is therefore <2^32 and safely inside signed 40 bits.
     */
    return C5_OK;
}

static int c16_conv_kernel(const c16_tensor_t *source, const c16_conv_params_t *params,
                         uint32_t valid, int8_t *output, size_t output_capacity)
{
    size_t source_bytes, output_bytes, destination = 0;
    uint32_t x, y, oc, ic, ky, kx, ow, oh;
    if (c16_conv_check(source, params, valid, output, output_capacity,
                       &source_bytes, &output_bytes) != C5_OK) return C5_BAD_ARG;
    ow = source->shape.width - (valid != 0 ? 2U : 0U);
    oh = source->shape.height - (valid != 0 ? 2U : 0U);
    for (y = 0; y < oh; ++y) for (x = 0; x < ow; ++x) {
        for (oc = 0; oc < params->out_channels; ++oc) {
            int64_t accumulator = params->bias[oc];
            for (ic = 0; ic < params->in_channels; ++ic) for (ky = 0; ky < 3U; ++ky) {
                for (kx = 0; kx < 3U; ++kx) {
                    int32_t sx = (int32_t)x + (int32_t)kx - (valid != 0 ? 0 : 1);
                    int32_t sy = (int32_t)y + (int32_t)ky - (valid != 0 ? 0 : 1);
                    if (sx >= 0 && sy >= 0 && (uint32_t)sx < source->shape.width &&
                        (uint32_t)sy < source->shape.height) {
                        size_t si = ((size_t)(uint32_t)sy * source->shape.width + (uint32_t)sx) *
                                    params->in_channels + ic;
                        size_t wi = ((size_t)oc * params->in_channels + ic) * 9U + ky * 3U + kx;
                        accumulator += (int64_t)source->data[si] * params->weights[wi];
                    }
                }
            }
            output[destination++] = c16_quantize_unchecked(accumulator, params->shift, params->relu);
        }
    }
    return C5_OK;
}

int c16_conv3x3_same(const c16_tensor_t *source, const c16_conv_params_t *params,
                    int8_t *output, size_t output_capacity)
{ return c16_conv_kernel(source, params, 0, output, output_capacity); }

int c16_conv3x3_valid(const c16_tensor_t *source, const c16_conv_params_t *params,
                     int8_t *output, size_t output_capacity)
{ return c16_conv_kernel(source, params, 1, output, output_capacity); }

static int c16_conv_tile_check(c16_shape_t shape, const c16_conv_tile_t *tile)
{
    size_t bytes;
    if (c16_shape_bytes(shape, &bytes) != C5_OK || tile == NULL ||
        tile->x >= shape.width || tile->y >= shape.height ||
        tile->output_width == 0 || tile->output_width > 30U ||
        tile->output_height == 0 || tile->output_height > 30U ||
        tile->output_width > shape.width - tile->x ||
        tile->output_height > shape.height - tile->y ||
        tile->input_width != tile->output_width + 2U ||
        tile->input_height != tile->output_height + 2U) return C5_BAD_ARG;
    return C5_OK;
}

int c16_conv_tile_make(c16_shape_t shape, uint32_t x, uint32_t y,
                     uint32_t tile_output, c16_conv_tile_t *tile)
{
    size_t bytes;
    if (c16_shape_bytes(shape, &bytes) != C5_OK || tile == NULL ||
        x >= shape.width || y >= shape.height || tile_output == 0 || tile_output > 30U)
        return C5_BAD_ARG;
    tile->x = x; tile->y = y;
    tile->output_width = c16_min_u32(tile_output, shape.width - x);
    tile->output_height = c16_min_u32(tile_output, shape.height - y);
    tile->input_width = tile->output_width + 2U;
    tile->input_height = tile->output_height + 2U;
    return C5_OK;
}

int c16_conv_tile_gather(const c16_tensor_t *source, const c16_conv_tile_t *tile,
                       int8_t *input, size_t input_capacity)
{
    size_t source_bytes, needed;
    uint32_t x, y, c;
    if (c16_tensor_bytes(source, &source_bytes) != C5_OK ||
        c16_conv_tile_check(source->shape, tile) != C5_OK) return C5_BAD_ARG;
    needed = (size_t)tile->input_width * tile->input_height * source->shape.channels;
    if (!c16_buffer(input, input_capacity, needed) ||
        c16_overlaps(input, needed, source->data, source_bytes)) return C5_BAD_ARG;
    for (y = 0; y < tile->input_height; ++y) for (x = 0; x < tile->input_width; ++x) {
        int32_t sx = (int32_t)tile->x + (int32_t)x - 1;
        int32_t sy = (int32_t)tile->y + (int32_t)y - 1;
        for (c = 0; c < source->shape.channels; ++c) {
            size_t di = ((size_t)y * tile->input_width + x) * source->shape.channels + c;
            input[di] = 0;
            if (sx >= 0 && sy >= 0 && (uint32_t)sx < source->shape.width &&
                (uint32_t)sy < source->shape.height) {
                size_t si = ((size_t)(uint32_t)sy * source->shape.width + (uint32_t)sx) *
                            source->shape.channels + c;
                input[di] = source->data[si];
            }
        }
    }
    return C5_OK;
}

int c16_conv_tile_scatter(c16_shape_t output_shape, const c16_conv_tile_t *tile,
                        const int8_t *tile_output, size_t tile_capacity,
                        int8_t *output, size_t output_capacity)
{
    size_t output_bytes, tile_bytes, row_bytes;
    uint32_t y;
    if (c16_shape_bytes(output_shape, &output_bytes) != C5_OK ||
        c16_conv_tile_check(output_shape, tile) != C5_OK) return C5_BAD_ARG;
    row_bytes = (size_t)tile->output_width * output_shape.channels;
    tile_bytes = row_bytes * tile->output_height;
    if (!c16_buffer(output, output_capacity, output_bytes) ||
        !c16_buffer(tile_output, tile_capacity, tile_bytes) ||
        c16_overlaps(output, output_bytes, tile_output, tile_bytes)) return C5_BAD_ARG;
    for (y = 0; y < tile->output_height; ++y) {
        size_t destination = ((size_t)(tile->y + y) * output_shape.width + tile->x) * output_shape.channels;
        memcpy(output + destination, tile_output + (size_t)y * row_bytes, row_bytes);
    }
    return C5_OK;
}

static int c16_workspace_check(c16_numeric_workspace_t work, size_t input_needed,
                              size_t output_needed, const c16_tensor_t *source,
                              size_t source_bytes, int8_t *output, size_t output_bytes)
{
    if (!c16_buffer(work.input, work.input_capacity, input_needed) ||
        !c16_buffer(work.output, work.output_capacity, output_needed) ||
        c16_overlaps(work.input, input_needed, work.output, output_needed) ||
        c16_overlaps(work.input, input_needed, source->data, source_bytes) ||
        c16_overlaps(work.output, output_needed, source->data, source_bytes) ||
        c16_overlaps(work.input, input_needed, output, output_bytes) ||
        c16_overlaps(work.output, output_needed, output, output_bytes)) return C5_BAD_ARG;
    return C5_OK;
}

int c16_conv3x3_tiled(const c16_tensor_t *source, const c16_conv_params_t *params,
                    uint32_t tile_output, c16_numeric_workspace_t workspace,
                    int8_t *output, size_t output_capacity, uint32_t *tile_count)
{
    size_t source_bytes, output_bytes, wn, bn;
    uint32_t x, y, count = 0;
    c16_shape_t output_shape;
    if (tile_output == 0 || tile_output > 30U ||
        c16_conv_check(source, params, 0, output, output_capacity, &source_bytes, &output_bytes) != C5_OK ||
        c16_workspace_check(workspace, C16_CONV_INPUT_MAX, C16_CONV_OUTPUT_MAX,
                           source, source_bytes, output, output_bytes) != C5_OK) return C5_BAD_ARG;
    wn = (size_t)params->out_channels * params->in_channels * 9U;
    bn = (size_t)params->out_channels * sizeof(int32_t);
    if (c16_overlaps(workspace.input, C16_CONV_INPUT_MAX, params->weights, wn) ||
        c16_overlaps(workspace.output, C16_CONV_OUTPUT_MAX, params->weights, wn) ||
        c16_overlaps(workspace.input, C16_CONV_INPUT_MAX, params->bias, bn) ||
        c16_overlaps(workspace.output, C16_CONV_OUTPUT_MAX, params->bias, bn)) return C5_BAD_ARG;
    output_shape = source->shape; output_shape.channels = params->out_channels;
    for (y = 0; y < source->shape.height; y += tile_output) {
        for (x = 0; x < source->shape.width; x += tile_output) {
            c16_conv_tile_t tile;
            c16_tensor_t gathered;
            if (c16_conv_tile_make(source->shape, x, y, tile_output, &tile) != C5_OK) return C5_BAD_ARG;
            gathered.shape.width = tile.input_width; gathered.shape.height = tile.input_height;
            gathered.shape.channels = source->shape.channels;
            gathered.data = workspace.input; gathered.capacity = workspace.input_capacity;
            if (c16_conv_tile_gather(source, &tile, workspace.input, workspace.input_capacity) != C5_OK ||
                c16_conv3x3_valid(&gathered, params, workspace.output, workspace.output_capacity) != C5_OK ||
                c16_conv_tile_scatter(output_shape, &tile, workspace.output, workspace.output_capacity,
                                     output, output_capacity) != C5_OK) return C5_BAD_ARG;
            ++count;
        }
    }
    if (tile_count != NULL) *tile_count = count;
    return C5_OK;
}

int c16_maxpool2x2(const c16_tensor_t *source, int8_t *output, size_t output_capacity)
{
    c16_shape_t shape;
    size_t source_bytes, output_bytes, di = 0;
    uint32_t x, y, c;
    if (c16_tensor_bytes(source, &source_bytes) != C5_OK) return C5_BAD_ARG;
    shape = source->shape; shape.width /= 2U; shape.height /= 2U;
    if (c16_shape_bytes(shape, &output_bytes) != C5_OK ||
        !c16_buffer(output, output_capacity, output_bytes) ||
        c16_overlaps(output, output_bytes, source->data, source_bytes)) return C5_BAD_ARG;
    for (y = 0; y < shape.height; ++y) for (x = 0; x < shape.width; ++x) {
        for (c = 0; c < shape.channels; ++c) {
            size_t si = ((size_t)(2U * y) * source->shape.width + 2U * x) * shape.channels + c;
            size_t row = (size_t)source->shape.width * shape.channels;
            int8_t value = source->data[si];
            if (source->data[si + shape.channels] > value) value = source->data[si + shape.channels];
            if (source->data[si + row] > value) value = source->data[si + row];
            if (source->data[si + row + shape.channels] > value) value = source->data[si + row + shape.channels];
            output[di++] = value;
        }
    }
    return C5_OK;
}

int c16_pool_tile_make(c16_shape_t shape, uint32_t x, uint32_t y, c16_pool_tile_t *tile)
{
    size_t bytes;
    uint32_t w, h;
    if (c16_shape_bytes(shape, &bytes) != C5_OK || tile == NULL || shape.channels != 16U ||
        x >= shape.width || y >= shape.height || x % 32U != 0 || y % 32U != 0) return C5_BAD_ARG;
    w = c16_min_u32(32U, shape.width - x); h = c16_min_u32(32U, shape.height - y);
    if (w < 2U || h < 2U) return C5_EXHAUSTED;
    tile->x = x; tile->y = y; tile->valid_width = w; tile->valid_height = h;
    return C5_OK;
}

static int c16_pool_tile_check(c16_shape_t shape, const c16_pool_tile_t *tile)
{
    c16_pool_tile_t expected;
    if (tile == NULL || c16_pool_tile_make(shape, tile->x, tile->y, &expected) != C5_OK ||
        tile->valid_width != expected.valid_width || tile->valid_height != expected.valid_height)
        return C5_BAD_ARG;
    return C5_OK;
}

int c16_pool_tile_gather(const c16_tensor_t *source, const c16_pool_tile_t *tile,
                       int8_t *input, size_t input_capacity)
{
    size_t source_bytes;
    uint32_t y;
    if (c16_tensor_bytes(source, &source_bytes) != C5_OK ||
        c16_pool_tile_check(source->shape, tile) != C5_OK ||
        !c16_buffer(input, input_capacity, C16_POOL_INPUT_BYTES) ||
        c16_overlaps(input, C16_POOL_INPUT_BYTES, source->data, source_bytes)) return C5_BAD_ARG;
    memset(input, 0, C16_POOL_INPUT_BYTES);
    for (y = 0; y < tile->valid_height; ++y) {
        size_t si = ((size_t)(tile->y + y) * source->shape.width + tile->x) * 16U;
        memcpy(input + (size_t)y * 32U * 16U, source->data + si, (size_t)tile->valid_width * 16U);
    }
    return C5_OK;
}

int c16_pool_tile_scatter(c16_shape_t source_shape, const c16_pool_tile_t *tile,
                        const int8_t *tile_output, size_t tile_capacity,
                        int8_t *output, size_t output_capacity)
{
    size_t bytes;
    uint32_t y, ow = source_shape.width / 2U;
    c16_shape_t output_shape = source_shape;
    output_shape.width /= 2U; output_shape.height /= 2U;
    if (c16_pool_tile_check(source_shape, tile) != C5_OK ||
        c16_shape_bytes(output_shape, &bytes) != C5_OK ||
        !c16_buffer(tile_output, tile_capacity, C16_POOL_OUTPUT_BYTES) ||
        !c16_buffer(output, output_capacity, bytes) ||
        c16_overlaps(output, bytes, tile_output, C16_POOL_OUTPUT_BYTES)) return C5_BAD_ARG;
    for (y = 0; y < tile->valid_height / 2U; ++y) {
        size_t di = ((size_t)(tile->y / 2U + y) * ow + tile->x / 2U) * 16U;
        memcpy(output + di, tile_output + (size_t)y * 16U * 16U, (size_t)(tile->valid_width / 2U) * 16U);
    }
    return C5_OK;
}

int c16_maxpool2x2_tiled(const c16_tensor_t *source, c16_numeric_workspace_t workspace,
                       int8_t *output, size_t output_capacity, uint32_t *tile_count)
{
    c16_shape_t shape;
    size_t source_bytes, output_bytes;
    uint32_t x, y, count = 0;
    if (c16_tensor_bytes(source, &source_bytes) != C5_OK || source->shape.channels != 16U) return C5_BAD_ARG;
    shape = source->shape; shape.width /= 2U; shape.height /= 2U;
    if (c16_shape_bytes(shape, &output_bytes) != C5_OK ||
        !c16_buffer(output, output_capacity, output_bytes) ||
        c16_overlaps(output, output_bytes, source->data, source_bytes)) return C5_BAD_ARG;
    if (output_bytes == 0) {
        if (tile_count != NULL) *tile_count = 0;
        return C5_OK;
    }
    if (c16_workspace_check(workspace, C16_POOL_INPUT_BYTES, C16_POOL_OUTPUT_BYTES,
                           source, source_bytes, output, output_bytes) != C5_OK) return C5_BAD_ARG;
    for (y = 0; y < source->shape.height; y += 32U) for (x = 0; x < source->shape.width; x += 32U) {
        c16_pool_tile_t tile;
        c16_tensor_t gathered = {{32, 32, 16}, workspace.input, workspace.input_capacity};
        int rc = c16_pool_tile_make(source->shape, x, y, &tile);
        if (rc == C5_EXHAUSTED) continue;
        if (rc != C5_OK || c16_pool_tile_gather(source, &tile, workspace.input, workspace.input_capacity) != C5_OK ||
            c16_maxpool2x2(&gathered, workspace.output, workspace.output_capacity) != C5_OK ||
            c16_pool_tile_scatter(source->shape, &tile, workspace.output, workspace.output_capacity,
                                  output, output_capacity) != C5_OK) return C5_BAD_ARG;
        ++count;
    }
    if (tile_count != NULL) *tile_count = count;
    return C5_OK;
}
