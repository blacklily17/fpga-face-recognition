#ifndef WP4_CLASSIFY_H
#define WP4_CLASSIFY_H

#include "wp4_face_matcher.h"

// 仅在采集/识别空闲且 DMA 已停止时切换；传空指针恢复 PS 基线。
void wp4_classify_set_distance_backend(wp4_distance_backend_t backend,
                                      void *context);
void wp4_classify_set_gallery_backend(wp4_gallery_backend_t backend,
                                      void *context);

#include <stdint.h>

#define WP4_DEFAULT_MAX_DISTANCE 8800000U
#define WP4_DEFAULT_MIN_MARGIN    200000U

typedef struct {
    uint32_t known;
    uint32_t person;
    uint32_t label;
    uint32_t template_index;
    uint32_t distance;
    uint32_t second_distance;
    uint32_t margin;
} wp4_match;

int wp4_classify_init(void);
int wp4_classify(const uint16_t *hist, wp4_match *out);
int wp4_classify_enroll_one_shot(uint32_t person, uint32_t label,
                                 const uint16_t *four_view_features);
int wp4_classify_enroll_multi(uint32_t person, uint32_t label,
                              const uint16_t *features,
                              uint32_t prototype_count);
int wp4_classify_remove(uint32_t person);
int wp4_classify_set_thresholds(uint32_t max_distance, uint32_t min_margin);
uint32_t wp4_classify_label(uint32_t person);
uint32_t wp4_classify_template_count(uint32_t person);
int wp4_classify_export_identity(uint32_t person, uint32_t *label,
                                 uint16_t *features, uint32_t capacity,
                                 uint32_t *prototype_count);
void wp4_classify_vote_reset(uint32_t required_votes);
uint32_t wp4_classify_vote(uint32_t person);

#endif
