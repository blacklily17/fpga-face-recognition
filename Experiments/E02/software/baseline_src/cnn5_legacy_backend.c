#include "cnn5_legacy_backend.h"
#include <string.h>

int c5_legacy_backend_init(c5_legacy_backend_t *b, c5_legacy_adapter_t *a) {
    if (!b || !a || !c5_legacy_result(a)) return C5_BAD_ARG;
    if (a->active) return C5_BUSY;
    memset(b, 0, sizeof *b);
    b->adapter = a;
    return C5_OK;
}

void c5_legacy_backend_ops(c5_legacy_backend_t *b, c5_scheduler_ops_t *ops) {
    if (!b || !ops) return;
    ops->backend_context = b;
    ops->capabilities = C5_CAP_VERIFY;
    ops->backend_begin = c5_legacy_backend_begin;
    ops->backend_poll = c5_legacy_backend_poll;
    ops->backend_cancel = c5_legacy_backend_cancel;
    ops->backend_safe = c5_legacy_backend_safe;
}

int c5_legacy_backend_begin(void *context, const c5_job_t *job) {
    c5_legacy_backend_t *b = context;
    c5_legacy_job_t legacy;
    int rc;
    if (!b || !b->adapter || !job) return C5_BAD_ARG;
    if (job->mode != C5_OBSERVE && job->mode != C5_FILTER) return C5_UNSUPPORTED;
    if (!job->generation || job->frame.has_haar != 1) return C5_BAD_ARG;
    if (b->have_job) return C5_BUSY;
    memset(&legacy, 0, sizeof legacy);
    legacy.ticket = job->ticket;
    legacy.model_id = b->adapter->model_id;
    legacy.kind = C5_LEGACY_CROP32;
    legacy.source = job->frame.source;
    legacy.box = job->frame.haar;
    rc = c5_legacy_begin(b->adapter, &legacy, job->frame.gray, job->frame.gray_bytes);
    if (rc == C5_OK) {
        b->job = *job;
        b->have_job = 1;
    }
    return rc;
}

int c5_legacy_backend_poll(void *context, c5_result_t *result) {
    c5_legacy_backend_t *b = context;
    const c5_legacy_result_t *legacy;
    int rc;
    if (!b || !b->adapter || !result) return C5_BAD_ARG;
    memset(result, 0, sizeof *result);
    /* Also advances the driver's initial RESETTING with no scheduler job. */
    rc = c5_legacy_step(b->adapter);
    if (!b->have_job || rc == C5_PENDING) return C5_PENDING;
    b->have_job = 0; /* Report any terminal event exactly once. */
    result->ticket = b->job.ticket;
    result->generation = b->job.generation;
    result->source = b->job.frame.source;
    result->status = rc;
    if (rc != C5_OK) return rc;
    legacy = c5_legacy_result(b->adapter);
    if (!legacy || !legacy->valid || legacy->status != C5_OK ||
        legacy->job.ticket != b->job.ticket ||
        legacy->job.model_id != b->adapter->model_id) {
        result->status = C5_FAULT;
        return C5_FAULT;
    }
    result->valid = 1;
    result->ticket = legacy->job.ticket;
    result->source = legacy->job.source;
    result->margin = legacy->margin;
    /* Verifier never invents a location; the scheduler gates its Haar box. */
    result->has_box = 0;
    return C5_OK;
}

void c5_legacy_backend_cancel(void *context) {
    c5_legacy_backend_t *b = context;
    if (!b || !b->adapter) return;
    b->have_job = 0;
    c5_legacy_cancel(b->adapter);
}

int c5_legacy_backend_safe(void *context) {
    c5_legacy_backend_t *b = context;
    if (!b || !b->adapter || !c5_legacy_result(b->adapter)) return C5_FAULT;
    if (c5_legacy_locked(b->adapter)) return C5_LOCKED;
    return !b->have_job && c5_legacy_safe(b->adapter) ? C5_OK : C5_PENDING;
}
