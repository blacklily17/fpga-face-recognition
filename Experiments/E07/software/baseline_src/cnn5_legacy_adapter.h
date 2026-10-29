#ifndef CNN5_LEGACY_ADAPTER_H
#define CNN5_LEGACY_ADAPTER_H

#include "cnn5_types.h"
#include "cnn_dma.h"
#include "cnn_reference.h"

/* This is the unchanged v1 crop verifier, NOT a full-frame/tile engine.
 * The caller owns an initialized driver and immutable model/buffers/IO for
 * the adapter's entire lifetime. Only this adapter may operate that driver.
 * model_id is a caller-supplied manifest identity, not a computed model hash.
 */
typedef enum {
    C5_LEGACY_CROP32 = 1, C5_LEGACY_FULL_FRAME = 2, C5_LEGACY_TILE = 3
} c5_legacy_kind_t;

typedef struct {
    uint64_t ticket; /* Nonzero, monotonically increasing software job ID. */
    uint32_t model_id;
    c5_legacy_kind_t kind;
    c5_source_t source;
    c5_box_t box; /* Half-open coordinates in the 400 x 240 source. */
} c5_legacy_job_t;

typedef struct {
    c5_legacy_job_t job;
    int valid, status, native_status, face;
    int64_t margin;
    uint64_t total_us;
    uint32_t layer_cycles[2];
} c5_legacy_result_t;

typedef struct {
    cnn_dma_t *driver;
    const cnn_model_t *bound_model;
    uint32_t model_id;
    uint64_t last_ticket;
    int active;
    c5_legacy_job_t job;
    c5_legacy_result_t result;
} c5_legacy_adapter_t;

/* No MMIO here. RESETTING is accepted and must subsequently be stepped.
 * Attach only once per exclusive driver lifetime; it never adopts a running
 * job or treats a preexisting DONE result as its own.
 */
int c5_legacy_attach(c5_legacy_adapter_t *, cnn_dma_t *, uint32_t model_id);
int c5_legacy_begin(c5_legacy_adapter_t *, const c5_legacy_job_t *,
                    const uint8_t *gray, size_t gray_bytes);
/* Bounded work, inherited from cnn_dma_step. Cancellation is C5_STALE.
 * A result is valid only after both v1 layers and the PS classifier finish.
 */
int c5_legacy_step(c5_legacy_adapter_t *);
void c5_legacy_cancel(c5_legacy_adapter_t *);
int c5_legacy_safe(const c5_legacy_adapter_t *);
int c5_legacy_locked(const c5_legacy_adapter_t *);
const c5_legacy_result_t *c5_legacy_result(const c5_legacy_adapter_t *);

#endif
