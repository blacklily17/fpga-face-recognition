#ifndef LOGIN_JOURNAL_H
#define LOGIN_JOURNAL_H
#include <stdint.h>
#include "ui_control.h"
#define LOGIN_JOURNAL_CAPACITY 128U
typedef struct {
 uint32_t header[16];
 uint32_t record[LOGIN_JOURNAL_CAPACITY][16];
} login_journal;
extern volatile login_journal g_login_journal;
void login_journal_init(void);
void login_journal_begin(void);
void login_journal_observe(const ui_control *u);
void login_journal_cancel(void);
#endif
