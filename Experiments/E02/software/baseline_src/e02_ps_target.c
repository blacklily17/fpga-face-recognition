#include "e02_ps_target.h"
#include "e02_ps_clock.h"
#include "cnn16_model.h"
#include "xtime_l.h"

static e02_ps_detector_t detector;
static gray_snapshot_hw_t *snapshot;
static int initialized;
static uint64_t now_us(void *p){
    XTime t;(void)p;XTime_GetTime(&t);
    return e02_ps_ticks_to_us((uint64_t)t,(uint64_t)COUNTS_PER_SECOND/1000000u);
}
static uint64_t source_now(void *p){
    uint64_t t;(void)p;
    return gray_snapshot_now(snapshot,&t)?UINT64_MAX:t;
}
int e02_ps_target_init(gray_snapshot_hw_t *hw){
    int rc;uint64_t last=0,allocated=0;
    if(!hw || !hw->io.read32 || !hw->io.write32 || !hw->io.barrier)return C5_BAD_ARG;
    if(initialized){
        if(!e02_ps_detector_safe(&detector))return C5_PENDING;
        last=detector.last_ticket;allocated=detector.allocated_ticket;
    }
    rc=e02_ps_detector_init(&detector,c16_trained(),now_us,NULL,source_now,NULL);
    if(rc)return rc;
    snapshot=hw;detector.last_ticket=last;detector.allocated_ticket=allocated;initialized=1;
    return C5_OK;
}
e02_ps_detector_t *e02_ps_target_detector(void){return initialized?&detector:NULL;}
void e02_ps_target_cancel(void){if(initialized)e02_ps_detector_cancel(&detector);}
int e02_ps_target_quiesce_step(void){
    if(!initialized)return 0;
    /* CPU cancel is synchronous between cooperative calls. Never pretend an
     * active lease is safe merely because no hardware DMA exists. */
    return e02_ps_detector_safe(&detector)?0:C5_PENDING;
}
