#include "wp4_lbp.h"
#include <string.h>
#define READ(bank,off) io->read(io->user,bank,off)
#define WRITE(bank,off,v) io->write(io->user,bank,off,v)
#define ERROR_BITS 0x770u
#define CONTROL_CLEAR (1u<<12)
#define CONTROL_CFG   (1u<<29)
#define FLAG_CLEAR_DONE  (1u<<0)
#define FLAG_HIST_DONE   (1u<<1)
#define FLAG_RESIZE_DONE (1u<<4)
#define FLAG_ERROR_MASK  0x2cu
#define CLEAR_ACK_MAX_READS 64u
static int expired(const wp4_io *io,uint64_t start) {
    return io->ticks(io->user)-start>=io->timeout_ticks;
}
static int stop_dma(const wp4_io *io,wp4_stats *s) {
    uint64_t start=io->ticks(io->user);
    WRITE(WP4_DMA,0,0);
    do {
        if((READ(WP4_DMA,4)&1u) && !(READ(WP4_DMA,0)&5u)) {
            s->stopped=1; return 0;
        }
    } while(!expired(io,start));
    s->stopped=0; return -18;
}
int wp4_extract_sized(const wp4_io *io,uint32_t address,size_t bytes,
                      uint32_t width,uint32_t height,
                      uint16_t *hist,size_t count,wp4_stats *s) {
    uint64_t all,start; uint32_t value,sum=0,base; size_t i; int rc=0;
    if(!s) return -10;
    memset(s,0,sizeof(*s));
    if(!io || !io->read || !io->write || !io->ticks || !io->sync_roi ||
       !io->timeout_ticks || !hist || count!=3776 || width==0 || height==0 ||
       width>256 || height>256 || bytes!=(size_t)width*(size_t)height ||
       (address&31u) || address<0x00100000u || address>0x07ffc000u) return -10;
    base=((width-1u)<<13)|((height-1u)<<21);
    all=io->ticks(io->user);
    WRITE(WP4_CONTROL,4,0); WRITE(WP4_CONTROL,12,0xffffffffu);
    WRITE(WP4_FLAGS,4,0xffffffffu); WRITE(WP4_CONTROL,0,base);
    WRITE(WP4_DMA,0,4);
    start=io->ticks(io->user);
    while(READ(WP4_DMA,0)&4u) {
        if(expired(io,start)) {rc=-11; goto failed;}
    }
    if(stop_dma(io,s)) {rc=-18; goto failed;}
    s->stopped=0;
    /* Observe sticky flags withdrawn while clear is still held. Only then
     * accept clear_done belonging to this rising edge, never an old 1. */
    WRITE(WP4_CONTROL,0,base|CONTROL_CLEAR);
    start=io->ticks(io->user);
    while(READ(WP4_FLAGS,0)!=0) {
        if(expired(io,start)) {rc=-12; goto failed;}
    }
    WRITE(WP4_CONTROL,0,base);
    start=io->ticks(io->user);
    do {
        s->flags=READ(WP4_FLAGS,0);
        if(s->flags&FLAG_ERROR_MASK) {rc=-16; goto failed;}
        if(s->flags&FLAG_CLEAR_DONE) break;
        if(expired(io,start)) {rc=-12; goto failed;}
    } while(1);
    WRITE(WP4_CONTROL,0,base|CONTROL_CFG);
    WRITE(WP4_CONTROL,0,base);
    if(io->sync_roi(io->user,address,bytes)) {rc=-19; goto failed;}
    WRITE(WP4_DMA,4,0x7000u);
    if(READ(WP4_DMA,4)&(ERROR_BITS|0x7000u)) {rc=-14; goto failed;}
    WRITE(WP4_DMA,0,1); WRITE(WP4_DMA,0x18,address);
    WRITE(WP4_DMA,0x1c,0); WRITE(WP4_DMA,0x28,(uint32_t)bytes);
    start=io->ticks(io->user);
    do {
        s->dma_status=READ(WP4_DMA,4); s->flags=READ(WP4_FLAGS,0);
        if(s->dma_status&ERROR_BITS) {rc=-14; goto failed;}
        if(s->flags&FLAG_ERROR_MASK) {rc=-16; goto failed;}
        if((s->dma_status&0x1002u)==0x1002u) break;
        if(expired(io,start)) {rc=-13; goto failed;}
    } while(1);
    start=io->ticks(io->user);
    while((s->flags&(FLAG_HIST_DONE|FLAG_RESIZE_DONE))!=
          (FLAG_HIST_DONE|FLAG_RESIZE_DONE)) {
        s->flags=READ(WP4_FLAGS,0);
        if(s->flags&FLAG_ERROR_MASK) {rc=-16; goto failed;}
        if(expired(io,start)) {rc=-15; goto failed;}
    }
    if(stop_dma(io,s)) {rc=-18; goto failed;}
    for(i=0;i<count;i++) {
        WRITE(WP4_CONTROL,0,base|(uint32_t)i);
        (void)READ(WP4_CONTROL,8); /* settle synchronous BRAM read */
        value=READ(WP4_CONTROL,8);
        s->total=value>>16;
        if(s->total!=14400) {rc=-17; goto failed;}
        hist[i]=(uint16_t)value; sum+=hist[i];
    }
    s->flags=READ(WP4_FLAGS,0);
    if(s->flags!=(FLAG_CLEAR_DONE|FLAG_HIST_DONE|FLAG_RESIZE_DONE)) {rc=-16; goto failed;}
    if(sum!=14400 || (READ(WP4_CONTROL,8)>>16)!=14400) {rc=-17; goto failed;}
    s->valid=1; s->elapsed_ticks=io->ticks(io->user)-all; return 0;
failed:
    s->flags=READ(WP4_FLAGS,0);
    if(stop_dma(io,s) && rc!=-11) rc=-18;
    s->elapsed_ticks=io->ticks(io->user)-all;
    return rc;
}

int wp4_extract(const wp4_io *io,uint32_t address,size_t bytes,
                uint16_t *hist,size_t count,wp4_stats *s) {
    return wp4_extract_sized(io,address,bytes,128u,128u,hist,count,s);
}

static int job_done(wp4_job_t *j,int rc){
    j->status=rc;j->phase=WP4_JOB_DONE;
    j->stats.elapsed_ticks=j->io->ticks(j->io->user)-j->all;return rc;
}
static int job_fail(wp4_job_t *j,int rc){
    const wp4_io *io=j->io;
    j->status=rc;j->stats.valid=0;j->stats.flags=READ(WP4_FLAGS,0);
    WRITE(WP4_DMA,0,0);j->start=io->ticks(io->user);j->phase=WP4_JOB_FAIL_STOP;return 1;
}
void wp4_job_cancel(wp4_job_t *j){
    if(j && j->phase!=WP4_JOB_IDLE && j->phase!=WP4_JOB_DONE)j->cancel_requested=1;
}
int wp4_job_begin(wp4_job_t *j,const wp4_io *io,uint32_t address,size_t bytes,
                  uint32_t width,uint32_t height,uint16_t *hist,size_t count){
    if(!j)return -10;
    if(j->phase!=WP4_JOB_IDLE && j->phase!=WP4_JOB_DONE)return 1;
    if(!io || !io->read || !io->write || !io->ticks || !io->sync_roi ||
       !io->timeout_ticks || !hist || count!=3776 || !width || !height ||
       width>256 || height>256 || bytes!=(size_t)width*height || (address&31u) ||
       address<0x00100000u || address>0x07ffc000u)return -10;
    memset(j,0,sizeof *j);j->io=io;j->address=address;j->bytes=(uint32_t)bytes;j->hist=hist;
    j->base=((width-1u)<<13)|((height-1u)<<21);j->all=io->ticks(io->user);
    WRITE(WP4_CONTROL,4,0);WRITE(WP4_CONTROL,12,0xffffffffu);
    WRITE(WP4_FLAGS,4,0xffffffffu);WRITE(WP4_CONTROL,0,j->base);WRITE(WP4_DMA,0,4);
    j->start=io->ticks(io->user);j->phase=WP4_JOB_RESET;j->status=1;return 0;
}
int wp4_job_step(wp4_job_t *j,uint32_t max_bins){
    const wp4_io *io;uint32_t n,value;
    if(!j || !j->io)return -10;
    io=j->io;
    if(j->phase==WP4_JOB_DONE)return j->status;
    if(j->cancel_requested && j->phase!=WP4_JOB_FAIL_STOP)return job_fail(j,-20);
    switch(j->phase){
    case WP4_JOB_RESET:
        if(READ(WP4_DMA,0)&4u){if(expired(io,j->start))return job_fail(j,-11);return 1;}
        WRITE(WP4_DMA,0,0);j->start=io->ticks(io->user);j->phase=WP4_JOB_STOP_BEFORE;return 1;
    case WP4_JOB_STOP_BEFORE:
        if(!(READ(WP4_DMA,4)&1u) || (READ(WP4_DMA,0)&5u)){
            if(expired(io,j->start))return job_fail(j,-18);
            return 1;
        }
        /* The bridge consumes a rising edge, not a held clear level. Its
         * sticky DONE can reassert ~37.8us later while control stays high.
         * Do not yield to video/UI/spare work between asserting CLEAR and
         * witnessing this edge withdraw the old flags. Avoid ticks callbacks
         * in this bounded MMIO-only acknowledgment: they may service UI.
         * Never accept a stale DONE=1 instead of observing the new zero. */
        WRITE(WP4_CONTROL,0,j->base|CONTROL_CLEAR);
        for(n=0;n<CLEAR_ACK_MAX_READS;n++){
            if(READ(WP4_FLAGS,0)==0){
                WRITE(WP4_CONTROL,0,j->base);j->start=io->ticks(io->user);
                j->phase=WP4_JOB_CLEAR_DONE;return 1;
            }
        }
        /* No trustworthy new edge acknowledgment. Lower request and fail;
         * retained stop/validity protection must not be bypassed. */
        WRITE(WP4_CONTROL,0,j->base);return job_fail(j,-12);
    case WP4_JOB_CLEAR_ZERO:
        if(READ(WP4_FLAGS,0)!=0){if(expired(io,j->start))return job_fail(j,-12);return 1;}
        WRITE(WP4_CONTROL,0,j->base);j->start=io->ticks(io->user);j->phase=WP4_JOB_CLEAR_DONE;return 1;
    case WP4_JOB_CLEAR_DONE:
        j->stats.flags=READ(WP4_FLAGS,0);
        if(j->stats.flags&FLAG_ERROR_MASK)return job_fail(j,-16);
        if(!(j->stats.flags&FLAG_CLEAR_DONE)){if(expired(io,j->start))return job_fail(j,-12);return 1;}
        WRITE(WP4_CONTROL,0,j->base|CONTROL_CFG);WRITE(WP4_CONTROL,0,j->base);
        if(io->sync_roi(io->user,j->address,j->bytes))return job_fail(j,-19);
        WRITE(WP4_DMA,4,0x7000u);
        if(READ(WP4_DMA,4)&(ERROR_BITS|0x7000u))return job_fail(j,-14);
        WRITE(WP4_DMA,0,1);WRITE(WP4_DMA,0x18,j->address);WRITE(WP4_DMA,0x1c,0);WRITE(WP4_DMA,0x28,j->bytes);
        j->start=io->ticks(io->user);j->phase=WP4_JOB_DMA;return 1;
    case WP4_JOB_DMA:
        j->stats.dma_status=READ(WP4_DMA,4);j->stats.flags=READ(WP4_FLAGS,0);
        if(j->stats.dma_status&ERROR_BITS)return job_fail(j,-14);
        if(j->stats.flags&FLAG_ERROR_MASK)return job_fail(j,-16);
        if((j->stats.dma_status&0x1002u)!=0x1002u){if(expired(io,j->start))return job_fail(j,-13);return 1;}
        j->start=io->ticks(io->user);j->phase=WP4_JOB_HIST;return 1;
    case WP4_JOB_HIST:
        j->stats.flags=READ(WP4_FLAGS,0);
        if(j->stats.flags&FLAG_ERROR_MASK)return job_fail(j,-16);
        if((j->stats.flags&(FLAG_HIST_DONE|FLAG_RESIZE_DONE))!=(FLAG_HIST_DONE|FLAG_RESIZE_DONE)){
            if(expired(io,j->start))return job_fail(j,-15);
            return 1;
        }
        WRITE(WP4_DMA,0,0);j->start=io->ticks(io->user);j->phase=WP4_JOB_STOP_AFTER;return 1;
    case WP4_JOB_STOP_AFTER:
        if(!(READ(WP4_DMA,4)&1u) || (READ(WP4_DMA,0)&5u)){
            if(expired(io,j->start))return job_fail(j,-18);
            return 1;
        }
        j->stats.stopped=1;j->phase=WP4_JOB_READ;return 1;
    case WP4_JOB_READ:
        if(max_bins>64)max_bins=64;
        for(n=0;n<max_bins && j->index<3776;n++,j->index++){
            WRITE(WP4_CONTROL,0,j->base|j->index);(void)READ(WP4_CONTROL,8);value=READ(WP4_CONTROL,8);
            j->stats.total=value>>16;if(j->stats.total!=14400)return job_fail(j,-17);
            j->hist[j->index]=(uint16_t)value;j->sum+=j->hist[j->index];
        }
        if(j->index==3776)j->phase=WP4_JOB_FINAL;
        return 1;
    case WP4_JOB_FINAL:
        j->stats.flags=READ(WP4_FLAGS,0);
        if(j->stats.flags!=(FLAG_CLEAR_DONE|FLAG_HIST_DONE|FLAG_RESIZE_DONE))return job_fail(j,-16);
        if(j->sum!=14400 || (READ(WP4_CONTROL,8)>>16)!=14400)return job_fail(j,-17);
        j->stats.valid=1;return job_done(j,0);
    case WP4_JOB_FAIL_STOP:
        if((READ(WP4_DMA,4)&1u) && !(READ(WP4_DMA,0)&5u)){
            j->stats.stopped=1;return job_done(j,j->status);
        }
        if(expired(io,j->start)){j->stats.stopped=0;return job_done(j,j->status==-11?-11:-18);}
        return 1;
    default:return -10;
    }
}
