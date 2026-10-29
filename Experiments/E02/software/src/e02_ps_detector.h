#ifndef E02_PS_DETECTOR_H
#define E02_PS_DETECTOR_H
#include "e02_ps_engine.h"
#include "detector_contract.h"
#define E02_DETECT_FRAME_TIMEOUT_US UINT64_C(900000)
/* Static DDR. One shared engine for foreground and background; the existing
 * scheduler still arbitrates its owner. Error and release remain separate. */
typedef struct {
    e02_ps_engine_t engine;
    c3_detect_key_t key;
    uint64_t (*source_now_ticks)(void *);
    void *source_context;
    const uint8_t *image;
    uint64_t last_ticket,allocated_ticket,started_us,last_us,last_source_ticks;
    uint64_t completed_us,completed_total_us,started,completed,cancelled,timeouts;
    int initialized,active,status;
} e02_ps_detector_t;
int e02_ps_detector_init(e02_ps_detector_t *,const c16_model_t *,
                        uint64_t (*)(void *),void *,uint64_t (*)(void *),void *);
int e02_ps_detector_begin(e02_ps_detector_t *,const uint8_t *,const c3_detect_key_t *);
int e02_ps_detector_step(e02_ps_detector_t *,haar_detect_result_t *,c3_detect_key_t *);
void e02_ps_detector_cancel(e02_ps_detector_t *);
int e02_ps_detector_safe(const e02_ps_detector_t *);
int e02_ps_detector_operations(e02_ps_detector_t *,foreground_detector_ops_t *);
#endif
