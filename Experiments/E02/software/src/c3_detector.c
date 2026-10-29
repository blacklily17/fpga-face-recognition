#include "c3_detector.h"
#include <string.h>

static uint64_t ps_now(c3_detector_t *d) {
    return d->backend.dma.io.now_us(d->backend.dma.io.context);
}
static void terminal(c3_detector_t *d,int status,int safe){
    c3_profile_t *p=&d->current_profile;cnn_io_t *io=&d->backend.dma.io;
    uint64_t end;unsigned i;
    if(p->valid)return; /* Locked/final polling cannot rewrite the last record. */
    end=ps_now(d);memset(p,0,sizeof *p);p->valid=1;p->released=(uint32_t)safe;
    p->status=status;p->key=d->key;p->started_us=d->started_us;p->ended_us=end;
    p->total_us=end>=d->started_us?end-d->started_us:0;
    p->busy_us=d->backend.busy_us;p->max_poll_us=d->backend.max_poll_us;
    p->preprocess_us=d->backend.cpu_us[1];p->head_us=d->backend.cpu_us[6];
    p->post_us=d->backend.cpu_us[7];
    for(i=2;i<=5;i++)p->tile_cpu_us+=d->backend.cpu_us[i];
    for(i=0;i<9;i++){p->cycles[i]=d->backend.cycles[i];p->dma_wall_us+=d->backend.stage_us[i];}
    if(d->draining && end>=d->drain_started_us)p->drain_us=end-d->drain_started_us;
    p->tile_jobs=d->backend.tile_jobs;p->candidates=(uint32_t)d->backend.count;
    p->tx_status=io->read(io->context,CNN_DMA,CD_TXSR);
    p->rx_status=io->read(io->context,CNN_DMA,CD_RXSR);
    p->core_status=io->read(io->context,CNN_REG,CN_STATUS);
    if(d->key.session==UINT32_MAX)d->last_background=*p;else d->last_foreground=*p;
}
static int fresh(c3_detector_t *d,const snapshot_meta_t *s) {
    uint64_t now=d->source_now_ticks(d->source_context);
    return s->source_ticks<=s->commit_ticks && s->commit_ticks<=now &&
        now-s->source_ticks<=C3_DETECT_SOURCE_TTL_TICKS;
}
static int released(c3_detector_t *d) {
    cnn_io_t *io;uint32_t tx,rx,core;
    if(!d || !d->initialized || c16_backend_safe(&d->backend)!=C5_OK)return 0;
    io=&d->backend.dma.io;
    io->barrier(io->context);
    tx=io->read(io->context,CNN_DMA,CD_TXCR);
    rx=io->read(io->context,CNN_DMA,CD_RXCR);
    core=io->read(io->context,CNN_REG,CN_STATUS);
    if((tx|rx)&4u || (core&(CN_BUSY|CN_FAULT)) || !(core&CN_READY))return 0;
    tx=io->read(io->context,CNN_DMA,CD_TXSR);
    rx=io->read(io->context,CNN_DMA,CD_RXSR);
    /* Halted or idle is required on EACH channel. Error+idle is not safe. */
    if(((tx|rx)&CD_ERROR_MASK) || !(tx&3u) || !(rx&3u))return 0;
    io->barrier(io->context);return 1;
}
int c3_detector_safe(c3_detector_t *d) {
    return d && !d->active && released(d);
}
int c3_detector_init(c3_detector_t *d,c5_legacy_backend_t *legacy,
                     const c16_model_t *model,uint64_t (*source_now_ticks)(void *),
                     void *context) {
    int rc;
    if(!d || !source_now_ticks)return C5_BAD_ARG;
    memset(d,0,sizeof *d);
    rc=c16_backend_init(&d->backend,legacy,model);
    if(rc)return rc;
    d->source_now_ticks=source_now_ticks;d->source_context=context;
    d->backend.face_selection_only=1;d->initialized=1;
    return C5_OK;
}
static int overlap(const void *a,size_t an,const void *b,size_t bn) {
    uintptr_t x=(uintptr_t)a,y=(uintptr_t)b;
    return x<=y?y-x<an:x-y<bn;
}
int c3_detector_begin(c3_detector_t *d,const uint8_t *gray,const c3_detect_key_t *key) {
    c5_job_t job;int rc;
    if(!d || !d->initialized || !gray || !key || !key->ticket ||
       !key->session || !key->evidence_generation)return C5_BAD_ARG;
    if(overlap(gray,96000,d,sizeof *d))return C5_BAD_ARG;
    if(d->backend.dma.phase==CNN_LOCKED)return C5_LOCKED;
    if(!c3_detector_safe(d))return C5_BUSY;
    if(key->ticket<=d->last_ticket)return C5_STALE;
    if(!fresh(d,&key->source))return C5_STALE;
    memset(&job,0,sizeof job);
    job.ticket=key->ticket;
    job.generation=((uint64_t)key->session<<32)|key->evidence_generation;
    job.mode=C5_DETECT;job.frame.gray=gray;job.frame.gray_bytes=96000;
    job.frame.source.epoch=key->source.epoch;
    job.frame.source.frame_id=key->source.frame_id;
    job.frame.source.request_id=key->source.request_id;
    job.frame.source.source_ticks=key->source.source_ticks;
    rc=c16_backend_begin(&d->backend,&job);
    if(rc)return rc;
    d->key=*key;d->image=gray;d->last_ticket=key->ticket;
    d->started_us=ps_now(d);d->active=1;d->draining=0;d->status=0;
    memset(&d->current_profile,0,sizeof d->current_profile);
    return 0;
}
static void drain(c3_detector_t *d,int error) {
    if(!d->draining){
        d->status=error;d->draining=1;d->drain_started_us=ps_now(d);
        c16_backend_cancel(&d->backend);
    }
}
void c3_detector_cancel(c3_detector_t *d) {
    if(!d || !d->initialized || !d->active)return;
    drain(d,C5_STALE);
    if(released(d)){terminal(d,d->status,1);d->active=0;d->image=NULL;}
}
static int matching(c3_detector_t *d,const c5_result_t *r) {
    const snapshot_meta_t *s=&d->key.source;
    return r->valid && !r->status && r->ticket==d->key.ticket &&
        r->generation==(((uint64_t)d->key.session<<32)|d->key.evidence_generation) &&
        r->source.epoch==s->epoch && r->source.frame_id==s->frame_id &&
        r->source.request_id==s->request_id && r->source.source_ticks==s->source_ticks;
}
int c3_detector_step(c3_detector_t *d,haar_detect_result_t *out,c3_detect_key_t *key) {
    c5_result_t result;uint64_t now;int rc;
    if(out)memset(out,0,sizeof *out);
    if(key)memset(key,0,sizeof *key);
    if(!d || !d->initialized || !out || !key)return C5_BAD_ARG;
    if(!d->active)return d->status<0?d->status:C5_STALE;
    if(!d->draining){
        now=ps_now(d);
        if(now<d->started_us || now-d->started_us>=C3_DETECT_FRAME_TIMEOUT_US)drain(d,C5_TIMEOUT);
        else if(!fresh(d,&d->key.source))drain(d,C5_STALE);
    }
    if(d->draining){
        if(!released(d)){
            (void)c16_backend_poll(&d->backend,&result);
            if(d->backend.dma.phase==CNN_LOCKED){terminal(d,C5_LOCKED,0);return C5_LOCKED;}
            if(!released(d))return 1;
        }
        terminal(d,d->status,1);d->active=0;d->image=NULL;return d->status;
    }
    rc=c16_backend_poll(&d->backend,&result);
    if(rc==C5_PENDING)return 1;
    if(rc<0){
        drain(d,rc);
        if(d->backend.dma.phase==CNN_LOCKED){terminal(d,C5_LOCKED,0);return C5_LOCKED;}
        if(!released(d))return 1;
        terminal(d,rc,1);d->active=0;d->image=NULL;return rc;
    }
    if(!matching(d,&result) || !fresh(d,&d->key.source)){
        drain(d,C5_STALE);
        if(!released(d))return 1;
        terminal(d,d->status,1);d->active=0;d->image=NULL;return d->status;
    }
    /* The last bounded backend step may cross the frame deadline. Check at
     * completion too, before handing any result/lease to the caller. */
    now=ps_now(d);
    if(now<d->started_us || now-d->started_us>=C3_DETECT_FRAME_TIMEOUT_US){
        drain(d,C5_TIMEOUT);
        if(!released(d))return 1;
        terminal(d,d->status,1);d->active=0;d->image=NULL;return d->status;
    }
    /* Terminal software state alone is insufficient to hand the lease back. */
    if(!released(d)){drain(d,C5_FAULT);return 1;}
    if(result.has_box){
        if(!c5_recognition_geometry(result.box)){
            drain(d,C5_FAULT);terminal(d,d->status,1);d->active=0;d->image=NULL;return d->status;
        }
        out->found=1;out->box.x=result.box.x0;out->box.y=result.box.y0;
        out->box.w=result.box.x1-result.box.x0;out->box.h=result.box.y1-result.box.y0;
    }
    out->n_candidates=(int32_t)d->backend.count;
    *key=d->key;terminal(d,0,1);d->active=0;d->image=NULL;return 0;
}
