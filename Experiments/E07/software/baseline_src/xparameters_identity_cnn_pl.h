#ifndef XPARAMETERS_IDENTITY_CNN_PL_H
#define XPARAMETERS_IDENTITY_CNN_PL_H

/* Consume the actual hardware-generated BSP. Never fill missing identity
 * peripherals using a planned map from another bitstream. */
#include "xparameters.h"
#if !defined(XPAR_IDCNN_DMA_BASEADDR) || !defined(XPAR_IDCNN_DMA_HIGHADDR) || \
    !defined(XPAR_IDCNN_CONTROL_BASEADDR) || !defined(XPAR_IDCNN_CONTROL_HIGHADDR)
#error "E07 requires a matching identity CNN hardware BSP"
#elif XPAR_IDCNN_DMA_BASEADDR != 0x40430000U || XPAR_IDCNN_DMA_HIGHADDR != 0x4043FFFFU || \
      XPAR_IDCNN_CONTROL_BASEADDR != 0x41290000U || XPAR_IDCNN_CONTROL_HIGHADDR != 0x4129FFFFU
#error "E07 identity CNN BSP address map mismatch"
#endif

#endif
