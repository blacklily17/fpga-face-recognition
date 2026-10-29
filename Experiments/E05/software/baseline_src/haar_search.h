/* Haar 搜索层（PS 端 C 实现）。
 *
 * 分工与 `golden/haar_search.py` 完全一致：
 *   `haar_eval.h`  回答「**这一个**窗口过不过」；
 *   本文件         回答「**哪些**窗口值得问」+「同一张脸的冗余框收敛成一个」。
 *
 * 语义由 `software/tests/test_haar_c_search.py` 编译并运行后与
 * `golden/haar_search.py` 的 `candidates()` / `merge_candidates()` 逐框比对。
 *
 * 三条与直觉相反、且都是实测过的口径（改任何一条先看那个测试）
 * ---------------------------------------------------------
 * 1. **真正 resize 到的尺寸是 `szi - 1`，不是 `szi`。**
 *    `updateScaleData()` 里 `szi = (cvRound(W/sc)+1, cvRound(H/sc)+1)`，
 *    多出来的那一行/列是给积分图留的边框。按 `szi` 去 resize 会让每个
 *    窗口都错位，且**两个方向都出错**。
 * 2. **工作区用基础窗口 `HAAR_WINDOW_W`（24），不是缩放后的 `side`。**
 *    `getWorkingSize(origWinSize)` 的实参是 `origWinSize`。
 * 3. **档位、`(float)img_w/sc`、`(float)win*sc`、`(float)x*sc` 全是 `float`。**
 *    黄金模型是 `np.float32` 运算，只在**存下来**时收窄；阶梯递推本身用
 *    double。四处位宽**各不相同**，统一成 double 会在个别档位上让
 *    `cvRound` 差一个像素。实测分歧点：图宽 45、sc=1.2 时 float32 除法给
 *    `37.5`（half-to-even → 38），double 给 `37.49999850988`（→ 37）。
 *    W ≤ 3000 内有 178 个这样的点。
 *
 * 编译期护栏
 * ----------
 * `FLT_EVAL_METHOD != 0`（x87 把 float 表达式算成 80 位）会让上面第 3 条
 * 当场失效；`-ffast-math` 会关掉 IEEE 语义并让 `haar_cv_round` 失效。
 * 两个都在下面用 `#error` 顶死。x86-64 SSE 与 Cortex-A9 VFP 都是 0。
 *
 * 缓冲区由调用方提供，本模块不做任何 malloc，也不碰文件系统。
 *
 * 本文件是 UTF-8。不要加 BOM。
 */

#ifndef HAAR_SEARCH_H
#define HAAR_SEARCH_H

#include <float.h>          /* FLT_EVAL_METHOD —— 下面的护栏靠它，不能少 */
#include <stddef.h>
#include <stdint.h>

#include "haar_eval.h"      /* HAAR_WINDOW_W、haar_integral、haar_evaluate */

#if defined(__STDC_VERSION__) && defined(FLT_EVAL_METHOD) && (FLT_EVAL_METHOD != 0)
#  error "本模块要求 FLT_EVAL_METHOD == 0（float 表达式按 float 求值）"
#endif
#ifdef __FAST_MATH__
#  error "本模块禁止 -ffast-math：它会关掉 IEEE 语义并让 haar_cv_round 失效"
#endif

/* 输入尺寸上限。400×240 是主文档 Q5 冻结的 Haar 输入。
 * 改这两个数必须同时重算容量宏并回写 `系统方案与模块接口.md`（仓库规则 6）。 */
#define HAAR_SEARCH_MAX_W 400
#define HAAR_SEARCH_MAX_H 240
#define HAAR_SEARCH_MAX_PIXELS ((size_t)HAAR_SEARCH_MAX_W * (size_t)HAAR_SEARCH_MAX_H)

/* 积分图元素数：stride × (h+1) = 401 × 241 = 96,641 */
#define HAAR_SEARCH_MAX_II \
    (((size_t)HAAR_SEARCH_MAX_W + 1u) * ((size_t)HAAR_SEARCH_MAX_H + 1u))

/* 尺度阶梯的档数上限。`scale_factor` 只要 > 1.0 递推就必然终止，但
 * `1.0 + 1e-9` 在 400×240 上要转两亿次 —— 这是**真能挂死**的输入。
 * 256 档覆盖 scale_factor ≥ 1.0095（400×240、win=24）；超出即报错，
 * 不静默截断。黄金模型没有这条护栏（它会先耗尽内存），这是 C 侧**有意**
 * 多出的一道防线。 */
#define HAAR_SEARCH_MAX_LEVELS 256

/* ---- 返回码 ----------------------------------------------------------
 * 约定与 `haar_evaluate`（返回 1/0）**不同**：本层 0 = 成功，负数 = 错误码。 */
#define HAAR_SR_OK             ( 0)
#define HAAR_SR_ERR_ARG        (-1)  /* 参数非法：NULL / 尺寸<=0 / scale_factor<=1 /
                                        capacity<1 / min_size<0（NaN、inf 也归这里）*/
#define HAAR_SR_ERR_IMG_SMALL  (-2)  /* 图像比基础窗口还小 ⇒ 一档都没有 */
#define HAAR_SR_ERR_NO_SCALES  (-3)  /* 有档装得下窗口，但被 min_size/max_size 全滤掉 */
#define HAAR_SR_ERR_OVERFLOW   (-4)  /* 候选框容量不足 */
#define HAAR_SR_ERR_RESIZE     (-5)  /* 重采样失败 */
#define HAAR_SR_ERR_WS         (-6)  /* 超出本编译单元预留的上限（图像或档数）*/
#define HAAR_SR_ERR_INTEGRAL   (-7)  /* 积分图失败，自 haar_eval 透传 */

/* ---- 参数（与黄金模型的 `SearchParams` 同构）--------------------------
 * `scale_factor` 是 **double**：阶梯递推在黄金模型里走 Python 双精度，
 * 只有**存下来**的档位才收窄成 float32。写成 float 就会在第 k 档分叉。 */
typedef struct {
    double  scale_factor;   /* 必须 > 1.0 且有限。<1.0 或 NaN 一律 ERR_ARG */
    int32_t min_size;       /* 正方形边长下界，>= 0；0 = 不筛（与 cv2 一致）*/
    int32_t max_size;       /* 正方形边长上界，>= 0；0 = 用图像尺寸兜底 */
} haar_search_params_t;

/* ---- 一个候选框（原图坐标系）----------------------------------------- */
typedef struct {
    int32_t x, y, w, h;     /* w == h == cvRound(HAAR_WINDOW_W * sc) */
} haar_box_t;

/* ---- 一档尺度的几何量（对应黄金模型的 `Geometry`）--------------------
 * 刻意公开以便**直接断言**：这几个量全是 `cvRound` 的结果，而入参位宽会
 * 真实改变结果。端到端比候选框看不见它 —— 变异探针实测，把 float32 除法
 * 改成 double 除法后整套端到端用例仍然全绿。 */
typedef struct {
    float   sc;                 /* 本档档位（float32 收窄后的值）*/
    int32_t resize_w, resize_h; /* = szi - 1，真正 resize 到的尺寸 */
    int32_t side;               /* = cvRound((float)win * sc)，报告框边长 */
    int32_t work_w, work_h;     /* = max(szi - win, 0)，用**基础** win */
    int32_t step;               /* sc >= 2 时为 1，否则 2 */
} haar_geometry_t;

/* ---- 搜索诊断。所有字段在返回前都被写满，包括错误路径 ---------------- */
typedef struct {
    int32_t n_levels;    /* min_size/max_size 过滤后的档数 */
    int32_t n_windows;   /* 实际调用 haar_evaluate 的次数 */
    int32_t n_accepted;  /* 通过级联的窗口总数（**不受 capacity 影响**）*/
    int32_t n_boxes;     /* 真正写进用户数组的个数；溢出时 == capacity */
    int32_t overflow;    /* 1 = 曾丢弃候选框 */
} haar_search_result_t;

/* ---- 计时（可选）-----------------------------------------------------
 * 时钟由**调用方注入**：本模块不引用任何平台 API、不碰任何寄存器，
 * 与「不 malloc、不碰文件系统」是同一条约定。
 *
 * `now` 为 NULL = 不计时：两个段字段一律写 0，且**一次都不读时钟**。
 *
 * `ticks_per_sec` 只是随结构带过去的**元数据**，本模块不拿它做任何换算
 * （0 = 未知）。换算成秒是调用方的事 —— 那样只换一次、也只错一次；
 * 在这里除一下，就把「除以 0」和「量纲混用」两件事同时引进来了。
 *
 * `now` 与 `ticks_per_sec` 是**入参**，任何返回码下都原样保留，不被本层改写。 */
typedef uint64_t (*haar_now_fn)(void);

typedef struct {
    haar_now_fn now;            /* NULL = 不计时 */
    uint64_t    ticks_per_sec;  /* now() 的频率；0 = 未知，本层不碰 */
    uint64_t    t_resize_integral;  /* Σ 每档（resize + 积分图 + bind） */
    uint64_t    t_evaluate;         /* Σ 每档（滑窗求值） */
} haar_search_timing_t;

/* ---- 工作区（调用方提供）--------------------------------------------
 * ⚠️ **绝对不要声明成局部变量**：Zynq 裸机默认栈远小于 1.3 MB，这一句
 * 就是必崩的栈溢出。放文件作用域（进 .bss，落在 DDR）或显式放在 DDR 上。 */
typedef struct {
    uint8_t pix[HAAR_SEARCH_MAX_PIXELS];   /* 当前档的缩放图 */
    int32_t ii[HAAR_SEARCH_MAX_II];        /* 一次方积分图 */
    int64_t ii_sq[HAAR_SEARCH_MAX_II];     /* 平方积分图（必须 64 位）*/
} haar_search_ws_t;

/* ---- 纯函数：阶梯、几何量、容量上界（不写任何缓冲区，可单独断言）----- */

/* OpenCV 的 `cvRound`：round-half-to-even。
 *
 * **不要**用 `(int)(v + 0.5)` —— 那是 half-away-from-zero，在 `.5` 的档位上
 * 会和 OpenCV 差一个像素，而自然档位里**真会**落到 `.5` 上（W ≤ 3000、
 * scale_factor ∈ {1.05, 1.1, 1.2} 实测 362 处）。
 *
 * 实现用 `nearbyint`，取当前舍入模式（默认 `FE_TONEAREST` = to-nearest-even）。
 * 入参必须是「float32 的值扩宽成 double」——扩宽是精确的，所以
 * `haar_cv_round((double)f32结果)` 与黄金模型的 `cv_round(np.float32)` 一致。 */
int32_t haar_cv_round(double v);

/* 浮点环境自检：舍入模式被 BSP、`-ffast-math` 或别的模块改过就当场发现。
 * 返回 0 = 正常；-1 = 环境不符（调用方必须处理，不许当没看见）。
 * 建议在 `main()` 开头调一次。 */
int haar_fp_check(void);

/* 尺度阶梯，逐档写进 `out[0..n)`。
 *
 * **返回值语义与其它函数不同：`>= 0` 是档数，`< 0` 才是错误码。**
 * 所以"图像太小、一档都没有"返回的是 `0` 而不是 `HAAR_SR_OK`
 * —— 那只是数值上恰好也是 0，含义不同，别混用。
 *
 * 递推用 double、存下来用 float32、每档的过滤用 float32。三处位宽不同。 */
int32_t haar_scales(int32_t img_w, int32_t img_h, int32_t win,
                    const haar_search_params_t *params,
                    float *out, int32_t capacity);

/* Cooperative caller's exact search-entry preparation. Unlike haar_scales,
 * preserve haar_search_candidates early-return semantics (including invalid
 * scale factors reaching the existing bounded-level workspace guard). */
int32_t haar_search_prepare(int32_t img_w, int32_t img_h,
                            const haar_search_params_t *params, float *out);

/* 单档几何量。`sc` 必须是 float32 收窄后的值（调用方别自己用 double 算）。 */
int haar_scale_geometry(int32_t img_w, int32_t img_h, int32_t win,
                        float sc, haar_geometry_t *g);

/* 缩放图坐标 → 原图坐标：`cvRound((float)v * sc)`。
 *
 * `v` 是窗口在**缩放图**里的左上角（不是原图坐标）。**乘法必须是 float32**：
 * 与几何量那条同源，`(float)v * sc` 和 `v * sc` 会在个别 (v, sc) 上差一个
 * 像素（实测图宽 99、sc=1.05、v=70：float 给 74，double 给 73）。
 *
 * 单列成函数是为了让这层**能被单独断言**：候选框只来自被级联接受的窗口，
 * 端到端比对看不见这条口径（分歧点未必落在任何一个被接受的窗口上）。 */
int32_t haar_map_coord(int32_t v, float sc);

/* 本次搜索**最多**会产出多少个候选框（= 扫过的窗口总数，紧上界）。
 *
 * `>= 0` 返回上界；`< 0` 与 `haar_search_candidates` 同码。纯函数，
 * 不写缓冲区。调用方用它核对 `capacity`：**容量给到它才保证不溢出。**
 *
 * 上界必须是 `Σ ceil(work/step)`，不是"档数 × 最大窗口数"（那会大几倍、
 * 也解释不了），更不是拍脑袋的余量。 */
int32_t haar_search_max_boxes(int32_t img_w, int32_t img_h, int32_t win,
                              const haar_search_params_t *params);

/* ---- 主入口：一帧 → 候选框列表（**未合并**，与 `candidates()` 逐框可比）-- */

/* 契约（`timing` 之外的部分**一律不变**）：
 *   - `boxes` 非 NULL 且 `capacity >= 1`；`capacity` 必须 >=
 *     `haar_search_max_boxes(...)` 才能保证不溢出。
 *   - **溢出时继续扫完**（不提前退出）：`n_accepted` 仍是真实总数，
 *     `boxes[0..capacity)` 仍是扫描序的前 `capacity` 个，返回 ERR_OVERFLOW。
 *     这样调用方一眼知道"至少该开多大"，而不是只知道"溢出过一次"。
 *   - 扫描序与黄金模型完全一致：档由小到大 → y 由小到大 → x 由小到大。
 *   - 任何返回码下 `result` 的每个字段都已写满。
 *   - `timing` 可 NULL。非 NULL 时，`t_resize_integral` / `t_evaluate`
 *     在**任何返回码下**都已清零或累加完毕；`now` 与 `ticks_per_sec`
 *     原样保留（它们是调用方带进来的，不是本层的输出）。
 *   - 非 NULL 且 `now` 非 NULL 时，**每档恰好读 3 次时钟**
 *     （resize 前 / 积分图后 / 扫窗后），取两个首尾相接的差值。
 *     读数次数 = `3 × n_levels`，与窗口数无关。
 *   - 早退路径（参数非法 / 图像太小 / 阶梯被全滤掉 / 超出工作区上限）
 *     在扫描循环之前返回，**一次都不读**。 */
int haar_search_candidates(const uint8_t *pix, int32_t img_w, int32_t img_h,
                           const haar_search_params_t *params,
                           haar_search_ws_t *ws,
                           haar_box_t *boxes, int32_t capacity,
                           haar_search_result_t *result,
                           haar_search_timing_t *timing);

/* ---- 收敛层：把同一张脸的多个冗余框合成一个 ------------------------- */

/* `cascadedetect.cpp:1396` 的 `const double GROUP_EPS = 0.2;` */
#define HAAR_GROUP_EPS 0.2

/* 一个等价类的汇总量。由调用方提供 `n` 个，本模块只写不分配。
 *
 * `first` 是**组内最小原始下标**。它不是统计量，而是「隐式第 7 级」的依据：
 * 黄金模型用 `min(groups, key=...)`，并列时返回 dict 迭代序最靠前的组，
 * 而那个顺序就是按 `first` 升序。见 `haar_merge_candidates` 的说明。 */
typedef struct {
    int32_t count;                  /* 组内候选框个数 */
    int32_t first;                  /* 组内最小原始下标 */
    int32_t min_x, min_y, min_w, min_h;
    int64_t area_sum;               /* Σ w*h，用于算平均面积 */
} haar_group_t;

/* 两个框是否属于同一组。**照抄 cv2 的 `SimilarRects`，不是 IoU。**
 *
 * `delta = eps * (min(w1,w2) + min(h1,h2)) * 0.5`，四个边界差都要 `<= delta`。
 * 选它是因为它就是 cv2 的判据，因而这一层能拿 cv2 逐位对拍；IoU 的 0.5
 * 在 cv2 里没有对应物，无从验证。边长同为 100、水平偏移 21 时本判据给
 * 「不同组」（delta=20 < 21），而 IoU=0.653 会判「同组」——
 * `test_haar_c_merge.py` 的 `similar-not-iou` 用例就钉这一条。
 *
 * 返回 1 / 0。`a` 或 `b` 为 NULL 时返回 0。 */
int haar_similar_rects(const haar_box_t *a, const haar_box_t *b, double eps);

/* 把 `n` 个候选框收敛成一个，写进 `*out`。
 *
 * 返回值（**与 `haar_search_candidates` 不同，注意别混**）：
 *   `1`  有结果，已写进 `*out`（对应黄金模型的返回一个框）
 *   `0`  输入为空，`*out` 未被触碰（对应黄金模型返回 `None`）
 *   `<0` 参数非法（HAAR_SR_ERR_ARG）
 *
 * 工作区由调用方提供，各需 `n` 个元素：`parent_ws` 是并查集父指针，
 * `group_ws` 是每组汇总量。`n == 0` 时两个工作区都可以是 NULL。
 *
 * 胜出组的选择键有 6 级：候选数最多 → 平均面积最大 → y、x、w、h 最小。
 * 另有**第 7 级**：6 级全并列时取「组内最小原始下标」最小的那一组 ——
 * 这一级在本实现里是**显式写出**的，不是数组布局的副作用。
 *
 * 组内平均按 cv2 的 `groupRectangles` 走 float32：
 * `s = 1.0f/n`，逐坐标 `(float)Σ * s`，再用 `haar_cv_round`（half-to-even）
 * 取整。**不是** `floor(v + 1/2)` —— 实测 x 累加 45、n=2 时 cv2 给 22 而非 23。
 *
 * 有意**不做**两件事（与黄金模型一致，理由见 `haar_search.py`）：
 * 不按邻居数筛选（cv2 的 `groupThreshold` 会把孤立真脸整个丢掉），
 * 也不裁剪到图像边界（那是 `roi_extract.square_box()` 的职责）。 */
int haar_merge_candidates(const haar_box_t *boxes, int32_t n,
                          int32_t *parent_ws, haar_group_t *group_ws,
                          haar_box_t *out);

#endif /* HAAR_SEARCH_H */
