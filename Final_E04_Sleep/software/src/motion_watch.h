#ifndef MOTION_WATCH_H
#define MOTION_WATCH_H
#include <stdint.h>
#define MOTION_WIDTH 80U
#define MOTION_HEIGHT 48U
#define MOTION_PIXELS (MOTION_WIDTH*MOTION_HEIGHT)
#define MOTION_REBASE_FRAMES 4U
#define MOTION_REBASE_TIMEOUT_US 2500000U
typedef struct {
    uint8_t previous[MOTION_PIXELS];
    uint32_t frame_id,epoch,frames,changed,events;
    unsigned have_previous,history;
    unsigned paused,prime_left;
    int mean;
} motion_watch;
void motion_watch_reset(motion_watch *);
void motion_watch_inhibit(motion_watch *);
void motion_watch_rearm(motion_watch *,unsigned frames);
/* 输入必须是已完整复制、且释放硬件所有权的 400x240 私有灰度图。 */
int motion_watch_frame(motion_watch *,const uint8_t *,uint32_t frame,uint32_t epoch);
#endif
