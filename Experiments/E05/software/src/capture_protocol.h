#ifndef CAPTURE_PROTOCOL_H
#define CAPTURE_PROTOCOL_H
#include <stdint.h>
#define CAPTURE_HEADER_MAGIC UINT32_C(0x31504143)
#define CAPTURE_COMMAND_MAGIC UINT32_C(0x31444D43)
#define CAPTURE_BOOT_MAGIC UINT32_C(0x31544F42)
#define CAPTURE_VERSION 1u
#define CAPTURE_RAW_ADDR UINT32_C(0x11000000)
#define CAPTURE_DISPLAY_ADDR UINT32_C(0x11100000)
#define CAPTURE_RGB_BYTES 768000u
#define CAPTURE_WIDTH 800u
#define CAPTURE_HEIGHT 480u
typedef struct { uint32_t word[32]; } capture_header;
/* word[17]: primary signed error. word[18]: secondary signed error-screen
 * failure in CAMERA_ERROR only; zero in every other state. word[19..31]: zero.
 * SAVING export validation still requires ALL word[18..31] to be zero. */
typedef struct { uint32_t word[16]; } capture_command;
typedef struct { uint32_t word[16]; } capture_bootstrap;
enum capture_state { CAP_LIVE, CAP_CAPTURING, CAP_FROZEN, CAP_SAVING, CAP_SAVE_ERROR, CAP_CAMERA_ERROR };
enum capture_action { CAP_NONE=0, CAP_TAKE=1, CAP_DROP=2, CAP_SAVE=4, CAP_RESUME=8, CAP_RECOVER=16 };
#endif
