/* 双线性重采样（PS 端 C 实现）。
 *
 * 语义与 `software/golden/roi_extract.py` 的 `resize_bilinear` **逐像素一致**，
 * 由 `software/tests/test_haar_c_resize.py` 编译并运行后比对。改动任何一处
 * 算术之前，先看那个测试。
 *
 * 为什么基准是 roi_extract 而不是 cv2
 * -----------------------------------
 * `haar_search.py` 的默认路径借 `cv2.resize(INTER_LINEAR_EXACT)`，那只是
 * **对拍参照**。2026-09-29 的对照实验（`PS/reports/重采样对照实验_20260929.txt`）
 * 量过两条路径：像素层差 ±1 LSB，但**框层在全部可测输入上零差异**
 * （小图 4 张 + 400×240 的 46,828 与 152,170 个窗口两种配置）。
 * 裁决是不复刻 `INTER_LINEAR_EXACT`，采用本文件的规则统一 —— 于是 PS 侧
 * 只有**一条**重采样规则，`haar_search` 与 `roi_extract` 共用同一个实现。
 *
 * 数值口径：**一个浮点都不许有**
 * ------------------------------
 * 黄金模型全程用 `fractions.Fraction` 精确有理数。C 侧不能退化成 double
 * 近似 —— 那会在部分像素上差 1，且差在哪取决于编译器与优化级别，无从复现。
 * 所以实现把有理数运算手工化成整数运算：
 *
 *     N   = (2*dx+1)*src_w - dst_w      夹到 [0, (src_w-1)*Dx]
 *     Dx  = 2*dst_w
 *     x0  = N / Dx      nx = N % Dx     fx = nx/Dx
 *     M   = (2*dy+1)*src_h - dst_h      夹到 [0, (src_h-1)*Dy]
 *     Dy  = 2*dst_h
 *     y0  = M / Dy      ny = M % Dy     fy = ny/Dy
 *
 *     num = p00*(Dx-nx)*(Dy-ny) + p10*nx*(Dy-ny)
 *         + p01*(Dx-nx)*ny      + p11*nx*ny
 *     den = Dx*Dy
 *     out = (2*num + den) / (2*den)
 *
 * 最后一步就是 `floor(value + 1/2)`：整数除法在**非负**被除数上等于 floor，
 * 灰度非负保证了这一点。**若哪天 p00..p11 换成有符号量，这个等式立刻失效**
 * —— 那时必须先加偏移再算，不能照抄。
 *
 * 溢出
 * ----
 * `num <= 255 * Dx * Dy = 1020 * dst_w * dst_h`。即使 dst 取 4096×4096 也只有
 * 1.7e10，`int64_t`（上限 9.2e18）绰绰有余。要溢出得让 `dst_w*dst_h > 9e15`，
 * 不构成实际约束，所以**没有**溢出错误码 —— 不发明跑不到的错误路径。
 *
 * 契约（测试逐条守）
 * ------------------
 * C1 必须**写满** dst 的每一个字节。搜索层复用同一块缓冲区，上一档更大时
 *    留下的旧像素绝不允许渗进来。
 * C2 src 与 dst 不得重叠（调用方保证；本实现不做别名处理）。
 * C3 恒等尺寸必须**逐字节复制**。这是半像素中心映射的直接推论
 *    （`u = (2*dx+1)/2 - 1/2 = dx` 精确成立，`fx = 0`），**不是**特例分支。
 * C4 常量图输出仍是该常量，值域不漂移。
 * C5 只读 `src[0, src_w*src_h)`，绝不越界读（邻居下标夹到 `src_n-1`，
 *    所以源尺寸为 1 时也安全）。
 * C6 无全局可变状态，可重入、可重复调用。
 *
 * 缓冲区由调用方提供，本模块**不需要工作区**（精确整数运算没有表要存），
 * 也不做任何 malloc。
 *
 * 本文件是 UTF-8。不要加 BOM。
 */

#ifndef HAAR_RESIZE_H
#define HAAR_RESIZE_H

#include <stddef.h>
#include <stdint.h>

/* 返回码。0 = 成功，负数 = 错误。 */
#define HAAR_RESIZE_OK      ( 0)
#define HAAR_RESIZE_ERR_ARG (-1)  /* src/dst 为 NULL，或任一尺寸 <= 0 */

/* 把单通道 8 位灰度图从 `src_w × src_h` 重采样到 `dst_w × dst_h`。
 *
 * `src` / `dst` 都是行优先一维、长度分别为 `src_w*src_h` / `dst_w*dst_h`。
 * 返回 `HAAR_RESIZE_OK`，或 `HAAR_RESIZE_ERR_ARG`。
 *
 * 参数非法时**不碰 `dst` 一个字节**：调用方按契约只知道失败，不会去看
 * `dst`，写进去就是把垃圾留在别人的缓冲区里。
 */
int haar_resize(const uint8_t *src, int32_t src_w, int32_t src_h,
                uint8_t *dst, int32_t dst_w, int32_t dst_h);

/* One complete destination row, identical arithmetic to haar_resize.
 * Only dst[row*dst_w .. (row+1)*dst_w) is written. */
int haar_resize_row(const uint8_t *src, int32_t src_w, int32_t src_h,
                    uint8_t *dst, int32_t dst_w, int32_t dst_h, int32_t row);

#endif /* HAAR_RESIZE_H */
