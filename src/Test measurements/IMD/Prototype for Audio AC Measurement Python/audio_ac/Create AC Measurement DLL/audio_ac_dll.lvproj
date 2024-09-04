<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Acquire PDM Waveform.vi" Type="VI" URL="../Acquire PDM Waveform.vi"/>
		<Item Name="Build Channel List.vi" Type="VI" URL="../Dependencies/Build Channel List.vi"/>
		<Item Name="Configure Sine.vi" Type="VI" URL="../Configure Sine.vi"/>
		<Item Name="dB to volts.vi" Type="VI" URL="../Dependencies/dB to volts.vi"/>
		<Item Name="DVR To Obj.vi" Type="VI" URL="../DVR To Obj.vi"/>
		<Item Name="Get DAQmx Product name.vi" Type="VI" URL="../Get DAQmx Product name.vi"/>
		<Item Name="Initialize PDM Acquisition.vi" Type="VI" URL="../Initialize PDM Acquisition.vi"/>
		<Item Name="Measurement Configuration.ctl" Type="VI" URL="../Measurement Configuration.ctl"/>
		<Item Name="MeasurementResults.ctl" Type="VI" URL="../MeasurementResults.ctl"/>
		<Item Name="Obj To DVR.vi" Type="VI" URL="../Obj To DVR.vi"/>
		<Item Name="Perform Measurement.vi" Type="VI" URL="../Perform Measurement.vi"/>
		<Item Name="Set Properties.vi" Type="VI" URL="../Set Properties.vi"/>
		<Item Name="test.vi" Type="VI" URL="../test.vi"/>
		<Item Name="time.vi" Type="VI" URL="../time.vi"/>
		<Item Name="Volts to dB.vi" Type="VI" URL="../Dependencies/Volts to dB.vi"/>
		<Item Name="Waveform Gen.vi" Type="VI" URL="../Waveform Gen.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Acquire Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Acquire Semaphore.vi"/>
				<Item Name="AddNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/AddNamedSemaphorePrefix.vi"/>
				<Item Name="Application Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/file.llb/Application Directory.vi"/>
				<Item Name="Boolean Array to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDT.llb/Boolean Array to Digital.vi"/>
				<Item Name="Check for Equality.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Check for Equality.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="DTbl Boolean Array to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Boolean Array to Digital.vi"/>
				<Item Name="DTbl Compress Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Compress Digital.vi"/>
				<Item Name="DTbl Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DTblOps.llb/DTbl Digital Size.vi"/>
				<Item Name="DU64_U32SubtractWithBorrow.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/DU64_U32SubtractWithBorrow.vi"/>
				<Item Name="DWDT Boolean Array to Digital.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Boolean Array to Digital.vi"/>
				<Item Name="DWDT Digital Size.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Digital Size.vi"/>
				<Item Name="DWDT Get Final Time Value.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Get Final Time Value.vi"/>
				<Item Name="DWDT Waveform Duration.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/DWDTOps.llb/DWDT Waveform Duration.vi"/>
				<Item Name="Dynamic To Waveform Array.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Dynamic To Waveform Array.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Helper.lvlib" Type="Library" URL="/&lt;vilib&gt;/PDM Acquisition Toolkit/host/Error Helper/Error Helper.lvlib"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="ex_Modify Signal Name.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signal Name.vi"/>
				<Item Name="ex_Modify Signals Names.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_Modify Signals Names.vi"/>
				<Item Name="Get Final Time Value.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Get Final Time Value.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
				<Item Name="GetNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/GetNamedSemaphorePrefix.vi"/>
				<Item Name="I128 Timestamp.ctl" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/I128 Timestamp.ctl"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="LVMapReplaceAction.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMapReplaceAction.ctl"/>
				<Item Name="NI_AAL_Angle.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AAL_Angle.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALBLAS.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBLAS.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_MABase.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MABase.lvlib"/>
				<Item Name="NI_MAPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/measure/NI_MAPro.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="nisyscfg.lvlib" Type="Library" URL="/&lt;vilib&gt;/nisyscfg/nisyscfg.lvlib"/>
				<Item Name="Not A Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Not A Semaphore.vi"/>
				<Item Name="Number of Waveform Samples.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Number of Waveform Samples.vi"/>
				<Item Name="Obtain Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Obtain Semaphore Reference.vi"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="PDM Acquisition Class Library.lvlib" Type="Library" URL="/&lt;vilib&gt;/PDM Acquisition Toolkit/host/Classes/PDM Acquisition Class Library.lvlib"/>
				<Item Name="PDM Acquisition Toolkit.lvlib" Type="Library" URL="/&lt;vilib&gt;/PDM Acquisition Toolkit/host/API/PDM Acquisition Toolkit.lvlib"/>
				<Item Name="PDM Shared.lvlib" Type="Library" URL="/&lt;vilib&gt;/PDM Acquisition Toolkit/shared/PDM Shared.lvlib"/>
				<Item Name="Read Registry Value DWORD.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value DWORD.vi"/>
				<Item Name="Read Registry Value Simple STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple STR.vi"/>
				<Item Name="Read Registry Value Simple U32.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple U32.vi"/>
				<Item Name="Read Registry Value Simple.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value Simple.vi"/>
				<Item Name="Read Registry Value STR.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value STR.vi"/>
				<Item Name="Read Registry Value.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Read Registry Value.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry Simplify Data Type.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Simplify Data Type.vi"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="Release Semaphore Reference.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore Reference.vi"/>
				<Item Name="Release Semaphore.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Release Semaphore.vi"/>
				<Item Name="RemoveNamedSemaphorePrefix.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/RemoveNamedSemaphorePrefix.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Semaphore RefNum" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore RefNum"/>
				<Item Name="Semaphore Refnum Core.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Semaphore Refnum Core.ctl"/>
				<Item Name="SoundVib_ABCWeighting.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/SoundVib_ABCWeighting.lvlib"/>
				<Item Name="SoundVib_Distortion.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Distortion/SoundVib_Distortion.lvlib"/>
				<Item Name="SoundVib_Generation.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/SoundVib_Generation.lvlib"/>
				<Item Name="SoundVib_SingleTone.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Single Tone Measurements/SoundVib_SingleTone.lvlib"/>
				<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/dlg_ctls.llb/Space Constant.vi"/>
				<Item Name="Stall Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Stall Data Flow.vim"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="subResample.vi" Type="VI" URL="/&lt;vilib&gt;/express/express signal manip/AlignandResampleBlock.llb/subResample.vi"/>
				<Item Name="subTimeDelay.vi" Type="VI" URL="/&lt;vilib&gt;/express/express execution control/TimeDelayBlock.llb/subTimeDelay.vi"/>
				<Item Name="SV Aggregate Data (Complex Spectrum).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Aggregate Data (Complex Spectrum).vi"/>
				<Item Name="SV Aggregate Data (Real Spectrum).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Aggregate Data (Real Spectrum).vi"/>
				<Item Name="SV Append Data (1 Ch) ([DBL]).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Data (1 Ch) ([DBL]).vi"/>
				<Item Name="SV Append Data (1 Ch) (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Data (1 Ch) (DBL).vi"/>
				<Item Name="SV Append Data (1 Ch) (I32).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Data (1 Ch) (I32).vi"/>
				<Item Name="SV Append Data (1 Ch) (SGL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Data (1 Ch) (SGL).vi"/>
				<Item Name="SV Append Data (1 Ch) (Variant).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Data (1 Ch) (Variant).vi"/>
				<Item Name="SV Append Data (N Ch) (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Data (N Ch) (DBL).vi"/>
				<Item Name="SV Append Data.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Data.vi"/>
				<Item Name="SV Append Waveform (1 Ch) (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Waveform (1 Ch) (DBL).vi"/>
				<Item Name="SV Append Waveforms (N Ch) (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Append Waveforms (N Ch) (DBL).vi"/>
				<Item Name="SV Buffer Array (No State) (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Buffer Array (No State) (DBL).vi"/>
				<Item Name="SV Buffer Waveform (No State) (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SV Buffer Waveform (No State) (DBL).vi"/>
				<Item Name="SV Continuous Sweep.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Continuous Sweep/SV Continuous Sweep.lvclass"/>
				<Item Name="SV Discrete Sweep.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Discrete Sweep/SV Discrete Sweep.lvclass"/>
				<Item Name="SV Function.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Function/SV Function.lvclass"/>
				<Item Name="SV MLS.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV MLS/SV MLS.lvclass"/>
				<Item Name="SV Multitone.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Multitone/SV Multitone.lvclass"/>
				<Item Name="SV Noise.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Noise/SV Noise.lvclass"/>
				<Item Name="SV Signal.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Signal/SV Signal.lvclass"/>
				<Item Name="SV Sinusoid.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Sinusoid/SV Sinusoid.lvclass"/>
				<Item Name="SV Square.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Square/SV Square.lvclass"/>
				<Item Name="SV Triangle.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/Signal Generation/SV Triangle/SV Triangle.lvclass"/>
				<Item Name="sv_Bilinear Mapping.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Bilinear Mapping.vi"/>
				<Item Name="sv_Bilinear Prewarping.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Bilinear Prewarping.vi"/>
				<Item Name="sv_Check Data Valid (N Ch) [Weighting].vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Check Data Valid (N Ch) [Weighting].vi"/>
				<Item Name="sv_Check Data Valid [Weighting].vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Check Data Valid [Weighting].vi"/>
				<Item Name="sv_Check for Weighting Change (time signal).vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Check for Weighting Change (time signal).vi"/>
				<Item Name="sv_Check for Weighting Conflict (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Check for Weighting Conflict (N Ch).vi"/>
				<Item Name="sv_Check for Weighting Conflict.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Check for Weighting Conflict.vi"/>
				<Item Name="sv_Combine Single Orders.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Combine Single Orders.vi"/>
				<Item Name="sv_Design ABC Weighting Filters.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Design ABC Weighting Filters.vi"/>
				<Item Name="sv_Design Weighting Filter.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Design Weighting Filter.vi"/>
				<Item Name="sv_Distance X to Y.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Distance X to Y.vi"/>
				<Item Name="sv_Evaluate N(z) Over D(z).vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Evaluate N(z) Over D(z).vi"/>
				<Item Name="sv_Expand and Sort.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Expand and Sort.vi"/>
				<Item Name="sv_Expand PZ Orders.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Expand PZ Orders.vi"/>
				<Item Name="sv_Flat New Pink Filter Coefficients.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat New Pink Filter Coefficients.vi"/>
				<Item Name="sv_Flat Pink Filter (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat Pink Filter (DBL).vi"/>
				<Item Name="sv_Flat Pink Noise Coefficients.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat Pink Noise Coefficients.ctl"/>
				<Item Name="sv_Flat Pink Noise Filter Coefficients.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat Pink Noise Filter Coefficients.vi"/>
				<Item Name="sv_Flat Pink Noise Waveform.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Flat Pink Noise Waveform.vi"/>
				<Item Name="sv_Generate Discrete Steps.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/sv_Generate Discrete Steps.vi"/>
				<Item Name="sv_Get N(z) and D(z).vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Get N(z) and D(z).vi"/>
				<Item Name="sv_Match Poles &amp; Zeros.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Match Poles &amp; Zeros.vi"/>
				<Item Name="sv_Matched PZ, Gain to IIR Cluster.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Matched PZ, Gain to IIR Cluster.vi"/>
				<Item Name="sv_Pos Imag.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Pos Imag.vi"/>
				<Item Name="sv_Real.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Real.vi"/>
				<Item Name="sv_Set Function State Attributes on Waveform.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Generation/subVIs/sv_Set Function State Attributes on Waveform.vi"/>
				<Item Name="sv_Weighting Filter with IC.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Weighting/subVIs/sv_Weighting Filter with IC.vi"/>
				<Item Name="svc_Build Unit Label for Frequency Range.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Build Unit Label for Frequency Range.vi"/>
				<Item Name="svc_Caller VI Returned in Error Source.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Caller VI Returned in Error Source.vi"/>
				<Item Name="svc_Channel Info to Spectrum Info.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Channel Info to Spectrum Info.vi"/>
				<Item Name="svc_Channel Info.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Channel Info.ctl"/>
				<Item Name="svc_Check for Waveform Parameter Continuity (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Check for Waveform Parameter Continuity (1 Ch).vi"/>
				<Item Name="svc_Check for Waveform Parameter Continuity (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Check for Waveform Parameter Continuity (N Ch).vi"/>
				<Item Name="svc_Check for Waveform Parameter Continuity (no state).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Check for Waveform Parameter Continuity (no state).vi"/>
				<Item Name="svc_Check Frequency Range in Bandwidth.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Check Frequency Range in Bandwidth.vi"/>
				<Item Name="svc_Check Frequency Range in Spectrum.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Check Frequency Range in Spectrum.vi"/>
				<Item Name="svc_Check Frequency Range.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Check Frequency Range.vi"/>
				<Item Name="svc_Coerce Index and Length.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Coerce Index and Length.vi"/>
				<Item Name="svc_Complex Datatype Defaults.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Complex Datatype Defaults.vi"/>
				<Item Name="svc_Complimentary Spectrum Units.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Complimentary Spectrum Units.ctl"/>
				<Item Name="svc_Conditional Merge Error.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Conditional Merge Error.vi"/>
				<Item Name="svc_Convert Array of Peaks to X and Y Arrays.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Convert Array of Peaks to X and Y Arrays.vi"/>
				<Item Name="svc_Convert Array of Peaks to XY Format.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Convert Array of Peaks to XY Format.vi"/>
				<Item Name="svc_Convert Frequency to Frequency String.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Convert Frequency to Frequency String.vi"/>
				<Item Name="svc_Convert Sort Indices to Unsort Indices.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Convert Sort Indices to Unsort Indices.vi"/>
				<Item Name="svc_Convert Spectrum Array to dB.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Convert Spectrum Array to dB.vi"/>
				<Item Name="svc_Convert Start and Stop to Start Index and Length.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Convert Start and Stop to Start Index and Length.vi"/>
				<Item Name="svc_Create X Array from x0 dx and length.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Create X Array from x0 dx and length.vi"/>
				<Item Name="svc_Engineering Units Text Ring.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Engineering Units Text Ring.ctl"/>
				<Item Name="svc_Engineering Units to Unit Label.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Engineering Units to Unit Label.vi"/>
				<Item Name="svc_Extract Single Tone Information (complex).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Extract Single Tone Information (complex).vi"/>
				<Item Name="svc_FFT with Window.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_FFT with Window.vi"/>
				<Item Name="svc_Find Greatest Common Divisor (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Find Greatest Common Divisor (DBL).vi"/>
				<Item Name="svc_Format Value (DBL).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Format Value (DBL).vi"/>
				<Item Name="svc_Get Array Subset (Index).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Get Array Subset (Index).vi"/>
				<Item Name="svc_Get SV Channel Info.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Get SV Channel Info.vi"/>
				<Item Name="svc_Get Waveform Subset (Index).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Get Waveform Subset (Index).vi"/>
				<Item Name="svc_Get Weighting Enum and Labels.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Get Weighting Enum and Labels.vi"/>
				<Item Name="svc_Get Window Info.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Get Window Info.vi"/>
				<Item Name="svc_Is X a Factor of Y.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Is X a Factor of Y.vi"/>
				<Item Name="svc_Log View for Spectrum (1Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Log View for Spectrum (1Ch).vi"/>
				<Item Name="svc_Resampled Channel Info.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Resampled Channel Info.ctl"/>
				<Item Name="svc_Set SV Channel Info (variant).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Set SV Channel Info (variant).vi"/>
				<Item Name="svc_Set SV Channel Info.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Set SV Channel Info.vi"/>
				<Item Name="svc_Sort Peak Results.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Sort Peak Results.vi"/>
				<Item Name="svc_Spectrum Info.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Spectrum Info.ctl"/>
				<Item Name="svc_Spectrum Type.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Spectrum Type.ctl"/>
				<Item Name="svc_Spectrum Units.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Spectrum Units.vi"/>
				<Item Name="svc_Surround Format String.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Surround Format String.ctl"/>
				<Item Name="svc_Surround NonAlpha String with Parentheses.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Surround NonAlpha String with Parentheses.vi"/>
				<Item Name="svc_Unit Label Lexical Class.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Unit Label Lexical Class.vi"/>
				<Item Name="svc_Unit Label to Engineering Units.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Unit Label to Engineering Units.vi"/>
				<Item Name="svc_Unwrap Phase.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Unwrap Phase.vi"/>
				<Item Name="svc_Waveform Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Waveform Parameters.ctl"/>
				<Item Name="svc_Weighting Filter Text Ring.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Weighting Filter Text Ring.ctl"/>
				<Item Name="svc_Weighting to Weighting Label.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Weighting to Weighting Label.vi"/>
				<Item Name="svc_Window Parameters.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/svc_Window Parameters.vi"/>
				<Item Name="svc_Window.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_Window.ctl"/>
				<Item Name="svc_X-Axis Units.ctl" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Controls/svc_X-Axis Units.ctl"/>
				<Item Name="SVFA Get Spectrum Subset (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Get Spectrum Subset (1 Ch).vi"/>
				<Item Name="SVFA Get Spectrum Subset (Complex) (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Get Spectrum Subset (Complex) (1 Ch).vi"/>
				<Item Name="SVFA Get Spectrum Subset (Complex) (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Get Spectrum Subset (Complex) (N Ch).vi"/>
				<Item Name="SVFA Get Spectrum Subset (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Get Spectrum Subset (N Ch).vi"/>
				<Item Name="SVFA Get Spectrum Subset (NxM).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Get Spectrum Subset (NxM).vi"/>
				<Item Name="SVFA Get Spectrum Subset.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Get Spectrum Subset.vi"/>
				<Item Name="SVFA Get Tone Amplitude and Phase (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Get Tone Amplitude and Phase (1 Ch).vi"/>
				<Item Name="SVFA Spectrum Peak Search (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Spectrum Peak Search (1 Ch).vi"/>
				<Item Name="SVFA Spectrum Peak Search (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Spectrum Peak Search (N Ch).vi"/>
				<Item Name="SVFA Spectrum Peak Search.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Spectrum Peak Search.vi"/>
				<Item Name="SVFA Unit Conversion (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (1 Ch).vi"/>
				<Item Name="SVFA Unit Conversion (Colormap).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (Colormap).vi"/>
				<Item Name="SVFA Unit Conversion (Complex) (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (Complex) (1 Ch).vi"/>
				<Item Name="SVFA Unit Conversion (Complex) (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (Complex) (N Ch).vi"/>
				<Item Name="SVFA Unit Conversion (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (N Ch).vi"/>
				<Item Name="SVFA Unit Conversion (Peaks) (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (Peaks) (1 Ch).vi"/>
				<Item Name="SVFA Unit Conversion (Peaks) (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (Peaks) (N Ch).vi"/>
				<Item Name="SVFA Unit Conversion (Waterfall).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (Waterfall).vi"/>
				<Item Name="SVFA Unit Conversion (XY) (1 Ch - M Orders).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (XY) (1 Ch - M Orders).vi"/>
				<Item Name="SVFA Unit Conversion (XY) (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (XY) (1 Ch).vi"/>
				<Item Name="SVFA Unit Conversion (XY) (N Ch - M Orders).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (XY) (N Ch - M Orders).vi"/>
				<Item Name="SVFA Unit Conversion (XY) (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion (XY) (N Ch).vi"/>
				<Item Name="SVFA Unit Conversion.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVFA Unit Conversion.vi"/>
				<Item Name="svfa_Build Spectrum Info.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Spectrum Info/svfa_Build Spectrum Info.vi"/>
				<Item Name="svfa_Check Multi Tone Detection Iteration Condition.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Check Multi Tone Detection Iteration Condition.vi"/>
				<Item Name="svfa_Compute Complex Spectrum for Export.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Compute Complex Spectrum for Export.vi"/>
				<Item Name="svfa_Conversion Utility (spectrum info).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Conversion Utility (spectrum info).vi"/>
				<Item Name="svfa_Convert to One-Sided FFT Spectrum.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Baseband FFT/subVIs/svfa_Convert to One-Sided FFT Spectrum.vi"/>
				<Item Name="svfa_Cosine Window Coefficients.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Cosine Window Coefficients.vi"/>
				<Item Name="svfa_dBrefA to dBrefB.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_dBrefA to dBrefB.vi"/>
				<Item Name="svfa_Initial Guess for Tone Estimation (complex).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Initial Guess for Tone Estimation (complex).vi"/>
				<Item Name="svfa_Initial Guess for Tone Estimation (magnitude).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Initial Guess for Tone Estimation (magnitude).vi"/>
				<Item Name="svfa_Initial Guess for Tone Estimation.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Initial Guess for Tone Estimation.vi"/>
				<Item Name="svfa_Linear to dB.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Linear to dB.vi"/>
				<Item Name="svfa_Locate Three Fingers (complex).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Locate Three Fingers (complex).vi"/>
				<Item Name="svfa_Mag to Mag2.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Mag to Mag2.vi"/>
				<Item Name="svfa_Peak Rough Search Indices.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Peak Rough Search Indices.vi"/>
				<Item Name="svfa_Peak to RMS to Peak2Peak.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Peak to RMS to Peak2Peak.vi"/>
				<Item Name="svfa_Rect Window Frequency Response.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Rect Window Frequency Response.vi"/>
				<Item Name="svfa_Scaled Time Domain Window (Array).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Windowing/svfa_Scaled Time Domain Window (Array).vi"/>
				<Item Name="svfa_Spectral Compensation for Other Tones.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Spectral Compensation for Other Tones.vi"/>
				<Item Name="svfa_Spectrum Info Window to windowTd Type Def.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Spectrum Info Window to windowTd Type Def.vi"/>
				<Item Name="svfa_Spectrum Peak Search.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Spectrum Peak Search.vi"/>
				<Item Name="svfa_Spectrum Peak Tone Search and Estimation (complex).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Spectrum Peak Tone Search and Estimation (complex).vi"/>
				<Item Name="svfa_Spectrum to Spectral Density.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Spectrum to Spectral Density.vi"/>
				<Item Name="svfa_Three Finger Peak Search.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Three Finger Peak Search.vi"/>
				<Item Name="svfa_Tone Estimation (complex).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation (complex).vi"/>
				<Item Name="svfa_Tone Estimation (magnitude).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation (magnitude).vi"/>
				<Item Name="svfa_Tone Estimation Subroutine G(f) (complex).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation Subroutine G(f) (complex).vi"/>
				<Item Name="svfa_Tone Estimation Subroutine G(f) (first derivative) (complex).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation Subroutine G(f) (first derivative) (complex).vi"/>
				<Item Name="svfa_Tone Estimation Subroutine G(f) (first derivative) (magnitude).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation Subroutine G(f) (first derivative) (magnitude).vi"/>
				<Item Name="svfa_Tone Estimation Subroutine G(f) (first derivative).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation Subroutine G(f) (first derivative).vi"/>
				<Item Name="svfa_Tone Estimation Subroutine G(f) (magnitude).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation Subroutine G(f) (magnitude).vi"/>
				<Item Name="svfa_Tone Estimation Subroutine G(f).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation Subroutine G(f).vi"/>
				<Item Name="svfa_Tone Estimation.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Tone Estimation.vi"/>
				<Item Name="svfa_Window Frequency Response (double array).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Window Frequency Response (double array).vi"/>
				<Item Name="svfa_Window Frequency Response (double).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Window Frequency Response (double).vi"/>
				<Item Name="svfa_Window Frequency Response (first derivative, double).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Window Frequency Response (first derivative, double).vi"/>
				<Item Name="svfa_Window Frequency Response.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/subVIs/svfa_Window Frequency Response.vi"/>
				<Item Name="SVL AC &amp; DC Level (Frequency) (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Level/SVL AC &amp; DC Level (Frequency) (1 Ch).vi"/>
				<Item Name="SVL AC &amp; DC Level (Frequency) (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Level/SVL AC &amp; DC Level (Frequency) (N Ch).vi"/>
				<Item Name="SVL AC &amp; DC Level (Time) (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Level/SVL AC &amp; DC Level (Time) (1 Ch).vi"/>
				<Item Name="SVL AC &amp; DC Level (Time) (N Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Level/SVL AC &amp; DC Level (Time) (N Ch).vi"/>
				<Item Name="SVL AC &amp; DC Level.vi" Type="VI" URL="/&lt;vilib&gt;/addons/Sound and Vibration/svt_Level/SVL AC &amp; DC Level.vi"/>
				<Item Name="SVL Set dB Reference (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SVL Set dB Reference (1 Ch).vi"/>
				<Item Name="SVL Set dB Reference (N Ch - 1 Ref).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SVL Set dB Reference (N Ch - 1 Ref).vi"/>
				<Item Name="SVL Set dB Reference (N Ch - N Ref).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SVL Set dB Reference (N Ch - N Ref).vi"/>
				<Item Name="SVL Set dB Reference (variant).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SVL Set dB Reference (variant).vi"/>
				<Item Name="SVL Set dB Reference.vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Shared subVIs/Common/SVL Set dB Reference.vi"/>
				<Item Name="SVPO Power in Band (Complex) (1 Ch).vi" Type="VI" URL="/&lt;vilib&gt;/addons/_NISVFA/_Spectrum Processing/SVPO Power in Band (Complex) (1 Ch).vi"/>
				<Item Name="Timestamp Subtract.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/TSOps.llb/Timestamp Subtract.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Validate Semaphore Size.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/semaphor.llb/Validate Semaphore Size.vi"/>
				<Item Name="Waveform Array To Dynamic.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/transition.llb/Waveform Array To Dynamic.vi"/>
				<Item Name="Waveform Duration.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/Waveform Duration.vi"/>
				<Item Name="WDT Find First Error and Warning.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Find First Error and Warning.vi"/>
				<Item Name="WDT Get Final Time Value DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Get Final Time Value DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples CDB.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples CDB.vi"/>
				<Item Name="WDT Number of Waveform Samples DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples DBL.vi"/>
				<Item Name="WDT Number of Waveform Samples EXT.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples EXT.vi"/>
				<Item Name="WDT Number of Waveform Samples I8.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I8.vi"/>
				<Item Name="WDT Number of Waveform Samples I16.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I16.vi"/>
				<Item Name="WDT Number of Waveform Samples I32.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples I32.vi"/>
				<Item Name="WDT Number of Waveform Samples SGL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Number of Waveform Samples SGL.vi"/>
				<Item Name="WDT Waveform Duration DBL.vi" Type="VI" URL="/&lt;vilib&gt;/Waveform/WDTOps.llb/WDT Waveform Duration DBL.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="lvblas.dll" Type="Document" URL="/&lt;resource&gt;/lvblas.dll"/>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nilvaiu.dll" Type="Document" URL="nilvaiu.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nisyscfg.dll" Type="Document" URL="nisyscfg.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="PDMAcq" Type="DLL">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{99EE0AF3-7E99-4837-90D4-CF2718AB06F3}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A9EEBE13-83B6-414B-B8BE-CEF32B320547}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{142AC439-7FC8-44C2-A48E-6DF5A2C0BBDD}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">PDMAcq</Property>
				<Property Name="Bld_excludeInlineSubVIs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/PDMAcq</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{66238369-93D2-48CD-843E-DD4E72EC7A09}</Property>
				<Property Name="Bld_version.build" Type="Int">2</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">PDMAcq.dll</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/PDMAcq/PDMAcq.dll</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/PDMAcq/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Dll_compatibilityWith2011" Type="Bool">false</Property>
				<Property Name="Dll_delayOSMsg" Type="Bool">true</Property>
				<Property Name="Dll_headerGUID" Type="Str">{1D7429F3-C618-41B3-82D7-1F6F74D28A08}</Property>
				<Property Name="Dll_libGUID" Type="Str">{C0089158-872C-4CED-B689-AB8905A9CE62}</Property>
				<Property Name="Dll_privateExecSys" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{F42F3BEC-B860-421E-87BC-E9DA628761B0}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Get DAQmx Product name.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Initialize PDM Acquisition.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Acquire PDM Waveform.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[4].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[4].itemID" Type="Ref">/My Computer/Perform Measurement.vi</Property>
				<Property Name="Source[4].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[4].type" Type="Str">ExportedVI</Property>
				<Property Name="SourceCount" Type="Int">5</Property>
				<Property Name="TgtF_fileDescription" Type="Str">PDMAcq</Property>
				<Property Name="TgtF_internalName" Type="Str">PDMAcq</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 </Property>
				<Property Name="TgtF_productName" Type="Str">PDMAcq</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{5CED9ED3-884F-4A07-BFAC-8DB2753E620C}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">PDMAcq.dll</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="SineWaveGen" Type="DLL">
				<Property Name="App_copyErrors" Type="Bool">true</Property>
				<Property Name="App_INI_aliasGUID" Type="Str">{A43978C7-CF77-4C32-A21B-A3341B0F3699}</Property>
				<Property Name="App_INI_GUID" Type="Str">{A46C4549-8516-4E35-8FEA-36DD2C276FAE}</Property>
				<Property Name="App_serverConfig.httpPort" Type="Int">8002</Property>
				<Property Name="App_serverType" Type="Int">0</Property>
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{A9BC963B-755B-438E-B82C-E7BC388F74C0}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SineWaveGen</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/SineWaveGen</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{2F6EFF83-BF58-4C7C-BA1D-098975B6D301}</Property>
				<Property Name="Bld_version.build" Type="Int">1</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SineWaveGen.dll</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/SineWaveGen/SineWaveGen.dll</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/SineWaveGen/data</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Dll_compatibilityWith2011" Type="Bool">false</Property>
				<Property Name="Dll_delayOSMsg" Type="Bool">true</Property>
				<Property Name="Dll_headerGUID" Type="Str">{CE881984-EAAC-499F-88E5-DAE4159F57FB}</Property>
				<Property Name="Dll_libGUID" Type="Str">{9DEFCF46-5D3A-432F-BB87-C30EB1E82ECC}</Property>
				<Property Name="Dll_privateExecSys" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{F42F3BEC-B860-421E-87BC-E9DA628761B0}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Configure Sine.vi</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Set Properties.vi</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[2].type" Type="Str">ExportedVI</Property>
				<Property Name="Source[3].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoDir" Type="Int">4</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoName" Type="Str">return value</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoOutputIdx" Type="Int">3</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[0]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoInputIdx" Type="Int">10</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoName" Type="Str">RefIn</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[1]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[10]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[10]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[10]VIProtoLenInput" Type="Int">7</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[10]VIProtoLenOutput" Type="Int">11</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[10]VIProtoName" Type="Str">timeString</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[10]VIProtoOutputIdx" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[10]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[11]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[11]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[11]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[11]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[11]VIProtoName" Type="Str">tl</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[11]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[11]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[12]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[12]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[12]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[12]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[12]VIProtoName" Type="Str">dt</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[12]VIProtoOutputIdx" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[12]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]CallingConv" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]Name" Type="Str">WaveformGen</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]VIProtoLenInput" Type="Int">2</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]VIProtoName" Type="Str">Y</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]VIProtoOutputIdx" Type="Int">2</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[13]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoInputIdx" Type="Int">9</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoName" Type="Str">samplesIn</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[2]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoDir" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoInputIdx" Type="Int">8</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoName" Type="Str">reset</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[3]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoName" Type="Str">refOut</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoOutputIdx" Type="Int">7</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[4]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoName" Type="Str">waveform_state</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoOutputIdx" Type="Int">6</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[5]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoName" Type="Str">samplesOut</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoOutputIdx" Type="Int">5</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[6]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[7]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[7]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[7]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[7]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[7]VIProtoName" Type="Str">len</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[7]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[7]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[8]VIProtoDir" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[8]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[8]VIProtoLenInput" Type="Int">7</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[8]VIProtoLenOutput" Type="Int">9</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[8]VIProtoName" Type="Str">dateString</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[8]VIProtoOutputIdx" Type="Int">4</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[8]VIProtoPassBy" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[9]VIProtoDir" Type="Int">3</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[9]VIProtoInputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[9]VIProtoLenInput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[9]VIProtoLenOutput" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[9]VIProtoName" Type="Str">dl</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[9]VIProtoOutputIdx" Type="Int">-1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfo[9]VIProtoPassBy" Type="Int">0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfoCPTM" Type="Bin">)1#!!!!!!"!!&amp;%!Q`````QJU;7VF5X2S;7ZH!!!*1!I!!G2U!!!&amp;!!I!!!Z!1!!"`````Q!#!6E!$%!B"H.U982V=Q!!#U!$!!2D&lt;W2F!!!11$$`````"H.P&gt;8*D:1!!&amp;E"1!!-!"!!&amp;!!9*:8*S&lt;X)A&lt;X6U!"2!-0````]+:'&amp;U:6.U=GFO:Q!!%5!$!!JT97VQ&lt;'6T4X6U!!!61!-!$H&gt;B&gt;G6G&lt;X*N8X.U982F!!!.1!=!"H*F:E^V&gt;!!!#E!B"8*F=W6U!!^!!Q!*=W&amp;N='RF=UFO!!N!"Q!&amp;5G6G37Y!4A$Q!!M!!!!"!!-!"Q!)!!E!#A!,!!Q!$1!/!Q!![!!!#1!!!!E!!!!*!!!!#1!!!!E!!!!*!!!!#1!!!!E!!!!+!!!!#A!!!!A!!!!!!1!0</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfoDescription" Type="Bin">;7ZU-T*@&gt;#"898:F:G^S&lt;5&gt;F&lt;CBV;7ZU-T*@&gt;#"3:7:*&lt;CQA;7ZU-T*@&gt;#"T97VQ&lt;'6T37YM)%R71G^P&lt;'6B&lt;C"S:8.F&gt;#QA&gt;7FO&gt;$-S8X1A+H*F:E^V&gt;#QA;7ZU-T*@&gt;#!K&gt;W&amp;W:7:P=GV@=X2B&gt;'5M)'FO&gt;$-S8X1A+H.B&lt;8"M:8.0&gt;81M)'FO&gt;$-S8X1A&lt;'6O,#"D;'&amp;S)'2B&gt;'64&gt;(*J&lt;G&gt;&lt;83QA;7ZU-T*@&gt;#!K:'QM)'.I98)A&gt;'FN:6.U=GFO:VN&gt;,#"J&lt;H1T-F^U)#JU&lt;#QA:'^V9GRF)#JE&gt;#QA:'^V9GRF)&amp;F&lt;83E</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfoisCustomDesc" Type="Int">1</Property>
				<Property Name="Source[3].ExportedVI.VIProtoInfoVIProtoItemCount" Type="Int">14</Property>
				<Property Name="Source[3].itemID" Type="Ref">/My Computer/Waveform Gen.vi</Property>
				<Property Name="Source[3].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[3].type" Type="Str">ExportedVI</Property>
				<Property Name="SourceCount" Type="Int">4</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SineWaveGen</Property>
				<Property Name="TgtF_internalName" Type="Str">SineWaveGen</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 </Property>
				<Property Name="TgtF_productName" Type="Str">SineWaveGen</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{20889421-7B8B-4078-8E00-056882FBF2E7}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SineWaveGen.dll</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
