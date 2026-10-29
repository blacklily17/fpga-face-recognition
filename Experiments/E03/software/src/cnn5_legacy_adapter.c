#include "cnn5_legacy_adapter.h"
#include <string.h>

static int bound(const c5_legacy_adapter_t *a) {
    return a && a->driver && a->model_id && a->bound_model &&
           a->driver->model == a->bound_model;
}

static int mapped(int native_status) {
    switch (native_status) {
    case CNN_OK: return C5_OK;
    case 1: return C5_PENDING;
    case CNN_BAD_ARG: return C5_BAD_ARG;
    case CNN_CANCELLED: case CNN_STALE_JOB: return C5_STALE;
    case CNN_TIMEOUT: return C5_TIMEOUT;
    case CNN_RESET_FAILED: return C5_LOCKED;
    default: return C5_FAULT;
    }
}

int c5_legacy_attach(c5_legacy_adapter_t *a, cnn_dma_t *d, uint32_t model_id) {
    if (!a || !d || !model_id || !d->model || !d->buffers ||
        !d->io.read || !d->io.write || !d->io.clean || !d->io.invalidate ||
        !d->io.barrier || !d->io.now_us || !d->io.physical)
        return C5_BAD_ARG;
    if (!cnn_dma_safe(d) && d->phase != CNN_RESETTING && d->phase != CNN_LOCKED)
        return C5_BUSY;
    memset(a, 0, sizeof *a);
    a->driver = d;
    a->bound_model = d->model;
    a->model_id = model_id;
    return C5_OK;
}

int c5_legacy_begin(c5_legacy_adapter_t *a, const c5_legacy_job_t *job,
                    const uint8_t *gray, size_t gray_bytes) {
    int rc;
    if (!bound(a) || !job) return C5_BAD_ARG;
    /* Capability/model rejection is side-effect free even while busy. */
    if (job->kind != C5_LEGACY_CROP32 || job->model_id != a->model_id)
        return C5_UNSUPPORTED;
    if (!gray || gray_bytes != 96000u || !job->ticket ||
        job->box.x0 < 0 || job->box.y0 < 0 || job->box.x1 > 400 ||
        job->box.y1 > 240 || job->box.x0 >= job->box.x1 ||
        job->box.y0 >= job->box.y1) return C5_BAD_ARG;
    if (c5_legacy_locked(a)) return C5_LOCKED;
    if (a->active || !cnn_dma_safe(a->driver)) return C5_BUSY;
    if (a->last_ticket == UINT64_MAX) return C5_EXHAUSTED;
    if (job->ticket <= a->last_ticket) return C5_STALE;
    rc = cnn_dma_begin(a->driver, gray, job->box.x0, job->box.y0,
                       job->box.x1 - job->box.x0, job->box.y1 - job->box.y0);
    if (rc != CNN_OK) return rc == 1 ? C5_BUSY : mapped(rc);
    /* Store identity only after the driver accepts this input. A busy/rejected
     * begin cannot overwrite the source identity or the old result/buffer.
     */
    a->job = *job;
    a->last_ticket = job->ticket;
    a->active = 1;
    memset(&a->result, 0, sizeof a->result);
    a->result.job = *job;
    a->result.status = C5_PENDING;
    return C5_OK;
}

int c5_legacy_step(c5_legacy_adapter_t *a) {
    int rc, status;
    if (!bound(a)) return C5_BAD_ARG;
    rc = cnn_dma_step(a->driver);
    status = a->driver->phase == CNN_LOCKED ? C5_LOCKED : mapped(rc);
    if (rc == 1) return C5_PENDING;
    if (status == C5_LOCKED) {
        a->result.valid = 0;
        a->result.status = C5_LOCKED;
        a->result.native_status = rc;
    }
    if (!a->active) return status; /* Never adopt a late/unowned completion. */
    a->active = 0;
    a->result.job = a->job;
    a->result.native_status = rc;
    a->result.status = status;
    if (status == C5_OK && a->driver->phase == CNN_DONE && a->driver->result_valid) {
        a->result.valid = 1;
        a->result.margin = a->driver->margin;
        a->result.face = a->driver->face;
        a->result.total_us = a->driver->total_us;
        a->result.layer_cycles[0] = a->driver->layer_cycles[0];
        a->result.layer_cycles[1] = a->driver->layer_cycles[1];
    } else {
        a->result.valid = 0;
        if (status == C5_OK) a->result.status = status = C5_FAULT;
    }
    return status;
}

void c5_legacy_cancel(c5_legacy_adapter_t *a) {
    if (!bound(a)) return;
    a->active = 0;
    a->result.valid = 0;
    a->result.status = c5_legacy_locked(a) ? C5_LOCKED : C5_STALE;
    a->result.native_status = c5_legacy_locked(a) ? a->driver->status : CNN_CANCELLED;
    cnn_dma_cancel(a->driver);
}

int c5_legacy_safe(const c5_legacy_adapter_t *a) {
    return bound(a) && !a->active && cnn_dma_safe(a->driver);
}

int c5_legacy_locked(const c5_legacy_adapter_t *a) {
    return bound(a) && a->driver->phase == CNN_LOCKED;
}

const c5_legacy_result_t *c5_legacy_result(const c5_legacy_adapter_t *a) {
    return bound(a) ? &a->result : 0;
}
