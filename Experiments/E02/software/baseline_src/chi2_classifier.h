/* 归一化卡方距离分类器（PS 端 C 实现）。
 *
 * 语义与 `software/golden/chi2_classifier.py` 一致，由
 * `software/tests/test_chi2_c.py` 编译并运行后对拍。改动任何一处算术之前，
 * 先看那个测试。
 *
 * 为什么不能照抄黄金模型
 * ----------------------
 * 黄金模型全程 `fractions.Fraction` 精确有理数。**C 里做不到**：精确分母是各
 * 分项分母的最小公倍数，实测已经越出 int64。语料里的 `big-denominator` 用例
 * （20 对互异质数、两个总点 21278/23580，仍在 CHI2_MAX_TOTAL 以内）分母有
 * **439 位**；随机直方图的 `realistic-a` 也有 64 位。见
 * `test_exact_rational_route_is_infeasible_in_c`。
 *
 * 所以 C 侧退回**定点整数**，并给出一个**有证明的误差上界**。
 *
 * 推导
 * ----
 * 记 T1 = Σh1、T2 = Σh2、K = T1*T2。归一化后
 *
 *     χ² = Σ (h1_i/T1 − h2_i/T2)² / (h1_i/T1 + h2_i/T2)
 *        = (1/K) · Σ N_i/S_i     N_i = (h1_i*T2 − h2_i*T1)²
 *                                S_i = h1_i*T2 + h2_i*T1
 *
 * 记 M = Σ N_i/S_i。逐桶把 M 按 2^32 定标累加，但**不直接算 N_i*2^32/S_i**
 * ——那一步会溢出。改成先取整商、再补余数：
 *
 *     q_i = N_i / S_i        r_i = N_i % S_i
 *     term = q_i*2^32 + (r_i*2^32)/S_i
 *
 * 它恰好等于 `floor(N_i*2^32/S_i)`：因为 `q_i*S_i*2^32/S_i = q_i*2^32` 是精确的，
 * 所以 `q_i*2^32 + (r_i*2^32)/S_i` 就是把 `N_i*2^32/S_i` 拆成整数部分和小数
 * 部分分别取下整。每一步只损失不足 1 格。
 *
 * 误差上界
 * --------
 * 参与累加的桶（S_i ≠ 0）个数不超过两侧非零桶数之和，故 len <= T1 + T2。于是
 *
 *     M*2^32 − len  <  acc  <=  M*2^32
 *
 * 再除以 K：
 *
 *     0  <=  χ²*2^32 − (acc/K)  <  1 + (T1+T2)/(T1*T2)
 *                                =  1 + 1/T1 + 1/T2  <=  3
 *
 * **这个界与直方图长度无关**（3776 桶也是 3），只与两个总点有关；
 * T1 = T2 = 1 的最坏情形也才 3。
 *
 * 相似度的误差方向相反
 * --------------------
 * `sim = 1 − χ²/2`，定点写作 `sim = 2^32 − dist/2`。dist 是**下**取整，
 * 所以算出的 sim 比精确值**偏大**：`−3 < 精确值*2^32 − sim <= 0`。
 * 与距离那边的 `[0, 3]` 方向相反，别照抄。
 *
 * 判定
 * ----
 * `chi2_decide` 以**本模块自己的定点值**为准做闭区间比较
 * （`thr_den*dist <= thr_num*2^32` 判已知人），与黄金模型的
 * `distance <= threshold` 同构。**注意它的分辨率**：定点值与精确值最多差
 * `CHI2_ERR_SCALED` 格（≈7e-10），所以阈值离距离近于这个量级时，判定在
 * 数学上就不可分辨。阈值必须离线选定并留出余量 —— 这不是实现缺陷，是定点
 * 表示的固有限制，`test_decisions_have_room_to_spare` 守着这一点。
 *
 * 溢出
 * ----
 * 累加器是 `int64_t`。要求两个总点都不超过 `CHI2_MAX_TOTAL`，则
 *
 *     acc <= 2*K*2^32 + (T1+T2)*2^32 = (2*T1*T2 + T1 + T2) * 2^32
 *
 * 取 T1 = T2 = 30000 得 1.80e9 * 2^32 ≈ 7.7e18 < 9.22e18，留约 16% 余量。
 * 中间量 `(n%s)*2^32` 与 `(n/s)*2^32` 各自也不超过 `2K*2^32`，同样在内。
 *
 * 超过上界的输入返回 `CHI2_ERR_TOTAL`。这是**真实可达**的：元素是 uint16，
 * 3776 个桶的总和可以远超 30000。冻结规格的总点是 14400，余量两倍以上。
 *
 * 契约（测试逐条守）
 * ------------------
 * C1 两侧各自归一化。总和不等时只除一边会得到明显偏大的数。
 * C2 `S_i == 0`（即两侧该桶同为 0）的桶贡献 0：不是 NaN，也不是跳过整幅图。
 * C3 逐桶相等 -> 距离恒为精确的 0（累加器为 0），相似度为满值。
 * C4 参数或数据非法时**不碰 `out` 一个字节** —— 调用方按契约只知道失败，
 *    不会去看 `out`，写进去就是把垃圾留在别人的变量里。与 `haar_resize.h` 同。
 * C5 无全局可变状态，可重入、可重复调用。
 *
 * 直方图元素类型是 `uint16_t`（冻结规格：3776 个 uint16）。
 * 缓冲区由调用方提供，本模块不 malloc、不需要工作区。
 *
 * 本文件是 UTF-8。不要加 BOM。
 */

#ifndef CHI2_CLASSIFIER_H
#define CHI2_CLASSIFIER_H

#include <stddef.h>
#include <stdint.h>

/* 返回码。0 = 成功，负数 = 错误。 */
#define CHI2_OK        ( 0)
#define CHI2_ERR_ARG   (-1)  /* 指针为 NULL、len 为 0，或阈值/距离越界 */
#define CHI2_ERR_TOTAL (-2)  /* 某侧总点为 0，或超过 CHI2_MAX_TOTAL */

/* 判定结果。与黄金模型 `decide_identity` 的 "known"/"unknown" 一一对应。 */
#define CHI2_KNOWN   (1)
#define CHI2_UNKNOWN (0)

/* 定点标度：距离乘 2^32 后取整。与 `test_chi2_c.py` 的 `SCALE` 必须一致。 */
#define CHI2_SCALE ((int64_t)1 << 32)

/* 定点值相对精确值 `χ²*2^32` 的**有证明**误差上界，见文件头推导。
 * 真实上界是「严格小于 3」；这里取整数 3 作断言用的上界（不追求紧）。 */
#define CHI2_ERR_SCALED (3)

/* 单个直方图总点的上界。由 `(2*T1*T2 + T1 + T2) * 2^32` 不溢出 int64 反推
 * （T1 = T2 = T 时 T <= 32767.5），留约 16% 余量取整。冻结规格是 14400。 */
#define CHI2_MAX_TOTAL (30000)

/* `chi2_decide` 里两个乘积的溢出护栏。阈值取自离线评测，正常只有个位数分母；
 * 这两个界只是不让越界输入把乘法掀翻。 */
#define CHI2_THR_DEN_MAX (INT64_MAX / (2 * CHI2_SCALE))
#define CHI2_THR_NUM_MAX (INT64_MAX / CHI2_SCALE)

/* 归一化卡方距离，定点表示：返回值 = round_down(χ² * 2^32)。
 *
 * `h1` / `h2` 都是长度 `len` 的 `uint16_t` 直方图，各自内部按自己的总点归一化。
 * 成功返回 `CHI2_OK` 并写 `*out`；否则返回错误码且**不写** `*out`。
 */
int chi2_distance_scaled(const uint16_t *h1, const uint16_t *h2,
                         size_t len, int64_t *out);

/* 相似度 `1 − χ²/2`，定点表示：返回值 = round_down((1 − χ²/2) * 2^32)。
 *
 * χ² ∈ [0,2] 保证结果落在 [0, CHI2_SCALE]。参数与错误语义同上。
 */
int chi2_similarity_scaled(const uint16_t *h1, const uint16_t *h2,
                           size_t len, int64_t *out);

/* 拿定点距离与阈值 `thr_num/thr_den` 比：`dist <= 阈值` 判 `CHI2_KNOWN`
 * （闭区间，恰好相等算已知人），否则 `CHI2_UNKNOWN`。
 *
 * 阈值参数非法（分母 <= 0、分子 < 0、或大到乘法溢出）或距离越界
 * （不在 [0, 2*CHI2_SCALE]）时返回 `CHI2_ERR_ARG`。
 */
int chi2_decide(int64_t dist_scaled, int64_t thr_num, int64_t thr_den);

#endif /* CHI2_CLASSIFIER_H */
