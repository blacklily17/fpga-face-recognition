#include "haar_worker.h"
#include "haar_resize.h"
#include <string.h>

static void finish(haar_worker_t *w,int status)
{
    w->status=status;
    w->phase=HAAR_WORKER_DONE;
    if(status!=HAAR_DR_OK) {
        w->result.found=0;
        memset(&w->result.box,0,sizeof(w->result.box));
    }
}
int haar_worker_init(haar_worker_t *w,haar_search_ws_t *search,int32_t width,int32_t height,int32_t capacity)
{
    if(!w || !search || width<=0 || height<=0 || width>400 || height>240 || capacity<1 || capacity>64)
        return HAAR_SR_ERR_ARG;
    memset(w,0,sizeof(*w));
    w->search=search; w->width=width; w->height=height; w->capacity=capacity;
    w->status=HAAR_WORKER_BUSY;
    return 0;
}
static int begin(haar_worker_t *w,const uint8_t *gray,
                 const haar_search_params_t *params,const haar_box_t *region)
{
    int32_t n;
    if(!w || !w->search) return HAAR_SR_ERR_ARG;
    if(w->phase!=HAAR_WORKER_DONE) return HAAR_WORKER_BUSY;
    memset(&w->result,0,sizeof(w->result));
    w->cancelled=0; w->units_last=0; w->total_units=0;
    w->level=0; w->row=0; w->x=0; w->y=0;
    w->x_begin=0;w->x_end=0;w->y_end=0;w->region_enabled=0;
    w->best_root=-1; w->average_count=0; w->sx=0; w->sy=0; w->sw=0; w->sh=0;
    if(!gray || !params || haar_fp_check()) { finish(w,HAAR_SR_ERR_ARG); return HAAR_SR_ERR_ARG; }
    if(region && (region->x<0 || region->y<0 || region->w<=0 || region->h<=0 ||
       (int64_t)region->x+region->w>w->width ||
       (int64_t)region->y+region->h>w->height)) {
        finish(w,HAAR_SR_ERR_ARG);return HAAR_SR_ERR_ARG;
    }
    if(region){w->region=*region;w->region_enabled=1;}
    w->gray=gray; w->params=*params;
    n=haar_search_prepare(w->width,w->height,params,w->scales);
    if(n==HAAR_SR_ERR_IMG_SMALL) { finish(w,HAAR_DR_NO_FACE); return 0; }
    if(n<0) { finish(w,n); return n; }
    w->result.n_levels=n; w->phase=HAAR_WORKER_LEVEL; w->status=HAAR_WORKER_BUSY;
    return 0;
}
int haar_worker_begin(haar_worker_t *w,const uint8_t *gray,const haar_search_params_t *params)
{
    return begin(w,gray,params,0);
}
int haar_worker_begin_region(haar_worker_t *w,const uint8_t *gray,
                             const haar_search_params_t *params,const haar_box_t *region)
{
    return begin(w,gray,params,region);
}
static int32_t find_root(haar_worker_t *w,int32_t i)
{
    while(w->parent[i]!=i) { w->parent[i]=w->parent[w->parent[i]]; i=w->parent[i]; }
    return i;
}
static int better(const haar_group_t *a,const haar_group_t *b)
{
    double av,bv;
    if(a->count!=b->count) return a->count>b->count;
    av=(double)a->area_sum/(double)a->count;
    bv=(double)b->area_sum/(double)b->count;
    if(av!=bv) return av>bv;
    if(a->min_y!=b->min_y) return a->min_y<b->min_y;
    if(a->min_x!=b->min_x) return a->min_x<b->min_x;
    if(a->min_w!=b->min_w) return a->min_w<b->min_w;
    if(a->min_h!=b->min_h) return a->min_h<b->min_h;
    return 0; /* The earliest first index survives an exact six-field tie. */
}
static void next_level(haar_worker_t *w)
{
    if(++w->level<w->result.n_levels) { w->phase=HAAR_WORKER_LEVEL; return; }
    if(w->result.overflow) finish(w,HAAR_SR_ERR_OVERFLOW);
    else { w->i=0; w->phase=HAAR_WORKER_MERGE_INIT; }
}
/* Each call is one bounded unit: a row, one complete window, a pair, or one group item. */
static void advance_one(haar_worker_t *w)
{
    haar_geometry_t *g=&w->geometry;
    int32_t n=w->result.n_candidates;
    switch(w->phase) {
    case HAAR_WORKER_LEVEL:
        if(haar_scale_geometry(w->width,w->height,HAAR_WINDOW_W,w->scales[w->level],g)) {
            finish(w,HAAR_SR_ERR_ARG); break;
        }
        if(g->resize_w<=0 || g->resize_h<=0 || g->resize_w>400 || g->resize_h>240) {
            finish(w,HAAR_SR_ERR_RESIZE); break;
        }
        w->row=0; w->phase=HAAR_WORKER_RESIZE; break;
    case HAAR_WORKER_RESIZE:
        if(haar_resize_row(w->gray,w->width,w->height,w->search->pix,g->resize_w,g->resize_h,w->row)) {
            finish(w,HAAR_SR_ERR_RESIZE); break;
        }
        if(++w->row==g->resize_h) { w->row=0; w->phase=HAAR_WORKER_INTEGRAL; }
        break;
    case HAAR_WORKER_INTEGRAL:
        if(haar_integral_row(w->search->pix,g->resize_w,g->resize_h,w->search->ii,w->search->ii_sq,w->row)) {
            finish(w,HAAR_SR_ERR_INTEGRAL); break;
        }
        if(++w->row>g->resize_h) {
            if(haar_image_bind(&w->image,w->search->pix,g->resize_w,g->resize_h,w->search->ii,w->search->ii_sq)) {
                finish(w,HAAR_SR_ERR_INTEGRAL); break;
            }
            w->x=0;w->y=0;w->x_begin=0;w->x_end=g->work_w;w->y_end=g->work_h;
            if(w->region_enabled){
                while(w->x<w->x_end &&
                      haar_map_coord(w->x,w->scales[w->level])<w->region.x)
                    w->x+=g->step;
                while(w->y<w->y_end &&
                      haar_map_coord(w->y,w->scales[w->level])<w->region.y)
                    w->y+=g->step;
                w->x_begin=w->x;w->x_end=w->x;
                while(w->x_end<g->work_w &&
                      haar_map_coord(w->x_end,w->scales[w->level])+g->side<=
                      w->region.x+w->region.w)w->x_end+=g->step;
                if(w->x_end>g->work_w)w->x_end=g->work_w;
                w->y_end=w->y;
                while(w->y_end<g->work_h &&
                      haar_map_coord(w->y_end,w->scales[w->level])+g->side<=
                      w->region.y+w->region.h)w->y_end+=g->step;
                if(w->y_end>g->work_h)w->y_end=g->work_h;
            }
            if(g->work_w<=0 || g->work_h<=0 || w->x>=w->x_end || w->y>=w->y_end)
                next_level(w);
            else w->phase=HAAR_WORKER_WINDOW;
        }
        break;
    case HAAR_WORKER_WINDOW:
        w->result.n_windows++;
        if(haar_evaluate(&w->image,w->x,w->y,NULL)==1) {
            w->result.n_accepted++;
            if(n>=w->capacity) w->result.overflow=1;
            else {
                w->boxes[n].x=haar_map_coord(w->x,g->sc);
                w->boxes[n].y=haar_map_coord(w->y,g->sc);
                w->boxes[n].w=g->side; w->boxes[n].h=g->side;
                w->result.n_candidates++;
            }
        }
        w->x+=g->step;
        if(w->x>=w->x_end) {
            w->x=w->x_begin;
            w->y+=g->step;
        }
        if(w->y>=w->y_end) next_level(w);
        break;
    case HAAR_WORKER_MERGE_INIT:
        if(!n) { finish(w,HAAR_DR_NO_FACE); break; }
        w->parent[w->i]=w->i;
        if(++w->i==n) { w->i=0; w->j=1; w->phase=HAAR_WORKER_PAIR; }
        break;
    case HAAR_WORKER_PAIR:
        if(w->i>=n-1) { w->i=0; w->phase=HAAR_WORKER_GROUP_INIT; break; }
        if(haar_similar_rects(&w->boxes[w->i],&w->boxes[w->j],HAAR_GROUP_EPS)) {
            int32_t a=find_root(w,w->i),b=find_root(w,w->j);
            if(a!=b) w->parent[a]=b;
        }
        if(++w->j==n) { w->i++; w->j=w->i+1; }
        break;
    case HAAR_WORKER_GROUP_INIT:
        w->groups[w->i].count=0;
        if(++w->i==n) { w->i=0; w->phase=HAAR_WORKER_GROUP_ACCUM; }
        break;
    case HAAR_WORKER_GROUP_ACCUM:
        {
            int32_t r=find_root(w,w->i);
            haar_group_t *a=&w->groups[r];
            const haar_box_t *b=&w->boxes[w->i];
            if(!a->count) {
                a->first=w->i; a->count=1; a->area_sum=(int64_t)b->w*(int64_t)b->h;
                a->min_x=b->x; a->min_y=b->y; a->min_w=b->w; a->min_h=b->h;
            } else {
                a->count++; a->area_sum+=(int64_t)b->w*(int64_t)b->h;
                if(b->x<a->min_x) a->min_x=b->x;
                if(b->y<a->min_y) a->min_y=b->y;
                if(b->w<a->min_w) a->min_w=b->w;
                if(b->h<a->min_h) a->min_h=b->h;
            }
            if(++w->i==n) { w->i=0; w->phase=HAAR_WORKER_SELECT; }
        }
        break;
    case HAAR_WORKER_SELECT:
        {
            int32_t r=find_root(w,w->i);
            if(w->groups[r].first==w->i && (w->best_root<0 || better(&w->groups[r],&w->groups[w->best_root])))
                w->best_root=r;
            if(++w->i==n) { w->i=0; w->phase=HAAR_WORKER_AVERAGE; }
        }
        break;
    case HAAR_WORKER_AVERAGE:
        if(find_root(w,w->i)==w->best_root) {
            w->sx+=w->boxes[w->i].x; w->sy+=w->boxes[w->i].y;
            w->sw+=w->boxes[w->i].w; w->sh+=w->boxes[w->i].h; w->average_count++;
        }
        if(++w->i==n) w->phase=HAAR_WORKER_FINISH;
        break;
    case HAAR_WORKER_FINISH:
        {
            float s=1.0f/(float)w->average_count;
            w->result.box.x=haar_cv_round((double)((float)w->sx*s));
            w->result.box.y=haar_cv_round((double)((float)w->sy*s));
            w->result.box.w=haar_cv_round((double)((float)w->sw*s));
            w->result.box.h=haar_cv_round((double)((float)w->sh*s));
            w->result.found=1; finish(w,HAAR_DR_OK);
        }
        break;
    default: finish(w,HAAR_SR_ERR_ARG); break;
    }
}
int haar_worker_step(haar_worker_t *w,uint32_t max_units)
{
    if(!w || !w->search) return HAAR_SR_ERR_ARG;
    w->units_last=0;
    if(w->cancelled) { finish(w,HAAR_WORKER_CANCELLED); return HAAR_WORKER_CANCELLED; }
    while(w->phase!=HAAR_WORKER_DONE && w->units_last<max_units) {
        advance_one(w); w->units_last++; w->total_units++;
    }
    if(w->phase!=HAAR_WORKER_DONE) return 1;
    return w->status<0?w->status:0;
}
void haar_worker_cancel(haar_worker_t *w)
{
    if(w) { w->cancelled=1; finish(w,HAAR_WORKER_CANCELLED); }
}
int haar_worker_result(const haar_worker_t *w,haar_detect_result_t *out)
{
    if(!w || !out) return HAAR_SR_ERR_ARG;
    /* Publish a value only after all units have completed. */
    if(w->phase!=HAAR_WORKER_DONE) { memset(out,0,sizeof(*out)); return HAAR_WORKER_BUSY; }
    *out=w->result;
    return w->status;
}
