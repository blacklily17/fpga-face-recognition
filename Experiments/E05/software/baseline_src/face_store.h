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

/* CNN database v2 keeps one logical identity with independent PS/PL template
 * banks. Mutations are staged and committed atomically by face_store_save(). */
#define FACE_STORE_CNN_BANK_PS 1U
#define FACE_STORE_CNN_BANK_PL 2U
int face_store_stage_active_identity(uint32_t slot);
int face_store_stage_cnn_bank(uint32_t bank,uint32_t slot,uint32_t label,
                              const int8_t *features,uint32_t count);
int face_store_stage_delete_identity(uint32_t slot);

#endif
