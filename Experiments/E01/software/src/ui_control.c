#include "ui_control.h"
#include "login_journal.h"
#include "live_algorithm.h"
#include "live_video.h"
#include "live_diagnostics.h"
#include "wp4_classify.h"
#include <string.h>

#define UI_ERR_FULL (-580)
#define UI_ERR_STORAGE (-581)
#define UI_ERR_TOUCH (-582)
#define RESCUE_MAX_DISTANCE 10200000U
#define RESCUE_MIN_MARGIN 800000U
#define RESCUE_MIN_FACE_SIDE 80U
#define RESCUE_APPLIED_MASK 0x80000000U
volatile ui_control_diagnostics g_ui_diag __attribute__((aligned(32)));
volatile ui_control_diagnostics stats __attribute__((aligned(32)));
volatile uint32_t ui_state;
/* commit 先改 RAM 再保存 SD；失败时仅恢复 RAM，绝不额外写 SD。 */
static uint16_t saved_features[WP4_MATCH_MAX_PROTOTYPES][WP4_MATCH_FEATURE_COUNT];
static uint32_t saved_label, saved_count;

void ui_control_publish(const ui_control *u)
{
 g_ui_diag.magic=0x55494354U;g_ui_diag.version=3U;
 g_ui_diag.page=u->page;g_ui_diag.mode=u->mode;g_ui_diag.label=u->result.label;
 g_ui_diag.count=u->count;g_ui_diag.sample=u->sample;g_ui_diag.busy=u->busy;
 g_ui_diag.error=u->error;g_ui_diag.display_error=u->display_error;
 g_ui_diag.cancel_pending=u->cancel_pending;g_ui_diag.fault=u->fault;
 g_ui_diag.backend_error=u->error;
 g_ui_diag.sample_count=u->mode==UI_ENROLLING?u->count:u->sample;
 g_ui_diag.pl_clock_hz=100000000U;
 g_ui_diag.sequence=u->sequence;g_ui_diag.cancel_latency_ms=u->cancel_latency_ms;
 g_ui_diag.login_attempts=u->login_attempts;g_ui_diag.login_rejected=u->login_rejected;
 g_ui_diag.login_streak=u->login_streak;g_ui_diag.login_stop=u->login_stop;
 g_ui_diag.login_quality=u->login_quality;g_ui_diag.login_elapsed_ms=u->login_elapsed_ms;
 stats=g_ui_diag;ui_state=u->page;
}
static void show(ui_control *u, unsigned page)
{
 u->page=page;
 {
 unsigned p,users=0U,count=u->count;
 if(u->mode!=UI_ENROLLING && page!=UI_REGISTERED && page!=UI_PROCESSING &&
    page!=UI_PREPARE && page!=UI_OVERWRITE){
  for(p=0U;p<WP4_MATCH_MAX_IDENTITIES;++p)
   if(wp4_classify_template_count(p))++users;
  count=users;
 }
 if(page==UI_USERS)count=(u->slot<<4)|wp4_classify_template_count(u->slot);
 if(page==UI_LOGIN || (page==UI_QUALITY && u->login_stop!=LOGIN_PENDING))
  count=UI_ADAPTIVE_COUNT | u->sample | (u->login_attempts<<4) | (u->login_quality<<8);
 u->display_error=u->ops.show(u->ops.ctx,page,
     page==UI_KNOWN?u->result.label:u->label,count);
 }
 if(u->display_error){
  /* 未显示确认页时禁止解释后续触摸为提交授权。 */
  u->fault=1U;u->result.status=LR_FAILED;u->result.label=0U;
  u->result.error=u->display_error;u->page=UI_ERROR;
 }
 login_journal_observe(u);
 ui_control_publish(u);
}
static void fail(ui_control *u, int rc)
{
 int stop;
 u->error=rc;u->result.status=LR_FAILED;u->result.label=0U;u->result.error=rc;
 /* 同步调用返回后才停机；停止失败时不 invalidate，也不再启动采集。 */
 stop=u->ops.quiesce(u->ops.ctx,rc);u->paused=1U;
 u->fault=1U;u->mode=UI_IDLE;live_algorithm_enroll_cancel();
 u->login_finishing=0U;u->login_finish_label=0U;
 live_algorithm_set_login_active(0);
 u->sample_active=0U;
 if(u->async.active)u->async.active(u->async.ctx,0);
 if(stop==0)live_algorithm_invalidate();
 else u->result.error=stop;
 show(u,UI_ERROR);
}
static int resume(ui_control *u)
{
 int rc;
 if(u->async.begin){u->paused=0U;u->async.active(u->async.ctx,0);return 0;}
 rc=live_video_start();
 if(rc){fail(u,rc);return rc;}
 u->paused=0U;return 0;
}
void ui_control_video_fault(ui_control *u,int error)
{
 if(u && error && !u->fault)fail(u,error);
}
static void cancel(ui_control *u)
{
 int touch_failed=u->error==UI_ERR_TOUCH;
 int rc;
 if(u->async.begin){
  rc=u->async.cancel(u->async.ctx);
  if(rc==1){
   if(!u->cancel_pending)u->cancel_requested_ms=u->ops.ms(u->ops.ctx);
   u->cancel_pending=1U;u->busy=1U;return;
  }
 }else rc=u->ops.quiesce(u->ops.ctx,0);
 if(rc){fail(u,rc);return;}
 /* 此处只有同步 capture/run 返回后才会执行，DMA 不会与清理并发。 */
 live_algorithm_enroll_cancel();live_algorithm_invalidate();
 live_algorithm_set_login_active(0);
 u->sample_active=0U;u->busy=0U;
 u->login_finishing=0U;u->login_finish_label=0U;
 live_algorithm_set_vote_required(3U);
 u->mode=UI_IDLE;u->count=0U;u->sample=0U;u->normal_label=0U;
 u->login_attempts=u->login_rejected=u->login_streak=u->login_stop=u->login_quality=0U;
 u->result.status=LR_READY;u->result.label=0U;u->result.error=0;
 u->error=0;
 if(u->cancel_pending)
  u->cancel_latency_ms=u->ops.ms(u->ops.ctx)-u->cancel_requested_ms;
 u->cancel_pending=0U;++u->sequence;
 if(resume(u)==0){
  if(touch_failed)fail(u,UI_ERR_TOUCH);
  else{login_journal_cancel();show(u,UI_HOME);}
 }
}
static int boundary(ui_control *u)
{
 ui_control_poll(u);
 if(u->fault)return 1;
 if(u->cancel_pending){cancel(u);return 1;}
 return 0;
}
static int fresh_sample(ui_control *u, lr_result *r)
{
 if(u->async.begin){
  int rc;
  if(!u->sample_active){
   if(!u->busy){u->busy=1U;show(u,u->mode==UI_VOTING?UI_LOGIN:UI_PROCESSING);}
   if(boundary(u))return 1;
   live_algorithm_invalidate();
   rc=u->async.begin(u->async.ctx,u->mode==UI_ENROLLING?1U:2U,u->slot);
   if(rc<0){u->busy=0U;fail(u,rc);return 1;}
   if(rc)return 1;
   u->sample_active=1U;return 1;
  }
  if(boundary(u))return 1;
  rc=u->async.result(u->async.ctx,r);
  if(rc==1)return 1;
  u->sample_active=0U;u->busy=0U;
  if(rc){fail(u,rc);return 1;}
  /* A synchronous matcher may have polled cancel-only while this call ran. */
  if(boundary(u))return 1;
  return 0;
 }
 int rc;u->busy=1U;show(u,u->mode==UI_VOTING?UI_LOGIN:UI_PROCESSING);
 if(boundary(u)){u->busy=0U;return 1;}
 live_algorithm_invalidate();
 rc=live_video_capture();u->paused=1U;
 if(rc){u->busy=0U;fail(u,rc);return 1;}
 if(boundary(u)){u->busy=0U;return 1;}
 rc=live_algorithm_run(r);
 if(rc){u->busy=0U;fail(u,rc);return 1;}
 /* 算法返回成功表示 LBP DMA 已停止，取消才允许清理/恢复视频。 */
 if(boundary(u)){u->busy=0U;return 1;}
 u->busy=0U;return 0;
}
static int snapshot_identity(ui_control *u)
{
 saved_count=wp4_classify_template_count(u->slot);saved_label=0U;
 if(saved_count!=0U)
  return wp4_classify_export_identity(u->slot,&saved_label,&saved_features[0][0],
           WP4_MATCH_MAX_PROTOTYPES,&saved_count);
 return 0;
}
/* 管理页显示固定三人姓名；普通空槽用 label=0，不能伪装为已注册用户。 */
static void select_user(ui_control *u, unsigned slot)
{
 u->slot=slot;u->label=wp4_classify_label(slot);
 if(!u->label && slot<3U)u->label=slot+1U;
 u->count=0U;show(u,UI_USERS);
}
static unsigned free_label(void)
{
 unsigned label,p,used;
 for(label=4U;label<=255U;++label){
  used=0U;
  for(p=0U;p<WP4_MATCH_MAX_IDENTITIES;++p)
   if(wp4_classify_label(p)==label)used=1U;
  if(!used)return label;
 }
 return 0U;
}
static int restore_identity(ui_control *u)
{
 return saved_count?
  wp4_classify_enroll_multi(u->slot,saved_label,&saved_features[0][0],saved_count):
  wp4_classify_remove(u->slot);
}
static void select_new(ui_control *u)
{
 unsigned slot,label,p,used;
 for(slot=3U;slot<WP4_MATCH_MAX_IDENTITIES;++slot)
  if(wp4_classify_template_count(slot)==0U)break;
 if(slot==WP4_MATCH_MAX_IDENTITIES){u->error=UI_ERR_FULL;show(u,UI_ERROR);return;}
 for(label=4U;label<=255U;++label){
  used=0U;
  for(p=0U;p<WP4_MATCH_MAX_IDENTITIES;++p)
   if(wp4_classify_label(p)==label)used=1U;
  if(!used)break;
 }
 if(label>255U){u->error=UI_ERR_FULL;show(u,UI_ERROR);return;}
 u->slot=slot;u->label=label;show(u,UI_PREPARE);
}
int ui_control_init(ui_control *u, const ui_ops *ops)
{
 if(!u || !ops || !ops->poll || !ops->show || !ops->ms || !ops->quiesce)return -583;
 login_journal_init();
 memset(u,0,sizeof(*u));u->ops=*ops;u->label=1U;
 u->result.status=LR_READY;show(u,UI_HOME);return u->display_error;
}
int ui_control_bind_async(ui_control *u,const ui_async_ops *ops)
{
 if(!u || !ops || !ops->begin || !ops->result || !ops->cancel || !ops->active ||
    u->busy || u->mode!=UI_IDLE)return -583;
 u->async=*ops;return 0;
}
void ui_control_action(ui_control *u, unsigned action)
{
 int rc;
 if(u->fault){
  if(action==UI_BACK || action==UI_CANCEL){show(u,UI_HOME);return;}
  if(action==UI_REGISTER || action==UI_LOGIN_BEGIN){show(u,UI_ERROR);return;}
  if(action==UI_RETRY && u->ops.recover){
   rc=u->ops.quiesce(u->ops.ctx,u->error);
   if(rc==0)rc=u->ops.recover(u->ops.ctx);
   if(rc==0 && u->storage_fault){
    int loaded=live_algorithm_reload_identities();
    rc=loaded>0?0:(loaded<0?loaded:UI_ERR_STORAGE);
   }
   if(rc==0){u->fault=0U;u->storage_fault=0U;u->paused=0U;u->error=0;cancel(u);}
   else{u->error=rc;show(u,UI_ERROR);}
  }
  return;
 }
 if(action==UI_CANCEL || action==UI_BACK){
  if(u->busy){
   if(!u->cancel_pending)u->cancel_requested_ms=u->ops.ms(u->ops.ctx);
   u->cancel_pending=1U;ui_control_publish(u);
  }else cancel(u);
  return;
 }
 if(u->busy)return;
 if(u->mode==UI_IDLE && action==UI_LIST_USERS){select_user(u,0U);return;}
 if(u->page==UI_USERS && u->mode==UI_IDLE){
  if(action==UI_USER_PREV){
   select_user(u,u->slot==0U?WP4_MATCH_MAX_IDENTITIES-1U:u->slot-1U);
  }else if(action==UI_USER_NEXT){
   select_user(u,(u->slot+1U)%WP4_MATCH_MAX_IDENTITIES);
  }else if(action==UI_USER_ENROLL){
   if(u->slot>=3U && !wp4_classify_template_count(u->slot))u->label=free_label();
   if(!u->label){u->error=UI_ERR_FULL;show(u,UI_ERROR);return;}
   u->count=0U;show(u,UI_PREPARE);
  }else if(action==UI_DELETE_REQUEST && wp4_classify_template_count(u->slot)){
   /* 此步骤仅展示确认页，不删除 RAM，也不写 SD。 */
   show(u,UI_DELETE_CONFIRM);
  }
  return;
 }
 if(u->page==UI_DELETE_CONFIRM && u->mode==UI_IDLE){
  if(action!=UI_DELETE_COMMIT)return;
  if((int32_t)g_live_diag.word[LD_STORAGE_STATE]<0){
   u->error=UI_ERR_STORAGE;show(u,UI_ERROR);return;
  }
  rc=snapshot_identity(u);if(rc){fail(u,rc);return;}
  if(saved_count==0U){select_user(u,u->slot);return;}
  /* 删除是同步持久化事务；写卡开始后取消不能宣称已撤销删除。 */
  u->busy=1U;
  if(boundary(u)){u->busy=0U;return;}
  rc=live_algorithm_remove_identity(u->slot);u->busy=0U;
  if(rc){
   int restore=restore_identity(u);u->storage_fault=1U;
   fail(u,restore?restore:rc);return;
  }
  u->cancel_pending=0U;u->result.label=0U;u->result.status=LR_READY;
  u->count=0U;++u->sequence;
  live_algorithm_invalidate();live_algorithm_set_vote_required(3U);
  show(u,UI_DELETED);return;
 }
 if(action==UI_RETAKE && u->mode==UI_ENROLLING){
  live_algorithm_enroll_cancel();live_algorithm_invalidate();
  rc=live_algorithm_enroll_begin(u->slot,u->label);
  if(rc){fail(u,rc);return;}
  u->count=0U;u->result.status=LR_WORKING;u->result.label=0U;u->result.error=0;
  u->next_sample_ms=u->ops.ms(u->ops.ctx);show(u,UI_CAPTURE);return;
 }
 if(action==UI_RETRY && u->mode==UI_ENROLLING){
  /* 重试只提前下一次真实采集，保留已验证样本，不增加计数。 */
  u->result.status=LR_WORKING;u->result.label=0U;u->result.error=0;
  u->next_sample_ms=u->ops.ms(u->ops.ctx);show(u,UI_CAPTURE);return;
 }
 if(u->mode==UI_IDLE && action==UI_REGISTER){
  u->login_stop=LOGIN_PENDING;
  live_algorithm_invalidate();u->slot=0U;u->label=1U;u->count=0U;
  u->result.label=0U;u->error=0;show(u,UI_PREPARE);return;
 }
 if(u->page==UI_PREPARE){
  if(action>=UI_SELECT_WJX && action<=UI_SELECT_LHJ){
   u->slot=action-UI_SELECT_WJX;u->label=u->slot+1U;show(u,UI_PREPARE);
  }else if(action==UI_SELECT_NEW)select_new(u);
  else if(action==UI_CONFIRM)show(u,UI_OVERWRITE);
  return;
 }
 if(u->page==UI_OVERWRITE && action==UI_CONFIRM){
  /* 无论初始槽是否占用都明确确认；启动不会改 SD 或现有模板。 */
  if((int32_t)g_live_diag.word[LD_STORAGE_STATE]<0){
   u->error=UI_ERR_STORAGE;show(u,UI_ERROR);return;
  }
  rc=snapshot_identity(u);if(rc){fail(u,rc);return;}
  live_algorithm_invalidate();rc=live_algorithm_enroll_begin(u->slot,u->label);
  if(rc){fail(u,rc);return;}
  u->mode=UI_ENROLLING;u->count=0U;u->result.label=0U;
  u->login_stop=LOGIN_PENDING;
  if(u->async.active)u->async.active(u->async.ctx,1);
  u->next_sample_ms=u->ops.ms(u->ops.ctx);show(u,UI_CAPTURE);return;
 }
 if(action==UI_COMMIT && u->mode==UI_ENROLLING){
  /* 产品流程要求完整 8 帧；5 帧只是后端最低限制，不作为 UI 捷径。 */
  if(u->count!=LIVE_ENROLL_TARGET_SAMPLES)return;
  u->busy=1U;show(u,UI_PROCESSING);
  if(boundary(u)){u->busy=0U;return;}
  rc=live_algorithm_enroll_commit();u->busy=0U;
  if(rc){
   u->storage_fault=1U;
   int restore=restore_identity(u);
   fail(u,restore?restore:rc);return;
  }
  /* commit 是持久化边界，成功后不能把随后按下取消解释成回滚。 */
  u->cancel_pending=0U;u->mode=UI_IDLE;u->result.status=LR_KNOWN;
  u->result.label=u->label;++u->sequence;
  live_algorithm_invalidate();if(resume(u)==0)show(u,UI_REGISTERED);return;
 }
 if(u->mode==UI_IDLE && (action==UI_LOGIN_BEGIN || action==UI_RETRY)){
  live_algorithm_invalidate();live_algorithm_set_vote_required(3U);
  live_algorithm_set_login_active(1);
  u->mode=UI_VOTING;u->sample=0U;u->saw_face=0U;u->saw_quality=0U;u->saw_hist=0U;
  u->login_start_ms=u->ops.ms(u->ops.ctx);u->login_elapsed_ms=0U;
  u->login_attempts=u->login_rejected=u->login_streak=0U;
  u->login_person=WP4_MATCH_UNKNOWN;u->login_stop=LOGIN_PENDING;u->login_quality=UIQ_NONE;
  u->login_finishing=0U;u->login_finish_label=0U;
  memset(u->login_votes,0,sizeof u->login_votes);
  if(u->async.active)u->async.active(u->async.ctx,1);
  u->normal_label=0U;u->rescue_ok=1U;u->rescue_count=0U;
  u->rescue_person=WP4_MATCH_UNKNOWN;u->result.label=0U;u->error=0;
  g_live_diag.word[LD_SAMPLE_COUNT]=0U;g_live_diag.word[LD_SAMPLE_ACCEPT_MASK]=0U;
  for(rc=0;rc<5;++rc){g_live_diag.word[LD_SAMPLE_DISTANCE+(unsigned)rc]=0U;
   g_live_diag.word[LD_SAMPLE_CANDIDATE+(unsigned)rc]=WP4_MATCH_UNKNOWN;}
  login_journal_begin();
  show(u,UI_LOGIN);return;
 }
}
typedef struct { unsigned page,action; int x0,y0,x1,y1; } ui_button;
/* 按 manifest 的实际按钮逐页命中，禁止把空白底栏当作隐形按钮。
 * 返回/新用户/用户管理最右下边界按 UI 集成约定包含端点。 */
static const ui_button buttons[]={
 {UI_HOME,UI_REGISTER,60,150,739,233},
 {UI_HOME,UI_LOGIN_BEGIN,60,250,739,333},
 {UI_HOME,UI_LIST_USERS,60,350,156,403},
 {UI_PREPARE,UI_BACK,656,18,772,72},
 {UI_PREPARE,UI_SELECT_WJX,242,84,337,123},
 {UI_PREPARE,UI_SELECT_LYL,352,84,447,123},
 {UI_PREPARE,UI_SELECT_LHJ,462,84,557,123},
 {UI_PREPARE,UI_SELECT_NEW,242,130,557,178},
 {UI_PREPARE,UI_CANCEL,173,351,390,408},
 {UI_PREPARE,UI_CONFIRM,409,351,626,408},
 {UI_CAPTURE,UI_CANCEL,173,352,390,405},
 {UI_REVIEW,UI_BACK,656,18,772,72},
 {UI_REVIEW,UI_RETAKE,173,351,390,404},
 {UI_REVIEW,UI_COMMIT,409,351,626,404},
 {UI_PROCESSING,UI_CANCEL,173,352,390,405},
 {UI_REGISTERED,UI_BACK,409,352,626,405},
 {UI_KNOWN,UI_BACK,291,352,508,405},
 {UI_UNKNOWN,UI_RETRY,173,352,390,405},
 {UI_UNKNOWN,UI_REGISTER,409,352,626,405},
 {UI_USERS,UI_BACK,656,18,772,72},
 {UI_USERS,UI_USER_PREV,60,104,189,155},
 {UI_USERS,UI_USER_NEXT,610,104,739,155},
 {UI_USERS,UI_USER_ENROLL,173,352,390,405},
 {UI_USERS,UI_DELETE_REQUEST,409,352,626,405},
 {UI_DELETE_CONFIRM,UI_BACK,656,18,772,72},
 {UI_DELETE_CONFIRM,UI_CANCEL,173,352,390,405},
 {UI_DELETE_CONFIRM,UI_DELETE_COMMIT,409,352,626,405},
 {UI_DELETED,UI_LIST_USERS,173,352,390,405},
 {UI_DELETED,UI_BACK,409,352,626,405},
 {UI_LOGIN,UI_CANCEL,173,352,390,405},
 {UI_NO_FACE,UI_RETRY,173,352,390,405},
 {UI_NO_FACE,UI_BACK,409,352,626,405},
 {UI_ERROR,UI_BACK,173,352,390,405},
 {UI_ERROR,UI_RETRY,409,352,626,405},
 {UI_OVERWRITE,UI_BACK,656,18,772,72},
 {UI_OVERWRITE,UI_CANCEL,173,351,390,404},
 {UI_OVERWRITE,UI_CONFIRM,409,351,626,404},
 {UI_QUALITY,UI_RETRY,173,352,390,405},
 {UI_QUALITY,UI_BACK,409,352,626,405}
};
static unsigned action_at(unsigned page,int x,int y)
{
 size_t i;
 if(x<0 || x>=800 || y<0 || y>=480)return UI_NONE;
 for(i=0U;i<sizeof(buttons)/sizeof(buttons[0]);++i){
  const ui_button *b=&buttons[i];
  if(page==b->page && x>=b->x0 && x<=b->x1 && y>=b->y0 && y<=b->y1)return b->action;
 }
 return UI_NONE;
}
void ui_control_touch(ui_control *u, int x, int y, int pressed)
{
 unsigned action,was=u->pressed;u->pressed=pressed!=0;
 if(!pressed || was)return;
 action=action_at(u->page,x,y);
 if(u->busy && action!=UI_CANCEL && action!=UI_BACK)return;
 ui_control_action(u,action);
}
void ui_control_poll_cancel_only(ui_control *u)
{
 int x=0,y=0,pressed=0,rc;unsigned was,action;
 if(!u)return;
 rc=u->ops.poll(u->ops.ctx,&x,&y,&pressed);
 if(rc<0){
  u->error=UI_ERR_TOUCH;
  if(!u->cancel_pending)u->cancel_requested_ms=u->ops.ms(u->ops.ctx);
  u->cancel_pending=1U;return;
 }
 was=u->pressed;u->pressed=pressed!=0;
 if(!u->busy || !pressed || was)return;
 action=action_at(u->page,x,y);
 if(action==UI_CANCEL || action==UI_BACK){
  if(!u->cancel_pending)u->cancel_requested_ms=u->ops.ms(u->ops.ctx);
  u->cancel_pending=1U;
 }
}
void ui_control_poll(ui_control *u)
{
 int x=0,y=0,pressed=0,rc=u->ops.poll(u->ops.ctx,&x,&y,&pressed);
 if(rc<0){
  /* 触摸失效时不能悄悄继续注册；先请求取消，返回安全边界后报告。 */
  u->error=UI_ERR_TOUCH;
  if(!u->cancel_pending)u->cancel_requested_ms=u->ops.ms(u->ops.ctx);
  u->cancel_pending=1U;
  return;
 }
 ui_control_touch(u,x,y,pressed);
}
static void enroll_step(ui_control *u)
{
 lr_result r;int rc;
 if(u->count>=LIVE_ENROLL_TARGET_SAMPLES ||
    u->ops.ms(u->ops.ctx)<u->next_sample_ms)return;
 if(fresh_sample(u,&r))return;
 u->result=r;
 if(r.status==LR_NO_FACE)show(u,UI_NO_FACE);
 else if(!g_live_diag.word[LD_QUALITY_ACCEPTED])show(u,UI_QUALITY);
 else if(!g_live_diag.word[LD_ROI_VALID] || !g_live_diag.word[LD_HIST_VALID])
  show(u,UI_UNKNOWN);
 else{
  rc=live_algorithm_enroll_add_current();if(rc){fail(u,rc);return;}
  u->count=live_algorithm_enroll_count();
  show(u,u->count==LIVE_ENROLL_TARGET_SAMPLES?UI_REVIEW:UI_CAPTURE);
 }
 u->next_sample_ms=u->ops.ms(u->ops.ctx)+250U;
}
static unsigned quality_hint(const lr_result *r)
{
 unsigned mean=g_live_diag.word[LD_QUALITY_MEAN];
 if(g_live_diag.word[LD_ROI_VALID] || g_live_diag.word[LD_QUALITY_SCOPE]>=2U){
  if(mean<25U)return UIQ_DARK;
  if(mean>230U)return UIQ_BRIGHT;
 }
 if(g_live_diag.word[LD_QUALITY_SCOPE]==3U)return UIQ_SMALL;
 if(g_live_diag.word[LD_QUALITY_SCOPE]==1U && !g_live_diag.word[LD_FRESH_DETECTION])return UIQ_NOFACE;
 if(r->status==LR_NO_FACE)return UIQ_NOFACE;
 if(g_live_diag.word[LD_ROI_SIDE]<RESCUE_MIN_FACE_SIDE)return UIQ_SMALL;
 if(!g_live_diag.word[LD_QUALITY_ACCEPTED])return UIQ_BLUR;
 return UIQ_INSUFFICIENT;
}
static void finish_login_poll(ui_control *u)
{
 int rc=u->async.begin?u->async.cancel(u->async.ctx):0;
 /* Completed foreground work does not imply the speculative snapshot stopped. */
 if(rc==1){u->busy=1U;ui_control_publish(u);return;}
 if(rc){fail(u,rc);return;}
 u->sample_active=0U;u->login_finishing=0U;u->mode=UI_IDLE;u->busy=0U;
 u->result.status=u->login_finish_status;u->result.label=u->login_finish_label;
 u->result.error=0;++u->sequence;
 live_algorithm_set_login_active(0);live_algorithm_invalidate();
 if(resume(u)==0)show(u,u->login_finish_page);
}
static void finish_login(ui_control *u,unsigned reason,unsigned early_person)
{
 unsigned p,winner=WP4_MATCH_UNKNOWN;
 u->login_stop=reason;u->login_elapsed_ms=u->ops.ms(u->ops.ctx)-u->login_start_ms;
 if(reason==LOGIN_EARLY)winner=early_person;
 else if(u->sample==UI_LOGIN_VALID_LIMIT){
  for(p=0U;p<WP4_MATCH_MAX_IDENTITIES;p++)
   if(u->login_votes[p]>=3U){winner=p;break;}
  /* Existing relaxed rescue remains five valid same-person frames only. */
  if(winner==WP4_MATCH_UNKNOWN && u->rescue_ok && u->rescue_count==5U){
   winner=u->rescue_person;g_live_diag.word[LD_SAMPLE_ACCEPT_MASK]|=RESCUE_APPLIED_MASK;
  }
 }
 u->login_finish_label=0U;
 if(winner!=WP4_MATCH_UNKNOWN && wp4_classify_label(winner)){
  u->login_finish_status=LR_KNOWN;u->login_finish_label=wp4_classify_label(winner);u->login_finish_page=UI_KNOWN;
 }else if(u->sample==UI_LOGIN_VALID_LIMIT){u->login_finish_status=LR_UNKNOWN;u->login_finish_page=UI_UNKNOWN;}
 else if(u->login_attempts && !u->saw_face && !u->saw_quality){u->login_finish_status=LR_NO_FACE;u->login_finish_page=UI_NO_FACE;}
 else{
  u->login_finish_status=LR_UNKNOWN;u->login_finish_page=UI_QUALITY;
  if(u->login_quality==UIQ_NONE || u->login_quality==UIQ_NOFACE)u->login_quality=UIQ_INSUFFICIENT;
 }
 u->login_finishing=1U;u->busy=1U;
 u->result.status=LR_WORKING;u->result.label=0U;u->result.error=0;
 finish_login_poll(u);
}
static void vote_step(ui_control *u)
{
 lr_result r;unsigned person,distance,margin,accepted,high,max_distance,min_margin;
 if(u->login_finishing){finish_login_poll(u);return;}
 u->login_elapsed_ms=u->ops.ms(u->ops.ctx)-u->login_start_ms;
 if(u->login_elapsed_ms>=UI_LOGIN_BUDGET_MS){
  /* Freeze once; safe owner drain may extend the six-second decision cutoff. */
  finish_login(u,LOGIN_TIMEOUT,WP4_MATCH_UNKNOWN);return;
 }
 if(fresh_sample(u,&r))return;
 /* Work may have crossed the cutoff while UI could not run. A late
  * unexamined result is not an in-budget attempt or evidence of NO_FACE. */
 if(u->ops.ms(u->ops.ctx)-u->login_start_ms>=UI_LOGIN_BUDGET_MS){
  finish_login(u,LOGIN_TIMEOUT,WP4_MATCH_UNKNOWN);return;
 }
 ++u->login_attempts;
 u->result.status=LR_WORKING;u->result.label=0U;u->result.error=0;
 if(g_live_diag.word[LD_ROI_VALID] && g_live_diag.word[LD_FRESH_DETECTION])u->saw_face=1U;
 if(!g_live_diag.word[LD_ROI_VALID] || !g_live_diag.word[LD_QUALITY_ACCEPTED] ||
    !g_live_diag.word[LD_HIST_VALID] || !g_live_diag.word[LD_FRESH_DETECTION] ||
    g_live_diag.word[LD_ROI_SIDE]<RESCUE_MIN_FACE_SIDE){
  ++u->login_rejected;u->login_streak=0U;u->login_person=WP4_MATCH_UNKNOWN;
  u->login_quality=quality_hint(&r);
  if(u->login_quality!=UIQ_NOFACE)u->saw_quality=1U;
 }else{
  u->saw_hist=1U;u->login_quality=UIQ_NONE;
  person=g_live_diag.word[LD_PERSON];distance=g_live_diag.word[LD_DISTANCE];margin=g_live_diag.word[LD_MARGIN];
  accepted=g_live_diag.word[LD_MATCH_ACCEPTED] && person<WP4_MATCH_MAX_IDENTITIES && wp4_classify_label(person);
  g_live_diag.word[LD_SAMPLE_DISTANCE+u->sample]=distance;
  g_live_diag.word[LD_SAMPLE_CANDIDATE+u->sample]=person;
  if(accepted){++u->login_votes[person];g_live_diag.word[LD_SAMPLE_ACCEPT_MASK]|=1U<<u->sample;}
  if(person>=WP4_MATCH_MAX_IDENTITIES || !wp4_classify_label(person) ||
     distance>RESCUE_MAX_DISTANCE || margin<RESCUE_MIN_MARGIN)u->rescue_ok=0U;
  else{
   if(!u->rescue_count)u->rescue_person=person;
   else if(person!=u->rescue_person)u->rescue_ok=0U;
   ++u->rescue_count;
  }
  max_distance=g_live_diag.word[LD_THR_NUM];min_margin=g_live_diag.word[LD_THR_DEN];
  /* A zero distance cap means matcher rejection disabled, never early accept. */
  high=accepted && g_live_diag.word[LD_FRESH_DETECTION] && max_distance &&
       distance<=(uint64_t)max_distance*4U/5U &&
       (uint64_t)margin>=(uint64_t)min_margin*2U && margin>=RESCUE_MIN_MARGIN;
  if(high){
   if(person==u->login_person)++u->login_streak;
   else{u->login_person=person;u->login_streak=1U;}
  }else{u->login_streak=0U;u->login_person=WP4_MATCH_UNKNOWN;}
  ++u->sample;g_live_diag.word[LD_SAMPLE_COUNT]=u->sample;
  if(u->login_streak>=3U){finish_login(u,LOGIN_EARLY,person);return;}
  if(u->sample==UI_LOGIN_VALID_LIMIT){finish_login(u,LOGIN_FULL,WP4_MATCH_UNKNOWN);return;}
 }
 if(u->login_attempts>=UI_LOGIN_ATTEMPT_LIMIT){finish_login(u,LOGIN_ATTEMPTS,WP4_MATCH_UNKNOWN);return;}
 show(u,UI_LOGIN);
}
void ui_control_step(ui_control *u)
{
 unsigned page;
 if(u->fault){ui_control_poll(u);ui_control_publish(u);return;}
 ui_control_poll(u);
 if(u->cancel_pending){
  int touch_error=u->error==UI_ERR_TOUCH;
  cancel(u);
  if(u->cancel_pending)return;
  if(touch_error){u->error=UI_ERR_TOUCH;show(u,UI_ERROR);}
  return;
 }
 page=u->page;
 if(u->async.active)u->async.active(u->async.ctx,u->mode!=UI_IDLE);
 if(u->mode==UI_ENROLLING)enroll_step(u);
 else if(u->mode==UI_VOTING)vote_step(u);
 else if(!u->paused && !u->async.begin){int rc=live_video_step();if(rc)fail(u,rc);}
 /* display 的绘图错误保持独立诊断，不能伪装成识别错误。 */
 if(u->page!=page || u->display_error)ui_control_publish(u);
}
