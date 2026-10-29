#ifndef GRAY_SNAPSHOT_HW_H
#define GRAY_SNAPSHOT_HW_H
#include <stdint.h>
#include "overlay_types.h"
// Callbacks are hardware boundaries, not OS dependencies. Target binding must
// use Device/non-cacheable BRAM and an ARM memory barrier (Task7 BSP gate).
typedef struct {
    void *context;
    uint32_t (*read32)(void *,uint32_t);
    void (*write32)(void *,uint32_t,uint32_t);
    void (*barrier)(void *);
} gray_snapshot_io_t;
typedef struct {gray_snapshot_io_t io;} gray_snapshot_hw_t;
int gray_snapshot_hw_init(gray_snapshot_hw_t *,const gray_snapshot_io_t *);
uint32_t gray_snapshot_read(gray_snapshot_hw_t *,uint32_t offset);
void gray_snapshot_write(gray_snapshot_hw_t *,uint32_t offset,uint32_t value);
int gray_snapshot_now(gray_snapshot_hw_t *,uint64_t *ticks);
int gray_snapshot_meta(gray_snapshot_hw_t *,snapshot_meta_t *);
uint32_t gray_snapshot_word(gray_snapshot_hw_t *,uint32_t word);
void gray_snapshot_barrier(gray_snapshot_hw_t *);
#endif
