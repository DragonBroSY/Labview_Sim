<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="Localized" Type="Str">Localize</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.LV.ExampleFinder" Type="Str">&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ExampleProgram&gt;
&lt;Title&gt;
	&lt;Text Locale="US"&gt;Malleable VIs - Class Adaptation.lvproj&lt;/Text&gt;
&lt;/Title&gt;
&lt;Keywords&gt;
	&lt;Item&gt;polymorphic&lt;/Item&gt;
	&lt;Item&gt;malleable&lt;/Item&gt;
	&lt;Item&gt;VI&lt;/Item&gt;
	&lt;Item&gt;Class&lt;/Item&gt;
	&lt;Item&gt;adaptive&lt;/Item&gt;
	&lt;Item&gt;interface&lt;/Item&gt;
	&lt;Item&gt;VIs&lt;/Item&gt;
&lt;/Keywords&gt;
&lt;Navigation&gt;
	&lt;Item&gt;7038&lt;/Item&gt;
&lt;/Navigation&gt;
&lt;FileType&gt;LV Project&lt;/FileType&gt;
&lt;Metadata&gt;
&lt;Item Name="RTSupport"&gt;LV Project&lt;/Item&gt;
&lt;/Metadata&gt;
&lt;ProgrammingLanguages&gt;
&lt;Item&gt;LabVIEW&lt;/Item&gt;
&lt;/ProgrammingLanguages&gt;
&lt;RequiredSoftware&gt;
&lt;NiSoftware MinVersion="17.1"&gt;LabVIEW&lt;/NiSoftware&gt; 
&lt;/RequiredSoftware&gt;
&lt;/ExampleProgram&gt;</Property>
	<Property Name="NI.Project.Description" Type="Str">This example assumes you are familiar with the basics of malleable VIs. In this example, you will learn about the special adaptation that malleable VIs use with LabVIEW classes. You will learn about the concept of an "interface," as defined by the malleable VI, and the code reuse enabled by implementing that interface on multiple classes.
</Property>
	<Item Name="My Computer" Type="My Computer">
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
		<Item Name="SubVIs" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Lesson 1" Type="Folder">
				<Item Name="Air.vi" Type="VI" URL="../Air.vi"/>
				<Item Name="Generate Thermal Test Cases.vi" Type="VI" URL="../Generate Thermal Test Cases.vi"/>
				<Item Name="Thermal Sensor.lvclass" Type="LVClass" URL="../Thermal Sensor/Thermal Sensor.lvclass"/>
				<Item Name="Thermal Test.lvclass" Type="LVClass" URL="../Thermal Test/Thermal Test.lvclass"/>
				<Item Name="Cooling System.lvclass" Type="LVClass" URL="../Cooling System/Cooling System.lvclass"/>
				<Item Name="Evaporative Cooler.lvclass" Type="LVClass" URL="../Evaporative Cooler/Evaporative Cooler.lvclass"/>
				<Item Name="J-Type Thermocouple.lvclass" Type="LVClass" URL="../J-Type Thermocouple/J-Type Thermocouple.lvclass"/>
			</Item>
			<Item Name="Lesson 2" Type="Folder">
				<Item Name="Compressor Cooler.lvclass" Type="LVClass" URL="../Compressor Cooler/Compressor Cooler.lvclass"/>
			</Item>
			<Item Name="Run Thermal Tests.vim" Type="VI" URL="../Run Thermal Tests.vim"/>
		</Item>
		<Item Name="Class Adaptation Lesson 1.vi" Type="VI" URL="../Class Adaptation Lesson 1.vi"/>
		<Item Name="Class Adaptation Lesson 2.vi" Type="VI" URL="../Class Adaptation Lesson 2.vi"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
