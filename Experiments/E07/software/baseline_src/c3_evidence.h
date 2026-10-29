#ifndef C3_EVIDENCE_H
#define C3_EVIDENCE_H
#include "haar_detect.h"
#include <stdint.h>
typedef struct {
    haar_box_t square;
    uint64_t ticks,hz;
    uint32_t session,epoch,generation,person;
    int have_square,have_person;
} c3_evidence_t;
uint32_t c3_evidence_context(c3_evidence_t *,uint32_t session,uint32_t epoch);
uint32_t c3_evidence_observe(c3_evidence_t *,const haar_box_t *,uint64_t now_ticks,
                            uint64_t hz,uint32_t session,uint32_t epoch);
uint32_t c3_evidence_accept_person(c3_evidence_t *,uint32_t person);
#endif
