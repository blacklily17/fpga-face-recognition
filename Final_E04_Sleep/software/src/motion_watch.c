#include "motion_watch.h"
#include <string.h>
void motion_watch_reset(motion_watch *m){memset(m,0,sizeof *m);}
void motion_watch_inhibit(motion_watch *m){
    m->paused=1U;m->prime_left=0U;m->have_previous=0U;m->history=0U;
}
void motion_watch_rearm(motion_watch *m,unsigned frames){
    m->paused=0U;m->prime_left=frames;m->have_previous=0U;m->history=0U;
}
int motion_watch_frame(motion_watch *m,const uint8_t *gray,uint32_t frame,uint32_t epoch)
{
    unsigned x,y,i=0U,changed=0U,bits;
    int sum=0,mean,offset;
    if(!m || !gray || !epoch)return -1;
    if(m->have_previous && m->epoch==epoch && m->frame_id==frame)return 0;
    // 切帧率期间不比较过渡画面，原事件计数不伪增。
    if(m->paused){
        m->frame_id=frame;m->epoch=epoch;m->have_previous=1U;
        m->history=0U;m->changed=0U;++m->frames;return 0;
    }
    for(y=0U;y<MOTION_HEIGHT;++y)
        for(x=0U;x<MOTION_WIDTH;++x)sum+=gray[(y*5U)*400U+x*5U];
    mean=sum/(int)MOTION_PIXELS;offset=mean-m->mean;
    for(y=0U;y<MOTION_HEIGHT;++y)for(x=0U;x<MOTION_WIDTH;++x){
        uint8_t value=gray[(y*5U)*400U+x*5U];
        int delta=(int)value-(int)m->previous[i]-offset;
        if(delta>12 || delta< -12)++changed;
        m->previous[i++]=value;
    }
    ++m->frames;m->changed=changed;
    // 只用互不重复的新帧重建参考；最后一帧也清空历史，旧扰动不能延迟触发。
    if(m->prime_left){
        --m->prime_left;m->history=0U;m->changed=0U;
        m->mean=mean;m->frame_id=frame;m->epoch=epoch;m->have_previous=1U;
        return 0;
    }
    if(!m->have_previous || m->epoch!=epoch){m->history=0U;changed=0U;}
    /* 抵消整体亮度偏移；最近三次比较至少两次达到约 2% 的变化面积。 */
    m->history=((m->history<<1)|(changed>=77U?1U:0U))&7U;
    bits=(m->history&1U)+((m->history>>1)&1U)+((m->history>>2)&1U);
    m->mean=mean;m->frame_id=frame;m->epoch=epoch;m->have_previous=1U;
    if(bits>=2U){++m->events;return 1;}
    return 0;
}
