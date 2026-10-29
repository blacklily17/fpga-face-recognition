#ifndef HAAR_TEMPORAL_WORKER_H
#define HAAR_TEMPORAL_WORKER_H
#include "haar_worker.h"

typedef struct {
    haar_box_t previous;
    haar_detect_result_t result;
    haar_search_params_t global_params;
    uint64_t timestamp;
    uint32_t valid,local_streak,mode;
    uint32_t local_windows,global_windows,local_levels,global_levels;
    int stage,status;
} haar_temporal_worker_t;

void haar_temporal_worker_reset(haar_temporal_worker_t *state);
int haar_temporal_worker_begin(haar_temporal_worker_t *state,haar_worker_t *worker,
    const uint8_t *gray,int32_t width,int32_t height,
    const haar_search_params_t *params,uint64_t now,uint64_t max_age);
/* 1 pending, 0 completed, negative error. */
int haar_temporal_worker_step(haar_temporal_worker_t *state,haar_worker_t *worker,
                              uint32_t max_units,uint64_t now);
int haar_temporal_worker_result(const haar_temporal_worker_t *state,
                                haar_detect_result_t *result);
#endif
