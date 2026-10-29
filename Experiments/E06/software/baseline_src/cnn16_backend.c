#include "cnn16_backend.h"
#include <string.h>
#include <math.h>

typedef char c16_tile_input_must_be_cache_aligned[(offsetof(c16_workspace_t,tile_input)%32u)==0?1:-1];
typedef char c16_tile_output_must_be_cache_aligned[(offsetof(c16_workspace_t,tile_output)%32u)==0?1:-1];
enum { B_IDLE=0,B_PREP,B_GATHER,B_START,B_DMA,B_SCATTER,B_HEAD,B_POST,B_DONE,B_CANCEL };
static const uint32_t widths[9]={160,160,80,80,40,40,20,20,10};
static const uint32_t heights[9]={96,96,48,48,24,24,12,12,6};
static uint32_t minimum(uint32_t a,uint32_t b){return a<b?a:b;}
static uint64_t now(c16_backend_t *b){return b->dma.io.now_us(b->dma.io.context);}
int c16_backend_init(c16_backend_t *b,c5_legacy_backend_t *legacy,const c16_model_t *model){
    unsigned i,j;int rc;
    if(!b || !legacy || !legacy->adapter || !legacy->adapter->driver || !model)return C5_BAD_ARG;
    for(i=0;i<5;++i)if(model->conv[i].in_channels!=(i?16u:1u) || model->conv[i].out_channels!=16 ||
        model->conv[i].weights_count!=(i?2304u:144u) || model->conv[i].bias_count!=16 ||
        !model->conv[i].weights || !model->conv[i].bias || model->conv[i].relu!=1 || model->conv[i].shift>63)return C5_BAD_ARG;
    for(i=0;i<2;++i){
        for(j=0;j<5;++j)if(!isfinite(model->head[i].scales[j]) || model->head[i].scales[j]<=0)return C5_BAD_ARG;
        for(j=0;j<2;++j)if(!isfinite(model->anchors[i][j]) || model->anchors[i][j]<=0)return C5_BAD_ARG;
    }
    if(!isfinite(model->post.threshold) || model->post.threshold<0 || model->post.threshold>1 ||
       !isfinite(model->post.nms_iou) || model->post.nms_iou<0 || model->post.nms_iou>1 ||
       !model->post.top_k || model->post.top_k>100 || !model->post.max_detections || model->post.max_detections>16)return C5_BAD_ARG;
    memset(b,0,sizeof *b);b->legacy=legacy;b->model=model;
    rc=c16_dma_init(&b->dma,&legacy->adapter->driver->io,b->work.tile_input,sizeof b->work.tile_input,
                    b->work.tile_output,sizeof b->work.tile_output);
    return rc;
}
int c16_backend_safe(void *context){
    c16_backend_t *b=context;int old;
    if(!b || !b->legacy)return C5_BAD_ARG;
    if(b->dma.phase==CNN_LOCKED)return C5_LOCKED;
    old=c5_legacy_backend_safe(b->legacy);if(old!=C5_OK)return old;
    return !b->route && c16_dma_safe(&b->dma)?C5_OK:C5_PENDING;
}
int c16_backend_begin(void *context,const c5_job_t *job){
    c16_backend_t *b=context;int rc;
    if(!b || !job || !job->ticket || !job->generation || !job->frame.gray || job->frame.gray_bytes!=96000)return C5_BAD_ARG;
    if(c16_backend_safe(b)!=C5_OK)return C5_BUSY;
    if(job->mode==C5_OBSERVE || job->mode==C5_FILTER){
        rc=c5_legacy_backend_begin(b->legacy,job);if(!rc)b->route=1;return rc;
    }
    if(job->mode!=C5_DETECT && job->mode!=C5_SHADOW)return C5_UNSUPPORTED;
    b->job=*job;b->route=2;b->state=B_PREP;b->stage=0;b->x=0;b->y=0;b->row=0;b->head_row=0;
    b->count=0;b->status=0;b->cancelling=0;b->tile_jobs=0;b->busy_us=0;b->total_us=0;
    memset(b->cycles,0,sizeof b->cycles);memset(b->stage_us,0,sizeof b->stage_us);
    memset(b->cpu_us,0,sizeof b->cpu_us);
    b->start_us=now(b);++b->started;return C5_OK;
}
static int stage_done(c16_backend_t *b){
    uint32_t pool=b->stage&1u,w=widths[b->stage],h=heights[b->stage];
    c16_shape_t shape={pool?w/2:w,pool?h/2:h,16};
    int8_t *data=pool?b->work.feature_b:b->work.feature_a;
    int rc;
    if(b->stage_callback){rc=b->stage_callback(b->stage_context,b->stage,data,(size_t)shape.width*shape.height*16,shape);if(rc)return rc;}
    if(b->stage==6)memcpy(b->work.f8,b->work.feature_a,sizeof b->work.f8);
    ++b->stage;b->x=0;b->y=0;b->row=0;b->state=b->stage==9?B_HEAD:B_GATHER;
    return 2;
}
/* 2 made bounded CPU progress; 1 waiting for hardware; 0 complete. */
static int unit(c16_backend_t *b){
    uint32_t w,h,ch,u,sy,sx,pool,step,valid_w,valid_h,stride;int rc;
    const int8_t *source;int8_t *dest;
    if(b->state==B_PREP){
        sy=((2*b->row+1)*240)/192;
        for(u=0;u<160;++u){sx=((2*u+1)*400)/320;b->input[b->row*160+u]=(int8_t)((int)b->job.frame.gray[sy*400+sx]-128);}
        if(++b->row==96){b->row=0;b->state=B_GATHER;}return 2;
    }
    if(b->state==B_HEAD){
        unsigned head=b->head_row>=240;size_t index=head?b->head_row-240:b->head_row;
        source=head?b->work.feature_a:b->work.f8;
        rc=c16_linear_head(source+index*16,16,1,&b->model->head[head],b->work.rows+b->head_row,1);
        if(rc)return rc;
        if(++b->head_row==300)b->state=B_POST;
        return 2;
    }
    if(b->state==B_POST){
        c5_decode_config_t cfg; c5_decode_stats_t ds; c5_post_stats_t ps;size_t n=0,part=0;
        cfg.stride=8;cfg.grid_width=20;cfg.index_offset=0;cfg.exp_limit=6;
        cfg.anchor_width=b->model->anchors[0][0];cfg.anchor_height=b->model->anchors[0][1];
        rc=c5_decode_head(b->work.rows,240,&cfg,b->work.candidates,300,&part,&ds);if(rc)return rc;n=part;
        cfg.stride=16;cfg.grid_width=10;cfg.index_offset=240;
        cfg.anchor_width=b->model->anchors[1][0];cfg.anchor_height=b->model->anchors[1][1];
        rc=c5_decode_head(b->work.rows+240,60,&cfg,b->work.candidates+n,300-n,&part,&ds);if(rc)return rc;n+=part;
        rc=c5_postprocess(b->work.candidates,n,&b->model->post,&b->work.post,b->detections,16,&b->count,&ps);
        if(rc){b->count=0;return rc;}
        b->face_state=C5_FACE_NONE;
        if((b->face_policy_enabled || b->face_selection_only) && b->job.mode==C5_DETECT){
            size_t mapped=ps.candidates-ps.rejected_nonfinite-ps.rejected_degenerate-ps.below_threshold;
            int selected;
            if(mapped>b->model->post.top_k)mapped=b->model->post.top_k;
            selected=b->face_selection_only?
                c5_face_select_roi(b->work.post.mapped,mapped,&b->face_selected):
                c5_face_select(b->work.post.mapped,mapped,&b->face_selected);
            if(selected && b->count && b->face_selected.index!=b->detections[0].index)++b->face_promotions;
            if(b->face_selection_only){
                b->face_state=selected?C5_FACE_READY:C5_FACE_NONE;
                memset(&b->face_box,0,sizeof b->face_box);
                if(selected)b->face_box=b->face_selected.box;
            }else b->face_state=c5_face_update(&b->face_track,selected?&b->face_selected:NULL,mapped!=0,
                b->job.generation,&b->job.frame.source,now(b),&b->face_box);
            if(b->face_state==C5_FACE_WAIT)++b->face_waits;
        }
        b->state=B_DONE;return 0;
    }
    if(b->stage>=9)return C5_FAULT;
    w=widths[b->stage];h=heights[b->stage];pool=b->stage&1u;ch=b->stage?16:1;
    source=pool?b->work.feature_a:b->stage?b->work.feature_b:b->input;
    dest=pool?b->work.feature_b:b->work.feature_a;
    if(b->state==B_GATHER){
        int32_t xx=(int32_t)b->x-(pool?0:1),yy=(int32_t)(b->y+b->row)-(pool?0:1);
        int32_t left=xx<0?-xx:0,right=xx+32>(int32_t)w?(int32_t)w-xx:32;
        int8_t *row=b->work.tile_input+(size_t)b->row*32*ch;
        /* HWC pixels form a contiguous span. Keep one row per CPU unit,
         * including signed zero padding for convolution halos/pool tails. */
        if(yy<0 || (uint32_t)yy>=h || left>=right)memset(row,0,(size_t)32*ch);
        else{
            if(left)memset(row,0,(size_t)left*ch);
            memcpy(row+(size_t)left*ch,source+((size_t)yy*w+(uint32_t)(xx+left))*ch,
                   (size_t)(right-left)*ch);
            if(right<32)memset(row+(size_t)right*ch,0,(size_t)(32-right)*ch);
        }
        if(++b->row==32){b->row=0;b->state=B_START;}return 2;
    }
    if(b->state==B_START){
        rc=c16_dma_begin(&b->dma,pool?NULL:&b->model->conv[b->stage/2]);
        if(rc)return rc<0?rc:C5_FAULT;
        b->state=B_DMA;return 2;
    }
    if(b->state==B_DMA){
        rc=c16_dma_step(&b->dma);if(rc)return rc;
        b->cycles[b->stage]+=b->dma.cycles;b->stage_us[b->stage]+=b->dma.total_us;++b->tile_jobs;
        b->row=0;b->state=B_SCATTER;return 2;
    }
    if(b->state==B_SCATTER){
        step=pool?32:30;stride=pool?16:30;
        valid_w=minimum(step,w-b->x);valid_h=minimum(step,h-b->y);
        if(pool){valid_w/=2;valid_h/=2;}
        if(b->row<valid_h){
            size_t offset=pool?((size_t)(b->y/2+b->row)*(w/2)+b->x/2)*16:((size_t)(b->y+b->row)*w+b->x)*16;
            memcpy(dest+offset,b->work.tile_output+(size_t)b->row*stride*16,(size_t)valid_w*16);
        }
        if(++b->row>=valid_h){
            b->row=0;b->x+=step;if(b->x>=w){b->x=0;b->y+=step;}
            if(b->y>=h)return stage_done(b);
            b->state=B_GATHER;
        }
        return 2;
    }
    return C5_FAULT;
}
void c16_backend_cancel(void *context){
    c16_backend_t *b=context;if(!b)return;
    if(b->route==1){c5_legacy_backend_cancel(b->legacy);b->route=0;return;}
    if(b->route!=2)return;
    if(!b->cancelling){++b->cancelled;b->cancelling=1;}
    b->count=0;c16_dma_cancel(&b->dma);b->state=B_CANCEL;
    if(c16_dma_safe(&b->dma)){b->route=0;b->state=B_IDLE;}
}
int c16_backend_poll(void *context,c5_result_t *result){
    c16_backend_t *b=context;uint64_t begin,end;unsigned i;int rc;
    if(!b || !result)return C5_BAD_ARG;
    memset(result,0,sizeof *result);
    if(b->route!=2){
        rc=c5_legacy_backend_poll(b->legacy,result);
        if(b->route==1 && rc!=C5_PENDING)b->route=0;
        return rc;
    }
    if(b->state==B_CANCEL){
        rc=c16_dma_step(&b->dma);
        if(b->dma.phase==CNN_LOCKED)return C5_LOCKED;
        if(!c16_dma_safe(&b->dma))return C5_PENDING;
        b->route=0;b->state=B_IDLE;return b->cancelling?C5_PENDING:b->status;
    }
    begin=now(b);rc=2;
    for(i=0;i<64 && rc==2;++i){
        unsigned phase=b->state;uint64_t entered=now(b),left;
        rc=unit(b);left=now(b);
        if(phase<8 && left>=entered)b->cpu_us[phase]+=left-entered;
        if(left-begin>=2000)break;
    }
    end=now(b);b->busy_us+=end-begin;if(end-begin>b->max_poll_us)b->max_poll_us=end-begin;
    if(rc<0){
        ++b->errors;b->status=rc;b->count=0;c16_dma_cancel(&b->dma);
        if(!c16_dma_safe(&b->dma)){b->state=B_CANCEL;return C5_PENDING;}b->route=0;return rc;
    }
    if(b->state!=B_DONE)return C5_PENDING;
    b->total_us=end-b->start_us;++b->completed;b->route=0;b->status=0;
    memset(&b->last,0,sizeof b->last);b->last.valid=1;
    b->last.tile_jobs=b->tile_jobs;b->last.count=(uint32_t)b->count;
    b->last.ticket=b->job.ticket;b->last.generation=b->job.generation;b->last.source=b->job.frame.source;
    b->last.total_us=b->total_us;b->last.busy_us=b->busy_us;b->last.max_poll_us=b->max_poll_us;
    memcpy(b->last.cycles,b->cycles,sizeof b->cycles);
    if(b->count)b->last.first=b->detections[0];
    result->valid=1;result->status=0;result->ticket=b->job.ticket;result->generation=b->job.generation;
    result->source=b->job.frame.source;result->has_box=b->count!=0;
    if(b->count)result->box=b->detections[0].box;
    if((b->face_policy_enabled || b->face_selection_only) && b->job.mode==C5_DETECT){
        result->has_box=b->face_state==C5_FACE_READY;
        memset(&result->box,0,sizeof result->box);
        if(result->has_box)result->box=b->face_box;
    }
    return C5_OK;
}
void c16_backend_ops(c16_backend_t *b,c5_scheduler_ops_t *ops){
    if(!b || !ops)return;
    ops->backend_context=b;ops->capabilities=C5_CAP_VERIFY|C5_CAP_DETECT;
    ops->backend_begin=c16_backend_begin;ops->backend_poll=c16_backend_poll;
    ops->backend_cancel=c16_backend_cancel;ops->backend_safe=c16_backend_safe;
}
