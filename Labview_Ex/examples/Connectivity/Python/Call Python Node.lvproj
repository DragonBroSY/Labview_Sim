<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="Localized" Type="Str">Localize</Property>
	<Property Name="NI.Project.Description" Type="Str">Contains examples pertaining to calling Python code from LabVIEW.</Property>
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
		<Item Name="Helper VIs" Type="Folder">
			<Item Name="GetExampleModulePath.vi" Type="VI" URL="../support/GetExampleModulePath.vi"/>
			<Item Name="GetNumpyExampleModulePath.vi" Type="VI" URL="../support/GetNumpyExampleModulePath.vi"/>
			<Item Name="GetVirtualEnvironmentExampleModulePath.vi" Type="VI" URL="../support/GetVirtualEnvironmentExampleModulePath.vi"/>
			<Item Name="PythonVersionsEnum_Namedtuples.ctl" Type="VI" URL="../support/PythonVersionsEnum_Namedtuples.ctl"/>
			<Item Name="ToPythonVersionString.vi" Type="VI" URL="../support/ToPythonVersionString.vi"/>
			<Item Name="ToPythonVersionString_Namedtuples.vi" Type="VI" URL="../support/ToPythonVersionString_Namedtuples.vi"/>
		</Item>
		<Item Name="Python Script" Type="Folder">
			<Item Name="ExamplePythonModule.py" Type="Document" URL="../support/ExamplePythonModule.py"/>
			<Item Name="NumpyExampleModule.py" Type="Document" URL="../support/NumpyExampleModule.py"/>
			<Item Name="VirtualEnvironmentExampleModule.py" Type="Document" URL="../support/VirtualEnvironmentExampleModule.py"/>
		</Item>
		<Item Name="Typedefs" Type="Folder">
			<Item Name="PythonVersionsEnum.ctl" Type="VI" URL="../support/PythonVersionsEnum.ctl"/>
		</Item>
		<Item Name="PythonNode_AddTwoDoubles.vi" Type="VI" URL="../PythonNode_AddTwoDoubles.vi"/>
		<Item Name="PythonNode_AddTwoIntegers.vi" Type="VI" URL="../PythonNode_AddTwoIntegers.vi"/>
		<Item Name="PythonNode_AppendToIntegerArray.vi" Type="VI" URL="../PythonNode_AppendToIntegerArray.vi"/>
		<Item Name="PythonNode_ComputeCrossProduct.vi" Type="VI" URL="../PythonNode_ComputeCrossProduct.vi"/>
		<Item Name="PythonNode_ComputeEuclideanDistance.vi" Type="VI" URL="../PythonNode_ComputeEuclideanDistance.vi"/>
		<Item Name="PythonNode_ConcatenateTwoStrings.vi" Type="VI" URL="../PythonNode_ConcatenateTwoStrings.vi"/>
		<Item Name="PythonNode_NumpyMatmul.vi" Type="VI" URL="../PythonNode_NumpyMatmul.vi"/>
		<Item Name="PythonNode_RemoveNoiseFromSignalUsingAnaconda.vi" Type="VI" URL="../PythonNode_RemoveNoiseFromSignalUsingAnaconda.vi"/>
		<Item Name="PythonNode_RemoveNoiseFromSignalUsingVenv.vi" Type="VI" URL="../PythonNode_RemoveNoiseFromSignalUsingVenv.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Open Anaconda Python Session.vi" Type="VI" URL="/&lt;vilib&gt;/Python/Open Anaconda Python Session.vi"/>
				<Item Name="Open Venv Python Session.vi" Type="VI" URL="/&lt;vilib&gt;/Python/Open Venv Python Session.vi"/>
				<Item Name="Open Virtual Environment Session.vi" Type="VI" URL="/&lt;vilib&gt;/Python/Open Virtual Environment Session.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
