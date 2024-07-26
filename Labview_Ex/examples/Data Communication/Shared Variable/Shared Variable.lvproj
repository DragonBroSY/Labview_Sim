<?xml version='1.0' encoding='UTF-8'?>
<Project Name="Server.lvproj" Type="Project" LVVersion="23008000" URL="Server.lvproj">
	<Property Name="CCSymbols" Type="Str"></Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.LV.ExampleFinder" Type="Str">&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;nidna:ExampleProgram 
    xmlns:nidna="http://www.ni.com/Schemas/DNA/1.0" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="http://www.ni.com/Schemas/DNA/1.0 ..\DNA\1.0\NiExampleProgram.xsd" 
    SchemaVersion="1.0" 
    ContentType="EXAMPLE" 
&lt;Title&gt;
	&lt;Text Locale="US"&gt;Shared Variable.lvproj&lt;/Text&gt;
&lt;/Title&gt;
&lt;Description&gt;
	&lt;Text Locale="US"&gt; This example demonstrates several different ways to read shared variable values from a server. Network-Published Shared Variables are best used for monitoring lossy status data between targets or networked computers. If your application requires lossless transfer of command data across different targets, consider using Network Streams. If your application requires deterministic data transfer across different loops on an RT target, consider using single-process, single-element RT FIFO Shared Variables.&lt;/Text&gt;
&lt;/Description&gt;
&lt;Keywords&gt; 
 &lt;Item&gt;DataSocket&lt;/Item&gt; 
 &lt;Item&gt;shared&lt;/Item&gt; 
 &lt;Item&gt;variables&lt;/Item&gt; 
 &lt;Item&gt;panels&lt;/Item&gt; 
 &lt;Item&gt;data&lt;/Item&gt; 
 &lt;Item&gt;client&lt;/Item&gt; 
 &lt;Item&gt;server&lt;/Item&gt; 
 &lt;Item&gt;variable&lt;/Item&gt; 
 &lt;Item&gt;Front&lt;/Item&gt; 
 &lt;Item&gt;dynamic&lt;/Item&gt; 
 &lt;Item&gt;dynamically&lt;/Item&gt; 
 &lt;Item&gt;bind&lt;/Item&gt; 
 &lt;Item&gt;binding&lt;/Item&gt; 
 &lt;Item&gt;bound&lt;/Item&gt; 
 &lt;Item&gt;psp&lt;/Item&gt; 
 &lt;Item&gt;ni-psp&lt;/Item&gt; 
 &lt;Item&gt;node&lt;/Item&gt; 
&lt;/Keywords&gt; 
&lt;Navigation&gt; 
 &lt;Item&gt;7220&lt;/Item&gt; 
 &lt;Item&gt;3098&lt;/Item&gt; 
 &lt;Item&gt;3021&lt;/Item&gt; 
&lt;/Navigation&gt; 
&lt;FileType&gt;LV Project&lt;/FileType&gt;
&lt;Metadata&gt;
&lt;Item Name="RTSupport"&gt;LV Project&lt;/Item&gt;
&lt;/Metadata&gt;
&lt;ProgrammingLanguages&gt;
&lt;Item&gt;LabVIEW&lt;/Item&gt;
&lt;/ProgrammingLanguages&gt;
&lt;RequiredSoftware&gt;
&lt;NiSoftware MinVersion="13.0"&gt;LabVIEW&lt;/NiSoftware&gt; 
&lt;/RequiredSoftware&gt;</Property>
	<Property Name="NI.Project.Description" Type="Str">This example demonstrates several different ways to read shared variable values from a server. Network-Published Shared Variables are best used for monitoring lossy status data between targets or networked computers. If your application requires lossless transfer of command data across different targets, consider using Network Streams. If your application requires deterministic data transfer across different loops on an RT target, consider using single-process, single-element RT FIFO Shared Variables.</Property>
	<Property Name="ProjectDefaultLibrary" Type="Ref">/My Computer/Server Variables.lvlib</Property>
	<Property Name="varPersistentID:{88D82679-0119-49C1-9AD5-FF69DE9FD557}" Type="Ref">/My Computer/Server Variables.lvlib/Monitor Value 1</Property>
	<Property Name="varPersistentID:{9DCA92E1-BC44-4595-BA7D-AC72E42EC9B7}" Type="Ref">/My Computer/Server Variables.lvlib/Monitor Value 2</Property>
	<Property Name="varPersistentID:{BA5642DF-F0B7-432B-89ED-FA341FCC9143}" Type="Ref">/My Computer/Client Variables.lvlib/Bound Monitor Value 2</Property>
	<Property Name="varPersistentID:{E578276F-7816-45B6-A6FB-250A0785586E}" Type="Ref">/My Computer/Client Variables.lvlib/Bound Monitor Value 1</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="CCSymbols" Type="Str">OS_hidden,Win;CPU_hidden,x86;OS,Win;CPU,x86;</Property>
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Shared Variable Server.vi" Type="VI" URL="../Shared Variable Server.vi"/>
		<Item Name="Shared Variable Client - Variable Nodes.vi" Type="VI" URL="../Shared Variable Client - Variable Nodes.vi"/>
		<Item Name="Shared Variable Client - Front Panel Binding.vi" Type="VI" URL="../Shared Variable Client - Front Panel Binding.vi"/>
		<Item Name="Shared Variable Client - Data Item Binding.vi" Type="VI" URL="../Shared Variable Client - Data Item Binding.vi"/>
		<Item Name="Shared Variable Client - Variable API.vi" Type="VI" URL="../Shared Variable Client - Variable API.vi"/>
		<Item Name="Shared Variable Client - DataSocket API.vi" Type="VI" URL="../Shared Variable Client - DataSocket API.vi"/>
		<Item Name="Client Variables.lvlib" Type="Library" URL="../Client Variables.lvlib"/>
		<Item Name="Server Variables.lvlib" Type="Library" URL="../Server Variables.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
