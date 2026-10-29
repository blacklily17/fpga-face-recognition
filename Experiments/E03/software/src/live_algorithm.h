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
 * prepare: 0 sample finished (no PL), 1 ROI awaits PL, negative error.
 * PL polling: 1 pending/0 HALTED+valid/<0 failure. complete retains the exact
 * original quality, classifier and voter numeric rules. Recent-track fallback
 * is disabled for strict login sessions; enrollment keeps the original policy. */
int live_algorithm_prepare_gray(const uint8_t *,const haar_detect_result_t *,uint64_t ps_detect_ticks,lr_result *);
int live_algorithm_prepare_cnn_gray(const uint8_t *,const haar_detect_result_t *,uint64_t ps_detect_ticks,
                                    uint32_t session,uint32_t epoch,lr_result *);
uint32_t live_algorithm_evidence_generation(void);
int live_algorithm_evidence_context(uint32_t session,uint32_t epoch);
int live_algorithm_pl_begin(void);
int live_algorithm_pl_step(void);
int live_algorithm_complete(lr_result *);
int live_algorithm_async_cancel(void);

/* UI/backend contract.  The UI owns names; the algorithm owns slots, labels,
 * multi-frame LBP prototypes and automatic SD-card persistence. */
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
int live_algorithm_set_thresholds(uint32_t max_distance, uint32_t min_margin);
void live_algorithm_set_vote_required(uint32_t required_votes);
/* Login requires a face detected in the current source frame. Set 0 after
 * completion/cancel/fault. Enrollment retains the existing track policy. */
void live_algorithm_set_login_active(int active);

#endif
