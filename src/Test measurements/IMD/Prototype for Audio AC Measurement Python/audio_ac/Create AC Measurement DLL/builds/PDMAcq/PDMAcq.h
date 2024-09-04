#include "extcode.h"
#ifdef __cplusplus
extern "C" {
#endif
typedef struct {
	double BandStart;
	double BandStop;
	double Amplitude;
	double Frequency;
	double FullScaleRange;
	uint32_t DataLine;
	uint32_t SampleRate;
	double MeasurementDuration;
	uint32_t Channel;
	uint32_t FrameSyncEdgeForChannel_0;
	uint32_t ChannelCountPerFrame;
	uint32_t ChannelLength;
	uint32_t BitDepth;
	uint32_t Channel_0_offset;
	uint32_t Endianness;
	uint32_t DataJustification;
	uint32_t FrameSyncPulseWidth;
	uint32_t BitClockEdgeSync;
	uint32_t ClockRate;
	uint32_t FrameLength;
	uint32_t NumberOfWords;
	double Sensitivity;
} MeasurementConfiguration;
typedef struct {
	double CalculatedFrequency;
	double CalculatedAmplitude;
	double SNR;
	double THDN;
	double THD;
	double DynamicRange;
	double GainError;
	double SFDR;
	double t0;
	double dt;
	double f0;
	double df;
} MeasurementResults;

/*!
 * GetDAQmxProductName
 */
void __cdecl GetDAQmxProductName(char DAQmxResourceName[], 
	char DAQmxProductType[], int32_t len);
/*!
 * InitializePDMAcquisition
 */
int32_t __cdecl InitializePDMAcquisition(
	MeasurementConfiguration *MeasurementConfiguration, 
	char ProtocolCaptureResourceName[], uint32_t *ObjRefOut);
/*!
 * AcquirePDMWaveform
 */
int32_t __cdecl AcquirePDMWaveform(uint32_t ObjRefIn, double *dt, double Y[], 
	int32_t len);
/*!
 * PerformMeasurement
 */
int32_t __cdecl PerformMeasurement(char WeightingFilter[], double dt, 
	double Y[], MeasurementConfiguration *MeasurementConfiguration, 
	MeasurementResults *MeasurementResults, double Spectrum[], 
	double TimeDomain[], int32_t len, int32_t len2, int32_t len3);

MgErr __cdecl LVDLLStatus(char *errStr, int errStrLen, void *module);

void __cdecl SetExecuteVIsInPrivateExecutionSystem(Bool32 value);

#ifdef __cplusplus
} // extern "C"
#endif

