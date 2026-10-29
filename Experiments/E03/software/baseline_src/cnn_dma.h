#ifndef CNN_DMA_H
#define CNN_DMA_H
#include <stddef.h>
#include <stdint.h>
#include "cnn_reference.h"

#define CNN_CTRL_BASE 0x41270000u
#define CNN_DMA_BASE 0x40420000u
enum { CNN_REG=0, CNN_DMA=1 };
enum { CN_ID=0, CN_STATUS=4, CN_COMMAND=8, CN_CONFIG=12, CN_WADDR=16,
       CN_WDATA=20, CN_BADDR=24, CN_BDATA=28, CN_CYCLES=32,
       CN_INPUT_BYTES=36, CN_OUTPUT_BYTES=40, CN_JOB=44, CN_DONE_JOB=48, CN_ERROR=52 };
enum { CN_START=1, CN_ABORT=2, CN_CLEAR=4, CN_BUSY=1, CN_DONE=2, CN_FAULT=4, CN_READY=8 };
enum { CD_TXCR=0, CD_TXSR=4, CD_TXADDR=0x18, CD_TXLEN=0x28,
       CD_RXCR=0x30, CD_RXSR=0x34, CD_RXADDR=0x48, CD_RXLEN=0x58 };
#define CD_ERROR_MASK 0x4770u
#define CD_COMPLETE_MASK 0x1002u
#define CNN_LAYER_TIMEOUT_US 250000u
#define CNN_RESET_TIMEOUT_US 50000u
enum { CNN_OK=0, CNN_CANCELLED=-800, CNN_BAD_ARG=-801, CNN_HW_ID=-802,
       CNN_HW_FAULT=-803, CNN_DMA_FAULT=-804, CNN_TIMEOUT=-805,
       CNN_LENGTH=-806, CNN_STALE_JOB=-807, CNN_RESET_FAILED=-808 };
typedef enum { CNN_IDLE=0,CNN_RESETTING,CNN_LOAD,CNN_ARM,CNN_WAIT,
               CNN_CLASSIFY,CNN_DONE,CNN_CANCELLING,CNN_LOCKED } cnn_phase_t;
typedef struct {
    void *context;
    uint32_t (*read)(void *,unsigned,uint32_t);
    void (*write)(void *,unsigned,uint32_t,uint32_t);
    void (*clean)(void *,const void *,size_t);
    void (*invalidate)(void *,void *,size_t);
    void (*barrier)(void *);
    uint64_t (*now_us)(void *);
    uint32_t (*physical)(void *,const void *);
} cnn_io_t;
#ifdef _MSC_VER
#define CNN_ALIGN32 __declspec(align(32))
#else
#define CNN_ALIGN32 __attribute__((aligned(32)))
#endif
/* Whole buffers own complete cache lines; no CPU data shares DMA output lines. */
typedef struct {
    CNN_ALIGN32 int8_t input[1024];
    CNN_ALIGN32 int8_t pool1[1824]; /* 1800 valid bytes */
    CNN_ALIGN32 int8_t pool2[288];
} cnn_buffers_t;
typedef struct {
    cnn_io_t io;
    cnn_buffers_t *buffers;
    const cnn_model_t *model;
    cnn_phase_t phase;
    unsigned layer, parameter_index;
    uint32_t token, layer_cycles[2], tx_status, rx_status, core_status;
    uint64_t started_us, layer_started_us, deadline_us, total_us, layer_us[2];
    int status, face, result_valid;
    int64_t margin;
} cnn_dma_t;
int cnn_dma_init(cnn_dma_t *,const cnn_io_t *,cnn_buffers_t *,const cnn_model_t *);
/* Bounded preprocessing; no wait loop. Busy/unsafe returns 1 without touching buffers. */
int cnn_dma_begin(cnn_dma_t *,const uint8_t gray[96000],int x,int y,int w,int h);
/* 1 pending, 0 ready/result, negative terminal error. */
int cnn_dma_step(cnn_dma_t *);
void cnn_dma_cancel(cnn_dma_t *);
int cnn_dma_safe(const cnn_dma_t *);
#endif
