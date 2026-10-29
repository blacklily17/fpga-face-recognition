#include "cnn_config.h"
#if E02_FIXED_INPUT
#include "e02_fixed_control.h"
#include "e02_ps_clock.h"
#include "live_build_id.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xtime_l.h"
const uint8_t g_live_build_id[32] __attribute__((used,aligned(32)))=LIVE_APPLICATION_BUILD_ID;
static uint64_t now(void *p){XTime t;(void)p;XTime_GetTime(&t);return e02_ps_ticks_to_us((uint64_t)t,(uint64_t)COUNTS_PER_SECOND/1000000u);}
static void clean(void *p,const void *addr,size_t bytes){(void)p;Xil_DCacheFlushRange((UINTPTR)addr,(uint32_t)bytes);}
static void barrier(void *p){(void)p;SYNCHRONIZE_IO;}
int main(void){
    const e02_diag_io_t io={NULL,clean,barrier};uint32_t last=0;
    Xil_ICacheEnable();Xil_DCacheEnable();
    (void)e02_fixed_control_bind_cache(&io);(void)e02_fixed_control_init(now,NULL,COUNTS_PER_SECOND);
    clean(NULL,g_e02_fixed_abi,sizeof g_e02_fixed_abi);
    for(;;){
        uint32_t command,sequence;int rc=0;
        Xil_DCacheInvalidateRange((UINTPTR)g_e02_fixed_command,sizeof g_e02_fixed_command);SYNCHRONIZE_IO;
        command=g_e02_fixed_command[0];sequence=g_e02_fixed_command[1];
        if(command && sequence && sequence>last){
            if(command==1){
                if(g_e02_fixed_control.word[6])rc=C5_BUSY;
                else{Xil_DCacheInvalidateRange((UINTPTR)g_e02_fixed_input,sizeof g_e02_fixed_input);SYNCHRONIZE_IO;
                    rc=e02_fixed_control_begin(g_e02_fixed_command[4]);}
            }else if(command==2)e02_fixed_control_cancel();
            else rc=C5_BAD_ARG;
            last=sequence;g_e02_fixed_command[0]=0;g_e02_fixed_command[2]=(uint32_t)rc;g_e02_fixed_command[3]=sequence;
            clean(NULL,(const void *)g_e02_fixed_command,sizeof g_e02_fixed_command);SYNCHRONIZE_IO;
        }
        if(g_e02_fixed_control.word[6])(void)e02_fixed_control_step();
    }
}
#endif
