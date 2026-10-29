#ifndef SNAPSHOT_PROCESS_H
#define SNAPSHOT_PROCESS_H
#include <stddef.h>
#include "snapshot_result.h"
#include "haar_detect.h"
typedef struct {
    haar_detect_ws_t detect;
    haar_box_t boxes[64];
    int32_t parent[64];
    haar_group_t groups[64];
    uint8_t scratch[57600];
} snapshot_work;
/* Caller keeps metadata; this resets detection fields even after a previous
 * successful job. capacity in 1..64; no malloc. Work must not be on stack. */
int snapshot_detect_roi(const uint8_t *gray, uint8_t *roi, snapshot_work *work,
                        int capacity, snapshot_result *result, haar_now_fn now);

/* M13 path: detect the face and return the unscaled square crop. */
int snapshot_detect_roi_m13(const uint8_t *gray, uint8_t *roi,
                            size_t roi_capacity, snapshot_work *work,
                            int capacity, snapshot_result *result,
                            haar_now_fn now);
#endif
