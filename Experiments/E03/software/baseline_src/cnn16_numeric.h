/* C16 numerical specialization of the frozen C5 reference; see numeric_provenance.json. */
#ifndef CNN16_NUMERIC_H
#define CNN16_NUMERIC_H

#include "cnn5_types.h"

/* HWC signed INT8 tensors. Capacity always counts bytes, never elements/words.
 * Buffers may not alias. No function allocates, touches MMIO, or owns DMA.
 * Shape dimensions are <=65535, channels 1..16. Empty pool results are valid.
 */
typedef struct { uint32_t width, height, channels; } c16_shape_t;
typedef struct {
    c16_shape_t shape;
    const int8_t *data;
    size_t capacity;
} c16_tensor_t;

/* Weights: O_I_KY_KX (kx contiguous), bias added exactly once before ReLU,
 * signed floor right shift and INT8 saturation. No input-channel splitting.
 */
typedef struct {
    uint32_t in_channels, out_channels;
    const int8_t *weights;
    size_t weights_count;
    const int32_t *bias;
    size_t bias_count;
    uint32_t shift, relu;
} c16_conv_params_t;

typedef struct {
    int8_t *input;
    size_t input_capacity;
    int8_t *output;
    size_t output_capacity;
} c16_numeric_workspace_t;

typedef struct {
    uint32_t x, y, output_width, output_height, input_width, input_height;
} c16_conv_tile_t;
typedef struct { uint32_t x, y, valid_width, valid_height; } c16_pool_tile_t;

enum { C16_CONV_INPUT_MAX=16384, C16_CONV_OUTPUT_MAX=14400,
       C16_POOL_INPUT_BYTES=16384, C16_POOL_OUTPUT_BYTES=4096,
       C16_CAMERA_BYTES=96000, C16_CAMERA_INPUT_BYTES=15360 };

int c16_shape_bytes(c16_shape_t shape, size_t *bytes);
int c16_camera_input(const uint8_t *gray, size_t gray_capacity,
                    int8_t *output, size_t output_capacity);
int c16_quantize_int8(int64_t accumulator, uint32_t shift, uint32_t relu,
                    int8_t *output);
int c16_conv3x3_same(const c16_tensor_t *source, const c16_conv_params_t *params,
                    int8_t *output, size_t output_capacity);
/* Valid kernel accepts only 3..32 input width/height, like the M14 tile. */
int c16_conv3x3_valid(const c16_tensor_t *source, const c16_conv_params_t *params,
                     int8_t *output, size_t output_capacity);

/* Any tile_output in 1..30 is mathematical host support, not an AXIS claim. */
int c16_conv_tile_make(c16_shape_t shape, uint32_t x, uint32_t y,
                     uint32_t tile_output, c16_conv_tile_t *tile);
int c16_conv_tile_gather(const c16_tensor_t *source, const c16_conv_tile_t *tile,
                       int8_t *input, size_t input_capacity);
int c16_conv_tile_scatter(c16_shape_t output_shape, const c16_conv_tile_t *tile,
                        const int8_t *tile_output, size_t tile_capacity,
                        int8_t *output, size_t output_capacity);
/* Synchronous scalar reference convenience only, not a real-time scheduler.
 * Requires caller workspace of 16384 input bytes and 14400 output bytes.
 */
int c16_conv3x3_tiled(const c16_tensor_t *source, const c16_conv_params_t *params,
                    uint32_t tile_output, c16_numeric_workspace_t workspace,
                    int8_t *output, size_t output_capacity, uint32_t *tile_count);

int c16_maxpool2x2(const c16_tensor_t *source, int8_t *output, size_t output_capacity);
/* Fixed 32x32x16 pool-only jobs. Origins are global multiples of 32.
 * EXHAUSTED means the remaining strip has no complete 2x2 window.
 */
int c16_pool_tile_make(c16_shape_t shape, uint32_t x, uint32_t y, c16_pool_tile_t *tile);
int c16_pool_tile_gather(const c16_tensor_t *source, const c16_pool_tile_t *tile,
                       int8_t *input, size_t input_capacity);
/* source_shape describes the pre-pooling whole tensor. */
int c16_pool_tile_scatter(c16_shape_t source_shape, const c16_pool_tile_t *tile,
                        const int8_t *tile_output, size_t tile_capacity,
                        int8_t *output, size_t output_capacity);
int c16_maxpool2x2_tiled(const c16_tensor_t *source, c16_numeric_workspace_t workspace,
                       int8_t *output, size_t output_capacity, uint32_t *tile_count);

#endif
