#ifndef LIVE_CONTROL_H
#define LIVE_CONTROL_H
#include <stdint.h>
enum lr_state { LR_INIT, LR_LIVE, LR_CAPTURE, LR_RECOGNIZE, LR_RESUME, LR_ERROR };
enum lr_status { LR_READY, LR_WORKING, LR_KNOWN, LR_UNKNOWN, LR_NO_FACE, LR_FAILED,
                 LR_RETIRED }; /* Expired image, not a face or identity verdict. */
typedef struct { unsigned status, label; int error; } lr_result;
typedef struct {
    void *ctx;
    int (*init)(void*); int (*start_live)(void*); int (*step_live)(void*);
    int (*capture)(void*); int (*recognize)(void*,lr_result*);
    int (*submit)(void*,unsigned,unsigned); int (*error_screen)(void*,int);
} lr_ops;
typedef struct {
    lr_ops ops;
    enum lr_state state;
    lr_result result;
    uint64_t sequence, candidate_since, last_sample;
    unsigned candidate, stable, released, sampled;
    int primary_error, display_error;
} lr_control;
int lr_init(lr_control*, const lr_ops*);
void lr_step(lr_control*, unsigned keys_n, uint64_t now_ms);
#endif
