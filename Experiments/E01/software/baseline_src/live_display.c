#include "live_display.h"
static live_display_io gpio;
static unsigned toggle;
static int initialized,pending;
int live_display_init(const live_display_io *io){
    if(!io || !io->read || !io->write || !io->ms)return -524;
    initialized=0;gpio=*io;toggle=gpio.read(gpio.ctx,0)>>31;
    /* Re-init cannot erase a timed-out in-flight transaction. */
    if((gpio.read(gpio.ctx,8)&1u)!=toggle)return -521;
    gpio.write(gpio.ctx,4,0);gpio.write(gpio.ctx,12,0xffffffffu);
    pending=0;initialized=1;return 0;
}
int live_display_submit(unsigned status,unsigned label){
    uint64_t start,now;
    if(!initialized)return -524;
    if(status>5 || (status==2 && (label==0 || label>255)) ||
       (status!=2 && label!=0))return -525;
    if(pending && (gpio.read(gpio.ctx,8)&1u)!=toggle)return -522;
    toggle^=1u;pending=1;
    gpio.write(gpio.ctx,0,(toggle<<31)|(label<<8)|status);
    start=gpio.ms(gpio.ctx);
    while((gpio.read(gpio.ctx,8)&1u)!=toggle){
        now=gpio.ms(gpio.ctx);if(now<start)return -523;
        if(now-start>=200u)return -520;
    }
    pending=0;return 0;
}
