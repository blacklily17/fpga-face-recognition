#include "live_control.h"
#include <string.h>
static void enter(lr_control *c,enum lr_state state) {
    c->state=state;c->sampled=0;c->released=0;
}
static void fail(lr_control *c,int error) {
    int rc;
    c->primary_error=error;c->display_error=0;
    c->result.status=LR_FAILED;c->result.label=0;c->result.error=error;
    enter(c,LR_ERROR);
    if(c->ops.error_screen)c->display_error=c->ops.error_screen(c->ops.ctx,error);
    if(c->ops.submit) {
        rc=c->ops.submit(c->ops.ctx,LR_FAILED,0);
        if(rc && !c->display_error)c->display_error=rc;
    }
}
static int start(lr_control *c) {
    int rc=c->ops.init(c->ops.ctx);
    if(!rc)rc=c->ops.submit(c->ops.ctx,LR_READY,0);
    if(!rc)rc=c->ops.start_live(c->ops.ctx);
    if(rc){fail(c,rc);return rc;}
    c->primary_error=c->display_error=0;
    c->result.status=LR_READY;c->result.label=0;c->result.error=0;
    enter(c,LR_LIVE);return 0;
}
int lr_init(lr_control *c,const lr_ops *o) {
    if(!c)return -600;
    memset(c,0,sizeof(*c));c->candidate=c->stable=3;c->state=LR_ERROR;
    if(!o || !o->init || !o->start_live || !o->step_live || !o->capture ||
       !o->recognize || !o->submit || !o->error_screen){c->primary_error=-600;return -600;}
    c->ops=*o;enter(c,LR_INIT);return start(c);
}
static int key0(lr_control *c,unsigned key,uint64_t now) {
    unsigned old;key&=3u;
    if(!c->sampled || now<c->last_sample) {
        c->sampled=1;c->released=0;c->candidate=key;c->candidate_since=now;
    }
    c->last_sample=now;
    if(!key)c->released=0;
    if(key!=c->candidate){c->candidate=key;c->candidate_since=now;}
    if(now-c->candidate_since<30)return 0;
    old=c->stable;c->stable=key;
    if(key==3){c->released=1;return 0;}
    if(key==old || !c->released)return 0;
    c->released=0;return key==2;
}
void lr_step(lr_control *c,unsigned keys,uint64_t now) {
    int rc;lr_result r={LR_FAILED,0,0};
    if(!c || !c->ops.init)return;
    switch(c->state) {
    case LR_LIVE:
        rc=c->ops.step_live(c->ops.ctx);
        if(rc){fail(c,rc);return;}
        if(!key0(c,keys,now))return;
        if(c->sequence==UINT64_MAX){fail(c,-601);return;}
        ++c->sequence;c->result=r;c->primary_error=c->display_error=0;
        rc=c->ops.submit(c->ops.ctx,LR_WORKING,0);
        if(rc){fail(c,rc);return;}
        enter(c,LR_CAPTURE);break;
    case LR_CAPTURE:
        rc=c->ops.capture(c->ops.ctx);
        if(rc)fail(c,rc);else enter(c,LR_RECOGNIZE);
        break;
    case LR_RECOGNIZE:
        rc=c->ops.recognize(c->ops.ctx,&r);
        if(!rc && (r.error || r.status<LR_KNOWN || r.status>LR_NO_FACE ||
           (r.status==LR_KNOWN ? (r.label==0 || r.label>255):r.label!=0)))rc=-602;
        if(rc){fail(c,rc);break;}
        c->result=r;
        rc=c->ops.submit(c->ops.ctx,r.status,r.label);
        if(rc)fail(c,rc);else enter(c,LR_RESUME);
        break;
    case LR_RESUME:
        rc=c->ops.start_live(c->ops.ctx);
        if(rc)fail(c,rc);else enter(c,LR_LIVE);
        break;
    case LR_ERROR:
        if(key0(c,keys,now)){enter(c,LR_INIT);(void)start(c);}
        break;
    default:break;
    }
}
