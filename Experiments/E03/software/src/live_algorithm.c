/* WP123456 quality path: real snapshot -> PS Haar/raw square -> PL M13/LBP
 * -> multi-prototype distance+margin rejection -> optional temporal vote. */
#include "live_algorithm.h"
#include "live_diagnostics.h"
#include "snapshot_preprocess.h"
#include "snapshot_process.h"
#include "roi_extract.h"
#include "wp4_classify.h"
#include "wp4_face_matcher.h"
#include "face_store.h"
#include "c3_evidence.h"

#include <math.h>
#include <string.h>

#define QUALITY_MIN_MEAN      25U
#define QUALITY_MAX_MEAN     230U
#define QUALITY_MIN_GRADIENT   3U
#define RELIABLE_FACE_MIN_SIDE 80U
#define TRACK_TIMEOUT_MULTIPLIER 3U

live_diag g_live_diag __attribute__((aligned(32)));
uint8_t g_live_gray[96000] __attribute__((aligned(32)));
uint8_t g_live_roi[LIVE_FACE_MAX_BYTES] __attribute__((aligned(32)));
uint16_t g_live_hist[3776] __attribute__((aligned(32)));
static uint8_t enroll_view[LIVE_FACE_MAX_BYTES] __attribute__((aligned(32)));
static uint16_t enroll_features[LIVE_ENROLL_TARGET_SAMPLES][3776]
    __attribute__((aligned(32)));
static snapshot_work workspace;
static live_algorithm_io config;
static uint32_t last_roi_side;
static int bound,ready,last_roi_valid,last_hist_valid;
static int32_t track_x,track_y,track_w,track_h;
static uint64_t track_timestamp;
static int track_valid,strict_detection;
static uint32_t enroll_slot,enroll_label,enroll_count;
static int enroll_active;
static wp4_job_t pl_job;
static int async_prepared,async_pl_active;
static c3_evidence_t cnn_evidence;
static int cnn_sample;
static uint32_t vote_required=1;

static wp4_roi_quality_t check_raw_quality(const uint8_t *roi, uint32_t side)
{
    wp4_roi_quality_t q;
    uint64_t sum=0U,gradient=0U;
    uint32_t x,y;
    q.minimum=255U;q.maximum=0U;q.mean=0U;q.mean_gradient=0U;q.accepted=0U;
    if (roi==0 || side==0U || side>LIVE_FACE_MAX_SIDE)
        return q;
    for(y=0U;y<side;++y) {
        for(x=0U;x<side;++x) {
            uint32_t value=roi[y*side+x];
            sum+=value;
            if(value<q.minimum)q.minimum=value;
            if(value>q.maximum)q.maximum=value;
            if(x!=0U) {
                uint32_t left=roi[y*side+x-1U];
                gradient+=(value>=left)?value-left:left-value;
            }
            if(y!=0U) {
                uint32_t above=roi[(y-1U)*side+x];
                gradient+=(value>=above)?value-above:above-value;
            }
        }
    }
    q.mean=(uint32_t)(sum/((uint64_t)side*side));
    if(side>1U)
        q.mean_gradient=(uint32_t)(gradient/(2ULL*side*(side-1U)));
    q.accepted=(q.mean>=QUALITY_MIN_MEAN && q.mean<=QUALITY_MAX_MEAN &&
                q.mean_gradient>=QUALITY_MIN_GRADIENT);
    return q;
}

void live_algorithm_invalidate(void)
{
    unsigned i;
    last_roi_valid=0;last_hist_valid=0;last_roi_side=0U;
    for(i=LD_ROI_VALID;i<LD_HZ;i++)g_live_diag.word[i]=0;
    g_live_diag.word[LD_FRESH_DETECTION]=g_live_diag.word[LD_QUALITY_SCOPE]=0U;
}

static int fp_check(void)
{
    static volatile double inputs[]={-2.5,2.5,-3.5,3.5};
    const double expected[]={-2,2,-4,4};unsigned i;
    if(haar_fp_check())return -530;
    for(i=0;i<4;i++)if(nearbyint(inputs[i])!=expected[i])return -530;
    return 0;
}

/* Reuse the last reliable frontal box for a few seconds while the head turns.
 * The timestamp is deliberately not refreshed here: tracking expires unless
 * Haar sees another full-size face, so it cannot drift indefinitely. */
static int use_recent_track(const uint8_t *gray,snapshot_result *r)
{
    int32_t side=0;
    uint64_t now=config.now();
    uint64_t lifetime=config.lbp.timeout_ticks*TRACK_TIMEOUT_MULTIPLIER;
    int rc;
    if(!track_valid || now-track_timestamp>lifetime){
        track_valid=0;
        return HAAR_DR_NO_FACE;
    }
    rc=roi_crop_square(gray,400,240,track_x,track_y,track_w,track_h,
                       g_live_roi,sizeof(g_live_roi),&side);
    if(rc || side<(int32_t)RELIABLE_FACE_MIN_SIDE){
        track_valid=0;
        return HAAR_DR_NO_FACE;
    }
    r->word[SNAP_FOUND]=1U;r->word[SNAP_ROI_VALID]=1U;
    r->word[SNAP_ROI_SIDE]=(uint32_t)side;
    r->word[SNAP_ROI_BYTES]=(uint32_t)side*(uint32_t)side;
    r->word[SNAP_X]=(uint32_t)track_x;r->word[SNAP_Y]=(uint32_t)track_y;
    r->word[SNAP_W]=(uint32_t)track_w;r->word[SNAP_H]=(uint32_t)track_h;
    r->word[SNAP_RC]=0U;r->word[SNAP_STATE]=3U;
    return 0;
}

int live_algorithm_bind(const live_algorithm_io *io)
{
    ready=bound=0;
    if(!io || !io->rgb || !io->valid_image || !io->now || !io->lbp.read ||
       !io->lbp.write || !io->lbp.ticks || !io->lbp.sync_roi ||
       !io->lbp.timeout_ticks)return -531;
    config=*io;bound=1;return 0;
}

int live_algorithm_init(void)
{
    uint64_t start;int rc,store_rc;wp4_io *io=&config.lbp;ready=0;
    if(!bound)return -531;
    io->write(io->user,WP4_DMA,0,4);start=io->ticks(io->user);
    while(io->read(io->user,WP4_DMA,0)&4u)
        if(io->ticks(io->user)-start>=io->timeout_ticks)return -532;
    io->write(io->user,WP4_DMA,0,0);start=io->ticks(io->user);
    while(!(io->read(io->user,WP4_DMA,4)&1u))
        if(io->ticks(io->user)-start>=io->timeout_ticks)return -532;
    rc=fp_check();if(rc)return rc;
    if(wp4_classify_init())return -533;
    store_rc=face_store_load();
    g_live_diag.word[LD_STORAGE_STATE]=(uint32_t)store_rc;
    wp4_classify_vote_reset(1U);
    enroll_active=0;enroll_count=0U;track_valid=0;track_timestamp=0U;strict_detection=0;
    memset(&pl_job,0,sizeof pl_job);async_prepared=async_pl_active=0;
    memset(&cnn_evidence,0,sizeof cnn_evidence);cnn_sample=0;vote_required=1;
    live_algorithm_invalidate();
    memset(g_live_roi,0,sizeof(g_live_roi));memset(g_live_hist,0,sizeof(g_live_hist));
    live_set64(LD_THR_NUM,WP4_DEFAULT_MAX_DISTANCE);
    live_set64(LD_THR_DEN,WP4_DEFAULT_MIN_MARGIN);
    if(store_rc<0){
        unsigned slot;
        /* A failed load may leave compiled defaults or a partially applied
         * gallery. Neither is the requested SD library. Fail closed in RAM;
         * never save, repair, or overwrite SD as part of startup/recovery. */
        for(slot=0;slot<WP4_MATCH_MAX_IDENTITIES;++slot)
            (void)wp4_classify_remove(slot);
        wp4_classify_vote_reset(1U);
        return store_rc;
    }
    ready=1;return 0;
}

static int algorithm_failed(lr_result *out,int rc)
{
    last_roi_valid=0;last_hist_valid=0;
    g_live_diag.word[LD_ROI_VALID]=g_live_diag.word[LD_HIST_VALID]=0;
    ready=0;out->status=LR_FAILED;out->label=0;out->error=rc;return rc;
}
static void reset_sample(lr_result *out)
{
    unsigned i;
    out->status=LR_FAILED;out->label=0;out->error=0;
    last_roi_valid=0;last_hist_valid=0;last_roi_side=0U;
    for(i=LD_ROI_VALID;i<LD_CAPTURE_TICKS;i++)g_live_diag.word[i]=0;
    for(i=LD_PREPROCESS_TICKS;i<LD_HZ;i++)g_live_diag.word[i]=0;
    for(i=LD_ROI_SIDE;i<=LD_MATCH_ACCEPTED;i++)g_live_diag.word[i]=0;
    g_live_diag.word[LD_PERSON]=WP4_MATCH_UNKNOWN;
    g_live_diag.word[LD_FRESH_DETECTION]=g_live_diag.word[LD_QUALITY_SCOPE]=0U;
    memset(g_live_roi,0,sizeof(g_live_roi));memset(g_live_hist,0,sizeof(g_live_hist));
}
/* Shared by old synchronous and new cooperative entry, not a second threshold
 * implementation. Return 1 only for a quality-approved ROI requiring LBP. */
static int prepare_roi(const uint8_t *gray,snapshot_result *r,int rc,lr_result *out)
{
    wp4_roi_quality_t quality;unsigned i;
    int small=rc==0 && (r->word[SNAP_W]<RELIABLE_FACE_MIN_SIDE ||
                        r->word[SNAP_H]<RELIABLE_FACE_MIN_SIDE);
    if(cnn_sample && rc==0){
        uint64_t w=r->word[SNAP_W],h=r->word[SNAP_H];
        small=w<60 || h<80 || w*5<h*3 || w*4>h*5 || r->word[SNAP_ROI_SIDE]<80 ||
              (uint64_t)r->word[SNAP_X]+w>400 || (uint64_t)r->word[SNAP_Y]+h>240;
    }
    g_live_diag.word[LD_FRESH_DETECTION]=rc==0 && !small;
    g_live_diag.word[LD_QUALITY_SCOPE]=0U;
    if(small)
        rc=(strict_detection || cnn_sample)?HAAR_DR_NO_FACE:use_recent_track(gray,r);
    else if(rc==HAAR_DR_NO_FACE && !strict_detection && !cnn_sample)
        rc=use_recent_track(gray,r);
    else if(rc==0 && !cnn_sample){
        track_x=(int32_t)r->word[SNAP_X];track_y=(int32_t)r->word[SNAP_Y];
        track_w=(int32_t)r->word[SNAP_W];track_h=(int32_t)r->word[SNAP_H];
        track_timestamp=config.now();track_valid=1;
    }
    for(i=0;i<4;i++)g_live_diag.word[LD_BBOX+i]=r->word[SNAP_X+i];
    g_live_diag.word[LD_CANDIDATES]=r->word[SNAP_CANDIDATES];
    for(i=0;i<2;i++){
        g_live_diag.word[LD_DETECT_TICKS+i]=r->word[SNAP_DETECT_TICKS+i];
        g_live_diag.word[LD_ROI_TICKS+i]=r->word[SNAP_ROI_TICKS+i];
    }
    if(rc==HAAR_DR_NO_FACE){
        uint32_t sum=0U;
        /* Brightness-only full-frame evidence when no usable ROI exists.
         * This is not an occlusion/motion score and never enters the matcher. */
        for(i=0;i<96000U;i++)sum+=gray[i];
        g_live_diag.word[LD_QUALITY_MEAN]=sum/96000U;
        g_live_diag.word[LD_QUALITY_SCOPE]=small?3U:2U;
        out->status=LR_NO_FACE;
        return 0;
    }
    if(rc)return algorithm_failed(out,rc);
    last_roi_side=r->word[SNAP_ROI_SIDE];last_roi_valid=1;
    g_live_diag.word[LD_ROI_VALID]=1;g_live_diag.word[LD_ROI_SIDE]=last_roi_side;
    g_live_diag.word[LD_QUALITY_SCOPE]=1U;
    quality=check_raw_quality(g_live_roi,last_roi_side);
    g_live_diag.word[LD_QUALITY_MEAN]=quality.mean;
    g_live_diag.word[LD_QUALITY_GRADIENT]=quality.mean_gradient;
    g_live_diag.word[LD_QUALITY_ACCEPTED]=quality.accepted;
    if(!quality.accepted){
        /* Rejected frames are neither identity votes nor cached successes. */
        out->status=LR_UNKNOWN;out->label=0U;
        return 0;
    }
    return 1;
}
static int finish_histogram(const wp4_stats *stats,int rc,lr_result *out)
{
    wp4_match match;uint64_t start;uint32_t stable;
    g_live_diag.word[LD_PL_FLAGS]=stats->flags;g_live_diag.word[LD_DMA_STATUS]=stats->dma_status;
    live_set64(LD_LBP_TICKS,stats->elapsed_ticks);if(rc)return algorithm_failed(out,rc);
    if(!stats->valid || !stats->stopped || stats->total!=14400)return algorithm_failed(out,-535);
    last_hist_valid=1;
    start=config.now();rc=wp4_classify(g_live_hist,&match);
    live_set64(LD_CLASSIFY_TICKS,config.now()-start);if(rc)return algorithm_failed(out,rc);
    g_live_diag.word[LD_HIST_VALID]=1;g_live_diag.word[LD_TOTAL]=stats->total;
    g_live_diag.word[LD_PERSON]=match.person;g_live_diag.word[LD_TEMPLATE]=match.template_index;
    live_set64(LD_DISTANCE,match.distance);
    live_set64(LD_SECOND_DISTANCE,match.second_distance);
    live_set64(LD_MARGIN,match.margin);
    g_live_diag.word[LD_MATCH_ACCEPTED]=match.known;
    if(cnn_sample && match.known){
        uint32_t old=cnn_evidence.generation;
        if(!c3_evidence_accept_person(&cnn_evidence,match.person))return algorithm_failed(out,-531);
        if(old!=cnn_evidence.generation)wp4_classify_vote_reset(vote_required);
    }
    stable=wp4_classify_vote(match.known?match.person:WP4_MATCH_UNKNOWN);
    if(stable!=WP4_MATCH_UNKNOWN && wp4_classify_label(stable)!=0U){
        out->status=LR_KNOWN;out->label=wp4_classify_label(stable);
    }else{
        out->status=LR_UNKNOWN;out->label=0U;
    }
    return 0;
}

int live_algorithm_run(lr_result *out)
{
    snapshot_result r={{0}};wp4_stats stats={0};uint64_t start;int rc;
    if(!out)return -531;
    if(async_prepared || async_pl_active)return -536;
    cnn_sample=0;
    reset_sample(out);
    if(!ready || !config.valid_image())return algorithm_failed(out,-534);
    start=config.now();
    rc=snapshot_rgb_to_gray(config.rgb,768000,800,480,1600,g_live_gray,sizeof(g_live_gray));
    live_set64(LD_PREPROCESS_TICKS,config.now()-start);if(rc)return algorithm_failed(out,rc);
    rc=snapshot_detect_roi_m13(g_live_gray,g_live_roi,sizeof(g_live_roi),&workspace,64,&r,config.now);
    rc=prepare_roi(g_live_gray,&r,rc,out);if(rc!=1)return rc;
    rc=wp4_extract_sized(&config.lbp,(uint32_t)(uintptr_t)g_live_roi,
                         (size_t)last_roi_side*last_roi_side,last_roi_side,last_roi_side,g_live_hist,3776,&stats);
    return finish_histogram(&stats,rc,out);
}
static int prepare_gray(const uint8_t *gray,const haar_detect_result_t *found,uint64_t detect_ticks,
                        int cnn,uint32_t session,uint32_t epoch,lr_result *out)
{
    snapshot_result r={{0}};int rc;int32_t side=0;uint64_t start;
    if(!out || !gray || !found)return -531;
    if(async_prepared || async_pl_active)return -536;
    cnn_sample=cnn;
    reset_sample(out);
    if(!ready)return algorithm_failed(out,-534);
    if(cnn && live_algorithm_evidence_context(session,epoch))return algorithm_failed(out,-531);
    if(found->overflow)return algorithm_failed(out,HAAR_SR_ERR_OVERFLOW);
    r.word[SNAP_CANDIDATES]=(uint32_t)found->n_candidates;
    snapshot_set_ticks(&r,SNAP_DETECT_TICKS,detect_ticks);
    rc=found->found?0:HAAR_DR_NO_FACE;
    if(found->found){
        start=config.now();
        rc=roi_crop_square(gray,400,240,found->box.x,found->box.y,found->box.w,found->box.h,
                           g_live_roi,sizeof g_live_roi,&side);
        snapshot_set_ticks(&r,SNAP_ROI_TICKS,config.now()-start);
        if(!rc){r.word[SNAP_FOUND]=r.word[SNAP_ROI_VALID]=1;
            r.word[SNAP_ROI_SIDE]=(uint32_t)side;r.word[SNAP_ROI_BYTES]=(uint32_t)side*(uint32_t)side;
            r.word[SNAP_X]=(uint32_t)found->box.x;r.word[SNAP_Y]=(uint32_t)found->box.y;
            r.word[SNAP_W]=(uint32_t)found->box.w;r.word[SNAP_H]=(uint32_t)found->box.h;}
    }
    rc=prepare_roi(gray,&r,rc,out);
    if(rc==1 && cnn){
        haar_box_t square;uint32_t old=cnn_evidence.generation;
        uint64_t hz=g_live_diag.word[LD_HZ]|((uint64_t)g_live_diag.word[LD_HZ+1]<<32);
        if(roi_square_box(found->box.x,found->box.y,found->box.w,found->box.h,400,240,
                          &square.x,&square.y,&square.w))return algorithm_failed(out,-531);
        square.h=square.w;
        if(!c3_evidence_observe(&cnn_evidence,&square,config.now(),hz,session,epoch))
            return algorithm_failed(out,-531);
        if(old!=cnn_evidence.generation)wp4_classify_vote_reset(vote_required);
    }
    async_prepared=rc==1;return rc;
}
int live_algorithm_prepare_gray(const uint8_t *gray,const haar_detect_result_t *found,uint64_t ticks,lr_result *out){
    return prepare_gray(gray,found,ticks,0,0,0,out);
}
int live_algorithm_prepare_cnn_gray(const uint8_t *gray,const haar_detect_result_t *found,
                                    uint64_t ticks,uint32_t session,uint32_t epoch,lr_result *out){
    return prepare_gray(gray,found,ticks,1,session,epoch,out);
}
uint32_t live_algorithm_evidence_generation(void){return cnn_evidence.generation;}
int live_algorithm_evidence_context(uint32_t session,uint32_t epoch){
    uint32_t old=cnn_evidence.generation;
    if(async_prepared || async_pl_active)return -536;
    if(!c3_evidence_context(&cnn_evidence,session,epoch))return -531;
    if(old!=cnn_evidence.generation)wp4_classify_vote_reset(vote_required);
    return 0;
}
int live_algorithm_pl_begin(void)
{
    int rc;
    if(!ready || !async_prepared || async_pl_active)return -536;
    rc=wp4_job_begin(&pl_job,&config.lbp,(uint32_t)(uintptr_t)g_live_roi,
                     (size_t)last_roi_side*last_roi_side,last_roi_side,last_roi_side,g_live_hist,3776);
    if(!rc)async_pl_active=1;
    return rc;
}
int live_algorithm_pl_step(void)
{
    if(!async_pl_active)return -536;
    return wp4_job_step(&pl_job,64);
}
int live_algorithm_complete(lr_result *out)
{
    int rc;
    if(!out || !async_pl_active || pl_job.phase!=WP4_JOB_DONE)return -536;
    rc=finish_histogram(&pl_job.stats,pl_job.status,out);
    async_pl_active=async_prepared=0;return rc;
}
int live_algorithm_async_cancel(void)
{
    int rc;
    if(async_pl_active){
        wp4_job_cancel(&pl_job);rc=wp4_job_step(&pl_job,64);
        if(rc==1)return 1;
        if(!pl_job.stats.stopped){ready=0;return rc<0?rc:-18;}
    }
    async_pl_active=async_prepared=0;live_algorithm_invalidate();return 0;
}

static uint32_t make_enrollment_view(uint32_t view_index)
{
    wp4_enrollment_view_t view=wp4_enrollment_view(view_index);
    uint32_t side,x,y,offset;
    if(view.crop_side==0U || last_roi_side==0U)return 0U;
    side=(last_roi_side*(uint32_t)view.crop_side+127U)/128U;
    if(side<1U)side=1U;
    if(side>last_roi_side)side=last_roi_side;
    offset=(last_roi_side-side)/2U;
    for(y=0U;y<side;++y){
        for(x=0U;x<side;++x){
            uint32_t source_x=view.mirror?(offset+side-1U-x):(offset+x);
            enroll_view[y*side+x]=g_live_roi[(offset+y)*last_roi_side+source_x];
        }
    }
    return side;
}

int live_algorithm_enroll_current(uint32_t slot,uint32_t label)
{
    uint32_t view,side;wp4_stats stats;int rc;
    if(!ready || !last_roi_valid || !last_hist_valid)return -540;
    memcpy(enroll_features[0],g_live_hist,sizeof(g_live_hist));
    for(view=1U;view<4U;++view){
        side=make_enrollment_view(view);
        if(side==0U)return -541;
        memset(&stats,0,sizeof(stats));
        rc=wp4_extract_sized(&config.lbp,(uint32_t)(uintptr_t)enroll_view,
                             (size_t)side*side,side,side,
                             enroll_features[view],3776,&stats);
        if(rc || !stats.valid || !stats.stopped || stats.total!=14400)
            return rc?rc:-542;
    }
    rc=wp4_classify_enroll_one_shot(slot,label,&enroll_features[0][0]);
    if(rc==0){
        rc=face_store_save();
        g_live_diag.word[LD_STORAGE_STATE]=(rc==0)?
            (0x10000000U|face_store_generation()):(uint32_t)rc;
    }
    g_live_diag.word[LD_REGISTER_STATE]=(rc==0)?1U:(uint32_t)rc;
    return rc;
}

int live_algorithm_enroll_begin(uint32_t slot,uint32_t label)
{
    if(!ready || slot>=WP4_MATCH_MAX_IDENTITIES || label==0U || label>255U)
        return -543;
    enroll_slot=slot;enroll_label=label;enroll_count=0U;enroll_active=1;
    g_live_diag.word[LD_REGISTER_STATE]=0x10000000U|(slot<<16)|(label<<8);
    return 0;
}

int live_algorithm_enroll_add_current(void)
{
    if(!enroll_active)return -544;
    if(!last_roi_valid || !last_hist_valid)return -545;
    if(enroll_count>=LIVE_ENROLL_TARGET_SAMPLES)return -546;
    memcpy(enroll_features[enroll_count],g_live_hist,sizeof(g_live_hist));
    ++enroll_count;
    g_live_diag.word[LD_REGISTER_STATE]=0x20000000U|(enroll_slot<<16)|
        (enroll_label<<8)|enroll_count;
    return 0;
}

int live_algorithm_enroll_commit(void)
{
    int rc;
    if(!enroll_active)return -544;
    if(enroll_count<LIVE_ENROLL_MIN_SAMPLES)return -547;
    rc=wp4_classify_enroll_multi(enroll_slot,enroll_label,
                                 &enroll_features[0][0],enroll_count);
    if(rc==0){
        rc=face_store_save();
        g_live_diag.word[LD_STORAGE_STATE]=(rc==0)?
            (0x10000000U|face_store_generation()):(uint32_t)rc;
    }
    if(rc==0){
        g_live_diag.word[LD_REGISTER_STATE]=0x30000000U|(enroll_slot<<16)|
            (enroll_label<<8)|enroll_count;
        enroll_active=0;
    }
    return rc;
}

void live_algorithm_enroll_cancel(void)
{
    enroll_active=0;enroll_count=0U;
    g_live_diag.word[LD_REGISTER_STATE]=0U;
}

uint32_t live_algorithm_enroll_count(void)
{
    return enroll_active?enroll_count:0U;
}

int live_algorithm_remove_identity(uint32_t slot)
{
    int rc=wp4_classify_remove(slot);
    if(rc==0)rc=face_store_save();
    g_live_diag.word[LD_STORAGE_STATE]=(rc==0)?
        (0x10000000U|face_store_generation()):(uint32_t)rc;
    return rc;
}

int live_algorithm_reload_identities(void)
{
    int rc=face_store_load();
    g_live_diag.word[LD_STORAGE_STATE]=(uint32_t)rc;
    return rc;
}

int live_algorithm_save_identities(void)
{
    int rc=face_store_save();
    g_live_diag.word[LD_STORAGE_STATE]=(rc==0)?
        (0x10000000U|face_store_generation()):(uint32_t)rc;
    return rc;
}

uint32_t live_algorithm_storage_generation(void)
{
    return face_store_generation();
}

int live_algorithm_set_thresholds(uint32_t max_distance,uint32_t min_margin)
{
    int rc=wp4_classify_set_thresholds(max_distance,min_margin);
    if(!rc){live_set64(LD_THR_NUM,max_distance);live_set64(LD_THR_DEN,min_margin);}
    return rc;
}

void live_algorithm_set_vote_required(uint32_t required_votes)
{
    vote_required=required_votes;
    wp4_classify_vote_reset(required_votes);
    /* A new/cancelled login cannot borrow the preceding operation's box. */
    track_valid=0;track_timestamp=0U;
}

void live_algorithm_set_login_active(int active)
{
    strict_detection=active!=0;track_valid=0;track_timestamp=0U;
}
