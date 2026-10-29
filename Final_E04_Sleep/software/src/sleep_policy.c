#include "sleep_policy.h"
#include <string.h>
volatile sleep_diagnostics g_sleep_diag;
static void phase(sleep_policy *s,enum sleep_phase next,uint64_t now)
{
    if(next==SLEEP_RATE_HIGH && s->phase!=SLEEP_RATE_HIGH)s->last_wake_reason=s->pending_reason;
    s->phase=next;s->phase_since=now;
}
void sleep_policy_init(sleep_policy *s,const sleep_ops *ops,uint64_t now)
{
    memset(s,0,sizeof *s);s->ops=*ops;s->enabled=1U;s->idle_since=now;
    s->phase_since=now;s->phase=SLEEP_ACTIVE;
    memset((void *)&g_sleep_diag,0,sizeof g_sleep_diag);
    g_sleep_diag.magic=0x534c5031U;g_sleep_diag.version=2U;
    s->started_ms=s->last_account_ms=now;
}
int sleep_policy_ready(const sleep_policy *s)
{return s && s->phase==SLEEP_ACTIVE && !s->error;}
int sleep_policy_step(sleep_policy *s,const sleep_input *in,uint64_t now)
{
    int rc=1;unsigned wake;uint32_t reason;uint64_t delta;
    if(!s || !in)return -750;
    // 按进入本次调用前的实际阶段累计，切换及故障时间不冒充工作或休眠时间。
    delta=now>=s->last_account_ms?now-s->last_account_ms:0U;
    if(s->phase==SLEEP_ACTIVE)s->active_ms+=delta;
    else if(s->phase==SLEEP_MONITOR)s->monitor_ms+=delta;
    else s->transition_ms+=delta;
    s->last_account_ms=now;
    reason=(in->touch?1U:0U)|(in->motion?2U:0U)|(in->busy?4U:0U)|
           (!in->home?8U:0U)|(!s->enabled?16U:0U)|(in->presence?32U:0U);
    wake=in->touch || in->busy || !in->home || !s->enabled;
    if(in->motion || in->presence || wake)s->idle_since=now;
    /* 切换过程中也锁存短触摸或运动，等待 SCCB 完成时不丢失唤醒。 */
    if(s->phase!=SLEEP_ACTIVE && (wake || in->motion || in->presence))s->wake_pending=1U;
    if(s->phase!=SLEEP_ACTIVE)s->pending_reason|=reason;
    wake|=s->wake_pending;
    if(s->phase!=SLEEP_ACTIVE && s->phase!=SLEEP_MONITOR &&
       s->phase!=SLEEP_FAULT && now-s->phase_since>=SLEEP_TRANSITION_MS)
        s->error=-751;
    if(s->error){
        /* 错误不会冒充成功或启动采集；保留 UI 和错误证据。 */
        s->enabled=0U;s->ops.monitor(s->ops.context,1);
        (void)s->ops.hdmi(s->ops.context,0);phase(s,SLEEP_FAULT,now);
        goto publish;
    }
    switch(s->phase){
    case SLEEP_ACTIVE:
        if(s->enabled && !wake && !in->presence && !in->motion &&
           (s->force_sleep || now-s->idle_since>=SLEEP_IDLE_MS)){
            s->force_sleep=0U;s->ops.monitor(s->ops.context,1);
            s->pending_reason=0U;
            phase(s,SLEEP_DRAIN,now);
        }
        break;
    case SLEEP_DRAIN:
        if(wake || in->motion || in->presence){phase(s,SLEEP_RATE_HIGH,now);break;}
        rc=s->ops.drain(s->ops.context);
        if(!rc)phase(s,SLEEP_RATE_LOW,now);
        break;
    case SLEEP_RATE_LOW:
        /* 即使新触摸到达也先等本次 SCCB 事务完成，不半途换寄存器值。 */
        rc=s->ops.rate(s->ops.context,1);
        if(!rc)phase(s,wake?SLEEP_RATE_HIGH:SLEEP_HDMI_OFF,now);
        break;
    case SLEEP_HDMI_OFF:
        if(wake){phase(s,SLEEP_RATE_HIGH,now);break;}
        rc=s->ops.hdmi(s->ops.context,1);
        if(!rc){++s->entries;phase(s,SLEEP_MONITOR,now);}
        break;
    case SLEEP_MONITOR:
        if(wake || in->motion){++s->wakes;phase(s,SLEEP_RATE_HIGH,now);}
        break;
    case SLEEP_RATE_HIGH:
        rc=s->ops.rate(s->ops.context,0);
        if(!rc){s->settle_frames=in->frames;phase(s,SLEEP_SETTLE,now);}
        break;
    case SLEEP_SETTLE:
        if(now-s->phase_since>=SLEEP_SETTLE_MS &&
           (uint32_t)(in->frames-s->settle_frames)>=2U)
            phase(s,SLEEP_HDMI_ON,now);
        break;
    case SLEEP_HDMI_ON:
        rc=s->ops.hdmi(s->ops.context,0);
        if(!rc){s->ops.monitor(s->ops.context,0);s->idle_since=now;s->wake_pending=0U;phase(s,SLEEP_ACTIVE,now);}
        break;
    case SLEEP_FAULT: break;
    default: rc=-752;break;
    }
    if(rc<0)s->error=rc;
publish:
    g_sleep_diag.phase=(uint32_t)s->phase;g_sleep_diag.enabled=s->enabled;
    g_sleep_diag.entries=s->entries;g_sleep_diag.wakes=s->wakes;
    g_sleep_diag.error=s->error;g_sleep_diag.idle_ms=now-s->idle_since;
    g_sleep_diag.active_ms=s->active_ms;g_sleep_diag.monitor_ms=s->monitor_ms;
    g_sleep_diag.transition_ms=s->transition_ms;
    g_sleep_diag.uptime_ms=now-s->started_ms;
    g_sleep_diag.phase_age_ms=now-s->phase_since;
    g_sleep_diag.last_wake_reason=s->last_wake_reason;
    return s->error;
}
