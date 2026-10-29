#ifndef CNN5_DETECTION_H
#define CNN5_DETECTION_H

#include "cnn5_types.h"

/* Offline FP64 ARM reference. No allocation, MMIO, trained weights or timing
 * claims. Shapes and ownership are explicit; a successful call is synchronous.
 * Input/output/workspace objects must not overlap. */
enum { C5_MAX_CANDIDATES=300, C5_MAX_TOP_K=100, C5_MAX_DETECTIONS=16,
       C5_HEAD_CHANNELS=8, C5_HEAD_OUTPUTS=5 };
typedef struct {
    int8_t weights[C5_HEAD_OUTPUTS][C5_HEAD_CHANNELS];
    int32_t bias[C5_HEAD_OUTPUTS];
    double scales[C5_HEAD_OUTPUTS];
} c5_head_params_t;
typedef struct { double value[C5_HEAD_OUTPUTS]; } c5_head_row_t;
typedef struct {
    uint32_t index;
    double logit,cx,cy,width,height;
} c5_candidate_t;
typedef struct { uint32_t index; double score; c5_box_t box; } c5_detection_t;
typedef struct {
    uint32_t stride,grid_width,index_offset;
    double anchor_width,anchor_height,exp_limit;
} c5_decode_config_t;
typedef struct {
    uint32_t rows,decoded,rejected_nonfinite,rejected_degenerate;
    uint32_t clamped_exp_components;
} c5_decode_stats_t;
typedef struct {
    double threshold,nms_iou;
    uint32_t top_k,max_detections;
} c5_post_config_t;
typedef struct {
    uint32_t candidates,selected,rejected_nonfinite,rejected_degenerate;
    uint32_t below_threshold,dropped_top_k,suppressed_nms,dropped_limit;
} c5_post_stats_t;
typedef struct {
    c5_detection_t mapped[C5_MAX_CANDIDATES];
} c5_post_workspace_t;

/* The feature tensor contains exactly row_count HWC rows of eight INT8 values.
 * INT64 accumulation preserves INT32 bias extremes. Results are signed double;
 * there is no ReLU or INT8 saturation. Invalid scales/output overflow fail the
 * complete call. On error output rows are unspecified and must not be used. */
int c5_linear_head(const int8_t *features,size_t feature_bytes,size_t row_count,
                   const c5_head_params_t *params,c5_head_row_t *rows,
                   size_t row_capacity);

/* Each complete grid row contains (logit,dx,dy,dw,dh). Non-finite/degenerate
 * individual rows are counted and omitted. Indices retain original grid cell
 * offsets. Capacity must cover all input rows; no silent capacity truncation.
 * Stats/count are reset on entry; configuration errors emit no valid output. */
int c5_decode_head(const c5_head_row_t *rows,size_t row_count,
                   const c5_decode_config_t *config,c5_candidate_t *candidates,
                   size_t capacity,size_t *out_count,c5_decode_stats_t *stats);

/* Fixed geometry ONLY: 160x96 network -> 400x240 source, no letterbox. Mapping
 * preserves the exact binary64 input edge through multiplication by rational
 * 5/2, then rounds outward. Boxes are half-open. Threshold equality passes;
 * IoU equality survives. Sort by score descending, original index ascending.
 * Duplicate indices are an error. Raw input is capped at 300, top-k at 100,
 * output at 16. Stats account for every input; dropped_limit counts candidates
 * not visited once the configured output limit is reached, not extra NMS hits.
 * On any error count is zero and output storage must not be consumed. */
int c5_postprocess(const c5_candidate_t *candidates,size_t count,
                    const c5_post_config_t *config,c5_post_workspace_t *workspace,
                    c5_detection_t *detections,size_t capacity,size_t *out_count,
                    c5_post_stats_t *stats);

/* Camera-only policy, separate from frozen model/NMS numerical references.
 * All candidates must already meet the unchanged model score threshold.
 * The existing identity ROI minimum (80 in BOTH dimensions) is preserved. */
enum { C5_FACE_NONE=0,C5_FACE_WAIT=1,C5_FACE_READY=2 };
typedef struct {
    c5_box_t box;
    uint64_t generation,last_us;
    uint32_t epoch,frame_id,hits,misses,have_frame;
} c5_face_track_t;
int c5_face_select(const c5_detection_t *,size_t,c5_detection_t *);
/* Recognition accepts a natural portrait box, then crops max(width,height)
 * using the existing square ROI routine. Preserve >=80 crop/height, require
 * width>=60 and aspect 0.6..1.25. This is not a semantic completeness test. */
static inline int c5_recognition_geometry(c5_box_t b){
    int32_t w,h;
    if(b.x0<0 || b.y0<0 || b.x1>400 || b.y1>240 || b.x1<=b.x0 || b.y1<=b.y0)return 0;
    w=b.x1-b.x0;h=b.y1-b.y0;
    return w>=60 && h>=80 && w*5>=h*3 && w*4<=h*5;
}
int c5_face_select_roi(const c5_detection_t *,size_t,c5_detection_t *);
int c5_face_update(c5_face_track_t *,const c5_detection_t *,int,
                   uint64_t,const c5_source_t *,uint64_t,c5_box_t *);

#endif
