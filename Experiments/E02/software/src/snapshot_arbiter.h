#ifndef SNAPSHOT_ARBITER_H
#define SNAPSHOT_ARBITER_H
#include <stddef.h>
#include "gray_snapshot_hw.h"
typedef enum {SNAPSHOT_NONE=0,SNAPSHOT_BACKGROUND=1,SNAPSHOT_FOREGROUND=2} snapshot_owner_t;
typedef struct {
    gray_snapshot_hw_t *hw;
    snapshot_owner_t owner;
    uint32_t next_request,request_id,epoch,offset,last_frame[3],last_epoch[3];
    unsigned have_meta,seen[3];
    uint64_t start_ticks;
    snapshot_meta_t meta;
    uint8_t *destination;
} snapshot_arbiter_t;
void snapshot_arbiter_init(snapshot_arbiter_t *,gray_snapshot_hw_t *);
// 0 = request accepted; 1 = ordinary contention/busy; negative = error.
int snapshot_begin(snapshot_arbiter_t *,snapshot_owner_t);
// Only 0 means a complete private image + valid metadata, after release.
// 1 = still pending; negative = no usable frame. Never run Haar on a 1 result.
int snapshot_copy_step(snapshot_arbiter_t *,snapshot_owner_t,uint8_t *,size_t,
                       uint32_t max_words,snapshot_meta_t *);
int snapshot_cancel(snapshot_arbiter_t *,snapshot_owner_t);
#endif
