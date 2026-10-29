#ifndef STAGE_TIMING_H
#define STAGE_TIMING_H
#include <stdint.h>
#include <string.h>
#define STAGE_TIMING_CAPACITY 12U
#define STAGE_TIMING_PHASES 16U
/* Explicit fixed-width ABI. Durations are PS raw ticks, never PL cycles.
 * wall partitions a whole job; cpu is time inside foreground_step/job_step
 * (includes called services), NOT instruction-cycle profiling. */
typedef struct {
    uint32_t session,index,operation,frame_id,epoch;
    int32_t status;
    uint32_t done,aux;
    uint64_t begin,end,wall[STAGE_TIMING_PHASES],cpu[STAGE_TIMING_PHASES];
    uint64_t roi_crop_ticks,classify_ticks;
} stage_timing_record;
typedef struct {
    uint32_t magic,version,bytes,capacity,session,count,active,overflow,revision,reserved;
    uint64_t hz;
    stage_timing_record record[STAGE_TIMING_CAPACITY];
} stage_timing_diag;
typedef struct {
    stage_timing_record current;
    uint64_t last;
    unsigned phase,slot,enabled;
} stage_timing_clock;
static inline void stage_clock_start(stage_timing_clock *c,uint64_t now,unsigned phase)
{
    memset(c,0,sizeof *c);c->enabled=1;c->last=now;c->phase=phase;c->current.begin=now;
}
static inline void stage_clock_advance(stage_timing_clock *c,uint64_t now,unsigned phase)
{
    if(c->enabled && !c->current.done && c->phase<STAGE_TIMING_PHASES)
        c->current.wall[c->phase]+=now-c->last;
    c->last=now;c->phase=phase;
}
#endif
