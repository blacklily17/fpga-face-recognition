#ifndef CNN_CONFIG_H
#define CNN_CONFIG_H
#ifndef C3_DETECTOR_CNN
#define C3_DETECTOR_CNN 1
#endif
#if C3_DETECTOR_CNN != 0 && C3_DETECTOR_CNN != 1
#error C3_DETECTOR_CNN must be explicitly 0 or 1
#endif
#endif
