#ifndef E02_FIXED_CONTROL_H
#define E02_FIXED_CONTROL_H
#include "e02_ps_diag.h"
/* Fixed compute application only. No login, source TTL, gallery or MMIO.
 * Host writes input only while safe/idle, never during an active compute. */
extern uint8_t g_e02_fixed_input[96000];
extern int8_t g_e02_fixed_tensors[408960];
extern c5_head_row_t g_e02_fixed_rows[300];
extern c5_detection_t g_e02_fixed_boxes[16];
extern volatile uint32_t g_e02_fixed_command[8];
typedef struct {uint32_t word[64];} e02_fixed_record_t;
extern volatile e02_fixed_record_t g_e02_fixed_control;
extern const uint32_t g_e02_fixed_abi[32];
int e02_fixed_control_bind_cache(const e02_diag_io_t *);
int e02_fixed_control_init(uint64_t (*)(void *),void *,uint64_t ps_hz);
int e02_fixed_control_begin(unsigned export_tensors);
int e02_fixed_control_step(void);
void e02_fixed_control_cancel(void);
/* schema1:0 magic E02F,1 schema,2 bytes256,3 revision,4 mode2,
 * 5 signed status,6 active,7 result valid,8 tensor-export mode,9 stages,
 * 10 NMS count,11 ROI valid; 12/14 start/end us64;16 wall us64;
 * 18 core active us64;20 prep us64;22 head us64;24 post us64;
 * 26 maxstep us64;28 active us64;30 steps64;32 PS Hz64;34 DMA=0;
 * 35 tensor bytes;36..53 nine stage us64;54..57 ROI x0/y0/x1/y1;
 * 58 stage;59 cursor;60 maxunits;61..63 reserved0. Mode with exports
 * measures copy overhead too; only export0 is the compute timing mode.
 */
#endif
