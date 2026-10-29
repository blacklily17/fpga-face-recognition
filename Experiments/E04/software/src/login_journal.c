/* One immutable record per displayed terminal LOGIN, never enrollment.
 * RAM retention survives host disconnects, not board reset/power loss.
 * Single writer: the existing UI loop. No UART/JTAG/SD work in this path. */
#include "login_journal.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include <string.h>

volatile login_journal g_login_journal __attribute__((aligned(64)));
static unsigned login_active;
typedef char journal_size_must_be_8256[(sizeof(login_journal)==8256)?1:-1];

static void flush(volatile void *address,uint32_t bytes)
{
 Xil_DCacheFlushRange((UINTPTR)address,bytes);
 /* Xilinx Cortex-A9 FlushRange includes dsb; prevent compiler reordering too. */
 __asm__ volatile("" ::: "memory");
}
void login_journal_init(void)
{
 XTime ticks;XTime_GetTime(&ticks);
 memset((void *)&g_login_journal,0,sizeof(g_login_journal));
 g_login_journal.header[0]=0x4c4a3031U;
 g_login_journal.header[1]=1U;
 g_login_journal.header[2]=sizeof(g_login_journal);
 g_login_journal.header[3]=LOGIN_JOURNAL_CAPACITY;
 g_login_journal.header[6]=(uint32_t)ticks;
 g_login_journal.header[7]=(uint32_t)((uint64_t)ticks>>32);
 g_login_journal.header[8]=16U;
 login_active=0U;flush(&g_login_journal,sizeof(g_login_journal));
}
void login_journal_begin(void){login_active=1U;}
void login_journal_cancel(void){login_active=0U;}
void login_journal_observe(const ui_control *u)
{
 uint32_t index,word[16],hash=2166136261U;unsigned i,j;
 if(!login_active)return;
 if(u->page!=UI_ERROR && (u->mode!=UI_IDLE ||
    (u->page!=UI_KNOWN && u->page!=UI_UNKNOWN &&
     u->page!=UI_QUALITY && u->page!=UI_NO_FACE)))return;
 /* Consume even if full: redraws never count as a second overflow/event. */
 login_active=0U;
 index=g_login_journal.header[4];
 if(index>=LOGIN_JOURNAL_CAPACITY){
  if(g_login_journal.header[5]!=0xffffffffU)++g_login_journal.header[5];
  flush(g_login_journal.header,64U);return;
 }
 word[0]=index+1U;word[1]=(uint32_t)u->sequence;word[2]=(uint32_t)(u->sequence>>32);
 word[3]=u->page;word[4]=u->result.status;word[5]=u->result.label;
 word[6]=(uint32_t)u->login_elapsed_ms;word[7]=(uint32_t)(u->login_elapsed_ms>>32);
 word[8]=u->login_attempts;word[9]=u->sample;word[10]=u->login_rejected;
 word[11]=u->login_stop;word[12]=(uint32_t)u->error;
 word[13]=(uint32_t)u->display_error;word[14]=u->fault;
 for(i=0U;i<15U;i++)for(j=0U;j<4U;j++){
  hash^=(word[i]>>(j*8U))&255U;hash*=16777619U;
 }
 word[15]=hash;
 for(i=0U;i<16U;i++)g_login_journal.record[index][i]=word[i];
 flush(g_login_journal.record[index],64U);
 g_login_journal.header[4]=index+1U;
 flush(g_login_journal.header,64U);
}
