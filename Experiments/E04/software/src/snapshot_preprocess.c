#include "snapshot_preprocess.h"
#include <stdint.h>

static uint32_t luminance(const uint8_t *p)
{
    uint32_t v = p[0] | ((uint32_t)p[1] << 8);
    uint32_t r = v >> 11, g = (v >> 5) & 63u, b = v & 31u;
    r = (r << 3) | (r >> 2);
    g = (g << 2) | (g >> 4);
    b = (b << 3) | (b >> 2);
    return (77u*r + 150u*g + 29u*b + 128u) >> 8;
}

int snapshot_rgb_to_gray(const uint8_t *rgb, size_t rgb_len,
                         uint32_t w, uint32_t h, size_t stride,
                         uint8_t *gray, size_t gray_len)
{
    size_t needed, output, x, y;
    uintptr_t src = (uintptr_t)rgb, dst = (uintptr_t)gray;
    if (!rgb || !gray || !w || !h || (w & 1u) || (h & 1u)) return -1;
    if ((uint64_t)w*2u > SIZE_MAX || stride < (uint64_t)w*2u ||
        stride > SIZE_MAX / h) return -1;
    needed = stride * h;
    if ((uint64_t)(w/2u)*(h/2u) > SIZE_MAX) return -1;
    output = (size_t)(w/2u)*(h/2u);
    if (rgb_len < needed || gray_len < output ||
        src > UINTPTR_MAX-needed || dst > UINTPTR_MAX-output) return -1;
    if (src < dst+output && dst < src+needed) return -1;
    for (y = 0; y < h; y += 2u) {
        const uint8_t *a = rgb + y*stride, *b = a + stride;
        for (x = 0; x < w; x += 2u) {
            uint32_t sum = luminance(a+2u*x) + luminance(a+2u*x+2u) +
                           luminance(b+2u*x) + luminance(b+2u*x+2u);
            gray[(y/2u)*(w/2u)+x/2u] = (uint8_t)((sum+2u)>>2);
        }
    }
    return 0;
}
