#ifndef C3_REJECT_CAPTURE_H
#define C3_REJECT_CAPTURE_H
#include "c3_diag_io.h"
#include "detector_contract.h"
typedef struct {
    uint32_t word[32];
    uint8_t gray[96000],roi[57600];
    uint16_t histogram[3776];
} c3_reject_capture_t;
extern volatile c3_reject_capture_t g_c3_reject_capture;
enum {C3_REJECT_NO_FACE=1,C3_REJECT_QUALITY,C3_REJECT_MATCH,C3_REJECT_RETIRED,C3_REJECT_FAULT};
typedef struct {
    c3_detect_key_t key;
    const uint8_t *gray,*roi;
    const uint16_t *histogram;
    uint32_t reason,roi_valid,hist_valid,side,mean,gradient,person,distance,margin,accepted;
} c3_reject_input_t;
int c3_reject_reset(uint32_t session,uint32_t epoch,const c3_diag_io_t *);
/* 0 stored, 1 first sample already retained, negative malformed. No SD access. */
int c3_reject_store(const c3_reject_input_t *,const c3_diag_io_t *);
#endif
