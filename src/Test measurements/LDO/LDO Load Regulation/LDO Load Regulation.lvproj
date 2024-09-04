<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
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
		<Item Name="Reusables" Type="Folder" URL="../../../Reusables">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LDO Load Regulation.lvlib" Type="Library" URL="../LDO Load Regulation.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niDCPower Abort With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Abort With Channels.vi"/>
				<Item Name="niDCPower Abort.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Abort.vi"/>
				<Item Name="niDCPower Configure Current Level.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Current Level.vi"/>
				<Item Name="niDCPower Configure Current Limit.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Current Limit.vi"/>
				<Item Name="niDCPower Configure Output Enabled.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Output Enabled.vi"/>
				<Item Name="niDCPower Configure Output Function.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Output Function.vi"/>
				<Item Name="niDCPower Configure Source Mode With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Source Mode With Channels.vi"/>
				<Item Name="niDCPower Configure Voltage Level.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Configure Voltage Level.vi"/>
				<Item Name="niDCPower Current Limit Behavior.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Current Limit Behavior.ctl"/>
				<Item Name="niDCPower Initiate.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Initiate.vi"/>
				<Item Name="niDCPower IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower IVI Error Converter.vi"/>
				<Item Name="niDCPower Measure Multiple.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Measure Multiple.vi"/>
				<Item Name="niDCPower Output Function.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Output Function.ctl"/>
				<Item Name="niDCPower Source Mode.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Source Mode.ctl"/>
				<Item Name="niDCPower Wait For Event - Event.ctl" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Wait For Event - Event.ctl"/>
				<Item Name="niDCPower Wait For Event With Channels.vi" Type="VI" URL="/&lt;instrlib&gt;/niDCPower/nidcpower.llb/niDCPower Wait For Event With Channels.vi"/>
				<Item Name="niDMM Abort.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Abort.vi"/>
				<Item Name="niDMM IVI Error Converter.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM IVI Error Converter.vi"/>
				<Item Name="niDMM Read.vi" Type="VI" URL="/&lt;instrlib&gt;/niDMM/nidmm.llb/niDMM Read.vi"/>
			</Item>
			<Item Name="user.lib" Type="Folder">
				<Item Name="DevLicense.lvlib" Type="Library" URL="/&lt;userlib&gt;/_Soliton/Measurement Suite/Reusables/License/DevLicense.lvlib"/>
				<Item Name="Error 6001.vi" Type="VI" URL="/&lt;userlib&gt;/_Soliton/Measurement Suite/Reusables/Errors/Error 6001.vi"/>
				<Item Name="Pin Name to Reference.vim" Type="VI" URL="/&lt;userlib&gt;/_Soliton/Measurement Suite/Reusables/InstrumentSessionAPIs/Pin Name to Reference.vim"/>
				<Item Name="Plugin Common.lvlib" Type="Library" URL="/&lt;userlib&gt;/_Soliton/Measurement Suite/Reusables/Plugin Common/Plugin Common.lvlib"/>
				<Item Name="Plugin Queue Driver.lvlib" Type="Library" URL="/&lt;userlib&gt;/_Soliton/Measurement Suite/Reusables/Queue Driver/Plugin Queue Driver.lvlib"/>
				<Item Name="Search 1D Array (Boolean)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (Boolean)__ogtk.vi"/>
				<Item Name="Search 1D Array (CDB)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (CDB)__ogtk.vi"/>
				<Item Name="Search 1D Array (CSG)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (CSG)__ogtk.vi"/>
				<Item Name="Search 1D Array (CXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (CXT)__ogtk.vi"/>
				<Item Name="Search 1D Array (DBL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (DBL)__ogtk.vi"/>
				<Item Name="Search 1D Array (EXT)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (EXT)__ogtk.vi"/>
				<Item Name="Search 1D Array (I8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (I8)__ogtk.vi"/>
				<Item Name="Search 1D Array (I16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (I16)__ogtk.vi"/>
				<Item Name="Search 1D Array (I32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (I32)__ogtk.vi"/>
				<Item Name="Search 1D Array (I64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (I64)__ogtk.vi"/>
				<Item Name="Search 1D Array (LVObject)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (LVObject)__ogtk.vi"/>
				<Item Name="Search 1D Array (Path)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (Path)__ogtk.vi"/>
				<Item Name="Search 1D Array (SGL)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (SGL)__ogtk.vi"/>
				<Item Name="Search 1D Array (String)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (String)__ogtk.vi"/>
				<Item Name="Search 1D Array (U8)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (U8)__ogtk.vi"/>
				<Item Name="Search 1D Array (U16)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (U16)__ogtk.vi"/>
				<Item Name="Search 1D Array (U32)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (U32)__ogtk.vi"/>
				<Item Name="Search 1D Array (U64)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (U64)__ogtk.vi"/>
				<Item Name="Search 1D Array (Variant)__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search 1D Array (Variant)__ogtk.vi"/>
				<Item Name="Search Array__ogtk.vi" Type="VI" URL="/&lt;userlib&gt;/_OpenG.lib/array/array.llb/Search Array__ogtk.vi"/>
				<Item Name="SessionManagerApiPath.vi" Type="VI" URL="/&lt;userlib&gt;/_Soliton/Measurement Suite/Reusables/InstrumentSessionAPIs/SessionManagerApiPath.vi"/>
			</Item>
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Stall Data Flow.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Stall Data Flow.vim"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="nidcpower_64.dll" Type="Document" URL="nidcpower_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="nidmm_64.dll" Type="Document" URL="nidmm_64.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="user32.dll" Type="Document" URL="user32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name=" LDO Load Regulation" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{B4841ED8-62BD-4456-84E7-0308AF6452C2}</Property>
				<Property Name="Bld_buildSpecName" Type="Str"> LDO Load Regulation</Property>
				<Property Name="Bld_excludeDependentDLLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/D/git/modern-labs/measurement-suite-measurements/builds/LDO/ppl</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{FABC40BD-EC4B-41B0-9278-6FA0CDFDDE74}</Property>
				<Property Name="Bld_version.build" Type="Int">14</Property>
				<Property Name="Bld_version.major" Type="Int">21</Property>
				<Property Name="Destination[0].destName" Type="Str">LDO Load Regulation.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/D/git/modern-labs/measurement-suite-measurements/builds/LDO/ppl/NI_AB_PROJECTNAME.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/D/git/modern-labs/measurement-suite-measurements/builds/LDO/ppl</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{571C33D5-10F2-4B30-803E-F6F90C4E5211}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/LDO Load Regulation.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Soliton Technologies</Property>
				<Property Name="TgtF_fileDescription" Type="Str"> LDO Load Regulation</Property>
				<Property Name="TgtF_internalName" Type="Str"> LDO Load Regulation</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 Soliton Technologies</Property>
				<Property Name="TgtF_productName" Type="Str"> LDO Load Regulation</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4D241A33-E1A7-4A88-9E90-8D18447BFFF5}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">LDO Load Regulation.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="LDOLoadRegulationPkg" Type="{E661DAE2-7517-431F-AC41-30807A3BDA38}">
				<Property Name="NIPKG_addToFeed" Type="Bool">false</Property>
				<Property Name="NIPKG_allDependenciesToFeed" Type="Bool">false</Property>
				<Property Name="NIPKG_allDependenciesToSystemLink" Type="Bool">false</Property>
				<Property Name="NIPKG_certificates" Type="Bool">true</Property>
				<Property Name="NIPKG_createInstaller" Type="Bool">false</Property>
				<Property Name="NIPKG_feedLocation" Type="Path">../builds/NI_AB_PROJECTNAME/LDOLoadRegulationPkg/Feed</Property>
				<Property Name="NIPKG_feedLocation.Type" Type="Str">relativeToCommon</Property>
				<Property Name="NIPKG_installerArtifacts" Type="Str"></Property>
				<Property Name="NIPKG_installerBuiltBefore" Type="Bool">false</Property>
				<Property Name="NIPKG_installerDestination" Type="Path">../builds/NI_AB_PROJECTNAME/LDOLoadRegulationPkg/Package Installer</Property>
				<Property Name="NIPKG_installerDestination.Type" Type="Str">relativeToCommon</Property>
				<Property Name="NIPKG_lastBuiltPackage" Type="Str">soliton-ldo-load-regulation_21.0.0-13_windows_x64.nipkg</Property>
				<Property Name="NIPKG_license" Type="Ref"></Property>
				<Property Name="NIPKG_packageVersion" Type="Bool">false</Property>
				<Property Name="NIPKG_releaseNotes" Type="Str"></Property>
				<Property Name="NIPKG_storeProduct" Type="Bool">false</Property>
				<Property Name="NIPKG_VisibleForRuntimeDeployment" Type="Bool">false</Property>
				<Property Name="PKG_actions.Count" Type="Int">0</Property>
				<Property Name="PKG_autoIncrementBuild" Type="Bool">true</Property>
				<Property Name="PKG_autoSelectDeps" Type="Bool">false</Property>
				<Property Name="PKG_buildNumber" Type="Int">14</Property>
				<Property Name="PKG_buildSpecName" Type="Str">LDOLoadRegulationPkg</Property>
				<Property Name="PKG_dependencies.Count" Type="Int">2</Property>
				<Property Name="PKG_dependencies[0].Enhanced" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[0].MaxVersion" Type="Str"></Property>
				<Property Name="PKG_dependencies[0].MaxVersionInclusive" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[0].MinVersion" Type="Str">21.0.0-13</Property>
				<Property Name="PKG_dependencies[0].MinVersionType" Type="Str">Inclusive</Property>
				<Property Name="PKG_dependencies[0].NIPKG.DisplayName" Type="Str">Soliton MeasurementSuite Framework</Property>
				<Property Name="PKG_dependencies[0].Package.Name" Type="Str">soliton-ms-measurementsuite-framework</Property>
				<Property Name="PKG_dependencies[0].Package.Section" Type="Str">Infrastructure</Property>
				<Property Name="PKG_dependencies[0].Package.Synopsis" Type="Str">Soliton MeasurementSuite Framework</Property>
				<Property Name="PKG_dependencies[0].Relationship" Type="Str">Required Dependency</Property>
				<Property Name="PKG_dependencies[0].Type" Type="Str">NIPKG</Property>
				<Property Name="PKG_dependencies[1].Enhanced" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[1].MaxVersion" Type="Str"></Property>
				<Property Name="PKG_dependencies[1].MaxVersionInclusive" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[1].MinVersion" Type="Str">21.0.0-1</Property>
				<Property Name="PKG_dependencies[1].MinVersionType" Type="Str">Inclusive</Property>
				<Property Name="PKG_dependencies[1].NIPKG.DisplayName" Type="Str">Source Sans Pro Font</Property>
				<Property Name="PKG_dependencies[1].Package.Name" Type="Str">source-sans-pro-font</Property>
				<Property Name="PKG_dependencies[1].Package.Section" Type="Str">Infrastructure</Property>
				<Property Name="PKG_dependencies[1].Package.Synopsis" Type="Str">Source Sans Pro Font</Property>
				<Property Name="PKG_dependencies[1].Relationship" Type="Str">Required Dependency</Property>
				<Property Name="PKG_dependencies[1].Type" Type="Str">NIPKG</Property>
				<Property Name="PKG_dependencies[2].Enhanced" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[2].MaxVersion" Type="Str"></Property>
				<Property Name="PKG_dependencies[2].MaxVersionInclusive" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[2].MinVersion" Type="Str">20.0.0.49152-0+f0</Property>
				<Property Name="PKG_dependencies[2].MinVersionType" Type="Str">Inclusive</Property>
				<Property Name="PKG_dependencies[2].NIPKG.DisplayName" Type="Str">NI-DMM Runtime for NI 408x DMMs</Property>
				<Property Name="PKG_dependencies[2].Package.Name" Type="Str">ni-dmm-runtime-408x-devices</Property>
				<Property Name="PKG_dependencies[2].Package.Section" Type="Str">Drivers</Property>
				<Property Name="PKG_dependencies[2].Package.Synopsis" Type="Str">Provides run-time components required to deploy applications using NI 408x DMMs. Refer to the NI-DMM readme on ni.com/manuals for a full list of supported hardware.</Property>
				<Property Name="PKG_dependencies[2].Relationship" Type="Str">Required Dependency</Property>
				<Property Name="PKG_dependencies[2].Type" Type="Str">NIPKG</Property>
				<Property Name="PKG_dependencies[3].Enhanced" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[3].MaxVersion" Type="Str"></Property>
				<Property Name="PKG_dependencies[3].MaxVersionInclusive" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[3].MinVersion" Type="Str">20.0.0.49152-0+f0</Property>
				<Property Name="PKG_dependencies[3].MinVersionType" Type="Str">Inclusive</Property>
				<Property Name="PKG_dependencies[3].NIPKG.DisplayName" Type="Str">NI-DMM Runtime for NI 407x and 4065 DMMs</Property>
				<Property Name="PKG_dependencies[3].Package.Name" Type="Str">ni-dmm-runtime-daqmx-devices</Property>
				<Property Name="PKG_dependencies[3].Package.Section" Type="Str">Drivers</Property>
				<Property Name="PKG_dependencies[3].Package.Synopsis" Type="Str">Provides run-time components required to deploy applications using NI 407x and 4065 DMMs. Refer to the NI-DMM readme on ni.com/manuals for a full list of supported hardware.</Property>
				<Property Name="PKG_dependencies[3].Relationship" Type="Str">Required Dependency</Property>
				<Property Name="PKG_dependencies[3].Type" Type="Str">NIPKG</Property>
				<Property Name="PKG_dependencies[4].Enhanced" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[4].MaxVersion" Type="Str"></Property>
				<Property Name="PKG_dependencies[4].MaxVersionInclusive" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[4].MinVersion" Type="Str">20.1.0.49152-0+f0</Property>
				<Property Name="PKG_dependencies[4].MinVersionType" Type="Str">Inclusive</Property>
				<Property Name="PKG_dependencies[4].NIPKG.DisplayName" Type="Str">LabVIEW Runtime (64-bit)</Property>
				<Property Name="PKG_dependencies[4].Package.Name" Type="Str">ni-labview-2020-runtime-engine</Property>
				<Property Name="PKG_dependencies[4].Package.Section" Type="Str">Programming Environments</Property>
				<Property Name="PKG_dependencies[4].Package.Synopsis" Type="Str">The LabVIEW Runtime is a software add-on that enables engineers to run executables on a nondevelopment machine.</Property>
				<Property Name="PKG_dependencies[4].Relationship" Type="Str">Required Dependency</Property>
				<Property Name="PKG_dependencies[4].Type" Type="Str">NIPKG</Property>
				<Property Name="PKG_dependencies[5].Enhanced" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[5].MaxVersion" Type="Str"></Property>
				<Property Name="PKG_dependencies[5].MaxVersionInclusive" Type="Bool">false</Property>
				<Property Name="PKG_dependencies[5].MinVersion" Type="Str">0.1.0-1</Property>
				<Property Name="PKG_dependencies[5].MinVersionType" Type="Str">Inclusive</Property>
				<Property Name="PKG_dependencies[5].NIPKG.DisplayName" Type="Str">Soliton MeasurementSuite SessionManagerCore</Property>
				<Property Name="PKG_dependencies[5].Package.Name" Type="Str">soliton-ms-sessionmanagercore</Property>
				<Property Name="PKG_dependencies[5].Package.Section" Type="Str">Infrastructure</Property>
				<Property Name="PKG_dependencies[5].Package.Synopsis" Type="Str">Soliton MeasurementSuite SessionManagerCore</Property>
				<Property Name="PKG_dependencies[5].Relationship" Type="Str">Required Dependency</Property>
				<Property Name="PKG_dependencies[5].Type" Type="Str">NIPKG</Property>
				<Property Name="PKG_description" Type="Str"></Property>
				<Property Name="PKG_destinations.Count" Type="Int">4</Property>
				<Property Name="PKG_destinations[0].ID" Type="Str">{3BD2BD18-EF6D-4D48-980C-D44B379E87AD}</Property>
				<Property Name="PKG_destinations[0].Subdir.Directory" Type="Str">Soliton Technologies</Property>
				<Property Name="PKG_destinations[0].Subdir.Parent" Type="Str">root_5</Property>
				<Property Name="PKG_destinations[0].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_destinations[1].ID" Type="Str">{5B964610-CB83-442C-A3DC-DDEE80C24B9E}</Property>
				<Property Name="PKG_destinations[1].Subdir.Directory" Type="Str">MeasurementSuite</Property>
				<Property Name="PKG_destinations[1].Subdir.Parent" Type="Str">{3BD2BD18-EF6D-4D48-980C-D44B379E87AD}</Property>
				<Property Name="PKG_destinations[1].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_destinations[2].ID" Type="Str">{AA07E912-D608-4BF9-A394-209AF0D75224}</Property>
				<Property Name="PKG_destinations[2].Subdir.Directory" Type="Str">CodeModules</Property>
				<Property Name="PKG_destinations[2].Subdir.Parent" Type="Str">{5B964610-CB83-442C-A3DC-DDEE80C24B9E}</Property>
				<Property Name="PKG_destinations[2].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_destinations[3].ID" Type="Str">{E3C3B7BA-5D90-4209-9F85-2803A83171C7}</Property>
				<Property Name="PKG_destinations[3].Subdir.Directory" Type="Str">LDO</Property>
				<Property Name="PKG_destinations[3].Subdir.Parent" Type="Str">{AA07E912-D608-4BF9-A394-209AF0D75224}</Property>
				<Property Name="PKG_destinations[3].Type" Type="Str">Subdir</Property>
				<Property Name="PKG_displayName" Type="Str">Soliton LDO Load Regulation</Property>
				<Property Name="PKG_displayVersion" Type="Str"></Property>
				<Property Name="PKG_feedDescription" Type="Str"></Property>
				<Property Name="PKG_feedName" Type="Str"></Property>
				<Property Name="PKG_homepage" Type="Str">https://www.solitontech.com</Property>
				<Property Name="PKG_hostname" Type="Str"></Property>
				<Property Name="PKG_maintainer" Type="Str">Soliton Technologies &lt;sales@solitontech.com&gt;</Property>
				<Property Name="PKG_output" Type="Path">/D/git/modern-labs/measurement-suite-measurements/builds/LDO/pkg</Property>
				<Property Name="PKG_packageName" Type="Str">soliton-ldo-load-regulation</Property>
				<Property Name="PKG_publishToSystemLink" Type="Bool">false</Property>
				<Property Name="PKG_section" Type="Str">Infrastructure (hidden)</Property>
				<Property Name="PKG_shortcuts.Count" Type="Int">0</Property>
				<Property Name="PKG_sources.Count" Type="Int">1</Property>
				<Property Name="PKG_sources[0].Destination" Type="Str">{E3C3B7BA-5D90-4209-9F85-2803A83171C7}</Property>
				<Property Name="PKG_sources[0].ID" Type="Ref">/My Computer/Build Specifications/ LDO Load Regulation</Property>
				<Property Name="PKG_sources[0].Type" Type="Str">Build</Property>
				<Property Name="PKG_synopsis" Type="Str">Soliton LDO Load Regulation</Property>
				<Property Name="PKG_version" Type="Str">21.0.0</Property>
			</Item>
		</Item>
	</Item>
</Project>
