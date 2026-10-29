#ifndef CNN5_TYPES_H
#define CNN5_TYPES_H
#include <stddef.h>
#include <stdint.h>

/* Portable offline C contract, not an MMIO layout or a release ABI. */
enum { C5_OK=0, C5_PENDING=1, C5_BAD_ARG=-5001, C5_BUSY=-5002,
       C5_STALE=-5003, C5_UNSUPPORTED=-5004, C5_FAULT=-5005,
       C5_LOCKED=-5006, C5_TIMEOUT=-5007, C5_EXHAUSTED=-5008 };
typedef struct { int32_t x0,y0,x1,y1; } c5_box_t;
typedef struct {
    uint32_t epoch,frame_id,request_id;
    uint64_t source_ticks; /* PL clock ticks; never PS microseconds. */
} c5_source_t;
typedef enum {
    C5_HAAR=0, C5_OBSERVE=1, C5_FILTER=2, C5_SHADOW=3, C5_DETECT=4
} c5_mode_t;

#endif
