#include "snapshot_process.h"
#include "roi_extract.h"
#include <stddef.h>
int snapshot_detect_roi(const uint8_t *gray,uint8_t *roi,snapshot_work *ws,
                        int capacity,snapshot_result *r,haar_now_fn now)
{
    haar_detect_result_t found;
    const haar_search_params_t p={1.2,40,240};
    uint64_t start;
    int rc;
    unsigned i;
    if (!r) return -1;
    r->word[SNAP_FOUND]=r->word[SNAP_ROI_VALID]=r->word[SNAP_ROI_BYTES]=0;
    for(i=SNAP_X;i<=SNAP_OVERFLOW;i++) r->word[i]=0;
    snapshot_set_ticks(r,SNAP_DETECT_TICKS,0);snapshot_set_ticks(r,SNAP_ROI_TICKS,0);
    if (!gray || !roi || !ws || capacity<1 || capacity>64) {rc=-1;goto done;}
    ws->detect.boxes=ws->boxes;ws->detect.parent=ws->parent;
    ws->detect.groups=ws->groups;ws->detect.capacity=capacity;
    start=now?now():0;
    rc=haar_detect(gray,400,240,&p,&ws->detect,&found,NULL);
    snapshot_set_ticks(r,SNAP_DETECT_TICKS,now?now()-start:0);
    r->word[SNAP_CANDIDATES]=(uint32_t)found.n_candidates;
    r->word[SNAP_OVERFLOW]=(uint32_t)found.overflow;
    if(rc==0) {
        start=now?now():0;
        rc=roi_extract(gray,400,240,found.box.x,found.box.y,found.box.w,found.box.h,
                       roi,128,ws->scratch,sizeof(ws->scratch));
        snapshot_set_ticks(r,SNAP_ROI_TICKS,now?now()-start:0);
        if(!rc) {
            r->word[SNAP_FOUND]=1;r->word[SNAP_ROI_VALID]=1;r->word[SNAP_ROI_BYTES]=16384;
            r->word[SNAP_X]=(uint32_t)found.box.x;r->word[SNAP_Y]=(uint32_t)found.box.y;
            r->word[SNAP_W]=(uint32_t)found.box.w;r->word[SNAP_H]=(uint32_t)found.box.h;
        }
    }
done:
    r->word[SNAP_RC]=(uint32_t)rc;
    r->word[SNAP_STATE]=(rc==0 || rc==HAAR_DR_NO_FACE)?3u:4u;
    return rc;
}

int snapshot_detect_roi_m13(const uint8_t *gray,uint8_t *roi,
                            size_t roi_capacity,snapshot_work *ws,
                            int capacity,snapshot_result *r,haar_now_fn now)
{
    haar_detect_result_t found;
    const haar_search_params_t p={1.2,40,240};
    uint64_t start;
    int32_t side=0;
    int rc;
    unsigned i;
    if (!r) return -1;
    r->word[SNAP_FOUND]=r->word[SNAP_ROI_VALID]=r->word[SNAP_ROI_BYTES]=0;
    r->word[SNAP_ROI_SIDE]=0;
    for(i=SNAP_X;i<=SNAP_OVERFLOW;i++) r->word[i]=0;
    snapshot_set_ticks(r,SNAP_DETECT_TICKS,0);snapshot_set_ticks(r,SNAP_ROI_TICKS,0);
    if (!gray || !roi || !ws || capacity<1 || capacity>64) {rc=-1;goto done;}
    ws->detect.boxes=ws->boxes;ws->detect.parent=ws->parent;
    ws->detect.groups=ws->groups;ws->detect.capacity=capacity;
    start=now?now():0;
    rc=haar_detect(gray,400,240,&p,&ws->detect,&found,NULL);
    snapshot_set_ticks(r,SNAP_DETECT_TICKS,now?now()-start:0);
    r->word[SNAP_CANDIDATES]=(uint32_t)found.n_candidates;
    r->word[SNAP_OVERFLOW]=(uint32_t)found.overflow;
    if(rc==0) {
        start=now?now():0;
        rc=roi_crop_square(gray,400,240,found.box.x,found.box.y,
                           found.box.w,found.box.h,roi,roi_capacity,&side);
        snapshot_set_ticks(r,SNAP_ROI_TICKS,now?now()-start:0);
        if(!rc) {
            r->word[SNAP_FOUND]=1;r->word[SNAP_ROI_VALID]=1;
            r->word[SNAP_ROI_SIDE]=(uint32_t)side;
            r->word[SNAP_ROI_BYTES]=(uint32_t)side*(uint32_t)side;
            r->word[SNAP_X]=(uint32_t)found.box.x;r->word[SNAP_Y]=(uint32_t)found.box.y;
            r->word[SNAP_W]=(uint32_t)found.box.w;r->word[SNAP_H]=(uint32_t)found.box.h;
        }
    }
done:
    r->word[SNAP_RC]=(uint32_t)rc;
    r->word[SNAP_STATE]=(rc==0 || rc==HAAR_DR_NO_FACE)?3u:4u;
    return rc;
}
