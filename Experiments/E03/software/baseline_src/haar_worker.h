#ifndef HAAR_WORKER_H
#define HAAR_WORKER_H
#include "haar_detect.h"

#define HAAR_WORKER_CANCELLED (-20)
#define HAAR_WORKER_BUSY (-21)
#define HAAR_WORKER_CAPACITY 64
typedef enum {
    HAAR_WORKER_DONE=0, HAAR_WORKER_LEVEL, HAAR_WORKER_RESIZE,
    HAAR_WORKER_INTEGRAL, HAAR_WORKER_WINDOW, HAAR_WORKER_MERGE_INIT,
    HAAR_WORKER_PAIR, HAAR_WORKER_GROUP_INIT, HAAR_WORKER_GROUP_ACCUM,
    HAAR_WORKER_SELECT, HAAR_WORKER_AVERAGE, HAAR_WORKER_FINISH
} haar_worker_phase_t;

/* Caller owns one static workspace and immutable gray image for the entire job.
 * No heap allocation, no shared global workspace. Never place search on ARM stack.
 * max_units bounds work, NOT wall time; target 5ms unit timing must be measured. */
typedef struct {
    haar_search_ws_t *search;
    const uint8_t *gray;
    int32_t width,height,capacity;
    haar_search_params_t params;
    float scales[HAAR_SEARCH_MAX_LEVELS];
    haar_geometry_t geometry;
    haar_box_t region;
    haar_image_t image;
    int32_t level,row,x,y,x_begin,x_end,y_end,i,j,best_root,average_count;
    int64_t sx,sy,sw,sh;
    haar_box_t boxes[HAAR_WORKER_CAPACITY];
    int32_t parent[HAAR_WORKER_CAPACITY];
    haar_group_t groups[HAAR_WORKER_CAPACITY];
    haar_detect_result_t result;
    haar_worker_phase_t phase;
    uint32_t units_last;
    uint64_t total_units;
    int cancelled,status,region_enabled;
} haar_worker_t;

int haar_worker_init(haar_worker_t*,haar_search_ws_t*,int32_t width,int32_t height,int32_t capacity);
int haar_worker_begin(haar_worker_t*,const uint8_t *gray,const haar_search_params_t*);
/* Same global scale grid as haar_worker_begin, but only evaluates windows
 * wholly contained in region. Resize/integral semantics stay unchanged. */
int haar_worker_begin_region(haar_worker_t*,const uint8_t *gray,
                             const haar_search_params_t*,const haar_box_t *region);
/* 1 pending, 0 completed, negative error. Zero budget does not advance. */
int haar_worker_step(haar_worker_t*,uint32_t max_units);
void haar_worker_cancel(haar_worker_t*);
/* 0 face, 1 no face, negative error/busy. Pending/errors never expose a box. */
int haar_worker_result(const haar_worker_t*,haar_detect_result_t*);
#endif
