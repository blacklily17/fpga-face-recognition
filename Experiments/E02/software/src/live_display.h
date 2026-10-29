#ifndef LIVE_DISPLAY_H
#define LIVE_DISPLAY_H
#include <stdint.h>
typedef struct {
    void *ctx;
    uint32_t (*read)(void *,uint32_t);
    void (*write)(void *,uint32_t,uint32_t);
    uint64_t (*ms)(void *);
} live_display_io;
int live_display_init(const live_display_io *io);
int live_display_submit(unsigned status,unsigned label);
#endif
