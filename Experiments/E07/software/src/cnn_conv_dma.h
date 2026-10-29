#ifndef CNN_CONV_DMA_H
#define CNN_CONV_DMA_H

#include <stddef.h>
#include <stdint.h>

enum { CNN_CONV_DMA_REGS=0, CNN_CONV_CONTROL=1 };

typedef uint32_t (*cnn_conv_read_fn)(void *,unsigned,uint32_t);
typedef void (*cnn_conv_write_fn)(void *,unsigned,uint32_t,uint32_t);
typedef uint64_t (*cnn_conv_ticks_fn)(void *);
typedef int (*cnn_conv_cache_fn)(void *,uintptr_t,size_t);

typedef struct {
    void *user;
    cnn_conv_read_fn read;
    cnn_conv_write_fn write;
    cnn_conv_ticks_fn ticks;
    cnn_conv_cache_fn flush;
    cnn_conv_cache_fn invalidate;
    uint64_t timeout_ticks;
    uint32_t fault;
    uint32_t stopped;
} cnn_conv_dma_io;

typedef struct {
    uint32_t magic;
    uint32_t calls;
    uint32_t errors;
    uint32_t last_error;
    uint32_t selftest_passed;
    uint32_t last_tx_bytes;
    uint32_t last_rx_bytes;
    uint64_t last_ticks;
} cnn_conv_dma_diagnostics;

extern volatile cnn_conv_dma_diagnostics g_cnn_conv_dma_diag;

int cnn_conv_dma_run(void *context,const int8_t *input,uint32_t height,
                     uint32_t width,uint32_t in_channels,int8_t *output,
                     uint32_t out_channels,const int8_t *weight,
                     const int32_t *bias,const int32_t *multiplier,
                     uint32_t requant_shift);
int cnn_conv_dma_selftest(cnn_conv_dma_io *io);

#endif
