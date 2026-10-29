#ifndef SLEEP_POLICY_H
#define SLEEP_POLICY_H
#include <stdint.h>
enum sleep_phase { SLEEP_ACTIVE=0,SLEEP_DRAIN,SLEEP_RATE_LOW,SLEEP_HDMI_OFF,
    SLEEP_MONITOR,SLEEP_RATE_HIGH,SLEEP_SETTLE,SLEEP_HDMI_ON,SLEEP_FAULT };
typedef struct {
    void *context;
    int (*drain)(void *);
    int (*rate)(void *,int slow);
    int (*hdmi)(void *,int off);
    void (*monitor)(void *,int enabled);
} sleep_ops;
typedef struct {
    unsigned busy,home,touch,presence,motion;
    uint32_t frames;
} sleep_input;
typedef struct {
    sleep_ops ops;
    enum sleep_phase phase;
    uint64_t idle_since,phase_since;
    uint32_t settle_frames,entries,wakes;
    unsigned enabled,force_sleep,wake_pending;
    int error;
    uint64_t started_ms,last_account_ms,active_ms,monitor_ms,transition_ms;
    uint32_t pending_reason,last_wake_reason;
} sleep_policy;
typedef struct {
    uint32_t magic,version,phase,enabled,entries,wakes;
    uint32_t motion_frames,motion_pixels,motion_events,monitor_frames;
    uint32_t camera_status,hdmi_off,command;
    int32_t error;
    uint64_t idle_ms;
    uint32_t source_fps_milli,source_frame_id,background_jobs;
    uint64_t active_ms,monitor_ms,transition_ms,uptime_ms,phase_age_ms;
    uint32_t last_wake_reason;
    uint32_t motion_guard;
} sleep_diagnostics;
extern volatile sleep_diagnostics g_sleep_diag;
void sleep_policy_init(sleep_policy *,const sleep_ops *,uint64_t now);
int sleep_policy_step(sleep_policy *,const sleep_input *,uint64_t now);
int sleep_policy_ready(const sleep_policy *);
#define SLEEP_IDLE_MS 10000U
#define SLEEP_TRANSITION_MS 3000U
#define SLEEP_SETTLE_MS 300U
#endif
