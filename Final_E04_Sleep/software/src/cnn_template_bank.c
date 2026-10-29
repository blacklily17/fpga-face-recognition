#include "cnn_template_bank.h"

#include <string.h>

static int valid_bank_slot(uint32_t bank,uint32_t slot)
{
    return bank<CNN_TEMPLATE_BANK_COUNT && slot<TINYFACE_MAX_IDENTITIES;
}

static int any_bank(const cnn_template_bank_t *store,uint32_t slot)
{
    uint32_t bank;
    for(bank=0U;bank<CNN_TEMPLATE_BANK_COUNT;++bank)
        if(store->counts[bank][slot]!=0U)return 1;
    return 0;
}

void cnn_template_bank_init(cnn_template_bank_t *store)
{
    if(store)memset(store,0,sizeof *store);
}

int cnn_template_bank_set(cnn_template_bank_t *store,uint32_t bank,
                          uint32_t slot,uint32_t label,
                          const int8_t *features,uint32_t count)
{
    size_t bytes;
    if(!store || !features || !valid_bank_slot(bank,slot) || label==0U ||
       label>255U || count==0U || count>TINYFACE_MAX_PROTOTYPES)return -1;
    if(store->labels[slot]!=0U && store->labels[slot]!=label)return -2;
    bytes=(size_t)count*TINYFACE_EMBEDDING_SIZE;
    memcpy(&store->features[bank][slot][0][0],features,bytes);
    if(count<TINYFACE_MAX_PROTOTYPES)
        memset(&store->features[bank][slot][count][0],0,
               (size_t)(TINYFACE_MAX_PROTOTYPES-count)*TINYFACE_EMBEDDING_SIZE);
    store->counts[bank][slot]=count;
    store->labels[slot]=label;
    return 0;
}

int cnn_template_bank_clear(cnn_template_bank_t *store,uint32_t bank,
                            uint32_t slot)
{
    if(!store || !valid_bank_slot(bank,slot))return -1;
    memset(&store->features[bank][slot][0][0],0,
           (size_t)TINYFACE_MAX_PROTOTYPES*TINYFACE_EMBEDDING_SIZE);
    store->counts[bank][slot]=0U;
    if(!any_bank(store,slot))store->labels[slot]=0U;
    return 0;
}

int cnn_template_bank_remove(cnn_template_bank_t *store,uint32_t slot)
{
    uint32_t bank;
    if(!store || slot>=TINYFACE_MAX_IDENTITIES)return -1;
    for(bank=0U;bank<CNN_TEMPLATE_BANK_COUNT;++bank){
        memset(&store->features[bank][slot][0][0],0,
               (size_t)TINYFACE_MAX_PROTOTYPES*TINYFACE_EMBEDDING_SIZE);
        store->counts[bank][slot]=0U;
    }
    store->labels[slot]=0U;
    return 0;
}

uint32_t cnn_template_bank_count(const cnn_template_bank_t *store,
                                 uint32_t bank,uint32_t slot)
{
    return (!store || !valid_bank_slot(bank,slot))?0U:store->counts[bank][slot];
}

uint32_t cnn_template_bank_label(const cnn_template_bank_t *store,uint32_t slot)
{
    return (!store || slot>=TINYFACE_MAX_IDENTITIES)?0U:store->labels[slot];
}

const int8_t *cnn_template_bank_get(const cnn_template_bank_t *store,
                                    uint32_t bank,uint32_t slot,
                                    uint32_t *label,uint32_t *count)
{
    uint32_t n;
    if(!store || !valid_bank_slot(bank,slot) || !label || !count)return 0;
    n=store->counts[bank][slot];
    *label=store->labels[slot];*count=n;
    return n?&store->features[bank][slot][0][0]:0;
}

const int8_t *cnn_template_bank_select(const cnn_template_bank_t *store,
                                       uint32_t preferred_bank,uint32_t slot,
                                       uint32_t *selected_bank,
                                       uint32_t *label,uint32_t *count)
{
    const int8_t *features;
    if(preferred_bank!=CNN_TEMPLATE_BANK_PS &&
       preferred_bank!=CNN_TEMPLATE_BANK_PL)return 0;
    features=cnn_template_bank_get(store,preferred_bank,slot,label,count);
    if(features){if(selected_bank)*selected_bank=preferred_bank;return features;}
    features=cnn_template_bank_get(store,CNN_TEMPLATE_BANK_LEGACY,slot,label,count);
    if(features && selected_bank)*selected_bank=CNN_TEMPLATE_BANK_LEGACY;
    return features;
}

uint32_t cnn_template_bank_records(const cnn_template_bank_t *store)
{
    uint32_t bank,slot,total=0U;
    if(!store)return 0U;
    for(bank=0U;bank<CNN_TEMPLATE_BANK_COUNT;++bank)
        for(slot=0U;slot<TINYFACE_MAX_IDENTITIES;++slot)
            if(store->counts[bank][slot])++total;
    return total;
}
