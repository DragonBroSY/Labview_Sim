<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="Localized" Type="Str">Localize</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Property Name="NI.LV.ExampleFinder" Type="Str">&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;ExampleProgram&gt;
&lt;Title&gt;
	&lt;Text Locale="US"&gt;Replacing The Function At The Heart Of An Algorithm At Run Time.lvproj&lt;/Text&gt;
&lt;/Title&gt;
&lt;Keywords&gt;
	&lt;Item&gt;loop&lt;/Item&gt;
	&lt;Item&gt;loops&lt;/Item&gt;
	&lt;Item&gt;parallel&lt;/Item&gt;
	&lt;Item&gt;communication&lt;/Item&gt;
	&lt;Item&gt;stream&lt;/Item&gt;
	&lt;Item&gt;parallelism&lt;/Item&gt;
	&lt;Item&gt;channels&lt;/Item&gt;
	&lt;Item&gt;asynchronous&lt;/Item&gt;
	&lt;Item&gt;functor&lt;/Item&gt;
	&lt;Item&gt;wire&lt;/Item&gt;
	&lt;Item&gt;refnum&lt;/Item&gt;
	&lt;Item&gt;Class&lt;/Item&gt;
	&lt;Item&gt;channel&lt;/Item&gt;
	&lt;Item&gt;VI&lt;/Item&gt;
&lt;/Keywords&gt;
&lt;Navigation&gt;
	&lt;Item&gt;3097&lt;/Item&gt;
&lt;/Navigation&gt;
&lt;FileType&gt;LV Project&lt;/FileType&gt;
&lt;Metadata&gt;
&lt;Item Name="RTSupport"&gt;LV Project RT&lt;/Item&gt;
&lt;/Metadata&gt;
&lt;ProgrammingLanguages&gt;
&lt;Item&gt;LabVIEW&lt;/Item&gt;
&lt;/ProgrammingLanguages&gt;
&lt;RequiredSoftware&gt;
&lt;NiSoftware MinVersion="11.0"&gt;LabVIEW&lt;/NiSoftware&gt; 
&lt;/RequiredSoftware&gt;
&lt;/ExampleProgram&gt;</Property>
	<Property Name="NI.Project.Description" Type="Str">This example delves into the general topic of passing a function into a subroutine for the subroutine to use as its core operation. This topic is made more complex when the function that you want to pass in needs additional parameters that are not going to be supplied when called by the subroutine. The example explores three solutions: VI refnums used as function pointers, LabVIEW classes used as "functors", and channel wires used as "closures".</Property>
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
			<Item Name="Used by multiple lessons" Type="Folder">
				<Item Name="Default Comparison Routine.vi" Type="VI" URL="../Default Comparison Routine.vi"/>
				<Item Name="Comparison By Given Name.vi" Type="VI" URL="../Comparison By Given Name.vi"/>
				<Item Name="Comparison By Nth Element.vi" Type="VI" URL="../Comparison By Nth Element.vi"/>
				<Item Name="Comparison By Priority Month Direct.vi" Type="VI" URL="../Comparison By Priority Month Direct.vi"/>
				<Item Name="Comparison By Priority Month.vi" Type="VI" URL="../Comparison By Priority Month.vi"/>
				<Item Name="Comparison By Year Born.vi" Type="VI" URL="../Comparison By Year Born.vi"/>
				<Item Name="Person Information.ctl" Type="VI" URL="../Person Information.ctl"/>
			</Item>
			<Item Name="Birth Date To Birthday.vi" Type="VI" URL="../Birth Date To Birthday.vi"/>
			<Item Name="Bubble Sort Person Array Using Direct SubVI Call.vi" Type="VI" URL="../Bubble Sort Person Array Using Direct SubVI Call.vi"/>
			<Item Name="Bubble Sort Person Array Using Parameters.vi" Type="VI" URL="../Bubble Sort Person Array Using Parameters.vi"/>
			<Item Name="Bubble Sort Person Array Using Refnum.vi" Type="VI" URL="../Bubble Sort Person Array Using Refnum.vi"/>
			<Item Name="Bubble Sort Person Array Using Functors.vi" Type="VI" URL="../Bubble Sort Person Array Using Functors.vi"/>
			<Item Name="Bubble Sort Person Array Using Channel Closure.vi" Type="VI" URL="../Bubble Sort Person Array Using Channel Closure.vi"/>
			<Item Name="Bubble Sort Person Array Using Malleable VI.vim" Type="VI" URL="../Bubble Sort Person Array Using Malleable VI.vim"/>
			<Item Name="Person Compare Closure Inputs.ctl" Type="VI" URL="../Person Compare Closure Inputs.ctl"/>
			<Item Name="Wrap Person Array.vim" Type="VI" URL="../People Wrapper/Wrap Person Array.vim"/>
			<Item Name="Unwrap Person Array.vim" Type="VI" URL="../People Wrapper/Unwrap Person Array.vim"/>
			<Item Name="Swapper.lvclass" Type="LVClass" URL="../Swapper/Swapper.lvclass"/>
			<Item Name="Swapper Using Given Name.lvclass" Type="LVClass" URL="../Swapper Using Given Name/Swapper Using Given Name.lvclass"/>
			<Item Name="Swapper Using Year Born.lvclass" Type="LVClass" URL="../Swapper Using Year Born/Swapper Using Year Born.lvclass"/>
			<Item Name="Swapper For Priority Month.lvclass" Type="LVClass" URL="../Swapper For Priority Month/Swapper For Priority Month.lvclass"/>
			<Item Name="Generic Comparer.lvclass" Type="LVClass" URL="../Generic Comparer/Generic Comparer.lvclass"/>
			<Item Name="People Wrapper.lvclass" Type="LVClass" URL="../People Wrapper/People Wrapper.lvclass"/>
			<Item Name="People By Year Wrapper.lvclass" Type="LVClass" URL="../People By Year Wrapper/People By Year Wrapper.lvclass"/>
			<Item Name="People By Name Wrapper.lvclass" Type="LVClass" URL="../People By Name Wrapper/People By Name Wrapper.lvclass"/>
			<Item Name="People By Month Wrapper.lvclass" Type="LVClass" URL="../People By Month Wrapper/People By Month Wrapper.lvclass"/>
		</Item>
		<Item Name="Replacing The Heart - Lesson 1.vi" Type="VI" URL="../Replacing The Heart - Lesson 1.vi"/>
		<Item Name="Replacing The Heart - Lesson 1.5.vi" Type="VI" URL="../Replacing The Heart - Lesson 1.5.vi"/>
		<Item Name="Replacing The Heart - Lesson 2.vi" Type="VI" URL="../Replacing The Heart - Lesson 2.vi"/>
		<Item Name="Replacing The Heart - Lesson 3.vi" Type="VI" URL="../Replacing The Heart - Lesson 3.vi"/>
		<Item Name="Replacing The Heart - Lesson 4.vi" Type="VI" URL="../Replacing The Heart - Lesson 4.vi"/>
		<Item Name="Replacing The Heart - Lesson 5.vi" Type="VI" URL="../Replacing The Heart - Lesson 5.vi"/>
		<Item Name="Replacing The Heart - Lesson 6.vi" Type="VI" URL="../Replacing The Heart - Lesson 6.vi"/>
		<Item Name="Replacing The Heart - Lesson 7.vi" Type="VI" URL="../Replacing The Heart - Lesson 7.vi"/>
		<Item Name="Replacing The Heart - Lesson 8.vi" Type="VI" URL="../Replacing The Heart - Lesson 8.vi"/>
		<Item Name="Replacing The Heart - Lesson 9.vi" Type="VI" URL="../Replacing The Heart - Lesson 9.vi"/>
		<Item Name="Replacing The Heart - Lesson 10.vi" Type="VI" URL="../Replacing The Heart - Lesson 10.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="One Element Stream-bool.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/One Element Stream-bool.lvlib"/>
			<Item Name="Pipe1Logic.lvclass" Type="LVClass" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/Pipe1Logic/Pipe1Logic.lvclass"/>
			<Item Name="_ChannelSupport.lvlib" Type="Library" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/_ChannelSupport.lvlib"/>
			<Item Name="ChannelProbePositionAndTitle.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbePositionAndTitle.vi"/>
			<Item Name="ChannelProbeWindowStagger.vi" Type="VI" URL="/&lt;resource&gt;/ChannelSupport/_ChannelSupport/ChannelProbeWindowStagger.vi"/>
			<Item Name="One Element Stream-t&apos;Person Compare Closure Inputs.ctl&apos;.lvlib" Type="Library" URL="/&lt;extravilib&gt;/ChannelInstances/One Element Stream-t&apos;Person Compare Closure Inputs.ctl&apos;.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
