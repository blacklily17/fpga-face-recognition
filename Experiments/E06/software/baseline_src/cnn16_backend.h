#ifndef CNN16_BACKEND_H
#define CNN16_BACKEND_H
#include "cnn16_dma.h"
#include "cnn16_reference.h"
#include "cnn5_legacy_backend.h"
typedef struct {
    uint32_t valid,tile_jobs,count;
    uint64_t ticket,generation,total_us,busy_us,max_poll_us,cycles[9];
    c5_source_t source;
    c5_detection_t first;
} c16_completion_t;
typedef struct {
    CNN_ALIGN32 c16_workspace_t work;
    CNN_ALIGN32 int8_t input[C16_INPUT_BYTES];
    c16_dma_t dma;
    c5_legacy_backend_t *legacy;
    const c16_model_t *model;
    c5_job_t job;
    c5_detection_t detections[16];
    size_t count;
    uint32_t route,state,stage,x,y,row,head_row;
    uint32_t started,completed,cancelled,errors,tile_jobs;
    uint64_t start_us,total_us,busy_us,max_poll_us,cycles[9],stage_us[9];
    uint64_t cpu_us[8]; /* C3 per-unit PS-us profiling, not PL cycles. */
    int status,cancelling;
    c16_completion_t last; /* Stable completed-frame metrics across later jobs. */
    c16_stage_fn stage_callback;void *stage_context;
    int face_policy_enabled,face_selection_only,face_state;
    uint32_t face_waits,face_promotions;
    c5_face_track_t face_track;
    c5_detection_t face_selected;
    c5_box_t face_box;
} c16_backend_t;
/* Static DDR only. One exclusive router owns the old and new shared DMA path. */
int c16_backend_init(c16_backend_t *,c5_legacy_backend_t *,const c16_model_t *);
void c16_backend_ops(c16_backend_t *,c5_scheduler_ops_t *);
int c16_backend_begin(void *,const c5_job_t *);
int c16_backend_poll(void *,c5_result_t *);
void c16_backend_cancel(void *);
int c16_backend_safe(void *);
#endif
