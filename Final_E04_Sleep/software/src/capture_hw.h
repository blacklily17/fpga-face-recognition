#ifndef CAPTURE_HW_H
#define CAPTURE_HW_H
#include "capture_video.h"
int capture_hw_init(capture_video_ops *ops);
uint64_t capture_hw_ms(void);
unsigned capture_hw_keys(void);
/* 仅停止摄像头预览的 MM2S；S2MM、灰度快照、TFT VDMA 不受影响。 */
int capture_hw_display_sleep(int off);
#endif
