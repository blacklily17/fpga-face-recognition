/* Haar 检测入口（PS 端 C 实现）。
 *
 * 分工
 * ----
 *   `haar_eval.h`     回答「**这一个**窗口过不过」；
 *   `haar_search.h`   回答「**哪些**窗口值得问」+「同一张脸的冗余框收敛成一个」；
 *   本文件            回答「**这一帧**最后是哪个框」+「这两段各花了多久」。
 *
 * 本层**不加任何算法**：它只是把搜索层与收敛层串起来，再定三件事 ——
 * 候选容量不足时能不能宣布结论、诊断字段怎么填、计时段怎么切。
 * 因此它与搜索层的逐框结果**必须完全一致**，
 * 由 `software/tests/test_haar_c_detect.py` 逐框比对。
 *
 * 三条与直觉相反的口径（改任何一条先看那个测试）
 * -------------------------------------------------
 * 1. **溢出时不给框。** 「对前缀做收敛」与「对全集做收敛」是**两个不同的
 *    答案**，不是同一个答案的近似 —— 收敛层的胜出组判据第一级是「候选数
 *    最多」，截断会改变组的构成，进而可能选出**另一个**组。所以溢出时
 *    `found == 0` 且返回 `HAAR_SR_ERR_OVERFLOW`，诊断字段照填。
 * 2. **`HAAR_SR_ERR_IMG_SMALL` 翻成 `HAAR_DR_NO_FACE`，不是错误。**
 *    图比基础窗口还小 ⇒ 这一帧本来就没有脸；而 `HAAR_SR_ERR_NO_SCALES`
 *    （阶梯非空却被 `min_size` 全滤掉）是**参数配错了**，原样透传。
 *    把这两件事合成一个码，调用方就分不清该拒绝这一帧还是该改参数。
 * 3. **计时只在时钟非空时读，且读数次数是确定的。** 正常一帧
 *    `3 × 档数 + 4`（搜索层每档 3 次、合并层 2 次、`t_total` 首尾 2 次）；
 *    溢出那一路跳过合并，是 `3 × 档数 + 2`；搜索前早退的 IMG_SMALL /
 *    NO_SCALES / 尺寸超限路径读 2 次。检测层自己拒绝的 NULL / 非正尺寸 /
 *    capacity 非正等参数错误读 0 次。不要混淆搜索层与检测层的计时。
 *    这些次数**与窗口数无关**。
 *
 * 缓冲区由调用方提供，本模块不做任何 malloc，也不碰文件系统。
 *
 * 本文件是 UTF-8。不要加 BOM。
 */

#ifndef HAAR_DETECT_H
#define HAAR_DETECT_H

#include <stdint.h>

#include "haar_search.h"    /* haar_search_ws_t、haar_box_t、返回码、计时 */

/* ---- 返回码 ----------------------------------------------------------
 * **只有这两个是本层新立的**；其余 `<0` 一律透传 `haar_search.h` 的码，
 * 不另立一套 —— 少一个码就少一处会漂的说法。 */
#define HAAR_DR_OK       ( 0)
#define HAAR_DR_NO_FACE  ( 1)   /* **不是错误**：这一帧没有检出脸 */

/* 候选框容量的默认值。
 *
 * 取值规则（不是拍脑袋）：语料实测 `n_accepted` 最大值的 **4 倍**，
 * 向上取到 2 的幂，且不小于 64。判据是 `test_haar_c_detect.py` 的
 * `test_detect_default_capacity_has_headroom_over_the_corpus`。
 *
 * 实测（2026-10-02，`build_cases()` 全部语料，生产参数与 CV2 对拍参数各一）：
 * 最大值 = **7**（synth-400x240-cv2）→ 7×4 = 28 → 向上取 2 的幂且不小于 64
 * ⇒ **64**。×4 是给没进语料的人脸留头寸：一帧一张脸时冗余框实测 2–6 个，
 * 真实场景的人数与姿态分布都比合成语料宽；取 2 的幂是因为这个数会被用来
 * 开数组，非 2 的幂只会让容量核对不可复现。
 *
 * 注意 `haar_search_max_boxes()` 给的是**紧上界**（400×240 生产参数下
 * 46,828），按数组有效字段估算为 `46828 × 60 B ≈ 2.81 MB`，实际占用
 * 还应以目标 ABI 的 sizeof 计算。152,170 是 CV2 对拍参数的上界，
 * 不是生产参数的上界；而真实 `n_accepted`
 * 是几十的量级。想要严格不溢出的调用方应当自己调
 * `haar_search_max_boxes()` 并把结果当 `capacity`。 */
#define HAAR_DETECT_DEFAULT_CAPACITY  64

/* ---- 工作区（调用方提供）--------------------------------------------
 * ⚠️ **绝对不要声明成局部变量**：`search` 一个字段就 1.25 MB
 * （`pix` 96,000 + `ii` 386,564 + `ii_sq` 773,128），
 * Zynq 裸机默认栈远小于它，这一句就是必崩的栈溢出。
 * 放文件作用域（进 .bss，落在 DDR）或显式放在 DDR 上。
 *
 * 大工作区与调用方给的三个数组**分开写**，就是为了让上面这条警告
 * 在头文件里一眼可见。 */
typedef struct {
    haar_search_ws_t search;    /* 1,255,692 B */
    haar_box_t      *boxes;     /* 调用方提供，capacity 个 */
    int32_t         *parent;    /* 调用方提供，capacity 个（并查集父指针）*/
    haar_group_t    *groups;    /* 调用方提供，capacity 个 */
    int32_t          capacity;  /* >= 1 */
} haar_detect_ws_t;

/* ---- 诊断。所有字段在返回前都被写满，包括错误路径 -------------------- */
typedef struct {
    int32_t     found;          /* 1 = `box` 有效（仅 HAAR_DR_OK 时为 1）*/
    haar_box_t  box;            /* found == 0 时是**全零**，不是残值 */
    int32_t     n_candidates;   /* 收敛**前**的候选框数；溢出时 == capacity */
    int32_t     n_levels;       /* 尺度阶梯的档数 */
    int32_t     n_windows;      /* 实际调用 haar_evaluate 的次数 */
    int32_t     n_accepted;     /* 通过级联的窗口总数（**不受 capacity 影响**）*/
    int32_t     overflow;       /* 1 = 候选框曾溢出 */
} haar_detect_result_t;

/* ---- 三段计时。timing == NULL 时不写任何计时对象、不读时钟；
 * timing 非空且 search.now == NULL 时，四个输出字段写 0、不读时钟 ----
 *
 * ⚠️ 这里没有逐档计时（那要另加字段）。search.t_evaluate / t_total
 * 只定位滑窗段占比；是否定点化还要看目标板热点与正确性证据。
 * n_windows / n_levels 描述「这帧扫了多少」，不证明性能达标。 */
typedef struct {
    haar_search_timing_t search;    /* resize+积分图 / 滑窗求值 两段 */
    uint64_t             t_merge;   /* 收敛层；溢出那一路跳过，为 0 */
    uint64_t             t_total;   /* 参数校验后至合并返回附近的算法区间；非 Q10 完整调用时间 */
} haar_detect_timing_t;

/* ---- 主入口：一帧 → 一个最终框 ---------------------------------------
 *
 * 契约：
 *   - `pix` / `params` / `ws` / `result` 非 NULL；
 *     `ws->boxes` / `ws->parent` / `ws->groups` **三个都**非 NULL；
 *     `img_w > 0`、`img_h > 0`、`ws->capacity >= 1`。
 *   - `timing` 可 NULL，**NULL 不是错误**（生产代码可能根本不装时钟）。
 *     非 NULL 时，`now` 与 `ticks_per_sec` 原样保留 —— 它们是调用方带进来的
 *     元数据，本层不拿 `ticks_per_sec` 做任何换算（0 = 未知，不是要除它）。
 *   - 返回值：`HAAR_DR_OK` 有框 / `HAAR_DR_NO_FACE` 没脸（不是错误）/
 *     `HAAR_SR_ERR_OVERFLOW` 候选容量不足，**不给框** /
 *     其余 `<0` 为 `haar_search.h` 的错误码透传。
 *   - **任何返回码下 `result` 的每个字段都已写满。** */
int haar_detect(const uint8_t *pix, int32_t img_w, int32_t img_h,
                const haar_search_params_t *params,
                haar_detect_ws_t *ws,
                haar_detect_result_t *result,
                haar_detect_timing_t *timing);

#endif /* HAAR_DETECT_H */
