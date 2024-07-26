<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str">Contains examples illustrating different VI Properties.</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Support VIs" Type="Folder">
			<Item Name="Helper SubVI - Debugging Disabled.vi" Type="VI" URL="../support/Helper SubVI - Debugging Disabled.vi"/>
			<Item Name="Helper SubVI - Debugging Enabled.vi" Type="VI" URL="../support/Helper SubVI - Debugging Enabled.vi"/>
			<Item Name="Helper SubVI - Inlined.vi" Type="VI" URL="../support/Helper SubVI - Inlined.vi"/>
			<Item Name="Helper SubVI - Subroutine.vi" Type="VI" URL="../support/Helper SubVI - Subroutine.vi"/>
			<Item Name="Reentrant SubVI.vi" Type="VI" URL="../support/Reentrant SubVI.vi"/>
		</Item>
		<Item Name="Reentrant VI Execution.vi" Type="VI" URL="../Reentrant VI Execution.vi"/>
		<Item Name="VI Execution Properties.vi" Type="VI" URL="../VI Execution Properties.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
