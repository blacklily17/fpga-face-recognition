#ifndef SNAPSHOT_PREPROCESS_H
#define SNAPSHOT_PREPROCESS_H
#include <stddef.h>
#include <stdint.h>
/* RGB little-endian bytes; positive even dimensions; packed output.
 * Reject invalid sizes or aliasing without writing output. No malloc. */
int snapshot_rgb_to_gray(const uint8_t *rgb, size_t rgb_len,
                         uint32_t width, uint32_t height, size_t stride,
                         uint8_t *gray, size_t gray_len);
#endif
