#include "cnn5_detection.h"
#include <float.h>
#include <math.h>
#include <string.h>

#if FLT_RADIX != 2 || DBL_MANT_DIG != 53
#error "cnn5_detection requires binary64 double (53-bit mantissa)"
#endif

static int positive_finite(double value)
{
    return isfinite(value) && value>0.0;
}

int c5_linear_head(const int8_t *features,size_t feature_bytes,size_t row_count,
                   const c5_head_params_t *params,c5_head_row_t *rows,
                   size_t row_capacity)
{
    size_t r,o,ch;
    if (params==NULL || row_count>C5_MAX_CANDIDATES ||
        feature_bytes!=row_count*C5_HEAD_CHANNELS ||
        (row_count>0U && (features==NULL || rows==NULL))) return C5_BAD_ARG;
    if (row_capacity<row_count) return C5_EXHAUSTED;
    for (o=0;o<C5_HEAD_OUTPUTS;++o)
        if (!positive_finite(params->scales[o])) return C5_BAD_ARG;
    for (r=0;r<row_count;++r) {
        for (o=0;o<C5_HEAD_OUTPUTS;++o) {
            int64_t accumulator=params->bias[o];
            for (ch=0;ch<C5_HEAD_CHANNELS;++ch)
                accumulator+=(int64_t)features[r*C5_HEAD_CHANNELS+ch]*
                             (int64_t)params->weights[o][ch];
            rows[r].value[o]=(double)accumulator*params->scales[o];
            if (!isfinite(rows[r].value[o])) return C5_BAD_ARG;
        }
    }
    return C5_OK;
}

static double clamp_exponent(double value,double limit,uint32_t *count)
{
    if (value>limit) { ++*count; return limit; }
    if (value< -limit) { ++*count; return -limit; }
    return value;
}

int c5_decode_head(const c5_head_row_t *rows,size_t row_count,
                   const c5_decode_config_t *config,c5_candidate_t *candidates,
                   size_t capacity,size_t *out_count,c5_decode_stats_t *stats)
{
    size_t i,ch,n=0U;
    if (out_count!=NULL) *out_count=0U;
    if (stats!=NULL) memset(stats,0,sizeof(*stats));
    if (config==NULL || out_count==NULL || stats==NULL ||
        row_count>C5_MAX_CANDIDATES ||
        (row_count>0U && (rows==NULL || candidates==NULL)) ||
        config->stride==0U || config->grid_width==0U ||
        config->stride>160U || config->grid_width>160U ||
        config->grid_width>160U/config->stride ||
        row_count%config->grid_width!=0U ||
        row_count/config->grid_width>96U/config->stride ||
        (row_count>0U && row_count-1U>UINT32_MAX-config->index_offset) ||
        !positive_finite(config->anchor_width) ||
        !positive_finite(config->anchor_height) ||
        !positive_finite(config->exp_limit) ||
        !isfinite(exp(config->exp_limit))) return C5_BAD_ARG;
    if (capacity<row_count) return C5_EXHAUSTED;
    stats->rows=(uint32_t)row_count;
    for (i=0;i<row_count;++i) {
        c5_candidate_t candidate;
        const double *row=rows[i].value;
        for (ch=0;ch<C5_HEAD_OUTPUTS;++ch) if (!isfinite(row[ch])) break;
        if (ch<C5_HEAD_OUTPUTS) { ++stats->rejected_nonfinite; continue; }
        candidate.index=config->index_offset+(uint32_t)i;
        candidate.logit=row[0];
        candidate.cx=((double)(i%config->grid_width)+0.5+row[1])*
                     (double)config->stride;
        candidate.cy=((double)(i/config->grid_width)+0.5+row[2])*
                     (double)config->stride;
        candidate.width=config->anchor_width*exp(clamp_exponent(
            row[3],config->exp_limit,&stats->clamped_exp_components));
        candidate.height=config->anchor_height*exp(clamp_exponent(
            row[4],config->exp_limit,&stats->clamped_exp_components));
        if (!isfinite(candidate.cx) || !isfinite(candidate.cy) ||
            !isfinite(candidate.width) || !isfinite(candidate.height)) {
            ++stats->rejected_nonfinite; continue;
        }
        if (candidate.width<=0.0 || candidate.height<=0.0) {
            ++stats->rejected_degenerate; continue;
        }
        candidates[n++]=candidate;
    }
    stats->decoded=(uint32_t)n;
    *out_count=n;
    return C5_OK;
}

static double stable_sigmoid(double logit)
{
    if (logit>=0.0) return 1.0/(1.0+exp(-logit));
    {
        double e=exp(logit);
        return e/(1.0+e);
    }
}

/* Clipping bounds value to [0,160]. frexp/ldexp recover its exact binary64
 * rational without type-punning. M*5 fits 56 bits; denominator is 2^(54-e).
 * The >=64 case includes tiny/subnormal positive edges: floor=0, ceil=1.
 * An epsilon or a rounded floating multiplication would lose real subpixels. */
static int32_t map_edge(double value,int round_up)
{
    int exponent,shift;
    double fraction;
    uint64_t numerator,integral,remainder;
    if (value<=0.0) return 0;
    fraction=frexp(value,&exponent);
    numerator=(uint64_t)ldexp(fraction,53)*UINT64_C(5);
    shift=54-exponent;
    if (shift>=64) return round_up ? 1 : 0;
    integral=numerator>>(unsigned int)shift;
    remainder=numerator&((UINT64_C(1)<<(unsigned int)shift)-UINT64_C(1));
    if (round_up && remainder!=0U) ++integral;
    return (int32_t)integral;
}

static int earlier(const c5_detection_t *left,const c5_detection_t *right)
{
    return left->score>right->score ||
           (left->score==right->score && left->index<right->index);
}

static double intersection_over_union(c5_box_t a,c5_box_t b)
{
    int32_t x0=a.x0>b.x0?a.x0:b.x0,y0=a.y0>b.y0?a.y0:b.y0;
    int32_t x1=a.x1<b.x1?a.x1:b.x1,y1=a.y1<b.y1?a.y1:b.y1;
    int32_t intersection=(x1>x0 && y1>y0)?(x1-x0)*(y1-y0):0;
    int32_t area_a=(a.x1-a.x0)*(a.y1-a.y0);
    int32_t area_b=(b.x1-b.x0)*(b.y1-b.y0);
    return (double)intersection/(double)(area_a+area_b-intersection);
}

int c5_postprocess(const c5_candidate_t *candidates,size_t count,
                    const c5_post_config_t *config,c5_post_workspace_t *workspace,
                    c5_detection_t *detections,size_t capacity,size_t *out_count,
                    c5_post_stats_t *stats)
{
    size_t i,j,n=0U,limit,selected=0U;
    if (out_count!=NULL) *out_count=0U;
    if (stats!=NULL) memset(stats,0,sizeof(*stats));
    if (config==NULL || workspace==NULL || detections==NULL ||
        out_count==NULL || stats==NULL || count>C5_MAX_CANDIDATES ||
        (count>0U && candidates==NULL) ||
        !isfinite(config->threshold) || config->threshold<0.0 ||
        config->threshold>1.0 || !isfinite(config->nms_iou) ||
        config->nms_iou<0.0 || config->nms_iou>1.0 ||
        config->top_k==0U || config->top_k>C5_MAX_TOP_K ||
        config->max_detections==0U || config->max_detections>C5_MAX_DETECTIONS)
        return C5_BAD_ARG;
    if (capacity<config->max_detections) return C5_EXHAUSTED;
    for (i=0;i<count;++i)
        for (j=0;j<i;++j)
            if (candidates[i].index==candidates[j].index) return C5_BAD_ARG;
    stats->candidates=(uint32_t)count;
    for (i=0;i<count;++i) {
        const c5_candidate_t *c=&candidates[i];
        c5_detection_t d;
        double x0,y0,x1,y1;
        if (!isfinite(c->logit) || !isfinite(c->cx) || !isfinite(c->cy) ||
            !isfinite(c->width) || !isfinite(c->height)) {
            ++stats->rejected_nonfinite; continue;
        }
        if (c->width<=0.0 || c->height<=0.0) {
            ++stats->rejected_degenerate; continue;
        }
        d.index=c->index; d.score=stable_sigmoid(c->logit);
        if (d.score<config->threshold) { ++stats->below_threshold; continue; }
        x0=c->cx-c->width/2.0; y0=c->cy-c->height/2.0;
        x1=c->cx+c->width/2.0; y1=c->cy+c->height/2.0;
        if (!isfinite(x0) || !isfinite(y0) || !isfinite(x1) || !isfinite(y1)) {
            ++stats->rejected_nonfinite; continue;
        }
        if (x0<0.0) x0=0.0;
        if (y0<0.0) y0=0.0;
        if (x1>160.0) x1=160.0;
        if (y1>96.0) y1=96.0;
        if (x1<=x0 || y1<=y0) { ++stats->rejected_degenerate; continue; }
        d.box.x0=map_edge(x0,0); d.box.y0=map_edge(y0,0);
        d.box.x1=map_edge(x1,1); d.box.y1=map_edge(y1,1);
        if (d.box.x1<=d.box.x0 || d.box.y1<=d.box.y0) {
            ++stats->rejected_degenerate; continue;
        }
        j=n;
        while (j>0U && earlier(&d,&workspace->mapped[j-1U])) {
            workspace->mapped[j]=workspace->mapped[j-1U]; --j;
        }
        workspace->mapped[j]=d; ++n;
    }
    limit=n;
    if (limit>config->top_k) {
        stats->dropped_top_k=(uint32_t)(limit-config->top_k);
        limit=config->top_k;
    }
    for (i=0;i<limit;++i) {
        for (j=0;j<selected;++j)
            if (intersection_over_union(workspace->mapped[i].box,
                                        detections[j].box)>config->nms_iou) break;
        if (j<selected) { ++stats->suppressed_nms; continue; }
        detections[selected++]=workspace->mapped[i];
        if (selected==config->max_detections) {
            stats->dropped_limit=(uint32_t)(limit-i-1U); break;
        }
    }
    *out_count=selected;
    stats->selected=(uint32_t)selected;
    return C5_OK;
}

static int face_geometry(c5_box_t b)
{
    return b.x0>=0 && b.y0>=0 && b.x1<=400 && b.y1<=240 &&
           b.x1-b.x0>=80 && b.y1-b.y0>=80;
}

int c5_face_select_roi(const c5_detection_t *mapped,size_t count,c5_detection_t *out)
{
    size_t i;int have=0;
    if(!out || (count && !mapped) || count>C5_MAX_TOP_K)return 0;
    /* Keep the highest-score usable current detection. Do not force a
     * different/larger proposal merely because a portrait is <80px wide. */
    for(i=0;i<count;++i)
        if(c5_recognition_geometry(mapped[i].box) && isfinite(mapped[i].score) &&
           mapped[i].score>=0.0 && mapped[i].score<=1.0 &&
           (!have || earlier(&mapped[i],out))){*out=mapped[i];have=1;}
    return have;
}

int c5_face_select(const c5_detection_t *mapped,size_t count,c5_detection_t *out)
{
    size_t i;int have=0;
    if(!out || (count && !mapped) || count>C5_MAX_TOP_K)return 0;
    /* Highest-score usable face first. Reject an isolated eye-only detection
     * rather than enlarging it or lowering the recognition acceptance gate. */
    for(i=0;i<count;++i)
        if(face_geometry(mapped[i].box) && isfinite(mapped[i].score) &&
           mapped[i].score>=0.0 && mapped[i].score<=1.0 &&
           (!have || earlier(&mapped[i],out))){*out=mapped[i];have=1;}
    if(have){
        c5_detection_t seed=*out;int32_t area=(seed.box.x1-seed.box.x0)*(seed.box.y1-seed.box.y0);
        int32_t largest=area;
        /* A nested local face can outrank its enclosing whole face. Examine
         * pre-NMS top-k, since ordinary IoU NMS can suppress the enclosing box.
         * Promote only a close-score, substantially larger enclosing box;
         * unrelated large boxes and unbounded expansion cannot win this rule. */
        for(i=0;i<count;++i){
            c5_box_t a=seed.box,b=mapped[i].box;
            int32_t x0=a.x0>b.x0?a.x0:b.x0,y0=a.y0>b.y0?a.y0:b.y0;
            int32_t x1=a.x1<b.x1?a.x1:b.x1,y1=a.y1<b.y1?a.y1:b.y1;
            int32_t intersection=(x1>x0 && y1>y0)?(x1-x0)*(y1-y0):0;
            int32_t next_area;
            if(!face_geometry(b) || !isfinite(mapped[i].score) ||
               mapped[i].score<seed.score-0.15 || mapped[i].score>1.0)continue;
            next_area=(b.x1-b.x0)*(b.y1-b.y0);
            if(next_area*10<area*14 || next_area>area*4 ||
               (b.x1-b.x0)*10<(a.x1-a.x0)*11 ||
               (b.y1-b.y0)*10<(a.y1-a.y0)*11 || intersection*10<area*8)continue;
            if(next_area>largest || (next_area==largest && earlier(&mapped[i],out))){
                *out=mapped[i];largest=next_area;
            }
        }
    }
    return have;
}

static int close_face(c5_box_t a,c5_box_t b)
{
    int32_t aw=a.x1-a.x0,ah=a.y1-a.y0,bw=b.x1-b.x0,bh=b.y1-b.y0;
    int32_t dx=a.x0+a.x1-b.x0-b.x1,dy=a.y0+a.y1-b.y0-b.y1;
    if(dx<0)dx=-dx;
    if(dy<0)dy=-dy;
    return bw*4>=aw*3 && bw*3<=aw*4 && bh*4>=ah*3 && bh*3<=ah*4 &&
           dx*3<=(aw<bw?aw:bw) && dy*3<=(ah<bh?ah:bh);
}

int c5_face_update(c5_face_track_t *t,const c5_detection_t *current,int had_candidates,
                   uint64_t generation,const c5_source_t *source,uint64_t us,c5_box_t *out)
{
    if(!t || !source || !out)return C5_FACE_NONE;
    memset(out,0,sizeof *out);
    if(t->generation!=generation || t->epoch!=source->epoch ||
       (t->hits && (us<t->last_us || us-t->last_us>1000000u))){
        memset(t,0,sizeof *t);t->generation=generation;t->epoch=source->epoch;
    }
    if(t->have_frame && (source->frame_id==t->frame_id ||
       (uint32_t)(source->frame_id-t->frame_id)>=UINT32_C(0x80000000)))return C5_FACE_WAIT;
    t->have_frame=1;t->frame_id=source->frame_id;
    if(!current || !face_geometry(current->box)){
        /* A missing face immediately clears the history. A short partial-box
         * gap retains only the association hint: NO old box/histogram is output. */
        if(!had_candidates || ++t->misses>2)t->hits=0;
        return had_candidates?C5_FACE_WAIT:C5_FACE_NONE;
    }
    if(!t->hits || !close_face(t->box,current->box)){
        t->box=current->box;t->hits=1;t->misses=0;t->last_us=us;return C5_FACE_WAIT;
    }
    /* The same supported geometry feeds BOTH the overlay and actual ROI. */
    t->box.x0=(3*t->box.x0+current->box.x0+2)/4;
    t->box.y0=(3*t->box.y0+current->box.y0+2)/4;
    t->box.x1=(3*t->box.x1+current->box.x1+2)/4;
    t->box.y1=(3*t->box.y1+current->box.y1+2)/4;
    t->hits=2;t->misses=0;t->last_us=us;*out=t->box;return C5_FACE_READY;
}
