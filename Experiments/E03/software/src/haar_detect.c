/* Haar 检测入口。契约与数值口径见 haar_detect.h —— 本文件不重复那些说明。
 *
 * 本层不加算法。它做的三件事，每一件都有对应的测试：
 *   1. 把搜索层与收敛层串起来（逐框对拍）
 *   2. 候选容量不足时**不给框**（溢出用例）
 *   3. 三段计时的读数口径（假时钟的读数次数断言）
 */

#include "haar_detect.h"

#include <string.h>

int haar_detect(const uint8_t *pix, int32_t img_w, int32_t img_h,
                const haar_search_params_t *params,
                haar_detect_ws_t *ws,
                haar_detect_result_t *result,
                haar_detect_timing_t *timing)
{
    haar_search_result_t sres;
    haar_now_fn          now = NULL;
    uint64_t             t_total0 = 0, t_merge0 = 0, t_merge1 = 0, t_end = 0;
    int                  ret, mret;

    /* 任何返回码下 result 的每个字段都必须写满，所以先清零再校验参数。
     * 这一句同时是「没有脸」时 `box` 不含残值的**唯一**保证：
     * `haar_merge_candidates()` 在 n == 0 时按自己的契约**不碰** `*out`。 */
    if (result != NULL) {
        memset(result, 0, sizeof(*result));
    }
    if (timing != NULL) {
        /* ⚠️ 先把 now 取出来，然后**只清四个输出字段**。
         * 不能整块 memset：`now` 与 `ticks_per_sec` 是调用方带进来的
         * 元数据，抹掉它们等于把调用方装的时钟悄悄关掉。 */
        now = timing->search.now;
        timing->search.t_resize_integral = 0;
        timing->search.t_evaluate        = 0;
        timing->t_merge                  = 0;
        timing->t_total                  = 0;
    }

    if (pix == NULL || params == NULL || ws == NULL || result == NULL) {
        return HAAR_SR_ERR_ARG;
    }
    /* 三个调用方数组缺任何一个都是调用方的错，必须当场报 ——
     * 漏检一个的后果是段错误，而不是一个可解释的返回码。 */
    if (ws->boxes == NULL || ws->parent == NULL || ws->groups == NULL) {
        return HAAR_SR_ERR_ARG;
    }
    if (img_w <= 0 || img_h <= 0 || ws->capacity < 1) {
        return HAAR_SR_ERR_ARG;
    }

    if (now != NULL) {
        t_total0 = now();
    }

    ret = haar_search_candidates(pix, img_w, img_h, params, &ws->search,
                                 ws->boxes, ws->capacity, &sres,
                                 (timing != NULL) ? &timing->search : NULL);

    /* 诊断字段先照抄，**包括错误路径** —— 溢出时调用方要靠 n_accepted
     * 知道容量该开多大。`n_candidates` 是**收敛前**的候选数，
     * 与 `n_accepted` 只在溢出时不同（那时前者 == capacity）。 */
    result->n_levels     = sres.n_levels;
    result->n_windows    = sres.n_windows;
    result->n_accepted   = sres.n_accepted;
    result->n_candidates = sres.n_boxes;
    result->overflow     = sres.overflow;
    result->found        = 0;

    if (ret == HAAR_SR_ERR_IMG_SMALL) {
        /* 图比基础窗口还小 ⇒ 这一帧本来就没有脸，不是错误。
         * 注意**不**把 ERR_NO_SCALES 也翻过来：那个是参数配错了。 */
        if (now != NULL) {
            timing->t_total = now() - t_total0;
        }
        return HAAR_DR_NO_FACE;
    }
    if (ret != HAAR_SR_OK) {
        /* 溢出（-4）与参数/几何/求值错误一律透传，不另立一套码。
         * `found` 已经是 0：**溢出时不许用截断的候选列表宣布结论**。 */
        if (now != NULL) {
            timing->t_total = now() - t_total0;
        }
        return ret;
    }

    if (now != NULL) {
        t_merge0 = now();
    }

    mret = haar_merge_candidates(ws->boxes, sres.n_boxes, ws->parent,
                                 ws->groups, &result->box);

    if (now != NULL) {
        t_merge1 = now();
        t_end    = now();
        timing->t_merge = t_merge1 - t_merge0;
        timing->t_total = t_end - t_total0;
    }

    if (mret < 0) {
        /* 合并层说参数非法 ⇒ 把已经写进去的框清掉，别让调用方看见半个结果。 */
        memset(&result->box, 0, sizeof(result->box));
        return HAAR_SR_ERR_ARG;
    }
    if (mret == 0) {
        return HAAR_DR_NO_FACE;     /* box 是 memset 后的全零，不是残值 */
    }
    result->found = 1;
    return HAAR_DR_OK;
}
