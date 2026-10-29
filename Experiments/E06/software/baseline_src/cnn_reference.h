#ifndef AC880_CNN_REFERENCE_H
#define AC880_CNN_REFERENCE_H
#include <stdint.h>

typedef struct {
    const int8_t *conv1_w, *conv2_w, *head_w;
    const int32_t *conv1_b, *conv2_b, *head_b;
    uint8_t shift1, shift2;
    uint16_t head_features; /* 8: per-channel floor mean; 288: HWC flatten */
    int64_t threshold;
} cnn_model_t;

typedef struct {
    int8_t conv[7200], pool1[1800], pool2[288];
} cnn_workspace_t; /* Caller owns 9288 bytes; no heap allocation. */

/* Gray is the original snapshot, before green-box overlay. Half-open bbox. */
int cnn_crop32(const uint8_t *gray, int width, int height, int stride,
               int x, int y, int w, int h, int8_t output[1024]);
/* Portable reference / PS fallback. PL offloads the two conv+pool stages. */
int cnn_infer(const int8_t input[1024], const cnn_model_t *model,
              cnn_workspace_t *workspace, int64_t *margin, int *is_face);
/* Call after receiving the 288-byte second-pool tensor from PL. */
int cnn_classify(const int8_t pool2[288], const cnn_model_t *model,
                 int64_t *margin, int *is_face);
#endif
