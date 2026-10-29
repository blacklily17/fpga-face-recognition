#include "face_scheduler.h"
#include "overlay_regs.h"
#include <string.h>
static const haar_search_params_t params={1.2,40,240};
static void clear_box(face_scheduler_t *s,uint32_t reason){
    bbox_message_t box;memset(&box,0,sizeof box);box.epoch=s->epoch;box.reason=reason;
    face_scheduler_publish(s,&box);
}
void face_scheduler_publish(face_scheduler_t *s,const bbox_message_t *box){
    if(!s || !box)return;
    s->pending=*box;
    if(box->valid && !bbox_geometry_valid(box)){s->pending.valid=0;s->pending.reason=BOX_ILLEGAL;}
    s->latest=s->pending;s->pending_valid=1;
}
static void cancel_background(face_scheduler_t *s){
    if(s->arbiter.owner==SNAPSHOT_BACKGROUND)(void)snapshot_cancel(&s->arbiter,SNAPSHOT_BACKGROUND);
    haar_worker_cancel(&s->background);s->background_phase=0;
}
void face_scheduler_set_foreground(face_scheduler_t *s,int active){
    if(!s)return;
    active=active!=0;
    if(active && !s->foreground_active){
        cancel_background(s);clear_box(s,BOX_CANCELLED);
        (void)snapshot_prefetch_stop(&s->prefetch,0,s->ops.ps_now_us(s->ops.context));
        ++s->session_id;s->session_operation=0;s->next_sample_index=0;
        if(s->foreground.phase==FG_DONE && s->prefetch.phase!=SP_LOCKED &&
           (s->foreground.status==FOREGROUND_CANCELLED ||
            s->foreground.status==SNAPSHOT_PIPELINE_INVALID)){
            s->foreground.phase=FG_IDLE;s->foreground.status=0;
        }
    }
    if(!active && s->foreground_active){
        foreground_cancel(&s->foreground);
        (void)snapshot_prefetch_stop(&s->prefetch,0,s->ops.ps_now_us(s->ops.context));
        s->session_operation=0;s->next_sample_index=0;s->have_start=0;
    }
    s->foreground_active=active;
}
int face_scheduler_sample_begin(face_scheduler_t *s,uint32_t operation,uint32_t slot){
    int rc;uint64_t now;
    if(!s || (operation!=1 && operation!=2))return -621;
    if(s->prefetch.phase==SP_LOCKED)return SNAPSHOT_PIPELINE_UNSAFE;
    if(s->foreground.phase!=FG_IDLE && s->foreground.phase!=FG_DONE)return 1;
    face_scheduler_set_foreground(s,1);now=s->ops.ps_now_us(s->ops.context);
    /* A rising transition may occur while the OLD job is still cancelling.
     * Only its completed, successful owner cleanup admits the new session. */
    if(s->foreground.phase==FG_DONE && s->foreground.cancel_requested &&
       s->foreground.session_id!=s->session_id && s->prefetch.phase!=SP_LOCKED){
        s->foreground.phase=FG_IDLE;s->foreground.status=0;
    }
    if(s->foreground.phase==FG_DONE && s->foreground.status<0 &&
       s->foreground.status!=FOREGROUND_CANCELLED)return s->foreground.status;
    if(s->session_operation==2 && operation==2 && s->prefetch.error)return s->prefetch.error;
    if(s->session_operation && (s->session_operation!=operation || s->session_slot!=slot)){
        rc=snapshot_prefetch_stop(&s->prefetch,0,now);if(rc)return rc;
        ++s->session_id;s->session_operation=0;s->next_sample_index=0;
    }
    if(s->prefetch.phase==SP_DRAIN)return 1;
    if(operation==2){
        if(s->next_sample_index>=SNAPSHOT_PIPELINE_FRAMES)return SNAPSHOT_PIPELINE_LIMIT;
        if(!s->session_operation){
            rc=snapshot_prefetch_start(&s->prefetch,s->session_id,s->epoch);if(rc)return rc;
        }
    }else if(s->prefetch.active){
        rc=snapshot_prefetch_stop(&s->prefetch,0,now);if(rc)return rc;
    }
    s->foreground.session_id=s->session_id;s->foreground.sample_index=s->next_sample_index;
    rc=foreground_begin(&s->foreground,operation,slot);
    if(!rc){
        s->session_operation=operation;s->session_slot=slot;
        if(operation==2){++s->next_sample_index;g_snapshot_pipeline_diag.begins=s->next_sample_index;}
    }
    return rc;
}
int face_scheduler_sample_result(face_scheduler_t *s,lr_result *out){
    int rc;
    if(!s)return -621;
    rc=foreground_result(&s->foreground,out);
    // 计算结束到 UI 领取之间也可能复位；不能把旧 epoch 的成功结果交给投票。
    if(!rc && s->foreground.meta.epoch!=gray_snapshot_read(s->arbiter.hw,OV_EPOCH)){
        s->foreground.status=SNAPSHOT_PIPELINE_INVALID;
        s->foreground.result.status=LR_FAILED;s->foreground.result.label=0;
        s->foreground.result.error=SNAPSHOT_PIPELINE_INVALID;
        *out=s->foreground.result;
        (void)snapshot_prefetch_stop(&s->prefetch,SNAPSHOT_PIPELINE_INVALID,
                                    s->ops.ps_now_us(s->ops.context));
        clear_box(s,BOX_RESET);
        return SNAPSHOT_PIPELINE_INVALID;
    }
    return rc;
}
int face_scheduler_sample_cancel(face_scheduler_t *s){
    int rc;
    if(!s)return -621;
    // 结果页已恢复后台绿框采集；先释放后台 owner，再等待硬件取消确认。
    // 否则 SP_DRAIN 暂停后台复制，后台 owner 无法释放，会互相等待至超时。
    cancel_background(s);
    foreground_cancel(&s->foreground);
    /* Completion is not valid across a reset, including a reset that occurs
     * after UI has privately frozen its decision and while spare drain waits. */
    if(s->session_operation==2 && s->prefetch.session_id==s->session_id &&
       s->prefetch.epoch!=gray_snapshot_read(s->arbiter.hw,OV_EPOCH))
        (void)snapshot_prefetch_stop(&s->prefetch,SNAPSHOT_PIPELINE_INVALID,
                                    s->ops.ps_now_us(s->ops.context));
    /* Natural completion cancels only unused speculation, not the successful
     * session. Keep genuine foreground/epoch/unsafe errors intact. */
    rc=snapshot_prefetch_stop(&s->prefetch,
                              s->prefetch.active && !(s->foreground.phase==FG_DONE && s->foreground.status==0)?FOREGROUND_CANCELLED:0,
                              s->ops.ps_now_us(s->ops.context));
    if(rc)return rc;
    /* A zero drain result proves ownership safety, not successful provenance.
     * Only explicit user cancellation is an expected non-success here. */
    if(s->session_operation==2 && s->prefetch.error<0 &&
       s->prefetch.error!=FOREGROUND_CANCELLED)return s->prefetch.error;
    if(s->foreground.phase==FG_IDLE || s->foreground.phase==FG_DONE){
        if(s->foreground.status<0 && s->foreground.status!=FOREGROUND_CANCELLED)return s->foreground.status;
        return 0;
    }
    clear_box(s,BOX_CANCELLED);return 1;
}
int face_scheduler_init(face_scheduler_t *s,gray_snapshot_hw_t *hw,const face_scheduler_ops_t *ops,const foreground_ops_t *fg){
    int rc;
    if(!s || !hw || !ops || !ops->video_service || !ops->ui_service || !ops->ps_now_us)return -621;
    memset(s,0,sizeof *s);s->ops=*ops;snapshot_arbiter_init(&s->arbiter,hw);
    s->epoch=gray_snapshot_read(hw,OV_EPOCH);
    rc=haar_worker_init(&s->background,&s->background_ws,400,240,64);if(rc)return rc;
    rc=foreground_init(&s->foreground,&s->arbiter,&s->foreground_ws,s->foreground_gray,fg);
    if(rc)return rc;
    snapshot_prefetch_init(&s->prefetch,&s->arbiter,s->prefetch_gray);
    s->foreground.pipeline=&s->prefetch;return 0;
}
static void publish_detection(face_scheduler_t *s,const snapshot_meta_t *meta,const haar_detect_result_t *found,int rc,uint64_t now){
    bbox_message_t box;memset(&box,0,sizeof box);
    box.frame_id=meta->frame_id;box.request_id=meta->request_id;box.epoch=meta->epoch;
    box.source_ticks=meta->source_ticks;box.result_ticks=now;
    box.reason=rc<0?BOX_DETECT_ERROR:found->found?BOX_VALID:BOX_NO_FACE;
    if(!rc && found->found){
        box.valid=1;box.x=(uint32_t)found->box.x;box.y=(uint32_t)found->box.y;
        box.w=(uint32_t)found->box.w;box.h=(uint32_t)found->box.h;
    }
    face_scheduler_publish(s,&box);
}
static void send_pending(face_scheduler_t *s,uint64_t now){
    uint32_t words[OV_BOX_WORDS],status,i;
    if(s->latest.valid && now-s->latest.source_ticks>=OV_TICKS_PER_SECOND)clear_box(s,BOX_EXPIRED);
    if(!s->pending_valid)return;
    if(s->pending.valid && now-s->pending.source_ticks>=OV_TICKS_PER_SECOND){
        s->pending.valid=0;s->pending.reason=BOX_EXPIRED;s->latest=s->pending;
    }
    status=gray_snapshot_read(s->arbiter.hw,OV_STATUS);
    if((status&8u) || !(status&16u) || !s->epoch)return;
    s->pending.epoch=s->epoch;s->pending.sequence=++s->sequence;
    bbox_pack(&s->pending,words);
    for(i=0;i<OV_BOX_WORDS;i++)gray_snapshot_write(s->arbiter.hw,OV_BOX_SHADOW+4*i,words[i]);
    gray_snapshot_barrier(s->arbiter.hw);
    gray_snapshot_write(s->arbiter.hw,OV_COMMAND,OV_CMD_BOX_COMMIT);s->pending_valid=0;
}
static void background_step(face_scheduler_t *s,uint64_t now,uint64_t start_us){
    int rc;unsigned n;haar_detect_result_t found;
    if(s->background_disabled)return;
    if(!s->background_phase){
        if(s->have_start && now-s->last_start_ticks<20000000u)return;
        rc=snapshot_begin(&s->arbiter,SNAPSHOT_BACKGROUND);
        if(rc<0)goto error;
        if(rc)return;
        s->last_start_ticks=now;s->have_start=1;s->background_phase=1;return;
    }
    if(s->background_phase==1){
        rc=snapshot_copy_step(&s->arbiter,SNAPSHOT_BACKGROUND,s->background_gray,OV_GRAY_BYTES,256,&s->background_meta);
        if(rc<0)goto error;
        if(rc)return;
        rc=haar_worker_begin(&s->background,s->background_gray,&params);if(rc<0)goto error;
        s->background_phase=2;return;
    }
    for(n=0;n<64;n++){
        rc=haar_worker_step(&s->background,1);
        if(rc<=0){
            rc=haar_worker_result(&s->background,&found);
            publish_detection(s,&s->background_meta,&found,rc,now);
            ++s->background_jobs;s->background_phase=0;return;
        }
        if(s->ops.ps_now_us(s->ops.context)-start_us>=5000u)return;
    }
    return;
error:
    s->background_error=rc;s->background_disabled=1;cancel_background(s);clear_box(s,BOX_CAMERA_FAULT);
}
void face_scheduler_step(face_scheduler_t *s,uint64_t ps_now_us){
    uint64_t now,end;uint32_t epoch;int rc;foreground_phase_t before;
    if(!s)return;
    if(s->video_seen && ps_now_us-s->last_video_us>s->max_video_gap_us)
        s->max_video_gap_us=ps_now_us-s->last_video_us;
    s->last_video_us=ps_now_us;s->video_seen=1;
    rc=s->ops.video_service(s->ops.context);
    if(rc)s->video_error=rc;
    s->ops.ui_service(s->ops.context);
    epoch=gray_snapshot_read(s->arbiter.hw,OV_EPOCH);
    if(epoch!=s->epoch){
        cancel_background(s);foreground_abort(&s->foreground,SNAPSHOT_PIPELINE_INVALID);
        (void)snapshot_prefetch_stop(&s->prefetch,SNAPSHOT_PIPELINE_INVALID,ps_now_us);
        s->epoch=epoch;clear_box(s,BOX_RESET);s->have_start=0;
    }
    if(gray_snapshot_now(s->arbiter.hw,&now)){
        s->background_disabled=1;clear_box(s,BOX_CAMERA_FAULT);
        foreground_abort(&s->foreground,-4);
        (void)snapshot_prefetch_stop(&s->prefetch,-4,ps_now_us);
        (void)snapshot_prefetch_step(&s->prefetch,s->foreground.gray,ps_now_us);
        if(s->foreground.phase==FG_CANCELLING)(void)foreground_step(&s->foreground);
        return;
    }
    if(s->video_error){
        foreground_abort(&s->foreground,s->video_error);
        (void)snapshot_prefetch_stop(&s->prefetch,s->video_error,ps_now_us);
    }
    before=s->foreground.phase;
    if(s->foreground_active || before==FG_CANCELLING){
        rc=foreground_step(&s->foreground);
        if(before==FG_DETECT && s->foreground.phase==FG_ROI)
            publish_detection(s,&s->foreground.meta,&s->foreground.detected,0,now);
        if(rc<0 && before!=FG_DONE && rc!=FOREGROUND_CANCELLED)clear_box(s,BOX_DETECT_ERROR);
    }else if(!s->video_error && s->prefetch.phase!=SP_DRAIN && s->prefetch.phase!=SP_LOCKED)
        background_step(s,now,ps_now_us);
    /* Foreground first, one bounded spare-buffer step second. */
    rc=snapshot_prefetch_step(&s->prefetch,s->foreground.gray,s->ops.ps_now_us(s->ops.context));
    if(rc<0 && s->prefetch.error && s->foreground.phase!=FG_DONE)
        foreground_abort(&s->foreground,rc);
    if(s->video_error)clear_box(s,BOX_CAMERA_FAULT);
    /* Time sampled again after work, so just-expired results cannot escape. */
    if(!gray_snapshot_now(s->arbiter.hw,&now))send_pending(s,now);
    end=s->ops.ps_now_us(s->ops.context);
    if(end-ps_now_us>s->max_step_us)s->max_step_us=end-ps_now_us;
}
