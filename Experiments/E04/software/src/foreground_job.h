#ifndef FOREGROUND_JOB_H
#define FOREGROUND_JOB_H
#include "snapshot_arbiter.h"
#include "snapshot_prefetch.h"
#include "overlay_regs.h"
#include "haar_worker.h"
#include "haar_temporal_worker.h"
#include "live_control.h"
#define FOREGROUND_CANCELLED (-620)
typedef enum { FG_IDLE=0,FG_REQUEST,FG_COPY,FG_DETECT,FG_ROI,
               FG_PL_START,FG_PL_WAIT,FG_MATCH,FG_DONE,FG_CANCELLING,FG_PREFETCH } foreground_phase_t;
/* prepare: 0 complete without PL (no face/quality), 1 needs PL, <0 error.
 * pl_start: 0 accepted/<0 error. pl_step and cancel: 1 pending/0 safe/<0 error.
 * match: original quality/classify/vote, never SD. UI alone commits enrollment. */
typedef struct {
    void *context;
    int (*prepare)(void *,const uint8_t *,const haar_detect_result_t *,uint64_t,lr_result *);
    int (*pl_start)(void *);
    int (*pl_step)(void *);
    int (*match)(void *,lr_result *);
    int (*cancel)(void *);
    uint64_t (*ps_ticks)(void *);
    uint64_t (*ps_now_us)(void *);
} foreground_ops_t;
typedef struct {
    snapshot_arbiter_t *arbiter;
    snapshot_prefetch_t *pipeline;
    haar_worker_t worker;
    haar_temporal_worker_t temporal;
    uint8_t *gray;
    foreground_ops_t ops;
    foreground_phase_t phase;
    snapshot_meta_t meta;
    haar_detect_result_t detected;
    lr_result result;
    uint64_t detect_start,detect_ticks;
    uint32_t operation,slot;
    uint32_t session_id,sample_index,temporal_session_id;
    int cancel_status;
    int status,pl_started,cancel_requested;
} foreground_job_t;
int foreground_init(foreground_job_t *,snapshot_arbiter_t *,haar_search_ws_t *,uint8_t *,const foreground_ops_t *);
int foreground_begin(foreground_job_t *,uint32_t operation,uint32_t slot);
int foreground_step(foreground_job_t *);
void foreground_cancel(foreground_job_t *);
void foreground_abort(foreground_job_t *,int error);
int foreground_result(const foreground_job_t *,lr_result *);
#endif
