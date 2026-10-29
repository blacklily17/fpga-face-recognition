#ifndef BENCH_PROFILE_H
#define BENCH_PROFILE_H
#include <stdint.h>
#include "live_control.h"
#include "snapshot_prefetch.h"
#ifndef BENCH_SERIAL
#define BENCH_SERIAL 0
#endif
#define BENCH_SAMPLES 5U
typedef struct {
    uint32_t index, status, label, error, display_error, flags, hist_count, accept_mask;
    uint64_t sequence, begin_ticks, end_ticks;
    snapshot_pipeline_diag_t pipeline;
    uint64_t detect_ticks, roi_ticks, lbp_ticks, classify_ticks;
    uint32_t noface_count, gallery_crc, generation, reserved;
} bench_record;
typedef struct {
    uint32_t magic, version, bytes, serial, completed, started, active, error;
    uint32_t gallery_crc, generation, identities, templates;
    uint32_t gallery_mismatch, display_error, last_page, storage_state;
    uint64_t timer_hz;
    bench_record record[BENCH_SAMPLES];
} bench_diag;
extern volatile bench_diag g_bench_diag;
int bench_init(uint64_t (*clock)(void), uint64_t hz, uint32_t storage);
int bench_begin(void);
void bench_sample(const lr_result *result);
void bench_end(unsigned page, const lr_result *result, int display_error, uint64_t sequence);
void bench_cancel(void);
#endif
