#include "overlay_target.h"
#include "overlay_regs.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xil_mmu.h"
#include "xtime_l.h"

/* A legacy BSP is a compile error, not a fallback to guessed addresses. */
#if XPAR_OVERLAY_REGS_0_BASEADDR != OV_CTRL_BASE || XPAR_OVERLAY_REGS_0_HIGHADDR != (OV_CTRL_BASE+0xffffu)
#error Overlay register HDF/BSP address mismatch
#endif
#if XPAR_SNAPSHOT_BRAM_CTRL_S_AXI_BASEADDR != OV_BRAM_BASE || XPAR_SNAPSHOT_BRAM_CTRL_S_AXI_HIGHADDR != (OV_BRAM_BASE+0x1ffffu)
#error Snapshot HDF/BSP address mismatch
#endif

static uint32_t read_word(void *ctx,uint32_t address){(void)ctx;return Xil_In32(address);}
static void write_word(void *ctx,uint32_t address,uint32_t value){(void)ctx;Xil_Out32(address,value);}
static void io_barrier(void *ctx){(void)ctx;SYNCHRONIZE_IO;}
static int wait_idle(gray_snapshot_hw_t *hw){
    XTime begin,now;
    unsigned tries;
    XTime_GetTime(&begin);
    for(tries=0;tries<100000u;tries++){
        uint32_t status=gray_snapshot_read(hw,OV_STATUS);
        if((status&31u)==16u)return 0;
        XTime_GetTime(&now);
        if(now-begin>=(XTime)(COUNTS_PER_SECOND/20u))break;
    }
    return -703;
}
int overlay_target_init(gray_snapshot_hw_t *hw){
    const gray_snapshot_io_t io={0,read_word,write_word,io_barrier};
    /* Zynq's A9 (ID_MMFR0.VMSA=3) has section XN at bit4 but no PXN at
     * bit0. SDK 2018.3 EXECUTE_NEVER sets both; bit0 would invalidate this
     * first-level section. Keep Device/Shareable and the section type 0b10. */
    const uint32_t section_attributes=DEVICE_MEMORY|SHAREABLE|(1u<<4);
    uint32_t epoch;
    int rc;
    if(!hw)return -700;
    /* Cortex-A9 first-level mappings have 1 MiB granularity. The CTRL section
     * contains only peripheral registers; no DDR/VDMA/UI buffers are remapped.
     * Snapshot is shareable Device + XN: no cache reads or speculative loads. */
    Xil_SetTlbAttributes(OV_CTRL_BASE&0xfff00000u,section_attributes);
    Xil_SetTlbAttributes(OV_BRAM_BASE&0xfff00000u,section_attributes);
    SYNCHRONIZE_IO;
    rc=gray_snapshot_hw_init(hw,&io);if(rc)return rc;
    if(gray_snapshot_read(hw,OV_ID_VERSION)!=0x424f0001u)return -701;
    gray_snapshot_write(hw,OV_COMMAND,OV_CMD_CANCEL);
    gray_snapshot_write(hw,OV_COMMAND,OV_CMD_MAILBOX_RECOVER);
    rc=wait_idle(hw);if(rc)return rc;
    epoch=gray_snapshot_read(hw,OV_EPOCH)+1u;if(!epoch)epoch=1u;
    gray_snapshot_write(hw,OV_EPOCH,epoch);
    rc=wait_idle(hw);if(rc)return rc;
    if(gray_snapshot_read(hw,OV_EPOCH)!=epoch)return -704;
    return 0;
}
