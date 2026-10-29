#ifndef UI_DISPLAY_HOST_TEST
#include "xparameters.h"
#endif
#include "ui_display.h"
#include "ui_assets.h"
#include <stddef.h>
#include <string.h>

#if defined(XPAR_UI_VDMA_NUM_FSTORES) && XPAR_UI_VDMA_NUM_FSTORES != 2
#error "AC880 software UI requires exactly two hardware VDMA frame stores"
#endif

/* Build -DUI_DISPLAY_HOST_TEST for executable MMIO/decoder regression tests. */
#ifdef UI_DISPLAY_HOST_TEST
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
typedef uintptr_t UINTPTR;
typedef uint64_t XTime;
#define COUNTS_PER_SECOND 1000000U
static uint32_t host_regs[64], host_active, host_target;
static uint64_t host_time, host_boundary;
static int host_stall, host_fault;
/* Host MMIO observations/fault injection; never present in target firmware. */
static unsigned host_flushes,host_park_writes,host_boundaries;
static int host_stall_after_flush,host_stall_after_switch;
static uint16_t host_frames[2][UI_WIDTH*UI_HEIGHT];
static void host_advance(void)
{
    /* Executable proof that in-flight render observations cannot look stable. */
    if(ui_debug.stage==3U)assert(g_ui_render_timing.revision&1U);
    host_time+=100;
    if(host_regs[0]&4U) {host_regs[0]=0;host_regs[1]=1;}
    if((host_regs[0]&1U) && !(host_regs[1]&1U) && !host_stall && host_time>=host_boundary) {
        unsigned previous=host_active;
        host_active=(host_regs[0]&2U)?(host_active^1U):host_target;
        host_regs[1]|=0x1000U;host_boundary=host_time+16000;
        ++host_boundaries;
        if(host_stall_after_switch && host_active!=previous)host_stall=1;
    }
    host_regs[10]=(host_regs[10]&~0x1F0000U)|(host_active<<16);
    if(host_fault)host_regs[1]|=0x20;
}
static uint32_t Xil_In32(UINTPTR addr)
{
    host_advance();return host_regs[(addr-UI_VDMA_BASE)/4];
}
static void Xil_Out32(UINTPTR addr,uint32_t value)
{
    unsigned reg=(unsigned)(addr-UI_VDMA_BASE)/4;
    if(reg==1)host_regs[1]&=~value;
    else {host_regs[reg]=value;if(reg==10){host_target=value&31U;++host_park_writes;}}
    if(reg==20){host_regs[1]&=~1U;host_boundary=host_time+16000;}
}
static void XTime_GetTime(XTime *t){host_advance();*t=host_time;}
static void Xil_DCacheFlushRange(UINTPTR addr,unsigned size)
{
    (void)addr;assert(size==UI_STRIDE*UI_HEIGHT);++host_flushes;
    if(host_stall_after_flush)host_stall=1;
}
static void barrier(void){}
static uint16_t *frame(unsigned slot){return host_frames[slot];}
#else
#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"
static void barrier(void){__asm__ volatile("dsb sy" ::: "memory");}
static uint16_t *frame(unsigned slot){return (uint16_t*)(UINTPTR)(slot?UI_FRAME1:UI_FRAME0);}
#endif

#define CR 0x00U
#define SR 0x04U
#define STORES 0x18U
#define PARK 0x28U
#define VSIZE 0x50U
#define HSIZE 0x54U
#define STRIDE 0x58U
#define ADDR0 0x5CU
#define ADDR1 0x60U
#define RUN 1U
#define CIRCULAR 2U
#define RESET 4U
#define HALTED 1U
#define ERRORS 0xFF0U
#define FRAME_IRQ 0x1000U
/* IRQFrameCount=1, no FrameCntEn: continuously run, latch each frame. */
#define CONTROL (RUN|0x00010000U)
#define TIMEOUT_TICKS (COUNTS_PER_SECOND/4U)
volatile ui_diagnostics ui_debug;
volatile ui_render_timing g_ui_render_timing __attribute__((aligned(64)))={
    .version=UI_RENDER_TIMING_VERSION,
    .size_bytes=sizeof(ui_render_timing),
    .dedup_enabled=UI_REDRAW_DEDUP,
    .counts_per_second=COUNTS_PER_SECOND
};
static int initialized,locked;
#if UI_REDRAW_DEDUP
/* Only a fully submitted, boundary-confirmed frame can populate this key.
 * All current dynamic content is explicit in (page,label,count). Exclude any
 * future animation/external-state page here as well as UI_ERROR below. */
static struct {unsigned page,label,count,slot;int valid;} redraw;
#endif

static uint32_t rd(unsigned off){return Xil_In32((UINTPTR)UI_VDMA_BASE+off);}
static void wr(unsigned off,uint32_t value){Xil_Out32((UINTPTR)UI_VDMA_BASE+off,value);}
static XTime ticks(void){XTime t;XTime_GetTime(&t);return t;}
static int timing_finish(int rc,int skipped,XTime start,ui_render_ticks *last)
{
    last->total=ticks()-start;
    g_ui_render_timing.last=*last;
    g_ui_render_timing.cumulative.wait_current+=last->wait_current;
    g_ui_render_timing.cumulative.decode_dynamic+=last->decode_dynamic;
    g_ui_render_timing.cumulative.flush+=last->flush;
    g_ui_render_timing.cumulative.wait_target+=last->wait_target;
    g_ui_render_timing.cumulative.total+=last->total;
    ++g_ui_render_timing.calls;
    if(rc)++g_ui_render_timing.errors;
    else if(skipped)++g_ui_render_timing.skipped;
    else ++g_ui_render_timing.rendered;
    g_ui_render_timing.last_error=rc;
    barrier();++g_ui_render_timing.revision;
    return rc;
}
static int error(int rc)
{
#if UI_REDRAW_DEDUP
    redraw.valid=0;
#endif
    initialized=0;ui_debug.last_error=rc;++ui_debug.errors;
    if(rc==UI_ETIMEOUT)++ui_debug.timeouts;
    return rc;
}
static int health(void)
{
    ui_debug.status=rd(SR);ui_debug.control=rd(CR);
    if((ui_debug.status&(ERRORS|HALTED)) || !(ui_debug.control&RUN)) return UI_EDMA;
    return 0;
}
static unsigned active(void)
{
    /* PARK read reference bits0..4 are requested, never proof of active slot. */
    unsigned slot=(rd(PARK)>>16)&31U;
    ui_debug.active_slot=slot;return slot;
}
static void park(unsigned slot)
{
    /* Preserve the other channel's reference and all unrelated bits. */
    wr(PARK,(rd(PARK)&~31U)|slot);
    wr(CR,rd(CR)&~CIRCULAR);
    barrier();
}
static int wait_slot(unsigned slot)
{
    XTime start=ticks();
    int rc;
    do {
        rc=health();if(rc)return rc;
        if(active()==slot)return 0;
    }while(ticks()-start<TIMEOUT_TICKS);
    return UI_ETIMEOUT;
}
/* Once parked, observe a whole frame completion while the same actual slot
 * stays selected. This retires any old prefetched reads before buffer reuse.
 * Missing downstream tready/fsync therefore returns timeout, not false success.
 */
static int wait_boundary(unsigned slot)
{
    XTime start=ticks();
    int rc;
    wr(SR,FRAME_IRQ);
    do {
        rc=health();if(rc)return rc;
        if(active()!=slot)return UI_EDMA;
        if(ui_debug.status&FRAME_IRQ){wr(SR,FRAME_IRQ);return 0;}
    }while(ticks()-start<TIMEOUT_TICKS);
    return UI_ETIMEOUT;
}
const char *ui_label_name(unsigned label)
{
    switch(label){case 1:return "WJX";case 2:return "LYL";case 3:return "LHJ";
    case 0:return "";default:return "ID";}
}
/* 5x7 ASCII rows; named letter forms retained from live_lcd_overlay.sv. */
static uint64_t glyph(char c)
{
    static const uint8_t numbers[10][7]={
        {14,17,19,21,25,17,14},{4,12,4,4,4,4,14},
        {14,17,1,2,4,8,31},{30,1,1,14,1,1,30},
        {2,6,10,18,31,2,2},{31,16,16,30,1,1,30},
        {14,16,16,30,17,17,14},{31,1,2,4,8,8,8},
        {14,17,17,14,17,17,14},{14,17,17,15,1,1,14}};
    uint64_t bits=0;unsigned y;
    if(c>='0' && c<='9'){for(y=0;y<7;y++)bits=(bits<<5)|numbers[c-'0'][y];return bits;}
    switch(c){
    case 'W':return UINT64_C(0x4631AD6AA); /* rows 17,17,17,21,21,21,10 */
    case 'J':return UINT64_C(0x1C4214A4C);
    case 'X':return UINT64_C(0x462A22A31);
    case 'L':return UINT64_C(0x42108421F);
    case 'Y':return UINT64_C(0x462A21084);
    case 'H':return UINT64_C(0x4631FC631);
    case 'I':return UINT64_C(0x7C842109F);
    case 'D':return UINT64_C(0x7A318C63E);
    case '/':return UINT64_C(0x044222110);
    case '-':return UINT64_C(0x0000F8000);
    default:break;
    }
    if(c>='A' && c<='Z'){
        static const uint8_t letters[26][7]={
            {14,17,17,31,17,17,17},{30,17,17,30,17,17,30},
            {14,17,16,16,16,17,14},{30,17,17,17,17,17,30},
            {31,16,16,30,16,16,31},{31,16,16,30,16,16,16},
            {14,17,16,23,17,17,15},{17,17,17,31,17,17,17},
            {31,4,4,4,4,4,31},{7,2,2,2,18,18,12},
            {17,18,20,24,20,18,17},{16,16,16,16,16,16,31},
            {17,27,21,21,17,17,17},{17,25,21,19,17,17,17},
            {14,17,17,17,17,17,14},{30,17,17,30,16,16,16},
            {14,17,17,17,21,18,13},{30,17,17,30,20,18,17},
            {15,16,16,14,1,1,30},{31,4,4,4,4,4,4},
            {17,17,17,17,17,17,14},{17,17,17,17,17,10,4},
            {17,17,17,21,21,21,10},{17,17,10,4,10,17,17},
            {17,17,10,4,4,4,4},{31,1,2,4,8,16,31}};
        for(y=0;y<7;y++)bits=(bits<<5)|letters[c-'A'][y];
    }
    return bits;
}
static void text_scaled(uint16_t *dst,unsigned x,unsigned y,const char *str,uint16_t colour,unsigned scale)
{
    unsigned i,row,col,dx,dy;
    for(i=0;str[i];i++) {
        uint64_t bits=glyph(str[i]);
        for(row=0;row<7;row++)for(col=0;col<5;col++)if(bits&(UINT64_C(1)<<(34-row*5-col)))
            for(dy=0;dy<scale;dy++)for(dx=0;dx<scale;dx++) {
                unsigned px=x+i*6*scale+col*scale+dx,py=y+row*scale+dy;
                if(px<UI_WIDTH && py<UI_HEIGHT)dst[py*UI_WIDTH+px]=colour;
            }
    }
}
static void text(uint16_t *dst,unsigned x,unsigned y,const char *str,uint16_t colour)
{text_scaled(dst,x,y,str,colour,3U);}
static void centered_name(uint16_t *dst,unsigned y,const char *id)
{text_scaled(dst,(UI_WIDTH-(unsigned)strlen(id)*30U)/2U,y,id,0x97BDU,5U);}
static char *number(char *dst,unsigned value)
{
    if(value>=100)*dst++=(char)('0'+value/100);
    if(value>=10)*dst++=(char)('0'+value/10%10);
    *dst++=(char)('0'+value%10);*dst=0;return dst;
}
static int enrollment(unsigned page)
{
    return page==UI_PREPARE||page==UI_CAPTURE||page==UI_REVIEW||
        page==UI_PROCESSING||page==UI_REGISTERED||page==UI_OVERWRITE||page==UI_QUALITY;
}
static void rect(uint16_t *dst,unsigned x,unsigned y,unsigned w,unsigned h,uint16_t c)
{
    unsigned xx,yy;
    for(yy=y;yy<y+h && yy<UI_HEIGHT;yy++)for(xx=x;xx<x+w && xx<UI_WIDTH;xx++)
        dst[yy*UI_WIDTH+xx]=c;
}
static int decode(unsigned page,uint16_t *dst)
{
    unsigned tx,ty,y,x;
#ifdef UI_DISPLAY_HOST_TEST
    if(!(host_regs[1]&HALTED)) {
        assert(!(host_regs[0]&CIRCULAR));
        assert(dst!=host_frames[host_active]);
    }
#endif
    for(ty=0;ty<UI_TILES_Y;ty++)for(tx=0;tx<UI_TILES_X;tx++) {
        unsigned ref=ui_page_tiles[page*UI_TILES_X*UI_TILES_Y+ty*UI_TILES_X+tx];
        const uint8_t *tile;
        if(ref>=UI_DICT_TILES)return UI_EASSET;
        tile=&ui_tiles[ref*32];
        for(y=0;y<8;y++) {
            uint16_t *row=dst+(ty*8+y)*UI_WIDTH+tx*8;
            for(x=0;x<8;x+=2){uint8_t b=tile[y*4+x/2];row[x]=ui_palette[b>>4];row[x+1]=ui_palette[b&15];}
        }
    }
    return 0;
}
static void dynamic(uint16_t *dst,unsigned page,unsigned label,unsigned count)
{
    char id[8],cnt[8],*end;unsigned adaptive=(count&UI_ADAPTIVE_COUNT)!=0U;
    strcpy(id,ui_label_name(label));
    if(label>3)number(id+2,label);
    /* Existing asset/button layouts stay unchanged. Adaptive messages use
     * the page footer, below the cancel/retry buttons. No new page numbers. */
    if((count&UI_ADAPTIVE_COUNT) && (page==UI_LOGIN || page==UI_QUALITY)){
        char progress[40],*s=progress;unsigned valid=count&15U,attempts=(count>>4)&15U;
        const char *hint="KEEP FACE STILL";
        if(page==UI_QUALITY){
            unsigned x,y;
            /* Actual quality asset has the enrollment-only 8-frame note at
             * y=326. Preserve its background from the blank y=318 row; do not
             * alter that asset or the note used by registration. */
            for(y=318U;y<342U;y++)for(x=200U;x<600U;x++)
                dst[y*UI_WIDTH+x]=dst[318U*UI_WIDTH+x];
            text_scaled(dst,274U,324U,"ADAPTIVE LOGIN - RETRY",0x97BDU,2U);
        }
        switch((count>>8)&15U){
        case UIQ_DARK:hint="TOO DARK - ADD LIGHT";break;
        case UIQ_BRIGHT:hint="TOO BRIGHT - REDUCE LIGHT";break;
        case UIQ_BLUR:hint="BLUR - HOLD STILL";break;
        case UIQ_SMALL:hint="FACE TOO SMALL - MOVE CLOSER";break;
        case UIQ_NOFACE:hint="NO FACE - LOOK AT CAMERA";break;
        case UIQ_INSUFFICIENT:hint="NOT ENOUGH VALID FRAMES - RETRY";break;
        default:break;
        }
        strcpy(s,"VALID ");s+=6;s=number(s,valid);strcpy(s,"/5 TRY ");s+=7;
        s=number(s,attempts);strcpy(s,"/12");
        rect(dst,40U,420U,720U,56U,0x1924U);
        text(dst,50U,428U,progress,0x97BDU);text(dst,50U,449U,hint,0x97BDU);
        count=0U;
    }
    end=number(cnt,page==UI_USERS?(count&15U):count);
    if(enrollment(page) && !adaptive){*end++='/';*end++='8';*end=0;}
    /* 页脚不显示用户姓名或无标签的计数。 */
    /* 身份由真实算法标签传入，不能把所选注册用户当作登录结果。 */
    if(page==UI_KNOWN)centered_name(dst,270U,id);
    if(page==UI_DELETE_CONFIRM || page==UI_DELETED)centered_name(dst,236U,id);
    if(page==UI_USERS){
        char slot[4];
        centered_name(dst,190U,label?id:"----");
        number(slot,count>>4);text(dst,358U,260U,slot,0x97BDU);
        text(dst,545U,260U,cnt,0x97BDU);
    }
    if(enrollment(page) && !adaptive)text(dst,358U,444U,cnt,0x97BDU);
    if(page==UI_PREPARE) {
        unsigned x=label>=1 && label<=3?242+(label-1)*110:242;
        unsigned y=label>=1 && label<=3?84:130;
        unsigned w=label>=1 && label<=3?96:316;
        if(label) {
            rect(dst,x,y,w,2,0x97BDU);rect(dst,x,y+38,w,2,0x97BDU);
            rect(dst,x,y,2,40,0x97BDU);rect(dst,x+w-2,y,2,40,0x97BDU);
        }
    }
    if(page==UI_REVIEW) {
        /* Bounds exported from the actual DOM, never guessed from preview. */
        rect(dst,UI_PROGRESS_X,UI_PROGRESS_Y,UI_PROGRESS_W,UI_PROGRESS_H,0x1924U);
        rect(dst,UI_PROGRESS_X,UI_PROGRESS_Y,UI_PROGRESS_W*(count>8?8:count)/8,UI_PROGRESS_H,0x97BDU);
    }
}
int ui_display_init(void)
{
    XTime start;
    int rc;
    if(locked)return UI_EBUSY;
    locked=1;initialized=0;memset((void*)&ui_debug,0,sizeof ui_debug);
#if UI_REDRAW_DEDUP
    redraw.valid=0;
#endif
    ui_debug.stage=1;
    /* MM2S only. Reset then wait halted before touching either DDR buffer. */
    wr(CR,RESET);start=ticks();
    while((rd(CR)&RESET) || !(rd(SR)&HALTED)) {
        if(ticks()-start>=TIMEOUT_TICKS){rc=UI_ETIMEOUT;goto failed;}
    }
    if(UI_ASSET_PAGES!=UI_PAGE_COUNT || UI_ASSET_WIDTH!=UI_WIDTH || UI_ASSET_HEIGHT!=UI_HEIGHT)
        {rc=UI_EASSET;goto failed;}
    rc=decode(UI_HOME,frame(0));if(rc)goto failed;
    rc=decode(UI_HOME,frame(1));if(rc)goto failed;
    Xil_DCacheFlushRange((UINTPTR)frame(0),UI_STRIDE*UI_HEIGHT);
    Xil_DCacheFlushRange((UINTPTR)frame(1),UI_STRIDE*UI_HEIGHT);barrier();
    wr(SR,ERRORS|0x7000U);
#if UI_VDMA_FRAMESTORE_REG
    wr(STORES,2U);
    if((rd(STORES)&63U)!=2U){rc=UI_EDMA;goto failed;}
#endif
    wr(0x14U,0); /* register bank 0, not a third framebuffer */
    wr(ADDR0,UI_FRAME0);wr(ADDR1,UI_FRAME1);
    wr(PARK,rd(PARK)&~31U);wr(STRIDE,UI_STRIDE);wr(HSIZE,UI_STRIDE);
    wr(CR,CONTROL|CIRCULAR);wr(VSIZE,UI_HEIGHT);barrier();
    /* Boot circular with two fully initialized stores, then freeze actual slot
     * before allowing an asynchronous software render into the other store. */
    start=ticks();
    while(rd(SR)&HALTED) {
        if(ticks()-start>=TIMEOUT_TICKS){rc=UI_ETIMEOUT;goto failed;}
    }
    park(0);rc=wait_slot(0);if(rc)goto failed;
    rc=wait_boundary(0);if(rc)goto failed;
    initialized=1;locked=0;ui_debug.stage=2;return 0;
failed:
    locked=0;return error(rc);
}
int ui_show(unsigned page,unsigned label,unsigned count)
{
    unsigned current,target,adaptive=(count&UI_ADAPTIVE_COUNT)!=0U;
    uint16_t *dst;
    ui_render_ticks elapsed={0,0,0,0,0};
    XTime start,phase;
    int rc;
    ++g_ui_render_timing.revision;barrier();start=ticks();
    rc=UI_EINVAL;
    if(page>=UI_PAGE_COUNT || label>255 || (page==UI_KNOWN&&!label))goto rejected;
    if(adaptive){
        if((page!=UI_LOGIN && page!=UI_QUALITY) || (count&0x7FFFF000U) ||
           (count&15U)>5U || ((count>>4)&15U)>12U ||
           (count&15U)>((count>>4)&15U) || ((count>>8)&15U)>UIQ_INSUFFICIENT)goto rejected;
    }else if(count>255 || (enrollment(page)&&count>8))goto rejected;
    if(!initialized){rc=UI_ENOINIT;goto rejected;}
    if(locked){rc=UI_EBUSY;goto rejected;}
    locked=1;ui_debug.stage=3;ui_debug.page=page;ui_debug.label=label;ui_debug.count=count;
    rc=health();if(rc)goto failed;
    current=active();if(current>1){rc=UI_EDMA;goto failed;}
#if UI_REDRAW_DEDUP
    if(page!=UI_ERROR && redraw.valid && redraw.page==page &&
       redraw.label==label && redraw.count==count && redraw.slot==current &&
       !(ui_debug.control&CIRCULAR) && (rd(PARK)&31U)==current) {
        /* RUN/clean status alone cannot prove progress. Require a fresh frame
         * even for a no-write skip; stopped fsync/tready must still time out.
         * No PARK/CR writes, decode, flush, or flip on this path. */
        ui_debug.target_slot=current;phase=ticks();
        rc=wait_boundary(current);elapsed.wait_current=ticks()-phase;
        if(rc)goto failed;
        ui_debug.last_error=0;ui_debug.stage=2;locked=0;
        return timing_finish(0,1,start,&elapsed);
    }
#endif
    phase=ticks();
    park(current);rc=wait_slot(current);
    if(!rc)rc=wait_boundary(current);
    elapsed.wait_current=ticks()-phase;if(rc)goto failed;
    target=current^1U;ui_debug.target_slot=target;
    phase=ticks();
    dst=frame(target);rc=decode(page,dst);
    if(!rc)dynamic(dst,page,label,count);
    elapsed.decode_dynamic=ticks()-phase;if(rc)goto failed;
    /* Scoped cache maintenance only: never globally disable algorithm caches. */
    phase=ticks();
    Xil_DCacheFlushRange((UINTPTR)dst,UI_STRIDE*UI_HEIGHT);barrier();
    elapsed.flush=ticks()-phase;
    phase=ticks();
    rc=health();
    if(!rc && active()!=current)rc=UI_EDMA;
    if(!rc){park(target);rc=wait_slot(target);}
    if(!rc)rc=wait_boundary(target);
    elapsed.wait_target=ticks()-phase;if(rc)goto failed;
#if UI_REDRAW_DEDUP
    redraw.page=page;redraw.label=label;redraw.count=count;
    redraw.slot=target;redraw.valid=page!=UI_ERROR;
#endif
    ++ui_debug.flips;ui_debug.last_error=0;ui_debug.stage=2;locked=0;
    return timing_finish(0,0,start,&elapsed);
failed:
    /* No subsequent buffer writes until a reset/stop is proved by init. */
    locked=0;rc=error(rc);
rejected:
    return timing_finish(rc,0,start,&elapsed);
}

#ifdef UI_DISPLAY_HOST_TEST
int main(int argc,char **argv)
{
    static uint16_t old_footer[800U*40U];
    static uint16_t old_note[800U*24U];
    unsigned page,i;
    uint64_t before;
    host_regs[1]=HALTED;
    assert(ui_show(0,0,0)==UI_ENOINIT);
    assert(ui_display_init()==0);
    assert(strcmp(ui_label_name(1U),"WJX")==0);
    assert(strcmp(ui_label_name(2U),"LYL")==0);
    assert(strcmp(ui_label_name(3U),"LHJ")==0);
#if !UI_VDMA_FRAMESTORE_REG
    assert(host_regs[STORES/4]==0); /* disabled read0 accepted, fixed two stores */
#endif
    for(page=0;page<UI_PAGE_COUNT;page++) {
        assert(ui_show(page,2,page==UI_USERS?24U:(enrollment(page)?8:3))==0);
        assert(host_active==ui_debug.target_slot);
        if(argc>1) {
            char name[1024];FILE *f;
            snprintf(name,sizeof name,"%s/%02u-render.rgb565",argv[1],page);
            f=fopen(name,"wb");assert(f);
            assert(fwrite(host_frames[host_active],2,UI_WIDTH*UI_HEIGHT,f)==UI_WIDTH*UI_HEIGHT);
            fclose(f);
        }
    }
    /* 三个真人标签的欢迎页各自导出；不借用注册选择状态。 */
    for(i=1U;i<=3U;++i){
        assert(ui_show(UI_KNOWN,i,3U)==0);
        assert(ui_debug.label==i);
        if(argc>1){
            char name[1024];FILE *f;
            snprintf(name,sizeof name,"%s/welcome-%s.rgb565",argv[1],ui_label_name(i));
            f=fopen(name,"wb");assert(f);
            assert(fwrite(host_frames[host_active],2,UI_WIDTH*UI_HEIGHT,f)==UI_WIDTH*UI_HEIGHT);
            fclose(f);
        }
    }
    for(i=0;i<30;i++)assert(ui_show(i%UI_PAGE_COUNT,i%3+1,i%9)==0);
    assert(ui_show(UI_KNOWN,0,0)==UI_EINVAL);
    assert(ui_show(UI_PREPARE,1,9)==UI_EINVAL);
    assert(ui_show(UI_PREPARE,255,0)==0);
    assert(ui_show(UI_LOGIN,0,UI_ADAPTIVE_COUNT|2U|(4U<<4))==0);
    assert(ui_show(UI_QUALITY,0,0)==0);
    memcpy(old_footer,&host_frames[host_active][428U*800U],sizeof old_footer);
    memcpy(old_note,&host_frames[host_active][318U*800U],sizeof old_note);
    assert(ui_show(UI_QUALITY,0,UI_ADAPTIVE_COUNT|(12U<<4)|(UIQ_DARK<<8))==0);
    /* Actual text changed the footer, not the untouched button area. */
    assert(memcmp(old_footer,&host_frames[host_active][428U*800U],sizeof old_footer)!=0);
    /* Registration's static "8 valid frames" asset must not appear in login. */
    assert(memcmp(old_note,&host_frames[host_active][318U*800U],sizeof old_note)!=0);
    assert(ui_show(UI_QUALITY,0,0)==0);
    assert(memcmp(old_note,&host_frames[host_active][318U*800U],sizeof old_note)==0);
    assert(ui_show(UI_HOME,0,UI_ADAPTIVE_COUNT)==UI_EINVAL);
    assert(ui_show(UI_LOGIN,0,UI_ADAPTIVE_COUNT|6U)==UI_EINVAL);
    assert(ui_show(UI_LOGIN,0,UI_ADAPTIVE_COUNT|(13U<<4))==UI_EINVAL);
    assert(ui_show(UI_LOGIN,0,UI_ADAPTIVE_COUNT|(7U<<8))==UI_EINVAL);
    assert(ui_show(UI_LOGIN,0,UI_ADAPTIVE_COUNT|0x1000U)==UI_EINVAL);
    puts("ADAPTIVE_DISPLAY_PASS");
    /* Every letter in the new English messages must have a visible glyph. */
    for(i='A';i<='Z';i++)assert(glyph((char)i)!=0);
    host_stall=1;before=host_time;
    assert(ui_show(UI_HOME,0,0)==UI_ETIMEOUT);
    /* Host clock advances on each MMIO/timer read, including instrumentation. */
    assert(host_time-before<=TIMEOUT_TICKS+2000);
    assert(ui_show(UI_HOME,0,0)==UI_ENOINIT);
    host_stall=0;assert(ui_display_init()==0);
    host_fault=1;assert(ui_show(UI_HOME,0,0)==UI_EDMA);
    host_fault=0;assert(ui_display_init()==0);
    host_active=7;assert(ui_show(UI_HOME,0,0)==UI_EDMA);
    puts("PASS 16 pages, repeated flips, inactive-buffer guards, invalid inputs, timeout, DMA error and reinit");
    return 0;
}
#endif
