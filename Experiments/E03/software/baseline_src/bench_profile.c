/* Historical five-frame/496-byte AB firmware lives in the SHA-bound reference
 * fixture. It is not part of the 12-attempt adaptive application ABI. */
#ifdef FACEBOX_AB
#include "bench_profile.h"
#include "live_diagnostics.h"
#include "wp4_classify.h"
#include "face_store.h"
#include <stddef.h>
#include <string.h>
#ifdef _MSC_VER
__declspec(align(32)) volatile bench_diag g_bench_diag;
#else
volatile bench_diag g_bench_diag __attribute__((aligned(32)));
#endif
typedef char bench_record_abi[(sizeof(bench_record)==600U)?1:-1];
typedef char bench_diag_abi[(sizeof(bench_diag)==3072U)?1:-1];
static uint64_t (*timer)(void);
static bench_record working;
static uint16_t features[WP4_MATCH_MAX_PROTOTYPES][WP4_MATCH_FEATURE_COUNT];
static uint32_t crc_update(uint32_t crc, const void *data, size_t bytes)
{
    const uint8_t *p=data;unsigned bit;
    while(bytes--){
        crc^=*p++;
        for(bit=0U;bit<8U;++bit)crc=(crc>>1)^((crc&1U)?0xEDB88320U:0U);
    }
    return crc;
}
static uint64_t diagnostic_time(unsigned index)
{
    return (uint64_t)g_live_diag.word[index] | ((uint64_t)g_live_diag.word[index+1U]<<32);
}
int bench_init(uint64_t (*clock)(void), uint64_t hz, uint32_t storage)
{
    bench_diag diag;uint32_t person,label,count,exported,crc=0xffffffffU;
    memset(&diag,0,sizeof diag);timer=clock;
    diag.magic=0x46414235U;diag.version=1U;diag.bytes=(uint32_t)sizeof diag;
    diag.serial=BENCH_SERIAL;diag.timer_hz=hz;diag.storage_state=storage;
    diag.generation=face_store_generation();
    if(!clock || !hz || !storage || (int32_t)storage<0)return -731;
    // 仅对 RAM 中加载的库计算指纹；不调用保存或注册接口。
    for(person=0U;person<WP4_MATCH_MAX_IDENTITIES;++person){
        count=wp4_classify_template_count(person);label=wp4_classify_label(person);
        crc=crc_update(crc,&person,sizeof person);
        crc=crc_update(crc,&label,sizeof label);crc=crc_update(crc,&count,sizeof count);
        if(!count)continue;
        if(wp4_classify_export_identity(person,&label,&features[0][0],
           WP4_MATCH_MAX_PROTOTYPES,&exported) || exported!=count)return -732;
        crc=crc_update(crc,features,(size_t)count*WP4_MATCH_FEATURE_COUNT*sizeof(uint16_t));
        ++diag.identities;diag.templates+=count;
    }
    diag.gallery_crc=crc^0xffffffffU;g_bench_diag=diag;return 0;
}
int bench_begin(void)
{
    if(!timer || g_bench_diag.active || g_bench_diag.completed>=BENCH_SAMPLES)return 0;
    if(face_store_generation()!=g_bench_diag.generation){g_bench_diag.gallery_mismatch=1U;return 0;}
    memset(&working,0,sizeof working);working.index=g_bench_diag.completed;
    working.gallery_crc=g_bench_diag.gallery_crc;working.generation=face_store_generation();
    working.begin_ticks=timer();g_bench_diag.active=1U;++g_bench_diag.started;return 1;
}
void bench_sample(const lr_result *result)
{
    if(!g_bench_diag.active)return;
    working.detect_ticks+=diagnostic_time(LD_DETECT_TICKS);
    if(result->status==LR_NO_FACE){++working.noface_count;return;}
    working.roi_ticks+=diagnostic_time(LD_ROI_TICKS);
    if(g_live_diag.word[LD_HIST_VALID]){
        ++working.hist_count;
        working.lbp_ticks+=diagnostic_time(LD_LBP_TICKS);
        working.classify_ticks+=diagnostic_time(LD_CLASSIFY_TICKS);
    }
}
void bench_end(unsigned page,const lr_result *result,int display_error,uint64_t sequence)
{
    uint64_t end;
    if(!g_bench_diag.active)return;
    // ui_show 已返回：VDMA 换帧与帧界已确认，不把主机读数耗时计入登录。
    end=timer();working.end_ticks=end;working.sequence=sequence;
    working.status=result->status;working.label=result->label;
    working.error=(uint32_t)result->error;working.display_error=(uint32_t)display_error;
    working.accept_mask=g_live_diag.word[LD_SAMPLE_ACCEPT_MASK];
    working.pipeline=g_snapshot_pipeline_diag;
    working.flags=1U;
    if(face_store_generation()!=working.generation){
        g_bench_diag.gallery_mismatch=1U;working.flags|=2U;
    }
    g_bench_diag.record[g_bench_diag.completed]=working;
    g_bench_diag.last_page=page;g_bench_diag.error=working.error;
    g_bench_diag.display_error=working.display_error;
    ++g_bench_diag.completed;g_bench_diag.active=0U;
}
void bench_cancel(void)
{
    if(g_bench_diag.active){g_bench_diag.active=0U;g_bench_diag.error=(uint32_t)-733;}
}
#endif
