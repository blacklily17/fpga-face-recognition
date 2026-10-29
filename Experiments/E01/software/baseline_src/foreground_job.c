#include "foreground_job.h"
#include <string.h>
#ifdef FACEBOX_AB
#include "bench_profile.h"
#else
#define BENCH_SERIAL 0
#endif
static const haar_search_params_t params={1.2,40,240};
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
int foreground_init(foreground_job_t *j,snapshot_arbiter_t *a,haar_search_ws_t *ws,
                    uint8_t *gray,const foreground_ops_t *ops){
    if(!j || !a || !ws || !gray || !ops || !ops->prepare || !ops->pl_start ||
       !ops->pl_step || !ops->match || !ops->cancel || !ops->ps_ticks || !ops->ps_now_us)return -621;
    memset(j,0,sizeof *j);j->arbiter=a;j->gray=gray;j->ops=*ops;
    haar_temporal_worker_reset(&j->temporal);
    return haar_worker_init(&j->worker,ws,400,240,64);
}
int foreground_begin(foreground_job_t *j,uint32_t operation,uint32_t slot){
    if(!j || (operation!=1 && operation!=2))return -621;
    if(j->phase!=FG_IDLE && j->phase!=FG_DONE)return 1;
    memset(&j->meta,0,sizeof j->meta);memset(&j->detected,0,sizeof j->detected);
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
    j->phase=j->pipeline && operation==2 && j->sample_index && !BENCH_SERIAL?FG_PREFETCH:FG_REQUEST;
    return 0;
}
void foreground_cancel(foreground_job_t *j){
    if(!j || j->phase==FG_IDLE || j->phase==FG_DONE)return;
    j->cancel_requested=1;
    if(j->arbiter->owner==SNAPSHOT_FOREGROUND)(void)snapshot_cancel(j->arbiter,SNAPSHOT_FOREGROUND);
    haar_worker_cancel(&j->worker);memset(&j->detected,0,sizeof j->detected);
    haar_temporal_worker_reset(&j->temporal);j->temporal_session_id=0;
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
         * request, then Haar. No BRAM words copied by this ahead attempt. */
        rc=snapshot_prefetch_ahead(j->pipeline,j->sample_index,now);
        if(rc<0)return finish(j,rc);
    }
    j->detect_start=j->ops.ps_ticks(j->ops.context);
    rc=j->operation==2?
       haar_temporal_worker_begin(&j->temporal,&j->worker,j->gray,400,240,
                                  &params,now,3000000u):
       haar_worker_begin(&j->worker,j->gray,&params);
    if(rc<0)return finish(j,rc);
    if(j->pipeline && j->operation==2)
        snapshot_prefetch_processing(j->pipeline,j->sample_index,j->ops.ps_now_us(j->ops.context));
    j->phase=FG_DETECT;return 1;
}
int foreground_step(foreground_job_t *j){
    int rc;uint64_t start_us;unsigned n;
    if(!j)return -621;
    switch(j->phase){
    case FG_IDLE:return 0;
    case FG_DONE:return j->status;
    case FG_CANCELLING:
        /* ROI preparation owns algorithm state before DMA start. Cancelling
         * in FG_PL_START must release that state too, not only running DMA. */
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
        rc=snapshot_prefetch_take(j->pipeline,j->session_id,j->sample_index,&j->gray,&j->meta);
        if(rc<0)return finish(j,rc);
        if(rc)return 1;
        return detect_begin(j);
    case FG_DETECT:
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
int foreground_result(const foreground_job_t *j,lr_result *result){
    if(!j || !result)return -621;
    if(j->phase!=FG_DONE)return 1;
    *result=j->result;return j->status;
}
