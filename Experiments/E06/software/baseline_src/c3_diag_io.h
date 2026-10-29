#ifndef C3_DIAG_IO_H
#define C3_DIAG_IO_H
#include <stddef.h>
typedef struct {
    void *context;
    void (*clean)(void *,const void *,size_t);
    void (*barrier)(void *);
} c3_diag_io_t;
#endif
