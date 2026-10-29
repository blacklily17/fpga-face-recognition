#ifndef OVERLAY_TYPES_H
#define OVERLAY_TYPES_H
#include <stdint.h>

typedef struct {
    uint32_t valid, x, y, w, h;
    uint32_t frame_id, request_id, epoch;
    uint64_t source_ticks, result_ticks;
    uint32_t reason, sequence;
} bbox_message_t;
typedef struct {
    uint32_t request_id, frame_id, epoch;
    uint64_t source_ticks, commit_ticks;
} snapshot_meta_t;
enum { BOX_VALID=0,BOX_NO_FACE=1,BOX_DETECT_ERROR=2,BOX_ILLEGAL=3,
       BOX_EXPIRED=4,BOX_CANCELLED=5,BOX_CAMERA_FAULT=6,BOX_RESET=7 };
#define OV_BOX_WORDS 14u

/* Check full-width integers before any 9-bit RTL narrowing. */
static inline int bbox_geometry_valid(const bbox_message_t *m) {
    return m->valid==1u && m->x<400u && m->y<240u && m->w>0u && m->h>0u &&
           m->w<=400u-m->x && m->h<=240u-m->y;
}
static inline void bbox_pack(const bbox_message_t *m,uint32_t words[OV_BOX_WORDS]) {
    int illegal=(m->valid>1u) || (m->valid==1u && !bbox_geometry_valid(m));
    words[0]=illegal?0u:m->valid;
    words[1]=m->x; words[2]=m->y; words[3]=m->w; words[4]=m->h;
    words[5]=m->frame_id; words[6]=m->request_id; words[7]=m->epoch;
    words[8]=(uint32_t)m->source_ticks; words[9]=(uint32_t)(m->source_ticks>>32);
    words[10]=(uint32_t)m->result_ticks; words[11]=(uint32_t)(m->result_ticks>>32);
    words[12]=illegal?BOX_ILLEGAL:m->reason; words[13]=m->sequence;
}
#endif
