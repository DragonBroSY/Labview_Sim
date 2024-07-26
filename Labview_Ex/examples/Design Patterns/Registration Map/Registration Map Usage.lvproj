<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.LV.ExampleFinder" Type="Str">&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ExampleProgram&gt;
&lt;Title&gt;
	&lt;Text Locale="US"&gt;Registration Map Usage.lvproj&lt;/Text&gt;
&lt;/Title&gt;
&lt;Keywords&gt;
	&lt;Item&gt;map&lt;/Item&gt;
	&lt;Item&gt;set&lt;/Item&gt;
	&lt;Item&gt;lookup&lt;/Item&gt;
	&lt;Item&gt;table&lt;/Item&gt;
&lt;/Keywords&gt;
&lt;Navigation&gt;
	&lt;Item&gt;9620&lt;/Item&gt;
&lt;/Navigation&gt;
&lt;FileType&gt;LV Project&lt;/FileType&gt;
&lt;Metadata&gt;
&lt;Item Name="RTSupport"&gt;LV Project&lt;/Item&gt;
&lt;/Metadata&gt;
&lt;ProgrammingLanguages&gt;
&lt;Item&gt;LabVIEW&lt;/Item&gt;
&lt;/ProgrammingLanguages&gt;
&lt;RequiredSoftware&gt;
&lt;NiSoftware MinVersion="19.0"&gt;LabVIEW&lt;/NiSoftware&gt; 
&lt;/RequiredSoftware&gt;
&lt;/ExampleProgram&gt;</Property>
	<Property Name="NI.Project.Description" Type="Str">This example demonstrates how to use the set and map data types to create a registration map with high performance.

A common requirement of software is to have one set of actors each register for some services. The services maintain the list of registered actors. Each service does setup work or starts operation only when the first actor registers and then does cleanup only after the last actor unregisters. These lookup tables often need to be quite fast despite potentially growing quite large. This example shows how to build and use such a map.
</Property>
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
		<Item Name="SubVIs" Type="Folder">
			<Item Name="Event Text SubVIs" Type="Folder">
				<Item Name="Event Text For Check Registration.vi" Type="VI" URL="../Event Text For Check Registration.vi"/>
				<Item Name="Event Text For Register.vi" Type="VI" URL="../Event Text For Register.vi"/>
				<Item Name="Event Text For Unregister Many.vi" Type="VI" URL="../Event Text For Unregister Many.vi"/>
				<Item Name="Event Text For Unregister One.vi" Type="VI" URL="../Event Text For Unregister One.vi"/>
			</Item>
			<Item Name="Cleaning Service.vi" Type="VI" URL="../Cleaning Service.vi"/>
			<Item Name="Do Cleaning Action.ctl" Type="VI" URL="../Do Cleaning Action.ctl"/>
			<Item Name="Do Cleaning Service.vi" Type="VI" URL="../Do Cleaning Service.vi"/>
			<Item Name="End Regular Cleaning Service.vi" Type="VI" URL="../End Regular Cleaning Service.vi"/>
			<Item Name="Identify Control Index.vi" Type="VI" URL="../Identify Control Index.vi"/>
			<Item Name="Move Window Into Unused Position.vi" Type="VI" URL="../Move Window Into Unused Position.vi"/>
			<Item Name="Register For Hotel.vi" Type="VI" URL="../Register For Hotel.vi"/>
			<Item Name="Unregister From Hotel.vi" Type="VI" URL="../Unregister From Hotel.vi"/>
		</Item>
		<Item Name="Registration Map Usage.vi" Type="VI" URL="../Registration Map Usage.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVMapReplaceAction.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMapReplaceAction.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Registration Map.lvlib" Type="Library" URL="/&lt;vilib&gt;/registration map/Registration Map.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
