#include "wp4_face_matcher.h"

#include <string.h>

#define WP4_DISTANCE_SCALE 1024U
#define WP4_ROI_SIZE       128U

void wp4_matcher_init(wp4_matcher_t *matcher, u32 identity_count,
                      u32 max_distance, u32 min_margin)
{
    memset(matcher, 0, sizeof(*matcher));
    matcher->identity_count =
        (identity_count <= WP4_MATCH_MAX_IDENTITIES) ? identity_count : 0U;
    matcher->max_distance = max_distance;
    matcher->min_margin = min_margin;
}

int wp4_matcher_enroll(wp4_matcher_t *matcher, u32 identity,
                       const u16 *features, u32 prototype_count)
{
    u32 bytes;
    if (identity >= matcher->identity_count || prototype_count == 0U ||
        prototype_count > WP4_MATCH_MAX_PROTOTYPES || features == 0)
        return -1;
    bytes = prototype_count * WP4_MATCH_FEATURE_COUNT * sizeof(u16);
    memcpy(&matcher->templates[identity][0][0], features, bytes);
    matcher->prototype_count[identity] = prototype_count;
    return 0;
}

int wp4_matcher_enroll_one_shot(wp4_matcher_t *matcher, u32 identity,
                                const u16 *four_view_features)
{
    return wp4_matcher_enroll(matcher, identity, four_view_features, 4U);
}

wp4_enrollment_view_t wp4_enrollment_view(u32 view_index)
{
    static const wp4_enrollment_view_t views[4] = {
        {128U, 0U}, {112U, 0U}, {96U, 0U}, {128U, 1U}
    };
    wp4_enrollment_view_t invalid = {0U, 0U};
    return (view_index < 4U) ? views[view_index] : invalid;
}

u32 wp4_match_distance(const u16 *left, const u16 *right)
{
    u64 total = 0U;
    u32 index;
    for (index = 0U; index < WP4_MATCH_FEATURE_COUNT; ++index) {
        u32 denominator = (u32)left[index] + (u32)right[index];
        if (denominator != 0U) {
            s32 difference = (s32)left[index] - (s32)right[index];
            u32 square = (u32)(difference * difference);
            total += ((u64)square * WP4_DISTANCE_SCALE) / denominator;
        }
    }
    return (total > 0xFFFFFFFFULL) ? 0xFFFFFFFFU : (u32)total;
}

int wp4_matcher_match_backend(const wp4_matcher_t *matcher, const u16 *feature,
                              wp4_distance_backend_t backend, void *context,
                              wp4_match_result_t *out)
{
    wp4_match_result_t result;
    u32 identity;
    result.identity = WP4_MATCH_UNKNOWN;
    result.best_distance = 0xFFFFFFFFU;
    result.second_distance = 0xFFFFFFFFU;
    result.margin = 0U;
    result.accepted = 0U;

    if (!matcher || !feature || !out ||
        matcher->identity_count > WP4_MATCH_MAX_IDENTITIES) return -1;

    for (identity = 0U; identity < matcher->identity_count; ++identity) {
        u32 prototype;
        u32 identity_distance = 0xFFFFFFFFU;
        if (matcher->prototype_count[identity] > WP4_MATCH_MAX_PROTOTYPES)
            return -1;
        for (prototype = 0U; prototype < matcher->prototype_count[identity];
             ++prototype) {
            u32 value;
            if (backend) {
                int rc = backend(context, feature,
                    matcher->templates[identity][prototype], &value);
                if (rc) return rc;
            } else {
                value = wp4_match_distance(
                    feature, matcher->templates[identity][prototype]);
            }
            if (value < identity_distance)
                identity_distance = value;
        }
        if (identity_distance < result.best_distance) {
            result.second_distance = result.best_distance;
            result.best_distance = identity_distance;
            result.identity = identity;
        } else if (identity_distance < result.second_distance) {
            result.second_distance = identity_distance;
        }
    }

    if (result.second_distance >= result.best_distance)
        result.margin = result.second_distance - result.best_distance;
    if (result.identity != WP4_MATCH_UNKNOWN &&
        (matcher->max_distance == 0U ||
         result.best_distance <= matcher->max_distance) &&
        result.margin >= matcher->min_margin) {
        result.accepted = 1U;
    }
    *out = result;
    return 0;
}

wp4_match_result_t wp4_matcher_match(const wp4_matcher_t *matcher,
                                     const u16 *feature)
{
    wp4_match_result_t result;
    memset(&result, 0, sizeof(result));
    result.identity = WP4_MATCH_UNKNOWN;
    result.best_distance = result.second_distance = 0xFFFFFFFFU;
    (void)wp4_matcher_match_backend(matcher, feature, 0, 0, &result);
    return result;
}

void wp4_match_voter_init(wp4_match_voter_t *voter, u32 required_votes)
{
    u32 index;
    for (index = 0U; index < WP4_MATCH_VOTE_WINDOW; ++index)
        voter->history[index] = WP4_MATCH_UNKNOWN;
    voter->next_index = 0U;
    voter->sample_count = 0U;
    voter->required_votes =
        (required_votes >= 1U && required_votes <= WP4_MATCH_VOTE_WINDOW)
        ? required_votes : 3U;
    voter->stable_identity = WP4_MATCH_UNKNOWN;
}

u32 wp4_match_voter_update(wp4_match_voter_t *voter, u32 candidate_identity)
{
    u32 identity;
    u32 best_identity = WP4_MATCH_UNKNOWN;
    u32 best_votes = 0U;
    voter->history[voter->next_index] = candidate_identity;
    voter->next_index = (voter->next_index + 1U) % WP4_MATCH_VOTE_WINDOW;
    if (voter->sample_count < WP4_MATCH_VOTE_WINDOW)
        ++voter->sample_count;

    for (identity = 0U; identity < WP4_MATCH_MAX_IDENTITIES; ++identity) {
        u32 index;
        u32 votes = 0U;
        for (index = 0U; index < voter->sample_count; ++index)
            votes += (voter->history[index] == identity) ? 1U : 0U;
        if (votes > best_votes) {
            best_votes = votes;
            best_identity = identity;
        }
    }
    if (best_votes >= voter->required_votes)
        voter->stable_identity = best_identity;
    else if (candidate_identity == WP4_MATCH_UNKNOWN)
        voter->stable_identity = WP4_MATCH_UNKNOWN;
    return voter->stable_identity;
}

wp4_roi_quality_t wp4_check_roi_quality(const u8 *roi,
                                        u32 minimum_mean,
                                        u32 maximum_mean,
                                        u32 minimum_gradient)
{
    wp4_roi_quality_t quality;
    u32 sum = 0U;
    u32 gradient = 0U;
    u32 index;
    quality.minimum = 255U;
    quality.maximum = 0U;
    for (index = 0U; index < WP4_ROI_SIZE * WP4_ROI_SIZE; ++index) {
        u32 value = roi[index];
        sum += value;
        if (value < quality.minimum)
            quality.minimum = value;
        if (value > quality.maximum)
            quality.maximum = value;
        if ((index & (WP4_ROI_SIZE - 1U)) != 0U) {
            u32 left = roi[index - 1U];
            gradient += (value >= left) ? (value - left) : (left - value);
        }
        if (index >= WP4_ROI_SIZE) {
            u32 above = roi[index - WP4_ROI_SIZE];
            gradient += (value >= above) ? (value - above) : (above - value);
        }
    }
    quality.mean = sum / (WP4_ROI_SIZE * WP4_ROI_SIZE);
    quality.mean_gradient = gradient /
        (2U * WP4_ROI_SIZE * (WP4_ROI_SIZE - 1U));
    quality.accepted = (quality.mean >= minimum_mean) &&
                       (quality.mean <= maximum_mean) &&
                       (quality.mean_gradient >= minimum_gradient);
    return quality;
}
