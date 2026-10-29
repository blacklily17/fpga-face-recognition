#include "e02_fixed_control.h"
#include "cnn16_model.h"
#include <string.h>
#define ALIGNED __attribute__((used,aligned(32)))
uint8_t g_e02_fixed_input[96000] ALIGNED;
int8_t g_e02_fixed_tensors[408960] ALIGNED;
c5_head_row_t g_e02_fixed_rows[300] ALIGNED;
c5_detection_t g_e02_fixed_boxes[16] ALIGNED;
volatile uint32_t g_e02_fixed_command[8] ALIGNED;
volatile e02_fixed_record_t g_e02_fixed_control ALIGNED;
const uint32_t g_e02_fixed_abi[32] ALIGNED={0x45303246,1,128,256,96000,408960,12000,512,32,2,
    0,245760,307200,368640,384000,399360,403200,407040,408000,408960,
    12,14,16,18,36,9,34,35,0,0,0,0};
static const uint32_t offsets[10]={0,245760,307200,368640,384000,399360,403200,407040,408000,408960};
static e02_ps_engine_t engine;
static e02_diag_io_t cache;
static uint64_t (*clock_us)(void *),hz,start_us,end_us;
static void *clock_context;
static unsigned initialized,exports,stage_count;
static int status=C5_STALE,valid;
static void clean(const void *p,size_t n){if(cache.clean)cache.clean(cache.context,p,n);}
static void barrier(void){if(cache.barrier)cache.barrier(cache.context);}
static void u64(uint32_t *w,unsigned i,uint64_t n){w[i]=(uint32_t)n;w[i+1]=(uint32_t)(n>>32);}
static void publish(void){
    e02_fixed_record_t r={{0}};uint32_t *w=r.word,rev;uint64_t core=0;unsigned i;
    w[0]=0x45303246;w[1]=1;w[2]=256;w[4]=2;w[5]=(uint32_t)status;
    w[6]=engine.active;w[7]=(uint32_t)valid;w[8]=exports;w[9]=stage_count;
    w[10]=valid?(uint32_t)engine.count:0;w[11]=valid?engine.have_roi:0;
    u64(w,12,start_us);u64(w,14,end_us);u64(w,16,end_us>=start_us?end_us-start_us:0);
    for(i=0;i<9;++i){u64(w,36+2*i,engine.stage_us[i]);core+=engine.stage_us[i];}
    u64(w,18,core);u64(w,20,engine.phase_us[E02_ENGINE_PREP]);u64(w,22,engine.phase_us[E02_ENGINE_HEAD]);
    u64(w,24,engine.phase_us[E02_ENGINE_DECODE]+engine.phase_us[E02_ENGINE_SORT]+engine.phase_us[E02_ENGINE_NMS]);
    u64(w,26,engine.max_step_us);u64(w,28,engine.active_us);u64(w,30,engine.steps);u64(w,32,hz);
    w[35]=valid && exports?408960:0;
    if(valid && engine.have_roi){w[54]=(uint32_t)engine.roi.box.x0;w[55]=(uint32_t)engine.roi.box.y0;w[56]=(uint32_t)engine.roi.box.x1;w[57]=(uint32_t)engine.roi.box.y1;}
    w[58]=engine.stage;w[59]=engine.cursor;w[60]=engine.max_units_per_step;
    rev=(g_e02_fixed_control.word[3]+1u)|1u;g_e02_fixed_control.word[3]=rev;clean((const void *)&g_e02_fixed_control,32);barrier();
    w[3]=rev;memcpy((void *)&g_e02_fixed_control,&r,sizeof r);clean((const void *)&g_e02_fixed_control,sizeof r);barrier();
    g_e02_fixed_control.word[3]=rev+1;clean((const void *)&g_e02_fixed_control,32);barrier();
}
int e02_fixed_control_bind_cache(const e02_diag_io_t *io){
    if(engine.active)return C5_BUSY;
    if(!io || !io->clean || !io->barrier)return C5_BAD_ARG;
    cache=*io;return C5_OK;
}
static int stage_export(void *p,uint32_t stage,const int8_t *data,size_t bytes,c16_shape_t shape){
    (void)p;(void)shape;
    if(stage!=stage_count || stage>=9 || bytes!=offsets[stage+1]-offsets[stage])return C5_FAULT;
    if(exports)memcpy(g_e02_fixed_tensors+offsets[stage],data,bytes);
    ++stage_count;return C5_OK;
}
int e02_fixed_control_init(uint64_t (*clock)(void *),void *ctx,uint64_t ps_hz){
    int rc;if(!clock || !ps_hz)return C5_BAD_ARG;
    if(engine.active)return C5_BUSY;
    rc=e02_ps_engine_init(&engine,c16_trained(),clock,ctx);if(rc)return rc;
    engine.stage_callback=stage_export;clock_us=clock;clock_context=ctx;hz=ps_hz;initialized=1;
    valid=0;exports=0;stage_count=0;start_us=end_us=0;status=C5_STALE;publish();return C5_OK;
}
int e02_fixed_control_begin(unsigned capture){
    int rc;if(!initialized || capture>1)return C5_BAD_ARG;
    if(engine.active)return C5_BUSY;
    rc=e02_ps_engine_begin(&engine,g_e02_fixed_input,sizeof g_e02_fixed_input);if(rc)return rc;
    exports=capture;stage_count=0;valid=0;status=C5_PENDING;start_us=engine.last_us;end_us=start_us;
    publish();return C5_OK;
}
int e02_fixed_control_step(void){
    int rc;uint64_t endpoint;if(!initialized)return C5_BAD_ARG;
    if(!engine.active)return status<0?status:C5_STALE;
    rc=e02_ps_engine_step(&engine);endpoint=clock_us(clock_context);
    if(endpoint<start_us || endpoint<engine.last_us || endpoint<end_us){
        e02_ps_engine_cancel(&engine);valid=0;rc=C5_FAULT;
    }
    end_us=endpoint;
    status=rc;
    if(rc==C5_OK){
        memcpy(g_e02_fixed_rows,engine.work.rows,sizeof g_e02_fixed_rows);
        memcpy(g_e02_fixed_boxes,engine.detections,engine.count*sizeof g_e02_fixed_boxes[0]);
        clean(g_e02_fixed_rows,sizeof g_e02_fixed_rows);clean(g_e02_fixed_boxes,sizeof g_e02_fixed_boxes);
        if(exports)clean(g_e02_fixed_tensors,sizeof g_e02_fixed_tensors);
        barrier();valid=1;
    }
    publish();return rc;
}
void e02_fixed_control_cancel(void){
    if(!initialized)return;
    e02_ps_engine_cancel(&engine);valid=0;status=C5_STALE;end_us=clock_us(clock_context);publish();
}
