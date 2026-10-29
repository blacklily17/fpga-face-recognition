#ifndef DISTANCE_DMA_H
#define DISTANCE_DMA_H
#include <stddef.h>
#include <stdint.h>
#include "wp4_face_matcher.h"
typedef struct {
    void *user;
    uint32_t (*read)(void *, unsigned, uint32_t);
    void (*write)(void *, unsigned, uint32_t, uint32_t);
    uint64_t (*ticks)(void *);
    int (*flush)(void *, uintptr_t, size_t);
    int (*invalidate)(void *, uintptr_t, size_t);
    uint64_t timeout_ticks;
    uint32_t fault, stopped;
} distance_dma_io;
enum { DISTANCE_DMA_REGS = 0, DISTANCE_CONTROL = 1 };
// 同步 DMA 后端；模板和特征在调用期间必须不可变。
int distance_dma_compute(void *, const u16 *, const u16 *, u32 *);
int distance_dma_verify(distance_dma_io *);
typedef struct {
    uint32_t magic, calls, error, stopped, selftest_passed, expected, actual;
    uint64_t last_ticks, selftest_ps_ticks, selftest_pl_ticks;
} distance_dma_diagnostics;
extern volatile distance_dma_diagnostics g_distance_diag;
#endif
