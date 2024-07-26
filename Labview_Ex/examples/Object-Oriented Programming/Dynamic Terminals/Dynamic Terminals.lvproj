<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.LV.ExampleFinder" Type="Str">&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;nidna:ExampleProgram 
    xmlns:nidna="http://www.ni.com/Schemas/DNA/1.0" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xsi:schemaLocation="http://www.ni.com/Schemas/DNA/1.0 ..\DNA\1.0\NiExampleProgram.xsd" 
    SchemaVersion="1.0" 
    ContentType="EXAMPLE" 
&lt;Title&gt;
	&lt;Text Locale="US"&gt;Dynamic Terminals.lvproj&lt;/Text&gt;
&lt;/Title&gt;
&lt;Description&gt;
	&lt;Text Locale="US"&gt;This example contrasts the differences between dynamic and static dispatch terminals.

Dynamic input terminals allow a member VI to be overridden in a derived class.

When a member VI modifies an object (or passes it through), it should use one or more dynamic output terminals. A dynamic output terminal must have a dynamic input terminal as its data source through all wire paths on the diagram.

Refer to the LabVIEW Help for more information about LabVIEW object-oriented programming.&lt;/Text&gt;
&lt;/Description&gt;
&lt;Keywords&gt;
	&lt;Item&gt;object-oriented&lt;/Item&gt;
	&lt;Item&gt;classes&lt;/Item&gt;
	&lt;Item&gt;dynamic&lt;/Item&gt;
	&lt;Item&gt;static&lt;/Item&gt;
	&lt;Item&gt;dispatch&lt;/Item&gt;
	&lt;Item&gt;terminals&lt;/Item&gt;
&lt;/Keywords&gt;
&lt;Navigation&gt;
	&lt;Item&gt;6700&lt;/Item&gt;
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
&lt;NiSoftware MinVersion="8.0"&gt;LabVIEW&lt;/NiSoftware&gt; 
&lt;/RequiredSoftware&gt;
</Property>
	<Property Name="NI.Project.Description" Type="Str">This example contrasts the differences between dynamic and static dispatch terminals.

Dynamic input terminals allow a member VI to be overridden in a derived class.

When a member VI modifies an object (or passes it through), it should use one or more dynamic output terminals. A dynamic output terminal must have a dynamic input terminal as its data source through all wire paths on the diagram.

Refer to the LabVIEW Help for more information about LabVIEW object-oriented programming.</Property>
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
		<Item Name="Dynamic Terminals.vi" Type="VI" URL="../Dynamic Terminals.vi"/>
		<Item Name="Class Alpha.lvclass" Type="LVClass" URL="../Class Alpha/Class Alpha.lvclass"/>
		<Item Name="Class Beta.lvclass" Type="LVClass" URL="../Class Beta/Class Beta.lvclass"/>
		<Item Name="Class Gamma.lvclass" Type="LVClass" URL="../Class Gamma/Class Gamma.lvclass"/>
		<Item Name="Class Delta.lvclass" Type="LVClass" URL="../Class Delta/Class Delta.lvclass"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
