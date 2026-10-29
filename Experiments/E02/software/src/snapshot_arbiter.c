#include "snapshot_arbiter.h"
#include "overlay_regs.h"
#include <string.h>
static int valid_owner(snapshot_owner_t o) {return o==SNAPSHOT_BACKGROUND || o==SNAPSHOT_FOREGROUND;}
static int same_meta(const snapshot_meta_t *a,const snapshot_meta_t *b) {
    return a->request_id==b->request_id && a->frame_id==b->frame_id && a->epoch==b->epoch &&
        a->source_ticks==b->source_ticks && a->commit_ticks==b->commit_ticks;
}
void snapshot_arbiter_init(snapshot_arbiter_t *a,gray_snapshot_hw_t *hw) {
    if(!a) return;
    memset(a,0,sizeof *a);a->hw=hw;
}
int snapshot_cancel(snapshot_arbiter_t *a,snapshot_owner_t o) {
    if(!a || !a->hw || !valid_owner(o) || a->owner!=o) return -1;
    gray_snapshot_write(a->hw,OV_COMMAND,OV_CMD_CANCEL);
    a->owner=SNAPSHOT_NONE;a->have_meta=0;a->destination=0;
    return 0;
}
static int fail(snapshot_arbiter_t *a,int error) {
    (void)snapshot_cancel(a,a->owner);return error;
}
int snapshot_begin(snapshot_arbiter_t *a,snapshot_owner_t o) {
    uint64_t now;
    uint32_t status,epoch;
    if(!a || !a->hw || !valid_owner(o)) return -1;
    // Preemption is explicit: foreground cancels a background job through its
    // owner before requesting a new one. No consumer can silently steal READY.
    if(a->owner!=SNAPSHOT_NONE) return 1;
    status=gray_snapshot_read(a->hw,OV_STATUS);
    epoch=gray_snapshot_read(a->hw,OV_EPOCH);
    if(status&4u || !epoch) return -3;
    if(status&3u) return 1;
    if(gray_snapshot_now(a->hw,&now)) return -4;
    a->owner=o;a->epoch=epoch;a->start_ticks=now;a->offset=0;
    a->request_id=++a->next_request;a->have_meta=0;a->destination=0;
    gray_snapshot_write(a->hw,OV_REQUEST_ID,a->request_id);
    gray_snapshot_write(a->hw,OV_COMMAND,OV_CMD_REQUEST);
    return 0;
}
int snapshot_copy_step(snapshot_arbiter_t *a,snapshot_owner_t o,uint8_t *dst,size_t len,
                       uint32_t max_words,snapshot_meta_t *result) {
    uint64_t now;
    uint32_t status,words,n;
    snapshot_meta_t current;
    if(!a || !a->hw || !valid_owner(o) || a->owner!=o) return -1;
    if(!dst || len<OV_GRAY_BYTES || !result || !max_words) return fail(a,-2);
    if(a->destination && a->destination!=dst) return fail(a,-2);
    if(gray_snapshot_read(a->hw,OV_EPOCH)!=a->epoch) return fail(a,-3);
    if(gray_snapshot_now(a->hw,&now)) return fail(a,-4);
    if(now-a->start_ticks>=OV_TICKS_PER_SECOND) return fail(a,-5);
    status=gray_snapshot_read(a->hw,OV_STATUS);
    if(status&4u) return fail(a,-6);
    if(!(status&2u)) {
        if(a->have_meta) return fail(a,-7);
        return 1;
    }
    if(gray_snapshot_meta(a->hw,&current) || current.request_id!=a->request_id ||
       current.epoch!=a->epoch) return fail(a,-7);
    if(!a->have_meta) {
        if(a->seen[o] && a->last_epoch[o]==a->epoch && a->last_frame[o]==current.frame_id)
            return fail(a,-8);
        a->meta=current;a->have_meta=1;a->destination=dst;
    } else if(!same_meta(&a->meta,&current)) return fail(a,-7);
    words=max_words>256u?256u:max_words;
    if(words>OV_GRAY_BYTES/4u-a->offset) words=OV_GRAY_BYTES/4u-a->offset;
    for(n=0;n<words;n++) {
        uint32_t value=gray_snapshot_word(a->hw,a->offset+n);
        uint32_t i=4u*(a->offset+n);
        dst[i]=(uint8_t)value;dst[i+1]=(uint8_t)(value>>8);
        dst[i+2]=(uint8_t)(value>>16);dst[i+3]=(uint8_t)(value>>24);
    }
    a->offset+=words;
    // Validate after EVERY slice, including final one: bus resets must never
    // turn a partially copied or mixed-generation image into a published frame.
    gray_snapshot_barrier(a->hw);
    if(gray_snapshot_read(a->hw,OV_EPOCH)!=a->epoch ||
       gray_snapshot_meta(a->hw,&current) || !same_meta(&a->meta,&current)) return fail(a,-7);
    if(a->offset<OV_GRAY_BYTES/4u) return 1;
    gray_snapshot_write(a->hw,OV_COMMAND,OV_CMD_RELEASE);
    *result=a->meta;a->last_frame[o]=a->meta.frame_id;a->last_epoch[o]=a->epoch;a->seen[o]=1;
    a->owner=SNAPSHOT_NONE;a->have_meta=0;a->destination=0;
    return 0;
}
