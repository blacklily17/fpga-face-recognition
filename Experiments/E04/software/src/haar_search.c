/* Haar 搜索层。契约与数值口径见 haar_search.h —— 本文件不重复那些说明。
 *
 * 移植时踩过的、以及差点踩到的坑，按位置记在下面：
 *
 *   1. `scales()` 在黄金模型里是**两趟循环**：先按图像尺寸收全档，
 *      再按 min/max 过滤。这里合成了一趟 —— 因为阶梯单调，第一趟的
 *      `break` 点必然不晚于第二趟，合并后 `out` 逐档相同。但
 *      **未过滤档数 `n_all` 必须在过滤之前记数**，否则
 *      ERR_IMG_SMALL 与 ERR_NO_SCALES 就分不开了。
 *
 *   2. resize **每档都做**，哪怕 `work_w/work_h` 为 0。黄金模型里
 *      `range(0, 0, step)` 自然是空循环，但 `cv2.resize` 照样执行。
 *      测试桩正是按"每档一次、顺序、从原图"计数的，跳过一档就错位。
 *
 *   3. `(float)img_w / sc` 与 `(float)x * sc` 里的 `(float)` 都是**载荷**，
 *      不是风格。去掉它们（或让编译器按 double 求值）会在个别尺寸上
 *      让 cvRound 差一个像素，且端到端看不见。
 */

#include "haar_search.h"

#include <math.h>

/* `<fenv.h>` **不是到处都有**：`arm-none-eabi`（Linaro GCC 7.3.1，即本项目的
 * 目标工具链）就没有它 —— 无条件包含会当场编不过，而这只在交叉编译时
 * 才发现得了（宿主 MinGW 有这个头文件）。没有它的平台自然也**没有
 * `fesetround`**，舍入模式改不动，运行期这一项就没什么可查的；
 * 编译期那两条 `#error` 仍然有效（它们在 `<float.h>` 上，到处都有）。
 * 见 `haar_fp_check()` 的实现与头文件的说明。 */
#if defined(__has_include)
#  if __has_include(<fenv.h>)
#    include <fenv.h>
#    define HAAR_HAVE_FENV 1
#  endif
#endif
#ifndef HAAR_HAVE_FENV
#  define HAAR_HAVE_FENV 0
#endif
#include <string.h>

#include "haar_resize.h"

/* 建阶梯。`out` 收**过滤后**的档位，`*n_all_out`（可为 NULL）收**过滤前**
 * 的档数 —— 后者是区分 ERR_IMG_SMALL 与 ERR_NO_SCALES 的唯一依据。
 *
 * 返回 `>= 0` 档数，`< 0` 错误码。 */
static int32_t scales_build(int32_t img_w, int32_t img_h, int32_t win,
                            const haar_search_params_t *params,
                            float *out, int32_t capacity,
                            int32_t *n_all_out)
{
    /* 递推用 double：黄金模型的 `factor` 是 Python float（双精度）。
     * 收窄只发生在 `out[n] = (float)factor` 这一处。 */
    double  factor = 1.0;
    int32_t max_w  = (params->max_size > 0) ? params->max_size : img_w;
    int32_t max_h  = (params->max_size > 0) ? params->max_size : img_h;
    int32_t n = 0, n_all = 0;

    if (n_all_out != NULL) {
        *n_all_out = 0;
    }

    for (;;) {
        float   sc;
        int32_t side;

        /* 第一趟的判据：**基础窗口乘 double 档位**，与图像比 */
        if (haar_cv_round((double)win * factor) > img_w ||
            haar_cv_round((double)win * factor) > img_h) {
            break;
        }
        /* 只属于 C 的护栏：黄金模型没有这条，它会一直算到内存耗尽。
         * 见头文件对 HAAR_SEARCH_MAX_LEVELS 的说明。 */
        if (n_all >= HAAR_SEARCH_MAX_LEVELS) {
            return HAAR_SR_ERR_WS;
        }
        n_all++;

        sc = (float)factor;
        /* 第二趟的判据：**float32 窗口乘 float32 档位**。与上面那两行
         * 不是同一个表达式，别合并。 */
        side = haar_cv_round((double)((float)win * sc));
        factor *= params->scale_factor;

        if (side > max_w || side > max_h) {
            break;              /* 阶梯有序，后面只会更大 */
        }
        if (side < params->min_size) {
            continue;
        }
        if (n >= capacity) {
            return HAAR_SR_ERR_WS;
        }
        out[n++] = sc;
    }

    if (n_all_out != NULL) {
        *n_all_out = n_all;
    }
    return n;
}

int32_t haar_search_prepare(int32_t img_w, int32_t img_h,
                            const haar_search_params_t *params, float *out)
{
    int32_t n, n_all = 0;
    if (!params || !out || img_w <= 0 || img_h <= 0) return HAAR_SR_ERR_ARG;
    if (img_w > HAAR_SEARCH_MAX_W || img_h > HAAR_SEARCH_MAX_H) return HAAR_SR_ERR_WS;
    n = scales_build(img_w, img_h, HAAR_WINDOW_W, params, out,
                     HAAR_SEARCH_MAX_LEVELS, &n_all);
    if (n < 0) return n;
    if (n_all == 0) return HAAR_SR_ERR_IMG_SMALL;
    if (n == 0) return HAAR_SR_ERR_NO_SCALES;
    return n;
}

int32_t haar_cv_round(double v)
{
    return (int32_t)nearbyint(v);
}

int haar_fp_check(void)
{
    /* 编译期那两条 #error 管的是「编译这个文件时的环境」，管不了
     * 运行期被谁改过：BSP、别的模块、或一句 fesetround 都能把舍入模式
     * 换成 FE_UPWARD，而 nearbyint 是**跟着舍入模式走**的
     * （实测 FE_UPWARD 下 cvRound(2.5) 从 2 变成 3）。
     * 那种错编译期一声不响，只能在这里当场顶回去。 */
    if (FLT_EVAL_METHOD != 0) {
        return -1;
    }
#if HAAR_HAVE_FENV
    if (fegetround() != FE_TONEAREST) {
        return -1;
    }
#endif
    /* 没有 `<fenv.h>` 的平台返回 0：那里也没有 `fesetround`，改不动。
     * 用 `FLT_ROUNDS` 顶上是不行的 —— 实测 MinGW 上它恒为常量 1，
     * 不跟 `fesetround` 走，拿它当运行期检查等于自己骗自己。 */
    return 0;
}

int32_t haar_scales(int32_t img_w, int32_t img_h, int32_t win,
                    const haar_search_params_t *params,
                    float *out, int32_t capacity)
{
    if (params == NULL || out == NULL) {
        return HAAR_SR_ERR_ARG;
    }
    if (img_w <= 0 || img_h <= 0 || win <= 0) {
        return HAAR_SR_ERR_ARG;
    }
    /* `!(x > 1.0)` 一并吃掉 NaN：NaN 与任何数比较都是假。 */
    if (!(params->scale_factor > 1.0) || !isfinite(params->scale_factor)) {
        return HAAR_SR_ERR_ARG;
    }
    if (params->min_size < 0 || params->max_size < 0) {
        return HAAR_SR_ERR_ARG;
    }
    if (capacity < 0) {
        return HAAR_SR_ERR_ARG;
    }
    return scales_build(img_w, img_h, win, params, out, capacity, NULL);
}

int haar_scale_geometry(int32_t img_w, int32_t img_h, int32_t win,
                        float sc, haar_geometry_t *g)
{
    int32_t szi_w, szi_h;

    if (g == NULL) {
        return HAAR_SR_ERR_ARG;
    }
    if (img_w <= 0 || img_h <= 0 || win <= 0) {
        return HAAR_SR_ERR_ARG;
    }
    /* inf 也要挡：`img_w / inf` 是 0，几何量看着"正常"却毫无意义。 */
    if (!(sc > 0.0f) || !isfinite((double)sc)) {
        return HAAR_SR_ERR_ARG;
    }

    /* szi 比真正的缩放图多一行/一列（积分图边框），resize 的目标是 szi-1。
     * 这里的 `/` 与下面的 `*` 都必须是 **float32 运算**。 */
    szi_w = haar_cv_round((double)((float)img_w / sc)) + 1;
    szi_h = haar_cv_round((double)((float)img_h / sc)) + 1;

    g->sc       = sc;
    g->resize_w = szi_w - 1;
    g->resize_h = szi_h - 1;
    g->side     = haar_cv_round((double)((float)win * sc));
    /* 工作区用**基础**窗口 win，不是 side。它恰好等于"缩放图里合法的
     * 左上角范围"，所以窗口永远不会越界。 */
    g->work_w   = (szi_w - win > 0) ? (szi_w - win) : 0;
    g->work_h   = (szi_h - win > 0) ? (szi_h - win) : 0;
    g->step     = (sc >= 2.0f) ? 1 : 2;
    return HAAR_SR_OK;
}

int32_t haar_map_coord(int32_t v, float sc)
{
    /* 乘法的两个操作数都是 32 位以内，float32 乘积被精确扩宽成 double；
     * 写成 `(double)v * (double)sc` 会在个别点上差一个像素（见头文件）。 */
    return haar_cv_round((double)((float)v * sc));
}

int32_t haar_search_max_boxes(int32_t img_w, int32_t img_h, int32_t win,
                              const haar_search_params_t *params)
{
    float   sc[HAAR_SEARCH_MAX_LEVELS];
    int32_t n, k;
    int64_t total = 0;

    n = haar_scales(img_w, img_h, win, params, sc, HAAR_SEARCH_MAX_LEVELS);
    if (n < 0) {
        return n;
    }
    for (k = 0; k < n; k++) {
        haar_geometry_t g;

        if (haar_scale_geometry(img_w, img_h, win, sc[k], &g) != HAAR_SR_OK) {
            return HAAR_SR_ERR_ARG;
        }
        if (g.work_w <= 0 || g.work_h <= 0) {
            continue;           /* 空循环，与黄金模型的 range() 一致 */
        }
        /* 逐档 ceil(work/step)，不是"档数 × 最大窗口数" */
        total += (int64_t)((g.work_w + g.step - 1) / g.step) *
                 (int64_t)((g.work_h + g.step - 1) / g.step);
    }
    if (total > 2147483647LL) {
        return HAAR_SR_ERR_WS;
    }
    return (int32_t)total;
}

int haar_search_candidates(const uint8_t *pix, int32_t img_w, int32_t img_h,
                           const haar_search_params_t *params,
                           haar_search_ws_t *ws,
                           haar_box_t *boxes, int32_t capacity,
                           haar_search_result_t *result,
                           haar_search_timing_t *timing)
{
    float   sc[HAAR_SEARCH_MAX_LEVELS];
    int32_t n_all = 0, n_lev, k;
    int32_t n_win = 0, n_acc = 0, n_box = 0, overflow = 0;
    haar_now_fn now = NULL;

    /* 任何返回码下诊断字段都必须写满，所以先清零再校验参数。 */
    if (result != NULL) {
        memset(result, 0, sizeof(*result));
    }
    if (timing != NULL) {
        /* 只清**输出**字段；`now` 与 `ticks_per_sec` 是调用方带进来的
         * 元数据，原样保留。放在参数校验之前，于是错误路径下两个段字段
         * 也已清零。 */
        timing->t_resize_integral = 0;
        timing->t_evaluate = 0;
        now = timing->now;
    }
    if (pix == NULL || params == NULL || ws == NULL ||
        boxes == NULL || result == NULL) {
        return HAAR_SR_ERR_ARG;
    }
    if (img_w <= 0 || img_h <= 0 || capacity < 1) {
        return HAAR_SR_ERR_ARG;
    }
    if (img_w > HAAR_SEARCH_MAX_W || img_h > HAAR_SEARCH_MAX_H) {
        return HAAR_SR_ERR_WS;
    }

    n_lev = scales_build(img_w, img_h, HAAR_WINDOW_W, params, sc,
                         HAAR_SEARCH_MAX_LEVELS, &n_all);
    if (n_lev < 0) {
        return (int)n_lev;
    }
    if (n_all == 0) {
        return HAAR_SR_ERR_IMG_SMALL;
    }
    if (n_lev == 0) {
        return HAAR_SR_ERR_NO_SCALES;
    }
    result->n_levels = n_lev;

    for (k = 0; k < n_lev; k++) {
        haar_geometry_t g;
        haar_image_t    img;
        int32_t         x, y;
        uint64_t        t0 = 0, t1 = 0;

        if (haar_scale_geometry(img_w, img_h, HAAR_WINDOW_W, sc[k], &g)
                != HAAR_SR_OK) {
            return HAAR_SR_ERR_ARG;
        }

        /* 每档读 3 次、取两个差值，两段**首尾相接、中间不留缺口**。
         * 回绕是**正常**的：`end - start` 走无符号模运算，所以这里不能有
         * 任何「假设单调递增」的守卫（`if (t1 >= t0)` 之类），
         * 也不能把差值收成 int64。 */
        if (now != NULL) { t0 = now(); }

        /* resize 每档都做，work 为 0 也不例外 —— 见文件头第 2 条。
         * 目标尺寸必须装进工作区，否则 ws->pix 会被写穿。 */
        if (g.resize_w <= 0 || g.resize_h <= 0 ||
            g.resize_w > HAAR_SEARCH_MAX_W || g.resize_h > HAAR_SEARCH_MAX_H) {
            return HAAR_SR_ERR_RESIZE;
        }
        if (haar_resize(pix, img_w, img_h, ws->pix, g.resize_w, g.resize_h)
                != HAAR_RESIZE_OK) {
            return HAAR_SR_ERR_RESIZE;
        }
        /* 积分图**每档建一次**，不是每个窗口一次。 */
        if (haar_integral(ws->pix, g.resize_w, g.resize_h, ws->ii, ws->ii_sq)
                != 0) {
            return HAAR_SR_ERR_INTEGRAL;
        }
        if (haar_image_bind(&img, ws->pix, g.resize_w, g.resize_h,
                            ws->ii, ws->ii_sq) != 0) {
            return HAAR_SR_ERR_INTEGRAL;
        }

        if (now != NULL) { t1 = now(); }

        for (y = 0; y < g.work_h; y += g.step) {
            for (x = 0; x < g.work_w; x += g.step) {
                n_win++;
                if (haar_evaluate(&img, x, y, NULL) != 1) {
                    continue;
                }
                n_acc++;
                if (n_box >= capacity) {
                    /* 溢出后**继续扫完**：n_accepted 要是真实总数，
                     * 调用方才知道该开多大。写回的是扫描序前缀。 */
                    overflow = 1;
                    continue;
                }
                /* 坐标回到原图尺度：float32 乘 + half-to-even。 */
                boxes[n_box].x = haar_map_coord(x, sc[k]);
                boxes[n_box].y = haar_map_coord(y, sc[k]);
                boxes[n_box].w = g.side;
                boxes[n_box].h = g.side;
                n_box++;
            }
        }

        if (now != NULL) {
            uint64_t t2 = now();
            timing->t_resize_integral += t1 - t0;
            timing->t_evaluate        += t2 - t1;
        }
    }

    result->n_windows  = n_win;
    result->n_accepted = n_acc;
    result->n_boxes    = n_box;
    result->overflow   = overflow;
    return overflow ? HAAR_SR_ERR_OVERFLOW : HAAR_SR_OK;
}

/* ---- 收敛层 ---------------------------------------------------------
 *
 * 黄金模型用 `cv2.groupRectangles`，这里照 `haar_search.py` 的手写版重写。
 *
 * 并查集用**路径折半**而非完整压缩（`parent[i] = parent[parent[i]]`），
 * 与 Python 的 `find()` 同构。两种压缩对**最终划分**没有影响，所以这里
 * 是风格对齐而不是数值要求 —— 但既然两边都读同一份算法描述，写成一样
 * 就少一个"为什么两边不一样"的追问。
 */

static int32_t uf_find(int32_t *parent, int32_t i)
{
    while (parent[i] != i) {
        parent[i] = parent[parent[i]];
        i = parent[i];
    }
    return i;
}

int haar_similar_rects(const haar_box_t *a, const haar_box_t *b, double eps)
{
    double  mw, mh, delta;
    int64_t dx, dy, dw, dh;

    if (a == NULL || b == NULL) {
        return 0;
    }
    /* 先取 min 再相加再乘 eps 再乘 0.5 —— 与 Python 的
     * `eps * (min(...) + min(...)) * 0.5` 逐算子同序。整数项在 double 里
     * 精确，所以这里没有舍入余地，顺序相同只是为了可核对。 */
    mw = (a->w < b->w) ? (double)a->w : (double)b->w;
    mh = (a->h < b->h) ? (double)a->h : (double)b->h;
    delta = eps * (mw + mh) * 0.5;

    /* 四个**边界**之差（右边界 = x+w），不是左上角之差。 */
    dx = (int64_t)a->x - (int64_t)b->x;
    dy = (int64_t)a->y - (int64_t)b->y;
    dw = ((int64_t)a->x + a->w) - ((int64_t)b->x + b->w);
    dh = ((int64_t)a->y + a->h) - ((int64_t)b->y + b->h);
    if (dx < 0) { dx = -dx; }
    if (dy < 0) { dy = -dy; }
    if (dw < 0) { dw = -dw; }
    if (dh < 0) { dh = -dh; }

    /* `<=` 而不是 `<`。判据是闭区间，差一个等号会让贴边的两框分开。 */
    return (dx <= delta && dy <= delta && dw <= delta && dh <= delta) ? 1 : 0;
}

/* 胜出组比较：`a` 严格优于 `b` 才返回 1。
 *
 * **严格**是载荷：并列必须返回 0，让先出现的组留下 —— 这正是第 7 级。
 * 写成 `>=` 会让并列时后出现的组翻盘，且只在"6 级全并列"时可见。 */
static int group_is_better(const haar_group_t *a, const haar_group_t *b)
{
    double avg_a, avg_b;

    if (a->count != b->count) {
        return a->count > b->count;
    }
    /* 平均面积。Python 是 `sum(...) / float(len(...))`：整数和先转 double
     * 再除，不是先除后加。area_sum 是 int64，count >= 1。 */
    avg_a = (double)a->area_sum / (double)a->count;
    avg_b = (double)b->area_sum / (double)b->count;
    if (avg_a != avg_b) {
        return avg_a > avg_b;
    }
    if (a->min_y != b->min_y) { return a->min_y < b->min_y; }
    if (a->min_x != b->min_x) { return a->min_x < b->min_x; }
    if (a->min_w != b->min_w) { return a->min_w < b->min_w; }
    if (a->min_h != b->min_h) { return a->min_h < b->min_h; }
    return 0;                       /* 6 级全并列 —— 见函数头说明 */
}

int haar_merge_candidates(const haar_box_t *boxes, int32_t n,
                          int32_t *parent_ws, haar_group_t *group_ws,
                          haar_box_t *out)
{
    int32_t i, j, best_root = -1, m = 0;
    int64_t sx = 0, sy = 0, sw = 0, sh = 0;
    float   s;

    if (boxes == NULL || out == NULL || n < 0) {
        return HAAR_SR_ERR_ARG;
    }
    if (n == 0) {
        /* 黄金模型这一步返回 `None`。**不碰 `*out`** —— 调用方要靠这个
         * 区分"没有脸"和"脸在 (0,0)"。 */
        return 0;
    }
    if (parent_ws == NULL || group_ws == NULL) {
        return HAAR_SR_ERR_ARG;
    }

    /* 1. 相似关系取**传递闭包**：A~B、B~C 则三者同组，哪怕 A 与 C 不相似。
     *    这就是 `cv::partition` / 并查集的语义，也是"链式相邻"用例钉的东西。 */
    for (i = 0; i < n; i++) {
        parent_ws[i] = i;
    }
    for (i = 0; i < n; i++) {
        for (j = i + 1; j < n; j++) {
            if (haar_similar_rects(&boxes[i], &boxes[j], HAAR_GROUP_EPS)) {
                int32_t ri = uf_find(parent_ws, i);
                int32_t rj = uf_find(parent_ws, j);
                if (ri != rj) {
                    /* `parent[ri] = rj`：Python 的 `union` 把**第一个**实参
                     * 的根挂到第二个下面。方向不影响最终划分，但保持一致
                     * 就不用解释"为什么根不一样"。 */
                    parent_ws[ri] = rj;
                }
            }
        }
    }

    /* 2. 按根汇总。`i` 升序 ⇒ 某个根**第一次**被看到时 `i` 就是它的最小
     *    原始下标，顺手记进 `first`。`count == 0` 即"这个根还没被汇总过"，
     *    所以不需要额外的 visited 数组。 */
    for (i = 0; i < n; i++) {
        group_ws[i].count = 0;
    }
    for (i = 0; i < n; i++) {
        int32_t       r = uf_find(parent_ws, i);
        haar_group_t *g = &group_ws[r];

        if (g->count == 0) {
            g->first    = i;
            g->count    = 1;
            g->area_sum = (int64_t)boxes[i].w * (int64_t)boxes[i].h;
            g->min_x    = boxes[i].x;
            g->min_y    = boxes[i].y;
            g->min_w    = boxes[i].w;
            g->min_h    = boxes[i].h;
        } else {
            g->count++;
            g->area_sum += (int64_t)boxes[i].w * (int64_t)boxes[i].h;
            if (boxes[i].x < g->min_x) { g->min_x = boxes[i].x; }
            if (boxes[i].y < g->min_y) { g->min_y = boxes[i].y; }
            if (boxes[i].w < g->min_w) { g->min_w = boxes[i].w; }
            if (boxes[i].h < g->min_h) { g->min_h = boxes[i].h; }
        }
    }

    /* 3. 选胜出组。**按 `first` 升序枚举**（`i` 就是升序），并列时先到的
     *    留下 —— 第 7 级。`first != i` 说明这组已经被枚举过了。 */
    for (i = 0; i < n; i++) {
        int32_t r = uf_find(parent_ws, i);
        if (group_ws[r].first != i) {
            continue;
        }
        if (best_root < 0 ||
            group_is_better(&group_ws[r], &group_ws[best_root])) {
            best_root = r;
        }
    }

    /* 4. 组内等权平均，全部走 float32。
     *    累加在 int64 里做（Python 的 `sum` 是精确整数），只在乘 `s` 时
     *    收窄成 float32。**`s` 是 (float)(1/n) 再乘，不是除以 n** ——
     *    cv2 的 `groupRectangles` 就是这么写的，除以 n 在个别 n 上会差
     *    一个像素。最后用 haar_cv_round 做 half-to-even。 */
    for (i = 0; i < n; i++) {
        if (uf_find(parent_ws, i) != best_root) {
            continue;
        }
        sx += boxes[i].x;
        sy += boxes[i].y;
        sw += boxes[i].w;
        sh += boxes[i].h;
        m++;
    }
    s = 1.0f / (float)m;
    out->x = haar_cv_round((double)((float)sx * s));
    out->y = haar_cv_round((double)((float)sy * s));
    out->w = haar_cv_round((double)((float)sw * s));
    out->h = haar_cv_round((double)((float)sh * s));
    return 1;
}
