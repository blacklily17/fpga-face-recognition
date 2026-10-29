/* Haar 级联求值器（PS 端 C 实现）。见 haar_eval.h 的口径说明。
 *
 * 本文件的算术顺序**逐行对应** `software/golden/haar_cascade.py` 的
 * `integral_images()` / `rect_sum()` / `Detector.evaluate()`。
 * 看起来可以化简的地方（合并括号、提取公因子、提前算不变量）都不要动 ——
 * 浮点加乘不满足结合律，换顺序就会换最后一比特。
 */

#include "haar_eval.h"

#include <math.h>

/* int32_t 积分图的容量上限：w*h*255 必须装得下。 */
#define HAAR_II_MAX 2147483647.0

size_t haar_ii_len(int32_t width, int32_t height)
{
    return (size_t)(width + 1) * (size_t)(height + 1);
}

int haar_integral_row(const uint8_t *pix, int32_t width, int32_t height,
                      int32_t *ii, int64_t *ii_sq, int32_t row)
{
    int32_t x, row_sum = 0;
    int64_t row_sq = 0;
    size_t stride, base, prev, cur;
    if (!pix || !ii || !ii_sq || width <= 0 || height <= 0 || row < 0 || row > height)
        return -1;
    if ((double)width * (double)height * 255.0 > HAAR_II_MAX) return -1;
    stride = (size_t)width + 1;
    if (row == 0) {
        for (x = 0; x <= width; x++) { ii[x] = 0; ii_sq[x] = 0; }
        return 0;
    }
    base = (size_t)(row - 1) * (size_t)width;
    prev = (size_t)(row - 1) * stride;
    cur = (size_t)row * stride;
    ii[cur] = 0; ii_sq[cur] = 0;
    for (x = 0; x < width; x++) {
        int32_t v = (int32_t)pix[base + (size_t)x];
        row_sum += v;
        row_sq += (int64_t)v * (int64_t)v;
        ii[cur + (size_t)x + 1] = ii[prev + (size_t)x + 1] + row_sum;
        ii_sq[cur + (size_t)x + 1] = ii_sq[prev + (size_t)x + 1] + row_sq;
    }
    return 0;
}

/* 积分图上的矩形和，对应 OpenCV 的 CALC_SUM_OFS：
 *     ptr[p0] - ptr[p1] - ptr[p2] + ptr[p3]
 *     p0=(x,y)  p1=(x+w,y)  p2=(x,y+h)  p3=(x+w,y+h)
 * 加减按 C 的左结合顺序求值，与黄金模型那个 Python 表达式同序。 */
static int32_t rect_sum_i32(const int32_t *ii, int32_t stride,
                            int32_t x, int32_t y, int32_t w, int32_t h)
{
    return ii[(size_t)y * (size_t)stride + (size_t)x]
         - ii[(size_t)y * (size_t)stride + (size_t)(x + w)]
         - ii[(size_t)(y + h) * (size_t)stride + (size_t)x]
         + ii[(size_t)(y + h) * (size_t)stride + (size_t)(x + w)];
}

static int64_t rect_sum_i64(const int64_t *ii, int32_t stride,
                            int32_t x, int32_t y, int32_t w, int32_t h)
{
    return ii[(size_t)y * (size_t)stride + (size_t)x]
         - ii[(size_t)y * (size_t)stride + (size_t)(x + w)]
         - ii[(size_t)(y + h) * (size_t)stride + (size_t)x]
         + ii[(size_t)(y + h) * (size_t)stride + (size_t)(x + w)];
}

int haar_integral(const uint8_t *pix, int32_t width, int32_t height,
                  int32_t *ii, int64_t *ii_sq)
{
    int32_t y;
    size_t  stride, n;

    if (pix == NULL || ii == NULL || ii_sq == NULL || width <= 0 || height <= 0) {
        return -1;
    }
    /* 一次方积分图用 int32，先确认装得下。平方那一路走 int64，不用查。 */
    if ((double)width * (double)height * 255.0 > HAAR_II_MAX) {
        return -1;
    }

    stride = (size_t)(width + 1);
    n = stride * (size_t)(height + 1);

    /* 先把第 0 行、第 0 列置零，与黄金模型"整表初始化为 0 再填"等价。 */
    {
        size_t k;
        for (k = 0; k < n; k++) {
            ii[k] = 0;
            ii_sq[k] = 0;
        }
    }

    for (y = 0; y < height; y++) {
        int32_t x;
        int32_t row_sum = 0;
        int64_t row_sq = 0;
        size_t  base = (size_t)y * (size_t)width;
        size_t  prev = (size_t)y * stride;
        size_t  cur = (size_t)(y + 1) * stride;

        for (x = 0; x < width; x++) {
            int32_t v = (int32_t)pix[base + (size_t)x];
            row_sum += v;
            row_sq += (int64_t)v * (int64_t)v;
            ii[cur + (size_t)x + 1] = ii[prev + (size_t)x + 1] + row_sum;
            ii_sq[cur + (size_t)x + 1] = ii_sq[prev + (size_t)x + 1] + row_sq;
        }
    }
    return 0;
}

int haar_image_bind(haar_image_t *img, const uint8_t *pix,
                    int32_t width, int32_t height,
                    const int32_t *ii, const int64_t *ii_sq)
{
    if (img == NULL || pix == NULL || ii == NULL || ii_sq == NULL
        || width <= 0 || height <= 0) {
        return -1;
    }
    if (width < HAAR_WINDOW_W || height < HAAR_WINDOW_H) {
        return -1;
    }
    img->pix = pix;
    img->width = width;
    img->height = height;
    img->stride = width + 1;
    img->ii = ii;
    img->ii_sq = ii_sq;
    return 0;
}

int haar_evaluate(const haar_image_t *img, int32_t x, int32_t y,
                  haar_result_t *out)
{
    haar_result_t local;
    const int32_t nw = HAAR_WINDOW_W - 2 * HAAR_NORM_INSET;
    const int32_t nh = HAAR_WINDOW_H - 2 * HAAR_NORM_INSET;
    int32_t si;
    double  area, nf, vnf;

    if (img == NULL || img->ii == NULL || img->ii_sq == NULL) {
        return 0;
    }
    if (out == NULL) {
        out = &local;
    }
    out->valsum = 0;
    out->valsqsum = 0;
    out->variance_norm_factor = 0.0;
    out->n_stage_sums = 0;
    out->reject_stage = HAAR_GATE_REJECT;

    if (x < 0 || y < 0
        || x + HAAR_WINDOW_W > img->width
        || y + HAAR_WINDOW_H > img->height) {
        /* 越界是调用方的错。黄金模型在这里直接抛异常，C 侧没有异常，
         * 于是给一个**可区分的**拒绝码，而不是悄悄返回普通拒绝。 */
        out->reject_stage = HAAR_OUT_OF_RANGE;
        return 0;
    }
    if (nw <= 0 || nh <= 0) {
        return 0;
    }

    /* --- 前置门（对应 HaarEvaluator::setWindow） --- */
    area = (double)(nw * nh);
    out->valsum = rect_sum_i32(img->ii, img->stride,
                               x + HAAR_NORM_INSET, y + HAAR_NORM_INSET, nw, nh);
    out->valsqsum = rect_sum_i64(img->ii_sq, img->stride,
                                 x + HAAR_NORM_INSET, y + HAAR_NORM_INSET, nw, nh);

    /* nf 的两个操作数都在 2^53 以内，双精度下这一步是精确的整数运算。 */
    nf = area * (double)out->valsqsum
       - (double)out->valsum * (double)out->valsum;

    if (nf > 0.0) {
        vnf = 1.0 / sqrt(nf);
        if (!(area * vnf < HAAR_NORM_SD_EPS)) {
            return 0;               /* 前置门：对比度不足，跳过 */
        }
    } else {
        /* 方差为 0（平坦块）：OpenCV 把 vnf 置 1 之后**仍然拒绝**。
         * 这里 vnf 保持 +0.0（"没算"），不要写成"放行"。 */
        return 0;
    }
    out->variance_norm_factor = vnf;

    /* --- 逐级求值（对应 predictOrderedStump） --- */
    for (si = 0; si < HAAR_N_STAGES; si++) {
        const haar_stage_t *st = &haar_stages[si];
        double tmp = 0.0;
        int32_t wi;

        for (wi = 0; wi < (int32_t)st->n_weak; wi++) {
            const haar_weak_t    *wk = &haar_weaks[st->first_weak + wi];
            const haar_feature_t *ft = &haar_features[wk->feature_idx];
            const haar_rect_t    *r0 = &haar_rects[ft->first_rect];
            const haar_rect_t    *r1 = r0 + 1;
            double raw, value;

            /* 累加顺序照抄源码：先两项，第三项非零才加。 */
            raw = (double)r0->weight
                    * (double)rect_sum_i32(img->ii, img->stride,
                                           x + r0->x, y + r0->y, r0->w, r0->h)
                + (double)r1->weight
                    * (double)rect_sum_i32(img->ii, img->stride,
                                           x + r1->x, y + r1->y, r1->w, r1->h);
            if (ft->n_rects > 2) {
                const haar_rect_t *r2 = r0 + 2;
                if (r2->weight != 0.0f) {
                    raw += (double)r2->weight
                             * (double)rect_sum_i32(img->ii, img->stride,
                                                    x + r2->x, y + r2->y,
                                                    r2->w, r2->h);
                }
            }

            /* value 保持 double：舍入成 float 会翻转边界判决。 */
            value = raw * vnf;
            tmp += (value < (double)wk->threshold) ? (double)wk->leaf[0]
                                                   : (double)wk->leaf[1];
        }

        out->stage_sums[out->n_stage_sums] = tmp;
        out->n_stage_sums++;

        if (tmp < (double)st->threshold) {
            out->reject_stage = si;
            return 0;
        }
    }

    out->reject_stage = HAAR_PASS;
    return 1;
}
