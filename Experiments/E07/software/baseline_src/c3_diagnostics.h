#ifndef C3_DIAGNOSTICS_H
#define C3_DIAGNOSTICS_H
#include "c3_detector.h"
#include "c3_diag_io.h"
#include "c3_reject_capture.h"
#define C3_DETECTOR_DIAG_WORDS 144u
#define C3_EVIDENCE_DIAG_WORDS 32u
typedef struct {uint32_t word[C3_DETECTOR_DIAG_WORDS];} c3_detector_diag_t;
typedef struct {uint32_t word[C3_EVIDENCE_DIAG_WORDS];} c3_evidence_diag_t;
typedef struct {uint32_t word[16];} c3_abi_layout_t;
extern volatile c3_detector_diag_t g_c3_detector_diag;
extern volatile c3_evidence_diag_t g_c3_evidence_diag;
extern const c3_abi_layout_t g_c3_abi_layout;
typedef struct {
    c3_detect_key_t key;
    uint32_t generation,operation;
    haar_box_t square;
    uint32_t roi_valid,hist_valid,quality_ok,person,valid_samples,attempts,streak,stop,retired;
    int32_t diagnostic_error;
} c3_evidence_input_t;
int c3_diagnostics_publish(const c3_detector_t *,const c3_evidence_input_t *,uint64_t ps_hz,
                           uint32_t backend,uint32_t owner,const c3_diag_io_t *);
#endif
