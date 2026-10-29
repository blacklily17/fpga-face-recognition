#ifndef TINYFACE_CLASSIFY_H
#define TINYFACE_CLASSIFY_H

#include <stdint.h>
#include "tinyface_cnn.h"

#define TINYFACE_MAX_IDENTITIES 16U
#define TINYFACE_MAX_PROTOTYPES  8U
#define TINYFACE_MATCH_UNKNOWN   0xFFFFFFFFU
#define TINYFACE_DEFAULT_MIN_SIMILARITY 18022U /* cosine 0.55 in Q15 */
#define TINYFACE_DEFAULT_MIN_MARGIN      1311U /* cosine 0.04 in Q15 */

typedef struct {
    uint32_t known;
    uint32_t person;
    uint32_t label;
    uint32_t template_index;
    uint32_t similarity;
    uint32_t second_similarity;
    uint32_t margin;
} tinyface_match_t;

int tinyface_classify_init(void);
int tinyface_classify(const int8_t *embedding,tinyface_match_t *out);
int tinyface_classify_enroll_one_shot(uint32_t person,uint32_t label,
                                      const int8_t *four_embeddings);
int tinyface_classify_enroll_multi(uint32_t person,uint32_t label,
                                   const int8_t *embeddings,uint32_t count);
int tinyface_classify_remove(uint32_t person);
int tinyface_classify_set_thresholds(uint32_t min_similarity,uint32_t min_margin);
uint32_t tinyface_classify_label(uint32_t person);
uint32_t tinyface_classify_template_count(uint32_t person);
int tinyface_classify_export_identity(uint32_t person,uint32_t *label,
                                      int8_t *features,uint32_t capacity,
                                      uint32_t *prototype_count);
void tinyface_classify_vote_reset(uint32_t required_votes);
uint32_t tinyface_classify_vote(uint32_t person);

#endif
