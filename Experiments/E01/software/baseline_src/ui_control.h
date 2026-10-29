#ifndef UI_CONTROL_H
#define UI_CONTROL_H
#include <stdint.h>
#include "live_control.h"
#include "ui_display.h"

/* 与 HDMI/GT911 worker 的接口：页面编号必须保持一致。 */
#define UI_NO_FACE UI_NOFACE
enum ui_action {
 UI_NONE=0, UI_REGISTER, UI_LOGIN_BEGIN, UI_LIST_USERS,
 UI_SELECT_WJX, UI_SELECT_LYL, UI_SELECT_LHJ, UI_SELECT_NEW,
 UI_CONFIRM, UI_COMMIT, UI_RETRY, UI_CANCEL, UI_BACK, UI_RETAKE,
 UI_USER_PREV, UI_USER_NEXT, UI_USER_ENROLL, UI_DELETE_REQUEST,
 UI_DELETE_COMMIT
};
enum ui_mode { UI_IDLE=0, UI_ENROLLING, UI_VOTING };
#define UI_LOGIN_VALID_LIMIT 5U
#define UI_LOGIN_ATTEMPT_LIMIT 12U
#define UI_LOGIN_BUDGET_MS 6000U
enum ui_login_stop { LOGIN_PENDING=0,LOGIN_EARLY,LOGIN_FULL,LOGIN_ATTEMPTS,LOGIN_TIMEOUT };
typedef struct {
 void *ctx;
 int (*poll)(void *ctx, int *x, int *y, int *pressed);
 int (*show)(void *ctx, unsigned page, unsigned label, unsigned count);
 uint64_t (*ms)(void *ctx);
 /* 出错时必须确认摄像头和 LBP DMA 都停止；失败后禁止重用缓冲区。 */
 int (*quiesce)(void *ctx, int error);
 int (*recover)(void *ctx);
} ui_ops;
/* Optional continuously-live backend. Absence preserves original synchronous
 * reference path. Pending samples do not count; cancel returns 0 only when DMA
 * no longer owns the ROI. Scheduler, not UI_IDLE, maintains video in this mode. */
typedef struct {
 void *ctx;
 int (*begin)(void *,uint32_t operation,uint32_t slot);
 int (*result)(void *,lr_result *);
 int (*cancel)(void *);
 void (*active)(void *,int);
} ui_async_ops;
typedef struct {
 ui_ops ops;
 unsigned page, mode, slot, label, count, sample, busy, pressed;
 unsigned cancel_pending, fault, paused, saw_face, saw_quality, saw_hist;
 unsigned storage_fault;
 unsigned normal_label, rescue_ok, rescue_count, rescue_person;
 int error, display_error;
 uint64_t sequence, next_sample_ms, cancel_requested_ms, cancel_latency_ms;
 lr_result result;
 ui_async_ops async;
 unsigned sample_active;
 /* Login evidence is independent of the backend's historical voter. */
 unsigned login_attempts, login_rejected, login_streak, login_person;
 unsigned login_stop, login_quality, login_votes[16];
 uint64_t login_start_ms, login_elapsed_ms;
 /* A frozen decision stays private until foreground and spare owners drain. */
 unsigned login_finishing, login_finish_page, login_finish_status, login_finish_label;
} ui_control;
typedef struct {
 uint32_t magic, version, page, mode, label, count, sample, busy;
 int32_t error, display_error;
 uint32_t cancel_pending, fault;
 int32_t backend_error;
 uint32_t sample_count, pl_clock_hz;
 uint64_t sequence, cancel_latency_ms;
 /* v3 append-only extension; sample means valid identity evidence. */
 uint32_t login_attempts, login_rejected, login_streak, login_stop, login_quality;
 uint64_t login_elapsed_ms;
} ui_control_diagnostics;
extern volatile ui_control_diagnostics g_ui_diag;
extern volatile ui_control_diagnostics stats;
extern volatile uint32_t ui_state;
int ui_control_init(ui_control *u, const ui_ops *ops);
int ui_control_bind_async(ui_control *,const ui_async_ops *);
/* VDMA service failure preserves original confirmed-quiesce fault handling. */
void ui_control_video_fault(ui_control *,int error);
void ui_control_action(ui_control *u, unsigned action);
void ui_control_touch(ui_control *u, int x, int y, int pressed);
/* poll 可在算法计时回调中使用；busy 时只登记取消，不重入算法/绘图。 */
void ui_control_poll(ui_control *u);
/* Safe inside SD/algorithm transactions: records cancel/touch failure only;
 * never dispatches recovery, drawing, gallery changes or fault/quiesce. */
void ui_control_poll_cancel_only(ui_control *u);
void ui_control_step(ui_control *u);
void ui_control_publish(const ui_control *u);
/* 坐标与 ui_display.h 对齐：准备页三选择器 y=84..123。
 * 每页按钮行为见 manifest：UNKNOWN 左重试右注册，NOFACE/QUALITY
 * 左重试右首页，ERROR 左取消/首页（仍锁定故障）右恢复，REVIEW 左同槽重拍。
 * 顶部返回 x=656..772,y=18..72；普通新用户 x=242..557,y=130..178。
 * HOME 命中真实按钮矩形，不响应空白区域。 */
#endif
