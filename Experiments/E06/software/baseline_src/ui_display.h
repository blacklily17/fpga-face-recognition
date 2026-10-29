#ifndef UI_DISPLAY_H
#define UI_DISPLAY_H
#include <stdint.h>
/* Integration contract: algorithm labels are immutable: 1 WJX, 2 LYL, 3 LHJ.
 * Caller owns enrollment slot 0..2; pass slot+1, never change algorithm labels.
 * count = captured real frames (0..8) on enrollment pages; registered user count
 * (0..3) on HOME/USERS/legacy LOGIN/results. Adaptive LOGIN/QUALITY use
 * the explicitly flagged count payload below. No state machine or SD writes here.
 * Prepare selectors: x=242..337 / 352..447 / 462..557, y=84..123.
 * Prepare cancel x=173..390,y=351..408; capture x=409..626,y=351..408.
 * Overwrite cancel x=173..390,y=352..405; confirm x=409..626,y=352..405.
 * Caller continuously captures eight valid frames, pacing and SD owned by it.
 * HOME register x=60..739,y=150..233; login x=60..739,y=250..333;
 * users x=60..155,y=350..403. New-user selector x=242..557,y=130..177.
 * Single CPU/caller only; reserve both 1MiB DDR slots in the linker/memory map.
 */
enum ui_page {
    UI_HOME=0, UI_PREPARE=1, UI_CAPTURE=2, UI_REVIEW=3,
    UI_PROCESSING=4, UI_REGISTERED=5, UI_KNOWN=6, UI_UNKNOWN=7,
    UI_USERS=8, UI_LOGIN=9, UI_NOFACE=10, UI_ERROR=11,
    UI_OVERWRITE=12, UI_QUALITY=13, UI_DELETE_CONFIRM=14,
    UI_DELETED=15, UI_PAGE_COUNT=16
};
#define UI_WIDTH 800U
#define UI_HEIGHT 480U
#define UI_STRIDE 1600U
#define UI_FRAME0 0x11200000U
#define UI_FRAME1 0x11300000U
#define UI_VDMA_BASE 0x43010000U
#define UI_CAPTURE_TARGET 8U
/* UI_LOGIN/UI_QUALITY adaptive payload only, otherwise count keeps its
 * original enrollment/users meaning. Prefix bit guards legacy callers. */
#define UI_ADAPTIVE_COUNT 0x80000000U
enum ui_quality_hint { UIQ_NONE=0,UIQ_DARK,UIQ_BRIGHT,UIQ_BLUR,UIQ_SMALL,
                       UIQ_NOFACE,UIQ_INSUFFICIENT };
/* Hardware fixed c_num_fstores=2. Enable this only if XCI explicitly enables
 * c_enable_mm2s_frmstore_reg; a disabled FrameStore register reads zero.
 */
#ifndef UI_VDMA_FRAMESTORE_REG
#if defined(XPAR_UI_VDMA_ENABLE_DEBUG_INFO_5)
#define UI_VDMA_FRAMESTORE_REG XPAR_UI_VDMA_ENABLE_DEBUG_INFO_5
#else
#define UI_VDMA_FRAMESTORE_REG 0
#endif
#endif
enum ui_error { UI_OK=0, UI_EINVAL=-600, UI_ENOINIT=-601,
    UI_ETIMEOUT=-602, UI_EDMA=-603, UI_EASSET=-604, UI_EBUSY=-605 };
typedef struct {
    uint32_t stage, status, control, active_slot, target_slot;
    uint32_t page, label, count, flips, timeouts, errors;
    int last_error;
} ui_diagnostics;
extern volatile ui_diagnostics ui_debug;
/* Renderer-only ABI. Raw XTime ticks, never service-callback timer units.
 * Single CPU/caller as above. An observer must read revision, copy fields,
 * then reread revision (with reader memory barriers); accept only equal even
 * revisions. 64-bit fields can tear on ARM while revision is odd. Revision
 * wraps modulo 2^32; do not retain a read across 2^31 calls.
 * Counts cover ui_show, including rejected calls, and persist across init.
 * last is cleared per call; cumulative includes partial failed phases.
 * version 1: sizeof=144, last offset=64, cumulative offset=104; global is
 * aligned to 64 bytes. ui_debug remains the independent original 48-byte ABI.
 */
#define UI_RENDER_TIMING_VERSION 1U
#ifndef UI_REDRAW_DEDUP
#define UI_REDRAW_DEDUP 1
#endif
#if UI_REDRAW_DEDUP != 0 && UI_REDRAW_DEDUP != 1
#error "UI_REDRAW_DEDUP must be 0 or 1"
#endif
typedef struct {
    uint64_t wait_current, decode_dynamic, flush, wait_target, total;
} ui_render_ticks;
typedef struct {
    uint32_t version, size_bytes, revision, dedup_enabled;
    uint64_t counts_per_second;
    uint64_t calls, rendered, skipped, errors;
    int32_t last_error;
    uint32_t reserved;
    ui_render_ticks last, cumulative;
} ui_render_timing;
extern volatile ui_render_timing g_ui_render_timing;
int ui_display_init(void);
/* USERS: count 高4位是槽号，低4位是该槽实际模板数；其余页面含义不变。 */
/* Real renders confirm both current and submitted slots at fresh boundaries.
 * With UI_REDRAW_DEDUP=1 (default), an identical non-error tuple may reuse the
 * last successful actual slot, after validation/health and a fresh boundary.
 * A skip still checks frame progress; it writes no framebuffer, flushes no
 * cache and submits no flip. This is a sampled check, not a hardware-liveness
 * guarantee after return. UI_REDRAW_DEDUP=0 always renders for timing A/B.
 * Error/timeouts invalidate the renderer; recover using ui_display_init().
 * Rejected invalid/busy/uninitialized calls do not modify a safe frame/key.
 * No global cache disable and no reset of the shared system timer.
 */
int ui_show(unsigned page, unsigned label, unsigned count);
const char *ui_label_name(unsigned label);
#endif
