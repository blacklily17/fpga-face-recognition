#include "gray_snapshot_hw.h"
#include "overlay_regs.h"
int gray_snapshot_hw_init(gray_snapshot_hw_t *hw,const gray_snapshot_io_t *io) {
    if(!hw || !io || !io->read32 || !io->write32 || !io->barrier) return -1;
    hw->io=*io;return 0;
}
uint32_t gray_snapshot_read(gray_snapshot_hw_t *hw,uint32_t offset) {
    return hw->io.read32(hw->io.context,OV_CTRL_BASE+offset);
}
void gray_snapshot_barrier(gray_snapshot_hw_t *hw) {hw->io.barrier(hw->io.context);}
void gray_snapshot_write(gray_snapshot_hw_t *hw,uint32_t offset,uint32_t value) {
    gray_snapshot_barrier(hw);
    hw->io.write32(hw->io.context,OV_CTRL_BASE+offset,value);
    gray_snapshot_barrier(hw);
}
int gray_snapshot_now(gray_snapshot_hw_t *hw,uint64_t *ticks) {
    unsigned n;
    if(!hw || !ticks) return -1;
    // Free-running counter can roll over between individual AXI reads. Bound
    // retries: a failing bus must not monopolise the cooperative UI loop.
    for(n=0;n<8;n++) {
        uint32_t a=gray_snapshot_read(hw,OV_TIME_HI);
        uint32_t lo=gray_snapshot_read(hw,OV_TIME_LO);
        uint32_t b=gray_snapshot_read(hw,OV_TIME_HI);
        if(a==b) {*ticks=((uint64_t)b<<32)|lo;return 0;}
    }
    return -2;
}
int gray_snapshot_meta(gray_snapshot_hw_t *hw,snapshot_meta_t *meta) {
    snapshot_meta_t m;
    if(!hw || !meta || !(gray_snapshot_read(hw,OV_STATUS)&2u)) return -1;
    gray_snapshot_barrier(hw);
    m.request_id=gray_snapshot_read(hw,OV_SNAP_REQUEST_ID);
    m.frame_id=gray_snapshot_read(hw,OV_SNAP_FRAME_ID);
    m.epoch=gray_snapshot_read(hw,OV_SNAP_EPOCH);
    m.source_ticks=(uint64_t)gray_snapshot_read(hw,OV_SNAP_SOF_HI)<<32;
    m.source_ticks|=gray_snapshot_read(hw,OV_SNAP_SOF_LO);
    m.commit_ticks=(uint64_t)gray_snapshot_read(hw,OV_SNAP_COMMIT_HI)<<32;
    m.commit_ticks|=gray_snapshot_read(hw,OV_SNAP_COMMIT_LO);
    gray_snapshot_barrier(hw);
    if(!(gray_snapshot_read(hw,OV_STATUS)&2u)) return -1;
    *meta=m;return 0;
}
uint32_t gray_snapshot_word(gray_snapshot_hw_t *hw,uint32_t word) {
    // Bound even direct driver callers. There is no PS RAM write API.
    if(word>=OV_GRAY_BYTES/4u) return 0;
    return hw->io.read32(hw->io.context,OV_BRAM_BASE+4u*word);
}
