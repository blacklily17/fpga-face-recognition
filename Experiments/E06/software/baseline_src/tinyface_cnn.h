#ifndef TINYFACE_CNN_H
#define TINYFACE_CNN_H

#include <stdint.h>

#define TINYFACE_INPUT_SIZE       48U
#define TINYFACE_EMBEDDING_SIZE   32U

typedef int (*tinyface_conv_backend_fn)(
    void *context,
    const int8_t *input, uint32_t height, uint32_t width,
    uint32_t in_channels,
    int8_t *output, uint32_t out_channels,
    const int8_t *weight, const int32_t *bias,
    const int32_t *multiplier, uint32_t requant_shift);

/* Install a synchronous convolution backend. Passing NULL restores the
 * portable C kernel. The remaining pooling/FC/L2 stages stay on the PS. */
void tinyface_cnn_set_conv_backend(tinyface_conv_backend_fn backend,
                                   void *context);

/* Resize a square GRAY8 face and produce an L2-normalized signed INT8
 * embedding.  The network itself is INT8/INT32; only the final 32-element
 * normalization uses float. */
int tinyface_cnn_infer(const uint8_t *square, uint32_t side,
                       int8_t embedding[TINYFACE_EMBEDDING_SIZE]);

/* Run the portable PS kernel for one embedding even when a PL convolution
 * backend is installed. The original backend is restored before return. */
int tinyface_cnn_infer_cpu(const uint8_t *square, uint32_t side,
                           int8_t embedding[TINYFACE_EMBEDDING_SIZE]);

#endif
