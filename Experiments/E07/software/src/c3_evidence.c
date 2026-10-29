#include "c3_evidence.h"
static uint32_t advance(c3_evidence_t *e){
    if(e->generation==UINT32_MAX)return 0; /* Exhaustion is not a wrapped identity. */
    ++e->generation;e->have_square=0;e->have_person=0;return e->generation;
}
uint32_t c3_evidence_context(c3_evidence_t *e,uint32_t session,uint32_t epoch){
    if(!e || !session || !epoch)return 0;
    if(!e->generation || e->session!=session || e->epoch!=epoch){
        if(!advance(e))return 0;
        e->session=session;e->epoch=epoch;
    }
    return e->generation;
}
uint32_t c3_evidence_observe(c3_evidence_t *e,const haar_box_t *s,uint64_t now,
                            uint64_t hz,uint32_t session,uint32_t epoch){
    int64_t dx,dy,old,side,limit;uint64_t gap;
    if(!e || !s || !hz || hz>UINT64_MAX-hz/5 || s->w!=s->h || s->w<80 || s->w>240 ||
       s->x<0 || s->y<0 || (int64_t)s->x+s->w>400 || (int64_t)s->y+s->h>240)return 0;
    if(!c3_evidence_context(e,session,epoch))return 0;
    old=e->square.w;side=s->w;limit=old<side?old:side;gap=hz+hz/5;
    dx=2*((int64_t)e->square.x-s->x)+old-side;
    dy=2*((int64_t)e->square.y-s->y)+old-side;
    if(dx<0)dx=-dx;
    if(dy<0)dy=-dy;
    if(e->have_square && (hz!=e->hz || now<e->ticks || now-e->ticks>gap ||
       side*4<old*3 || side*3>old*4 || dx*2>limit || dy*2>limit)){
        if(!advance(e))return 0;
    }
    e->square=*s;e->ticks=now;e->hz=hz;
    e->have_square=1;return e->generation;
}
uint32_t c3_evidence_accept_person(c3_evidence_t *e,uint32_t person){
    if(!e || !e->have_square || person>=16)return 0;
    if(e->have_person && person!=e->person && !advance(e))return 0;
    /* Identity changes retain the current square/time, not the old person's. */
    e->have_square=1;
    e->person=person;e->have_person=1;return e->generation;
}
