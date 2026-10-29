#ifndef FACE_SCHEDULER_H
#define FACE_SCHEDULER_H
#include "foreground_job.h"
typedef struct {
    void *context;
    int (*video_service)(void *);
    void (*ui_service)(void *);
    uint64_t (*ps_now_us)(void *);
} face_scheduler_ops_t;
typedef enum { C3_OWNER_NONE=0,C3_OWNER_BACKGROUND,C3_OWNER_FOREGROUND,
               C3_OWNER_DRAIN,C3_OWNER_LOCKED } c3_owner_t;
#define C3_CLEAR_TIMEOUT_US UINT64_C(250000)
/* Static DDR only; two independent workspaces and immutable private images. */
typedef struct {
    snapshot_arbiter_t arbiter;
    haar_search_ws_t background_ws,foreground_ws;
    haar_worker_t background;
    foreground_job_t foreground;
    snapshot_prefetch_t prefetch;
    uint8_t background_gray[OV_GRAY_BYTES],foreground_gray[OV_GRAY_BYTES];
    uint8_t prefetch_gray[OV_GRAY_BYTES];
    snapshot_meta_t background_meta;
    bbox_message_t latest,pending;
    face_scheduler_ops_t ops;
    uint64_t last_start_ticks,last_video_us,max_video_gap_us,max_step_us;
    uint32_t epoch,sequence,background_jobs;
    uint32_t session_id,session_operation,session_slot,next_sample_index;
    int foreground_active,background_phase,background_disabled,have_start;
    int pending_valid,video_seen,video_error,background_error;
    foreground_detector_ops_t detector;
    c3_detect_key_t background_key;
    c3_owner_t detector_owner,drain_from;
    uint32_t clear_sequence,clear_previous_ack;
    uint64_t clear_started_us;
    int background_started,clear_wait,clear_sent,detector_error;
    int yield_requested;
} face_scheduler_t;
int face_scheduler_bind_detection_ops(face_scheduler_t *,const foreground_detector_ops_t *);
/* Startup or confirmed-quiescent recovery only (original PL/DMA owners must
 * be stopped first). Initializes the diagnostic ABI and spare-buffer binding;
 * main needs no extra startup/step call beyond this scheduler API. */
int face_scheduler_init(face_scheduler_t *,gray_snapshot_hw_t *,const face_scheduler_ops_t *,const foreground_ops_t *);
void face_scheduler_step(face_scheduler_t *,uint64_t ps_now_us);
/* UI recovery can replace/invalidate this scheduler inside ui_service.
 * Yield the current dispatch after that callback; this does NOT release
 * owners or assert hardware safety. The caller must still quiesce/rebind. */
void face_scheduler_yield(face_scheduler_t *);
void face_scheduler_set_foreground(face_scheduler_t *,int active);
int face_scheduler_sample_begin(face_scheduler_t *,uint32_t operation,uint32_t slot);
int face_scheduler_sample_result(face_scheduler_t *,lr_result *);
int face_scheduler_sample_cancel(face_scheduler_t *);
void face_scheduler_publish(face_scheduler_t *,const bbox_message_t *);
#endif
