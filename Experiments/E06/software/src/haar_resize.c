/* 双线性重采样。契约与数值口径见 haar_resize.h —— 本文件不重复那些说明。
 *
 * 实现要点只有一条：**把 Fraction 手工化成整数运算**。
 * 逐像素的推导见头文件；这里只强调两个容易写错的地方：
 *
 *   1. 坐标必须**先夹后除**。`N` 为负时若直接 `N / Dx`，C99 的向零截断
 *      会给出 0 而不是 -1 —— 恰好也是 0，看不出错；但 `N % Dx` 为负，
 *      `nx` 就变成负数，插值权重整个错掉。所以夹取必须在除法之前。
 *
 *   2. 邻居下标要夹到 `src_n-1`。源尺寸为 1 时 `x0+1` 就越界了。
 */

#include "haar_resize.h"

/* 一个方向的坐标解算结果：整数部分与分母固定的分数部分。
 * `frac` 是 `[0, den)` 上的分子，真值 = `frac / den`。 */
typedef struct {
    int32_t idx;    /* 整数部分（= floor(u)） */
    int32_t next;   /* 另一个邻居的下标，已夹到 src_n-1 */
    int32_t frac;   /* 小数部分的分子 */
    int32_t den;    /* 小数部分的分母（= 2 * dst_n） */
} haar_axis_t;

/* 把 `dst_i` 映射到源坐标，返回整数下标与分数权重。
 *
 * `den` 恒为 `2 * dst_n`；`num` 夹到 `[0, (src_n-1) * den]` 之后再拆。
 * 夹取后 `num >= 0`，于是 `/` 就是 floor、`%` 非负 —— 两处都靠这条前提。
 */
static void haar_axis(int32_t dst_i, int32_t src_n, int32_t dst_n,
                      haar_axis_t *out)
{
    const int32_t den = 2 * dst_n;
    const int32_t top = (src_n - 1) * den;
    int64_t num = (int64_t)(2 * dst_i + 1) * src_n - dst_n;

    if (num < 0) {
        num = 0;
    } else if (num > top) {
        num = top;
    }

    out->den = den;
    out->idx = (int32_t)(num / den);
    out->frac = (int32_t)(num % den);
    /* 末尾像素的右/下邻居只能是它自己，此时 frac 必为 0（见头文件的推导） */
    out->next = (out->idx + 1 < src_n) ? (out->idx + 1) : (src_n - 1);
}

int haar_resize_row(const uint8_t *src, int32_t src_w, int32_t src_h,
                    uint8_t *dst, int32_t dst_w, int32_t dst_h, int32_t row)
{
    haar_axis_t ax[2];
    int32_t dx, dy;

    if (src == NULL || dst == NULL) {
        return HAAR_RESIZE_ERR_ARG;
    }
    if (src_w <= 0 || src_h <= 0 || dst_w <= 0 || dst_h <= 0 || row < 0 || row >= dst_h) {
        return HAAR_RESIZE_ERR_ARG;
    }

    /* x 方向的解算只依赖 dx，与 dy 无关。这里逐列重算一次：省下的除法
     * 需要一张行外表（也就是调用方提供的工作区），而本模块刻意不含工作区。
     * 真到性能不够时再引入，届时只改这一个文件与头文件。 */
    for (dy = row; dy < row + 1; dy++) {
        int32_t row0, row1;
        haar_axis(dy, src_h, dst_h, &ax[1]);
        row0 = ax[1].idx * src_w;
        row1 = ax[1].next * src_w;

        for (dx = 0; dx < dst_w; dx++) {
            int64_t wx0, wx1, wy0, wy1;
            int64_t num, den;

            haar_axis(dx, src_w, dst_w, &ax[0]);

            /* 权重分子：wfx = (den - frac)/den，fx = frac/den */
            wx0 = ax[0].den - ax[0].frac;
            wx1 = ax[0].frac;
            wy0 = ax[1].den - ax[1].frac;
            wy1 = ax[1].frac;

            num = (int64_t)src[row0 + ax[0].idx] * wx0 * wy0
                + (int64_t)src[row0 + ax[0].next] * wx1 * wy0
                + (int64_t)src[row1 + ax[0].idx] * wx0 * wy1
                + (int64_t)src[row1 + ax[0].next] * wx1 * wy1;
            den = (int64_t)ax[0].den * ax[1].den;

            /* floor(num/den + 1/2)。num >= 0、den > 0，整数除法即 floor。 */
            dst[dy * dst_w + dx] = (uint8_t)((2 * num + den) / (2 * den));
        }
    }

    return HAAR_RESIZE_OK;
}

int haar_resize(const uint8_t *src, int32_t src_w, int32_t src_h,
                uint8_t *dst, int32_t dst_w, int32_t dst_h)
{
    int32_t row;
    if (!src || !dst || src_w <= 0 || src_h <= 0 || dst_w <= 0 || dst_h <= 0)
        return HAAR_RESIZE_ERR_ARG;
    for (row = 0; row < dst_h; row++) {
        int rc = haar_resize_row(src, src_w, src_h, dst, dst_w, dst_h, row);
        if (rc != HAAR_RESIZE_OK) return rc;
    }
    return HAAR_RESIZE_OK;
}
