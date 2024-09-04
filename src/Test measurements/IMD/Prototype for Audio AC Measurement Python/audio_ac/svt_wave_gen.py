from ctypes import *
import ctypes
from enum import Enum


# Profile
class Profile(Enum):
    Linear = 0
    Half_Cosine = 1


# system_timing_model
class SystemTimingModel(Enum):
    Finite = 10178
    Continuous = 10123
    Settled = 110123
    Averaged = 210123
    Discrete_Sweep = 310123
    Continuous_sweep = 410123


# waveform state
class WaveformState(Enum):
    Idle = 0
    Ramp_Up = 65536
    Pre_Measurement_Settling = 131072
    Measurement = 196608
    Post_Measurement_settling = 262144
    Discrete_Sweep_transition = 327680
    Ramp_Down = 393216
    Update = 458752
    Leading_Sync_Pulse = 524288
    Trailing_Sync_pulse = 589824


# ramp parameters class
class RampParameters:
    profile: Profile = None
    ramp_up: float = 0
    transition: float = 0
    ramp_down: float = 0

    def __init__(self):
        self.profile = Profile.Linear
        self.ramp_up = 0
        self.transition = 0
        self.ramp_down = 0.01


# waveform class
class Wave:
    date: str = ''
    time: str = ''
    dt: float = 0
    Y: list = []




# dll = None
# load the dll using WinDLL
def load_dll(path):
    global dll
    dll = CDLL(path)
    print(dll)
    return

# dll loaded


# def getProduct(analog_resource_name):
#         # void __cdecl GetDAQmxProductName(char DAQmxResourceName[], 
# 	    #   char DAQmxProductType[], int32_t len);
#         dll.GetDAQmxProductName.argtypes=[
#         c_char_p,
#         c_char_p,
#         c_int32
#         ]
#         dll.GetDAQmxProductName.restype=c_void_p
#         dname1 = bytes(analog_resource_name, 'utf-8')
#         dp= create_string_buffer(dname1)

#         #outputs
#         stro=create_string_buffer(30)
#         length = c_int32(30)

#         dll.GetDAQmxProductName(
#             dp,
#             stro,
#             length
#         )
#         ans=str(stro.value,'UTF-8')

#         return ans


# configure sine function -> reference, error code

def con_sine(frequency: float, amplitude: float, phase: float = 0.0) -> (int, int):
# def con_sine(frequency: float, amplitude: float, phase: float = 0.0):
    """
    function prototype
    int32_t ConfigureSine(double frequency, double amplitude, double phaseDeg, uint32_t *refOut)
    """
    # error return in format of int error code
    dll.ConfigureSine.restype = c_int32
    # input format
    dll.ConfigureSine.argtypes = [
        c_double,
        c_double,
        c_double,
        POINTER(c_uint32)
    ]

    # define inputs
    freq = c_double(frequency)
    amp = c_double(amplitude)
    pha = c_double(phase)
    # define outputs
    ref_out = c_uint32(0)

    # function call
    # pass inputs by value and outputs as pointer
    error = dll.ConfigureSine(freq, amp, pha, byref(ref_out))

    return ref_out.value, error


# set object properties -> reference, error code
def set_properties(ref_in: int, sample_rate: float, system_timing_model: SystemTimingModel = SystemTimingModel.Continuous,
                   ramp_parameters: RampParameters = RampParameters()) -> (int, int):
    """
    function prototype
    int32_t SetProperties(uint32_t RefIn, double sampleRate, int64_t systemTimingModel, uint16_t profile,
    double rampUp, double transition, double rampDown, uint32_t *refOut)
    """
    # error return in format of int error code
    dll.SetProperties.restype = c_int32
    # input format
    dll.SetProperties.argtypes = [
        c_uint32,
        c_double,
        c_int64,
        c_uint16,
        c_double,
        c_double,
        c_double,
        POINTER(c_uint32)
    ]

    # define inputs
    ref = c_uint32(ref_in)
    sam_rate = c_double(sample_rate)
    st_model = c_int64(system_timing_model.value)
    pro = c_uint16(ramp_parameters.profile.value)
    ramp_up = c_double(ramp_parameters.ramp_up)
    transition = c_double(ramp_parameters.transition)
    ramp_down = c_double(ramp_parameters.ramp_down)
    # define outputs
    ref_out = c_uint32(0)

    # function call
    # pass inputs by value and outputs as pointer
    error = dll.SetProperties(
        ref,
        sam_rate,
        st_model,
        pro,
        ramp_up,
        transition,
        ramp_down,
        byref(ref_out)
    )

    return ref_out.value, error


#
# waveform generation -> reference, wave, waveform state, samples out, error code
def wave_gen(ref_in: int, samples_in: int, reset: bool) -> (int, Wave, WaveformState, int, int):
    """
    function prototype -> int32_t WaveformGen(uint32_t RefIn, int32_t samplesIn, LVBoolean reset, uint32_t *refOut,
    int32_t *waveform_state, int32_t *samplesOut, int32_t len, char dateString[], int32_t *dl, char timeString[],
    int32_t *tl, double *dt, double Y[])
    """
    # error return in format of int error code
    dll.WaveformGen.restype = c_int32
    dll.WaveformGen.argtypes = [
        c_uint32,
        c_int32,
        c_bool,
        POINTER(c_uint32),
        POINTER(c_int32),
        POINTER(c_int32),
        c_int32,
        c_char_p,
        POINTER(c_int32),
        c_char_p,
        POINTER(c_int32),
        POINTER(c_double),
        POINTER(c_double),
    ]

    # define inputs
    ref = c_uint32(ref_in)
    sam_in = c_int32(samples_in)
    res = c_bool(reset)

    length = c_int32(20)  # expected maximum date and time length(special input)

    # define outputs
    ref_out = c_uint32(0)
    wav_state = c_int32(0)
    sam_out = c_int32(0)

    date = create_string_buffer(length.value)
    dl = c_int32(0)
    time = create_string_buffer(length.value)
    tl = c_int32(0)
    dt = c_double(0)
    y = (c_double * sam_in.value)()

    error = dll.WaveformGen(
        ref,
        sam_in,
        res,
        byref(ref_out),
        byref(wav_state),
        byref(sam_out),
        length,
        date,
        byref(dl),
        time,
        byref(tl),
        byref(dt),
        y
    )

    d = ''
    for i in range(dl.value):
        d += chr(date.value[i])
    t = ''
    for i in range(tl.value):
        t += chr(time.value[i])

    wave = Wave()
    wave.date = d
    wave.time = t
    wave.dt = dt.value
    wave.Y = list(y)

    return ref_out.value, wave, WaveformState(wav_state.value), sam_out.value, error

#______________________________________________________________________________________________________________________________________________________________

