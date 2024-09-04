#include "extcode.h"
#ifdef __cplusplus
extern "C" {
#endif

/*!
 * ConfigureSine
 */
int32_t __cdecl ConfigureSine(double frequency, double amplitude, 
	double phaseDeg, uint32_t *refOut);
/*!
 * SetProperties
 */
int32_t __cdecl SetProperties(uint32_t RefIn, double sampleRate, 
	int64_t systemTimingModel, uint16_t profile, double rampUp, 
	double transition, double rampDown, uint32_t *refOut);
/*!
 * int32_t WaveformGen(uint32_t RefIn, int32_t samplesIn, LVBoolean reset, 
 * uint32_t *refOut, int32_t *waveform_state, int32_t *samplesOut, int32_t 
 * len, char dateString[], int32_t *dl, char timeString[], int32_t *tl, double 
 * *dt, double Y[])
 */
int32_t __cdecl WaveformGen(uint32_t RefIn, int32_t samplesIn, 
	LVBoolean reset, uint32_t *refOut, int32_t *waveform_state, 
	int32_t *samplesOut, int32_t len, char dateString[], int32_t *dl, 
	char timeString[], int32_t *tl, double *dt, double Y[]);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

void __cdecl SetExecuteVIsInPrivateExecutionSystem(Bool32 value);

#ifdef __cplusplus
} // extern "C"
#endif

