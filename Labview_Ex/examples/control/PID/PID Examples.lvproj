<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="Localized" Type="Str">Localize</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="IOScan.Faults" Type="Str"></Property>
		<Property Name="IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="IOScan.Period" Type="UInt">10000</Property>
		<Property Name="IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="IOScan.Priority" Type="UInt">9</Property>
		<Property Name="IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="IOScan.StartEngineOnDeploy" Type="Bool">false</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Simple PID" Type="Folder">
			<Item Name="General PID Simulator.vi" Type="VI" URL="../General PID Simulator.vi"/>
			<Item Name="General PID Simulator with Alarm.vi" Type="VI" URL="../General PID Simulator with Alarm.vi"/>
			<Item Name="General PID with Fault Protection.vi" Type="VI" URL="../General PID with Fault Protection.vi"/>
			<Item Name="Manual-Automatic Control.vi" Type="VI" URL="../Manual-Automatic Control.vi"/>
			<Item Name="Manual-Automatic Control with Saturation.vi" Type="VI" URL="../Manual-Automatic Control with Saturation.vi"/>
			<Item Name="Manual-Automatic Control with Engineering Units.vi" Type="VI" URL="../Manual-Automatic Control with Engineering Units.vi"/>
			<Item Name="Dual Channel PID.vi" Type="VI" URL="../Dual Channel PID.vi"/>
			<Item Name="Multi Channel PID.vi" Type="VI" URL="../Multi Channel PID.vi"/>
			<Item Name="Simulation - Lead-Lag.vi" Type="VI" URL="../Simulation - Lead-Lag.vi"/>
		</Item>
		<Item Name="Additional Features" Type="Folder">
			<Item Name="PID with Noise Plant.vi" Type="VI" URL="../PID with Noise Plant.vi"/>
			<Item Name="Setpoint Profile Simulator.vi" Type="VI" URL="../Setpoint Profile Simulator.vi"/>
			<Item Name="Gain Scheduling Simulator.vi" Type="VI" URL="../Gain Scheduling Simulator.vi"/>
			<Item Name="Setpoint Profile with Gain Scheduling on Rising and Falling.vi" Type="VI" URL="../Setpoint Profile with Gain Scheduling on Rising and Falling.vi"/>
			<Item Name="Gain Scheduling on Rising and Falling Process Variable.vi" Type="VI" URL="../Gain Scheduling on Rising and Falling Process Variable.vi"/>
		</Item>
		<Item Name="Autotuning" Type="Folder">
			<Item Name="Autotuning PID Online.vi" Type="VI" URL="../Autotuning PID Online.vi"/>
			<Item Name="Autotuning PID Offline.vi" Type="VI" URL="../Autotuning PID Offline.vi"/>
			<Item Name="Autotuning PID Online and Inline.vi" Type="VI" URL="../Autotuning PID Online and Inline.vi"/>
			<Item Name="Autotuning PID Online with Gain Scheduling.vi" Type="VI" URL="../Autotuning PID Online with Gain Scheduling.vi"/>
			<Item Name="Autotuning Smith Predictor.vi" Type="VI" URL="../Autotuning Smith Predictor.vi"/>
			<Item Name="General Auto PID Simulator.vi" Type="VI" URL="../General Auto PID Simulator.vi"/>
		</Item>
		<Item Name="Case Studies" Type="Folder">
			<Item Name="Simulation - Cascade and Feedforward Surge Tank Level.vi" Type="VI" URL="../Simulation - Cascade and Feedforward Surge Tank Level.vi"/>
			<Item Name="Simulation - Cascade and Selector.vi" Type="VI" URL="../Simulation - Cascade and Selector.vi"/>
			<Item Name="Simulation - Tank Level.vi" Type="VI" URL="../Simulation - Tank Level.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Close Panel.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/victl.llb/Close Panel.vi"/>
				<Item Name="Get Instrument State.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/victl.llb/Get Instrument State.vi"/>
				<Item Name="lvpidtkt.dll" Type="Document" URL="/&lt;vilib&gt;/addons/control/pid/lvpidtkt.dll"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_AdvCtrl_continuous linear.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/advanced/NI_AdvCtrl_continuous linear.lvlib"/>
				<Item Name="NI_AdvCtrl_nonlinear.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/advanced/NI_AdvCtrl_nonlinear.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="NI_PID__prctrl compat.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID__prctrl compat.lvlib"/>
				<Item Name="NI_PID_autopid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_autopid.lvlib"/>
				<Item Name="NI_PID_pid.lvlib" Type="Library" URL="/&lt;vilib&gt;/addons/control/pid/NI_PID_pid.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="Open Panel.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/victl.llb/Open Panel.vi"/>
				<Item Name="PID Online (Relay Feedback).vi" Type="VI" URL="/&lt;vilib&gt;/addons/control/pid/autopid.llb/PID Online (Relay Feedback).vi"/>
				<Item Name="PID Table (Ultimate Gain and Frequency - Ziegler Nichols).vi" Type="VI" URL="/&lt;vilib&gt;/addons/control/pid/autopid.llb/PID Table (Ultimate Gain and Frequency - Ziegler Nichols).vi"/>
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
			<Item Name="Deadband Simulator.vi" Type="VI" URL="../subVIs/Deadband Simulator.vi"/>
			<Item Name="Filtered Noise.vi" Type="VI" URL="../subVIs/Filtered Noise.vi"/>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="MIMO Plant Simulator.vi" Type="VI" URL="../subVIs/MIMO Plant Simulator.vi"/>
			<Item Name="Plant Simulator in Engineering Units.vi" Type="VI" URL="../subVIs/Plant Simulator in Engineering Units.vi"/>
			<Item Name="Plant Simulator.vi" Type="VI" URL="../subVIs/Plant Simulator.vi"/>
			<Item Name="Plant System.vi" Type="VI" URL="../subVIs/Plant System.vi"/>
			<Item Name="Scale Change for Input.vi" Type="VI" URL="../subVIs/Scale Change for Input.vi"/>
			<Item Name="Scale Change for Output.vi" Type="VI" URL="../subVIs/Scale Change for Output.vi"/>
			<Item Name="Shift Register Delay.vi" Type="VI" URL="../subVIs/Shift Register Delay.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
