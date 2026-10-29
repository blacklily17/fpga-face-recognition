#ifndef C3_FOREGROUND_H
#define C3_FOREGROUND_H
#include "c3_detector.h"
#include "foreground_job.h"
#include "face_scheduler.h"
/* One detector instance, shared ticket sequence, mutually exclusive owners. */
void c3_detector_operations(c3_detector_t *,foreground_detector_ops_t *);
int foreground_bind_detector(foreground_job_t *,c3_detector_t *);
int face_scheduler_bind_detector(face_scheduler_t *,c3_detector_t *);
#endif
