#ifndef LIVE_VIDEO_H
#define LIVE_VIDEO_H
#include <stdint.h>
int live_video_init(void);
int live_video_start(void);
int live_video_step(void);
/* Every scheduler/SD safe-point, independent of UI page; idle before first
 * startup. Mark quiesced only AFTER the fault path proves VDMA stopped. */
int live_video_service(void);
void live_video_quiesced(void);
int live_video_capture(void);
int live_video_error(int error);
int live_video_valid(void);
unsigned live_video_keys(void);
uint64_t live_video_ms(void);
#endif
