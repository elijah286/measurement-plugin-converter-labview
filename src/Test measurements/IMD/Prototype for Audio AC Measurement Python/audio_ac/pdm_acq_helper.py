from ctypes import *
import ctypes
from enum import Enum


class MeasurementConfiguration(Structure):
    _fields_ = [
                ("BandStart", c_double),
                ("BandStop", c_double),
                ("Amplitude", c_double),
                ("Frequency", c_double),
                ("FullScaleRange", c_double ),
                ("DataLine", c_uint32),
                ("SampleRate", c_uint32),
                ("MeasurementDuration", c_double),
                ("Channel", c_uint32),
                ("FrameSyncEdgeForChannel_0", c_uint32),
                ("ChannelCountPerFrame", c_uint32),
                ("ChannelLength", c_uint32),
                ("BitDepth", c_uint32),
                ("Channel_0_offset", c_uint32),
                ("Endianness", c_uint32),
                ("DataJustification", c_uint32),
                ("FrameSyncPulseWidth", c_uint32),
                ("BitClockEdgeSync", c_uint32),
                ("ClockRate", c_uint32),
                ("FrameLength", c_uint32),
                ("NumberOfWords", c_uint32),
                ("Sensitivity", c_double),
                ]


class MeasurementResults(Structure):
    _fields_ = [
                ("CalculatedFrequency", c_double),
                ("CalculatedAmplitude", c_double),
                ("SNR", c_double),
                ("THDN", c_double),
                ("THD", c_double ),
                ("DynamicRange", c_double),
                ("GainError", c_double),
                ("SFDR", c_double),
                ("t0", c_double),
                ("dt", c_double),
                ("f0", c_double),
                ("df", c_double),
                ]


def load_dll(path):
    global dll_handle
    dll_handle = CDLL(path)
    print(dll_handle)
    return




def getProduct(analog_resource_name):
        # void __cdecl GetDAQmxProductName(char DAQmxResourceName[], 
	    #   char DAQmxProductType[], int32_t len);
        dll_handle.GetDAQmxProductName.argtypes=[
        c_char_p,
        c_char_p,
        c_int32
        ]
        dll_handle.GetDAQmxProductName.restype=c_void_p
        dname1 = bytes(analog_resource_name, 'utf-8')
        dp= create_string_buffer(dname1)

        #outputs
        stro=create_string_buffer(30)
        length = c_int32(30)

        dll_handle.GetDAQmxProductName(
            dp,
            stro,
            length
        )
        ans=str(stro.value,'UTF-8')

        return ans





# Initialize PDM Acquisition

def initialize_pdm_task(measurement_config_cluster_datatype, measurement_config_cluster_ptr, protocol_capture_resource_name):
    # int32_t __cdecl InitializePDMAcquisition(
	# MeasurementConfiguration *MeasurementConfiguration, 
	# char ProtocolCaptureResourceName[], uint32_t *ObjRefOut);

    Protocol_capture_resource_name=bytes(protocol_capture_resource_name, 'utf-8')
    Protocol_capture_resource_name=create_string_buffer(Protocol_capture_resource_name)
   
    pdm_task_ref = ctypes.c_uint32()

    dll_handle.InitializePDMAcquisition.argtypes=[measurement_config_cluster_datatype, c_char_p, POINTER(ctypes.c_uint32)]
    dll_handle.InitializePDMAcquisition.restype = c_int32
    error_out = dll_handle.InitializePDMAcquisition(measurement_config_cluster_ptr, Protocol_capture_resource_name, byref(pdm_task_ref))

    # print("PDM task Initialized: ", pdm_task_ref, "     Error: ",error_out)
    return pdm_task_ref, error_out


# Acquire PDM input Waveform

def acquire_pdm_waveform(task_ref, samples_in):
    # int32_t __cdecl AcquirePDMWaveform(uint32_t ObjRefIn, double *dt, double Y[], 
    # 	int32_t len);

    dll_handle.AcquirePDMWaveform.argtypes = [c_uint32, POINTER(c_double), POINTER(c_double), c_int32]
    dll_handle.AcquirePDMWaveform.restype = c_int32

    dt = c_double()
    
    Y = (c_double*samples_in)()
    len = c_int32(samples_in)
    error_out = dll_handle.AcquirePDMWaveform(task_ref, byref(dt), Y, len)
    return dt,Y, error_out


# Perform Measurement on acquired waveform

def perform_ac_measurement(dt, Y, wfilter, measurement_config_cluster_datatype, measurement_config_cluster_ptr):
    # int32_t __cdecl PerformMeasurement(char WeightingFilter[], double dt, 
	# double Y[], MeasurementConfiguration *MeasurementConfiguration, 
	# MeasurementResults *MeasurementResults, double Spectrum[], 
	# double TimeDomain[], int32_t len, int32_t len2, int32_t len3);
    
    measurement_results_cluster_ptr = pointer(MeasurementResults())
    
    dll_handle.PerformMeasurement.argtypes = [c_char_p, c_double, POINTER(c_double), measurement_config_cluster_datatype, 
                                              POINTER(MeasurementResults), POINTER(c_double), POINTER(c_double), c_int32, c_int32, c_int32]
    dll_handle.PerformMeasurement.restype = c_int32

    wfilter2=bytes(wfilter, 'utf-8')
    wfilter2=create_string_buffer(wfilter2)

    # samples_in = measurement_configuration_ptr.contents.NumberOfWords
    samples_in = measurement_config_cluster_ptr.contents.NumberOfWords

    spectrum = (c_double*samples_in)()
    time_domain = (c_double*samples_in)()
    len = c_int32(samples_in)
    len2 = c_int32(samples_in)
    len3 = c_int32(samples_in)
    error_out = dll_handle.PerformMeasurement(wfilter2, dt, Y, measurement_config_cluster_ptr, measurement_results_cluster_ptr, spectrum, time_domain, len, len2, len3)
    return measurement_results_cluster_ptr, spectrum, time_domain, error_out