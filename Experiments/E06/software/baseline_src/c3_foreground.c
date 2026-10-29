#include "c3_foreground.h"
static uint64_t next_ticket(void *ctx){
    c3_detector_t *d=(c3_detector_t *)ctx;
    return d->last_ticket==UINT64_MAX?0:d->last_ticket+1;
}
static int begin(void *ctx,const uint8_t *image,const c3_detect_key_t *key){
    return c3_detector_begin((c3_detector_t *)ctx,image,key);
}
static int step(void *ctx,haar_detect_result_t *result,c3_detect_key_t *key){
    return c3_detector_step((c3_detector_t *)ctx,result,key);
}
static void cancel(void *ctx){c3_detector_cancel((c3_detector_t *)ctx);}
static int safe(void *ctx){return c3_detector_safe((c3_detector_t *)ctx);}
void c3_detector_operations(c3_detector_t *d,foreground_detector_ops_t *ops){
    ops->context=d;ops->next_ticket=next_ticket;ops->begin=begin;
    ops->step=step;ops->cancel=cancel;ops->safe=safe;
}
int foreground_bind_detector(foreground_job_t *job,c3_detector_t *d){
    foreground_detector_ops_t ops;
    if(!d || !d->initialized)return C5_BAD_ARG;
    c3_detector_operations(d,&ops);
    return foreground_bind_detection_ops(job,&ops);
}
int face_scheduler_bind_detector(face_scheduler_t *scheduler,c3_detector_t *d){
    foreground_detector_ops_t ops;
    if(!d || !d->initialized)return C5_BAD_ARG;
    c3_detector_operations(d,&ops);
    return face_scheduler_bind_detection_ops(scheduler,&ops);
}
