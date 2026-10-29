#ifndef C3_DETECTOR_H
#define C3_DETECTOR_H
#include "cnn16_backend.h"
#include "detector_contract.h"
#include "c3_profile.h"

#define C3_DETECT_FRAME_TIMEOUT_US UINT64_C(900000)
/* One immutable camera image is leased until independent safe() confirms
 * core + both DMA channels released it. An error return alone is not release. */
typedef struct {
    c16_backend_t backend;
    c3_detect_key_t key;
    uint64_t (*source_now_ticks)(void *);
    void *source_context;
    const uint8_t *image;
    uint64_t last_ticket,started_us;
    int initialized,active,draining,status;
    uint64_t drain_started_us;
    c3_profile_t current_profile,last_background,last_foreground;
} c3_detector_t;
int c3_detector_init(c3_detector_t *,c5_legacy_backend_t *,const c16_model_t *,
                     uint64_t (*source_now_ticks)(void *),void *);
int c3_detector_begin(c3_detector_t *,const uint8_t *,const c3_detect_key_t *);
int c3_detector_step(c3_detector_t *,haar_detect_result_t *,c3_detect_key_t *);
void c3_detector_cancel(c3_detector_t *);
int c3_detector_safe(c3_detector_t *);
#endif
