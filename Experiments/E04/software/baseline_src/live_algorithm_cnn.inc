#include "live_algorithm.h"
#include "live_diagnostics.h"
#include "snapshot_preprocess.h"
#include "snapshot_process.h"
#include "roi_extract.h"
#include "tinyface_cnn.h"
#include "tinyface_classify.h"
#include "face_store.h"

#include <math.h>
#include <string.h>

#define QUALITY_MIN_MEAN       25U
#define QUALITY_MAX_MEAN      230U
#define QUALITY_MIN_GRADIENT    3U
#define RELIABLE_FACE_MIN_SIDE 80U
#define TRACK_TIMEOUT_MULTIPLIER 3U

live_diag g_live_diag __attribute__((aligned(32)));
uint8_t g_live_gray[96000] __attribute__((aligned(32)));
uint8_t g_live_roi[LIVE_FACE_MAX_BYTES] __attribute__((aligned(32)));
/* Retained as an ABI/debug symbol.  CNN data lives in g_live_embedding. */
uint16_t g_live_hist[3776] __attribute__((aligned(32)));
int8_t g_live_embedding[TINYFACE_EMBEDDING_SIZE] __attribute__((aligned(32)));
static uint8_t enroll_view[LIVE_FACE_MAX_BYTES] __attribute__((aligned(32)));
static int8_t enroll_features[LIVE_ENROLL_TARGET_SAMPLES][TINYFACE_EMBEDDING_SIZE]
    __attribute__((aligned(32)));
#ifdef CNN_PL_ACCEL
static int8_t enroll_features_ps[LIVE_ENROLL_TARGET_SAMPLES][TINYFACE_EMBEDDING_SIZE]
    __attribute__((aligned(32)));
#endif
static snapshot_work workspace;
static live_algorithm_io config;
static uint32_t last_roi_side;
static int bound,ready,last_roi_valid,last_hist_valid;
static int32_t track_x,track_y,track_w,track_h;
static uint64_t track_timestamp;
static int track_valid,strict_detection;
static uint32_t enroll_slot,enroll_label,enroll_count;
static int enroll_active;
static int async_prepared,async_cnn_ready;

typedef struct {
    uint32_t mean,mean_gradient,minimum,maximum,accepted;
} cnn_roi_quality_t;

static cnn_roi_quality_t check_raw_quality(const uint8_t *roi,uint32_t side)
{
    cnn_roi_quality_t q;
    uint64_t sum=0U,gradient=0U;
    uint32_t x,y;
    q.minimum=255U;q.maximum=0U;q.mean=0U;q.mean_gradient=0U;q.accepted=0U;
    if(roi==0 || side==0U || side>LIVE_FACE_MAX_SIDE)return q;
    for(y=0U;y<side;++y){
        for(x=0U;x<side;++x){
            uint32_t value=roi[y*side+x];
            sum+=value;
            if(value<q.minimum)q.minimum=value;
            if(value>q.maximum)q.maximum=value;
            if(x!=0U){uint32_t left=roi[y*side+x-1U];gradient+=(value>=left)?value-left:left-value;}
            if(y!=0U){uint32_t above=roi[(y-1U)*side+x];gradient+=(value>=above)?value-above:above-value;}
        }
    }
    q.mean=(uint32_t)(sum/((uint64_t)side*side));
    if(side>1U)q.mean_gradient=(uint32_t)(gradient/(2ULL*side*(side-1U)));
    q.accepted=(q.mean>=QUALITY_MIN_MEAN && q.mean<=QUALITY_MAX_MEAN &&
                q.mean_gradient>=QUALITY_MIN_GRADIENT);
    return q;
}

void live_algorithm_invalidate(void)
{
    unsigned i;
    last_roi_valid=0;last_hist_valid=0;last_roi_side=0U;
    for(i=LD_ROI_VALID;i<LD_HZ;i++)g_live_diag.word[i]=0U;
    g_live_diag.word[LD_FRESH_DETECTION]=g_live_diag.word[LD_QUALITY_SCOPE]=0U;
}

static int fp_check(void)
{
    static volatile double inputs[]={-2.5,2.5,-3.5,3.5};
    const double expected[]={-2,2,-4,4};unsigned i;
    if(haar_fp_check())return -530;
    for(i=0U;i<4U;i++)if(nearbyint(inputs[i])!=expected[i])return -530;
    return 0;
}

static int use_recent_track(const uint8_t *gray,snapshot_result *r)
{
    int32_t side=0;uint64_t now=config.now();
    uint64_t lifetime=config.lbp.timeout_ticks*TRACK_TIMEOUT_MULTIPLIER;
    int rc;
    /* A zero LBP timeout is legal in CNN mode; use one second in that case. */
    if(lifetime==0U)lifetime=1000000U*TRACK_TIMEOUT_MULTIPLIER;
    if(!track_valid || now-track_timestamp>lifetime){track_valid=0;return HAAR_DR_NO_FACE;}
    rc=roi_crop_square(gray,400,240,track_x,track_y,track_w,track_h,
                       g_live_roi,sizeof g_live_roi,&side);
    if(rc || side<(int32_t)RELIABLE_FACE_MIN_SIDE){track_valid=0;return HAAR_DR_NO_FACE;}
    r->word[SNAP_FOUND]=1U;r->word[SNAP_ROI_VALID]=1U;
    r->word[SNAP_ROI_SIDE]=(uint32_t)side;r->word[SNAP_ROI_BYTES]=(uint32_t)side*(uint32_t)side;
    r->word[SNAP_X]=(uint32_t)track_x;r->word[SNAP_Y]=(uint32_t)track_y;
    r->word[SNAP_W]=(uint32_t)track_w;r->word[SNAP_H]=(uint32_t)track_h;
    r->word[SNAP_RC]=0U;r->word[SNAP_STATE]=3U;return 0;
}

int live_algorithm_bind(const live_algorithm_io *io)
{
    ready=bound=0;
    if(!io || !io->rgb || !io->valid_image || !io->now)return -531;
    config=*io;bound=1;return 0;
}

int live_algorithm_init(void)
{
    int rc,store_rc;ready=0;
    if(!bound)return -531;
    rc=fp_check();
    if(rc)return rc;
    if(tinyface_classify_init())return -533;
    store_rc=face_store_load();g_live_diag.word[LD_STORAGE_STATE]=(uint32_t)store_rc;
    tinyface_classify_vote_reset(1U);
    enroll_active=0;enroll_count=0U;track_valid=0;track_timestamp=0U;strict_detection=0;
    async_prepared=async_cnn_ready=0;live_algorithm_invalidate();
    memset(g_live_roi,0,sizeof g_live_roi);memset(g_live_hist,0,sizeof g_live_hist);
    memset(g_live_embedding,0,sizeof g_live_embedding);
    live_set64(LD_THR_NUM,32767U-TINYFACE_DEFAULT_MIN_SIMILARITY);
    live_set64(LD_THR_DEN,TINYFACE_DEFAULT_MIN_MARGIN);
    ready=1;return 0;
}

static int algorithm_failed(lr_result *out,int rc)
{
    last_roi_valid=0;last_hist_valid=0;
    g_live_diag.word[LD_ROI_VALID]=g_live_diag.word[LD_HIST_VALID]=0U;
    ready=0;out->status=LR_FAILED;out->label=0U;out->error=rc;return rc;
}

static void reset_sample(lr_result *out)
{
    unsigned i;
    out->status=LR_FAILED;out->label=0U;out->error=0;
    last_roi_valid=0;last_hist_valid=0;last_roi_side=0U;
    for(i=LD_ROI_VALID;i<LD_CAPTURE_TICKS;i++)g_live_diag.word[i]=0U;
    for(i=LD_PREPROCESS_TICKS;i<LD_HZ;i++)g_live_diag.word[i]=0U;
    for(i=LD_ROI_SIDE;i<=LD_MATCH_ACCEPTED;i++)g_live_diag.word[i]=0U;
    g_live_diag.word[LD_PERSON]=TINYFACE_MATCH_UNKNOWN;
    g_live_diag.word[LD_FRESH_DETECTION]=g_live_diag.word[LD_QUALITY_SCOPE]=0U;
    memset(g_live_roi,0,sizeof g_live_roi);memset(g_live_embedding,0,sizeof g_live_embedding);
}

static int prepare_roi(const uint8_t *gray,snapshot_result *r,int rc,lr_result *out)
{
    cnn_roi_quality_t quality;unsigned i;
    int small=rc==0 && (r->word[SNAP_W]<RELIABLE_FACE_MIN_SIDE ||
                        r->word[SNAP_H]<RELIABLE_FACE_MIN_SIDE);
    g_live_diag.word[LD_FRESH_DETECTION]=rc==0 &&
        r->word[SNAP_W]>=RELIABLE_FACE_MIN_SIDE && r->word[SNAP_H]>=RELIABLE_FACE_MIN_SIDE;
    g_live_diag.word[LD_QUALITY_SCOPE]=0U;
    if(small)rc=strict_detection?HAAR_DR_NO_FACE:use_recent_track(gray,r);
    else if(rc==HAAR_DR_NO_FACE && !strict_detection)rc=use_recent_track(gray,r);
    else if(rc==0){
        track_x=(int32_t)r->word[SNAP_X];track_y=(int32_t)r->word[SNAP_Y];
        track_w=(int32_t)r->word[SNAP_W];track_h=(int32_t)r->word[SNAP_H];
        track_timestamp=config.now();track_valid=1;
    }
    for(i=0U;i<4U;i++)g_live_diag.word[LD_BBOX+i]=r->word[SNAP_X+i];
    g_live_diag.word[LD_CANDIDATES]=r->word[SNAP_CANDIDATES];
    for(i=0U;i<2U;i++){
        g_live_diag.word[LD_DETECT_TICKS+i]=r->word[SNAP_DETECT_TICKS+i];
        g_live_diag.word[LD_ROI_TICKS+i]=r->word[SNAP_ROI_TICKS+i];
    }
    if(rc==HAAR_DR_NO_FACE){
        uint32_t sum=0U;for(i=0U;i<96000U;i++)sum+=gray[i];
        g_live_diag.word[LD_QUALITY_MEAN]=sum/96000U;
        g_live_diag.word[LD_QUALITY_SCOPE]=small?3U:2U;out->status=LR_NO_FACE;return 0;
    }
    if(rc)return algorithm_failed(out,rc);
    last_roi_side=r->word[SNAP_ROI_SIDE];last_roi_valid=1;
    g_live_diag.word[LD_ROI_VALID]=1U;g_live_diag.word[LD_ROI_SIDE]=last_roi_side;
    g_live_diag.word[LD_QUALITY_SCOPE]=1U;quality=check_raw_quality(g_live_roi,last_roi_side);
    g_live_diag.word[LD_QUALITY_MEAN]=quality.mean;
    g_live_diag.word[LD_QUALITY_GRADIENT]=quality.mean_gradient;
    g_live_diag.word[LD_QUALITY_ACCEPTED]=quality.accepted;
    if(!quality.accepted){out->status=LR_UNKNOWN;out->label=0U;return 0;}
    return 1;
}

static int run_cnn(uint64_t *elapsed)
{
    uint64_t start=config.now();uint32_t i;
    int rc=tinyface_cnn_infer(g_live_roi,last_roi_side,g_live_embedding);
    *elapsed=config.now()-start;
    if(!rc)for(i=0U;i<TINYFACE_EMBEDDING_SIZE;++i)
        g_live_hist[i]=(uint16_t)((int32_t)g_live_embedding[i]+128);
    return rc;
}

static int finish_embedding(uint64_t elapsed,int rc,lr_result *out)
{
    tinyface_match_t match;uint64_t start;uint32_t stable;
    g_live_diag.word[LD_PL_FLAGS]=0x434E4E31U; /* "CNN1" */
    g_live_diag.word[LD_DMA_STATUS]=0U;live_set64(LD_LBP_TICKS,elapsed);
    if(rc)return algorithm_failed(out,rc);
    last_hist_valid=1;start=config.now();rc=tinyface_classify(g_live_embedding,&match);
    live_set64(LD_CLASSIFY_TICKS,config.now()-start);
    if(rc)return algorithm_failed(out,rc);
    g_live_diag.word[LD_HIST_VALID]=1U;g_live_diag.word[LD_TOTAL]=TINYFACE_EMBEDDING_SIZE;
    g_live_diag.word[LD_PERSON]=match.person;g_live_diag.word[LD_TEMPLATE]=match.template_index;
    live_set64(LD_DISTANCE,65535U-match.similarity);
    live_set64(LD_SECOND_DISTANCE,65535U-match.second_similarity);
    live_set64(LD_MARGIN,match.margin);g_live_diag.word[LD_MATCH_ACCEPTED]=match.known;
    stable=tinyface_classify_vote(match.known?match.person:TINYFACE_MATCH_UNKNOWN);
    if(stable!=TINYFACE_MATCH_UNKNOWN && tinyface_classify_label(stable)!=0U){
        out->status=LR_KNOWN;out->label=tinyface_classify_label(stable);
    }else{out->status=LR_UNKNOWN;out->label=0U;}
    return 0;
}

int live_algorithm_run(lr_result *out)
{
    snapshot_result r={{0}};uint64_t start,elapsed=0U;int rc;
    if(!out)return -531;
    if(async_prepared || async_cnn_ready)return -536;
    reset_sample(out);
    if(!ready || !config.valid_image())return algorithm_failed(out,-534);
    start=config.now();
    rc=snapshot_rgb_to_gray(config.rgb,768000,800,480,1600,g_live_gray,sizeof g_live_gray);
    live_set64(LD_PREPROCESS_TICKS,config.now()-start);
    if(rc)return algorithm_failed(out,rc);
    rc=snapshot_detect_roi_m13(g_live_gray,g_live_roi,sizeof g_live_roi,&workspace,64,&r,config.now);
    rc=prepare_roi(g_live_gray,&r,rc,out);
    if(rc!=1)return rc;
    rc=run_cnn(&elapsed);return finish_embedding(elapsed,rc,out);
}

int live_algorithm_prepare_gray(const uint8_t *gray,const haar_detect_result_t *found,
                                uint64_t detect_ticks,lr_result *out)
{
    snapshot_result r={{0}};int rc;int32_t side=0;uint64_t start;
    if(!out || !gray || !found)return -531;
    if(async_prepared || async_cnn_ready)return -536;
    reset_sample(out);
    if(!ready)return algorithm_failed(out,-534);
    if(found->overflow)return algorithm_failed(out,HAAR_SR_ERR_OVERFLOW);
    r.word[SNAP_CANDIDATES]=(uint32_t)found->n_candidates;
    snapshot_set_ticks(&r,SNAP_DETECT_TICKS,detect_ticks);rc=found->found?0:HAAR_DR_NO_FACE;
    if(found->found){
        start=config.now();
        rc=roi_crop_square(gray,400,240,found->box.x,found->box.y,found->box.w,found->box.h,
                           g_live_roi,sizeof g_live_roi,&side);
        snapshot_set_ticks(&r,SNAP_ROI_TICKS,config.now()-start);
        if(!rc){r.word[SNAP_FOUND]=r.word[SNAP_ROI_VALID]=1U;
            r.word[SNAP_ROI_SIDE]=(uint32_t)side;r.word[SNAP_ROI_BYTES]=(uint32_t)side*(uint32_t)side;
            r.word[SNAP_X]=(uint32_t)found->box.x;r.word[SNAP_Y]=(uint32_t)found->box.y;
            r.word[SNAP_W]=(uint32_t)found->box.w;r.word[SNAP_H]=(uint32_t)found->box.h;}
    }
    rc=prepare_roi(gray,&r,rc,out);async_prepared=rc==1;return rc;
}

int live_algorithm_pl_begin(void)
{
    uint64_t elapsed=0U;int rc;
    if(!ready || !async_prepared || async_cnn_ready)return -536;
    rc=run_cnn(&elapsed);live_set64(LD_LBP_TICKS,elapsed);
    if(rc){async_prepared=0;return rc;}
    async_cnn_ready=1;return 0;
}

int live_algorithm_pl_step(void)
{return async_cnn_ready?0:-536;}

int live_algorithm_complete(lr_result *out)
{
    int rc;uint64_t elapsed;
    if(!out || !async_cnn_ready)return -536;
    elapsed=((uint64_t)g_live_diag.word[LD_LBP_TICKS+1U]<<32)|g_live_diag.word[LD_LBP_TICKS];
    rc=finish_embedding(elapsed,0,out);async_cnn_ready=async_prepared=0;return rc;
}

int live_algorithm_async_cancel(void)
{async_cnn_ready=async_prepared=0;live_algorithm_invalidate();return 0;}

static uint32_t make_enrollment_view(uint32_t view_index)
{
    static const uint16_t crop_side[4]={128U,112U,96U,128U};
    uint32_t side,x,y,offset,mirror;
    if(view_index>=4U || last_roi_side==0U)return 0U;
    mirror=view_index==3U;
    side=(last_roi_side*(uint32_t)crop_side[view_index]+127U)/128U;
    if(side<1U)side=1U;
    if(side>last_roi_side)side=last_roi_side;
    offset=(last_roi_side-side)/2U;
    for(y=0U;y<side;++y)for(x=0U;x<side;++x){
        uint32_t source_x=mirror?(offset+side-1U-x):(offset+x);
        enroll_view[y*side+x]=g_live_roi[(offset+y)*last_roi_side+source_x];
    }
    return side;
}

int live_algorithm_enroll_current(uint32_t slot,uint32_t label)
{
    uint32_t view,side;int rc;
    if(!ready || !last_roi_valid || !last_hist_valid)return -540;
    memcpy(enroll_features[0],g_live_embedding,TINYFACE_EMBEDDING_SIZE);
#ifdef CNN_PL_ACCEL
    rc=tinyface_cnn_infer_cpu(g_live_roi,last_roi_side,enroll_features_ps[0]);
    if(rc)return rc;
#endif
    for(view=1U;view<4U;++view){
        side=make_enrollment_view(view);
        if(side==0U)return -541;
        rc=tinyface_cnn_infer(enroll_view,side,enroll_features[view]);
        if(rc)return rc;
#ifdef CNN_PL_ACCEL
        rc=tinyface_cnn_infer_cpu(enroll_view,side,enroll_features_ps[view]);
        if(rc)return rc;
#endif
    }
    rc=tinyface_classify_enroll_one_shot(slot,label,&enroll_features[0][0]);
    if(rc==0)rc=face_store_stage_active_identity(slot);
#ifdef CNN_PL_ACCEL
    if(rc==0)rc=face_store_stage_cnn_bank(FACE_STORE_CNN_BANK_PS,slot,label,
                                           &enroll_features_ps[0][0],4U);
#endif
    if(rc==0){rc=face_store_save();g_live_diag.word[LD_STORAGE_STATE]=(rc==0)?
        (0x10000000U|face_store_generation()):(uint32_t)rc;}
    g_live_diag.word[LD_REGISTER_STATE]=(rc==0)?1U:(uint32_t)rc;return rc;
}

int live_algorithm_enroll_begin(uint32_t slot,uint32_t label)
{
    if(!ready || slot>=TINYFACE_MAX_IDENTITIES || label==0U || label>255U)return -543;
    enroll_slot=slot;enroll_label=label;enroll_count=0U;enroll_active=1;
    g_live_diag.word[LD_REGISTER_STATE]=0x10000000U|(slot<<16)|(label<<8);return 0;
}

int live_algorithm_enroll_add_current(void)
{
    int rc;
    if(!enroll_active)return -544;
    if(!last_roi_valid || !last_hist_valid)return -545;
    if(enroll_count>=LIVE_ENROLL_TARGET_SAMPLES)return -546;
#ifdef CNN_PL_ACCEL
    rc=tinyface_cnn_infer_cpu(g_live_roi,last_roi_side,enroll_features_ps[enroll_count]);
    if(rc)return rc;
#else
    (void)rc;
#endif
    memcpy(enroll_features[enroll_count],g_live_embedding,TINYFACE_EMBEDDING_SIZE);++enroll_count;
    g_live_diag.word[LD_REGISTER_STATE]=0x20000000U|(enroll_slot<<16)|(enroll_label<<8)|enroll_count;
    return 0;
}

int live_algorithm_enroll_commit(void)
{
    int rc;
    if(!enroll_active)return -544;
    if(enroll_count<LIVE_ENROLL_MIN_SAMPLES)return -547;
    rc=tinyface_classify_enroll_multi(enroll_slot,enroll_label,&enroll_features[0][0],enroll_count);
    if(rc==0)rc=face_store_stage_active_identity(enroll_slot);
#ifdef CNN_PL_ACCEL
    if(rc==0)rc=face_store_stage_cnn_bank(FACE_STORE_CNN_BANK_PS,enroll_slot,
                                           enroll_label,&enroll_features_ps[0][0],
                                           enroll_count);
#endif
    if(rc==0){rc=face_store_save();g_live_diag.word[LD_STORAGE_STATE]=(rc==0)?
        (0x10000000U|face_store_generation()):(uint32_t)rc;}
    if(rc==0){g_live_diag.word[LD_REGISTER_STATE]=0x30000000U|(enroll_slot<<16)|
        (enroll_label<<8)|enroll_count;enroll_active=0;}
    return rc;
}

void live_algorithm_enroll_cancel(void)
{enroll_active=0;enroll_count=0U;g_live_diag.word[LD_REGISTER_STATE]=0U;}
uint32_t live_algorithm_enroll_count(void){return enroll_active?enroll_count:0U;}

int live_algorithm_remove_identity(uint32_t slot)
{
    int rc=tinyface_classify_remove(slot);
    if(rc==0)rc=face_store_stage_delete_identity(slot);
    if(rc==0)rc=face_store_save();
    g_live_diag.word[LD_STORAGE_STATE]=(rc==0)?
        (0x10000000U|face_store_generation()):(uint32_t)rc;return rc;
}
int live_algorithm_reload_identities(void)
{int rc=face_store_load();g_live_diag.word[LD_STORAGE_STATE]=(uint32_t)rc;return rc;}
int live_algorithm_save_identities(void)
{int rc=face_store_save();g_live_diag.word[LD_STORAGE_STATE]=(rc==0)?
    (0x10000000U|face_store_generation()):(uint32_t)rc;return rc;}
uint32_t live_algorithm_storage_generation(void){return face_store_generation();}

int live_algorithm_set_thresholds(uint32_t max_distance_value,uint32_t min_margin_value)
{
    int rc;
    if(max_distance_value>32767U)return -591;
    rc=tinyface_classify_set_thresholds(32767U-max_distance_value,min_margin_value);
    if(!rc){live_set64(LD_THR_NUM,max_distance_value);live_set64(LD_THR_DEN,min_margin_value);}
    return rc;
}
void live_algorithm_set_vote_required(uint32_t required_votes)
{tinyface_classify_vote_reset(required_votes);track_valid=0;track_timestamp=0U;}
void live_algorithm_set_login_active(int active)
{strict_detection=active!=0;track_valid=0;track_timestamp=0U;}
