<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.LV.ExampleFinder" Type="Str">&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ExampleProgram&gt;
&lt;Title&gt;
	&lt;Text Locale="US"&gt;Basic Interfaces.lvproj&lt;/Text&gt;
&lt;/Title&gt;
&lt;Keywords&gt;
	&lt;Item&gt;interface&lt;/Item&gt;
	&lt;Item&gt;interfaces&lt;/Item&gt;
	&lt;Item&gt;classes&lt;/Item&gt;
	&lt;Item&gt;class&lt;/Item&gt;
&lt;/Keywords&gt;
&lt;Navigation&gt;
	&lt;Item&gt;8419&lt;/Item&gt;
&lt;/Navigation&gt;
&lt;FileType&gt;LV Project&lt;/FileType&gt;
&lt;Metadata&gt;
&lt;Item Name="RTSupport"&gt;LV Project&lt;/Item&gt;
&lt;/Metadata&gt;
&lt;ProgrammingLanguages&gt;
&lt;Item&gt;LabVIEW&lt;/Item&gt;
&lt;/ProgrammingLanguages&gt;
&lt;RequiredSoftware&gt;
&lt;NiSoftware MinVersion="20.0"&gt;LabVIEW&lt;/NiSoftware&gt; 
&lt;/RequiredSoftware&gt;
&lt;/ExampleProgram&gt;</Property>
	<Property Name="NI.Project.Description" Type="Str">An introduction to LabVIEW interfaces. This application demonstrates one of the uses of LabVIEW interfaces. It shows how an interface may be used to represent a common role in the system and then allow multiple classes to fulfill that role.</Property>
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
		<Item Name="Tools Example" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Tools" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="Tool.lvclass" Type="LVClass" URL="../Tool/Tool.lvclass"/>
				<Item Name="Prying Tool.lvclass" Type="LVClass" URL="../Prying Tool/Prying Tool.lvclass"/>
				<Item Name="Pounding Tool.lvclass" Type="LVClass" URL="../Pounding Tool/Pounding Tool.lvclass"/>
				<Item Name="Rotating Tool.lvclass" Type="LVClass" URL="../Rotating Tool/Rotating Tool.lvclass"/>
				<Item Name="Nailer.lvclass" Type="LVClass" URL="../Nailer/Nailer.lvclass"/>
				<Item Name="Mallet.lvclass" Type="LVClass" URL="../Mallet/Mallet.lvclass"/>
				<Item Name="Flathead.lvclass" Type="LVClass" URL="../Flathead/Flathead.lvclass"/>
				<Item Name="Wrench.lvclass" Type="LVClass" URL="../Wrench/Wrench.lvclass"/>
				<Item Name="Prybar.lvclass" Type="LVClass" URL="../Prybar/Prybar.lvclass"/>
				<Item Name="Bottle Opener.lvclass" Type="LVClass" URL="../Bottle Opener/Bottle Opener.lvclass"/>
			</Item>
			<Item Name="House Key.lvclass" Type="LVClass" URL="../House Key/House Key.lvclass"/>
			<Item Name="Box.lvclass" Type="LVClass" URL="../Box/Box.lvclass"/>
			<Item Name="Lever.lvclass" Type="LVClass" URL="../Lever/Lever.lvclass"/>
			<Item Name="Poundable.lvclass" Type="LVClass" URL="../Poundable/Poundable.lvclass"/>
			<Item Name="Pryable.lvclass" Type="LVClass" URL="../Pryable/Pryable.lvclass"/>
		</Item>
		<Item Name="1. Opening the Box.vi" Type="VI" URL="../1. Opening the Box.vi"/>
		<Item Name="2. Class and Interface Coercion Rules.vi" Type="VI" URL="../2. Class and Interface Coercion Rules.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Get File Extension.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Get File Extension.vi"/>
				<Item Name="Get LV Class Name.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/LVClass/Get LV Class Name.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
