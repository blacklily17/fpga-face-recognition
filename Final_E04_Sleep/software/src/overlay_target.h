#ifndef OVERLAY_TARGET_H
#define OVERLAY_TARGET_H
#include "gray_snapshot_hw.h"
/* Target Device/XN MMU, memory barriers, exact generated BSP address checks and
 * bounded epoch/channel startup. Test boundary is MMIO, not a target stub. */
int overlay_target_init(gray_snapshot_hw_t *);
#endif
