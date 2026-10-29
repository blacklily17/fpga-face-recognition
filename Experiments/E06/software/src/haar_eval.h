/* Haar 级联求值器（PS 端 C 实现）。
 *
 * 语义与 `software/golden/haar_cascade.py` **逐位一致**，由
 * `software/tests/test_haar_c_eval.py` 编译并运行后按 IEEE-754 位模式比对。
 * 改动任何一处算术之前，先看那个测试。
 *
 * 数值口径
 * --------
 * **参数存储用 `float`，中间量用 `double`。**
 * 级联参数（阈值、叶值、矩形权重）在 XML 里就是 32 位浮点，
 * `haar_cascade_data.h` 里也按 `float` 存；而累加、乘法、
 * 归一化因子这些路径在黄金模型里走的是 Python 双精度。
 * 两边必须同构，否则最后一比特就会分叉。
 *
 * 特别地：`value < wk->threshold` 里 `value` 是 `double`，
 * **不能**写成 `(float)value < ...` —— 那会把 `value` 先舍入成单精度，
 * 边界窗口的判决可能因此翻转。
 *
 * 积分图宽度
 * ----------
 * 一次方积分图 `int32_t` 够用：400×240 满量程时最大 24,480,000。
 * **平方积分图必须 `int64_t`**：同样条件下最大 6,242,400,000，
 * 超过 `int32_t`（2.15e9）也超过 `uint32_t`（4.29e9）。
 * 连窗口级的 `area * sqsum`（22×22 归一化区）都能到 1.52e10，
 * 所以那个乘积也要在 64 位下做。
 * （`cv2.integral2` 实测返回 `(int32, float64)` —— OpenCV 自己
 * 也是把平方那一路提成双精度来避开同一个溢出。）
 *
 * 本文件是 UTF-8。不要加 BOM。
 */

#ifndef HAAR_EVAL_H
#define HAAR_EVAL_H

#include <stddef.h>
#include <stdint.h>

#include "haar_cascade_data.h"

/* 归一化区域四边各内缩的像素数（OpenCV: normrect = Rect(1,1,w-2,h-2)）。
 * 归一化用的**不是整个窗口**，是内缩后的 22×22。 */
#define HAAR_NORM_INSET 1

/* 前置门判据（OpenCV: `return area*varianceNormFactor < 1e-1;`，true = 继续）。
 * 照字面写表达式而不是写"标准差 > 10"，免得把恒等变形本身变成读错的环节。 */
#define HAAR_NORM_SD_EPS 1e-1

/* `haar_result_t.reject_stage` 的两个哨兵值。
 * >= 0 的值表示"在第 k 级被拒绝"。 */
#define HAAR_GATE_REJECT (-1)   /* 被前置门拒绝，一个弱分类器都没跑 */
#define HAAR_PASS        (-2)   /* 走完全部级，通过 */
#define HAAR_OUT_OF_RANGE (-3)  /* 窗口越出图像边界 */

/* 一张已建好积分图的灰度图。
 * `ii`/`ii_sq` 的尺寸都是 `(width+1) * (height+1)`，行优先，
 * `stride = width + 1`，`[y*stride + x]` 是左上角 `[0,y)×[0,x)` 区域的和。
 * 缓冲区**由调用方提供**：一张图建一次、多个窗口反复求值，
 * 求值器里不做任何 malloc。 */
typedef struct {
    const uint8_t *pix;
    int32_t        width;
    int32_t        height;
    int32_t        stride;
    const int32_t *ii;
    const int64_t *ii_sq;
} haar_image_t;

/* 求值过程的可观测记录。全部字段都在 `haar_evaluate` 里被写满，
 * 这样测试能定位**第一处**差异，而不是只看到"结果不一样"。 */
typedef struct {
    int32_t valsum;                 /* 归一化区一次方和 */
    int64_t valsqsum;               /* 归一化区平方和 */
    double  variance_norm_factor;   /* 前置门未通过时为 +0.0 */
    int32_t n_stage_sums;           /* 已算出的 stage_sum 个数 */
    int32_t reject_stage;           /* HAAR_PASS / HAAR_GATE_REJECT / >=0 */
    double  stage_sums[HAAR_N_STAGES];
} haar_result_t;

/* 两张积分图各需要多少个元素。 */
size_t haar_ii_len(int32_t width, int32_t height);

/* 计算积分图与平方积分图。`ii` 需 `haar_ii_len` 个 `int32_t`，
 * `ii_sq` 需同样多个 `int64_t`。
 * 返回 0 成功；-1 表示图像大到一次方积分图会溢出 `int32_t`（调用方必须处理）。 */
int haar_integral(const uint8_t *pix, int32_t width, int32_t height,
                  int32_t *ii, int64_t *ii_sq);

/* row=0 initializes the top border; row=1..height computes one integral row.
 * Call in ascending order on a private workspace. No full-image clear. */
int haar_integral_row(const uint8_t *pix, int32_t width, int32_t height,
                      int32_t *ii, int64_t *ii_sq, int32_t row);

/* 把各缓冲区绑成一个 `haar_image_t`。返回 0 成功，-1 表示参数非法。 */
int haar_image_bind(haar_image_t *img, const uint8_t *pix,
                    int32_t width, int32_t height,
                    const int32_t *ii, const int64_t *ii_sq);

/* 对左上角在 `(x, y)` 的 `HAAR_WINDOW_W × HAAR_WINDOW_H` 窗口求值。
 *
 * 返回 1 = 通过全部级，0 = 未通过（含越界）。
 * `out` 可为 NULL；非 NULL 时写满诊断信息。
 *
 * **不含任何搜索策略** —— 金字塔、滑窗步长、多框合并都不在这里。
 * 这一层只回答"这一个窗口通过还是不通过"，好让它能被独立对拍。 */
int haar_evaluate(const haar_image_t *img, int32_t x, int32_t y,
                  haar_result_t *out);

#endif /* HAAR_EVAL_H */
