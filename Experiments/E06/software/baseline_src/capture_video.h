#ifndef CAPTURE_VIDEO_H
#define CAPTURE_VIDEO_H
#include "capture_protocol.h"
#include <stddef.h>
typedef struct {
    void *ctx;
    uint8_t *raw, *display;
    int (*stop_capture)(void *ctx);
    int (*capture_single)(void *ctx,uintptr_t dst,uint32_t *dma,uint32_t *upstream);
    int (*start_live)(void *ctx);
    int (*step_live)(void *ctx);
    int (*show_static)(void *ctx,uintptr_t dst);
    void (*invalidate)(void *ctx,uintptr_t addr,unsigned len);
    void (*flush)(void *ctx,uintptr_t addr,unsigned len);
    void (*barrier)(void *ctx);
    void (*diagnose)(void *ctx,uint32_t *dma,uint32_t *upstream);
} capture_video_ops;
typedef struct {
    capture_video_ops ops;
    uint32_t dma_status,upstream_status;
    int valid_photo;
    int display_error; /* Secondary error; never replaces the capture failure. */
} capture_video;
int capture_video_init(capture_video *v,const capture_video_ops *ops);
int capture_video_step_live(capture_video *v);
int capture_video_take(capture_video *v);
int capture_video_resume(capture_video *v);
int capture_video_ui(capture_video *v,uint32_t state,uint64_t id,int error);
int capture_video_error(capture_video *v,int error);
#endif
