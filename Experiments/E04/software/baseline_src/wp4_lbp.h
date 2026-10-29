#ifndef WP4_LBP_H
#define WP4_LBP_H
#include <stddef.h>
#include <stdint.h>
enum { WP4_DMA=0, WP4_CONTROL=1, WP4_FLAGS=2 };
typedef struct {
    void *user;
    uint32_t (*read)(void *,unsigned,uint32_t);
    void (*write)(void *,unsigned,uint32_t,uint32_t);
    uint64_t (*ticks)(void *);
    /* Flush an isolated 32-byte aligned ROI and issue a DMA ordering barrier. */
    int (*sync_roi)(void *,uint32_t,size_t);
    uint64_t timeout_ticks;
} wp4_io;
typedef struct {
    uint32_t valid, stopped, flags, dma_status, total;
    uint64_t elapsed_ticks;
} wp4_stats;
/* One immutable snapshot only. Caller must not reuse ROI on stopped=0.
 * Success means both MM2S and histogram completed, readback is valid and DMA
 * HALTED was observed. Failure leaves any partially copied hist invalid.
 * No retry/next clear is allowed inside this one-shot application. */
int wp4_extract(const wp4_io *,uint32_t,size_t,uint16_t *,size_t,wp4_stats *);
int wp4_extract_sized(const wp4_io *,uint32_t,size_t,uint32_t,uint32_t,
                      uint16_t *,size_t,wp4_stats *);
/* Polling form of the same register protocol. The caller retains ROI/hist until
 * DONE and observed HALTED, including cancellation and error cleanup. */
typedef enum { WP4_JOB_IDLE=0,WP4_JOB_RESET,WP4_JOB_STOP_BEFORE,
 WP4_JOB_CLEAR_ZERO,WP4_JOB_CLEAR_DONE,WP4_JOB_DMA,WP4_JOB_HIST,
 WP4_JOB_STOP_AFTER,WP4_JOB_READ,WP4_JOB_FINAL,WP4_JOB_FAIL_STOP,WP4_JOB_DONE } wp4_job_phase;
typedef struct {
 const wp4_io *io;
 wp4_stats stats;
 uint16_t *hist;
 uint32_t address,bytes,base,index,sum;
 uint64_t all,start;
 int status,cancel_requested;
 wp4_job_phase phase;
} wp4_job_t;
int wp4_job_begin(wp4_job_t *,const wp4_io *,uint32_t,size_t,uint32_t,uint32_t,uint16_t *,size_t);
/* 1 pending, 0 valid+halted histogram, <0 error. max_bins clamped to 64. */
int wp4_job_step(wp4_job_t *,uint32_t max_bins);
void wp4_job_cancel(wp4_job_t *);
#endif
