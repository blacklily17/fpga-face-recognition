#include "cnn_reference.h"

static int floor_half(int v) { return v >= 0 ? v/2 : -((-v+1)/2); }
static int clamp(int v, int lo, int hi) { return v < lo ? lo : (v > hi ? hi : v); }

int cnn_crop32(const uint8_t *gray, int width, int height, int stride,
               int x, int y, int w, int h, int8_t output[1024]) {
    int side, left, top, dx, dy;
    /* Bounded dimensions prevent arithmetic overflow and match snapshot use. */
    if (!gray || !output || width < 1 || height < 1 || width > 4096 || height > 4096 ||
        stride < width || stride > 16384 || x < 0 || y < 0 || x >= width || y >= height ||
        w < 1 || h < 1 || w > width-x || h > height-y) return -1;
    side = w > h ? w : h;
    if (side > width) side = width;
    if (side > height) side = height;
    left = clamp(floor_half(2*x+w-side), 0, width-side);
    top = clamp(floor_half(2*y+h-side), 0, height-side);
    for (dy = 0; dy < 32; ++dy) {
        int sy = top+(2*dy+1)*side/64;
        for (dx = 0; dx < 32; ++dx) {
            int sx = left+(2*dx+1)*side/64;
            output[dy*32+dx] = (int8_t)((int)gray[sy*stride+sx]-128);
        }
    }
    return 0;
}

static void conv(const int8_t *input, int size, int cin, const int8_t *weight,
                 const int32_t *bias, unsigned int shift, int8_t *out) {
    int y, x, oc, ic, ky, kx, pos = 0;
    for (y = 0; y < size-2; ++y) for (x = 0; x < size-2; ++x) for (oc = 0; oc < 8; ++oc) {
        int64_t acc = bias[oc];
        for (ic = 0; ic < cin; ++ic) for (ky = 0; ky < 3; ++ky) for (kx = 0; kx < 3; ++kx) {
            int a = input[((y+ky)*size+x+kx)*cin+ic];
            int b = weight[((oc*cin+ic)*3+ky)*3+kx];
            acc += a*b;
        }
        /* ReLU precedes shift: no implementation-defined negative C shift. */
        if (acc < 0) acc = 0;
        acc >>= shift;
        out[pos++] = (int8_t)(acc > 127 ? 127 : acc);
    }
}

static void pool(const int8_t *input, int size, int8_t *out) {
    int y, x, c, dy, dx, pos = 0;
    for (y = 0; y < size/2; ++y) for (x = 0; x < size/2; ++x) for (c = 0; c < 8; ++c) {
        int best = -128;
        for (dy = 0; dy < 2; ++dy) for (dx = 0; dx < 2; ++dx) {
            int v = input[((2*y+dy)*size+2*x+dx)*8+c];
            if (v > best) best = v;
        }
        out[pos++] = (int8_t)best;
    }
}

int cnn_classify(const int8_t pool2[288], const cnn_model_t *model, int64_t *margin, int *is_face) {
    int i, f;
    int64_t sums[2];
    if (!pool2 || !model || !margin || !is_face || !model->head_w || !model->head_b ||
        (model->head_features != 8 && model->head_features != 288)) return -1;
    for (i = 0; i < 288; ++i) if (pool2[i] < 0) return -1; /* ReLU contract. */
    sums[0] = model->head_b[0]; sums[1] = model->head_b[1];
    for (f = 0; f < model->head_features; ++f) {
        int feature = 0;
        if (model->head_features == 8) {
            for (i = 0; i < 36; ++i) feature += pool2[i*8+f];
            feature /= 36;
        } else feature = pool2[f];
        sums[0] += feature*model->head_w[f];
        sums[1] += feature*model->head_w[model->head_features+f];
    }
    *margin = sums[1]-sums[0];
    *is_face = *margin >= model->threshold;
    return 0;
}

int cnn_infer(const int8_t input[1024], const cnn_model_t *model,
              cnn_workspace_t *workspace, int64_t *margin, int *is_face) {
    if (!input || !model || !workspace || !margin || !is_face || !model->conv1_w ||
        !model->conv2_w || !model->conv1_b || !model->conv2_b || model->shift1 > 63 || model->shift2 > 63)
        return -1;
    conv(input, 32, 1, model->conv1_w, model->conv1_b, model->shift1, workspace->conv);
    pool(workspace->conv, 30, workspace->pool1);
    conv(workspace->pool1, 15, 8, model->conv2_w, model->conv2_b, model->shift2, workspace->conv);
    pool(workspace->conv, 13, workspace->pool2);
    return cnn_classify(workspace->pool2, model, margin, is_face);
}
