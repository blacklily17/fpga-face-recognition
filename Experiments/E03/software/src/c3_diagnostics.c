#include "c3_diagnostics.h"
#include <stddef.h>
#include <string.h>
volatile c3_detector_diag_t g_c3_detector_diag CNN_ALIGN32;
volatile c3_evidence_diag_t g_c3_evidence_diag CNN_ALIGN32;
const c3_abi_layout_t g_c3_abi_layout CNN_ALIGN32={{
    0x43334142u,1,sizeof(c3_abi_layout_t),sizeof(c3_detector_diag_t),
    sizeof(c3_evidence_diag_t),sizeof(c3_reject_capture_t),
    offsetof(c3_detector_diag_t,word)+16*sizeof(uint32_t),
    offsetof(c3_detector_diag_t,word)+80*sizeof(uint32_t),
    offsetof(c3_reject_capture_t,gray),offsetof(c3_reject_capture_t,roi),
    offsetof(c3_reject_capture_t,histogram),offsetof(c3_reject_capture_t,gray),
    64*sizeof(uint32_t),50000000,100000000,3*sizeof(uint32_t)
}};
typedef char detector_abi[(sizeof(c3_detector_diag_t)==576)?1:-1];
typedef char evidence_abi[(sizeof(c3_evidence_diag_t)==128)?1:-1];
typedef char rejection_abi[(sizeof(c3_reject_capture_t)==161280)?1:-1];
static void set64(uint32_t *w,unsigned i,uint64_t value){w[i]=(uint32_t)value;w[i+1]=(uint32_t)(value>>32);}
static void key(uint32_t *w,const c3_detect_key_t *k){
    w[2]=k->session;w[3]=k->attempt;w[4]=k->evidence_generation;
    w[5]=k->source.frame_id;w[6]=k->source.request_id;w[7]=k->source.epoch;
    set64(w,8,k->ticket);set64(w,10,k->source.source_ticks);set64(w,12,k->source.commit_ticks);
}
static void profile(uint32_t *w,const c3_profile_t *p){
    unsigned i;
    if(!p->valid)return;
    w[0]=p->valid;w[1]=(uint32_t)p->status;key(w,&p->key);
    set64(w,14,p->total_us);set64(w,16,p->busy_us);set64(w,18,p->max_poll_us);
    set64(w,20,p->preprocess_us);set64(w,22,p->tile_cpu_us);
    set64(w,24,p->head_us);set64(w,26,p->post_us);set64(w,28,p->drain_us);
    w[30]=p->tile_jobs;w[31]=p->candidates;
    for(i=0;i<9;i++)set64(w,32+2*i,p->cycles[i]);
    set64(w,50,p->started_us);set64(w,52,p->ended_us);set64(w,54,p->dma_wall_us);
    w[56]=p->tx_status;w[57]=p->rx_status;w[58]=p->core_status;w[59]=p->released;
}
static void publish(volatile uint32_t *dst,uint32_t *src,size_t bytes,const c3_diag_io_t *io){
    uint32_t revision=(dst[3]+1u)|1u;
    dst[3]=revision;io->clean(io->context,(const void *)dst,32);io->barrier(io->context);
    src[3]=revision;memcpy((void *)dst,src,bytes);
    io->clean(io->context,(const void *)dst,bytes);io->barrier(io->context);
    dst[3]=revision+1u;io->clean(io->context,(const void *)dst,32);io->barrier(io->context);
}
int c3_diagnostics_publish(const c3_detector_t *d,const c3_evidence_input_t *e,uint64_t ps_hz,
                           uint32_t backend,uint32_t owner,const c3_diag_io_t *io){
    c3_detector_diag_t diag={{0}};c3_evidence_diag_t evidence={{0}};
    uint32_t *w=diag.word,*v=evidence.word;
    if(!e || !ps_hz || backend>1 || owner>4 || !io || !io->clean || !io->barrier ||
       (!backend && d))return C5_BAD_ARG;
    if(e->roi_valid && (e->square.w!=e->square.h || e->square.w<80 || e->square.w>240 ||
       e->square.x<0 || e->square.y<0 || (int64_t)e->square.x+e->square.w>400 ||
       (int64_t)e->square.y+e->square.w>240))return C5_BAD_ARG;
    if(e->hist_valid && (!e->roi_valid || !e->quality_ok))return C5_BAD_ARG;
    w[0]=0x43334447;w[1]=1;w[2]=sizeof diag;w[4]=owner;w[5]=d?(uint32_t)d->active:0;
    w[6]=backend;w[7]=d?(uint32_t)d->status:0;
    set64(w,8,ps_hz);set64(w,10,backend?50000000:0);set64(w,12,100000000);
    w[14]=backend?0x434e0012:0;
    if(d){profile(w+16,&d->last_background);profile(w+80,&d->last_foreground);}
    v[0]=0x43334556;v[1]=1;v[2]=sizeof evidence;
    v[4]=e->key.session;v[5]=e->key.attempt;v[6]=e->key.evidence_generation;
    v[7]=e->generation;v[8]=e->key.source.frame_id;v[9]=e->key.source.request_id;
    v[10]=e->key.source.epoch;v[11]=e->operation;set64(v,12,e->key.ticket);
    set64(v,14,e->key.source.source_ticks);set64(v,16,e->key.source.commit_ticks);
    if(e->roi_valid){v[18]=(uint32_t)e->square.x;v[19]=(uint32_t)e->square.y;v[20]=(uint32_t)e->square.w;}
    v[21]=e->hist_valid;v[22]=e->quality_ok;v[23]=e->person;v[24]=e->valid_samples;
    v[25]=e->attempts;v[26]=e->streak;v[27]=e->stop;v[28]=e->roi_valid;
    v[29]=e->retired;v[30]=e->key.ticket!=0;
    v[31]=(uint32_t)e->diagnostic_error;
    publish(g_c3_detector_diag.word,w,sizeof diag,io);
    publish(g_c3_evidence_diag.word,v,sizeof evidence,io);return 0;
}
