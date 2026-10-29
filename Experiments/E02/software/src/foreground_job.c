#include "foreground_job.h"
#include "cnn5_types.h"
#include <string.h>
#ifdef FACEBOX_AB
#include "bench_profile.h"
#else
#define BENCH_SERIAL 0
#endif
static const haar_search_params_t params={1.2,40,240};
int foreground_detector_safe(foreground_job_t *j){
    return j && (!j->detector.begin || j->detector.safe(j->detector.context)==1);
}
int foreground_bind_detection_ops(foreground_job_t *j,const foreground_detector_ops_t *ops){
    if(!j || (ops && (!ops->next_ticket || !ops->begin || !ops->step || !ops->cancel || !ops->safe)))return -621;
    if((j->phase!=FG_IDLE && j->phase!=FG_DONE) || !foreground_detector_safe(j))return 1;
    if(ops && ops->safe(ops->context)!=1)return 1;
    memset(&j->detector,0,sizeof j->detector);
    if(ops)j->detector=*ops;
    if(!j->evidence_generation)j->evidence_generation=1;
    return 0;
}
volatile stage_timing_diag g_foreground_timing __attribute__((aligned(32)))={
    .magic=0x46475432U,.version=1,.bytes=sizeof(stage_timing_diag),.capacity=STAGE_TIMING_CAPACITY
};
static int finish(foreground_job_t *j,int rc){
    /* A rejected DMA start/poll may still own ROI. Drain through the original
     * cancellation callback before exposing an error or reusing either image. */
    if(rc<0 && j->phase!=FG_CANCELLING){
        foreground_abort(j,rc);
        if(j->pipeline && j->operation==2)
            (void)snapshot_prefetch_stop(j->pipeline,rc,j->ops.ps_now_us(j->ops.context));
        return 1;
    }
    j->status=rc;j->phase=FG_DONE;
    if(rc<0){j->result.status=LR_FAILED;j->result.label=0;j->result.error=rc;}
    if(j->pipeline && j->operation==2){
        uint64_t now=j->ops.ps_now_us(j->ops.context);
        snapshot_prefetch_finished(j->pipeline,j->sample_index,rc,j->result.status,now);
        if(rc<0)(void)snapshot_prefetch_stop(j->pipeline,rc,now);
    }
    return rc;
}
static int same_meta(const snapshot_meta_t *a,const snapshot_meta_t *b){
    return a->request_id==b->request_id && a->frame_id==b->frame_id && a->epoch==b->epoch &&
           a->source_ticks==b->source_ticks && a->commit_ticks==b->commit_ticks;
}
static int same_key(const c3_detect_key_t *a,const c3_detect_key_t *b){
    return a->ticket==b->ticket && a->session==b->session && a->attempt==b->attempt &&
           a->evidence_generation==b->evidence_generation && same_meta(&a->source,&b->source);
}
static int key_current(foreground_job_t *j){
    return j->detect_key.session==j->session_id && j->detect_key.attempt==j->sample_index+1u &&
        j->detect_key.evidence_generation==j->evidence_generation &&
        same_meta(&j->detect_key.source,&j->meta) &&
        j->meta.epoch==gray_snapshot_read(j->arbiter->hw,OV_EPOCH);
}
/* Negative means invalid metadata/time source; 0 expired; 1 fresh, inclusive. */
static int source_fresh(foreground_job_t *j){
    uint64_t now;
    if(gray_snapshot_now(j->arbiter->hw,&now))return -4;
    if(j->meta.source_ticks>j->meta.commit_ticks || j->meta.commit_ticks>now)return C5_STALE;
    return now-j->meta.source_ticks<=C3_DETECT_SOURCE_TTL_TICKS;
}
static int retire(foreground_job_t *j){
    memset(&j->detected,0,sizeof j->detected);memset(&j->result,0,sizeof j->result);
    j->result.status=LR_RETIRED;j->detector_started=0;j->detector_retiring=0;
    if(j->pipeline && j->operation==2)
        snapshot_prefetch_retire(j->pipeline,j->sample_index,j->ops.ps_now_us(j->ops.context));
    return finish(j,0);
}
static int drain_expired(foreground_job_t *j){
    uint64_t now=j->ops.ps_now_us(j->ops.context);
    return now<j->detector_drain_started_us || now-j->detector_drain_started_us>=50000u;
}
static int quarantine(foreground_job_t *j){
    if(j->pipeline){
        g_snapshot_pipeline_diag.locked=1;j->pipeline->error=C5_LOCKED;
        g_snapshot_pipeline_diag.error=C5_LOCKED;j->pipeline->phase=SP_LOCKED;
        g_snapshot_pipeline_diag.state=SP_LOCKED;
    }
    j->phase=FG_CANCELLING; /* Terminal error is NOT an input release. */
    return finish(j,C5_LOCKED);
}
int foreground_init(foreground_job_t *j,snapshot_arbiter_t *a,haar_search_ws_t *ws,
                    uint8_t *gray,const foreground_ops_t *ops){
    if(!j || !a || !ws || !gray || !ops || !ops->prepare || !ops->pl_start ||
       !ops->pl_step || !ops->match || !ops->cancel || !ops->ps_ticks || !ops->ps_now_us)return -621;
    memset(j,0,sizeof *j);j->arbiter=a;j->gray=gray;j->ops=*ops;
    {
        uint64_t hz=g_foreground_timing.hz;
        memset((void*)&g_foreground_timing,0,sizeof g_foreground_timing);
        g_foreground_timing.magic=0x46475432U;g_foreground_timing.version=1;
        g_foreground_timing.bytes=sizeof g_foreground_timing;
        g_foreground_timing.capacity=STAGE_TIMING_CAPACITY;g_foreground_timing.hz=hz;
    }
    haar_temporal_worker_reset(&j->temporal);
    return haar_worker_init(&j->worker,ws,400,240,64);
}
int foreground_begin(foreground_job_t *j,uint32_t operation,uint32_t slot){
    if(!j || (operation!=1 && operation!=2))return -621;
    if(j->phase!=FG_IDLE && j->phase!=FG_DONE)return 1;
    if(!foreground_detector_safe(j))return 1;
    if(j->pipeline && j->pipeline->phase==SP_LOCKED)return SNAPSHOT_PIPELINE_UNSAFE;
    memset(&j->meta,0,sizeof j->meta);memset(&j->detected,0,sizeof j->detected);
    memset(&j->detect_key,0,sizeof j->detect_key);
    memset(&j->result,0,sizeof j->result);j->result.status=LR_WORKING;
    j->operation=operation;j->slot=slot;j->status=1;j->pl_started=0;
    if(operation==2 && j->temporal_session_id!=j->session_id){
        haar_temporal_worker_reset(&j->temporal);
        j->temporal_session_id=j->session_id;
    }else if(operation!=2){
        haar_temporal_worker_reset(&j->temporal);
        j->temporal_session_id=0;
    }
    j->cancel_requested=0;j->cancel_status=FOREGROUND_CANCELLED;
    j->detector_started=0;j->detector_retiring=0;
    j->phase=j->pipeline && operation==2 && j->sample_index && !BENCH_SERIAL?FG_PREFETCH:FG_REQUEST;
    if(g_foreground_timing.session!=j->session_id || !g_foreground_timing.count){
        uint64_t hz=g_foreground_timing.hz;
        memset((void*)&g_foreground_timing,0,sizeof g_foreground_timing);
        g_foreground_timing.magic=0x46475432U;g_foreground_timing.version=1;
        g_foreground_timing.bytes=sizeof g_foreground_timing;
        g_foreground_timing.capacity=STAGE_TIMING_CAPACITY;g_foreground_timing.hz=hz;
        g_foreground_timing.session=j->session_id;
    }
    ++g_foreground_timing.revision;
    stage_clock_start(&j->timing,j->ops.ps_ticks(j->ops.context),j->phase);
    j->timing.current.session=j->session_id;j->timing.current.index=j->sample_index;
    j->timing.current.operation=operation;
    j->timing.slot=g_foreground_timing.count%STAGE_TIMING_CAPACITY;
    memset((void*)&g_foreground_timing.record[j->timing.slot],0,sizeof(stage_timing_record));
    if(g_foreground_timing.count>=STAGE_TIMING_CAPACITY)++g_foreground_timing.overflow;
    ++g_foreground_timing.count;g_foreground_timing.active=1;
    ++g_foreground_timing.revision;
    return 0;
}
void foreground_cancel(foreground_job_t *j){
    if(!j || j->phase==FG_IDLE || j->phase==FG_DONE)return;
    if(j->phase==FG_CANCELLING)return;
    j->cancel_requested=1;
    j->detector_drain_started_us=j->ops.ps_now_us(j->ops.context);
    if(j->detector_started)j->detector.cancel(j->detector.context);
    if(j->arbiter->owner==SNAPSHOT_FOREGROUND)(void)snapshot_cancel(j->arbiter,SNAPSHOT_FOREGROUND);
    haar_worker_cancel(&j->worker);memset(&j->detected,0,sizeof j->detected);
    haar_temporal_worker_reset(&j->temporal);j->temporal_session_id=0;
    stage_clock_advance(&j->timing,j->ops.ps_ticks(j->ops.context),FG_CANCELLING);
    j->phase=FG_CANCELLING;
}
void foreground_abort(foreground_job_t *j,int error){
    if(!j)return;
    foreground_cancel(j);
    if(j->phase==FG_CANCELLING)j->cancel_status=error;
}
static int detect_begin(foreground_job_t *j){
    int rc;uint64_t now=j->ops.ps_now_us(j->ops.context);
    if(j->pipeline && j->operation==2 && !BENCH_SERIAL){
        /* Strict ordering: validated full private copy + release, then next
         * request, then detector. No BRAM words copied by this ahead attempt. */
        rc=snapshot_prefetch_ahead(j->pipeline,j->sample_index,now);
        if(rc<0)return finish(j,rc);
    }
    j->detect_start=j->ops.ps_ticks(j->ops.context);
    if(j->detector.begin){
        if(j->meta.epoch!=gray_snapshot_read(j->arbiter->hw,OV_EPOCH))return finish(j,C5_STALE);
        rc=source_fresh(j);if(rc<0)return finish(j,rc);
        if(!rc)return retire(j);
        memset(&j->detect_key,0,sizeof j->detect_key);
        j->detect_key.session=j->session_id;j->detect_key.attempt=j->sample_index+1u;
        j->detect_key.evidence_generation=j->evidence_generation;
        j->detect_key.source=j->meta;
        j->detect_key.ticket=j->detector.next_ticket(j->detector.context);
        /* begin() can fail after touching hardware: cancellation owns it too. */
        j->detector_started=1;
        rc=j->detector.begin(j->detector.context,j->gray,&j->detect_key);
    }else rc=j->operation==2?
       haar_temporal_worker_begin(&j->temporal,&j->worker,j->gray,400,240,
                                  &params,now,3000000u):
       haar_worker_begin(&j->worker,j->gray,&params);
    if(rc<0)return finish(j,rc);
    if(j->pipeline && j->operation==2)
        snapshot_prefetch_processing(j->pipeline,j->sample_index,j->ops.ps_now_us(j->ops.context));
    j->phase=FG_DETECT;return 1;
}
static int foreground_step_core(foreground_job_t *j){
    int rc;uint64_t start_us;unsigned n;
    if(!j)return -621;
    switch(j->phase){
    case FG_IDLE:return 0;
    case FG_DONE:return j->status;
    case FG_CANCELLING:
        /* ROI preparation owns algorithm state before DMA start. Cancelling
         * in FG_PL_START must release that state too, not only running DMA. */
        if(j->detector_started && !foreground_detector_safe(j)){
            haar_detect_result_t ignored;c3_detect_key_t key;
            rc=j->detector.step(j->detector.context,&ignored,&key);
            if(!foreground_detector_safe(j)){
                if(rc==C5_LOCKED || drain_expired(j))return quarantine(j);
                return 1;
            }
        }
        j->detector_started=0;
        rc=j->ops.cancel(j->ops.context);
        if(rc==1)return 1;
        if(rc<0 && j->pipeline){
            g_snapshot_pipeline_diag.locked=1;
            j->pipeline->error=rc;g_snapshot_pipeline_diag.error=rc;
            j->pipeline->phase=SP_LOCKED;g_snapshot_pipeline_diag.state=SP_LOCKED;
        }
        return finish(j,rc<0?rc:j->cancel_status);
    case FG_REQUEST:
        rc=snapshot_begin(j->arbiter,SNAPSHOT_FOREGROUND);
        if(rc<0)return finish(j,rc);
        if(!rc){
            if(j->pipeline && j->operation==2)
                snapshot_prefetch_requested(j->pipeline,j->sample_index,j->ops.ps_now_us(j->ops.context));
            j->phase=FG_COPY;
        }
        return 1;
    case FG_COPY:
        rc=snapshot_copy_step(j->arbiter,SNAPSHOT_FOREGROUND,j->gray,OV_GRAY_BYTES,256,&j->meta);
        if(j->pipeline && j->operation==2)
            snapshot_prefetch_observe_ready(j->pipeline,j->sample_index,j->ops.ps_now_us(j->ops.context));
        if(rc<0)return finish(j,rc);
        if(rc)return 1;
        if(j->pipeline && j->operation==2){
            rc=snapshot_prefetch_copied(j->pipeline,j->sample_index,&j->meta,j->ops.ps_now_us(j->ops.context));
            if(rc<0)return finish(j,rc);
        }
        return detect_begin(j);
    case FG_PREFETCH:
        if(j->detector.begin){
            uint64_t now;
            if(gray_snapshot_now(j->arbiter->hw,&now))return finish(j,-4);
            rc=snapshot_prefetch_take_fresh(j->pipeline,j->session_id,j->sample_index,&j->gray,&j->meta,now);
            if(rc==SNAPSHOT_PIPELINE_RETIRED){
                rc=snapshot_prefetch_ahead(j->pipeline,j->sample_index,j->ops.ps_now_us(j->ops.context));
                if(rc<0)return finish(j,rc);
                return retire(j);
            }
        }else rc=snapshot_prefetch_take(j->pipeline,j->session_id,j->sample_index,&j->gray,&j->meta);
        if(rc<0)return finish(j,rc);
        if(rc)return 1;
        return detect_begin(j);
    case FG_DETECT:
        if(j->detector.begin){
            c3_detect_key_t key;
            if(!key_current(j))return finish(j,C5_STALE);
            rc=source_fresh(j);if(rc<0)return finish(j,rc);
            if(!rc && !j->detector_retiring){
                j->detector_retiring=1;
                j->detector_drain_started_us=j->ops.ps_now_us(j->ops.context);
                j->detector.cancel(j->detector.context);
            }
            if(j->detector_retiring){
                if(!foreground_detector_safe(j)){
                    rc=j->detector.step(j->detector.context,&j->detected,&key);
                    if(!foreground_detector_safe(j)){
                        if(rc==C5_LOCKED || drain_expired(j))return quarantine(j);
                        return 1;
                    }
                }
                return retire(j);
            }
            rc=j->detector.step(j->detector.context,&j->detected,&key);
            if(rc>0)return 1;
            /* Adapter can discover expiry DURING its final bounded poll.
             * Distinguish that from a still-fresh token/metadata mismatch. */
            if(rc==C5_STALE && key_current(j) && source_fresh(j)==0){
                if(foreground_detector_safe(j))return retire(j);
                j->detector_retiring=1;
                j->detector_drain_started_us=j->ops.ps_now_us(j->ops.context);
                j->detector.cancel(j->detector.context);return 1;
            }
            if(rc<0)return finish(j,rc);
            if(!foreground_detector_safe(j) || !same_key(&key,&j->detect_key) || !key_current(j))
                return finish(j,C5_STALE);
            j->detector_started=0;
            rc=source_fresh(j);if(rc<0)return finish(j,rc);
            if(!rc)return retire(j);
            j->detect_ticks=j->ops.ps_ticks(j->ops.context)-j->detect_start;
            j->phase=FG_ROI;return 1;
        }
        start_us=j->ops.ps_now_us(j->ops.context);rc=1;
        for(n=0;n<64;n++){
            rc=j->operation==2?
               haar_temporal_worker_step(&j->temporal,&j->worker,1,
                                          j->ops.ps_now_us(j->ops.context)):
               haar_worker_step(&j->worker,1);
            if(rc<=0 || j->ops.ps_now_us(j->ops.context)-start_us>=5000u)break;
        }
        if(rc>0)return 1;
        j->detect_ticks=j->ops.ps_ticks(j->ops.context)-j->detect_start;
        rc=j->operation==2?
           haar_temporal_worker_result(&j->temporal,&j->detected):
           haar_worker_result(&j->worker,&j->detected);
        if(rc<0)return finish(j,rc);
        j->phase=FG_ROI;return 1;
    case FG_ROI:
        if(j->detector.begin){
            if(!key_current(j))return finish(j,C5_STALE);
            rc=source_fresh(j);if(rc<0)return finish(j,rc);
            if(!rc)return retire(j);
        }
        rc=j->ops.prepare(j->ops.context,j->gray,&j->detected,j->detect_ticks,&j->result);
        if(rc<=0)return finish(j,rc);
        j->phase=FG_PL_START;return 1;
    case FG_PL_START:
        /* Even a rejected start may have touched DMA; cleanup owns it now. */
        j->pl_started=1;rc=j->ops.pl_start(j->ops.context);
        if(rc<0)return finish(j,rc);
        j->phase=FG_PL_WAIT;return 1;
    case FG_PL_WAIT:
        rc=j->ops.pl_step(j->ops.context);
        if(rc<0)return finish(j,rc);
        if(rc)return 1;
        j->phase=FG_MATCH;return 1;
    case FG_MATCH:return finish(j,j->ops.match(j->ops.context,&j->result));
    default:return finish(j,-621);
    }
}
int foreground_step(foreground_job_t *j){
    uint64_t begin,end;unsigned phase;int rc;
    if(!j || j->phase==FG_IDLE || j->phase==FG_DONE)return foreground_step_core(j);
    phase=j->phase;begin=j->ops.ps_ticks(j->ops.context);
    stage_clock_advance(&j->timing,begin,phase);
    rc=foreground_step_core(j);end=j->ops.ps_ticks(j->ops.context);
    j->timing.current.cpu[phase]+=end-begin;
    stage_clock_advance(&j->timing,end,j->phase);
    if(j->phase==FG_DONE && !j->timing.current.done){
        j->timing.current.end=end;j->timing.current.status=j->status;
        j->timing.current.frame_id=j->meta.frame_id;j->timing.current.epoch=j->meta.epoch;
        j->timing.current.done=1;
        ++g_foreground_timing.revision;
        g_foreground_timing.record[j->timing.slot]=j->timing.current;
        g_foreground_timing.active=0;++g_foreground_timing.revision;
    }
    return rc;
}
int foreground_result(const foreground_job_t *j,lr_result *result){
    if(!j || !result)return -621;
    if(j->phase!=FG_DONE)return 1;
    *result=j->result;return j->status;
}
