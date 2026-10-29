#include "wp4_classify.h"

#include <string.h>

static wp4_matcher_t matcher;
static wp4_match_voter_t voter;
static uint32_t identity_labels[WP4_MATCH_MAX_IDENTITIES];
static int initialized;
static wp4_distance_backend_t distance_backend;
static wp4_gallery_backend_t gallery_backend;
static void *distance_context;

void wp4_classify_set_distance_backend(wp4_distance_backend_t backend,
                                      void *context)
{
    distance_backend = backend;
    distance_context = context;
}
void wp4_classify_set_gallery_backend(wp4_gallery_backend_t backend,
                                      void *context)
{
    gallery_backend=backend;
    distance_context=context;
}

int wp4_classify_init(void)
{
    initialized = 0;
    wp4_matcher_init(&matcher, WP4_MATCH_MAX_IDENTITIES,
                     WP4_DEFAULT_MAX_DISTANCE, WP4_DEFAULT_MIN_MARGIN);
    memset(identity_labels, 0, sizeof(identity_labels));
    /* Public release starts empty. Enroll locally or load an authorized SD database. */
    wp4_match_voter_init(&voter, 1U);
    initialized = 1;
    return 0;
}

int wp4_classify(const uint16_t *hist, wp4_match *out)
{
    wp4_match_result_t result;
    int rc;
    if (!initialized || hist == 0 || out == 0)
        return -1;
    rc = gallery_backend ? gallery_backend(distance_context,&matcher,hist,&result) :
         wp4_matcher_match_backend(&matcher,hist,distance_backend,
                                   distance_context,&result);
    if (rc) return rc;
    out->known = result.accepted;
    out->person = result.identity;
    out->label = result.accepted ? wp4_classify_label(result.identity) : 0U;
    out->template_index = 0U;
    out->distance = result.best_distance;
    out->second_distance = result.second_distance;
    out->margin = result.margin;
    return 0;
}

int wp4_classify_enroll_one_shot(uint32_t person, uint32_t label,
                                 const uint16_t *four_view_features)
{
    return wp4_classify_enroll_multi(person, label, four_view_features, 4U);
}

int wp4_classify_enroll_multi(uint32_t person, uint32_t label,
                              const uint16_t *features,
                              uint32_t prototype_count)
{
    if (!initialized || person >= WP4_MATCH_MAX_IDENTITIES || label == 0U ||
        label > 255U || features == 0 || prototype_count == 0U ||
        prototype_count > WP4_MATCH_MAX_PROTOTYPES)
        return -1;
    if (wp4_matcher_enroll(&matcher, person, features, prototype_count) != 0)
        return -1;
    identity_labels[person] = label;
    wp4_match_voter_init(&voter, voter.required_votes);
    return 0;
}

uint32_t wp4_classify_template_count(uint32_t person)
{
    return (initialized && person < WP4_MATCH_MAX_IDENTITIES)
        ? matcher.prototype_count[person] : 0U;
}

int wp4_classify_export_identity(uint32_t person, uint32_t *label,
                                 uint16_t *features, uint32_t capacity,
                                 uint32_t *prototype_count)
{
    uint32_t count;
    if(!initialized || person>=WP4_MATCH_MAX_IDENTITIES || label==0 ||
       features==0 || prototype_count==0)
        return -1;
    count=matcher.prototype_count[person];
    if(count==0U || capacity<count)
        return -1;
    memcpy(features,&matcher.templates[person][0][0],
           count*WP4_MATCH_FEATURE_COUNT*sizeof(uint16_t));
    *label=identity_labels[person];
    *prototype_count=count;
    return 0;
}

int wp4_classify_remove(uint32_t person)
{
    if (!initialized || person >= WP4_MATCH_MAX_IDENTITIES)
        return -1;
    matcher.prototype_count[person] = 0U;
    identity_labels[person] = 0U;
    wp4_match_voter_init(&voter, voter.required_votes);
    return 0;
}

int wp4_classify_set_thresholds(uint32_t max_distance, uint32_t min_margin)
{
    if (!initialized)
        return -1;
    matcher.max_distance = max_distance;
    matcher.min_margin = min_margin;
    return 0;
}

uint32_t wp4_classify_label(uint32_t person)
{
    return (person < WP4_MATCH_MAX_IDENTITIES) ? identity_labels[person] : 0U;
}

void wp4_classify_vote_reset(uint32_t required_votes)
{
    wp4_match_voter_init(&voter, required_votes);
}

uint32_t wp4_classify_vote(uint32_t person)
{
    return wp4_match_voter_update(&voter, person);
}
