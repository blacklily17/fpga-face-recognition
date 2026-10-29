#ifndef SNAPSHOT_PREFETCH_H
#define SNAPSHOT_PREFETCH_H
#include "snapshot_arbiter.h"
#include "overlay_regs.h"

#define SNAPSHOT_PIPELINE_FRAMES 12u
#define SNAPSHOT_PIPELINE_MAGIC 0x53505033u
#define SNAPSHOT_PIPELINE_VERSION 2u
#define SNAPSHOT_PIPELINE_INVALID (-630)
#define SNAPSHOT_PIPELINE_DUPLICATE (-631)
#define SNAPSHOT_PIPELINE_UNSAFE (-632)
#define SNAPSHOT_PIPELINE_LIMIT (-633)
#define SNAPSHOT_PIPELINE_TIMEOUT_US 1000000u
enum { SP_REQUESTED=1u, SP_READY=2u, SP_COPIED=4u,
       SP_PROCESSING=8u, SP_FINISHED=16u };
/* Fixed-width PS record; PS timestamps are microseconds, source/commit ticks
 * are the unchanged 100MHz PL metadata. Flags, not zero timestamps/IDs,
 * identify completed stages (frame/request IDs may wrap through zero).
 * Parent flushes this stable symbol with its other diagnostics. */
typedef struct {
    uint32_t session_id,index,request_id,epoch,frame_id,flags;
    int32_t status;
    uint32_t result_status;
    uint64_t source_ticks,commit_ticks,request_us,ready_us,copy_done_us;
    uint64_t processing_begin_us,processing_end_us;
} snapshot_pipeline_frame_diag_t;
typedef struct {
    uint32_t magic,version,bytes,session_id,epoch,active,locked;
    uint32_t begins,submitted,delivered,completed;
    int32_t error;
    uint32_t state,reserved;
    snapshot_pipeline_frame_diag_t frame[SNAPSHOT_PIPELINE_FRAMES];
} snapshot_pipeline_diag_t;
extern volatile snapshot_pipeline_diag_t g_snapshot_pipeline_diag;
typedef enum { SP_IDLE=0,SP_REQUEST,SP_COPY,SP_BUFFERED,SP_DRAIN,SP_LOCKED } snapshot_prefetch_phase_t;
typedef struct {
    snapshot_arbiter_t *arbiter;
    uint8_t *gray; /* Spare only; swapped with foreground.gray on delivery. */
    snapshot_meta_t meta;
    uint32_t session_id,epoch,index;
    uint64_t drain_start_us,request_start_us;
    int active,error;
    snapshot_prefetch_phase_t phase;
} snapshot_prefetch_t;
void snapshot_prefetch_init(snapshot_prefetch_t *,snapshot_arbiter_t *,uint8_t *);
int snapshot_prefetch_start(snapshot_prefetch_t *,uint32_t session,uint32_t epoch);
int snapshot_prefetch_stop(snapshot_prefetch_t *,int error,uint64_t now_us);
/* Exactly one request attempt OR <=256 BRAM words; call after foreground step. */
int snapshot_prefetch_step(snapshot_prefetch_t *,const uint8_t *active_gray,uint64_t now_us);
void snapshot_prefetch_requested(snapshot_prefetch_t *,uint32_t index,uint64_t now_us);
void snapshot_prefetch_observe_ready(snapshot_prefetch_t *,uint32_t index,uint64_t now_us);
int snapshot_prefetch_copied(snapshot_prefetch_t *,uint32_t index,const snapshot_meta_t *,uint64_t now_us);
/* Schedule/attempt the next request before current Haar begin, never copy here. */
int snapshot_prefetch_ahead(snapshot_prefetch_t *,uint32_t index,uint64_t now_us);
int snapshot_prefetch_take(snapshot_prefetch_t *,uint32_t session,uint32_t index,
                           uint8_t **active_gray,snapshot_meta_t *);
void snapshot_prefetch_processing(snapshot_prefetch_t *,uint32_t index,uint64_t now_us);
void snapshot_prefetch_finished(snapshot_prefetch_t *,uint32_t index,int status,
                                uint32_t result_status,uint64_t now_us);
#endif
