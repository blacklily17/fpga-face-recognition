#include "distance_dma.h"

// 输入和输出各自占用完整缓存行，不允许缓存维护破坏邻接对象。
#ifdef _MSC_VER
#define DISTANCE_ALIGN __declspec(align(32))
#else
#define DISTANCE_ALIGN __attribute__((aligned(32)))
#endif
static DISTANCE_ALIGN uint32_t pairs[WP4_MATCH_FEATURE_COUNT];
static DISTANCE_ALIGN uint32_t result_line[8];
volatile DISTANCE_ALIGN distance_dma_diagnostics g_distance_diag;
#define READ(off) io->read(io->user, DISTANCE_DMA_REGS, (off))
#define WRITE(off, value) io->write(io->user, DISTANCE_DMA_REGS, (off), (value))
#define ERRORS 0x770U
static int expired(distance_dma_io *io, uint64_t start)
{
    return io->ticks(io->user) - start >= io->timeout_ticks;
}
static int stop(distance_dma_io *io)
{
    uint64_t start = io->ticks(io->user);
    WRITE(0U, 0U); WRITE(0x30U, 0U);
    while (!(READ(4U) & 1U) || !(READ(0x34U) & 1U) ||
           (READ(0U) & 5U) || (READ(0x30U) & 5U)) {
        if (expired(io, start)) {
            io->fault = 1U; io->stopped = 0U; return -716;
        }
    }
    io->stopped = 1U;
    return 0;
}
static int compute(void *context, const u16 *feature,
                          const u16 *prototype, u32 *distance)
{
    distance_dma_io *io = (distance_dma_io *)context;
    uint64_t start;
    uint32_t tx, rx, i;
    int rc = 0;
    if (!io || !feature || !prototype || !distance || !io->read ||
        !io->write || !io->ticks || !io->flush || !io->invalidate ||
        !io->timeout_ticks || io->fault) return -710;
    // 单线程同步调用，输入缓冲直到确认两个 DMA 通道停止才允许重用。
    if (stop(io)) return -716;
    io->write(io->user, DISTANCE_CONTROL, 0U, 0U);
    WRITE(0U, 4U);
    start = io->ticks(io->user);
    while ((READ(0U) | READ(0x30U)) & 4U) {
        if (expired(io, start)) { rc = -711; goto failed; }
    }
    if (stop(io)) return -716;
    for (i = 0U; i < WP4_MATCH_FEATURE_COUNT; ++i) {
        // 有效直方图总量为 14400，拒绝超域数据避免 PS 有符号平方溢出。
        if (feature[i] > 14400U || prototype[i] > 14400U) return -717;
        pairs[i] = ((uint32_t)prototype[i] << 16) | feature[i];
    }
#if UINTPTR_MAX > UINT32_MAX
    if ((uintptr_t)pairs > UINT32_MAX || (uintptr_t)result_line > UINT32_MAX)
        return -710;
#endif
    if (io->flush(io->user, (uintptr_t)pairs, sizeof(pairs)) ||
        io->flush(io->user, (uintptr_t)result_line, sizeof(result_line)))
        return -712;
    io->write(io->user, DISTANCE_CONTROL, 0U, 1U);
    if (io->read(io->user, DISTANCE_CONTROL, 8U) & 1U) {
        rc = -713; goto failed;
    }
    WRITE(4U, 0x7000U); WRITE(0x34U, 0x7000U);
    if ((READ(4U) | READ(0x34U)) & (ERRORS | 0x7000U)) {
        rc = -714; goto failed;
    }
    io->stopped = 0U;
    // 先启动结果接收，后启动模板发送，防止输出端无接收者。
    WRITE(0x30U, 1U);
    WRITE(0x48U, (uint32_t)(uintptr_t)result_line); WRITE(0x4cU, 0U);
    WRITE(0x58U, 4U);
    WRITE(0U, 1U);
    WRITE(0x18U, (uint32_t)(uintptr_t)pairs); WRITE(0x1cU, 0U);
    WRITE(0x28U, (uint32_t)sizeof(pairs));
    start = io->ticks(io->user);
    do {
        tx = READ(4U); rx = READ(0x34U);
        if ((tx | rx) & ERRORS) { rc = -714; goto failed; }
        if (io->read(io->user, DISTANCE_CONTROL, 8U) & 1U) {
            rc = -713; goto failed;
        }
        if ((tx & 0x1002U) == 0x1002U && (rx & 0x1002U) == 0x1002U) break;
        if (expired(io, start)) { rc = -715; goto failed; }
    } while (1);
    if (stop(io)) return -716;
    if (io->invalidate(io->user, (uintptr_t)result_line, sizeof(result_line)))
        return -712;
    *distance = result_line[0];
    return 0;
failed:
    // 停止失败则锁定上下文，禁止重新提交覆盖尚在使用的内存。
    if (stop(io)) return -716;
    io->write(io->user, DISTANCE_CONTROL, 0U, 0U);
    return rc;
}

int distance_dma_compute(void *context, const u16 *feature,
                          const u16 *prototype, u32 *distance)
{
    distance_dma_io *io = (distance_dma_io *)context;
    uint64_t start = (io && io->ticks) ? io->ticks(io->user) : 0U;
    int rc = compute(context, feature, prototype, distance);
    g_distance_diag.magic = 0x44495354U;
    ++g_distance_diag.calls;
    g_distance_diag.error = (uint32_t)rc;
    g_distance_diag.stopped = io ? io->stopped : 0U;
    g_distance_diag.last_ticks = (io && io->ticks) ? io->ticks(io->user)-start : 0U;
    if (rc == 0) g_distance_diag.actual = *distance;
    return rc;
}

int distance_dma_verify(distance_dma_io *io)
{
    static u16 a[WP4_MATCH_FEATURE_COUNT], b[WP4_MATCH_FEATURE_COUNT];
    uint32_t test, i, expected, actual;
    uint64_t start;
    int rc;
    if (!io || !io->ticks) return -710;
    g_distance_diag.selftest_passed = 0U;
    g_distance_diag.selftest_ps_ticks = g_distance_diag.selftest_pl_ticks = 0U;
    for (test = 0U; test < 4U; ++test) {
        for (i = 0U; i < WP4_MATCH_FEATURE_COUNT; ++i) {
            a[i] = (test == 0U) ? 0U : (u16)(i % 226U);
            b[i] = (test == 1U) ? a[i] : (u16)((i * 7U) % 226U);
            if (test == 0U) b[i] = 0U;
            if (test == 3U) { a[i] = 14400U; b[i] = 0U; }
        }
        start = io->ticks(io->user);
        expected = wp4_match_distance(a, b);
        g_distance_diag.selftest_ps_ticks += io->ticks(io->user)-start;
        g_distance_diag.expected = expected;
        rc = distance_dma_compute(io, a, b, &actual);
        g_distance_diag.selftest_pl_ticks += g_distance_diag.last_ticks;
        if (rc) return rc;
        if (actual != expected) {
            g_distance_diag.error = (uint32_t)-718;
            return -718;
        }
    }
    g_distance_diag.selftest_passed = 1U;
    return 0;
}
