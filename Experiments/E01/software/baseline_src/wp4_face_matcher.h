#ifndef WP4_FACE_MATCHER_H
#define WP4_FACE_MATCHER_H

#include "xil_types.h"

#define WP4_MATCH_FEATURE_COUNT       3776U
#define WP4_MATCH_MAX_IDENTITIES      16U
#define WP4_MATCH_MAX_PROTOTYPES       8U
#define WP4_MATCH_VOTE_WINDOW          5U
#define WP4_MATCH_UNKNOWN             0xFFFFFFFFU

typedef struct {
    u32 identity_count;
    u32 prototype_count[WP4_MATCH_MAX_IDENTITIES];
    u16 templates[WP4_MATCH_MAX_IDENTITIES]
                 [WP4_MATCH_MAX_PROTOTYPES]
                 [WP4_MATCH_FEATURE_COUNT];
    u32 max_distance;
    u32 min_margin;
} wp4_matcher_t;

typedef struct {
    u32 identity;
    u32 best_distance;
    u32 second_distance;
    u32 margin;
    u32 accepted;
} wp4_match_result_t;

// 后端必须同步完成；非零返回表示硬件故障，禁止伪装成 Unknown。
typedef int (*wp4_distance_backend_t)(void *context, const u16 *feature,
                                      const u16 *prototype, u32 *distance);
typedef int (*wp4_gallery_backend_t)(void *context,const wp4_matcher_t *gallery,
                                     const u16 *feature,wp4_match_result_t *out);

typedef struct {
    u32 history[WP4_MATCH_VOTE_WINDOW];
    u32 next_index;
    u32 sample_count;
    u32 required_votes;
    u32 stable_identity;
} wp4_match_voter_t;

typedef struct {
    u32 mean;
    u32 mean_gradient;
    u32 minimum;
    u32 maximum;
    u32 accepted;
} wp4_roi_quality_t;

typedef struct {
    u16 crop_side;
    u8 mirror;
} wp4_enrollment_view_t;

void wp4_matcher_init(wp4_matcher_t *matcher, u32 identity_count,
                      u32 max_distance, u32 min_margin);
int wp4_matcher_enroll(wp4_matcher_t *matcher, u32 identity,
                       const u16 *features, u32 prototype_count);
int wp4_matcher_enroll_one_shot(wp4_matcher_t *matcher, u32 identity,
                                const u16 *four_view_features);
wp4_enrollment_view_t wp4_enrollment_view(u32 view_index);
u32 wp4_match_distance(const u16 *left, const u16 *right);
wp4_match_result_t wp4_matcher_match(const wp4_matcher_t *matcher,
                                     const u16 *feature);
int wp4_matcher_match_backend(const wp4_matcher_t *matcher, const u16 *feature,
                              wp4_distance_backend_t backend, void *context,
                              wp4_match_result_t *out);
void wp4_match_voter_init(wp4_match_voter_t *voter, u32 required_votes);
u32 wp4_match_voter_update(wp4_match_voter_t *voter, u32 candidate_identity);
wp4_roi_quality_t wp4_check_roi_quality(const u8 *roi,
                                        u32 minimum_mean,
                                        u32 maximum_mean,
                                        u32 minimum_gradient);

#endif
