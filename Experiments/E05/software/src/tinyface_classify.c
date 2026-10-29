#include "tinyface_classify.h"

#include <math.h>
#include <string.h>

static int8_t templates[TINYFACE_MAX_IDENTITIES][TINYFACE_MAX_PROTOTYPES]
                       [TINYFACE_EMBEDDING_SIZE] __attribute__((aligned(32)));
static uint32_t prototype_count[TINYFACE_MAX_IDENTITIES];
static uint32_t labels[TINYFACE_MAX_IDENTITIES];
static uint32_t identity_min_similarity[TINYFACE_MAX_IDENTITIES];
static uint32_t identity_consensus_min_similarity[TINYFACE_MAX_IDENTITIES];
static uint32_t min_similarity,min_margin;
static uint32_t vote_required,vote_candidate,vote_count;
static int initialized;

static int32_t cosine_q15(const int8_t *a,const int8_t *b)
{
    uint32_t i;
    int32_t dot=0;
    uint32_t aa=0U,bb=0U;
    float cosine;
    for(i=0U;i<TINYFACE_EMBEDDING_SIZE;++i){
        dot+=(int32_t)a[i]*(int32_t)b[i];
        aa+=(uint32_t)((int32_t)a[i]*(int32_t)a[i]);
        bb+=(uint32_t)((int32_t)b[i]*(int32_t)b[i]);
    }
    if(aa==0U || bb==0U)return -32768;
    cosine=(float)dot/(sqrtf((float)aa)*sqrtf((float)bb));
    if(cosine>=1.0f)return 32767;
    if(cosine<=-1.0f)return -32767;
    return (int32_t)(cosine*32767.0f+(cosine>=0.0f?0.5f:-0.5f));
}

static void update_identity_threshold(uint32_t person)
{
    uint32_t a,b,max_distance=0U,radius,consensus_radius,global_radius;
    if(person>=TINYFACE_MAX_IDENTITIES)return;
    if(prototype_count[person]<2U){
        identity_min_similarity[person]=min_similarity;
        identity_consensus_min_similarity[person]=min_similarity;
        return;
    }
    for(a=0U;a<prototype_count[person];++a)for(b=a+1U;b<prototype_count[person];++b){
        int32_t score=cosine_q15(templates[person][a],templates[person][b]);
        uint32_t distance=(uint32_t)(32767-score);
        if(distance>max_distance)max_distance=distance;
    }
    /* Enrollment spread is measured in the same cosine-distance units as
       inference.  A 2.5x radius keeps pose/illumination headroom while a
       3500 floor avoids an unrealistically tight radius for near-duplicates. */
    radius=(max_distance*5U+1U)/2U;
    if(radius<3500U)radius=3500U;
    global_radius=32767U-min_similarity;
    if(radius>global_radius)radius=global_radius;
    identity_min_similarity[person]=32767U-radius;
    consensus_radius=(max_distance*7U+3U)/4U;
    if(consensus_radius<3500U)consensus_radius=3500U;
    if(consensus_radius>global_radius)consensus_radius=global_radius;
    identity_consensus_min_similarity[person]=32767U-consensus_radius;
}

int tinyface_classify_init(void)
{
    memset(templates,0,sizeof templates);
    memset(prototype_count,0,sizeof prototype_count);
    memset(labels,0,sizeof labels);
    memset(identity_min_similarity,0,sizeof identity_min_similarity);
    memset(identity_consensus_min_similarity,0,sizeof identity_consensus_min_similarity);
    min_similarity=TINYFACE_DEFAULT_MIN_SIMILARITY;
    min_margin=TINYFACE_DEFAULT_MIN_MARGIN;
    tinyface_classify_vote_reset(1U);
    initialized=1;
    return 0;
}

int tinyface_classify(const int8_t *embedding,tinyface_match_t *out)
{
    uint32_t person,index,best_person=TINYFACE_MATCH_UNKNOWN,best_index=0U;
    int32_t best=-32768,second=-32768,best_consensus=-32768;
    if(!initialized || embedding==0 || out==0)return -590;
    for(person=0U;person<TINYFACE_MAX_IDENTITIES;++person){
        int32_t identity_best=-32768,top[3]={-32768,-32768,-32768};
        int32_t identity_consensus;
        uint32_t consensus_count;
        uint32_t identity_index=0U;
        for(index=0U;index<prototype_count[person];++index){
            int32_t score=cosine_q15(embedding,templates[person][index]);
            if(score>identity_best){identity_best=score;identity_index=index;}
            if(score>top[0]){top[2]=top[1];top[1]=top[0];top[0]=score;}
            else if(score>top[1]){top[2]=top[1];top[1]=score;}
            else if(score>top[2])top[2]=score;
        }
        consensus_count=prototype_count[person]<3U?prototype_count[person]:3U;
        identity_consensus=identity_best;
        if(consensus_count>0U){
            int32_t sum=0;uint32_t k;
            for(k=0U;k<consensus_count;++k)sum+=top[k];
            identity_consensus=sum/(int32_t)consensus_count;
        }
        if(identity_best>best){
            second=best;best=identity_best;best_consensus=identity_consensus;
            best_person=person;best_index=identity_index;
        }else if(identity_best>second)second=identity_best;
    }
    if(best_person==TINYFACE_MATCH_UNKNOWN){
        memset(out,0,sizeof *out);out->person=TINYFACE_MATCH_UNKNOWN;
        return 0;
    }
    if(second==-32768)second=-32767;
    out->person=best_person;out->template_index=best_index;
    out->similarity=(uint32_t)(best+32768);
    out->second_similarity=(uint32_t)(second+32768);
    out->margin=(uint32_t)(best-second);
    /* Open-set recognition must reject a face that is merely close to the
       nearest identity.  In addition to the absolute per-identity radius,
       require the nearest identity to beat the runner-up by at least half
       of its own cosine distance.  This scales with each sample and avoids
       accepting an unregistered face that lies between two identities. */
    out->known=(best>=(int32_t)identity_min_similarity[best_person] &&
                (uint32_t)(best-second)>=min_margin &&
                (uint32_t)(best-second)*2U>=(uint32_t)(32767-best) &&
                best_consensus>=(int32_t)identity_consensus_min_similarity[best_person]);
    out->label=out->known?labels[best_person]:0U;
    return 0;
}

int tinyface_classify_enroll_one_shot(uint32_t person,uint32_t label,
                                      const int8_t *four_embeddings)
{
    return tinyface_classify_enroll_multi(person,label,four_embeddings,4U);
}

int tinyface_classify_enroll_multi(uint32_t person,uint32_t label,
                                   const int8_t *embeddings,uint32_t count)
{
    if(!initialized || person>=TINYFACE_MAX_IDENTITIES || label==0U || label>255U ||
       embeddings==0 || count==0U || count>TINYFACE_MAX_PROTOTYPES)return -591;
    memcpy(templates[person],embeddings,count*TINYFACE_EMBEDDING_SIZE);
    if(count<TINYFACE_MAX_PROTOTYPES)
        memset(templates[person][count],0,
               (TINYFACE_MAX_PROTOTYPES-count)*TINYFACE_EMBEDDING_SIZE);
    prototype_count[person]=count;labels[person]=label;
    update_identity_threshold(person);
    tinyface_classify_vote_reset(vote_required);
    return 0;
}

int tinyface_classify_remove(uint32_t person)
{
    if(!initialized || person>=TINYFACE_MAX_IDENTITIES)return -591;
    memset(templates[person],0,sizeof templates[person]);
    prototype_count[person]=0U;labels[person]=0U;identity_min_similarity[person]=min_similarity;
    identity_consensus_min_similarity[person]=min_similarity;
    tinyface_classify_vote_reset(vote_required);return 0;
}

int tinyface_classify_set_thresholds(uint32_t similarity,uint32_t margin)
{
    uint32_t person;
    if(!initialized || similarity>32767U || margin>65535U)return -591;
    min_similarity=similarity;min_margin=margin;
    for(person=0U;person<TINYFACE_MAX_IDENTITIES;++person)update_identity_threshold(person);
    return 0;
}

uint32_t tinyface_classify_label(uint32_t person)
{return person<TINYFACE_MAX_IDENTITIES?labels[person]:0U;}
uint32_t tinyface_classify_template_count(uint32_t person)
{return person<TINYFACE_MAX_IDENTITIES?prototype_count[person]:0U;}

int tinyface_classify_export_identity(uint32_t person,uint32_t *label,
                                      int8_t *features,uint32_t capacity,
                                      uint32_t *count)
{
    uint32_t n;
    if(!initialized || person>=TINYFACE_MAX_IDENTITIES || label==0 ||
       features==0 || count==0)return -591;
    n=prototype_count[person];if(n==0U || capacity<n)return -591;
    memcpy(features,templates[person],n*TINYFACE_EMBEDDING_SIZE);
    *label=labels[person];*count=n;return 0;
}

void tinyface_classify_vote_reset(uint32_t required_votes)
{
    vote_required=required_votes?required_votes:1U;
    vote_candidate=TINYFACE_MATCH_UNKNOWN;vote_count=0U;
}

uint32_t tinyface_classify_vote(uint32_t person)
{
    if(person==TINYFACE_MATCH_UNKNOWN){
        vote_candidate=TINYFACE_MATCH_UNKNOWN;vote_count=0U;return person;
    }
    if(person!=vote_candidate){vote_candidate=person;vote_count=1U;}
    else if(vote_count<vote_required)++vote_count;
    return vote_count>=vote_required?vote_candidate:TINYFACE_MATCH_UNKNOWN;
}
