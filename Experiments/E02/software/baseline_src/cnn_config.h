#ifndef CNN_CONFIG_H
#define CNN_CONFIG_H
#ifndef E02_FIXED_INPUT
#define E02_FIXED_INPUT 0
#endif
#if E02_FIXED_INPUT != 0 && E02_FIXED_INPUT != 1
#error E02_FIXED_INPUT must be explicitly 0 or 1
#endif
#ifndef E02_PS_DETECTOR
#define E02_PS_DETECTOR 0
#endif
#if E02_PS_DETECTOR != 0 && E02_PS_DETECTOR != 1
#error E02_PS_DETECTOR must be explicitly 0 or 1
#endif
#ifndef C3_DETECTOR_CNN
#define C3_DETECTOR_CNN (!E02_PS_DETECTOR)
#endif
#if C3_DETECTOR_CNN != 0 && C3_DETECTOR_CNN != 1
#error C3_DETECTOR_CNN must be explicitly 0 or 1
#endif
#if E02_PS_DETECTOR && C3_DETECTOR_CNN
#error E02 PS detector cannot also select the C3 PL detector
#endif
#if E02_PS_DETECTOR && defined(LIVE_USE_CNN)
#error E02 uses the unchanged LBP recognizer, not identity CNN
#endif
#define LIVE_DETECTOR_CNN (E02_PS_DETECTOR || C3_DETECTOR_CNN)
#if E02_FIXED_INPUT && !E02_PS_DETECTOR
#error Fixed-input application requires explicit E02 PS selection
#endif
#endif
