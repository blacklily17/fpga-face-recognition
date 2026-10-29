#ifndef CNN16_DMA_H
#define CNN16_DMA_H
#include "cnn_dma.h"
#include "cnn16_numeric.h"
#define C16_HW_ID UINT32_C(0x434e0012)
typedef struct {
    cnn_io_t io;
    int8_t *input,*output;
    const c16_conv_params_t *conv;
    cnn_phase_t phase;
    uint32_t config,token,index,input_bytes,output_bytes,cycles;
    uint64_t deadline_us,started_us,total_us;
    int status;
} c16_dma_t;
/* Shared DMA: caller must hold exclusive ownership across begin/safe.
 * No reset in init: the legacy adapter owns initial peripheral reset. */
int c16_dma_init(c16_dma_t *,const cnn_io_t *,int8_t *,size_t,int8_t *,size_t);
int c16_dma_begin(c16_dma_t *,const c16_conv_params_t *); /* NULL = fixed signed pool */
int c16_dma_step(c16_dma_t *);
void c16_dma_cancel(c16_dma_t *);
int c16_dma_safe(const c16_dma_t *);
#endif
