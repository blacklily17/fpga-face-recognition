#include <stdio.h>
#include "wp4_classify.h"
static uint16_t feature[WP4_MATCH_FEATURE_COUNT];
int main(void) {
    unsigned p;
    wp4_match result;
    if (wp4_classify_init()!=0) return 10;
    for(p=0;p<WP4_MATCH_MAX_IDENTITIES;++p) {
        if(wp4_classify_template_count(p)!=0) {
            printf("FAIL: startup contains enrolled templates at slot %u\n",p); return 1;
        }
    }
    for(p=0;p<WP4_MATCH_FEATURE_COUNT;++p) feature[p]=(p*7U+3U)%100U;
    if(wp4_classify(feature,&result)!=0 || result.known) return 11;
    if(wp4_classify_enroll_multi(0,1,feature,1)!=0) return 12;
    if(wp4_classify_template_count(0)!=1) return 13;
    if(wp4_classify(feature,&result)!=0 || !result.known || result.label!=1) return 14;
    if(wp4_classify_init()!=0 || wp4_classify_template_count(0)!=0) return 15;
    puts("PUBLIC_EMPTY_GALLERY_PASS");return 0;
}
