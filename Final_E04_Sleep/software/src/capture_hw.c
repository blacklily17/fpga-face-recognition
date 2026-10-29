/* Adapted from the verified WP123 register sequence, independent source. */
#include "capture_hw.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include <string.h>
#define V XPAR_AXI_VDMA_0_BASEADDR
#define G XPAR_CAMERA_START_GPIO_BASEADDR
#define K XPAR_CAPTURE_KEYS_BASEADDR
static const uint32_t frames[3]={0x10000000,0x10100000,0x10200000};
static const unsigned slots[3]={1,2,0};
static unsigned active_slot;
static unsigned completed_slot;
static int display_suspended,display_starting;
static uint64_t display_change_ms;
static uint64_t last_boundary;
static uint32_t last_dma_status,last_upstream_status;
static int remember_error(int code) {
    last_dma_status=Xil_In32(V+0x34);last_upstream_status=Xil_In32(G);return code;
}
static void diagnose(void *ctx,uint32_t *dma,uint32_t *upstream) {
    (void)ctx;*dma=last_dma_status;*upstream=last_upstream_status;
}
uint64_t capture_hw_ms(void) {XTime t;XTime_GetTime(&t);return (uint64_t)t/(COUNTS_PER_SECOND/1000u);}
unsigned capture_hw_keys(void) {return Xil_In32(K)&3u;}
static void barrier(void *ctx) {
    (void)ctx;
#ifndef CAPTURE_HW_HOST_TEST
    __asm__ volatile("dsb sy" ::: "memory");
#endif
}
static void invalidate(void *ctx,uintptr_t addr,unsigned len) {(void)ctx;Xil_DCacheInvalidateRange(addr,len);}
static void flush(void *ctx,uintptr_t addr,unsigned len) {(void)ctx;Xil_DCacheFlushRange(addr,len);}
static void wait_ms(unsigned ms) {uint64_t start=capture_hw_ms();while(capture_hw_ms()-start<ms) {}}
static int reset(unsigned reg) {
    uint64_t start=capture_hw_ms();Xil_Out32(V+reg,4);
    while(Xil_In32(V+reg)&4u) if(capture_hw_ms()-start>200) return -1;
    return 0;
}
static int stop_capture(void *ctx) {
    uint64_t start=capture_hw_ms();uint32_t upstream=Xil_In32(G);(void)ctx;
    Xil_Out32(G+8,0);Xil_Out32(V+0x30,0);
    while(!(Xil_In32(V+0x34)&1u)) if(capture_hw_ms()-start>1000) {
        last_dma_status=Xil_In32(V+0x34);last_upstream_status=upstream;return -101;
    }
    wait_ms(5); /* Disabled source resets sticky frame裁决 and drains bridge. */
    return 0;
}
static void addresses(unsigned reg,uintptr_t addr) {
    unsigned i;for(i=0;i<3;++i) Xil_Out32(V+reg+4*i,(uint32_t)addr);
}
static int single_error(int code,uint32_t *dma,uint32_t *upstream) {
    *dma=Xil_In32(V+0x34);*upstream=Xil_In32(G);
    (void)stop_capture(0);
    /* Preserve failed-frame evidence even when cleanup resets sticky bits. */
    last_dma_status=*dma;last_upstream_status=*upstream;return code;
}
static int capture_single(void *ctx,uintptr_t dst,uint32_t *dma,uint32_t *upstream) {
    uint64_t start;unsigned i;(void)ctx;
    if(stop_capture(0)<0) {diagnose(0,dma,upstream);return -101;}
    if(reset(0x30)<0)return single_error(-102,dma,upstream);
    /* Fail closed on sticky stale status before enabling a new frame. */
    if(Xil_In32(G)&0xfcu) return single_error(-103,dma,upstream);
    invalidate(0,dst,CAPTURE_RGB_BYTES);barrier(0);
    Xil_Out32(V+0x34,0xffffffff);Xil_Out32(V+0x30,0x11013);
    addresses(0xac,dst);Xil_Out32(V+0xa8,1600);Xil_Out32(V+0xa4,1600);Xil_Out32(V+0xa0,480);
    Xil_Out32(G+8,1);start=capture_hw_ms();
    for(i=0;capture_hw_ms()-start<2000;++i) {
        *dma=Xil_In32(V+0x34);
        if(*dma&0xff0u) return single_error(-104,dma,upstream);
        if(*dma&0x1000u) {
            /* Stop DMA first, read this frame's upstream result before disable clears it. */
            Xil_Out32(V+0x30,0);
            while(!(*dma&1u)) {
                *dma=Xil_In32(V+0x34);
                if(capture_hw_ms()-start>=2000)return single_error(-105,dma,upstream);
            }
            /* DMA last-line completion can precede the DVP VSYNC verdict's
             * CDC latency. Keep the source enabled while waiting for this
             * frame's good result; disabling it resets the sticky verdict. */
            do {
                *upstream=Xil_In32(G);
                if((*upstream>>16)!=0x5640u || (*upstream&0x7eu)) {
                    return single_error(-106,dma,upstream);
                }
                if(capture_hw_ms()-start>=2000) {
                    return single_error(-107,dma,upstream);
                }
            }while((*upstream&0xffu)!=0x81u);
            Xil_Out32(G+8,0);barrier(0);return 0;
        }
    }
    return single_error(-108,dma,upstream);
}
static int show_static(void *ctx,uintptr_t dst) {
    uint64_t start;(void)ctx;
    Xil_Out32(V,0);
    start=capture_hw_ms();while(!(Xil_In32(V+4)&1u)) if(capture_hw_ms()-start>1000) return remember_error(-201);
    if(reset(0)<0)return remember_error(-202);
    Xil_Out32(V+4,0xffffffff);Xil_Out32(V+0x28,0);Xil_Out32(V,1);
    addresses(0x5c,dst);Xil_Out32(V+0x58,1600);Xil_Out32(V+0x54,1600);Xil_Out32(V+0x50,480);
    return (Xil_In32(V+4)&0xff0u) ? remember_error(-203):0;
}
static int start_live(void *ctx) {
    uint32_t dma,upstream;unsigned i;int error;(void)ctx;
    /* Seed FRAME0 before re-enabling continuous writes to 1,2,0. */
    error=capture_single(0,frames[0],&dma,&upstream);
    if(error<0)return error;
    if((upstream&0xffu)!=0x81u)return remember_error(-120);
    error=show_static(0,frames[0]);if(error<0)return error;
    error=stop_capture(0);if(error<0)return error;
    if(reset(0x30)<0)return remember_error(-102);
    Xil_Out32(V+0x34,0xffffffff);Xil_Out32(V+0x30,3);
    for(i=0;i<3;++i) {
        Xil_Out32(V+0xac+4*i,frames[slots[i]]);
        Xil_Out32(V+0x5c+4*i,frames[i]);
    }
    Xil_Out32(V+0xa8,1600);Xil_Out32(V+0xa4,1600);Xil_Out32(V+0xa0,480);
    active_slot=0;completed_slot=0;display_suspended=0;display_starting=0;
    last_boundary=capture_hw_ms();Xil_Out32(G+8,1);return 0;
}
int capture_hw_display_sleep(int off){
    uint32_t status;
    if(off){
        if(!display_suspended){
            Xil_Out32(V,0U);barrier(0);display_suspended=1;display_starting=0;
            display_change_ms=capture_hw_ms();
        }
        status=Xil_In32(V+4U);
        if(status&0xff0U)return remember_error(-753);
        if(status&1U)return 0;
    }else{
        if(!display_suspended)return 0;
        if(!display_starting){
            uint32_t park=Xil_In32(V+0x28U);
            Xil_Out32(V+0x28U,(park&~31U)|completed_slot);
            Xil_Out32(V,1U);Xil_Out32(V+0x50U,480U);barrier(0);
            display_starting=1;display_change_ms=capture_hw_ms();
        }
        status=Xil_In32(V+4U);
        if(status&0xff0U)return remember_error(-754);
        if(!(status&1U)){display_suspended=0;display_starting=0;return 0;}
    }
    return capture_hw_ms()-display_change_ms>=1000U?remember_error(-755):1;
}
static int step_live(void *ctx) {
    unsigned current;uint32_t park;(void)ctx;
    if((Xil_In32(V+0x34)|Xil_In32(V+4))&0xff0u) return remember_error(-310);
    park=Xil_In32(V+0x28);current=(park>>24)&31;
    if(current>=3)return remember_error(-311);
    if(current!=active_slot) {
        completed_slot=slots[active_slot];
        if(!display_suspended)Xil_Out32(V+0x28,(park&~31u)|completed_slot);
        active_slot=current;last_boundary=capture_hw_ms();
    }
    return capture_hw_ms()-last_boundary>2000 ? remember_error(-312):0;
}
int capture_hw_init(capture_video_ops *ops) {
    uint64_t start=capture_hw_ms();uint32_t status;
    memset(ops,0,sizeof(*ops));
    /* Error display and diagnostics must exist even when camera init fails. */
    ops->raw=(uint8_t*)CAPTURE_RAW_ADDR;ops->display=(uint8_t*)CAPTURE_DISPLAY_ADDR;
    ops->stop_capture=stop_capture;ops->capture_single=capture_single;ops->start_live=start_live;ops->step_live=step_live;
    ops->show_static=show_static;ops->invalidate=invalidate;ops->flush=flush;ops->barrier=barrier;ops->diagnose=diagnose;
    Xil_Out32(G+4,0xffffffff);Xil_Out32(G+12,0);Xil_Out32(K+4,3);Xil_Out32(G+8,0);
    do {
        status=Xil_In32(G);
        if(status&2u)return remember_error(-410);
        if((status&1u) && (status>>16)==0x5640u)break;
        if(capture_hw_ms()-start>15000)return remember_error(-411);
    }while(1);
    return 0;
}
