#include "touch_gt911.h"
#include "xparameters.h"
#include "xstatus.h"
#include "xil_io.h"
#include "xgpiops.h"
#include "xiicps.h"
#include "xiicps_hw.h"
#include "xtime_l.h"
#include "sleep.h"
#include <string.h>

#ifndef TOUCH_SWAP_XY
#define TOUCH_SWAP_XY 0
#endif
#ifndef TOUCH_INVERT_X
#define TOUCH_INVERT_X 0
#endif
#ifndef TOUCH_INVERT_Y
#define TOUCH_INVERT_Y 0
#endif
#define SCL 50U
#define SDA 51U
#define INT_PIN 0U
#define RST_PIN 54U
#define GPIO_BASE 0xE000A000U
#define REG_ID 0x8140U
#define REG_RANGE 0x8146U
#define REG_CONFIG_RANGE 0x8048U
#define REG_STATUS 0x814EU
#define REG_POINT 0x8150U
#define SCAN_TICKS (COUNTS_PER_SECOND / 100U)
#define TRANSFER_TICKS (COUNTS_PER_SECOND / 50U)
#define POLL_TICKS ((COUNTS_PER_SECOND / 1000U) * 60U)

volatile touch_diagnostics touch_debug;
static XGpioPs gpio;
static XIicPs iic;
static UINTPTR base;
static u32 control;
static u16 address, max_x, max_y;
static int ready, last_x, last_y, last_pressed, scan, candidate_pressed;
static int candidate_x, candidate_y, candidate_error;
static XTime next_scan;
static struct {
    int phase, read, length, received;
    u8 *data;
    u8 packet[16];
    XTime start;
} transfer;
static u8 status_byte, point[4], clear_byte;

static XTime ticks(void) { XTime t; XTime_GetTime(&t); return t; }
static void mux(u32 bus_config)
{
    Xil_Out32(0xF8000008U, 0xDF0DU);
    Xil_Out32(0xF8000700U, 0x600U); /* MIO0 bank0 LVCMOS33 */
    Xil_Out32(0xF80007C8U, bus_config); /* bank1 LVCMOS18 */
    Xil_Out32(0xF80007CCU, bus_config);
    Xil_Out32(0xF8000004U, 0x767BU);
}
static void release_pin(u32 pin)
{
    XGpioPs_SetOutputEnablePin(&gpio,pin,0U);
    XGpioPs_SetDirectionPin(&gpio,pin,0U);
}
/* Preserve verified bank1 open-drain sequence, touching only MIO50/51. */
static void drive_low(u32 pin)
{
    u32 mask=1U<<(pin-32U);
    Xil_Out32(GPIO_BASE+0x244U,Xil_In32(GPIO_BASE+0x244U)|mask);
    Xil_Out32(GPIO_BASE+0x248U,Xil_In32(GPIO_BASE+0x248U)|mask);
    __asm__ volatile("dsb sy" ::: "memory");
    usleep(5);
    Xil_Out32(GPIO_BASE+0x0CU,(0xFFFFU^(1U<<(pin-48U)))<<16);
    __asm__ volatile("dsb sy" ::: "memory");
    Xil_Out32(GPIO_BASE+0x44U,Xil_In32(GPIO_BASE+0x44U)&~mask);
    __asm__ volatile("dsb sy" ::: "memory");
    usleep(5);
}
static void pins(void)
{
    touch_debug.bus_pins=XGpioPs_ReadPin(&gpio,SCL)|
        (XGpioPs_ReadPin(&gpio,SDA)<<1)|
        (XGpioPs_ReadPin(&gpio,INT_PIN)<<2)|
        (XGpioPs_ReadPin(&gpio,RST_PIN)<<3);
}
static int fail(int error)
{
    if(base) {
        Xil_Out32(base+XIICPS_CR_OFFSET,control|XIICPS_CR_CLR_FIFO_MASK);
        Xil_Out32(base+XIICPS_ISR_OFFSET,XIICPS_IXR_ALL_INTR_MASK);
    }
    transfer.phase=0;
    touch_debug.phase=0;
    scan=0;
    last_pressed=0;
    touch_debug.last_error=error;
    touch_debug.last_transfer_error=error;
    ++touch_debug.errors;
    if(error==TOUCH_ETIMEOUT) ++touch_debug.timeouts;
    pins();
    next_scan=ticks()+SCAN_TICKS;
    return error;
}
/* These helpers run only during init, never from touch_poll. */
static int raise_clock(void)
{
    XTime start=ticks();
    release_pin(SCL);
    while(!XGpioPs_ReadPin(&gpio,SCL)) {
        if(ticks()-start>COUNTS_PER_SECOND/1000U) return TOUCH_EBUS;
        usleep(1);
    }
    usleep(5);
    return 0;
}
static int recover_bus(void)
{
    unsigned i;
    mux(0x1200U);
    release_pin(SCL); release_pin(SDA); release_pin(INT_PIN);
    usleep(1000);
    if(!XGpioPs_ReadPin(&gpio,SDA)) {
        for(i=0;i<9;i++) { drive_low(SCL); if(raise_clock()) return TOUCH_EBUS; }
    }
    drive_low(SDA);
    if(raise_clock()) return TOUCH_EBUS;
    release_pin(SDA); usleep(5);
    drive_low(SCL);
    if(XGpioPs_ReadPin(&gpio,SCL)) return TOUCH_EBUS;
    drive_low(SDA);
    if(XGpioPs_ReadPin(&gpio,SDA)) return TOUCH_EBUS;
    if(raise_clock()) return TOUCH_EBUS;
    release_pin(SDA); usleep(5); pins();
    return (touch_debug.bus_pins&3U)==3U ? 0 : TOUCH_EBUS;
}
static void reset_address(unsigned high)
{
    XGpioPs_WritePin(&gpio,RST_PIN,0);
    XGpioPs_SetDirectionPin(&gpio,RST_PIN,1);
    XGpioPs_SetOutputEnablePin(&gpio,RST_PIN,1);
    release_pin(INT_PIN); usleep(20000);
    XGpioPs_WritePin(&gpio,INT_PIN,high);
    XGpioPs_SetDirectionPin(&gpio,INT_PIN,1);
    XGpioPs_SetOutputEnablePin(&gpio,INT_PIN,1);
    usleep(5); XGpioPs_WritePin(&gpio,INT_PIN,high); usleep(1000);
    XGpioPs_WritePin(&gpio,RST_PIN,1); usleep(6000);
    XGpioPs_WritePin(&gpio,INT_PIN,0); usleep(50000);
    release_pin(INT_PIN); usleep(50000);
}
static void launch(u8 *data,int length,int read,int hold)
{
    int i;
    u32 cr=control|XIICPS_CR_CLR_FIFO_MASK;
    if(read) cr|=XIICPS_CR_RD_WR_MASK;
    if(hold) cr|=XIICPS_CR_HOLD_MASK;
    Xil_Out32(base+XIICPS_ISR_OFFSET,XIICPS_IXR_ALL_INTR_MASK);
    Xil_Out32(base+XIICPS_CR_OFFSET,cr);
    if(read) Xil_Out32(base+XIICPS_TRANS_SIZE_OFFSET,(u32)length);
    else for(i=0;i<length;i++) Xil_Out32(base+XIICPS_DATA_OFFSET,data[i]);
    transfer.received=0;
    transfer.start=ticks();
    Xil_Out32(base+XIICPS_ADDR_OFFSET,address);
}
static int begin(u16 reg,u8 *data,int length,int read)
{
    int i;
    if(length<1 || length>14 || transfer.phase) return TOUCH_EINVAL;
    if(Xil_In32(base+XIICPS_SR_OFFSET)&XIICPS_SR_BA_MASK) return fail(TOUCH_EBUS);
    transfer.data=data; transfer.length=length; transfer.read=read;
    transfer.packet[0]=(u8)(reg>>8); transfer.packet[1]=(u8)reg;
    if(!read) for(i=0;i<length;i++) transfer.packet[i+2]=data[i];
    transfer.phase=1; touch_debug.phase=1;
    launch(transfer.packet,read?2:length+2,0,read);
    return 0;
}
/* At most one FIFO-depth drain, no sleep, no polling loop. */
static int step(void)
{
    int i;
    u32 isr=Xil_In32(base+XIICPS_ISR_OFFSET);
    touch_debug.isr=isr;
    touch_debug.hw_status=Xil_In32(base+XIICPS_SR_OFFSET);
    if(isr&XIICPS_IXR_NACK_MASK) return fail(TOUCH_ENACK);
    if(isr&(XIICPS_IXR_ARB_LOST_MASK|XIICPS_IXR_TO_MASK|
            XIICPS_IXR_RX_OVR_MASK|XIICPS_IXR_TX_OVR_MASK)) return fail(TOUCH_EBUS);
    if(transfer.phase==2) {
        for(i=0;i<16 && transfer.received<transfer.length;i++) {
            if(!(Xil_In32(base+XIICPS_SR_OFFSET)&XIICPS_SR_RXDV_MASK)) break;
            transfer.data[transfer.received++]=(u8)Xil_In32(base+XIICPS_DATA_OFFSET);
        }
    }
    if(isr&XIICPS_IXR_COMP_MASK) {
        if(transfer.phase==1 && transfer.read) {
            transfer.phase=2; touch_debug.phase=2;
            launch(transfer.data,transfer.length,1,0); return 0;
        }
        /* COMP can precede STOP/bus-idle. Do not start the next register
         * transaction, or return to UI/Haar, while the bus is still active.
         * The held write-address phase above intentionally keeps BA asserted.
         */
        if((transfer.phase==1 || transfer.received==transfer.length) &&
           !(Xil_In32(base+XIICPS_SR_OFFSET)&XIICPS_SR_BA_MASK)) {
            transfer.phase=0; touch_debug.phase=0; return 1;
        }
    }
    if(ticks()-transfer.start>=TRANSFER_TICKS) return fail(TOUCH_ETIMEOUT);
    return 0;
}
static int sync_reg(u16 reg,u8 *data,int length,int read)
{
    int rc=begin(reg,data,length,read);
    if(rc) return rc;
    do { rc=step(); if(!rc) usleep(50); } while(!rc);
    return rc<0?rc:0;
}
static int probe(u16 addr)
{
    u8 id[4], range[4], zero=0;
    int rc;
    address=addr; touch_debug.address=addr;
    rc=sync_reg(REG_ID,id,4,1); if(rc) return rc;
    if(id[0]!='9' || id[1]!='1' || id[2]!='1') return TOUCH_EDEVICE;
    touch_debug.product_id=(u32)id[0]|((u32)id[1]<<8)|((u32)id[2]<<16)|((u32)id[3]<<24);
    rc=sync_reg(REG_RANGE,range,4,1); if(rc) return rc;
    max_x=range[0]|((u16)range[1]<<8); max_y=range[2]|((u16)range[3]<<8);
    if(!max_x || !max_y || max_x>4096 || max_y>4096) {
        rc=sync_reg(REG_CONFIG_RANGE,range,4,1); if(rc) return rc;
        max_x=range[0]|((u16)range[1]<<8); max_y=range[2]|((u16)range[3]<<8);
        if(!max_x || !max_y || max_x>4096 || max_y>4096) return TOUCH_EDEVICE;
    }
    touch_debug.geometry=max_x|((u32)max_y<<16);
    return sync_reg(REG_STATUS,&zero,1,0);
}
int touch_init(void)
{
    XGpioPs_Config *gc;
    XIicPs_Config *ic;
    int rc;
    int previous_error=touch_debug.last_transfer_error;
    ready=0; base=0; scan=0; transfer.phase=0; last_pressed=0;
    memset((void*)&touch_debug,0,sizeof touch_debug);
    touch_debug.last_transfer_error=previous_error;
    touch_debug.stage=1;
    gc=XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    if(!gc || XGpioPs_CfgInitialize(&gpio,gc,gc->BaseAddr)!=XST_SUCCESS)
        return TOUCH_EGPIO;
    rc=recover_bus(); if(rc) return fail(rc);
    touch_debug.stage=2;
    ic=XIicPs_LookupConfig(XPAR_XIICPS_0_DEVICE_ID);
    if(!ic || XIicPs_CfgInitialize(&iic,ic,ic->BaseAddress)!=XST_SUCCESS)
        return fail(TOUCH_EBUS);
    base=ic->BaseAddress;
    if(XIicPs_SetSClk(&iic,100000U)!=XST_SUCCESS) return fail(TOUCH_EBUS);
    control=(Xil_In32(base+XIICPS_CR_OFFSET)&(XIICPS_CR_DIV_A_MASK|XIICPS_CR_DIV_B_MASK))|
        XIICPS_CR_MS_MASK|XIICPS_CR_NEA_MASK|XIICPS_CR_ACKEN_MASK;
    Xil_Out32(base+XIICPS_CR_OFFSET,control|XIICPS_CR_CLR_FIFO_MASK);
    Xil_Out32(base+XIICPS_IDR_OFFSET,XIICPS_IXR_ALL_INTR_MASK);
    Xil_Out32(base+XIICPS_TIME_OUT_OFFSET,0xFF);
    mux(0x1240U);
    rc=probe(0x5D);
    if(rc) rc=probe(0x14);
    if(rc) { reset_address(0); rc=probe(0x5D); }
    if(rc) { reset_address(1); rc=probe(0x14); }
    if(rc) return fail(rc);
    ready=1; next_scan=ticks(); touch_debug.stage=3; touch_debug.last_error=0;
    return 0;
}
static int transform(void)
{
    u32 rx=point[0]|((u16)point[1]<<8), ry=point[2]|((u16)point[3]<<8);
    u32 mx=max_x,my=max_y,tmp;
    int swap=(mx<=544 && my>=736);
    touch_debug.raw_x=rx; touch_debug.raw_y=ry;
    if(rx>=mx || ry>=my) return TOUCH_ECOORD;
    if(TOUCH_SWAP_XY) swap=!swap;
    if(swap) { tmp=rx;rx=ry;ry=tmp;tmp=mx;mx=my;my=tmp; }
    candidate_x=(int)(rx*800U/mx); candidate_y=(int)(ry*480U/my);
    if(TOUCH_INVERT_X) candidate_x=799-candidate_x;
    if(TOUCH_INVERT_Y) candidate_y=479-candidate_y;
    return 0;
}
static int touch_step(int *x,int *y,int *pressed)
{
    int rc=0;
    XTime now;
    if(!x || !y || !pressed) return TOUCH_EINVAL;
    *x=last_x; *y=last_y; *pressed=last_pressed;
    if(!ready) { *pressed=0; return TOUCH_ENOINIT; }
    now=ticks();
    if(!scan) {
        if(now<next_scan) return 0;
        next_scan=now+SCAN_TICKS;
        scan=1; candidate_error=0;
        rc=begin(REG_STATUS,&status_byte,1,1);
    } else {
        rc=step();
        if(rc==1) {
            if(scan==1) {
                touch_debug.status=status_byte;
                if(!(status_byte&0x80U)) { scan=0; return 0; }
                candidate_pressed=(status_byte&15U)!=0;
                candidate_x=last_x; candidate_y=last_y;
                if((status_byte&15U)>5U) candidate_error=TOUCH_ECOORD;
                if(candidate_pressed && !candidate_error) {
                    scan=2; rc=begin(REG_POINT,point,4,1);
                } else { scan=3; rc=begin(REG_STATUS,&clear_byte,1,0); }
            } else if(scan==2) {
                candidate_error=transform();
                scan=3; rc=begin(REG_STATUS,&clear_byte,1,0);
            } else {
                scan=0;
                if(candidate_error) rc=fail(candidate_error);
                else {
                    last_x=candidate_x; last_y=candidate_y; last_pressed=candidate_pressed;
                    ++touch_debug.frames; touch_debug.last_error=0; rc=1;
                }
            }
        }
    }
    *x=last_x; *y=last_y; *pressed=last_pressed;
    return rc;
}

int touch_poll(int *x,int *y,int *pressed)
{
    XTime start;
    int rc;
    if(!x || !y || !pressed) return TOUCH_EINVAL;
    start=ticks();
    rc=touch_step(x,y,pressed);
    /* A held register-address write must never escape this public call:
     * ui_show may wait multiple frame boundaries and Haar may occupy the CPU
     * far longer than an I2C phase deadline. Drain status/point/ack together.
     * No sleep or rate-limit wait here; normal 100kHz scan takes ~1-2ms.
     */
    while(rc>=0 && (scan || transfer.phase)) {
        if(ticks()-start>=POLL_TICKS) {
            rc=fail(TOUCH_ETIMEOUT);
            break;
        }
        rc=touch_step(x,y,pressed);
    }
    *x=last_x; *y=last_y; *pressed=last_pressed;
    return rc;
}
