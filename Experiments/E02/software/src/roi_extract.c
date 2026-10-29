/* ROI 提取 —— 实现。契约、坐标规则与溢出分析都在 `roi_extract.h`。 */

#include <string.h>

#include "roi_extract.h"
#include "haar_resize.h"

/* `floor(v / 2)`：Python 的 `//` 向下取整，C 的 `/` 向零截断，负数上不同。
 *
 * 入参是 `int64_t`，所以取负不会碰到 INT64_MIN —— `2*x + w` 的上界是
 * `2*INT32_MAX + INT32_MAX`，远在 int64 之内。 */
static int64_t floor_half(int64_t v)
{
    return (v >= 0) ? (v / 2) : -(((-v) + 1) / 2);
}

int roi_square_box(int32_t x, int32_t y, int32_t w, int32_t h,
                   int32_t img_w, int32_t img_h,
                   int32_t *sx, int32_t *sy, int32_t *side)
{
    int64_t s, lx, ly, hx, hy;

    if (sx == NULL || sy == NULL || side == NULL) {
        return ROI_ERR_ARG;
    }
    /* 正方形不可能大于图像。这一条同时保证了下面 `img_w - s >= 0`，
     * 而那正是「夹取顺序」与「向下取整可观测性」两处论证的前提。 */
    if (img_w <= 0 || img_h <= 0) {
        return ROI_ERR_ARG;
    }

    /* side = max(w, h, 1)，再夹到 min(img_w, img_h)。
     * 退化框（w 或 h 为 0 甚至负）在这里被兜到 1。 */
    s = (int64_t)w;
    if ((int64_t)h > s) {
        s = h;
    }
    if (s < 1) {
        s = 1;
    }
    if ((int64_t)img_w < s) {
        s = img_w;
    }
    if ((int64_t)img_h < s) {
        s = img_h;
    }

    /* 保持原框中心（二倍中心坐标，不出现 .5），再平移回界内。 */
    lx = floor_half(2 * (int64_t)x + (int64_t)w - s);
    ly = floor_half(2 * (int64_t)y + (int64_t)h - s);
    hx = (int64_t)img_w - s;
    hy = (int64_t)img_h - s;

    /* 顺序照抄 Python 的 `max(0, min(v, hi))`：先 min 后 max。
     * 反过来写，`hi` 为负时结果不同（本域内 `hi >= 0`，仍然照抄）。 */
    if (lx > hx) { lx = hx; }
    if (lx < 0)  { lx = 0;  }
    if (ly > hy) { ly = hy; }
    if (ly < 0)  { ly = 0;  }

    /* 夹取之后 lx ∈ [0, img_w - s] ⊆ [0, INT32_MAX]，收窄安全。 */
    *sx = (int32_t)lx;
    *sy = (int32_t)ly;
    *side = (int32_t)s;
    return ROI_OK;
}

int roi_crop_square(const uint8_t *img, int32_t img_w, int32_t img_h,
                    int32_t x, int32_t y, int32_t w, int32_t h,
                    uint8_t *out, size_t out_len, int32_t *out_side)
{
    int32_t sx, sy, side, row;
    int64_t need;
    int rc;

    if (img == NULL || out == NULL || out_side == NULL) {
        return ROI_ERR_ARG;
    }
    rc = roi_square_box(x, y, w, h, img_w, img_h, &sx, &sy, &side);
    if (rc != ROI_OK) {
        return rc;
    }
    need = (int64_t)side * (int64_t)side;
    if ((int64_t)out_len < need) {
        return ROI_ERR_SCRATCH;
    }
    for (row = 0; row < side; ++row) {
        const uint8_t *src_row = img +
            ((size_t)sy + (size_t)row) * (size_t)img_w + (size_t)sx;
        memcpy(out + (size_t)row * (size_t)side, src_row, (size_t)side);
    }
    *out_side = side;
    return ROI_OK;
}

int roi_extract(const uint8_t *img, int32_t img_w, int32_t img_h,
                int32_t x, int32_t y, int32_t w, int32_t h,
                uint8_t *out, int32_t out_size,
                uint8_t *scratch, size_t scratch_len)
{
    int32_t sx, sy, side;
    int64_t need;
    int32_t row;

    if (img == NULL || out == NULL || scratch == NULL || out_size <= 0) {
        return ROI_ERR_ARG;
    }

    /* 最后一处越界检查（img_w/img_h、三个出参）在 square_box 里。
     * 它失败时这里尚未碰过 out，契约 C3 成立。 */
    {
        int ret = roi_square_box(x, y, w, h, img_w, img_h, &sx, &sy, &side);
        if (ret != ROI_OK) {
            return ret;
        }
    }

    /* int64 里比：32 位 size_t 上 `side*side` 会绕回，绕回之后的比较是
     * 「够」，调用方的小缓冲会被写穿。 */
    need = (int64_t)side * (int64_t)side;
    if ((int64_t)scratch_len < need) {
        return ROI_ERR_SCRATCH;
    }

    /* 把带 stride 的正方形裁成连续的行优先缓冲。
     * 不变式：`sy + side <= img_h`、`sx + side <= img_w`（契约 C1），
     * 所以下面每一次 memcpy 都落在 img 之内。 */
    for (row = 0; row < side; row++) {
        const uint8_t *src_row =
            img + ((size_t)sy + (size_t)row) * (size_t)img_w + (size_t)sx;
        memcpy(scratch + (size_t)row * (size_t)side, src_row, (size_t)side);
    }

    /* 缩放交给唯一的那份实现。side >= 1、out_size >= 1，所以这里只会
     * 拿到 HAAR_RESIZE_OK（数值也是 0）。 */
    return haar_resize(scratch, side, side, out, out_size, out_size);
}
