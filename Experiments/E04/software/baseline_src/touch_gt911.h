#ifndef TOUCH_GT911_H
#define TOUCH_GT911_H
#include <stdint.h>
enum touch_result { TOUCH_IDLE=0, TOUCH_FRAME=1, TOUCH_EINVAL=-610,
    TOUCH_ENOINIT=-611, TOUCH_EGPIO=-612, TOUCH_EBUS=-613,
    TOUCH_ETIMEOUT=-614, TOUCH_ENACK=-615, TOUCH_EDEVICE=-616,
    TOUCH_ECOORD=-617 };
typedef struct {
    uint32_t stage, phase, address, product_id, geometry, bus_pins;
    uint32_t status, raw_x, raw_y, isr, hw_status, frames, errors, timeouts;
    int last_error;
    /* Most recent driver failure; not cleared by success/reinitialization.
     * A later failure (including a recovery probe) replaces this evidence.
     */
    int last_transfer_error;
} touch_diagnostics;
extern volatile touch_diagnostics touch_debug;
/* Init may block for bounded probe/reset/recovery only. PS I2C0 dedicated.
 * Verified MIO50/51 LVCMOS18 (0x1240), INT MIO0, RST EMIO0 (GPIO54).
 * Does not configure EMIO1/LED or whole GPIO banks; caller owns those.
 */
int touch_init(void);
/* Starts a scan at most every 10ms; rate-limited calls return immediately.
 * A due scan drains status/point/ack synchronously without sleeps (~1-2ms at
 * 100kHz normally), bounded to 20ms per phase and 60ms for the entire call.
 * Returns with no software transaction pending and controller HOLD cleared;
 * successful transfers also wait for STOP/bus-idle. Safe before UI/Haar work.
 * 1 = new acknowledged controller frame; 0 = rate-limited/no ready frame.
 * Outputs always
 * hold last acknowledged contact; negative errors force pressed=0. Do not
 * treat return=0 as release. Coordinates are native 800x480.
 */
int touch_poll(int *x, int *y, int *pressed);
#endif
