"""Audio ADC AC Measurement"""
import logging
import pathlib
import sys
from enum import Enum
import click
import ni_measurementlink_service as nims
from ni_measurementlink_service._internal.stubs.ni.protobuf.types import xydata_pb2
from typing import Any, Generator, List, Tuple
from _helpers import (
    configure_logging,
    verbosity_option,
)
import nidaqmx
from nidaqmx.constants import *
import numpy as np
import asyncio
from nidaqmx.stream_writers import (AnalogSingleChannelWriter)
from time import sleep
import nidaqmx.system
import ctypes
from ctypes import *
from ctypes import byref, POINTER
import os
#Python DLL Wrapper
import svt_wave_gen as wg
import pdm_acq_helper as pm


script_or_exe = sys.executable if getattr(sys, "frozen", False) else __file__
service_directory = pathlib.Path(script_or_exe).resolve().parent
measurement_service = nims.MeasurementService(
    service_config_path=service_directory / "audio_ac.serviceconfig",
    version="1.0.0.0",
    ui_file_paths=[service_directory / "audio_ac.measui"],
)

global measurement_config_cluster_ptr, measurement_config_cluster_datatype
global measurement_results_cluster_ptr, measurement_results_cluster_datatype
global pdm_task_ref, error_out, Queue
global cal_freq, cal_amp, snr, thdn, thd, dynamic_range, gain_error, sfdr, spectrum, time_domain


# Enum for Weighting Filter
class WFilter(Enum):
    Linear=0
    A_weighting=1
    B_weighting=2
    C_weighting=3

# Enum for Queue status
class Status(Enum):
    NoAction=0
    GenerationStarted=1
    AcquisitionCompleted=2
    GenerationErrored=3


# Creating classes for Cluster in LabVIEW 
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


# Python Class to handle all operations
class AudioACMeasurement:
    def __init__(self, band_start=20.0, band_stop=20000.0, wfilter=WFilter.Linear, f_s_range=2.2825, channel_s="Ch 1", analog_resource_name="4468/ao0", 
                 frequency=1000.0, amplitude=-1.0, protocol_capture_resource_name="7820", data_line=0, channel_int=0, sample_rate=192000, m_duration=0.1,
                 frame_sync_edge_for_channel_0 = 1, channel_count_per_frame=2, channel_length=32, bit_depth=24, channel_0_offset=1, endianness=0, 
                 data_justification=0, frame_length=64, frame_sync_pulse_width=32, bit_clock_edge_sync=1
                 ):
        """
            frame_sync_edge_for_channel_0:   0:"Falling" , 1="Rising"
            bit_clock_edge_sync:  0="Rising", 1:"Falling" 
            endianness:  0:"MSB first", 1:"LSB first"
            data_justification:  0:"Left justified", 1:"Right justified"
        """
        self.band_start=band_start
        self.band_stop=band_stop
        self.wfilter=(str(wfilter)).replace("_", "-") 
        self.f_s_range=f_s_range
        self.channel_s=channel_s
        self.analog_resource_name=analog_resource_name
        self.frequency=frequency
        self.amplitude=amplitude
        self.protocol_capture_resource_name=protocol_capture_resource_name
        self.data_line=data_line
        self.channel_int=channel_int
        self.sample_rate=sample_rate
        self.m_duration=m_duration
        self.frame_sync_edge_for_channel_0=frame_sync_edge_for_channel_0
        self.channel_count_per_frame=channel_count_per_frame
        self.channel_length=channel_length
        self.bit_depth=bit_depth
        self.channel_0_offset=channel_0_offset
        self.endianness=endianness
        self.data_justification=data_justification
        self.frame_length=frame_length
        self.frame_sync_pulse_width=frame_sync_pulse_width
        self.bit_clock_edge_sync=bit_clock_edge_sync

        self.samples_per_channel=int(self.sample_rate/20)



    def initialize_pdm_acquisition(self, measurement_config_cluster_datatype, measurement_config_cluster_ptr):
        self.clock_rate=int(self.sample_rate*self.frame_length)
        self.number_of_words=int(self.m_duration*self.sample_rate)
        self.sensitivity=1/self.f_s_range
        # Create structure variable to pass as a cluster
        # measurement_config_cluster_ptr = pointer(MeasurementConfiguration())
        # measurement_config_cluster_datatype = POINTER(MeasurementConfiguration)
        measurement_config_cluster_ptr.contents.BandStart=self.band_start
        measurement_config_cluster_ptr.contents.BandStop=self.band_stop
        measurement_config_cluster_ptr.contents.Amplitude=self.amplitude
        measurement_config_cluster_ptr.contents.Frequency=self.frequency
        measurement_config_cluster_ptr.contents.FullScaleRange=self.f_s_range
        measurement_config_cluster_ptr.contents.DataLine=self.data_line
        measurement_config_cluster_ptr.contents.SampleRate=self.sample_rate
        measurement_config_cluster_ptr.contents.MeasurementDuration=self.m_duration
        measurement_config_cluster_ptr.contents.Channel=self.channel_int
        measurement_config_cluster_ptr.contents.FrameSyncEdgeForChannel_0=self.frame_sync_edge_for_channel_0
        measurement_config_cluster_ptr.contents.ChannelCountPerFrame=self.channel_count_per_frame
        measurement_config_cluster_ptr.contents.ChannelLength=self.channel_length
        measurement_config_cluster_ptr.contents.BitDepth=self.bit_depth
        measurement_config_cluster_ptr.contents.Channel_0_offset=self.channel_0_offset
        measurement_config_cluster_ptr.contents.Endianness=self.endianness
        measurement_config_cluster_ptr.contents.DataJustification=self.data_justification
        measurement_config_cluster_ptr.contents.FrameSyncPulseWidth=self.frame_sync_pulse_width
        measurement_config_cluster_ptr.contents.BitClockEdgeSync=self.bit_clock_edge_sync
        measurement_config_cluster_ptr.contents.ClockRate=self.clock_rate
        measurement_config_cluster_ptr.contents.FrameLength=self.frame_length
        measurement_config_cluster_ptr.contents.NumberOfWords=self.number_of_words
        measurement_config_cluster_ptr.contents.Sensitivity=self.sensitivity
     
        
        # print(measurement_config_cluster_ptr)
        pdm_task_ref, error_out = pm.initialize_pdm_task(measurement_config_cluster_datatype, measurement_config_cluster_ptr, self.protocol_capture_resource_name)
        # print("PDM task Initialized: ", pdm_task_ref, "     Error: ", error_out)
        return pdm_task_ref, error_out


    def dB_to_volts(self):
        # print(self.amplitude, self.f_s_range)
        self.amplitude_volts= (10**(self.amplitude/20))*(self.f_s_range/2)
        return self.amplitude_volts
    

    def SV_waveform(self):
        # Analog Waveform generation using SV toolkit DLL wrapper
        ref,error_out=wg.con_sine(frequency=self.frequency, amplitude=self.amplitude_volts)
        ref, error_out=wg.set_properties(ref_in=ref, sample_rate=self.sample_rate)
        (ref, waveform, ws, sam_out, error_out) = wg.wave_gen(ref_in=ref, samples_in=self.samples_per_channel, reset=False)
        return (ref, waveform, ws, sam_out, error_out)

    
    async def perform_measurement(self, Queue, pdm_task_ref, measurement_config_cluster_datatype, measurement_config_cluster_ptr):
        # PDM task to acquire digital waveform from DUT
        dt,Y,error_out = pm.acquire_pdm_waveform(pdm_task_ref, self.number_of_words)  
        # y=list(Y)
        if(error_out!=0):
            Queue=Status.GenerationErrored
            print(Queue)
            sleep(1)
        # Perform measurement on acquired waveform
        measurement_results_cluster_ptr, spectrum2, time_domain2, error_out = pm.perform_ac_measurement(dt, Y, self.wfilter, measurement_config_cluster_datatype, measurement_config_cluster_ptr)
        # Get results from cluster
        cal_freq = measurement_results_cluster_ptr.contents.CalculatedFrequency
        cal_amp = measurement_results_cluster_ptr.contents.CalculatedAmplitude
        snr = measurement_results_cluster_ptr.contents.SNR
        thdn = measurement_results_cluster_ptr.contents.THDN
        thd = measurement_results_cluster_ptr.contents.THD
        dynamic_range = measurement_results_cluster_ptr.contents.DynamicRange
        gain_error =measurement_results_cluster_ptr.contents.GainError
        sfdr = measurement_results_cluster_ptr.contents.SFDR
        spectrum = list(spectrum2)
        time_domain = list(time_domain2)
        # print("Original", len(spectrum), len(time_domain))
        Queue=Status.AcquisitionCompleted

        return Queue,cal_freq, cal_amp, snr, thdn, thd, dynamic_range, gain_error, sfdr, spectrum, time_domain


    async def Generate_AC_measurement_waveform(self, Queue, task, stream, pdm_task_ref, measurement_config_cluster_datatype, measurement_config_cluster_ptr):
        error_out=0
        av=self.dB_to_volts()
        # print("Amplitude in volts: ", av)
        # Initialize output variables
        cal_freq=-1
        cal_amp=-1
        snr=-1
        thdn=-1
        thd=-1
        dynamic_range=-1
        gain_error=-1
        sfdr=-1
        spectrum=[]
        time_domain=[]

        # Define 
        async_task=asyncio.create_task(self.perform_measurement(Queue, pdm_task_ref, measurement_config_cluster_datatype, measurement_config_cluster_ptr))
            
        while Queue != Status.AcquisitionCompleted:
            
            if self.getProductType=="PXIe-4468": 
                # PXIe-4468 has inbuilt function generator
                task.ao_channels.add_ao_func_gen_chan(physical_channel=self.analog_resource_name, type=FuncGenType.SINE, 
                                                            freq=self.frequency, amplitude=self.amplitude_volts, offset=0)
                
                task.start()
                Queue=Status.GenerationStarted
                print("Started generation using inbuilt device function")
                sleep(1)

            else: #default
                (refout, waveform, wave_state, sample_out, error_out)= self.SV_waveform()
                data=np.array(waveform.Y)
                # print(data.shape, type(data))
                stream.write_many_sample(data)  # first manual write to buffer, required otherwise it complains it can't start
                task.start()
                Queue=Status.GenerationStarted
                print("Started generation using SV toolkit")
                sleep(1)

            Queue,cal_freq, cal_amp, snr, thdn, thd, dynamic_range, gain_error, sfdr, spectrum, time_domain = await async_task
            print (Queue)

        task.stop()
        task.close()
        return (cal_freq, cal_amp, snr, thdn, thd, dynamic_range, gain_error, sfdr, spectrum, time_domain)


    

@measurement_service.register_measurement

@measurement_service.configuration("BAND START", nims.DataType.Double, 2.0)
@measurement_service.configuration("BAND STOP", nims.DataType.Double, 20000.0)
@measurement_service.configuration("WEIGHTING FILTER", nims.DataType.Enum, WFilter.Linear, enum_type=WFilter)
@measurement_service.configuration("FULL SCALE RANGE", nims.DataType.Double, 2.825)
@measurement_service.configuration("CHANNEL NAME", nims.DataType.String, " ")  # custom display name provided by the user
#Analog source
@measurement_service.configuration("Analog source resource name", nims.DataType.String," ") 
@measurement_service.configuration("Frequency", nims.DataType.Double, 1000.0)
@measurement_service.configuration("Amplitude", nims.DataType.Double, -1.0)
#Protocol settings
@measurement_service.configuration("Resource Name", nims.DataType.String," ") 
@measurement_service.configuration("DATA LINE", nims.DataType.Int32, 0)
@measurement_service.configuration("CHANNEL", nims.DataType.Int32, 0)
@measurement_service.configuration("SAMPLE RATE", nims.DataType.Int32, 192000)
@measurement_service.configuration("MEASUREMENT DURATION", nims.DataType.Double, 0.1)
#Outputs
@measurement_service.output("ChannelU", nims.DataType.String) 
@measurement_service.output("Calculated frequency", nims.DataType.Double) 
@measurement_service.output("Calculated amplitude", nims.DataType.Double)
@measurement_service.output("SNR", nims.DataType.Double) 
@measurement_service.output("THD+N", nims.DataType.Double)
@measurement_service.output("THD", nims.DataType.Double)
@measurement_service.output("Dynamic Range", nims.DataType.Double)
@measurement_service.output("Gain error", nims.DataType.Double)
@measurement_service.output("SFDR", nims.DataType.Double)
# @measurement_service.output("Spectrum", nims.DataType.DoubleArray1D)
# @measurement_service.output("Time Domain", nims.DataType.DoubleArray1D)
@measurement_service.output("Spectrum", nims.DataType.DoubleXYData)
@measurement_service.output("Time Domain", nims.DataType.DoubleXYData)


def measure(band_start:float,
            band_stop:float,
            w_filter:str,
            f_s_range:float,
            ch_name:str,
            analog_resource_name:str,
            frequency:float,
            amplitude_db:float,
            res_name:str,
            data_line:int,
            channel:int,
            sample_rate:int,
            m_duration:float) :

    logging.info(
        "Executing measurement: Source=%s sample_rate=%g ",
        analog_resource_name,
        sample_rate
    )
    # Initialize AudioACMeasurement class object
    session=AudioACMeasurement(band_start=band_start, band_stop=band_stop, wfilter=w_filter, f_s_range=f_s_range, 
                               channel_s=ch_name, analog_resource_name=analog_resource_name, frequency=frequency, 
                               amplitude=amplitude_db, protocol_capture_resource_name=res_name, data_line=data_line, 
                               channel_int=channel, sample_rate=sample_rate, m_duration=m_duration)
    
    print("Initialize Signal Generation")
    # Load DLL from Python wrapper
    # 1. SVT wave generation
    path1=os.path.join(os.getcwd(), "DLLs\SineWaveGen.dll")
    path1= "/".join(path1.split("\\"))
    wg.load_dll(path1)

    # 2. PDM Acquisition
    path2=os.path.join(os.getcwd(), "DLLs\PDMAcq.dll")
    path2= "/".join(path2.split("\\"))
    pm.load_dll(path2)

    #Initialize Signal Generation
    task = nidaqmx.Task()
    stream=0
    session.getProductType=pm.getProduct(session.analog_resource_name)
    print("Analog Device: ", session.getProductType)
    # Default device case
    if session.getProductType!="PXIe-4468":
        # task=self.setTask(task)
        task.ao_channels.add_ao_voltage_chan(session.analog_resource_name)
        # print(task)
        samp_rate=task.timing.samp_clk_max_rate
        # print("SR", samp_rate)
        samps_per_channel=int(samp_rate/20)
        
        task.timing.cfg_samp_clk_timing(rate=samp_rate, sample_mode=AcquisitionType.CONTINUOUS, samps_per_chan=samps_per_channel) 
        stream = AnalogSingleChannelWriter(task.out_stream, auto_start=False) 
    

    measurement_config_cluster_ptr = pointer(MeasurementConfiguration())
    measurement_config_cluster_datatype = POINTER(MeasurementConfiguration)
    measurement_results_cluster_ptr = pointer(MeasurementResults())
    measurement_results_cluster_datatype = POINTER(MeasurementResults)

    #Initialize PDMAcquisition
    print("Initialize PDMAcquisition")
    pdm_task_ref, error_out = session.initialize_pdm_acquisition(measurement_config_cluster_datatype, measurement_config_cluster_ptr)
    Queue=Status.NoAction

    #Start Generation and Acquire Waveform  
    if error_out!=0:
        Queue=Status.GenerationErrored
        print("Generation Errored with code: ", error_out)
    else:
        print("Start Generation and Acquire Waveform  ")
        cal_freq, cal_amp, snr, thdn, thd, dynamic_range, gain_error, sfdr, spectrum, time_domain = asyncio.run(session.Generate_AC_measurement_waveform(Queue, task, stream, pdm_task_ref, measurement_config_cluster_datatype, measurement_config_cluster_ptr))
        # print(Queue)
    channel_u=ch_name

    f1=int(session.band_start)
    f2=int((session.band_stop))
    f=f2-f1+1
    df=f/int(f*session.m_duration)
    spectrum=spectrum[1:int(f*session.m_duration)+2]
    # print(f, len(spectrum), df)
    # print(freq[0], freq[-1], len(freq), len(spectrum)) 
    spectrum_xy=xydata_pb2.DoubleXYData()
    for i in range(0,len(spectrum)):
        spectrum_xy.x_data.append(f1+i*df)
        spectrum_xy.y_data.append(spectrum[i])

    
    time=[]
    tf=session.m_duration
    dt=tf/session.number_of_words
    for j in range(0,int(session.number_of_words)+1):
        time.append(j*dt)
    time_domain.append(0)
    # print(time[0], time[-1], len(time), len(time_domain)) 
    time_domain_xy = xydata_pb2.DoubleXYData()
    for i in range(len(time_domain)):
        time_domain_xy.x_data.append(time[i])
        time_domain_xy.y_data.append(time_domain[i])

    print("Completed measurement")
    logging.info("Completed measurement")
    return (channel_u, cal_freq, cal_amp, snr, thdn, thd, dynamic_range, gain_error, sfdr, spectrum_xy, time_domain_xy)
                 


@click.command
@verbosity_option
def main(verbosity: int) -> None:
    """Perform a finite analog input measurement with NI-DAQmx."""
    configure_logging(verbosity)

    with measurement_service.host_service():
        input("Press enter to close the measurement service.\n")



if __name__ == "__main__":
    main()

