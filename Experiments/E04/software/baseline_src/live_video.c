/* The proven register/cache driver is compiled as a read-only dependency.
 * Unlike capture_video.c, this adapter never draws a save/discard menu. */
#include "live_video.h"
#include "capture_hw.h"
#include <string.h>
static capture_video_ops video;
static int initialized,valid,running;
int live_video_init(void){
    int rc;valid=0;initialized=0;running=0;rc=capture_hw_init(&video);
    if(!video.raw || !video.display || video.raw==video.display ||
       !video.stop_capture || !video.capture_single || !video.start_live ||
       !video.step_live || !video.show_static || !video.invalidate ||
       !video.flush || !video.barrier)return -401;
    /* Error screen callbacks remain available even if sensor init failed. */
    initialized=1;return rc;
}
int live_video_start(void){
    int rc;
    valid=0;running=0;if(!initialized)return -401;
    rc=video.start_live(video.ctx);if(!rc)running=1;return rc;
}
int live_video_step(void){if(!initialized)return -401;return video.step_live(video.ctx);}
int live_video_service(void){return running?live_video_step():0;}
void live_video_quiesced(void){running=0;valid=0;}
int live_video_capture(void){
    uint32_t dma=0,upstream=0;int rc;valid=0;running=0;
    if(!initialized)return -401;
    rc=video.stop_capture(video.ctx);if(rc)return rc;
    rc=video.capture_single(video.ctx,(uintptr_t)video.raw,&dma,&upstream);if(rc)return rc;
    if((dma&0xff0u) || !(dma&1u) || !(dma&0x1000u) ||
       (upstream>>16)!=0x5640u || (upstream&0xffu)!=0x81u)return -120;
    video.invalidate(video.ctx,(uintptr_t)video.raw,CAPTURE_RGB_BYTES);video.barrier(video.ctx);
    memcpy(video.display,video.raw,CAPTURE_RGB_BYTES);
    video.flush(video.ctx,(uintptr_t)video.display,CAPTURE_RGB_BYTES);video.barrier(video.ctx);
    rc=video.show_static(video.ctx,(uintptr_t)video.display);if(rc)return rc;
    valid=1;return 0;
}
int live_video_error(int error){
    int stop_rc,show_rc;(void)error;valid=0;running=0;if(!initialized)return -401;
    stop_rc=video.stop_capture(video.ctx);
    memset(video.display,0,CAPTURE_RGB_BYTES);
    video.flush(video.ctx,(uintptr_t)video.display,CAPTURE_RGB_BYTES);video.barrier(video.ctx);
    show_rc=video.show_static(video.ctx,(uintptr_t)video.display);
    return stop_rc?stop_rc:show_rc;
}
int live_video_valid(void){return valid;}
unsigned live_video_keys(void){return capture_hw_keys();}
uint64_t live_video_ms(void){return capture_hw_ms();}
