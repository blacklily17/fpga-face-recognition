#ifndef C3_PROFILE_H
#define C3_PROFILE_H
#include "detector_contract.h"
/* Internal, not an MMIO/JTAG ABI. CPU intervals and DMA wall intervals are
 * nested in total_us; consumers must never sum them as end-to-end time. */
typedef struct {
    uint32_t valid,released;
    int32_t status;
    c3_detect_key_t key;
    uint64_t started_us,ended_us,total_us,busy_us,max_poll_us;
    uint64_t preprocess_us,tile_cpu_us,head_us,post_us,dma_wall_us,drain_us;
    uint64_t cycles[9];
    uint32_t tile_jobs,candidates,tx_status,rx_status,core_status;
} c3_profile_t;
#endif
