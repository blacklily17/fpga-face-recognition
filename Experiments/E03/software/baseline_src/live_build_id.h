#ifndef LIVE_BUILD_ID_H
#define LIVE_BUILD_ID_H
#include "cnn_config.h"
#if C3_DETECTOR_CNN
#define LIVE_APPLICATION_BUILD_ID "AC880-CNN-C3-20261018"
#else
#define LIVE_APPLICATION_BUILD_ID "AC880-HAAR-C3-20261019"
#endif
#endif
