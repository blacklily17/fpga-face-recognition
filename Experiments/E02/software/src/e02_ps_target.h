#ifndef E02_PS_TARGET_H
#define E02_PS_TARGET_H
#include "e02_ps_detector.h"
#include "gray_snapshot_hw.h"
int e02_ps_target_init(gray_snapshot_hw_t *);
e02_ps_detector_t *e02_ps_target_detector(void);
void e02_ps_target_cancel(void);
int e02_ps_target_quiesce_step(void); /* 0 safe, 1 pending, negative fault */
#endif
