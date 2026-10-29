#ifndef E02_PS_ENGINE_H
#define E02_PS_ENGINE_H
#include "cnn16_reference.h"

/* Caller allocates this large object in static DDR, never on an ARM stack.
 * Single cooperative owner, no interrupts/re-entrant calls. Model and image
 * are immutable leases until safe()==1. No MMIO/driver/identity dependencies. */
enum { E02_ENGINE_IDLE=0,E02_ENGINE_PREP,E02_ENGINE_CONV,E02_ENGINE_POOL,
       E02_ENGINE_HEAD,E02_ENGINE_DECODE,E02_ENGINE_SORT,E02_ENGINE_NMS,
       E02_ENGINE_DONE };
typedef struct {
    const c16_model_t *model;
    uint64_t (*now_us)(void *);
    void *clock_context;
    const uint8_t *gray;
    c16_workspace_t work;
    c5_post_workspace_t map_one;
    int8_t input[C16_INPUT_BYTES];
    c5_detection_t detections[C5_MAX_DETECTIONS],roi,sorting;
    size_t count,mapped,selected,sort_row,sort_pos,nms_row;
    uint32_t phase,stage,cursor,active,have_roi,sort_pending,pending_roi;
    int status;
    uint64_t last_us,total_us,active_us,phase_us[9],max_step_us,steps,units;
    uint64_t stage_us[9];
    uint32_t max_units_per_step;
    c16_stage_fn stage_callback; /* Optional fixed-input/test export only. */
    void *stage_context;
} e02_ps_engine_t;

int e02_ps_engine_init(e02_ps_engine_t *,const c16_model_t *,uint64_t (*)(void *),void *);
int e02_ps_engine_begin(e02_ps_engine_t *,const uint8_t *,size_t);
int e02_ps_engine_step(e02_ps_engine_t *);
/* Normal scheduling API; 1..64 units, same time/yield rules as step(). */
int e02_ps_engine_advance(e02_ps_engine_t *,unsigned units);
void e02_ps_engine_cancel(e02_ps_engine_t *);
int e02_ps_engine_safe(const e02_ps_engine_t *);
#endif
