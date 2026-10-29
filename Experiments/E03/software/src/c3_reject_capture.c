#include "c3_reject_capture.h"
#include "cnn5_types.h"
#include <string.h>
volatile c3_reject_capture_t g_c3_reject_capture __attribute__((aligned(32)))={
    .word={0x4333524a,1,sizeof(c3_reject_capture_t)}
};
static int io_valid(const c3_diag_io_t *io){return io && io->clean && io->barrier;}
static uint32_t open_capture(const c3_diag_io_t *io){
    uint32_t revision=(g_c3_reject_capture.word[3]+1u)|1u;
    g_c3_reject_capture.word[3]=revision;
    io->clean(io->context,(const void *)&g_c3_reject_capture,32);io->barrier(io->context);
    return revision;
}
static void close_capture(uint32_t revision,const c3_diag_io_t *io){
    io->clean(io->context,(const void *)&g_c3_reject_capture,sizeof g_c3_reject_capture);
    io->barrier(io->context);g_c3_reject_capture.word[3]=revision+1;
    io->clean(io->context,(const void *)&g_c3_reject_capture,32);io->barrier(io->context);
}
int c3_reject_reset(uint32_t session,uint32_t epoch,const c3_diag_io_t *io){
    uint32_t header[32]={0},revision;
    if(!session || !epoch || !io_valid(io))return C5_BAD_ARG;
    if(g_c3_reject_capture.word[5]==session && g_c3_reject_capture.word[10]==epoch)return 0;
    revision=open_capture(io);
    header[0]=0x4333524a;header[1]=1;header[2]=sizeof g_c3_reject_capture;
    header[3]=revision;header[5]=session;header[10]=epoch;
    memcpy((void *)g_c3_reject_capture.word,header,sizeof header);
    memset((void *)g_c3_reject_capture.gray,0,sizeof g_c3_reject_capture-sizeof header);
    close_capture(revision,io);return 0;
}
int c3_reject_store(const c3_reject_input_t *v,const c3_diag_io_t *io){
    uint32_t header[32]={0},revision,cell,bin,total=0;
    if(!v || !io_valid(io) || !v->key.session || !v->key.attempt || !v->key.evidence_generation ||
       v->reason<C3_REJECT_NO_FACE || v->reason>C3_REJECT_FAULT)return C5_BAD_ARG;
    if(g_c3_reject_capture.word[5]!=v->key.session ||
       g_c3_reject_capture.word[10]!=v->key.source.epoch)return C5_STALE;
    if(g_c3_reject_capture.word[4])return 1;
    if(v->gray && (!v->key.source.epoch || !v->key.ticket ||
       v->key.source.source_ticks>v->key.source.commit_ticks))return C5_BAD_ARG;
    if(v->roi_valid && (!v->gray || !v->roi || v->side<80 || v->side>240))return C5_BAD_ARG;
    if(v->hist_valid){
        if(!v->roi_valid || !v->histogram)return C5_BAD_ARG;
        for(cell=0;cell<64;cell++){
            uint32_t count=0;
            for(bin=0;bin<59;bin++)count+=v->histogram[cell*59+bin];
            if(count!=225)return C5_BAD_ARG;
            total+=count;
        }
        if(total!=14400)return C5_BAD_ARG;
    }
    revision=open_capture(io);
    header[0]=0x4333524a;header[1]=1;header[2]=sizeof g_c3_reject_capture;header[3]=revision;
    header[4]=1;header[5]=v->key.session;header[6]=v->key.attempt;header[7]=v->key.evidence_generation;
    header[8]=v->key.source.frame_id;header[9]=v->key.source.request_id;
    header[10]=v->key.source.epoch;header[11]=v->reason;
    header[12]=v->gray?96000:0;header[13]=v->roi_valid?v->side*v->side:0;
    header[14]=v->hist_valid?7552:0;header[15]=v->roi_valid?v->side:0;
    header[16]=(uint32_t)v->key.ticket;header[17]=(uint32_t)(v->key.ticket>>32);
    header[18]=(uint32_t)v->key.source.source_ticks;header[19]=(uint32_t)(v->key.source.source_ticks>>32);
    header[20]=(uint32_t)v->key.source.commit_ticks;header[21]=(uint32_t)(v->key.source.commit_ticks>>32);
    header[22]=v->hist_valid;header[23]=v->roi_valid;header[24]=v->mean;header[25]=v->gradient;
    header[26]=v->person;header[27]=v->distance;header[28]=v->margin;header[29]=v->accepted;
    header[30]=v->key.ticket!=0;
    memcpy((void *)g_c3_reject_capture.word,header,sizeof header);
    /* Wipe unused payload too: even an explicit raw read cannot attach an old
     * ROI/histogram to this no-face/expired frame. No large ARM stack buffer. */
    memset((void *)g_c3_reject_capture.gray,0,sizeof g_c3_reject_capture-sizeof header);
    if(v->gray)memcpy((void *)g_c3_reject_capture.gray,v->gray,96000);
    if(v->roi_valid)memcpy((void *)g_c3_reject_capture.roi,v->roi,header[13]);
    if(v->hist_valid)memcpy((void *)g_c3_reject_capture.histogram,v->histogram,7552);
    close_capture(revision,io);return 0;
}
