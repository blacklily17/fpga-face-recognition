#include "e02_ps_engine.h"
#include "e02_ps_conv.h"
#include <math.h>
#include <string.h>

static const uint32_t widths[9]={160,160,80,80,40,40,20,20,10};
static const uint32_t heights[9]={96,96,48,48,24,24,12,12,6};
static int overlaps(const void *a,size_t na,const void *b,size_t nb){
    uintptr_t x=(uintptr_t)a,y=(uintptr_t)b;
    if(!na || !nb)return 0;
    if(x>UINTPTR_MAX-(na-1) || y>UINTPTR_MAX-(nb-1))return 1;
    return x<=y+nb-1 && y<=x+na-1;
}
static int model_valid(const e02_ps_engine_t *e,const c16_model_t *m){
    unsigned i,j;
    if(!m || overlaps(e,sizeof *e,m,sizeof *m))return 0;
    for(i=0;i<5;++i){const c16_conv_params_t *p=&m->conv[i];
        if(p->in_channels!=(i?16u:1u) || p->out_channels!=16 ||
           p->weights_count!=(i?2304u:144u) || p->bias_count!=16 ||
           !p->weights || !p->bias || p->relu!=1 || p->shift>63 ||
           overlaps(e,sizeof *e,p->weights,p->weights_count) ||
           overlaps(e,sizeof *e,p->bias,p->bias_count*sizeof *p->bias))return 0;
    }
    for(i=0;i<2;++i){
        for(j=0;j<5;++j)if(!isfinite(m->head[i].scales[j]) || m->head[i].scales[j]<=0)return 0;
        for(j=0;j<2;++j)if(!isfinite(m->anchors[i][j]) || m->anchors[i][j]<=0)return 0;
    }
    return isfinite(m->post.threshold) && m->post.threshold>=0 && m->post.threshold<=1 &&
        isfinite(m->post.nms_iou) && m->post.nms_iou>=0 && m->post.nms_iou<=1 &&
        m->post.top_k && m->post.top_k<=100 && m->post.max_detections && m->post.max_detections<=16;
}
int e02_ps_engine_init(e02_ps_engine_t *e,const c16_model_t *m,uint64_t (*clock)(void *),void *ctx){
    if(!e || !clock || !model_valid(e,m))return C5_BAD_ARG;
    memset(e,0,sizeof *e);e->model=m;e->now_us=clock;e->clock_context=ctx;e->status=C5_STALE;return C5_OK;
}
static void invalidate(e02_ps_engine_t *e,int status){
    e->gray=NULL;e->active=0;e->count=0;e->selected=0;e->have_roi=0;e->pending_roi=0;
    memset(&e->roi,0,sizeof e->roi);e->status=status;e->phase=E02_ENGINE_IDLE;
}
int e02_ps_engine_begin(e02_ps_engine_t *e,const uint8_t *gray,size_t bytes){
    unsigned i;
    if(!e || !e->model || !e->now_us)return C5_BAD_ARG;
    if(e->active)return C5_BUSY;
    if(!gray || bytes!=96000 || overlaps(gray,bytes,e,sizeof *e) ||
       overlaps(gray,bytes,e->model,sizeof *e->model))return C5_BAD_ARG;
    for(i=0;i<5;++i){const c16_conv_params_t *p=&e->model->conv[i];
        if(overlaps(gray,bytes,p->weights,p->weights_count) || overlaps(gray,bytes,p->bias,16*sizeof *p->bias))return C5_BAD_ARG;
    }
    e->gray=gray;e->active=1;e->phase=E02_ENGINE_PREP;e->stage=0;e->cursor=0;
    e->count=0;e->mapped=0;e->selected=0;e->sort_row=0;e->sort_pos=0;e->nms_row=0;
    e->have_roi=0;e->pending_roi=0;e->sort_pending=0;e->status=C5_PENDING;
    memset(&e->roi,0,sizeof e->roi);
    e->total_us=0;e->active_us=0;e->max_step_us=0;e->steps=0;e->units=0;e->max_units_per_step=0;
    memset(e->phase_us,0,sizeof e->phase_us);
    memset(e->stage_us,0,sizeof e->stage_us);
    e->last_us=e->now_us(e->clock_context);return C5_OK;
}
int e02_ps_engine_safe(const e02_ps_engine_t *e){return e && e->model && !e->active && !e->gray;}
void e02_ps_engine_cancel(e02_ps_engine_t *e){if(e && e->model)invalidate(e,C5_STALE);}
static int stage_done(e02_ps_engine_t *e){
    unsigned pool=e->stage&1u;
    c16_shape_t shape={pool?widths[e->stage]/2:widths[e->stage],pool?heights[e->stage]/2:heights[e->stage],16};
    int8_t *data=pool?e->work.feature_b:e->work.feature_a;int rc;
    if(e->stage_callback){rc=e->stage_callback(e->stage_context,e->stage,data,(size_t)shape.width*shape.height*16,shape);if(rc)return rc<0?rc:C5_FAULT;}
    ++e->stage;e->cursor=0;
    e->phase=e->stage==9?E02_ENGINE_HEAD:(e->stage&1u)?E02_ENGINE_POOL:E02_ENGINE_CONV;
    return C5_PENDING;
}
static int earlier(c5_detection_t a,c5_detection_t b){return a.score>b.score || (a.score==b.score && a.index<b.index);}
static double iou(c5_box_t a,c5_box_t b){
    int32_t x0=a.x0>b.x0?a.x0:b.x0,y0=a.y0>b.y0?a.y0:b.y0;
    int32_t x1=a.x1<b.x1?a.x1:b.x1,y1=a.y1<b.y1?a.y1:b.y1;
    int32_t n=(x1>x0 && y1>y0)?(x1-x0)*(y1-y0):0;
    return (double)n/(double)((a.x1-a.x0)*(a.y1-a.y0)+(b.x1-b.x0)*(b.y1-b.y0)-n);
}
/* Each branch has an explicit fixed bound: row160; conv144 MAC; pool4;
 * head80 MAC; one decoded row; one insertion shift; at most16 IoU checks.
 * No full-frame reference, driver polling or recursive calls. */
static int unit(e02_ps_engine_t *e){
    uint32_t w,h,x,y,oc,i,k;const int8_t *src;int8_t *dst;int rc;
    if(e->phase==E02_ENGINE_PREP){
        uint32_t sy=((2*e->cursor+1)*240)/192;
        for(x=0;x<160;++x){uint32_t sx=((2*x+1)*400)/320;e->input[e->cursor*160+x]=(int8_t)((int)e->gray[sy*400+sx]-128);}
        if(++e->cursor==96){e->cursor=0;e->phase=E02_ENGINE_CONV;}
        return C5_PENDING;
    }
    if(e->phase==E02_ENGINE_CONV || e->phase==E02_ENGINE_POOL){
        w=widths[e->stage];h=heights[e->stage];oc=e->cursor%16;
        if(e->phase==E02_ENGINE_CONV){
            const c16_conv_params_t *p=&e->model->conv[e->stage/2];int64_t acc;
            x=(e->cursor/16)%w;y=e->cursor/(16*w);
            src=e->stage?e->work.feature_b:e->input;dst=e->work.feature_a;
            /* Dot fits signed32; widen BEFORE bias addition (INT32 bias need
             * not leave any signed32 headroom). One output remains one unit. */
            acc=(int64_t)p->bias[oc]+e02_ps_conv_dot3x3(src,w,h,x,y,
                p->weights+oc*p->in_channels*9,p->in_channels);
            rc=c16_quantize_int8(acc,p->shift,p->relu,&dst[e->cursor]);if(rc)return rc;
            if(e->stage==6)e->work.f8[e->cursor]=dst[e->cursor];
        }else{
            int8_t best=-128;src=e->work.feature_a;dst=e->work.feature_b;
            x=(e->cursor/16)%(w/2);y=e->cursor/(16*(w/2));
            for(k=0;k<4;++k){int8_t v=src[((size_t)(2*y+k/2)*w+2*x+k%2)*16+oc];if(v>best)best=v;}
            dst[e->cursor]=best;
        }
        if(++e->cursor==(e->phase==E02_ENGINE_POOL?(w/2)*(h/2):w*h)*16)return stage_done(e);
        return C5_PENDING;
    }
    if(e->phase==E02_ENGINE_HEAD){
        unsigned head=e->cursor>=240;size_t row=head?e->cursor-240:e->cursor;
        const c16_head_params_t *p=&e->model->head[head];src=head?e->work.feature_a:e->work.f8;
        for(i=0;i<5;++i){int64_t acc=p->bias[i];
            for(k=0;k<16;++k)acc+=(int64_t)src[row*16+k]*p->weights[i][k];
            e->work.rows[e->cursor].value[i]=(double)acc*p->scales[i];
            if(!isfinite(e->work.rows[e->cursor].value[i]))return C5_BAD_ARG;
        }
        if(++e->cursor==300){e->cursor=0;e->phase=E02_ENGINE_DECODE;}return C5_PENDING;
    }
    if(e->phase==E02_ENGINE_DECODE){
        unsigned head=e->cursor>=240;uint32_t row=head?e->cursor-240:e->cursor,grid=head?10:20,stride=head?16:8;
        const double *v=e->work.rows[e->cursor].value;c5_candidate_t c;
        c5_post_config_t cfg=e->model->post;c5_post_stats_t stats;size_t count;
        c.index=e->cursor;c.logit=v[0];c.cx=((row%grid)+.5+v[1])*stride;c.cy=((row/grid)+.5+v[2])*stride;
        c.width=e->model->anchors[head][0]*exp(fmax(-6,fmin(6,v[3])));
        c.height=e->model->anchors[head][1]*exp(fmax(-6,fmin(6,v[4])));
        cfg.top_k=1;cfg.max_detections=1;
        rc=c5_postprocess(&c,1,&cfg,&e->map_one,&e->sorting,1,&count,&stats);if(rc)return rc;
        if(count)e->work.post.mapped[e->mapped++]=e->sorting;
        if(++e->cursor==300){e->cursor=0;e->sort_row=1;e->phase=E02_ENGINE_SORT;}
        return C5_PENDING;
    }
    if(e->phase==E02_ENGINE_SORT){
        if(e->sort_row>=e->mapped){e->phase=E02_ENGINE_NMS;return C5_PENDING;}
        if(!e->sort_pending){e->sorting=e->work.post.mapped[e->sort_row];e->sort_pos=e->sort_row;e->sort_pending=1;}
        if(e->sort_pos && earlier(e->sorting,e->work.post.mapped[e->sort_pos-1])){
            e->work.post.mapped[e->sort_pos]=e->work.post.mapped[e->sort_pos-1];--e->sort_pos;
        }else{e->work.post.mapped[e->sort_pos]=e->sorting;++e->sort_row;e->sort_pending=0;}
        return C5_PENDING;
    }
    if(e->phase==E02_ENGINE_NMS){
        size_t limit=e->mapped;if(limit>e->model->post.top_k)limit=e->model->post.top_k;
        if(e->nms_row<limit){
            c5_detection_t d=e->work.post.mapped[e->nms_row++];
            /* Inspect ALL pre-NMS top-k even once NMS output is full. */
            if(!e->pending_roi && c5_recognition_geometry(d.box)){e->roi=d;e->pending_roi=1;}
            if(e->selected<e->model->post.max_detections){
                for(i=0;i<e->selected;++i)if(iou(d.box,e->detections[i].box)>e->model->post.nms_iou)break;
                if(i==e->selected)e->detections[e->selected++]=d;
            }
            return C5_PENDING;
        }
        e->phase=E02_ENGINE_DONE;e->gray=NULL;e->active=0;e->count=e->selected;
        e->have_roi=e->pending_roi;e->status=C5_STALE;return C5_OK;
    }
    return C5_FAULT;
}
int e02_ps_engine_advance(e02_ps_engine_t *e,unsigned max_units){
    uint64_t start,t;unsigned used=0;int rc=C5_PENDING;
    if(!e || !e->now_us || !max_units || max_units>64)return C5_BAD_ARG;
    if(!e->active)return e->status;
    start=e->now_us(e->clock_context);
    if(start<e->last_us){invalidate(e,C5_FAULT);return C5_FAULT;}
    e->total_us+=start-e->last_us;t=start;
    do{
        uint64_t end;unsigned phase=e->phase,stage=e->stage;
        rc=unit(e);++used;++e->units;end=e->now_us(e->clock_context);
        if(end<t){invalidate(e,C5_FAULT);return C5_FAULT;}
        e->active_us+=end-t;e->total_us+=end-t;e->phase_us[phase]+=end-t;
        if((phase==E02_ENGINE_CONV || phase==E02_ENGINE_POOL) && stage<9)e->stage_us[stage]+=end-t;
        t=end;
        if(rc<0){invalidate(e,rc);break;}
    }while(rc==C5_PENDING && used<max_units && t-start<2000);
    ++e->steps;if(t-start>e->max_step_us)e->max_step_us=t-start;
    if(used>e->max_units_per_step)e->max_units_per_step=used;
    e->last_us=t;return rc;
}
int e02_ps_engine_step(e02_ps_engine_t *e){return e02_ps_engine_advance(e,64);}
