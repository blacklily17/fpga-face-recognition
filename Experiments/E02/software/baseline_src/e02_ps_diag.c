#include "e02_ps_diag.h"
#include <string.h>
volatile e02_ps_diag_t g_e02_ps_diag __attribute__((used,aligned(32)));
const uint32_t g_e02_abi_layout[32] __attribute__((used,aligned(32)))={
    0x45303241,1,128,512,4,2,5,1,2,8,16,18,26,36,38,40,
    54,64,9,100000000,900000,2000,64,96000,15360,300,16,0,0,0,0,0
};
typedef char e02_diag_size[(sizeof(e02_ps_diag_t)==512)?1:-1];
static void set64(uint32_t *w,unsigned offset,uint64_t v){w[offset]=(uint32_t)v;w[offset+1]=(uint32_t)(v>>32);}
int e02_ps_diag_publish(const e02_ps_detector_t *d,uint32_t mode,uint32_t owner,uint64_t hz,const e02_diag_io_t *io){
    e02_ps_diag_t record={{0}};uint32_t revision,*w=record.word;unsigned i;uint64_t core=0;
    if((mode!=E02_DIAG_LIVE && mode!=E02_DIAG_FIXED_INPUT) || owner>4 || !hz || !io || !io->clean || !io->barrier)return C5_BAD_ARG;
    w[0]=0x45303244;w[1]=1;w[2]=sizeof record;w[4]=2;w[5]=mode;w[12]=owner;
    set64(w,16,hz);set64(w,18,100000000);
    if(d && d->initialized){const e02_ps_engine_t *e=&d->engine;const c3_detect_key_t *k=&d->key;
        w[6]=1;w[7]=(uint32_t)d->active;w[8]=(uint32_t)d->status;
        w[9]=e->phase;w[10]=e->stage;w[11]=e->cursor;w[13]=(uint32_t)e02_ps_detector_safe(d);
        w[14]=(uint32_t)e->count;w[15]=e->have_roi;
        w[20]=k->session;w[21]=k->attempt;w[22]=k->evidence_generation;
        w[23]=k->source.epoch;w[24]=k->source.frame_id;w[25]=k->source.request_id;
        set64(w,26,k->ticket);set64(w,28,k->source.source_ticks);set64(w,30,k->source.commit_ticks);
        set64(w,32,d->started_us);set64(w,34,d->active?d->last_us:d->completed_us);
        set64(w,36,d->active?(d->last_us>=d->started_us?d->last_us-d->started_us:0):d->completed_total_us);
        set64(w,38,e->active_us);set64(w,40,e->max_step_us);set64(w,42,e->steps);set64(w,44,e->units);
        set64(w,46,d->started);set64(w,48,d->completed);set64(w,50,d->cancelled);set64(w,52,d->timeouts);
        w[55]=e->max_units_per_step;set64(w,56,e->phase_us[E02_ENGINE_PREP]);set64(w,58,e->phase_us[E02_ENGINE_HEAD]);
        set64(w,60,e->phase_us[E02_ENGINE_DECODE]+e->phase_us[E02_ENGINE_SORT]+e->phase_us[E02_ENGINE_NMS]);
        for(i=0;i<9;++i){set64(w,64+2*i,e->stage_us[i]);core+=e->stage_us[i];}
        set64(w,62,core);
    }
    /* Only one cooperative publisher. Reader must read revision before and
     * after the payload too; an even revision in one file is not sufficient. */
    revision=(g_e02_ps_diag.word[3]+1u)|1u;g_e02_ps_diag.word[3]=revision;
    io->clean(io->context,(const void *)&g_e02_ps_diag,32);io->barrier(io->context);
    w[3]=revision;memcpy((void *)&g_e02_ps_diag,&record,sizeof record);
    io->clean(io->context,(const void *)&g_e02_ps_diag,sizeof record);io->barrier(io->context);
    g_e02_ps_diag.word[3]=revision+1u;
    io->clean(io->context,(const void *)&g_e02_ps_diag,32);io->barrier(io->context);return C5_OK;
}
