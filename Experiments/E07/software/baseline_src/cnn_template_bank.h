#ifndef CNN_TEMPLATE_BANK_H
#define CNN_TEMPLATE_BANK_H

#include <stdint.h>
#include "tinyface_classify.h"

#define CNN_TEMPLATE_BANK_LEGACY 0U
#define CNN_TEMPLATE_BANK_PS     1U
#define CNN_TEMPLATE_BANK_PL     2U
#define CNN_TEMPLATE_BANK_COUNT  3U

typedef struct {
    uint32_t labels[TINYFACE_MAX_IDENTITIES];
    uint32_t counts[CNN_TEMPLATE_BANK_COUNT][TINYFACE_MAX_IDENTITIES];
    int8_t features[CNN_TEMPLATE_BANK_COUNT][TINYFACE_MAX_IDENTITIES]
                   [TINYFACE_MAX_PROTOTYPES][TINYFACE_EMBEDDING_SIZE];
} cnn_template_bank_t;

void cnn_template_bank_init(cnn_template_bank_t *store);
int cnn_template_bank_set(cnn_template_bank_t *store,uint32_t bank,
                          uint32_t slot,uint32_t label,
                          const int8_t *features,uint32_t count);
int cnn_template_bank_clear(cnn_template_bank_t *store,uint32_t bank,
                            uint32_t slot);
int cnn_template_bank_remove(cnn_template_bank_t *store,uint32_t slot);
uint32_t cnn_template_bank_count(const cnn_template_bank_t *store,
                                 uint32_t bank,uint32_t slot);
uint32_t cnn_template_bank_label(const cnn_template_bank_t *store,
                                 uint32_t slot);
const int8_t *cnn_template_bank_get(const cnn_template_bank_t *store,
                                    uint32_t bank,uint32_t slot,
                                    uint32_t *label,uint32_t *count);
const int8_t *cnn_template_bank_select(const cnn_template_bank_t *store,
                                       uint32_t preferred_bank,uint32_t slot,
                                       uint32_t *selected_bank,
                                       uint32_t *label,uint32_t *count);
uint32_t cnn_template_bank_records(const cnn_template_bank_t *store);

#endif
