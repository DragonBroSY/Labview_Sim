<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.Project.Description" Type="Str">Contains examples illustrating the Fitting VIs.</Property>
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
			<Item Name="1-D Gaussian.vi" Type="VI" URL="../support/1-D Gaussian.vi"/>
			<Item Name="circle fit data.vi" Type="VI" URL="../support/circle fit data.vi"/>
			<Item Name="ellipse fit data.vi" Type="VI" URL="../support/ellipse fit data.vi"/>
			<Item Name="ellipse model.vi" Type="VI" URL="../support/ellipse model.vi"/>
			<Item Name="ellipse parameter estimate.vi" Type="VI" URL="../support/ellipse parameter estimate.vi"/>
			<Item Name="Exp data.vi" Type="VI" URL="../support/Exp data.vi"/>
			<Item Name="Gaussian surface data.vi" Type="VI" URL="../support/Gaussian surface data.vi"/>
			<Item Name="Gaussian surface graph.vi" Type="VI" URL="../support/Gaussian surface graph.vi"/>
			<Item Name="Gaussian surface parameter estimate.vi" Type="VI" URL="../support/Gaussian surface parameter estimate.vi"/>
			<Item Name="Gaussian surface with offset model.vi" Type="VI" URL="../support/Gaussian surface with offset model.vi"/>
			<Item Name="Linear data.vi" Type="VI" URL="../support/Linear data.vi"/>
			<Item Name="nonlinear spring constant objective function.vi" Type="VI" URL="../support/nonlinear spring constant objective function.vi"/>
			<Item Name="nonlinear spring rhs.vi" Type="VI" URL="../support/nonlinear spring rhs.vi"/>
			<Item Name="nonlinear spring simulation.vi" Type="VI" URL="../support/nonlinear spring simulation.vi"/>
			<Item Name="parametric curve data.vi" Type="VI" URL="../support/parametric curve data.vi"/>
			<Item Name="Power data.vi" Type="VI" URL="../support/Power data.vi"/>
			<Item Name="Regression Equation String.vi" Type="VI" URL="../support/Regression Equation String.vi"/>
			<Item Name="sum of 3 Gaussians with offset model.vi" Type="VI" URL="../support/sum of 3 Gaussians with offset model.vi"/>
		</Item>
		<Item Name="B Spline Fitting Demo.vi" Type="VI" URL="../B Spline Fitting Demo.vi"/>
		<Item Name="Circle fit.vi" Type="VI" URL="../Circle fit.vi"/>
		<Item Name="Ellipse fit.vi" Type="VI" URL="../Ellipse fit.vi"/>
		<Item Name="Financial Forecasting.vi" Type="VI" URL="../Financial Forecasting.vi"/>
		<Item Name="Gaussian surface with offset fit.vi" Type="VI" URL="../Gaussian surface with offset fit.vi"/>
		<Item Name="General Least Squares Fitting.vi" Type="VI" URL="../General Least Squares Fitting.vi"/>
		<Item Name="Linear, Exp, and Power Fit.vi" Type="VI" URL="../Linear, Exp, and Power Fit.vi"/>
		<Item Name="Nonlinear Spring Constant fit.vi" Type="VI" URL="../Nonlinear Spring Constant fit.vi"/>
		<Item Name="Parametric Curve Fit.vi" Type="VI" URL="../Parametric Curve Fit.vi"/>
		<Item Name="Predicting Cost.vi" Type="VI" URL="../Predicting Cost.vi"/>
		<Item Name="Regression Solver.vi" Type="VI" URL="../Regression Solver.vi"/>
		<Item Name="Robust linear fit.vi" Type="VI" URL="../Robust linear fit.vi"/>
		<Item Name="Sphere Fit.vi" Type="VI" URL="../Sphere Fit.vi"/>
		<Item Name="Sum of 3 Gaussians with offset fit.vi" Type="VI" URL="../Sum of 3 Gaussians with offset fit.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="3DPC_SurfacePlot.xctl" Type="XControl" URL="/&lt;vilib&gt;/Native 3D Graph/xcontrol/3DPC_SurfacePlot.xctl"/>
				<Item Name="Base Datatype.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Native 3D Graph/classes/Base Datatype.lvclass"/>
				<Item Name="Binary Search Sorted Array.vi" Type="VI" URL="/&lt;vilib&gt;/Native 3D Graph/Binary Search Sorted Array.vi"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Color to RGB.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/colorconv.llb/Color to RGB.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="Find First Error.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find First Error.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Line.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Native 3D Graph/classes/Line/Line.lvclass"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="LVSceneTextAlignment.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVSceneTextAlignment.ctl"/>
				<Item Name="LVTextureCoordinateArrayTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVTextureCoordinateArrayTypeDef.ctl"/>
				<Item Name="NI_3D Picture Control.lvlib" Type="Library" URL="/&lt;vilib&gt;/picture/3D Picture Control/NI_3D Picture Control.lvlib"/>
				<Item Name="NI_AAL_SigProc.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AAL_SigProc.lvlib"/>
				<Item Name="NI_AALBase.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALBase.lvlib"/>
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_Gmath.lvlib" Type="Library" URL="/&lt;vilib&gt;/gmath/NI_Gmath.lvlib"/>
				<Item Name="NI_Matrix.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/Matrix/NI_Matrix.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Parametric.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Native 3D Graph/classes/Parametric/Parametric.lvclass"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
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
				<Item Name="Surface.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/Native 3D Graph/classes/Surface/Surface.lvclass"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Trim Whitespace One-Sided.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace One-Sided.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
