#ifndef DISTANCE_STREAM_H
#define DISTANCE_STREAM_H
#include "distance_dma.h"
#define DISTANCE_STREAM_SIGNATURE 0x53540100U
#define DISTANCE_STREAM_QUERY     0x51525901U
#define DISTANCE_STREAM_BATCH     0x42415400U
typedef struct {
    uint32_t queries, batches, templates, error, stopped, selftest_passed;
    uint64_t query_bytes, template_bytes, elapsed_ticks;
} distance_stream_diagnostics;
extern volatile distance_stream_diagnostics g_distance_stream_diag;
/* One complete classification. Direct DMA from the existing gallery, no query
 * replication or per-bin pair packing. Query is uploaded exactly once. */
int distance_stream_match(void *context,const wp4_matcher_t *gallery,
                           const u16 *query,wp4_match_result_t *out);
int distance_stream_verify(distance_dma_io *io);
#endif

