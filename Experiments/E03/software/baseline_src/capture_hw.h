#ifndef CAPTURE_HW_H
#define CAPTURE_HW_H
#include "capture_video.h"
int capture_hw_init(capture_video_ops *ops);
uint64_t capture_hw_ms(void);
unsigned capture_hw_keys(void);
#endif
