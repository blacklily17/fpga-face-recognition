#ifndef CNN16_REFERENCE_H
#define CNN16_REFERENCE_H
#include "cnn16_numeric.h"
#include "cnn5_detection.h"

/* Full-frame CPU numerical reference only. It does not advertise DMA capability
 * and is not called from the live UI. Real-time work must use bounded steps. */
enum { C16_INPUT_BYTES=15360, C16_FEATURE_BYTES=245760, C16_F8_BYTES=3840,
       C16_STAGE_COUNT=9 };
typedef struct { int8_t weights[5][16]; int32_t bias[5]; double scales[5]; } c16_head_params_t;
int c16_linear_head(const int8_t *,size_t,size_t,const c16_head_params_t *,c5_head_row_t *,size_t);
typedef struct {
    c16_conv_params_t conv[5];
    c16_head_params_t head[2];
    double anchors[2][2];
    c5_post_config_t post;
} c16_model_t;
typedef struct {
    int8_t feature_a[C16_FEATURE_BYTES],feature_b[C16_FEATURE_BYTES];
    int8_t f8[C16_F8_BYTES];
    int8_t tile_input[C16_CONV_INPUT_MAX],tile_output[C16_CONV_OUTPUT_MAX];
    c5_head_row_t rows[C5_MAX_CANDIDATES];
    c5_candidate_t candidates[C5_MAX_CANDIDATES];
    c5_post_workspace_t post;
} c16_workspace_t;
typedef struct {
    uint32_t conv_tiles[5],pool_tiles[4];
    c5_decode_stats_t decode[2];
    c5_post_stats_t post;
    size_t detections;
} c16_stats_t;
typedef int (*c16_stage_fn)(void *context,uint32_t stage,const int8_t *data,
                           size_t bytes,c16_shape_t shape);

/* Return shapes/stage bytes through an optional read-only callback. A failure
 * invalidates the entire inference: out_count remains zero. No partial boxes. */
int c16_infer_reference(const int8_t *input,size_t bytes,const c16_model_t *model,
                       c16_workspace_t *workspace,int tiled,c16_stage_fn callback,
                       void *context,c5_detection_t *output,size_t capacity,
                       size_t *out_count,c16_stats_t *stats);
#endif
