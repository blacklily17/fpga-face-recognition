/* ROI 提取（PS 端 C 实现）：人脸框 → 128×128 GRAY8。
 *
 * 语义与 `software/golden/roi_extract.py` 的 `square_box` / `extract_roi`
 * 一致，由 `software/tests/test_roi_extract_c.py` 编译并运行后比对。
 * 改动任何一处算术之前，先看那个测试。
 *
 * 本模块只做两件事
 * ----------------
 * 1. 人脸框 → 边界内正方形（`roi_square_box`），纯整数；
 * 2. 按 stride 从整帧裁出那个正方形，**原样交给 `haar_resize`**。
 *
 * 第 2 步是刻意的委派。`haar_resize.h` 开头写着「PS 侧只有**一条**重采样
 * 规则，`haar_search` 与 `roi_extract` 共用同一个实现」——本模块若自带
 * 一份缩放，那份声明当场作废，而且两份实现迟早分叉。所以这里**没有任何
 * 缩放算术**，只有裁剪。
 *
 * 为什么需要调用方给 scratch
 * --------------------------
 * 裁剪必须先落成一块连续的行优先缓冲，`haar_resize` 才吃得下（它的源是
 * 无 stride 的）。这块缓冲就是 `scratch`，由调用方提供 —— 与 `haar_eval.h`
 * 同一条约定：**本模块不 malloc、不持有静态工作区**。
 *
 * 容量需求是可先算出来的：`side` 由 `roi_square_box` 给出，需要
 * `side*side` 字节；而 `side <= min(img_w, img_h)`，所以按
 * `min(img_w,img_h)^2` 备一块就永远够。400×240 下是 57,600 字节。
 *
 * 坐标规则（与黄金模型逐条对齐）
 * ------------------------------
 *     side = max(w, h, 1)              再夹到 min(img_w, img_h)
 *     cx2  = 2*x + w                   用二倍中心坐标，避免出现 .5
 *     sx   = floor((cx2 - side) / 2)
 *     sx   = max(0, min(sx, img_w - side))       ← 平移回界内，不是裁剪
 *
 * **`floor` 是向下取整，不是 C 的向零截断。** 两个中心坐标都可能为负
 * （框贴在左上角外），所以直接写 `/2` 是错的。本实现显式做了负数修正。
 *
 * 不过要说清楚：这个差别**在本函数的合法输入域内不可观测**。`sx` 随后被
 * 夹进 `[0, img_w - side]`，而 `img_w - side >= 0` 恒成立（`side` 已经被
 * `min` 夹过），于是负值无论取整成 -1 还是 -2 都会被 `max(0, ·)` 抹平。
 * 所以「用截断代替向下取整」是一条**等价变异**，变异探针抓不到它，
 * 这不是测试盲区（见 `PS/README.md` §4 的 (b)/(c) 两类）。写显式版本是
 * 为了让与 Python 的对照是机械的，不需要读者自己论证一遍等价性。
 *
 * 溢出
 * ----
 * `2*x + w` 在 int32 下会溢出（x、w 都是调用方给的任意值），所以中心坐标
 * 与夹取全程走 `int64_t`，最后才收窄回 `int32_t`。收窄是安全的：夹取之后
 * `sx ∈ [0, img_w - side] ⊆ [0, INT32_MAX]`。
 *
 * `side*side` 的容量比较也在 `int64_t` 里做 —— 目标是 32 位 ARM，
 * `size_t` 只有 32 位，`side = 100000` 时 `side*side` 会绕回。绕回之后的
 * 比较是"够"，于是调用方那块小缓冲会被写穿。
 *
 * 契约（测试逐条守）
 * ------------------
 * C1 `sx` / `sy` / `side` 是**边界内**的正方形，四个方向都不越界：
 *    `0 <= sx`、`sx + side <= img_w`、`0 <= sy`、`sy + side <= img_h`。
 * C2 退化框（`w` 或 `h` 为 0、甚至为负）合法，`side` 至少取 1。
 * C3 参数非法时**不碰任何输出一个字节** —— 调用方按契约只知道失败，
 *    不会去看输出，写进去就是把垃圾留在别人的变量里。与 `haar_resize.h` 同。
 * C4 输出 `out` 的每一个字节都被写满（`haar_resize` 的 C1 保证），
 *    上一帧留下的旧像素不允许渗进来。
 * C5 只读 `img[0, img_w*img_h)`，绝不越界读。
 * C6 无全局可变状态，可重入、可重复调用。
 *
 * 本文件是 UTF-8。不要加 BOM。
 */

#ifndef ROI_EXTRACT_H
#define ROI_EXTRACT_H

#include <stddef.h>
#include <stdint.h>

/* 返回码。0 = 成功，负数 = 错误。 */
#define ROI_OK          ( 0)
#define ROI_ERR_ARG     (-1)  /* 指针为 NULL，或 img_w/img_h/out_size <= 0 */
#define ROI_ERR_SCRATCH (-2)  /* scratch 为 NULL，或容量不足 side*side */

/* 人脸框 → 边界内正方形。
 *
 * 入参：框 `(x, y, w, h)` 与图像尺寸。框允许越界、允许退化
 * （`w`/`h` 为 0 或负），由本函数归一化。
 * 出参：`*sx` / `*sy` 为正方形左上角，`*side` 为边长（>= 1）。
 *
 * 成功返回 `ROI_OK` 并写满三个出参；否则返回 `ROI_ERR_ARG` 且**一个都不写**。
 * `img_w <= 0` 或 `img_h <= 0` 时为后者 —— 正方形不可能大于图像。
 */
int roi_square_box(int32_t x, int32_t y, int32_t w, int32_t h,
                   int32_t img_w, int32_t img_h,
                   int32_t *sx, int32_t *sy, int32_t *side);

/* Crop the normalized square without resizing it.  This is the WP4 M13
 * ingress: the returned row-major square is sent to PL together with its
 * side length, so enrollment and recognition share the same resizer. */
int roi_crop_square(const uint8_t *img, int32_t img_w, int32_t img_h,
                    int32_t x, int32_t y, int32_t w, int32_t h,
                    uint8_t *out, size_t out_len, int32_t *out_side);

/* 人脸框 → `out_size × out_size` 的 GRAY8 ROI。
 *
 * `img` 是行优先、长度 `img_w*img_h` 的单通道 8 位灰度帧。
 * `out` 长度 `out_size*out_size`，**每一个字节都会被写**。
 * `scratch` 是调用方给的裁剪缓冲，长度 `scratch_len`，需要至少 `side*side`
 * 字节（`side` 由 `roi_square_box` 给出，上界 `min(img_w,img_h)`）。
 * 三块缓冲互不重叠（调用方保证；本实现不做别名处理）。
 *
 * 返回 `ROI_OK`，或 `ROI_ERR_ARG` / `ROI_ERR_SCRATCH`。
 * 失败时**不碰 `out` 一个字节**。
 */
int roi_extract(const uint8_t *img, int32_t img_w, int32_t img_h,
                int32_t x, int32_t y, int32_t w, int32_t h,
                uint8_t *out, int32_t out_size,
                uint8_t *scratch, size_t scratch_len);

#endif /* ROI_EXTRACT_H */
