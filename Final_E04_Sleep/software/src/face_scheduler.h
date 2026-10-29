#ifndef FACE_SCHEDULER_H
#define FACE_SCHEDULER_H
#include "foreground_job.h"
#include "motion_watch.h"
typedef struct {
    void *context;
    int (*video_service)(void *);
    void (*ui_service)(void *);
    uint64_t (*ps_now_us)(void *);
} face_scheduler_ops_t;
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
    motion_watch motion;
    uint32_t monitor_frames,motion_serial;
    uint64_t last_face_us;
    int monitor_only;
    uint64_t motion_after_ticks,motion_rearm_us;
    unsigned motion_fence,monitor_face_pending,monitor_face_checks;
} face_scheduler_t;
/* Startup or confirmed-quiescent recovery only (original PL/DMA owners must
 * be stopped first). Initializes the diagnostic ABI and spare-buffer binding;
 * main needs no extra startup/step call beyond this scheduler API. */
int face_scheduler_init(face_scheduler_t *,gray_snapshot_hw_t *,const face_scheduler_ops_t *,const foreground_ops_t *);
void face_scheduler_step(face_scheduler_t *,uint64_t ps_now_us);
void face_scheduler_set_foreground(face_scheduler_t *,int active);
int face_scheduler_sample_begin(face_scheduler_t *,uint32_t operation,uint32_t slot);
int face_scheduler_sample_result(face_scheduler_t *,lr_result *);
int face_scheduler_sample_cancel(face_scheduler_t *);
void face_scheduler_publish(face_scheduler_t *,const bbox_message_t *);
int face_scheduler_monitor(face_scheduler_t *,int enabled);
void face_scheduler_motion_inhibit(face_scheduler_t *);
int face_scheduler_motion_rearm(face_scheduler_t *);
#endif
