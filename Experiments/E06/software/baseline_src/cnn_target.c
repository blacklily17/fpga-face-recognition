#include "cnn_target.h"
#include "cnn16_model.h"
#include "cnn_trained_model.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xil_mmu.h"
#include "xtime_l.h"

#if !defined(XPAR_CNN_REGS_0_BASEADDR) || !defined(XPAR_CNN_DMA_BASEADDR)
#error C3 CNN requires its own joint HDF/BSP
#endif
#if XPAR_CNN_REGS_0_BASEADDR != CNN_CTRL_BASE || XPAR_CNN_DMA_BASEADDR != CNN_DMA_BASE
#error C3 CNN control/DMA BSP address mismatch
#endif
#if !defined(XPAR_CNN_DMA_SG_LENGTH_WIDTH) || XPAR_CNN_DMA_SG_LENGTH_WIDTH != 16
#error C3 CNN requires 16-bit simple DMA length
#endif
static cnn_dma_t legacy_driver;
static cnn_buffers_t legacy_buffers;
static c5_legacy_adapter_t legacy_adapter;
static c5_legacy_backend_t legacy_backend;
static c3_detector_t detector;
static gray_snapshot_hw_t *snapshot_hw;
static int attempted,initialized,init_error;
static uint32_t read_reg(void *p,unsigned bank,uint32_t off){
    (void)p;return Xil_In32((bank==CNN_REG?CNN_CTRL_BASE:CNN_DMA_BASE)+off);
}
static void write_reg(void *p,unsigned bank,uint32_t off,uint32_t value){
    (void)p;Xil_Out32((bank==CNN_REG?CNN_CTRL_BASE:CNN_DMA_BASE)+off,value);
}
static void clean(void *p,const void *addr,size_t n){
    (void)p;Xil_DCacheFlushRange((UINTPTR)addr,(uint32_t)n);
}
static void invalidate(void *p,void *addr,size_t n){
    (void)p;Xil_DCacheInvalidateRange((UINTPTR)addr,(uint32_t)n);
}
static void barrier(void *p){(void)p;SYNCHRONIZE_IO;}
static uint64_t now_us(void *p){
    XTime t;(void)p;XTime_GetTime(&t);
    return (uint64_t)t/((uint64_t)COUNTS_PER_SECOND/1000000u);
}
static uint32_t physical(void *p,const void *addr){(void)p;return (uint32_t)(uintptr_t)addr;}
static uint64_t source_now(void *p){
    uint64_t now;(void)p;
    return gray_snapshot_now(snapshot_hw,&now)?UINT64_MAX:now;
}
int cnn_target_init(gray_snapshot_hw_t *hw){
    const cnn_io_t io={0,read_reg,write_reg,clean,invalidate,barrier,now_us,physical};
    unsigned polls;int rc;
    if(!hw)return C5_BAD_ARG;
    /* Recovery is allowed only after the actual owner has drained. Failed
     * initialization/locked reset requires a new authorized hardware load. */
    if(attempted){
        if(!initialized)return init_error<0?init_error:C5_LOCKED;
        if(!c3_detector_safe(&detector))
            return detector.backend.dma.phase==CNN_LOCKED?C5_LOCKED:C5_PENDING;
    }
    attempted=1;initialized=0;snapshot_hw=hw;
    Xil_SetTlbAttributes(CNN_CTRL_BASE&0xfff00000u,(DEVICE_MEMORY|SHAREABLE|0x10u)&~1u);
    Xil_SetTlbAttributes(CNN_DMA_BASE&0xfff00000u,(DEVICE_MEMORY|SHAREABLE|0x10u)&~1u);
    SYNCHRONIZE_IO;
    rc=cnn_dma_init(&legacy_driver,&io,&legacy_buffers,&trained_model);
    if(rc){init_error=rc;return rc;}
    /* Startup/reset only; runtime inference always advances one bounded step.
     * Driver enforces 50ms and ABORT-before-reset. Poll cap also covers a bad
     * time source, without declaring an uncleared channel safe. */
    for(polls=0;polls<4096;++polls){rc=cnn_dma_step(&legacy_driver);if(rc!=1)break;}
    if(rc){init_error=rc<0?rc:C5_LOCKED;return init_error;}
    rc=c5_legacy_attach(&legacy_adapter,&legacy_driver,1);
    if(!rc)rc=c5_legacy_backend_init(&legacy_backend,&legacy_adapter);
    if(!rc)rc=c3_detector_init(&detector,&legacy_backend,c16_trained(),source_now,0);
    if(!rc && !c3_detector_safe(&detector))rc=C5_FAULT;
    init_error=rc;initialized=rc==0;return rc;
}
c3_detector_t *cnn_target_detector(void){return initialized?&detector:0;}
void cnn_target_cancel(void){if(initialized)c3_detector_cancel(&detector);}
int cnn_target_quiesce_step(void){
    haar_detect_result_t ignored;c3_detect_key_t key;int rc;
    if(!attempted)return 0;
    if(!initialized)return init_error<0?init_error:C5_LOCKED;
    if(c3_detector_safe(&detector))return 0;
    if(!detector.active)return C5_LOCKED; /* Unexpected hardware owner. */
    rc=c3_detector_step(&detector,&ignored,&key);
    if(c3_detector_safe(&detector))return 0;
    if(rc<0)return rc;
    return 1;
}
