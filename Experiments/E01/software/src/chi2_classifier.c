/* 归一化卡方距离分类器 —— 实现。契约、推导与误差界都在 `chi2_classifier.h`。 */

#include "chi2_classifier.h"

/* ---- 内部辅助（static，不出头文件） ---- */

/* 直方图总点。
 *
 * 不做参数校验：调用方已经保证 `h` 非 NULL 且 `len > 0`。
 * 溢出方面，`len` 个 uint16 之和最大 `65535*len`；真实长度 3776 时约 2.5e8，
 * 即使 len 取到 65536 也才 4.3e9，int64 绰绰有余，所以这里没有溢出错误码
 * ——不发明跑不到的错误路径。 */
static int64_t hist_total(const uint16_t *h, size_t len)
{
    int64_t t = 0;
    size_t i;

    for (i = 0; i < len; i++) {
        t += (int64_t)h[i];
    }
    return t;
}

/* 把 M = Σ N_i/S_i 按 2^32 定标累加，返回 floor(M*2^32) 的定点近似。
 *
 * 逐桶用 `(n/s)*2^32 + ((n%s)*2^32)/s`，**不是** `n*2^32/s` —— 后者会溢出。
 * 两者恒等（见头文件推导），每一步只损失不足 1 格。 */
static int64_t chi2_accumulate(const uint16_t *h1, const uint16_t *h2,
                               size_t len, int64_t t1, int64_t t2)
{
    int64_t acc = 0;
    size_t i;

    for (i = 0; i < len; i++) {
        int64_t a = (int64_t)h1[i] * t2;
        int64_t b = (int64_t)h2[i] * t1;
        int64_t s = a + b;
        int64_t d, n;

        if (s == 0) {
            /* 契约 C2：两侧该桶同为 0，贡献 0（不是 NaN，也不是整幅跳过）。 */
            continue;
        }
        d = a - b;
        n = d * d;
        acc += (n / s) * CHI2_SCALE + ((n % s) * CHI2_SCALE) / s;
    }
    return acc;
}

/* 「校验 → 双侧总点 → 累加 → 除以 K」的公共路径。
 * 成功返回 CHI2_OK 并写 `*out`；失败返回错误码且不写 `*out`（契约 C4）。 */
static int chi2_distance_impl(const uint16_t *h1, const uint16_t *h2,
                              size_t len, int64_t *out)
{
    int64_t t1, t2;

    if (h1 == NULL || h2 == NULL || out == NULL || len == 0) {
        return CHI2_ERR_ARG;
    }

    t1 = hist_total(h1, len);
    t2 = hist_total(h2, len);
    /* 总点为 0 就没有归一化可言；超过上界则累加器会溢出 int64。 */
    if (t1 == 0 || t2 == 0 || t1 > CHI2_MAX_TOTAL || t2 > CHI2_MAX_TOTAL) {
        return CHI2_ERR_TOTAL;
    }

    *out = chi2_accumulate(h1, h2, len, t1, t2) / (t1 * t2);
    return CHI2_OK;
}

/* ---- 对外接口 ---- */

int chi2_distance_scaled(const uint16_t *h1, const uint16_t *h2,
                         size_t len, int64_t *out)
{
    return chi2_distance_impl(h1, h2, len, out);
}

int chi2_similarity_scaled(const uint16_t *h1, const uint16_t *h2,
                           size_t len, int64_t *out)
{
    int64_t dist;
    int ret;

    /* 先挡掉 out 为空：否则下面会往 NULL 里写（impl 用的是局部变量，挡不到）。 */
    if (out == NULL) {
        return CHI2_ERR_ARG;
    }

    ret = chi2_distance_impl(h1, h2, len, &dist);
    if (ret != CHI2_OK) {
        return ret;
    }

    /* 契约 C4：走到这里才动 out。sim = 1 − χ²/2，定点写作 2^32 − dist/2。 */
    *out = CHI2_SCALE - dist / 2;
    return CHI2_OK;
}

int chi2_decide(int64_t dist_scaled, int64_t thr_num, int64_t thr_den)
{
    if (thr_den <= 0 || thr_num < 0) {
        return CHI2_ERR_ARG;
    }
    if (dist_scaled < 0 || dist_scaled > 2 * CHI2_SCALE) {
        return CHI2_ERR_ARG;
    }
    /* 溢出护栏：两个乘积都必须留在 int64 内。 */
    if (thr_den > CHI2_THR_DEN_MAX || thr_num > CHI2_THR_NUM_MAX) {
        return CHI2_ERR_ARG;
    }

    /* 闭区间：χ² <= thr_num/thr_den  ⟺  thr_den*χ² <= thr_num。
     * χ² 用本模块的定点值（即 dist_scaled/2^32）代入，所以判决面是
     * `thr_den*dist_scaled <= thr_num*2^32`。恰好相等算已知人。 */
    return (thr_den * dist_scaled <= thr_num * CHI2_SCALE)
           ? CHI2_KNOWN : CHI2_UNKNOWN;
}
