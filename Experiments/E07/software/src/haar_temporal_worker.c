#include "haar_temporal_worker.h"
#include <string.h>

#define TEMPORAL_MIN_FACE 80
#define TEMPORAL_LOCAL_LIMIT 4U

void haar_temporal_worker_reset(haar_temporal_worker_t *state)
{
    if(state)memset(state,0,sizeof *state);
}
static int supported(const haar_worker_t *worker,const haar_detect_result_t *result)
{
    int32_t i;
    if(!worker || !result || result->n_candidates<3)return 0;
    for(i=0;i<result->n_candidates;++i)
        if(!haar_similar_rects(&worker->boxes[i],&result->box,0.35))return 0;
    return 1;
}
static int reusable(const haar_worker_t *worker,const haar_detect_result_t *result)
{
    return result->found && result->box.w>=TEMPORAL_MIN_FACE &&
        result->box.h>=TEMPORAL_MIN_FACE && supported(worker,result);
}
static int start_global(haar_temporal_worker_t *state,haar_worker_t *worker,
                        const uint8_t *gray,const haar_search_params_t *params)
{
    int rc=haar_worker_begin(worker,gray,params);
    state->stage=2;
    if(rc<0){state->stage=0;state->status=rc;state->valid=0;}
    return rc;
}
int haar_temporal_worker_begin(haar_temporal_worker_t *state,haar_worker_t *worker,
    const uint8_t *gray,int32_t width,int32_t height,
    const haar_search_params_t *params,uint64_t now,uint64_t max_age)
{
    haar_box_t region;
    haar_search_params_t local;
    int32_t pad,right,bottom;
    int rc;
    if(!state || !worker || !gray || !params || width<=0 || height<=0)
        return HAAR_SR_ERR_ARG;
    memset(&state->result,0,sizeof state->result);
    state->local_windows=state->global_windows=0;
    state->local_levels=state->global_levels=0;
    state->status=HAAR_WORKER_BUSY;
    state->global_params=*params;
    if(state->valid && state->local_streak<TEMPORAL_LOCAL_LIMIT && max_age &&
       now-state->timestamp<=max_age){
        pad=state->previous.w/2;
        right=state->previous.x+state->previous.w+pad;
        bottom=state->previous.y+state->previous.h+pad;
        region.x=state->previous.x-pad;region.y=state->previous.y-pad;
        if(region.x<0) region.x=0;
        if(region.y<0) region.y=0;
        if(right>width) right=width;
        if(bottom>height) bottom=height;
        region.w=right-region.x;region.h=bottom-region.y;
        local=*params;local.min_size=state->previous.w*3/4;
        local.max_size=(state->previous.w*5+3)/4;
        if(local.min_size<params->min_size)local.min_size=params->min_size;
        if(params->max_size && local.max_size>params->max_size)
            local.max_size=params->max_size;
        state->mode=1;state->stage=1;
        rc=haar_worker_begin_region(worker,gray,&local,&region);
        if(!rc)return 0;
        if(rc!=HAAR_SR_ERR_NO_SCALES && rc!=HAAR_SR_ERR_OVERFLOW){
            state->valid=0;state->stage=0;state->status=rc;return rc;
        }
        state->mode=2;
        return start_global(state,worker,gray,params);
    }
    state->mode=0;
    return start_global(state,worker,gray,params);
}
int haar_temporal_worker_step(haar_temporal_worker_t *state,haar_worker_t *worker,
                              uint32_t max_units,uint64_t now)
{
    haar_detect_result_t result;
    int rc,status;
    if(!state || !worker)return HAAR_SR_ERR_ARG;
    if(!state->stage)return state->status<0?state->status:0;
    rc=haar_worker_step(worker,max_units);
    if(rc>0)return 1;
    status=haar_worker_result(worker,&result);
    if(state->stage==1){
        state->local_windows=(uint32_t)result.n_windows;
        state->local_levels=(uint32_t)result.n_levels;
        if(status==HAAR_DR_OK && reusable(worker,&result) &&
           haar_similar_rects(&state->previous,&result.box,0.25)){
            state->result=result;state->previous=result.box;state->timestamp=now;
            ++state->local_streak;state->valid=1;state->status=status;state->stage=0;
            return 0;
        }
        if(status<0 && status!=HAAR_SR_ERR_NO_SCALES &&
           status!=HAAR_SR_ERR_OVERFLOW){
            state->valid=0;state->status=status;state->stage=0;return status;
        }
        state->mode=2;
        rc=start_global(state,worker,worker->gray,&state->global_params);
        return rc<0?rc:1;
    }
    state->global_windows=(uint32_t)result.n_windows;
    state->global_levels=(uint32_t)result.n_levels;
    state->result=result;state->status=status;state->stage=0;state->local_streak=0;
    if(status==HAAR_DR_OK && reusable(worker,&result) && result.box.x>=0 &&
       result.box.y>=0 && result.box.x+result.box.w<=worker->width &&
       result.box.y+result.box.h<=worker->height){
        state->previous=result.box;state->timestamp=now;state->valid=1;
    }else state->valid=0;
    return status<0?status:0;
}
int haar_temporal_worker_result(const haar_temporal_worker_t *state,
                                haar_detect_result_t *result)
{
    if(!state || !result)return HAAR_SR_ERR_ARG;
    if(state->stage){memset(result,0,sizeof *result);return HAAR_WORKER_BUSY;}
    *result=state->result;return state->status;
}
