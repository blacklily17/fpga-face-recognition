/* v5.1 真正触摸 UI 入口；只编译本 main，不链接团队旧 main。
 * 摄像头/特征算法与 SD 库沿用团队源文件；live_status GPIO 不用于 UI。 */
#include "xparameters.h"
#include "xil_io.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include "xil_mmu.h"
#include "distance_dma.h"
#include "distance_stream.h"
#include "wp4_classify.h"
#include "live_algorithm.h"
#include "live_video.h"
#include "live_diagnostics.h"
#include "live_build_id.h"
#include "touch_gt911.h"
#include "ui_control.h"
#include "sleep_policy.h"
#include "capture_hw.h"
#if defined(LIVE_USE_CNN) && defined(CNN_PL_ACCEL)
#include "tinyface_cnn.h"
#include "cnn_conv_dma.h"
#include "xparameters_cnn_pl.h"
#endif
#ifdef FACEBOX_AB
#include "bench_profile.h"
#endif
#ifdef HDMI_FACE_OVERLAY
#include "face_scheduler.h"
#include "overlay_target.h"
#include "overlay_regs.h"
#include "face_store.h"
static face_scheduler_t scheduler;
static gray_snapshot_hw_t snapshot_hw;
static int scheduler_ready,deferred_video_error;
static sleep_policy power_policy;
static int power_ready;
static uint32_t power_word,seen_motion;
static uint64_t last_touch_ms,seen_touch_ms;
static uint64_t fps_source_ticks;
static uint32_t fps_frame_id,fps_epoch,fps_phase,fps_seen_frames;
static int power_setup(void);
static void power_service(void);
static int setup_scheduler(void);
static void transaction_service(void *);
#endif

#ifndef XPAR_UI_VDMA_BASEADDR
#error "New HDF/BSP must expose XPAR_UI_VDMA_BASEADDR (0x43010000)"
#endif
#if XPAR_UI_VDMA_BASEADDR != 0x43010000U
#error "Unexpected UI VDMA address"
#endif
#if !defined(HDMI_FACE_OVERLAY)
#error "Integrated firmware requires continuous video and the overlay scheduler"
#endif
#if !defined(XPAR_MATCH_DMA_BASEADDR) || !defined(XPAR_MATCH_CONTROL_BASEADDR)
#error "Integrated firmware requires its own HDF/BSP with distance accelerator"
#endif
#if XPAR_MATCH_DMA_BASEADDR != 0x40410000U || XPAR_MATCH_CONTROL_BASEADDR != 0x41280000U
#error "Distance accelerator address conflicts with the green-box baseline"
#endif
/* 独立 UI 构建标识，不冒用团队算法源码哈希。 */
#if !defined(XPAR_SLEEP_CONTROL_BASEADDR) || XPAR_SLEEP_CONTROL_BASEADDR != 0x41290000U
#error "E04 sleep requires the matching fourteen-port sleep HDF/BSP"
#endif
#if !defined(LIVE_USE_CNN) || defined(CNN_PL_ACCEL)
#error "E04 sleep must retain the E04 PS CNN recognizer"
#endif
#ifdef HDMI_FACE_OVERLAY
#ifdef FACEBOX_AB
#if BENCH_SERIAL
const uint8_t g_live_build_id[32] __attribute__((used,aligned(32)))="AC880-FACEBOX-AB-SUI-20261011";
#else
const uint8_t g_live_build_id[32] __attribute__((used,aligned(32)))="AC880-FACEBOX-AB-PUI-20261011";
#endif
#else
const uint8_t g_live_build_id[32] __attribute__((used,aligned(32)))=LIVE_APPLICATION_BUILD_ID;
#endif
#else
const uint8_t g_live_build_id[32] __attribute__((used,aligned(32)))="AC880-UI51-20261005-CTRL-V3";
#endif
static ui_control control;
static int polling,controller_ready;
static uint64_t last_poll;
static uint64_t raw_ticks(void){XTime t;XTime_GetTime(&t);return (uint64_t)t;}
static uint64_t ticks(void)
{
 uint64_t now=raw_ticks();
 /* 原 Haar/LBP 已调用计时函数：只推进同步触摸驱动，绝不重入算法。
  * Haar 连续计算/摄像头同步采集/SD 保存仍可能阻塞；取消不是立即中断。 */
 if(controller_ready && control.busy && !polling &&
    now-last_poll>=(uint64_t)COUNTS_PER_SECOND/1000U){
  polling=1;last_poll=now;
#ifdef HDMI_FACE_OVERLAY
  /* Safe service only, never ui_control_step/algorithm/SD reentry. */
  {int rc=live_video_service();if(rc)deferred_video_error=rc;}
  ui_control_poll_cancel_only(&control);
#else
  ui_control_poll(&control);
#endif
  polling=0;
 }
 return now;
}
static uint64_t io_ticks(void *p){(void)p;return ticks();}
static uint64_t io_ms(void *p){(void)p;return live_video_ms();}
static uint32_t distance_read(void *p,unsigned bank,uint32_t off)
{
 (void)p;
 return Xil_In32((bank==DISTANCE_DMA_REGS?XPAR_MATCH_DMA_BASEADDR:
                  XPAR_MATCH_CONTROL_BASEADDR)+off);
}
static void distance_write(void *p,unsigned bank,uint32_t off,uint32_t value)
{
 (void)p;
 Xil_Out32((bank==DISTANCE_DMA_REGS?XPAR_MATCH_DMA_BASEADDR:
            XPAR_MATCH_CONTROL_BASEADDR)+off,value);
}
static int distance_flush(void *p,uintptr_t address,size_t bytes)
{(void)p;Xil_DCacheFlushRange(address,bytes);SYNCHRONIZE_IO;return 0;}
static int distance_invalidate(void *p,uintptr_t address,size_t bytes)
{(void)p;Xil_DCacheInvalidateRange(address,bytes);SYNCHRONIZE_IO;return 0;}
static distance_dma_io distance_io={NULL,distance_read,distance_write,io_ticks,
 distance_flush,distance_invalidate,(uint64_t)COUNTS_PER_SECOND*2U,0U,1U};
#if defined(LIVE_USE_CNN) && defined(CNN_PL_ACCEL)
static uint32_t cnn_read(void *p,unsigned bank,uint32_t off)
{(void)p;return Xil_In32((bank==CNN_CONV_DMA_REGS?XPAR_CNN_DMA_BASEADDR:
                          XPAR_CNN_CONTROL_BASEADDR)+off);}
static void cnn_write(void *p,unsigned bank,uint32_t off,uint32_t value)
{(void)p;Xil_Out32((bank==CNN_CONV_DMA_REGS?XPAR_CNN_DMA_BASEADDR:
                    XPAR_CNN_CONTROL_BASEADDR)+off,value);}
static cnn_conv_dma_io cnn_io={NULL,cnn_read,cnn_write,io_ticks,
 distance_flush,distance_invalidate,(uint64_t)COUNTS_PER_SECOND*2U,0U,1U};
#endif
static uint32_t lbp_base(unsigned bank)
{
 return bank==WP4_DMA?XPAR_AXI_DMA_0_BASEADDR:
        bank==WP4_CONTROL?XPAR_WP4_CONTROL_GPIO_BASEADDR:XPAR_WP4_FLAG_GPIO_BASEADDR;
}
static uint32_t lbp_read(void *p,unsigned bank,uint32_t off)
{(void)p;return Xil_In32(lbp_base(bank)+off);}
static void lbp_write(void *p,unsigned bank,uint32_t off,uint32_t v)
{(void)p;Xil_Out32(lbp_base(bank)+off,v);}
static int sync_roi(void *p,uint32_t addr,size_t n)
{(void)p;Xil_DCacheFlushRange(addr,n);__asm__ volatile("dsb sy" ::: "memory");return 0;}
static int poll_touch(void *p,int *x,int *y,int *pressed)
{
 int rc;(void)p;rc=touch_poll(x,y,pressed);
 if(!rc && *pressed)last_touch_ms=live_video_ms()+1U;
 return rc;
}
static int screen(void *p,unsigned page,unsigned label,unsigned count)
{(void)p;return ui_show(page,label,count);}
static int quiesce(void *p,int error)
{
 uint64_t begin=raw_ticks();(void)p;(void)error;
 /* 直接先确认两个写入者停止。停止失败绝不调用会 memset 的 error_screen。 */
 Xil_Out32(XPAR_CAMERA_START_GPIO_BASEADDR+8U,0U);
 Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR+0x30U,0U);
 Xil_Out32(XPAR_AXI_VDMA_0_BASEADDR,0U);
 Xil_Out32(XPAR_AXI_DMA_0_BASEADDR,0U);
 Xil_Out32(XPAR_MATCH_DMA_BASEADDR,0U);
 Xil_Out32(XPAR_MATCH_DMA_BASEADDR+0x30U,0U);
#if defined(LIVE_USE_CNN) && defined(CNN_PL_ACCEL)
 Xil_Out32(XPAR_CNN_DMA_BASEADDR,0U);
 Xil_Out32(XPAR_CNN_DMA_BASEADDR+0x30U,0U);
 Xil_Out32(XPAR_CNN_CONTROL_BASEADDR,0U);
#endif
 __asm__ volatile("dsb sy" ::: "memory");
  while(!(Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+0x34U)&1U) ||
       !(Xil_In32(XPAR_AXI_VDMA_0_BASEADDR+4U)&1U) ||
       !(Xil_In32(XPAR_AXI_DMA_0_BASEADDR+4U)&1U) ||
       (Xil_In32(XPAR_AXI_DMA_0_BASEADDR)&5U) ||
       !(Xil_In32(XPAR_MATCH_DMA_BASEADDR+4U)&1U) ||
       !(Xil_In32(XPAR_MATCH_DMA_BASEADDR+0x34U)&1U) ||
       (Xil_In32(XPAR_MATCH_DMA_BASEADDR)&5U) ||
       (Xil_In32(XPAR_MATCH_DMA_BASEADDR+0x30U)&5U))
  if(raw_ticks()-begin>=(uint64_t)COUNTS_PER_SECOND*2U)return -584;
#if defined(LIVE_USE_CNN) && defined(CNN_PL_ACCEL)
 begin=raw_ticks();
 while(!(Xil_In32(XPAR_CNN_DMA_BASEADDR+4U)&1U) ||
       !(Xil_In32(XPAR_CNN_DMA_BASEADDR+0x34U)&1U) ||
       (Xil_In32(XPAR_CNN_DMA_BASEADDR)&5U) ||
       (Xil_In32(XPAR_CNN_DMA_BASEADDR+0x30U)&5U))
  if(raw_ticks()-begin>=(uint64_t)COUNTS_PER_SECOND*2U)return -584;
 cnn_io.stopped=1U;
#endif
 Xil_Out32(XPAR_MATCH_CONTROL_BASEADDR,0U);distance_io.stopped=1U;
 __asm__ volatile("dsb sy" ::: "memory");live_video_quiesced();return 0;
}
static int initialize(void *p)
{
 int rc;(void)p;
 rc=ui_display_init();if(rc)return rc;
 rc=touch_init();if(rc)return rc;
 rc=live_video_init();if(rc)return rc;
 rc=live_algorithm_init();if(rc)return rc;
#ifndef LIVE_USE_CNN
 // 独立距离 DMA 上电自检；失败进入原 UI 故障流程，不伪装成 Unknown。
 Xil_SetTlbAttributes(0x40400000U,DEVICE_MEMORY|SHAREABLE|(1U<<4));
 Xil_SetTlbAttributes(0x41200000U,DEVICE_MEMORY|SHAREABLE|(1U<<4));
 SYNCHRONIZE_IO;
 distance_io.fault=0U;
 rc=distance_stream_verify(&distance_io);if(rc)return rc;
#if defined(FACEBOX_AB) && BENCH_SERIAL
 wp4_classify_set_distance_backend(NULL,NULL);
 wp4_classify_set_gallery_backend(NULL,NULL);
#else
 wp4_classify_set_distance_backend(NULL,NULL);
 wp4_classify_set_gallery_backend(distance_stream_match,&distance_io);
#endif
#else
 /* CNN matcher runs on the PS and does not depend on the legacy LBP/distance
  * DMA blocks.  Keep those blocks in the bitstream for rollback only. */
 distance_io.fault=0U;distance_io.stopped=1U;
#ifdef CNN_PL_ACCEL
 Xil_SetTlbAttributes(XPAR_CNN_DMA_BASEADDR,DEVICE_MEMORY|SHAREABLE|(1U<<4));
 Xil_SetTlbAttributes(XPAR_CNN_CONTROL_BASEADDR,DEVICE_MEMORY|SHAREABLE|(1U<<4));
 SYNCHRONIZE_IO;
 cnn_io.fault=0U;
 rc=cnn_conv_dma_selftest(&cnn_io);if(rc)return rc;
 tinyface_cnn_set_conv_backend(cnn_conv_dma_run,&cnn_io);
#endif
#endif
#ifdef FACEBOX_AB
 rc=bench_init(raw_ticks,COUNTS_PER_SECOND,g_live_diag.word[LD_STORAGE_STATE]);if(rc)return rc;
#endif
 rc=live_video_start();if(rc)return rc;
#ifdef HDMI_FACE_OVERLAY
 if(controller_ready)return setup_scheduler();
#endif
 return 0;
}
#ifdef HDMI_FACE_OVERLAY
static uint64_t scheduler_us(void *p){(void)p;return raw_ticks()/((uint64_t)COUNTS_PER_SECOND/1000000U);}
static uint64_t scheduler_ticks(void *p){(void)p;return raw_ticks();}
static int scheduler_video(void *p)
{
 int rc;(void)p;
 if(control.fault && control.paused)return 0;
 rc=deferred_video_error?deferred_video_error:live_video_service();
 deferred_video_error=0;
 if(rc)ui_control_video_fault(&control,rc);
 return rc;
}
static void scheduler_ui(void *p)
{
 (void)p;ui_control_step(&control);
 if(control.fault){
  /* A renderer/touch failure must also revoke a not-yet-consumed sample. */
  (void)face_scheduler_sample_cancel(&scheduler);
  face_scheduler_set_foreground(&scheduler,1); /* fault owns priority until explicit recovery */
 }
}
static int fg_prepare(void *p,const uint8_t *gray,const haar_detect_result_t *face,uint64_t t,lr_result *out)
{(void)p;return live_algorithm_prepare_gray(gray,face,t,out);}
static int fg_pl_start(void *p){(void)p;return live_algorithm_pl_begin();}
static int fg_pl_wait(void *p){(void)p;return live_algorithm_pl_step();}
static int fg_match(void *p,lr_result *out){(void)p;return live_algorithm_complete(out);}
static int fg_cancel(void *p){(void)p;return live_algorithm_async_cancel();}
static int sample_begin(void *p,uint32_t operation,uint32_t slot){
 if(power_ready && !sleep_policy_ready(&power_policy))
  return power_policy.error?power_policy.error:1;
 return face_scheduler_sample_begin(p,operation,slot);
}
static int sample_result(void *p,lr_result *out){return face_scheduler_sample_result(p,out);}
static int sample_cancel(void *p){return face_scheduler_sample_cancel(p);}
static void foreground_active(void *p,int active){
 // 唤醒完成前保留后台快照，让新帧稳定条件可以满足。
 if(!active || !power_ready || sleep_policy_ready(&power_policy))
  face_scheduler_set_foreground(p,active);
}
static void transaction_service(void *p)
{
 int rc;(void)p;
 if(polling)return;
 polling=1;
 rc=live_video_service();if(rc)deferred_video_error=rc;
 if(controller_ready && control.busy)ui_control_poll_cancel_only(&control);
 polling=0;
 /* Never dispatch pending cancellation or call fault/quiesce inside FATFS. */
}
static int setup_scheduler(void)
{
 int rc;
 const face_scheduler_ops_t ops={NULL,scheduler_video,scheduler_ui,scheduler_us};
 const foreground_ops_t fg={NULL,fg_prepare,fg_pl_start,fg_pl_wait,fg_match,fg_cancel,scheduler_ticks,scheduler_us};
 rc=overlay_target_init(&snapshot_hw);if(rc)return rc;
 rc=face_scheduler_init(&scheduler,&snapshot_hw,&ops,&fg);
 if(!rc){deferred_video_error=0;scheduler_ready=1;rc=power_setup();}
 return rc;
}
static int power_drain(void *p){
 int rc;(void)p;
 rc=face_scheduler_sample_cancel(&scheduler);if(rc)return rc;
 if(scheduler.arbiter.owner!=SNAPSHOT_NONE || scheduler.prefetch.phase==SP_DRAIN ||
    (gray_snapshot_read(&snapshot_hw,OV_STATUS)&3U))return 1;
 return 0;
}
static int power_rate(void *p,int slow){
 uint32_t status,target=slow?1U:0U;(void)p;
 if((power_word&1U)!=target){
  face_scheduler_motion_inhibit(&scheduler);
  power_word=(power_word&~1U)|target;
  Xil_Out32(XPAR_SLEEP_CONTROL_BASEADDR,power_word);SYNCHRONIZE_IO;
 }
 status=Xil_In32(XPAR_SLEEP_CONTROL_BASEADDR+8U);
 g_sleep_diag.camera_status=status;
 if((status>>16)!=0x534cU || !(status&8U) || (status&4U))return -756;
 return !(status&2U) && (status&1U)==target?0:1;
}
static int power_hdmi(void *p,int off){
 int rc;(void)p;
 if(off){
  power_word|=2U;Xil_Out32(XPAR_SLEEP_CONTROL_BASEADDR,power_word);SYNCHRONIZE_IO;
  rc=capture_hw_display_sleep(1);
  // 保留06的静态提示与TFT，禁止采用07关闭TMDS的方案。
  if(!rc && scheduler.motion.paused && face_scheduler_motion_rearm(&scheduler))return -757;
 }else{
  rc=capture_hw_display_sleep(0);
  if(!rc){power_word&=~2U;Xil_Out32(XPAR_SLEEP_CONTROL_BASEADDR,power_word);SYNCHRONIZE_IO;}
 }
 g_sleep_diag.hdmi_off=(power_word>>1)&1U;return rc;
}
static void power_monitor(void *p,int enabled)
{(void)p;(void)face_scheduler_monitor(&scheduler,enabled);}
static int power_setup(void){
 const sleep_ops ops={NULL,power_drain,power_rate,power_hdmi,power_monitor};
 uint32_t status=Xil_In32(XPAR_SLEEP_CONTROL_BASEADDR+8U);
 power_ready=0;
 if((status>>16)!=0x534cU || (status&4U))return -756;
 Xil_Out32(XPAR_SLEEP_CONTROL_BASEADDR+4U,0U);
 Xil_Out32(XPAR_SLEEP_CONTROL_BASEADDR+12U,0xffffffffU);
 power_word=0U;Xil_Out32(XPAR_SLEEP_CONTROL_BASEADDR,0U);SYNCHRONIZE_IO;
 sleep_policy_init(&power_policy,&ops,live_video_ms());
 if(status&3U){
  power_policy.phase=SLEEP_RATE_HIGH;
  (void)face_scheduler_monitor(&scheduler,1);
 }
 seen_motion=scheduler.motion_serial;seen_touch_ms=last_touch_ms;
 fps_source_ticks=0U;fps_seen_frames=0U;fps_epoch=0U;fps_frame_id=0U;fps_phase=99U;
 power_ready=1;return 0;
}
static void power_service(void){
 sleep_input in;uint64_t now=live_video_ms();int rc;
 if(!power_ready || control.fault)return;
 in.busy=control.busy || control.mode!=UI_IDLE || control.sample_active || control.cancel_pending;
 in.home=control.page==UI_HOME;
 in.touch=last_touch_ms!=seen_touch_ms;seen_touch_ms=last_touch_ms;
 in.presence=scheduler.last_face_us && now*1000U-scheduler.last_face_us<3000000U;
 in.motion=scheduler.motion_serial!=seen_motion;seen_motion=scheduler.motion_serial;
 in.frames=scheduler.monitor_frames;
 if(power_policy.phase==SLEEP_MONITOR && scheduler.motion_rearm_us &&
    (scheduler.motion_fence || scheduler.motion.prime_left) &&
    now*1000U>=scheduler.motion_rearm_us &&
    now*1000U-scheduler.motion_rearm_us>=MOTION_REBASE_TIMEOUT_US)
  power_policy.error=-757;
 rc=sleep_policy_step(&power_policy,&in,now);
 g_sleep_diag.motion_frames=scheduler.motion.frames;
 g_sleep_diag.motion_pixels=scheduler.motion.changed;
 g_sleep_diag.motion_events=scheduler.motion_serial;
 g_sleep_diag.monitor_frames=scheduler.monitor_frames;
 g_sleep_diag.background_jobs=scheduler.background_jobs;
 g_sleep_diag.motion_guard=scheduler.motion.paused |
  (scheduler.motion.prime_left<<4) | (scheduler.monitor_face_pending<<8) |
  ((scheduler.monitor_only && scheduler.background_phase==2)?512U:0U) |
  (scheduler.motion_fence<<10);
 if(scheduler.monitor_frames!=fps_seen_frames){
  const snapshot_meta_t *m=&scheduler.background_meta;
  fps_seen_frames=scheduler.monitor_frames;
  g_sleep_diag.source_frame_id=m->frame_id;
  if(fps_epoch!=m->epoch || fps_phase!=(uint32_t)power_policy.phase ||
     m->source_ticks<fps_source_ticks){
   fps_epoch=m->epoch;fps_phase=(uint32_t)power_policy.phase;
   fps_frame_id=m->frame_id;fps_source_ticks=m->source_ticks;
   g_sleep_diag.source_fps_milli=0U;
  }else if(m->source_ticks-fps_source_ticks>=OV_TICKS_PER_SECOND){
   g_sleep_diag.source_fps_milli=(uint32_t)(
    (uint64_t)(uint32_t)(m->frame_id-fps_frame_id)*OV_TICKS_PER_SECOND*1000U/
    (m->source_ticks-fps_source_ticks));
   fps_frame_id=m->frame_id;fps_source_ticks=m->source_ticks;
  }
 }
 if(rc)ui_control_video_fault(&control,rc);
}
#endif
static void publish(void)
{
 ui_control_publish(&control);
 g_live_diag.word[LD_STATE]=control.page;
 g_live_diag.word[LD_STATUS]=control.result.status;
 g_live_diag.word[LD_LABEL]=control.result.label;
 g_live_diag.word[LD_PRIMARY]=(uint32_t)control.error;
 g_live_diag.word[LD_DISPLAY_ERROR]=(uint32_t)control.display_error;
 live_set64(LD_SEQUENCE,control.sequence);
 /* JTAG 可观察独立 volatile 状态；保留缓存并显式刷出，而非全局关闭。 */
 Xil_DCacheFlushRange((UINTPTR)&g_ui_diag,sizeof(g_ui_diag));
 Xil_DCacheFlushRange((UINTPTR)&stats,sizeof(stats));
 Xil_DCacheFlushRange((UINTPTR)&ui_state,sizeof(ui_state));
 Xil_DCacheFlushRange((UINTPTR)&g_live_diag,sizeof(g_live_diag));
 Xil_DCacheFlushRange((UINTPTR)&g_distance_diag,sizeof(g_distance_diag));
 Xil_DCacheFlushRange((UINTPTR)&g_snapshot_pipeline_diag,sizeof(g_snapshot_pipeline_diag));
 Xil_DCacheFlushRange((UINTPTR)&g_sleep_diag,sizeof(g_sleep_diag));
#ifdef FACEBOX_AB
 Xil_DCacheFlushRange((UINTPTR)&g_bench_diag,sizeof(g_bench_diag));
#endif
 Xil_DCacheFlushRange((UINTPTR)&ui_debug,sizeof(ui_debug));
 Xil_DCacheFlushRange((UINTPTR)&touch_debug,sizeof(touch_debug));
 __asm__ volatile("dsb sy" ::: "memory");
}
int main(void)
{
 uint64_t published=0U,now;unsigned previous=99U;int rc;
 live_algorithm_io algorithm={(const uint8_t *)0x11000000U,live_video_valid,ticks,
  {NULL,lbp_read,lbp_write,io_ticks,sync_roi,(uint64_t)COUNTS_PER_SECOND*2U}};
 ui_ops ops={NULL,poll_touch,screen,io_ms,quiesce,initialize};
 Xil_ICacheEnable();Xil_DCacheEnable();
 g_live_diag.word[LD_MAGIC]=0x4c495645U;g_live_diag.word[LD_VERSION]=1U;
 live_set64(LD_HZ,COUNTS_PER_SECOND);
 rc=live_algorithm_bind(&algorithm);
#ifdef HDMI_FACE_OVERLAY
 face_store_bind_service(transaction_service,NULL);
#endif
 if(rc==0)rc=initialize(NULL);
 (void)ui_control_init(&control,&ops);controller_ready=1;
#ifdef HDMI_FACE_OVERLAY
 if(rc==0)rc=setup_scheduler();
 {
  const ui_async_ops async={&scheduler,sample_begin,sample_result,sample_cancel,foreground_active};
  int bind_rc=ui_control_bind_async(&control,&async);if(rc==0)rc=bind_rc;
 }
#endif
 if(rc){
  control.error=rc;control.result.status=LR_FAILED;control.result.error=rc;
  control.fault=1U;control.paused=1U;control.page=UI_ERROR;
  (void)quiesce(NULL,rc);control.display_error=ui_show(UI_ERROR,0U,0U);
 }
 for(;;){
#ifdef HDMI_FACE_OVERLAY
  if(scheduler_ready)face_scheduler_step(&scheduler,scheduler_us(NULL));
  else ui_control_step(&control);
  power_service();
#else
  ui_control_step(&control);
#endif
  now=live_video_ms();
  if(previous!=control.page || now-published>=100U){
   publish();published=now;previous=control.page;
  }
 }
}
