#ifndef FACE_STORE_H
#define FACE_STORE_H

#include <stdint.h>

/* Return values from face_store_load(): 1=primary, 2=backup, 0=no valid DB,
 * negative=media/format error.  Saving returns 0 on durable success. */
int face_store_load(void);
int face_store_save(void);
uint32_t face_store_generation(void);
/* Safe-point hook: video maintenance + recording touch/cancel only. MUST NOT
 * re-enter UI steps, algorithms, gallery mutation or FATFS. A transaction is
 * still atomic; a pending cancel takes effect only after its durable boundary.
 * Individual card/BSP calls may block; target gap remains an acceptance gate. */
void face_store_bind_service(void (*service)(void *),void *context);

#endif
