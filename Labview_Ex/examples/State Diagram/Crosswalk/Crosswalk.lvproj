<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="subVIs" Type="Folder" URL="../subVIs">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Crosswalk w Button.vi" Type="VI" URL="../Crosswalk w Button.vi"/>
		<Item Name="Intersection With Configurable Controllers.vi" Type="VI" URL="../Intersection With Configurable Controllers.vi"/>
		<Item Name="Intersection With Crosswalks.vi" Type="VI" URL="../Intersection With Crosswalks.vi"/>
		<Item Name="Intersection.vi" Type="VI" URL="../Intersection.vi"/>
		<Item Name="Simple Crosswalk (subVIs).vi" Type="VI" URL="../Simple Crosswalk (subVIs).vi"/>
		<Item Name="Simple Crosswalk.vi" Type="VI" URL="../Simple Crosswalk.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_SDE_InitOnFirstCall2.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/NI_SDE_InitOnFirstCall2.vim"/>
				<Item Name="Sync.vim" Type="VI" URL="/&lt;vilib&gt;/Utility/Sync.vim"/>
			</Item>
			<Item Name="_ChannelSupport.lvlib" Type="Library" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/_ChannelSupport.lvlib"/>
			<Item Name="ChannelProbePositionAndTitle.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbePositionAndTitle.vi"/>
			<Item Name="ChannelProbeWindowStagger.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbeWindowStagger.vi"/>
			<Item Name="One Element Stream-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/One Element Stream-bool.lvlib"/>
			<Item Name="One Element Stream-u16.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/One Element Stream-u16.lvlib"/>
			<Item Name="Pipe1Logic.lvclass" Type="LVClass" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/Pipe1Logic/Pipe1Logic.lvclass"/>
			<Item Name="Tag-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/Tag-bool.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
