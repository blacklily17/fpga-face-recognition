#ifndef LIVE_ALGORITHM_H
#define LIVE_ALGORITHM_H

#include <stdint.h>
#include "live_control.h"
#include "wp4_lbp.h"
#include "haar_detect.h"

#define LIVE_FACE_MAX_SIDE 240U
#define LIVE_FACE_MAX_BYTES (LIVE_FACE_MAX_SIDE * LIVE_FACE_MAX_SIDE)
#define LIVE_ENROLL_TARGET_SAMPLES 8U
#define LIVE_ENROLL_MIN_SAMPLES    5U

typedef struct {
    const uint8_t *rgb;
    int (*valid_image)(void);
    uint64_t (*now)(void);
    wp4_io lbp;
} live_algorithm_io;

int live_algorithm_bind(const live_algorithm_io *io);
int live_algorithm_init(void);
void live_algorithm_invalidate(void);
int live_algorithm_run(lr_result *out);
/* Stable private gray + completed Haar result. Only foreground calls these.
 * The pl_* names are retained as a scheduler ABI: in LIVE_USE_CNN builds the
 * start call runs the bounded INT8 CNN and step reports completion; in fallback
 * builds they still operate the LBP accelerator. Recent-track fallback is
 * disabled for strict login sessions. */
int live_algorithm_prepare_gray(const uint8_t *,const haar_detect_result_t *,uint64_t ps_detect_ticks,lr_result *);
int live_algorithm_pl_begin(void);
int live_algorithm_pl_step(void);
int live_algorithm_complete(lr_result *);
int live_algorithm_async_cancel(void);

/* UI/backend contract.  The UI owns names; the algorithm owns slots, labels,
 * multi-frame CNN embeddings and automatic versioned SD-card persistence. */
int live_algorithm_enroll_current(uint32_t slot, uint32_t label);
int live_algorithm_enroll_begin(uint32_t slot, uint32_t label);
int live_algorithm_enroll_add_current(void);
int live_algorithm_enroll_commit(void);
void live_algorithm_enroll_cancel(void);
uint32_t live_algorithm_enroll_count(void);
int live_algorithm_remove_identity(uint32_t slot);
int live_algorithm_reload_identities(void);
int live_algorithm_save_identities(void);
uint32_t live_algorithm_storage_generation(void);
/* CNN build: maximum cosine distance (32767-cosine_q15) and minimum cosine
 * margin. LBP fallback: historical chi-square distance and distance margin. */
int live_algorithm_set_thresholds(uint32_t primary_threshold, uint32_t min_margin);
void live_algorithm_set_vote_required(uint32_t required_votes);
/* Login requires a face detected in the current source frame. Set 0 after
 * completion/cancel/fault. Enrollment retains the existing track policy. */
void live_algorithm_set_login_active(int active);

#endif
