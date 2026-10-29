#ifndef CNN5_SCHEDULER_H
#define CNN5_SCHEDULER_H
#include "cnn5_types.h"

#define C5_CAP_VERIFY 1u
#define C5_CAP_DETECT 2u
typedef struct {
    c5_source_t source;
    const uint8_t *gray;
    size_t gray_bytes;
    int has_haar;
    c5_box_t haar;
} c5_frame_t;
typedef struct {
    uint64_t ticket,generation;
    c5_mode_t mode;
    c5_frame_t frame;
} c5_job_t;
typedef struct {
    int valid,status,has_box;
    uint64_t ticket,generation;
    c5_source_t source;
    int64_t margin;
    c5_box_t box;
} c5_result_t;
typedef struct {
    uint64_t sequence,generation;
    c5_source_t source;
    c5_box_t box;
    int has_source,has_box,is_barrier;
    c5_mode_t mode;
} c5_publication_t;
typedef struct { uint64_t sequence,generation; } c5_ack_t;

/* Every callback must return promptly. The core itself never waits in a loop.
 * A submitted frame's gray storage must stay immutable until backend_safe=OK.
 * backend_poll: OK+valid=1 means terminal result; PENDING+valid=0 means no
 * result; a negative code+valid=0 means error. Cancellation drains without
 * returning an old result. Buffer release is governed by backend_safe only.
 * mailbox_submit accepts one message; mailbox_poll returns matching applied ACK.
 * Physical display TTL/epoch rejection is an endpoint requirement, not something
 * software can guarantee retroactively by rejecting a late ACK. */
typedef struct {
    void *backend_context;
    uint32_t capabilities;
    int (*backend_begin)(void *,const c5_job_t *);
    int (*backend_poll)(void *,c5_result_t *);
    void (*backend_cancel)(void *);
    int (*backend_safe)(void *); /* OK=safe, PENDING=owned, LOCKED=quarantined */
    void *mailbox_context;
    int (*mailbox_submit)(void *,const c5_publication_t *);
    int (*mailbox_poll)(void *,c5_ack_t *);
} c5_scheduler_ops_t;
typedef struct {
    uint64_t source_ttl_ticks; /* e.g. 100000000 at 100 MHz */
    uint64_t job_timeout_us,ack_timeout_us;
    int64_t verifier_threshold;
} c5_scheduler_config_t;
typedef struct {
    uint32_t accepted,rejected,completed,cancelled,errors,stale,ack_mismatch,applied;
} c5_scheduler_counts_t;
typedef struct {
    c5_scheduler_ops_t ops;
    c5_scheduler_config_t config;
    c5_mode_t mode,requested_mode;
    uint32_t epoch,last_request,last_frame;
    uint64_t generation,next_ticket,next_sequence,now_us,source_now_ticks;
    uint64_t job_started_us,mailbox_started_us;
    c5_job_t job;
    c5_publication_t queued,inflight,displayed;
    c5_scheduler_counts_t counts;
    int foreground,barrier,have_request,job_active,cancelling;
    int queued_valid,inflight_valid,displayed_valid,have_source,have_time;
    int blocked;
} c5_scheduler_t;

int c5_scheduler_init(c5_scheduler_t *,const c5_scheduler_ops_t *,const c5_scheduler_config_t *,uint32_t epoch);
int c5_scheduler_mode(c5_scheduler_t *,c5_mode_t);
/* OK means the request was accepted, not that the front end already owns the
 * mailbox/buffers. Wait for !barrier and a safe backend before front-end access;
 * LOCKED buffers stay quarantined even when Haar can continue separately. */
int c5_scheduler_foreground(c5_scheduler_t *,int active);
int c5_scheduler_epoch(c5_scheduler_t *,uint32_t epoch);
int c5_scheduler_begin(c5_scheduler_t *,const c5_frame_t *);
int c5_scheduler_step(c5_scheduler_t *,uint64_t ps_now_us,uint64_t pl_now_ticks);
int c5_source_fresh(const c5_source_t *,uint32_t epoch,uint64_t now_ticks,uint64_t ttl_ticks);
#endif
