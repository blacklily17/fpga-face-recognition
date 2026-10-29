#include "e02_ps_detector.h"
#include <string.h>

static uint64_t now(e02_ps_detector_t *d){return d->engine.now_us(d->engine.clock_context);}
static int fresh(e02_ps_detector_t *d,const snapshot_meta_t *s,int begin){
    uint64_t t=d->source_now_ticks(d->source_context);
    if((!begin && t<d->last_source_ticks) || s->source_ticks>s->commit_ticks ||
       s->commit_ticks>t || t-s->source_ticks>C3_DETECT_SOURCE_TTL_TICKS)return 0;
    d->last_source_ticks=t;return 1;
}
static int overlap(const void *a,size_t an,const void *b,size_t bn){
    uintptr_t x=(uintptr_t)a,y=(uintptr_t)b;
    if(x>UINTPTR_MAX-(an-1) || y>UINTPTR_MAX-(bn-1))return 1;
    return x<=y+bn-1 && y<=x+an-1;
}
int e02_ps_detector_init(e02_ps_detector_t *d,const c16_model_t *m,
                        uint64_t (*clock)(void *),void *clock_ctx,
                        uint64_t (*source_clock)(void *),void *source_ctx){
    int rc;
    if(!d || !m || !clock || !source_clock || overlap(d,sizeof *d,m,sizeof *m))return C5_BAD_ARG;
    /* Engine validates all borrowed model ranges before touching its storage. */
    rc=e02_ps_engine_init(&d->engine,m,clock,clock_ctx);if(rc)return rc;
    memset((uint8_t *)d+sizeof d->engine,0,sizeof *d-sizeof d->engine);
    d->source_now_ticks=source_clock;d->source_context=source_ctx;
    d->initialized=1;d->status=C5_STALE;return C5_OK;
}
int e02_ps_detector_safe(const e02_ps_detector_t *d){
    return d && d->initialized && !d->active && !d->image && e02_ps_engine_safe(&d->engine);
}
int e02_ps_detector_begin(e02_ps_detector_t *d,const uint8_t *gray,const c3_detect_key_t *key){
    int rc;
    if(!d || !d->initialized || !gray || !key || !key->ticket || !key->session || !key->evidence_generation)return C5_BAD_ARG;
    if(overlap(gray,96000,d,sizeof *d))return C5_BAD_ARG;
    if(!e02_ps_detector_safe(d))return C5_BUSY;
    if(key->ticket<=d->last_ticket || !fresh(d,&key->source,1))return C5_STALE;
    rc=e02_ps_engine_begin(&d->engine,gray,96000);if(rc)return rc;
    d->key=*key;d->image=gray;d->last_ticket=key->ticket;
    if(key->ticket>d->allocated_ticket)d->allocated_ticket=key->ticket;
    d->started_us=d->engine.last_us;d->last_us=d->started_us;
    d->active=1;d->status=C5_PENDING;++d->started;return C5_OK;
}
static int terminal(e02_ps_detector_t *d,int status,uint64_t end){
    if(status<0)e02_ps_engine_cancel(&d->engine);
    d->active=0;d->image=NULL;d->status=status;d->completed_us=end;
    d->completed_total_us=end>=d->started_us?end-d->started_us:0;
    if(status==C5_TIMEOUT)++d->timeouts;
    if(!status)++d->completed;
    return status;
}
void e02_ps_detector_cancel(e02_ps_detector_t *d){
    if(!d || !d->initialized || !d->active)return;
    ++d->cancelled;(void)terminal(d,C5_STALE,now(d));
}
static int deadline(e02_ps_detector_t *d,uint64_t t){
    return t<d->last_us || t<d->started_us || t-d->started_us>=E02_DETECT_FRAME_TIMEOUT_US;
}
int e02_ps_detector_step(e02_ps_detector_t *d,haar_detect_result_t *out,c3_detect_key_t *key){
    uint64_t t;int rc;
    if(out)memset(out,0,sizeof *out);
    if(key)memset(key,0,sizeof *key);
    if(!d || !d->initialized || !out || !key)return C5_BAD_ARG;
    if(!d->active)return d->status<0?d->status:C5_STALE;
    t=now(d);if(deadline(d,t))return terminal(d,C5_TIMEOUT,t);
    d->last_us=t;if(!fresh(d,&d->key.source,0))return terminal(d,C5_STALE,t);
    rc=e02_ps_engine_step(&d->engine);
    /* Check every returned chunk, including completion and failed work. No
     * expired chunk can be published as NO_FACE or a successful identity ROI. */
    t=now(d);if(deadline(d,t))return terminal(d,C5_TIMEOUT,t);
    d->last_us=t;if(!fresh(d,&d->key.source,0))return terminal(d,C5_STALE,t);
    if(rc==C5_PENDING)return C5_PENDING;
    if(rc<0)return terminal(d,rc,t);
    if(!e02_ps_engine_safe(&d->engine))return terminal(d,C5_FAULT,t);
    if(d->engine.have_roi){c5_box_t b=d->engine.roi.box;
        if(!c5_recognition_geometry(b))return terminal(d,C5_FAULT,t);
        out->found=1;out->box.x=b.x0;out->box.y=b.y0;out->box.w=b.x1-b.x0;out->box.h=b.y1-b.y0;
    }
    out->n_candidates=(int32_t)d->engine.count;*key=d->key;return terminal(d,C5_OK,t);
}
static uint64_t ticket(void *p){
    e02_ps_detector_t *d=p;
    if(!d || !d->initialized || d->allocated_ticket==UINT64_MAX)return 0;
    return ++d->allocated_ticket;
}
static int begin(void *p,const uint8_t *gray,const c3_detect_key_t *key){return e02_ps_detector_begin(p,gray,key);}
static int step(void *p,haar_detect_result_t *out,c3_detect_key_t *key){return e02_ps_detector_step(p,out,key);}
static void cancel(void *p){e02_ps_detector_cancel(p);}
static int safe(void *p){return e02_ps_detector_safe(p);}
int e02_ps_detector_operations(e02_ps_detector_t *d,foreground_detector_ops_t *out){
    if(!out)return C5_BAD_ARG;
    memset(out,0,sizeof *out);if(!d || !d->initialized)return C5_BAD_ARG;
    out->context=d;out->next_ticket=ticket;out->begin=begin;out->step=step;out->cancel=cancel;out->safe=safe;return C5_OK;
}
