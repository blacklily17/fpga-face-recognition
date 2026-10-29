#ifndef E02_PS_DIAG_H
#define E02_PS_DIAG_H
#include "e02_ps_detector.h"
enum { E02_DIAG_LIVE=1,E02_DIAG_FIXED_INPUT=2,E02_DIAG_WORDS=128 };
typedef struct {uint32_t word[E02_DIAG_WORDS];} e02_ps_diag_t;
typedef struct {void *context;void (*clean)(void *,const void *,size_t);void (*barrier)(void *);} e02_diag_io_t;
extern volatile e02_ps_diag_t g_e02_ps_diag;
extern const uint32_t g_e02_abi_layout[32];
int e02_ps_diag_publish(const e02_ps_detector_t *,uint32_t mode,uint32_t owner,uint64_t ps_hz,const e02_diag_io_t *);
/* schema1 little-endian uint32 words (64-bit values low word first):
 * 0 magic E02D;1 schema;2 bytes;3 seqlock;4 backend2 PS;5 mode1 live/2 fixed;
 * 6 initialized;7 active;8 signed status;9 phase;10 stage;11 cursor;12 owner;
 * 13 safe;14 NMS count;15 ROI valid;16 PS Hz(u64);18 source Hz(u64);
 * 20 session;21 attempt;22 evidence;23 epoch;24 frame;25 request;
 * 26 ticket(u64);28 source ticks(u64);30 commit ticks(u64);32 start us(u64);
 * 34 last endpoint us(u64);36 wall us(u64);38 active CPU us(u64);
 * 40 max step us(u64);42 steps(u64);44 units(u64);46 started(u64);
 * 48 completed(u64);50 cancelled(u64);52 timeouts(u64);54 detection DMA=0;
 * 55 maximum units/step;56 preprocessing us(u64);58 head us(u64);
 * 60 decode/sort/NMS us(u64);62 conv/pool active us(u64);
 * 64..81 nine stage us(u64);82..127 reserved zero.
 * C3 PL diagnostic table is INVALID in E02, never an alternate PS clock ABI.
 */
#endif
