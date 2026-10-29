#ifndef CNN5_LEGACY_BACKEND_H
#define CNN5_LEGACY_BACKEND_H
#include "cnn5_legacy_adapter.h"
#include "cnn5_scheduler.h"

/* Exclusive bridge from the portable scheduler to the unchanged crop driver.
 * Full-frame detection is deliberately absent from its capabilities.
 */
typedef struct {
    c5_legacy_adapter_t *adapter;
    c5_job_t job;
    int have_job;
} c5_legacy_backend_t;

int c5_legacy_backend_init(c5_legacy_backend_t *, c5_legacy_adapter_t *);
/* Fills only backend fields/capabilities; mailbox fields remain caller-owned. */
void c5_legacy_backend_ops(c5_legacy_backend_t *, c5_scheduler_ops_t *);
int c5_legacy_backend_begin(void *, const c5_job_t *);
int c5_legacy_backend_poll(void *, c5_result_t *);
void c5_legacy_backend_cancel(void *);
int c5_legacy_backend_safe(void *);

#endif
