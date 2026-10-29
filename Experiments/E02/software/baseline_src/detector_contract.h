#ifndef DETECTOR_CONTRACT_H
#define DETECTOR_CONTRACT_H
#include "overlay_types.h"
#include "haar_detect.h"

#define C3_DETECT_SOURCE_TTL_TICKS UINT64_C(100000000)
typedef struct {
    uint32_t session,attempt,evidence_generation;
    snapshot_meta_t source;
    uint64_t ticket;
} c3_detect_key_t;
/* Device boundary, not a diagnostic/MMIO ABI. Only safe()==1 releases input;
 * step() error alone does not. Ticket allocator is shared by both owners. */
typedef struct {
    void *context;
    uint64_t (*next_ticket)(void *);
    int (*begin)(void *,const uint8_t *,const c3_detect_key_t *);
    int (*step)(void *,haar_detect_result_t *,c3_detect_key_t *);
    void (*cancel)(void *);
    int (*safe)(void *);
} foreground_detector_ops_t;
#endif
