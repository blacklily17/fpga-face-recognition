/* E05: require addresses emitted by the matching regenerated BSP. */
#ifndef XPARAMETERS_CNN_PL_H
#define XPARAMETERS_CNN_PL_H
#include "xparameters.h"
#if !defined(XPAR_CNN_DMA_BASEADDR) || !defined(XPAR_CNN_CONTROL_BASEADDR)
#error Matching E05 CNN hardware BSP is required
#endif
#if XPAR_CNN_DMA_BASEADDR != 0x40420000U || XPAR_CNN_CONTROL_BASEADDR != 0x41270000U
#error E05 CNN BSP address contract changed
#endif
#endif
