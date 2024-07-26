<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str">Contains examples pertaining to ordinary differential equations (ODE).</Property>
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
			<Item Name="DAE Simple Pendulum Simulation_Draw Coord.vi" Type="VI" URL="../subVIs/DAE Simple Pendulum Simulation_Draw Coord.vi"/>
			<Item Name="DAE Spring Pendulum Simulation_Draw Spring.vi" Type="VI" URL="../subVIs/DAE Spring Pendulum Simulation_Draw Spring.vi"/>
			<Item Name="DAE Spring Pendulum Simulation_Func.vi" Type="VI" URL="../subVIs/DAE Spring Pendulum Simulation_Func.vi"/>
			<Item Name="ODE substitute parameters.vi" Type="VI" URL="../subVIs/ODE substitute parameters.vi"/>
			<Item Name="ODE-CircuitRHS.vi" Type="VI" URL="../subVIs/ODE-CircuitRHS.vi"/>
			<Item Name="ODE-DiseaseRHS.vi" Type="VI" URL="../subVIs/ODE-DiseaseRHS.vi"/>
			<Item Name="ODE-PredatorPreyRHS.vi" Type="VI" URL="../subVIs/ODE-PredatorPreyRHS.vi"/>
		</Item>
		<Item Name="DAE Simple Pendulum Simulation.vi" Type="VI" URL="../DAE Simple Pendulum Simulation.vi"/>
		<Item Name="DAE Spring Pendulum Simulation.vi" Type="VI" URL="../DAE Spring Pendulum Simulation.vi"/>
		<Item Name="Linear Differential Equation Solving.vi" Type="VI" URL="../Linear Differential Equation Solving.vi"/>
		<Item Name="ODE-Circuit.vi" Type="VI" URL="../ODE-Circuit.vi"/>
		<Item Name="ODE-Disease.vi" Type="VI" URL="../ODE-Disease.vi"/>
		<Item Name="ODE-PredatorPrey.vi" Type="VI" URL="../ODE-PredatorPrey.vi"/>
		<Item Name="Planar Three Body Problem.vi" Type="VI" URL="../Planar Three Body Problem.vi"/>
		<Item Name="Process Control Explorer.vi" Type="VI" URL="../Process Control Explorer.vi"/>
		<Item Name="Shooting Method.vi" Type="VI" URL="../Shooting Method.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Draw Arc.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Arc.vi"/>
				<Item Name="Draw Circle by Radius.vi" Type="VI" URL="/&lt;vilib&gt;/picture/pictutil.llb/Draw Circle by Radius.vi"/>
				<Item Name="Draw Line.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Line.vi"/>
				<Item Name="Draw Multiple Lines.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Multiple Lines.vi"/>
				<Item Name="Draw Point.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Point.vi"/>
				<Item Name="Draw Text at Point.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Text at Point.vi"/>
				<Item Name="Draw Text in Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Draw Text in Rect.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Move Pen.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Move Pen.vi"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_DAE.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_DAE.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="PCT Pad String.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/PCT Pad String.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set Pen State.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Set Pen State.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="SIM Adams Eval Error Core.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/Shared/Solvers/SIM Adams.llb/SIM Adams Eval Error Core.vi"/>
				<Item Name="SIM Adams Eval Error.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/Shared/Solvers/SIM Adams.llb/SIM Adams Eval Error.vi"/>
				<Item Name="SIM Adams manager.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/Shared/Solvers/SIM Adams.llb/SIM Adams manager.vi"/>
				<Item Name="SIM comprehensive manager (for core).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM comprehensive manager (for core).vi"/>
				<Item Name="SIM Continuous Solvers.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Continuous Solvers.ctl"/>
				<Item Name="SIM diagram eval stage.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM diagram eval stage.ctl"/>
				<Item Name="SIM Diagram Parameters.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Utility/Implementation/Shared/SIM Diagram Parameters.ctl"/>
				<Item Name="SIM discrete data.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM discrete data.ctl"/>
				<Item Name="SIM Discrete state data.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Discrete state data.ctl"/>
				<Item Name="SIM Equal Times.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Utility/SIM Equal Times.vi"/>
				<Item Name="SIM Generate Adams Coeffs.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/Shared/Solvers/SIM Adams.llb/SIM Generate Adams Coeffs.vi"/>
				<Item Name="SIM Integrator collector (for core) (vector).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM Integrator collector (for core) (vector).vi"/>
				<Item Name="SIM Integrator distributor (for core) (vector).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM Integrator distributor (for core) (vector).vi"/>
				<Item Name="SIM Integrator init (for core) (vector).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM Integrator init (for core) (vector).vi"/>
				<Item Name="SIM limit type.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM limit type.ctl"/>
				<Item Name="SIM Registry Node Header.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Registry.llb/SIM Registry Node Header.ctl"/>
				<Item Name="SIM Registry Node Record.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Registry.llb/SIM Registry Node Record.ctl"/>
				<Item Name="SIM Report Error.vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/Utility/Implementation/SIM Report Error.vi"/>
				<Item Name="SIM simulation data.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM simulation data.ctl"/>
				<Item Name="SIM Simulation Registry Error.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Registry.llb/SIM Simulation Registry Error.ctl"/>
				<Item Name="SIM Simulation Registry.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM Registry.llb/SIM Simulation Registry.ctl"/>
				<Item Name="SIM solver state data.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM solver state data.ctl"/>
				<Item Name="SIM stop (for core).vi" Type="VI" URL="/&lt;vilib&gt;/Simulation/ContinuousLinear/Implementation/SIM Integrator for core.llb/SIM stop (for core).vi"/>
				<Item Name="SIM trigger type.ctl" Type="VI" URL="/&lt;vilib&gt;/Simulation/Implementation/Shared/SIM trigger type.ctl"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
