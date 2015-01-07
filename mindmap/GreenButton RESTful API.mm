<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Function Blocks and Green Button RESTful API" LOCALIZED_STYLE_REF="default" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1420659174194" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66"><hook NAME="MapStyle" zoom="0.7567887">
    <properties show_icon_for_attributes="true" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node">
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="12"/>
<edge COLOR="#339900"/>
<node TEXT="FB_01 Valid NAESB Standard" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_46921121" CREATED="1406733980040" MODIFIED="1406908688523" TEXT_SHORTENED="true">
<edge COLOR="#339900"/>
<attribute NAME="SupportedBy" VALUE="PG&amp;E; OpenCommons; Seattle City Light; SCE; SDG&amp;E"/>
</node>
<node TEXT="FB_03 Core Green Button Connect My Data (API)" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1099005008" CREATED="1406734867534" MODIFIED="1420659575867" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66" LINK="http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API/#!/DataCustodian.Batch">
<edge COLOR="#339900"/>
<attribute NAME="SupportedBy" VALUE="PG&amp;E; SDG&amp;E; SCE; LondonHydro"/>
<attribute NAME="TestsAvailable" VALUE="01Jan2015"/>
<hook NAME="FirstGroupNode"/>
<node TEXT="DataCustodianOriginates.Notification" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_876544617" CREATED="1406730826201" MODIFIED="1406906591648" LINK="http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API/#!/DataCustodian.Batch">
<node TEXT="POST" LOCALIZED_STYLE_REF="default" ID="ID_613611151" CREATED="1406730826206" MODIFIED="1406738328380"/>
<node TEXT="https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification" LOCALIZED_STYLE_REF="default" ID="ID_1354892398" CREATED="1406730826211" MODIFIED="1406738328384" LINK="https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification">
<font SIZE="6"/>
</node>
<node TEXT="AccessTokens" ID="ID_1152384735" CREATED="1406737402294" MODIFIED="1406737412552"/>
</node>
<node TEXT="DataCustodian.ReadServiceStatus.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1839509847" CREATED="1406730825336" MODIFIED="1406908476388" LINK="http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API/#!/DataCustodian">
<node TEXT="GET" ID="ID_772034510" CREATED="1406730825340" MODIFIED="1406738361291"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadServiceStatus" ID="ID_498623358" CREATED="1406730825345" MODIFIED="1406738361293" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadServiceStatus"/>
<node TEXT="AccessTokens" ID="ID_1206664701" CREATED="1406738366933" MODIFIED="1406738377503">
<node TEXT="datacustodian_access_token" ID="ID_132341923" CREATED="1406738378107" MODIFIED="1406738386401"/>
<node TEXT="client_access_token" ID="ID_47243540" CREATED="1406738387389" MODIFIED="1406738396746"/>
<node TEXT="upload_access_token" ID="ID_348984544" CREATED="1406738397333" MODIFIED="1406738402049"/>
</node>
</node>
<node TEXT="DataCustodian.Batch.Subscription.Member.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_152582318" CREATED="1406730824721" MODIFIED="1406908484737" LINK="http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API/#!/DataCustodian.Batch">
<node TEXT="GET" ID="ID_1494128958" CREATED="1406730824726" MODIFIED="1406738423474"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Subscription/{SubscriptionID}" ID="ID_598264488" CREATED="1406730824730" MODIFIED="1406738423476" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Subscription/"/>
<node TEXT="AccessTokens" ID="ID_1821651234" CREATED="1406738439139" MODIFIED="1406738442412">
<node TEXT="datacustodian_access_token" ID="ID_630009136" CREATED="1406738443469" MODIFIED="1406738454186"/>
<node TEXT="access_token" ID="ID_418963432" CREATED="1406738455414" MODIFIED="1406738469698"/>
</node>
</node>
<node TEXT="DataCustodian.Authorization.Member.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_523215838" CREATED="1406730824546" MODIFIED="1406908494946">
<node TEXT="GET" ID="ID_207334840" CREATED="1406730824550" MODIFIED="1406738509128"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/{AuthorizationID}" ID="ID_1622468758" CREATED="1406730824555" MODIFIED="1406738509129" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/"/>
<node TEXT="AccessTokens" ID="ID_1933278578" CREATED="1406738512528" MODIFIED="1406738528922">
<node TEXT="datacustodian_access_token" ID="ID_1243963039" CREATED="1406738529269" MODIFIED="1406738545916"/>
<node TEXT="client_access_token" ID="ID_375504571" CREATED="1406738546713" MODIFIED="1406738558960"/>
</node>
</node>
<node TEXT="DataCustodian.Authorization.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_461001915" CREATED="1406730824524" MODIFIED="1406908502216">
<node TEXT="GET" ID="ID_506478897" CREATED="1406730824528" MODIFIED="1406739588359"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization" ID="ID_529294210" CREATED="1406730824533" MODIFIED="1406739588359" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization"/>
<node TEXT="AccessTokens" ID="ID_1929477778" CREATED="1406738512528" MODIFIED="1406739588359">
<node TEXT="datacustodian_access_token" ID="ID_889990829" CREATED="1406738529269" MODIFIED="1406738545916"/>
<node TEXT="client_access_token" ID="ID_1374581478" CREATED="1406738546713" MODIFIED="1406738558960"/>
</node>
</node>
<node TEXT="DataCustodian.ApplicationInformation.Member.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_485538735" CREATED="1406730824455" MODIFIED="1406908511394">
<node TEXT="GET" ID="ID_1999064534" CREATED="1406730824459" MODIFIED="1406739594897"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/{ApplicationInformationID}" ID="ID_1001197856" CREATED="1406730824464" MODIFIED="1406739594898" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/"/>
<node TEXT="AccessTokens" ID="ID_893359185" CREATED="1406738512528" MODIFIED="1406739588355">
<node TEXT="datacustodian_access_token" ID="ID_169235549" CREATED="1406738529269" MODIFIED="1406738545916"/>
<node TEXT="registration_access_token" ID="ID_1531897900" CREATED="1406738546713" MODIFIED="1406738742955"/>
</node>
</node>
</node>
<node TEXT="FB_04 Interval Metering" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1452778873" CREATED="1406736139057" MODIFIED="1420659479340" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="SCE; SDG&amp;E; PG&amp;E"/>
<attribute NAME="SupportedBy" VALUE="LondonHydro; PG&amp;E; SDG&amp;E; SCE"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_05 Interval Electric Metering" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1491802016" CREATED="1406736145129" MODIFIED="1420659527902" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="SDG&amp;E; SCE; PG&amp;E"/>
<attribute NAME="SupportedBy" VALUE="LondonHydro; PG&amp;E; SDG&amp;E; SCE"/>
<edge COLOR="#339900"/>
<richcontent TYPE="DETAILS">

<html>
  

  <head>

  </head>
  <body>
  </body>
</html>

</richcontent>
</node>
<node TEXT="FB_06 Demand Electric Metering" POSITION="right" ID="ID_542921629" CREATED="1406904811942" MODIFIED="1406908688530">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_07 Net Metering" POSITION="right" ID="ID_549807828" CREATED="1406904831478" MODIFIED="1406908688531">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_08 Forward and Reverse Metering" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1154260089" CREATED="1406736152582" MODIFIED="1406908688531" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="SCE; SDG&amp;E; PG&amp;E"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_09 Register Values" POSITION="right" ID="ID_1356189451" CREATED="1406904855532" MODIFIED="1406908688532">
<edge COLOR="#339900"/>
</node>
<node TEXT=":FB_10 Gas" POSITION="right" ID="ID_95469561" CREATED="1406904870899" MODIFIED="1406908688532">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_11 Water" POSITION="right" ID="ID_69651224" CREATED="1406905093524" MODIFIED="1406908688533">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_12 Cost of Interval Data" POSITION="right" ID="ID_735788809" CREATED="1406905106716" MODIFIED="1406908688533">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_13" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1847526179" CREATED="1406736160351" MODIFIED="1420659434904" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="SCE; SDG&amp;E; PG&amp;E"/>
<attribute NAME="TestsAvailable" VALUE="01Nov 2014"/>
<attribute NAME="SupportedBy" VALUE="LondonHydro; PG&amp;E; SDG&amp;E; SCE"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_14" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1760141768" CREATED="1406736177074" MODIFIED="1420659369070" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="SDG&amp;E; PG&amp;E"/>
<attribute NAME="SupportedBy" VALUE="LondonHydro; PG&amp;E; SDG&amp;E; SCE"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_15 Usage Summary" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_207496652" CREATED="1406736182867" MODIFIED="1420659290775" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="PG&amp;E"/>
<attribute NAME="SupportedBy" VALUE="LondonHydro; PG&amp;E; SDG&amp;E; SCE"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_16 Usage Summary with Cost" POSITION="right" ID="ID_135182400" CREATED="1406905140628" MODIFIED="1406908688535">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_17 Power Quality Summary" POSITION="right" ID="ID_1237603420" CREATED="1406905155459" MODIFIED="1406908688536">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_18" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_864842222" CREATED="1406736190197" MODIFIED="1406908688536" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="PG&amp;E; SDG&amp;E; SCE"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_19" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1521802430" CREATED="1406736197039" MODIFIED="1406908688537" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="SCE; SDG&amp;E; PG&amp;E"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_27 Usage Summary with Demand and Previous Day Attributes" POSITION="right" ID="ID_990472937" CREATED="1406905171884" MODIFIED="1406908688537">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_28 Usage Summary Costs for Currnet Billing Period" POSITION="right" ID="ID_409337352" CREATED="1406905202492" MODIFIED="1406908688538">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_29 Temperature Metering" POSITION="right" ID="ID_1506403688" CREATED="1406905234620" MODIFIED="1406908688538">
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_31" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1129876725" CREATED="1406736205206" MODIFIED="1406908688538" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="SCE; SDG&amp;E; PG&amp;E"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_32 Resource Level REST (API)" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1605920244" CREATED="1406733987097" MODIFIED="1406908727484" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66">
<attribute NAME="SupportedBy" VALUE="PG&amp;E; LondonHydro"/>
<edge COLOR="#339900"/>
<node TEXT="DataCustodian.BatchMember" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1557552499" CREATED="1406730824746" MODIFIED="1406906908712">
<node TEXT="GET" ID="ID_112571491" CREATED="1406730824751" MODIFIED="1406739178666"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Subscription/{SubscriptionID}/UsagePoint/{UsagePointId}" ID="ID_914066558" CREATED="1406730824756" MODIFIED="1406739178666" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Subscription/"/>
<node TEXT="DA" ID="ID_588155952" CREATED="1406730824761" MODIFIED="1406739178665"/>
</node>
<node TEXT="DataCustodian.ElectricPowerQualitySummary" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_979813133" CREATED="1406730825496" MODIFIED="1406739231929">
<node TEXT="GET" ID="ID_780286810" CREATED="1406730825502" MODIFIED="1406739236315"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerQualitySummary" ID="ID_1770489" CREATED="1406730825507" MODIFIED="1406739236315" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_747700557" CREATED="1406730825512" MODIFIED="1406739236314"/>
</node>
<node TEXT="DataCustodian.ElectricPowerQualitySummaryMember" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1092124315" CREATED="1406730825544" MODIFIED="1406906848956">
<node TEXT="GET" ID="ID_172248560" CREATED="1406730825548" MODIFIED="1406739236311"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerQualitySummary/{ElectricPowerQualitySummaryID}" ID="ID_1560840510" CREATED="1406730825554" MODIFIED="1406739236312" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_32999063" CREATED="1406730825559" MODIFIED="1406739236310"/>
</node>
<node TEXT="DataCustodian.ElectricPowerUsageSummary" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1119165452" CREATED="1406730825628" MODIFIED="1406739236310">
<node TEXT="GET" ID="ID_1194972893" CREATED="1406730825634" MODIFIED="1406739236308"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerUsageSumary" ID="ID_232570578" CREATED="1406730825639" MODIFIED="1406739236308" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_1984999804" CREATED="1406730825643" MODIFIED="1406739236307"/>
</node>
<node TEXT="DataCustodian.ElectricPowerUsageSummaryMember" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_378678931" CREATED="1406730825680" MODIFIED="1406906952467">
<node TEXT="GET" ID="ID_1207398677" CREATED="1406730825687" MODIFIED="1406739236303"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerUsageSumary/{ElectricPowerUsageSummaryID}" ID="ID_664669385" CREATED="1406730825693" MODIFIED="1406906952465" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_292043930" CREATED="1406730825700" MODIFIED="1406739205211"/>
</node>
<node TEXT="DataCustodian.IntervalBlock" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_973983916" CREATED="1406730825883" MODIFIED="1406739236319">
<node TEXT="GET" ID="ID_1328831705" CREATED="1406730825888" MODIFIED="1406739236317"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading/{MeterReadingID}/IntervalBlock" ID="ID_294950650" CREATED="1406730825894" MODIFIED="1406739236318" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_1105210550" CREATED="1406730825914" MODIFIED="1406739236317"/>
</node>
<node TEXT="DataCustodian.IntervalBlockMember" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_564357665" CREATED="1406730825967" MODIFIED="1406906880005">
<node TEXT="GET" ID="ID_661674812" CREATED="1406730825974" MODIFIED="1406739205201"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading/{MeterReadingID}/IntervalBlock/{IntervalBlockID}" ID="ID_1055812166" CREATED="1406730825981" MODIFIED="1406739205201" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_511043144" CREATED="1406730825988" MODIFIED="1406739205200"/>
</node>
<node TEXT="DataCustodian.LocalTimeParameters" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_753493336" CREATED="1406730824935" MODIFIED="1406739205190">
<node TEXT="GET" ID="ID_1538883045" CREATED="1406730824939" MODIFIED="1406739178668"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters" ID="ID_643670410" CREATED="1406730824944" MODIFIED="1406739178669" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters"/>
<node TEXT="DA" ID="ID_740060078" CREATED="1406730824948" MODIFIED="1406739178668"/>
</node>
<node TEXT="DataCustodian.LocalTimeParametersMember" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1076301380" CREATED="1406730824983" MODIFIED="1406906889924">
<node TEXT="GET" ID="ID_882773212" CREATED="1406730824989" MODIFIED="1406739205197"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/{LocalTimeParametersID}" ID="ID_1075931406" CREATED="1406730824996" MODIFIED="1406739205198" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/"/>
<node TEXT="DA" ID="ID_1999478928" CREATED="1406730825002" MODIFIED="1406739205197"/>
</node>
<node TEXT="DataCustodian.MeterReading" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1271835184" CREATED="1406730825754" MODIFIED="1406739205211">
<node TEXT="GET" ID="ID_396859956" CREATED="1406730825759" MODIFIED="1406739205209"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading" ID="ID_742703882" CREATED="1406730825763" MODIFIED="1406739205209" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_987522817" CREATED="1406730825767" MODIFIED="1406739205208"/>
</node>
<node TEXT="DataCustodian.MeterReadingMember" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_269798018" CREATED="1406730825801" MODIFIED="1406906971391">
<node TEXT="GET" ID="ID_71451595" CREATED="1406730825805" MODIFIED="1406739231933"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading/{MeterReadingID}" ID="ID_389060484" CREATED="1406730825810" MODIFIED="1406739231934" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_656467971" CREATED="1406730825814" MODIFIED="1406739231933"/>
</node>
<node TEXT="DataCustodian.ReadingType" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1904034970" CREATED="1406730825200" MODIFIED="1406739205196">
<node TEXT="GET" ID="ID_539770868" CREATED="1406730825205" MODIFIED="1406739205195"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType" ID="ID_371391437" CREATED="1406730825210" MODIFIED="1406739205196" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType"/>
<node TEXT="DA" ID="ID_545542353" CREATED="1406730825216" MODIFIED="1406739205194"/>
</node>
<node TEXT="DataCustodian.ReadingTypeMember" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1078900300" CREATED="1406730825255" MODIFIED="1406906896364">
<node TEXT="GET" ID="ID_725535650" CREATED="1406730825259" MODIFIED="1406739205192"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType/{ReadingTypeID}" ID="ID_459329396" CREATED="1406730825263" MODIFIED="1406739205193" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType/"/>
<node TEXT="DA" ID="ID_1359425801" CREATED="1406730825268" MODIFIED="1406739205192"/>
</node>
<node TEXT="DataCustodian.UsagePoint" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1073542933" CREATED="1406730825359" MODIFIED="1406739205208">
<node TEXT="GET" ID="ID_226297638" CREATED="1406730825364" MODIFIED="1406739205207"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint" ID="ID_1953952529" CREATED="1406730825369" MODIFIED="1406739205207" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_531791368" CREATED="1406730825374" MODIFIED="1406739205206"/>
</node>
<node TEXT="DataCustodian.UsagePointMember" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1517823048" CREATED="1406730825416" MODIFIED="1406906871833">
<node TEXT="GET" ID="ID_518468243" CREATED="1406730825423" MODIFIED="1406739205204"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}" ID="ID_555707146" CREATED="1406730825429" MODIFIED="1406739205204" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="DA" ID="ID_529038897" CREATED="1406730825433" MODIFIED="1406739205203"/>
</node>
</node>
<node TEXT="FB_33 Management REST Services (API)" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1760319645" CREATED="1406733994413" MODIFIED="1406908688539" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66">
<attribute NAME="SupportedBy" VALUE="LondonHydro"/>
<edge COLOR="#339900"/>
<node TEXT="DataCustodian.Batch.RetailCustomer.Member.UsagePoint.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1813437888" CREATED="1406730824660" MODIFIED="1406907752316">
<node TEXT="POST" ID="ID_1028896190" CREATED="1406730824665" MODIFIED="1406739025552"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/RetailCustomer/{RetailCustomerID}/UsagePoint" ID="ID_1463737933" CREATED="1406730824670" MODIFIED="1406739025554" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/RetailCustomer/"/>
<node TEXT="DU" ID="ID_1233226415" CREATED="1406730824675" MODIFIED="1406739025556"/>
</node>
<node TEXT="DataCustodian.Batch.RetailCustomer.UsagePoint.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1341102629" CREATED="1406730824686" MODIFIED="1406907732533">
<node TEXT="GET" ID="ID_1304443195" CREATED="1406730824699" MODIFIED="1406739025557"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/RetailCustomer/{RetailCustomerID}/UsagePoint" ID="ID_1287183807" CREATED="1406730824704" MODIFIED="1406739025558" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/RetailCustomer/"/>
<node TEXT="DU" ID="ID_978014363" CREATED="1406730824709" MODIFIED="1406739025557"/>
</node>
<node TEXT="DataCustodian.UsagePoint.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_755398344" CREATED="1406730825386" MODIFIED="1406907432533">
<node TEXT="POST" ID="ID_1784247452" CREATED="1406730825393" MODIFIED="1406739150568"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint" ID="ID_669714380" CREATED="1406730825399" MODIFIED="1406739150568" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_795316366" CREATED="1406730825404" MODIFIED="1406739150567"/>
</node>
<node TEXT="DataCustodian.UsagePoint.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_585601070" CREATED="1406730825443" MODIFIED="1406907440032">
<node TEXT="DEL" ID="ID_1946045525" CREATED="1406730825448" MODIFIED="1406739150564"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}" ID="ID_1004223967" CREATED="1406730825453" MODIFIED="1406739150564" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_358593077" CREATED="1406730825458" MODIFIED="1406739150563"/>
</node>
<node TEXT="DataCustodian.UsagePoint.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1612316310" CREATED="1406730825467" MODIFIED="1406907454379">
<node TEXT="PUT" ID="ID_163773066" CREATED="1406730825473" MODIFIED="1406739150560"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}." ID="ID_1445838750" CREATED="1406730825480" MODIFIED="1406739128086" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_242528645" CREATED="1406730825486" MODIFIED="1406739128086"/>
</node>
<node TEXT="DataCustodian.ElectricPowerQualitySummary.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1486539837" CREATED="1406730825523" MODIFIED="1406907466518">
<node TEXT="POST" ID="ID_1542930577" CREATED="1406730825527" MODIFIED="1406739128083"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerQualitySummary" ID="ID_326157979" CREATED="1406730825531" MODIFIED="1406907466517" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1468042351" CREATED="1406730825535" MODIFIED="1406739128083"/>
</node>
<node TEXT="DataCustodian.ElectricPowerQualitySummary.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_422648245" CREATED="1406730825569" MODIFIED="1406907483045">
<node TEXT="PUT" ID="ID_339063419" CREATED="1406730825573" MODIFIED="1406739128079"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerQualitySummary/{ElectricPowerQualitySummaryID}" ID="ID_702034072" CREATED="1406730825577" MODIFIED="1406739128080" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1155596956" CREATED="1406730825581" MODIFIED="1406739128078"/>
</node>
<node TEXT="DataCustodian.ElectricPowerQualitySummary.Member.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1050397897" CREATED="1406730825590" MODIFIED="1406907494341">
<node TEXT="DEL" ID="ID_1623465533" CREATED="1406730825595" MODIFIED="1406739128074"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerQualitySummary/{ElectricPowerQualitySummaryID}" ID="ID_182213452" CREATED="1406730825614" MODIFIED="1406739128075" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1527105570" CREATED="1406730825619" MODIFIED="1406739128074"/>
</node>
<node TEXT="DataCustodian.ElectricPowerUsageSummary.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1378212973" CREATED="1406730825655" MODIFIED="1406907502525">
<node TEXT="POST" ID="ID_1466595032" CREATED="1406730825660" MODIFIED="1406739128070"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerUsageSumary" ID="ID_452649946" CREATED="1406730825664" MODIFIED="1406739128071" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_632981481" CREATED="1406730825669" MODIFIED="1406739128070"/>
</node>
<node TEXT="DataCustodian.ElectricPowerUsageSummary.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1459865738" CREATED="1406730825710" MODIFIED="1406907509514">
<node TEXT="PUT" ID="ID_666328075" CREATED="1406730825714" MODIFIED="1406739128067"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerUsageSumary/{ElectricPowerUsageSummaryID}" ID="ID_866424090" CREATED="1406730825720" MODIFIED="1406739128068" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1094047548" CREATED="1406730825724" MODIFIED="1406739128066"/>
</node>
<node TEXT="DataCustodian.ElectricPowerUsageSummary.Member.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1211700433" CREATED="1406730825733" MODIFIED="1406907517473">
<node TEXT="DEL" ID="ID_1002480970" CREATED="1406730825737" MODIFIED="1406739128053"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/ElectricPowerUsageSumary/{ElectricPowerUsageSummaryID}" ID="ID_329793860" CREATED="1406730825741" MODIFIED="1406739128054" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1549566569" CREATED="1406730825746" MODIFIED="1406739128053"/>
</node>
<node TEXT="DataCustodian.IntervalBlock.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1259857504" CREATED="1406730824790" MODIFIED="1406907594454">
<node TEXT="GET" ID="ID_590476350" CREATED="1406730824795" MODIFIED="1406739090303"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock" ID="ID_1459399854" CREATED="1406730824801" MODIFIED="1406739090303" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock"/>
<node TEXT="D" ID="ID_347902203" CREATED="1406730824806" MODIFIED="1406739090302"/>
</node>
<node TEXT="DataCustodian.IntervalBlock.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_43907640" CREATED="1406730824816" MODIFIED="1406907601911">
<node TEXT="POST" ID="ID_1611002924" CREATED="1406730824823" MODIFIED="1406739090300"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock" ID="ID_1226203326" CREATED="1406730824829" MODIFIED="1406739090300" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock"/>
<node TEXT="D" ID="ID_1587536214" CREATED="1406730824834" MODIFIED="1406739090299"/>
</node>
<node TEXT="DataCustodian.IntervalBlock.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1717258893" CREATED="1406730824844" MODIFIED="1406907611542">
<node TEXT="GET" ID="ID_51854407" CREATED="1406730824851" MODIFIED="1406739090296"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock/{IntervalBlockID}" ID="ID_1094461796" CREATED="1406730824858" MODIFIED="1406739090297" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock/"/>
<node TEXT="D" ID="ID_1999348152" CREATED="1406730824864" MODIFIED="1406739090296"/>
</node>
<node TEXT="DataCustodian.IntervalBlock.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_145107820" CREATED="1406730824877" MODIFIED="1406907620305">
<node TEXT="PUT" ID="ID_470531464" CREATED="1406730824883" MODIFIED="1406739090293"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock/{IntervalBlockID}" ID="ID_54638570" CREATED="1406730824889" MODIFIED="1406739090294" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock/"/>
<node TEXT="D" ID="ID_1701325199" CREATED="1406730824897" MODIFIED="1406739090292"/>
</node>
<node TEXT="DataCustodian.IntervalBlock.Member.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_190727544" CREATED="1406730824908" MODIFIED="1406907631176">
<node TEXT="DEL" ID="ID_313129775" CREATED="1406730824914" MODIFIED="1406739090290"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock/{IntervalBlockID}" ID="ID_1063882602" CREATED="1406730824920" MODIFIED="1406739090291" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/IntervalBlock/"/>
<node TEXT="D" ID="ID_777916135" CREATED="1406730824926" MODIFIED="1406739090289"/>
</node>
<node TEXT="DataCustodian.IntervalBlock.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_523067979" CREATED="1406730825929" MODIFIED="1406907647964">
<node TEXT="POST" ID="ID_1608255612" CREATED="1406730825937" MODIFIED="1406739090280"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading/{MeterReadingID}/IntervalBlock" ID="ID_933744572" CREATED="1406730825947" MODIFIED="1406739090281" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1668361858" CREATED="1406730825954" MODIFIED="1406739090280"/>
</node>
<node TEXT="DataCustodian.IntervalBlock.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1090898470" CREATED="1406730826002" MODIFIED="1406907658323">
<node TEXT="PUT" ID="ID_446908093" CREATED="1406730826008" MODIFIED="1406739090277"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading/{MeterReadingID}/IntervalBlock/{IntervalBlockID}" ID="ID_1038303537" CREATED="1406730826013" MODIFIED="1406739090278" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1227733317" CREATED="1406730826017" MODIFIED="1406739090275"/>
</node>
<node TEXT="DataCustodian.IntervalBlock.Member.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_404694120" CREATED="1406730826027" MODIFIED="1406907673594">
<node TEXT="DEL" ID="ID_1410126524" CREATED="1406730826032" MODIFIED="1406739090268"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading/{MeterReadingID}/IntervalBlock/{IntervalBlockID}" ID="ID_1639551494" CREATED="1406730826036" MODIFIED="1406739090269" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_785508307" CREATED="1406730826041" MODIFIED="1406739090266"/>
</node>
<node TEXT="DataCustodian.LocalTimeParameters.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_915609495" CREATED="1406730824957" MODIFIED="1406907664799">
<node TEXT="POST" ID="ID_475857824" CREATED="1406730824963" MODIFIED="1406739090271"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters" ID="ID_1065900267" CREATED="1406730824968" MODIFIED="1406739090273" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters"/>
<node TEXT="D" ID="ID_1871620151" CREATED="1406730824974" MODIFIED="1406739090273"/>
</node>
<node TEXT="DataCustodian.LocalTimeParameters.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_134910428" CREATED="1406730825035" MODIFIED="1406907548476">
<node TEXT="PUT" ID="ID_848535530" CREATED="1406730825040" MODIFIED="1406739090310"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/{LocalTimeParametersID}" ID="ID_1825440118" CREATED="1406730825045" MODIFIED="1406739090310" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/"/>
<node TEXT="D" ID="ID_1942349373" CREATED="1406730825050" MODIFIED="1406739090309"/>
</node>
<node TEXT="DataCustodian.LocalTimeParameters.Member.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_868497735" CREATED="1406730825059" MODIFIED="1406907558370">
<node TEXT="DEL" ID="ID_1934720812" CREATED="1406730825064" MODIFIED="1406739090306"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/{LocalTimeParametersID}" ID="ID_219408305" CREATED="1406730825069" MODIFIED="1406739090306" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/"/>
<node TEXT="D" ID="ID_189092127" CREATED="1406730825073" MODIFIED="1406739090305"/>
</node>
<node TEXT="DataCustodian.MeterReading.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1112435056" CREATED="1406730825082" MODIFIED="1406907417947">
<node TEXT="GET" ID="ID_375459440" CREATED="1406730825087" MODIFIED="1406739150571"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading" ID="ID_217036390" CREATED="1406730825091" MODIFIED="1406739150571" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading"/>
<node TEXT="D" ID="ID_196735978" CREATED="1406730825097" MODIFIED="1406739150570"/>
</node>
<node TEXT="DataCustodian.MeterReading.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1641029230" CREATED="1406730825108" MODIFIED="1406907410379">
<node TEXT="POST" ID="ID_1356207483" CREATED="1406730825114" MODIFIED="1406739150574"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading" ID="ID_1741209861" CREATED="1406730825119" MODIFIED="1406907410378" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading"/>
<node TEXT="D" ID="ID_525047990" CREATED="1406730825125" MODIFIED="1406739150574"/>
</node>
<node TEXT="DataCustodian.MeterReading.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_682885206" CREATED="1406730825777" MODIFIED="1406908137013">
<node TEXT="POST" ID="ID_1509927545" CREATED="1406730825781" MODIFIED="1406739090285"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading" ID="ID_802318701" CREATED="1406730825787" MODIFIED="1406739090286" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1761592176" CREATED="1406730825793" MODIFIED="1406739090284"/>
</node>
<node TEXT="DataCustodian.MeterReading.Member.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1511097732" CREATED="1406730825133" MODIFIED="1406907876489">
<node TEXT="GET" ID="ID_1828608751" CREATED="1406730825137" MODIFIED="1406739178652"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading/{MeterReadingID}" ID="ID_695870693" CREATED="1406730825143" MODIFIED="1406739178653" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading/"/>
<node TEXT="D" ID="ID_1956010975" CREATED="1406730825148" MODIFIED="1406739178651"/>
</node>
<node TEXT="DataCustodian.MeterReading.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1343795985" CREATED="1406730825824" MODIFIED="1406908194420">
<node TEXT="PUT" ID="ID_1960290657" CREATED="1406730825831" MODIFIED="1406739128049"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading/{MeterReadingID}" ID="ID_1673477076" CREATED="1406730825836" MODIFIED="1406739128050" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1032132227" CREATED="1406730825841" MODIFIED="1406739128049"/>
</node>
<node TEXT="DataCustodian.MeterReading.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_727783818" CREATED="1406730825157" MODIFIED="1406907862842">
<node TEXT="PUT" ID="ID_1077022909" CREATED="1406730825161" MODIFIED="1406739178656"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading/{MeterReadingID}" ID="ID_964293190" CREATED="1406730825165" MODIFIED="1406739178656" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading/"/>
<node TEXT="D" ID="ID_983420625" CREATED="1406730825169" MODIFIED="1406739178655"/>
</node>
<node TEXT="DataCustodian.MeterReading.Member.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_164407863" CREATED="1406730825853" MODIFIED="1406907537481">
<node TEXT="DEL" ID="ID_570351155" CREATED="1406730825859" MODIFIED="1406739090313"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/{SubscriptionID}/UsagePoint/{UsagePointID}/MeterReading/{MeterReadingID}" ID="ID_822983101" CREATED="1406730825866" MODIFIED="1406739090314" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/"/>
<node TEXT="D" ID="ID_1787740722" CREATED="1406730825872" MODIFIED="1406739090313"/>
</node>
<node TEXT="DataCustodian.MeterReading.Member.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1984260459" CREATED="1406730825178" MODIFIED="1406907854111">
<node TEXT="DEL" ID="ID_209677035" CREATED="1406730825183" MODIFIED="1406739178659"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading/{MeterReadingID}" ID="ID_1960063771" CREATED="1406730825187" MODIFIED="1406739178660" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/MeterReading/"/>
<node TEXT="D" ID="ID_768943157" CREATED="1406730825192" MODIFIED="1406739178658"/>
</node>
<node TEXT="DataCustodian.ReadingType" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_22784787" CREATED="1406730825228" MODIFIED="1406739178663">
<node TEXT="POST" ID="ID_1766563135" CREATED="1406730825234" MODIFIED="1406739178662"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType" ID="ID_1469578808" CREATED="1406730825240" MODIFIED="1406739178663" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType"/>
<node TEXT="D" ID="ID_444775857" CREATED="1406730825245" MODIFIED="1406739178662"/>
</node>
<node TEXT="DataCustodian.ReadingType.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_784554947" CREATED="1406730825276" MODIFIED="1406907389078">
<node TEXT="PUT" ID="ID_588243677" CREATED="1406730825281" MODIFIED="1406739178639"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType/{ReadingTypeID}" ID="ID_296470733" CREATED="1406730825285" MODIFIED="1406739178639" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType/"/>
<node TEXT="D" ID="ID_344871777" CREATED="1406730825290" MODIFIED="1406739178636"/>
</node>
<node TEXT="DataCustodian.ReadingType.MemberDEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_887539555" CREATED="1406730825313" MODIFIED="1406907395499">
<node TEXT="DEL" ID="ID_1413576538" CREATED="1406730825317" MODIFIED="1406739150577"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType/{ReadingTypeID}" ID="ID_495665905" CREATED="1406730825321" MODIFIED="1406739150578" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType/"/>
<node TEXT="D" ID="ID_922139528" CREATED="1406730825326" MODIFIED="1406739150577"/>
</node>
<node TEXT="DataCustodian.UsagePoint.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1073672192" CREATED="1406730826051" MODIFIED="1406907680673">
<node TEXT="GET" ID="ID_573279436" CREATED="1406730826057" MODIFIED="1406739090262"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/" ID="ID_1881504234" CREATED="1406730826064" MODIFIED="1406739090263" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/"/>
<node TEXT="D" ID="ID_1766281723" CREATED="1406730826070" MODIFIED="1406739090261"/>
</node>
<node TEXT="DataCustodian.UsagePoint.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_563680751" CREATED="1406730826079" MODIFIED="1406907688390">
<node TEXT="POST" ID="ID_579824606" CREATED="1406730826083" MODIFIED="1406739090258"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/" ID="ID_1241566465" CREATED="1406730826089" MODIFIED="1406739090259" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/"/>
<node TEXT="D" ID="ID_1551356800" CREATED="1406730826095" MODIFIED="1406739090257"/>
</node>
<node TEXT="DataCustodian.UsagePoint.Member.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1679002002" CREATED="1406730826106" MODIFIED="1406907696114">
<node TEXT="GET" ID="ID_1537305211" CREATED="1406730826111" MODIFIED="1406739090252"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/{UsagePointID}" ID="ID_280000653" CREATED="1406730826116" MODIFIED="1406739090255" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/"/>
<node TEXT="D" ID="ID_95288141" CREATED="1406730826121" MODIFIED="1406739090255"/>
</node>
<node TEXT="DataCustodian.UsagePoint.Member.PUT" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1279431989" CREATED="1406730826133" MODIFIED="1406907703753">
<node TEXT="PUT" ID="ID_1874470123" CREATED="1406730826137" MODIFIED="1406739025564"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/{UsagePointID}" ID="ID_83837525" CREATED="1406730826142" MODIFIED="1406739025565" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/"/>
<node TEXT="D" ID="ID_1564708559" CREATED="1406730826148" MODIFIED="1406739025564"/>
</node>
<node TEXT="DataCustodian.UsagePoint.Member.DEL" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_547078156" CREATED="1406730826162" MODIFIED="1406907710822">
<node TEXT="DEL" ID="ID_671579272" CREATED="1406730826169" MODIFIED="1406739025560"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/{UsagePointID}" ID="ID_103315023" CREATED="1406730826184" MODIFIED="1406739025561" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/UsagePoint/"/>
<node TEXT="D" ID="ID_983205450" CREATED="1406730826189" MODIFIED="1406739025560"/>
</node>
<node TEXT="DataCustodian.ApplicationInformation.GET" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1593656187" CREATED="1406730824401" MODIFIED="1406907774396">
<node TEXT="GET" ID="ID_866318384" CREATED="1406730824406" MODIFIED="1406739296169"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation" ID="ID_723056983" CREATED="1406730824410" MODIFIED="1406739296170" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation"/>
<node TEXT="D" ID="ID_611950290" CREATED="1406730824414" MODIFIED="1406739296169"/>
</node>
<node TEXT="DataCustodian.ApplicationInformation.POST" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_810532792" CREATED="1406730824432" MODIFIED="1406907766091">
<node TEXT="POST" ID="ID_1997397033" CREATED="1406730824437" MODIFIED="1406739296171"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation" ID="ID_1377353317" CREATED="1406730824441" MODIFIED="1406739296171" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation"/>
<node TEXT="D" ID="ID_1387921725" CREATED="1406730824445" MODIFIED="1406739296170"/>
</node>
</node>
<node TEXT="FB_34 SFTP for Bulk (API)" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1117943251" CREATED="1406734074002" MODIFIED="1406908688540" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66">
<attribute_layout VALUE_WIDTH="172"/>
<attribute NAME="SupportedBy" VALUE="SCE; PG&amp;E; SDG&amp;E; LondonHydro"/>
<attribute NAME="TestsAvailable" VALUE="01Nov 2014"/>
<edge COLOR="#339900"/>
<node TEXT="DataCustodian.Batch.Bulk.Member (SFTP)" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_678242063" CREATED="1406730826234" MODIFIED="1406907348786">
<node TEXT="GETALL" ID="ID_1524238105" CREATED="1406730826254" MODIFIED="1406739299585" HGAP="30" VSHIFT="10"/>
<node TEXT="sftp://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Bulk/{BulkID}" ID="ID_908511769" CREATED="1406730826259" MODIFIED="1406739299585" LINK="ftp://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Bulk/"/>
<node TEXT="DC" ID="ID_2095644" CREATED="1406730826265" MODIFIED="1406739299584"/>
</node>
</node>
<node TEXT="FB_35 Rest for Bulk (API)" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_226330636" CREATED="1406734128903" MODIFIED="1406908688540" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66">
<attribute NAME="SupportedBy" VALUE="LondonHydro; PG&amp;E; SDG&amp;E; SCE"/>
<edge COLOR="#339900"/>
<node TEXT="DataCustodian.Batch.Bulk.Member" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_994579663" CREATED="1406730824611" MODIFIED="1406907291338">
<node TEXT="GET" ID="ID_770596957" CREATED="1406730824615" MODIFIED="1406739299583"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Bulk/{BulkID}" ID="ID_541165295" CREATED="1406730824619" MODIFIED="1406739299583" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Bulk/"/>
<node TEXT="DC" ID="ID_32167356" CREATED="1406730824624" MODIFIED="1406739299581"/>
</node>
</node>
<node TEXT="FB_37" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1332376785" CREATED="1406736226021" MODIFIED="1406908688540" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="PG&amp;E"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_38" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1615940576" CREATED="1406736231519" MODIFIED="1406908688541" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="PG&amp;E"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_39" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1324655851" CREATED="1406736241713" MODIFIED="1406908688541" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="PG&amp;E SCE SDG&amp;E"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_40" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_964077248" CREATED="1406736245935" MODIFIED="1406908688541" TEXT_SHORTENED="true">
<attribute NAME="SupportedBy" VALUE="PG&amp;E; SDG&amp;E"/>
<edge COLOR="#339900"/>
</node>
<node TEXT="FB_41 - Manage ApplicationInformation (API)" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1082896928" CREATED="1406734147957" MODIFIED="1406908688542" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66">
<attribute NAME="SupportedBy" VALUE="LondonHydro"/>
<edge COLOR="#339900"/>
<node TEXT="DataCustodian.ApplicationInformation" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1648930760" CREATED="1406730824477" MODIFIED="1406739357374">
<node TEXT="PUT" ID="ID_1398619588" CREATED="1406730824481" MODIFIED="1406739357371"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/{ApplicationInformationID}" ID="ID_250463770" CREATED="1406730824488" MODIFIED="1406739357373" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/"/>
<node TEXT="DR" ID="ID_1528174942" CREATED="1406730824494" MODIFIED="1406739357371"/>
</node>
<node TEXT="DataCustodian.ApplicationInformation.Member" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1082884425" CREATED="1406730824502" MODIFIED="1406907309219">
<node TEXT="DEL" ID="ID_1953635502" CREATED="1406730824507" MODIFIED="1406739322511"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/{ApplicationInformationID}" ID="ID_151281612" CREATED="1406730824511" MODIFIED="1406739322518" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/"/>
<node TEXT="DR" ID="ID_296547049" CREATED="1406730824515" MODIFIED="1406739322510"/>
</node>
</node>
<node TEXT="FB_42 ThirdParty Core Rest Services (API)" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_419229822" CREATED="1406734189593" MODIFIED="1406908688542" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66">
<attribute NAME="SupportedBy" VALUE=""/>
<edge COLOR="#339900"/>
<node TEXT="ThirdParty.Authorization" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_389836332" CREATED="1406734276707" MODIFIED="1406739357370">
<node TEXT="POST" ID="ID_920193209" CREATED="1406734678504" MODIFIED="1406739357370"/>
<node TEXT="https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification" ID="ID_594996977" CREATED="1406734682776" MODIFIED="1406739357370" LINK="https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification"/>
</node>
</node>
<node TEXT="FB_44 Manage Authorization (API)" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_242370078" CREATED="1406734302800" MODIFIED="1406908688542" TEXT_SHORTENED="true" BACKGROUND_COLOR="#66ff66">
<attribute NAME="SupportedBy" VALUE="LondonHydro"/>
<edge COLOR="#339900"/>
<node TEXT="DataCustodian.Authorization" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_1070700203" CREATED="1406730824568" MODIFIED="1406739360932">
<node TEXT="PUT" ID="ID_1072112408" CREATED="1406730824572" MODIFIED="1406739360930"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/{AuthorizationID}" ID="ID_1263658722" CREATED="1406730824577" MODIFIED="1406739360931" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/"/>
<node TEXT="DC" ID="ID_990261917" CREATED="1406730824581" MODIFIED="1406739360930"/>
</node>
<node TEXT="DataCustodian.Authorization.Member" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_12567543" CREATED="1406730824589" MODIFIED="1406907299066">
<node TEXT="DEL" ID="ID_372388427" CREATED="1406730824594" MODIFIED="1406739360933"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/{AuthorizationID}" ID="ID_1986082427" CREATED="1406730824598" MODIFIED="1406739360933" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/"/>
<node TEXT="DC" ID="ID_1156774026" CREATED="1406730824603" MODIFIED="1406739360932"/>
</node>
</node>
<node TEXT="RESTful API Functions" POSITION="right" ID="ID_1077887512" CREATED="1406906111602" MODIFIED="1406908688543" BACKGROUND_COLOR="#66ff66">
<edge COLOR="#339900"/>
<hook NAME="SummaryNode"/>
</node>
<node TEXT="FB_99 Future Proposed Features" LOCALIZED_STYLE_REF="default" POSITION="right" ID="ID_1013491849" CREATED="1406734375999" MODIFIED="1406908688543">
<edge COLOR="#339900"/>
<node TEXT="DataCustodian.Bulk" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_848634637" CREATED="1406730824767" MODIFIED="1406739360929">
<node TEXT="GET" ID="ID_11543331" CREATED="1406730824771" MODIFIED="1406739360927"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Bulk" ID="ID_957118905" CREATED="1406730824776" MODIFIED="1406739360928" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Bulk"/>
<node TEXT="D" ID="ID_1372717818" CREATED="1406730824781" MODIFIED="1406739360927"/>
</node>
<node TEXT="DataCustodian.Batch" LOCALIZED_STYLE_REF="AutomaticLayout.level,2" ID="ID_662784557" CREATED="1406730824628" MODIFIED="1406739360926">
<node TEXT="POST" ID="ID_1569620004" CREATED="1406730824639" MODIFIED="1406739360925"/>
<node TEXT="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Bulk/{BulkID}" ID="ID_1145049907" CREATED="1406730824645" MODIFIED="1406739360926" LINK="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Bulk/"/>
<node TEXT="D" ID="ID_230502912" CREATED="1406730824649" MODIFIED="1406739360923"/>
</node>
</node>
</node>
</map>
