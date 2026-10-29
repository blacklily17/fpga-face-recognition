#ifndef CNN_TARGET_H
#define CNN_TARGET_H
#include "c3_detector.h"
#include "gray_snapshot_hw.h"
int cnn_target_init(gray_snapshot_hw_t *);
c3_detector_t *cnn_target_detector(void);
void cnn_target_cancel(void);
/* 0 physically safe, 1 still draining, negative quarantined. Never memset. */
int cnn_target_quiesce_step(void);
#endif
