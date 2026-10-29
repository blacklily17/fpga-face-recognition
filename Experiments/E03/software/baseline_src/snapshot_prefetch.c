#include "snapshot_prefetch.h"
#include "detector_contract.h"
#include "live_control.h"
#include <string.h>
typedef char pipeline_frame_abi[(sizeof(snapshot_pipeline_frame_diag_t)==88u)?1:-1];
typedef char pipeline_diag_abi[(sizeof(snapshot_pipeline_diag_t)==1112u)?1:-1];
#if defined(__GNUC__)
volatile snapshot_pipeline_diag_t g_snapshot_pipeline_diag __attribute__((aligned(32)));
#elif defined(_MSC_VER)
__declspec(align(32)) volatile snapshot_pipeline_diag_t g_snapshot_pipeline_diag;
#else
volatile snapshot_pipeline_diag_t g_snapshot_pipeline_diag;
#endif
static void state(snapshot_prefetch_t *p,snapshot_prefetch_phase_t phase){
    p->phase=phase;g_snapshot_pipeline_diag.state=(uint32_t)phase;
}
void snapshot_prefetch_init(snapshot_prefetch_t *p,snapshot_arbiter_t *a,uint8_t *gray){
    snapshot_pipeline_diag_t diag;
    memset(p,0,sizeof *p);p->arbiter=a;p->gray=gray;
    memset(&diag,0,sizeof diag);diag.magic=SNAPSHOT_PIPELINE_MAGIC;
    diag.version=SNAPSHOT_PIPELINE_VERSION;diag.bytes=(uint32_t)sizeof diag;
    g_snapshot_pipeline_diag=diag;
}
int snapshot_prefetch_start(snapshot_prefetch_t *p,uint32_t session,uint32_t epoch){
    snapshot_pipeline_diag_t diag;
    if(p->phase==SP_LOCKED)return SNAPSHOT_PIPELINE_UNSAFE;
    if(p->phase==SP_DRAIN || p->arbiter->owner!=SNAPSHOT_NONE ||
       (gray_snapshot_read(p->arbiter->hw,OV_STATUS)&7u))return 1;
    if(!epoch || epoch!=gray_snapshot_read(p->arbiter->hw,OV_EPOCH))return SNAPSHOT_PIPELINE_INVALID;
    memset(&diag,0,sizeof diag);diag.magic=SNAPSHOT_PIPELINE_MAGIC;
    diag.version=SNAPSHOT_PIPELINE_VERSION;diag.bytes=(uint32_t)sizeof diag;
    diag.session_id=session;diag.epoch=epoch;diag.active=1;
    g_snapshot_pipeline_diag=diag;
    p->session_id=session;p->epoch=epoch;p->active=1;p->error=0;p->retired=0;
    memset(&p->meta,0,sizeof p->meta);state(p,SP_IDLE);return 0;
}
int snapshot_prefetch_stop(snapshot_prefetch_t *p,int error,uint64_t now){
    p->active=0;g_snapshot_pipeline_diag.active=0;
    if(error<0 && !p->error){p->error=error;g_snapshot_pipeline_diag.error=error;}
    if(p->phase==SP_LOCKED)return SNAPSHOT_PIPELINE_UNSAFE;
    if(p->phase==SP_DRAIN)return 1;
    if(p->arbiter->owner==SNAPSHOT_FOREGROUND)
        (void)snapshot_cancel(p->arbiter,SNAPSHOT_FOREGROUND);
    memset(&p->meta,0,sizeof p->meta);
    /* snapshot_cancel drops its owner BEFORE the command has taken effect.
     * Do not read/copy READY or issue a request while that writer can survive. */
    if(p->arbiter->owner!=SNAPSHOT_NONE || (gray_snapshot_read(p->arbiter->hw,OV_STATUS)&7u)){
        p->drain_start_us=now;state(p,SP_DRAIN);return 1;
    }
    state(p,SP_IDLE);return 0;
}
void snapshot_prefetch_requested(snapshot_prefetch_t *p,uint32_t i,uint64_t now){
    volatile snapshot_pipeline_frame_diag_t *d;
    if(i>=SNAPSHOT_PIPELINE_FRAMES){p->error=SNAPSHOT_PIPELINE_LIMIT;g_snapshot_pipeline_diag.error=p->error;return;}
    d=&g_snapshot_pipeline_diag.frame[i];
    d->session_id=p->session_id;d->index=i;d->request_id=p->arbiter->request_id;
    d->epoch=p->epoch;d->request_us=now;d->flags=SP_REQUESTED;
    ++g_snapshot_pipeline_diag.submitted;
}
void snapshot_prefetch_observe_ready(snapshot_prefetch_t *p,uint32_t i,uint64_t now){
    volatile snapshot_pipeline_frame_diag_t *d;
    if(i>=SNAPSHOT_PIPELINE_FRAMES){p->error=SNAPSHOT_PIPELINE_LIMIT;g_snapshot_pipeline_diag.error=p->error;return;}
    d=&g_snapshot_pipeline_diag.frame[i];
    if(p->arbiter->have_meta && !(d->flags&SP_READY)){
        d->ready_us=now;d->flags|=SP_READY;
    }
}
int snapshot_prefetch_copied(snapshot_prefetch_t *p,uint32_t i,const snapshot_meta_t *m,uint64_t now){
    uint32_t n;volatile snapshot_pipeline_frame_diag_t *d;
    if(!p->active || i>=SNAPSHOT_PIPELINE_FRAMES || m->epoch!=p->epoch ||
       gray_snapshot_read(p->arbiter->hw,OV_EPOCH)!=p->epoch)return SNAPSHOT_PIPELINE_INVALID;
    d=&g_snapshot_pipeline_diag.frame[i];
    if(d->session_id!=p->session_id || !(d->flags&SP_REQUESTED) ||
       d->request_id!=m->request_id || (d->flags&SP_COPIED))return SNAPSHOT_PIPELINE_INVALID;
    for(n=0;n<i;n++){
        const volatile snapshot_pipeline_frame_diag_t *old=&g_snapshot_pipeline_diag.frame[n];
        if(!(old->flags&SP_COPIED))return SNAPSHOT_PIPELINE_INVALID;
        if(old->frame_id==m->frame_id)return SNAPSHOT_PIPELINE_DUPLICATE;
    }
    d->frame_id=m->frame_id;d->source_ticks=m->source_ticks;d->commit_ticks=m->commit_ticks;
    d->copy_done_us=now;d->flags|=SP_COPIED;return 0;
}
static int request(snapshot_prefetch_t *p,uint64_t now){
    int rc;
    if(now-p->request_start_us>=SNAPSHOT_PIPELINE_TIMEOUT_US){
        (void)snapshot_prefetch_stop(p,-5,now);return -5;
    }
    rc=snapshot_begin(p->arbiter,SNAPSHOT_FOREGROUND);
    if(rc<0){(void)snapshot_prefetch_stop(p,rc,now);return rc;}
    if(!rc){snapshot_prefetch_requested(p,p->index,now);state(p,SP_COPY);}
    return 1;
}
int snapshot_prefetch_ahead(snapshot_prefetch_t *p,uint32_t i,uint64_t now){
    if(!p->active)return p->error?p->error:SNAPSHOT_PIPELINE_INVALID;
    if(i>=SNAPSHOT_PIPELINE_FRAMES)return SNAPSHOT_PIPELINE_LIMIT;
    if(i==SNAPSHOT_PIPELINE_FRAMES-1u)return 0;
    if(p->phase!=SP_IDLE)return SNAPSHOT_PIPELINE_INVALID;
    p->index=i+1u;p->request_start_us=now;state(p,SP_REQUEST);return request(p,now);
}
int snapshot_prefetch_step(snapshot_prefetch_t *p,const uint8_t *active_gray,uint64_t now){
    int rc;
    if(p->phase==SP_LOCKED)return SNAPSHOT_PIPELINE_UNSAFE;
    if(p->phase==SP_DRAIN){
        if(p->arbiter->owner==SNAPSHOT_NONE && !(gray_snapshot_read(p->arbiter->hw,OV_STATUS)&7u)){
            state(p,SP_IDLE);return 0;
        }
        if(now-p->drain_start_us>=SNAPSHOT_PIPELINE_TIMEOUT_US){
            p->error=SNAPSHOT_PIPELINE_UNSAFE;g_snapshot_pipeline_diag.error=p->error;
            g_snapshot_pipeline_diag.locked=1;state(p,SP_LOCKED);return p->error;
        }
        return 1;
    }
    if(!p->active)return 0;
    if(gray_snapshot_read(p->arbiter->hw,OV_EPOCH)!=p->epoch){
        (void)snapshot_prefetch_stop(p,SNAPSHOT_PIPELINE_INVALID,now);return SNAPSHOT_PIPELINE_INVALID;
    }
    if(p->phase==SP_REQUEST)return request(p,now);
    if(p->phase!=SP_COPY)return 0;
    if(p->gray==active_gray){
        (void)snapshot_prefetch_stop(p,SNAPSHOT_PIPELINE_UNSAFE,now);
        g_snapshot_pipeline_diag.locked=1;state(p,SP_LOCKED);return SNAPSHOT_PIPELINE_UNSAFE;
    }
    rc=snapshot_copy_step(p->arbiter,SNAPSHOT_FOREGROUND,p->gray,OV_GRAY_BYTES,256,&p->meta);
    snapshot_prefetch_observe_ready(p,p->index,now);
    /* Final copy clears arbiter.have_meta: READY was observed on an earlier
     * slice (96000 bytes always needs 94 slices). */
    if(!rc)rc=snapshot_prefetch_copied(p,p->index,&p->meta,now);
    if(rc<0){(void)snapshot_prefetch_stop(p,rc,now);return rc;}
    if(!rc)state(p,SP_BUFFERED);
    return rc;
}
int snapshot_prefetch_take(snapshot_prefetch_t *p,uint32_t session,uint32_t i,
                           uint8_t **gray,snapshot_meta_t *m){
    uint8_t *spare;
    if(!p->active || p->session_id!=session || p->index!=i ||
       gray_snapshot_read(p->arbiter->hw,OV_EPOCH)!=p->epoch)return SNAPSHOT_PIPELINE_INVALID;
    if(p->phase!=SP_BUFFERED)return 1;
    if(!gray || !*gray || *gray==p->gray)return SNAPSHOT_PIPELINE_UNSAFE;
    *m=p->meta;spare=*gray;*gray=p->gray;p->gray=spare;state(p,SP_IDLE);return 0;
}
int snapshot_prefetch_take_fresh(snapshot_prefetch_t *p,uint32_t session,uint32_t i,
                               uint8_t **gray,snapshot_meta_t *m,uint64_t now){
    if(!p || !m || !gray || !*gray)return SNAPSHOT_PIPELINE_INVALID;
    if(!p->active || p->session_id!=session || p->index!=i ||
       gray_snapshot_read(p->arbiter->hw,OV_EPOCH)!=p->epoch)return SNAPSHOT_PIPELINE_INVALID;
    if(p->phase!=SP_BUFFERED)return 1;
    if(*gray==p->gray)return SNAPSHOT_PIPELINE_UNSAFE;
    if(p->meta.source_ticks>p->meta.commit_ticks || p->meta.commit_ticks>now)
        return SNAPSHOT_PIPELINE_INVALID;
    if(now-p->meta.source_ticks>C3_DETECT_SOURCE_TTL_TICKS){
        *m=p->meta;memset(&p->meta,0,sizeof p->meta);state(p,SP_IDLE);
        return SNAPSHOT_PIPELINE_RETIRED; /* No swap, write, or hidden recapture. */
    }
    return snapshot_prefetch_take(p,session,i,gray,m);
}
void snapshot_prefetch_retire(snapshot_prefetch_t *p,uint32_t i,uint64_t now){
    volatile snapshot_pipeline_frame_diag_t *d;
    if(i>=SNAPSHOT_PIPELINE_FRAMES)return;
    d=&g_snapshot_pipeline_diag.frame[i];
    if(d->flags&SP_RETIRED)return;
    ++p->retired;d->flags|=SP_RETIRED|SP_FINISHED;d->result_status=LR_RETIRED;
    d->processing_end_us=now;d->status=0;
}
void snapshot_prefetch_processing(snapshot_prefetch_t *p,uint32_t i,uint64_t now){
    volatile snapshot_pipeline_frame_diag_t *d;
    if(i>=SNAPSHOT_PIPELINE_FRAMES){p->error=SNAPSHOT_PIPELINE_LIMIT;g_snapshot_pipeline_diag.error=p->error;return;}
    d=&g_snapshot_pipeline_diag.frame[i];
    (void)p;d->processing_begin_us=now;d->flags|=SP_PROCESSING;
    ++g_snapshot_pipeline_diag.delivered;
}
void snapshot_prefetch_finished(snapshot_prefetch_t *p,uint32_t i,int rc,uint32_t result,uint64_t now){
    volatile snapshot_pipeline_frame_diag_t *d;
    if(i>=SNAPSHOT_PIPELINE_FRAMES){p->error=SNAPSHOT_PIPELINE_LIMIT;g_snapshot_pipeline_diag.error=p->error;return;}
    d=&g_snapshot_pipeline_diag.frame[i];
    (void)p;
    if(d->flags&SP_FINISHED)return;
    d->status=rc;d->result_status=result;
    if(d->flags&SP_PROCESSING){d->processing_end_us=now;d->flags|=SP_FINISHED;
        if(!rc)++g_snapshot_pipeline_diag.completed;}
}
