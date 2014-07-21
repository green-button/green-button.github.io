<map version="freeplane 1.3.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Green Button for America" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1405693797600">
<icon BUILTIN="button_ok"/>
<hook NAME="MapStyle" zoom="1.5">
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
<hook NAME="AutomaticEdgeColor" COUNTER="5"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The Green Button for America Program
    </p>
    <p>
      
    </p>
    <p>
      Described as a Mind Map
    </p>
  </body>
</html>
</richcontent>
<font SIZE="16"/>
<edge STYLE="bezier"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="HEADINGS"/>
<node TEXT="Climate Action Plan" LOCALIZED_STYLE_REF="styles.topic" POSITION="left" ID="ID_533827488" CREATED="1379355438220" MODIFIED="1405695186023" STYLE="as_parent">
<edge COLOR="#00ffff"/>
<font SIZE="14"/>
<node TEXT="GSA" ID="ID_129755355" CREATED="1379355463062" MODIFIED="1379355466540">
<node TEXT="#1:End2EndProcess" ID="ID_1754942358" CREATED="1379363331418" MODIFIED="1379688935707"/>
<node TEXT="#2: Submeter Systems" ID="ID_1755649862" CREATED="1379363339183" MODIFIED="1379688943625"/>
<node TEXT="#3:Utility Systems" ID="ID_442630307" CREATED="1379363341823" MODIFIED="1380146362973"/>
<node TEXT="#4 Analytics" ID="ID_1617242357" CREATED="1403662155453" MODIFIED="1403662162703"/>
<node TEXT="#5: Data Reporting" ID="ID_1740854063" CREATED="1379363344861" MODIFIED="1403662167947"/>
</node>
<node TEXT="EPA" ID="ID_1677976281" CREATED="1379355467356" MODIFIED="1379355472484">
<node TEXT="Profile Manager" ID="ID_1702387212" CREATED="1403387578167" MODIFIED="1403387592435"/>
<node TEXT="Home Energy Yardstick" ID="ID_610464575" CREATED="1403387596273" MODIFIED="1403387600924"/>
<node TEXT="NextGen" ID="ID_206485830" CREATED="1403387610261" MODIFIED="1403387615257"/>
</node>
<node TEXT="DOE" ID="ID_198285335" CREATED="1379355473583" MODIFIED="1379355475138">
<node TEXT="Building Performance Database" ID="ID_654873869" CREATED="1403387621744" MODIFIED="1403387632822"/>
<node TEXT="SEED Framework" ID="ID_422560643" CREATED="1403387641099" MODIFIED="1403387649766"/>
<node TEXT="FEMP" ID="ID_1617517245" CREATED="1403662210018" MODIFIED="1403662214159">
<node TEXT="Metering Guidance" ID="ID_1275087222" CREATED="1403387660508" MODIFIED="1403387665560"/>
<node TEXT="ESIA Requirements" ID="ID_942338308" CREATED="1379688982644" MODIFIED="1379688996632"/>
<node TEXT="GreenBotton Guidance" ID="ID_439680964" CREATED="1403387668743" MODIFIED="1403387673697"/>
</node>
</node>
<node TEXT="Agency Roadblocks" ID="ID_1270049628" CREATED="1403389980427" MODIFIED="1403389985183">
<node TEXT="Skills" ID="ID_894344526" CREATED="1403389992070" MODIFIED="1403389994378"/>
<node TEXT="Roles" ID="ID_1501602575" CREATED="1403389994933" MODIFIED="1403389998306"/>
</node>
<node TEXT="Pilots" ID="ID_1117029921" CREATED="1405693307231" MODIFIED="1405693376708" LINK="National%20Pilots.mm">
<font SIZE="14"/>
</node>
</node>
<node TEXT="Utilities" POSITION="left" ID="ID_505384164" CREATED="1405693510094" MODIFIED="1405693517154">
<edge COLOR="#ff00ff"/>
<node TEXT="Utilities (size targets by customer#)" ID="ID_697712307" CREATED="1374937827475" MODIFIED="1405695136110">
<attribute_layout NAME_WIDTH="72" VALUE_WIDTH="72"/>
<attribute NAME="CustomerCount" VALUE="16298201" OBJECT="org.freeplane.features.format.FormattedNumber|16298201|#0.####"/>
<attribute NAME="script1" VALUE="def startValue = 0&#xa;node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 }&#xa;// @ExecutionModes({ON_SELECTED_NODE})"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Needs link to the xlst Database
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Targeted" ID="ID_1280136714" CREATED="1374937841409" MODIFIED="1380293410656">
<attribute_layout NAME_WIDTH="74" VALUE_WIDTH="74"/>
<attribute NAME="CustomerCount" VALUE="14600000" OBJECT="org.freeplane.features.format.FormattedNumber|14600000|#0.####"/>
<attribute NAME="script1" VALUE="def startValue = 0&#xa;node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 }&#xa;// @ExecutionModes({ON_SELECTED_NODE})"/>
<font SIZE="8"/>
<node TEXT="Munis (Public Owned Utilities)" ID="ID_559823468" CREATED="1374938131641" MODIFIED="1374942782594">
<attribute NAME="CustomerCount" VALUE="1500000" OBJECT="org.freeplane.features.format.FormattedNumber|1500000|#0.####"/>
<attribute NAME="script1" VALUE="def startValue = 0&#xa;node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 }&#xa;// @ExecutionModes({ON_SELECTED_NODE})&#xa;&#xa;"/>
<hook EQUATION="\newcount\ppnum&#xa;\newcommand\ppnumber[1]{%&#xa;        \ppnum=#1\relax&#xa;        \ifnum\ppnum&lt;0&#xa;                $-$%&#xa;                \ppnum=-\ppnum&#xa;        \fi&#xa;        \let\pptemp\empty&#xa;        \loop\ifnum\ppnum&gt;999&#xa;                \count255=\ppnum&#xa;                \divide\ppnum by1000&#xa;                \count255=\numexpr \count255 - 1000*\ppnum \relax&#xa;                \edef\pptemp{,\ifnum\count255&lt;100 0\ifnum\count255&lt;10 0\fi\fi&#xa;                             \the\count255 \pptemp}%&#xa;        \repeat&#xa;        \the\ppnum&#xa;        \pptemp&#xa;}" NAME="plugins/latex/LatexNodeHook.properties"/>
<node TEXT="Los Angles Dept. of Water &amp; Power" ID="ID_1938185912" CREATED="1374937922341" MODIFIED="1403663250782">
<attribute NAME="CustomerCount" VALUE="1500000" OBJECT="org.freeplane.features.format.FormattedNumber|1500000"/>
</node>
</node>
<node TEXT="IOUs (Investor Owned Utilities)" ID="ID_564305236" CREATED="1374938136192" MODIFIED="1376067192820">
<icon BUILTIN="pencil"/>
<attribute NAME="CustomerCount" VALUE="28000000" OBJECT="org.freeplane.features.format.FormattedNumber|28000000|#0.####"/>
<attribute NAME="script1" VALUE="def startValue = 0 node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 } // @ExecutionModes({ON_SELECTED_NODE})"/>
<node TEXT="APS (Arizona Public Service)" ID="ID_1213062905" CREATED="1374937914140" MODIFIED="1374940498704">
<attribute NAME="CustomerCount" VALUE="2000000" OBJECT="org.freeplane.features.format.FormattedNumber|2000000|#0.####"/>
</node>
<node TEXT="Idaho Power Company" ID="ID_1605401211" CREATED="1374937906975" MODIFIED="1405695020076">
<attribute NAME="CustomerCount" VALUE="600000" OBJECT="org.freeplane.features.format.FormattedNumber|600000|#0.####"/>
</node>
<node TEXT="NV Energy (Nevada Energy)" ID="ID_1663896040" CREATED="1374937896940" MODIFIED="1405695022520">
<attribute_layout NAME_WIDTH="74" VALUE_WIDTH="74"/>
<attribute NAME="CustomerCount" VALUE="1500000" OBJECT="org.freeplane.features.format.FormattedNumber|1500000"/>
</node>
<node TEXT="Avista" ID="ID_820629269" CREATED="1374937910844" MODIFIED="1374940574385">
<attribute NAME="CustomerCount" VALUE="1000000" OBJECT="org.freeplane.features.format.FormattedNumber|1000000"/>
</node>
<node TEXT="FPL (Florida Power &amp; Light))" ID="ID_112006932" CREATED="1374938324988" MODIFIED="1374940579510">
<attribute NAME="CustomerCount" VALUE="2000000" OBJECT="org.freeplane.features.format.FormattedNumber|2000000|#0.####"/>
</node>
</node>
<node TEXT="Member Owned Utilities - Cooperatives" ID="ID_1547157224" CREATED="1374938145033" MODIFIED="1404923258781">
<attribute NAME="CustomerCount" VALUE="6100000" OBJECT="org.freeplane.features.format.FormattedNumber|6100000|#0.####"/>
<attribute NAME="script1" VALUE="def startValue = 0&#xa;node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 }&#xa;// @ExecutionModes({ON_SELECTED_NODE})"/>
<node TEXT="NRECA/CRN (National Rural Electric Cooperative Association/Cooperative Research Network)" ID="ID_477644734" CREATED="1374938358998" MODIFIED="1403663282962">
<attribute_layout NAME_WIDTH="74" VALUE_WIDTH="74"/>
<attribute NAME="CustomerCount" VALUE="100000" OBJECT="org.freeplane.features.format.FormattedNumber|100000|#0.####"/>
</node>
</node>
</node>
<node TEXT="Committed" ID="ID_1374185524" CREATED="1374937850733" MODIFIED="1380293415923">
<attribute NAME="CustomerCount" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="script1" VALUE="def startValue = 0&#xa;node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 }&#xa;// @ExecutionModes({ON_SELECTED_NODE})"/>
<font SIZE="9"/>
</node>
<node TEXT="Deployed" ID="ID_1025066053" CREATED="1374937857309" MODIFIED="1380293421186">
<attribute_layout NAME_WIDTH="73" VALUE_WIDTH="73"/>
<attribute NAME="CustomerCount" VALUE="0" OBJECT="org.freeplane.features.format.FormattedNumber|0"/>
<attribute NAME="script1" VALUE="def startValue = 0&#xa;node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 }&#xa;// @ExecutionModes({ON_SELECTED_NODE})"/>
<node TEXT="American Electric Power (AEP)" ID="ID_473355070" CREATED="1403794119838" MODIFIED="1403794130817">
<node TEXT="Team" ID="ID_932192147" CREATED="1403794182130" MODIFIED="1403794187090">
<node TEXT="Suzanne L Snider" ID="ID_1414246774" CREATED="1403794187607" MODIFIED="1403795194889"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a href="mailto:slsnider@aep.com">EMail</a>
    </p>
    <pre>Suzanne Snider
Business Systems Analyst
Customer Operations Projects
Direct Dial: 614-716-3672
Audinet:  200-3672</pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Phaneendra Rampalli" ID="ID_296448282" CREATED="1403794243060" MODIFIED="1403794289095"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a href="mailto:prampalli@aep.com">EMail</a>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Frank Willhoit" ID="ID_311687726" CREATED="1403794733265" MODIFIED="1403794788095"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a href="mailto:fewilhoit@aep.com">EMail</a>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Development Team??" ID="ID_1138761206" CREATED="1403799965424" MODIFIED="1403799984690"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <pre>Jeffrey A Newman <janewman aep.com="#DEFAULT"/>;                                                                                                                       
Krista D Tillman <kdtillman aep.com="#DEFAULT"/>;                                                                                                                      
 Chris Rowsell <crowsell aep.com="#DEFAULT"/>;                                                                                                                         
Sean T McClen <stmcclen aep.com="#DEFAULT"/>;                                                                                                                          
Syed J Hashmi <sjhashmi aep.com="#DEFAULT"/></pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Connect My Data" ID="ID_824963531" CREATED="1403794297078" MODIFIED="1403794301780"/>
<node TEXT="Download My Data" ID="ID_150383849" CREATED="1403794302274" MODIFIED="1403794305615"/>
<node TEXT="Roadmap" ID="ID_750208251" CREATED="1403800006430" MODIFIED="1403800151413"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <img src="./images/AEP_Roadmap.png" width="40px"/>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Verified" ID="ID_1865458380" CREATED="1374941183505" MODIFIED="1380293425284">
<attribute NAME="CustomerCount" VALUE="1698201" OBJECT="org.freeplane.features.format.FormattedNumber|1698201|#0.####"/>
<attribute NAME="script1" VALUE="def startValue = 0&#xa;node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 }&#xa;// @ExecutionModes({ON_SELECTED_NODE})"/>
<node TEXT="Yankee Gas" ID="ID_592759688" CREATED="1374941207756" MODIFIED="1374941211946"/>
<node TEXT="Western Mass Electric (WMECO)" ID="ID_282512038" CREATED="1374941287860" MODIFIED="1374941393190">
<attribute NAME="CustomerCount" VALUE="80795" OBJECT="org.freeplane.features.format.FormattedNumber|80795"/>
</node>
<node TEXT="Public Service Company (PSNH)" ID="ID_388814384" CREATED="1374941292503" MODIFIED="1374941474310">
<attribute NAME="CustomerCount" VALUE="417406" OBJECT="org.freeplane.features.format.FormattedNumber|417406|#0.####"/>
</node>
<node TEXT="Connecticut Light &amp; Power (CL&amp;P)" ID="ID_1994359652" CREATED="1374941217420" MODIFIED="1374941364262">
<attribute NAME="CustomerCount" VALUE="1200000" OBJECT="org.freeplane.features.format.FormattedNumber|1200000"/>
</node>
</node>
</node>
</node>
<node TEXT="Efficiency Organizations" POSITION="left" ID="ID_983457836" CREATED="1405693532872" MODIFIED="1405693539511">
<edge COLOR="#00ffff"/>
<node TEXT="Efficiency Organizations" ID="ID_1887288761" CREATED="1374941842823" MODIFIED="1405693544343">
<attribute NAME="CustomerCount" VALUE="17350000" OBJECT="org.freeplane.features.format.FormattedNumber|17350000|#0.####"/>
<attribute NAME="script1" VALUE="def startValue = 0 node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 } // @ExecutionModes({ON_SELECTED_NODE})"/>
<node TEXT="Energy Efficiency Organizations" ID="ID_1596428296" CREATED="1374938218125" MODIFIED="1380293454894">
<attribute_layout NAME_WIDTH="73" VALUE_WIDTH="73"/>
<attribute NAME="CustomerCount" VALUE="17350000" OBJECT="org.freeplane.features.format.FormattedNumber|17350000|#0.####"/>
<attribute NAME="script1" VALUE="def startValue = 0&#xa;node[&apos;CustomerCount&apos;] = node.children.sum(startValue){ it[&apos;CustomerCount&apos;].to.num0 }&#xa;// @ExecutionModes({ON_SELECTED_NODE})"/>
<font SIZE="6"/>
<node TEXT="Vermont Efficiency" ID="ID_1416401200" CREATED="1374938228573" MODIFIED="1380293044407">
<attribute NAME="CustomerCount" VALUE="350000" OBJECT="org.freeplane.features.format.FormattedNumber|350000|#0.####"/>
</node>
<node TEXT="Energy Trust of Oregon" ID="ID_945917621" CREATED="1374938256295" MODIFIED="1374942138932">
<attribute NAME="CustomerCount" VALUE="6000000" OBJECT="org.freeplane.features.format.FormattedNumber|6000000"/>
</node>
<node TEXT="Hawaii Energy Efficiency" ID="ID_900860909" CREATED="1374938286590" MODIFIED="1374942152541">
<attribute NAME="CustomerCount" VALUE="3000000" OBJECT="org.freeplane.features.format.FormattedNumber|3000000"/>
</node>
<node TEXT="NEEA (Northwest Energy Efficiency Alliance)" ID="ID_1865941487" CREATED="1374938267964" MODIFIED="1374942157976">
<attribute NAME="CustomerCount" VALUE="8000000" OBJECT="org.freeplane.features.format.FormattedNumber|8000000"/>
</node>
</node>
</node>
</node>
<node TEXT="Economic Overview" POSITION="right" ID="ID_559536520" CREATED="1374937238820" MODIFIED="1405693244038">
<edge COLOR="#ff0000"/>
<arrowlink SHAPE="LINE" COLOR="#000000" WIDTH="2" TRANSPARENCY="80" DASH="7 7" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_559536520" STARTINCLINATION="11;1;" ENDINCLINATION="11;1;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="Social Group" ID="ID_1533181614" CREATED="1374937396345" MODIFIED="1374937513676">
<node TEXT="Family" ID="ID_340702531" CREATED="1374937599767" MODIFIED="1374940985814"/>
<node TEXT="Communities of Interest" ID="ID_1418773199" CREATED="1374937623032" MODIFIED="1374937630211"/>
<node TEXT="Social Organizations" ID="ID_290031383" CREATED="1374937631343" MODIFIED="1403475945194"/>
<node TEXT="Common Background" ID="ID_1883580623" CREATED="1374937653836" MODIFIED="1374937670138"/>
<node TEXT="Common Age" ID="ID_1615843597" CREATED="1374940999728" MODIFIED="1374941003299">
<node TEXT="Preschool-Kindergarden" ID="ID_1397733844" CREATED="1374937301944" MODIFIED="1374937473987"/>
<node TEXT="Elementry School" ID="ID_1033656839" CREATED="1374937315243" MODIFIED="1374937481367"/>
<node TEXT="Middle School" ID="ID_191668986" CREATED="1374937323435" MODIFIED="1374937492568"/>
<node TEXT="Jr. High" ID="ID_713564740" CREATED="1374937326223" MODIFIED="1374937499378"/>
<node TEXT="High School" ID="ID_1080800033" CREATED="1374937329516" MODIFIED="1374937504702"/>
<node TEXT="Retirement" ID="ID_1582615784" CREATED="1374941043725" MODIFIED="1374941049835"/>
</node>
</node>
<node TEXT="Market Segment" ID="ID_1254976193" CREATED="1374937402641" MODIFIED="1374937519509">
<node TEXT="Real Estate" ID="ID_93113369" CREATED="1374937676630" MODIFIED="1374937680650"/>
<node TEXT="Government" ID="ID_236212331" CREATED="1374937686579" MODIFIED="1374937728381"/>
<node TEXT="Transportation" ID="ID_319138510" CREATED="1374937728936" MODIFIED="1374937743022"/>
<node TEXT="Manufacturing" ID="ID_1198296692" CREATED="1374940939220" MODIFIED="1374940957769"/>
<node TEXT="Hospitality" ID="ID_519949103" CREATED="1374940958567" MODIFIED="1374940971079"/>
</node>
<node TEXT="Affiliations" ID="ID_402125183" CREATED="1374941059519" MODIFIED="1374941067134">
<node TEXT="Demographic" ID="ID_1342787225" CREATED="1404757185236" MODIFIED="1404757189673">
<node TEXT="AARP" ID="ID_18034906" CREATED="1374941068825" MODIFIED="1374941076651"/>
</node>
<node TEXT="Professional" ID="ID_1082332712" CREATED="1404757190110" MODIFIED="1404757193346">
<node TEXT="ASHREA" ID="ID_1629500234" CREATED="1374941081569" MODIFIED="1374941086872"/>
</node>
<node TEXT="Social" ID="ID_1230773455" CREATED="1404757193831" MODIFIED="1404757197197">
<node TEXT="4-H" ID="ID_1850842833" CREATED="1374941100505" MODIFIED="1404757205289"/>
<node TEXT="Girl Scouts" ID="ID_1944030040" CREATED="1374941095467" MODIFIED="1374941099907"/>
<node TEXT=" Boy Scouts" ID="ID_1743589288" CREATED="1374941087583" MODIFIED="1374941094811"/>
</node>
</node>
<node TEXT="Behavioral Efficiency" ID="ID_653772821" CREATED="1403715085548" MODIFIED="1403715097971">
<node TEXT="PNNL Study" ID="ID_485877293" CREATED="1403715100209" MODIFIED="1403715195304"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      <a href="http://www.pnnl.gov/main/publications/external/technical_reports/PNNL-23264.pdf">(PDF PNNL Report)</a>
    </p>
    <ul>
      <li>
        Providing Information and Outreach
      </li>
      <li>
        Giving Feedback
      </li>
      <li>
        Persuading
      </li>
      <li>
        Offering Rewards and Incentives
      </li>
      <li>
        Changing Defaults, Nudging Choice, and Enabling Adaptive Comfort
      </li>
      <li>
        Gaining Commitment
      </li>
      <li>
        Tapping into Social Norms
      </li>
      <li>
        Social Marketing in Communities
      </li>
      <li>
        Responding to an Urgent Situation.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="Slide 1" ID="ID_1151531562" CREATED="1403715935371" MODIFIED="1403716080173">
<hook URI="../../../Desktop/Screen%20Shot%202014-06-25%20at%2012.59.57%20PM.png" SIZE="0.6378455" NAME="ExternalObject"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <a href=""><img src="" width="50"/>
      screen</a>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="" ID="ID_1642493033" CREATED="1404757295467" MODIFIED="1404757578351">
<hook URI="../../../Desktop/Screen%20Shot%202014-06-25%20at%2012.56.24%20PM.png" SIZE="0.63161105" NAME="ExternalObject"/>
</node>
<node TEXT="" ID="ID_1585670697" CREATED="1404757595871" MODIFIED="1404757616379">
<hook URI="../../../Desktop/Screen%20Shot%202014-06-25%20at%2012.55.54%20PM.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="" ID="ID_59874697" CREATED="1404757649203" MODIFIED="1404757669176">
<hook URI="../../../Desktop/Screen%20Shot%202014-06-25%20at%2012.56.06%20PM.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
<node TEXT="" ID="ID_120168313" CREATED="1404757694645" MODIFIED="1404757770375">
<hook URI="../../../Desktop/Screen%20Shot%202014-06-25%20at%2012.56.40%20PM.png" SIZE="0.6116208" NAME="ExternalObject"/>
</node>
<node TEXT="" ID="ID_1512723994" CREATED="1404757777963" MODIFIED="1404757802687">
<hook URI="../../../Desktop/Screen%20Shot%202014-06-25%20at%2012.56.53%20PM.png" SIZE="0.62827224" NAME="ExternalObject"/>
</node>
</node>
</node>
</node>
<node TEXT="Business Models" POSITION="right" ID="ID_32591103" CREATED="1374937252118" MODIFIED="1403663866630">
<edge COLOR="#0000ff"/>
<node TEXT="Services Revenue (Monthly/Qarterly/Annual)" ID="ID_1624223691" CREATED="1403389795607" MODIFIED="1403663643804"/>
<node TEXT="Analytic Derivative Informaiton" ID="ID_1765071880" CREATED="1403389829348" MODIFIED="1403389862115"/>
<node TEXT="Infrastructure Management" ID="ID_194393348" CREATED="1403389863148" MODIFIED="1404757973836"/>
</node>
<node TEXT="Application Domains" POSITION="right" ID="ID_1365344149" CREATED="1374937288521" MODIFIED="1380293445920">
<edge COLOR="#ff00ff"/>
<node TEXT="Real Estate" ID="ID_889246951" CREATED="1374938916773" MODIFIED="1374938929513" HGAP="10">
<node TEXT="Services" ID="ID_1035825165" CREATED="1403474527957" MODIFIED="1403474539569">
<node TEXT="Yelp" ID="ID_900547885" CREATED="1403474540977" MODIFIED="1403474544252"/>
<node TEXT="Craig&apos;s List" ID="ID_1199780666" CREATED="1403474550657" MODIFIED="1403474561059"/>
<node TEXT="Zillo" ID="ID_1612311354" CREATED="1404757999602" MODIFIED="1404758002955"/>
</node>
<node TEXT="Multiple Listing Service (MLS)" ID="ID_786035975" CREATED="1403662581424" MODIFIED="1405105161211" LINK="MLS_GreenButton.mm"/>
</node>
<node TEXT="Federal Facilities Management" ID="ID_30726846" CREATED="1374938932466" MODIFIED="1404153949780" LINK="https://docs.google.com/spreadsheets/d/1lUy1ho-ZDHk0-OLEQ2wEUZlyX6HB7sH11f4CdQCn964/edit?usp=sharing">
<node TEXT="GSA" ID="ID_1681049085" CREATED="1403389508822" MODIFIED="1403389513681">
<node TEXT="DC Pilot" ID="ID_658371369" CREATED="1403531047285" MODIFIED="1403531053216">
<node TEXT="Partners" ID="ID_22337631" CREATED="1403531064173" MODIFIED="1403531069467">
<node TEXT="Pepco Holdings" ID="ID_382057831" CREATED="1403531053736" MODIFIED="1403531059335"/>
<node TEXT="Schneider Electric" ID="ID_1923763272" CREATED="1403531078713" MODIFIED="1403531083709"/>
<node TEXT="First Fuel" ID="ID_1126088069" CREATED="1403531084411" MODIFIED="1403531087425"/>
<node TEXT="GSA" ID="ID_1744175847" CREATED="1403531087901" MODIFIED="1403531091853"/>
</node>
</node>
</node>
<node TEXT="Veterans Administration" ID="ID_461920831" CREATED="1403389515062" MODIFIED="1403475419190"/>
<node TEXT="Tennesee Vally Authority" ID="ID_973654243" CREATED="1403474642512" MODIFIED="1403474652775"/>
<node TEXT="Department of Commerce" ID="ID_1211267202" CREATED="1403474654894" MODIFIED="1403474665586"/>
<node TEXT="2H2014 Plan" ID="ID_1554918127" CREATED="1403474666421" MODIFIED="1403530187310">
<node TEXT="Partners" ID="ID_235279988" CREATED="1403475460628" MODIFIED="1403475474598">
<node TEXT="First Fuel" ID="ID_1773148115" CREATED="1403530198393" MODIFIED="1403530208496"/>
<node TEXT="Schneider Electric" ID="ID_1814843899" CREATED="1403530209044" MODIFIED="1403530214323"/>
<node TEXT="Retroficiency" ID="ID_681194778" CREATED="1403530214763" MODIFIED="1403530219568"/>
<node TEXT="Pepco" ID="ID_1965690588" CREATED="1403530220238" MODIFIED="1403530225386"/>
<node TEXT="SCE" ID="ID_1883531832" CREATED="1403530225778" MODIFIED="1403530228426"/>
<node TEXT="PG&amp;E" ID="ID_750567250" CREATED="1403530228738" MODIFIED="1403530230606"/>
<node TEXT="SDG&amp;E" ID="ID_1101435077" CREATED="1403530230980" MODIFIED="1403530234940"/>
<node TEXT="GSA" ID="ID_463263466" CREATED="1403530241592" MODIFIED="1403530243167"/>
<node TEXT="VA" ID="ID_513259103" CREATED="1403530244049" MODIFIED="1403530245062"/>
<node TEXT="DoC" ID="ID_1937197860" CREATED="1403530245477" MODIFIED="1403530252811"/>
<node TEXT="DoD" ID="ID_802320715" CREATED="1403530253146" MODIFIED="1403530257868"/>
</node>
<node TEXT="Milestones" ID="ID_1463698174" CREATED="1403475476592" MODIFIED="1403475481297"/>
<node TEXT="Timeline" ID="ID_236208660" CREATED="1403475482029" MODIFIED="1403475487718"/>
<node TEXT="Threads" ID="ID_239247495" CREATED="1403475496850" MODIFIED="1403475606433">
<node TEXT="FirstFuel" ID="ID_429880251" CREATED="1403529793500" MODIFIED="1403529803578">
<node TEXT="GSA" ID="ID_872494707" CREATED="1403529804682" MODIFIED="1403529816498"/>
<node TEXT="Pepco" ID="ID_342124094" CREATED="1403529817097" MODIFIED="1403529825552"/>
<node TEXT="SCE" ID="ID_1323911500" CREATED="1403529826102" MODIFIED="1403529828177"/>
</node>
<node TEXT="Schneider" ID="ID_1678153888" CREATED="1403529832916" MODIFIED="1403529990373">
<node TEXT="EPO" ID="ID_1199366951" CREATED="1403529839190" MODIFIED="1403529843621">
<node TEXT="Austin" ID="ID_446664969" CREATED="1403529844501" MODIFIED="1403529846637"/>
<node TEXT="Pepco" ID="ID_1354886421" CREATED="1403529847463" MODIFIED="1403529850113"/>
<node TEXT="PG&amp;E" ID="ID_866145284" CREATED="1403529850758" MODIFIED="1403529857061"/>
<node TEXT="" ID="ID_1974858904" CREATED="1403529857671" MODIFIED="1403529857671"/>
</node>
<node TEXT="EEM" ID="ID_1968507128" CREATED="1403529945920" MODIFIED="1403529947868">
<node TEXT="GSA" ID="ID_1147751485" CREATED="1403529949415" MODIFIED="1403529951346"/>
</node>
</node>
<node TEXT="Retroficiency" ID="ID_1207782213" CREATED="1403529959792" MODIFIED="1403530139485"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Mike Kaplan
    </p>
    <p>
      VP - Markiting
    </p>
    <p>
      mike.caplan@retroficiency.com
    </p>
    <p>
      o 857 753 4840 x163
    </p>
    <p>
      c 845 304 2346
    </p>
    <p>
      
    </p>
    <p>
      180 Canal Street, Suite 401
    </p>
    <p>
      Boston, MA 02114
    </p>
    <p>
      
    </p>
    <p>
      www.retroficiency.com
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="EPA Portfolio Manager" ID="ID_922223650" CREATED="1403531116102" MODIFIED="1403531128401"/>
</node>
<node TEXT="Outage Management" ID="ID_911325696" CREATED="1374938939760" MODIFIED="1403663021869">
<node TEXT="Seattle City Light" ID="ID_1295132297" CREATED="1403663022979" MODIFIED="1403663027136">
<node TEXT="" ID="ID_464054441" CREATED="1404923213445" MODIFIED="1404923213445"/>
</node>
<node TEXT="NISC Wake Electric" ID="ID_934779475" CREATED="1403663027635" MODIFIED="1403663038683"/>
<node TEXT="SDG&amp;E" ID="ID_1428816824" CREATED="1403663039442" MODIFIED="1403663050823"/>
<node TEXT="SCE" ID="ID_1675004589" CREATED="1403663051600" MODIFIED="1403663055947"/>
<node TEXT="PG&amp;E" ID="ID_1853034442" CREATED="1403663056415" MODIFIED="1403663058527"/>
<node TEXT="Maryland ?? Pepco or ???" ID="ID_1584398123" CREATED="1403663060121" MODIFIED="1403663077023"/>
<node TEXT="Github Repo" ID="ID_348442119" CREATED="1404923024848" MODIFIED="1404923177653" LINK="https://github.com/ifactor/open-power-status"/>
</node>
<node TEXT="Residential Energy Efficiency" ID="ID_859913533" CREATED="1374938967237" MODIFIED="1374938991794">
<node TEXT="Sempra" ID="ID_71044858" CREATED="1403389536643" MODIFIED="1403389541528"/>
<node TEXT="GoogleNest" ID="ID_1092615225" CREATED="1403389542330" MODIFIED="1403389553318"/>
<node TEXT="EarthNetworks" ID="ID_216617523" CREATED="1403389554977" MODIFIED="1403389573534"/>
<node TEXT="Management of Consumption" ID="ID_988071551" CREATED="1403389755403" MODIFIED="1403389773014"/>
<node TEXT="Efficiency Organizations" ID="ID_208331488" CREATED="1403389773967" MODIFIED="1403475785789">
<node TEXT="State" ID="ID_706492163" CREATED="1403475787520" MODIFIED="1403475789742"/>
<node TEXT="Regional" ID="ID_1854194708" CREATED="1403475790226" MODIFIED="1403475794104"/>
<node TEXT="Markets" ID="ID_197597173" CREATED="1403475794760" MODIFIED="1403475803645"/>
<node TEXT="Green Button" ID="ID_1229558304" CREATED="1403475804069" MODIFIED="1403475814108"/>
</node>
<node TEXT="WattTime" ID="ID_1254178032" CREATED="1404741447583" MODIFIED="1404741472818"/>
</node>
</node>
<node TEXT="Vendor Ecosystem" POSITION="left" ID="ID_1258939437" CREATED="1374942871292" MODIFIED="1405694231667">
<edge COLOR="#00ff00"/>
<node TEXT="Infrastructure" ID="ID_168607511" CREATED="1405617999345" MODIFIED="1405694225374">
<node TEXT="Vendors" ID="ID_529070234" CREATED="1405694204523" MODIFIED="1405694214464">
<node TEXT="NISC (National Information Solutions Cooperative)" ID="ID_935381329" CREATED="1374938372186" MODIFIED="1405694225373" HGAP="-112" VSHIFT="-5">
<attribute NAME="CustomerCount" VALUE="6000000" OBJECT="org.freeplane.features.format.FormattedNumber|6000000"/>
</node>
<node TEXT="Schneider" ID="ID_63363682" CREATED="1376066573072" MODIFIED="1405694220159" HGAP="37" VSHIFT="-15">
<node TEXT="Products" ID="ID_1136644268" CREATED="1379688878185" MODIFIED="1379688888747">
<node TEXT="Energy Profiler Online (EPO) Utility Portal" ID="ID_504659851" CREATED="1380293140614" MODIFIED="1404758184671"/>
<node TEXT="ION EEM system - Energy Manager Portal" ID="ID_1450359841" CREATED="1380293151534" MODIFIED="1404758199669"/>
</node>
</node>
<node TEXT="C3" ID="ID_461111632" CREATED="1380293188300" MODIFIED="1380293190214"/>
<node TEXT="Itron" ID="ID_303407134" CREATED="1374942898868" MODIFIED="1380293805046">
<attribute NAME="CustomerCount" VALUE="5000000" OBJECT="org.freeplane.features.format.FormattedNumber|5000000|#0.####"/>
</node>
<node TEXT="Silversprings Networks" ID="ID_1514319339" CREATED="1374942890167" MODIFIED="1380293796131">
<attribute NAME="CustomerCount" VALUE="17000000" OBJECT="org.freeplane.features.format.FormattedNumber|17000000|#0.####"/>
<node TEXT="Customers" ID="ID_202723396" CREATED="1380293223669" MODIFIED="1380293227063">
<node TEXT="Sacremento Muni Utility District (SMUD)" ID="ID_1956604775" CREATED="1380293236294" MODIFIED="1380293267903"/>
</node>
</node>
<node TEXT="Aclara" ID="ID_1651456862" CREATED="1374942879386" MODIFIED="1374942887017">
<node TEXT="InterviewNotes" ID="ID_1901707595" CREATED="1379688825892" MODIFIED="1379688841901"/>
<node TEXT="Products" ID="ID_1063429978" CREATED="1379688895156" MODIFIED="1379688901079"/>
</node>
<node TEXT="Oracle" ID="ID_1282704184" CREATED="1374942911719" MODIFIED="1375273360500">
<font SIZE="7"/>
</node>
<node TEXT="IBM" ID="ID_113075955" CREATED="1405700479478" MODIFIED="1405700482166">
<node TEXT="Team" ID="ID_1205245872" CREATED="1405700482836" MODIFIED="1405700484135">
<node TEXT="Dave Cortez" ID="ID_1043059372" CREATED="1405700484600" MODIFIED="1405700488446"/>
<node TEXT="Ron Ambrosio" ID="ID_534699475" CREATED="1405700489764" MODIFIED="1405700494249"/>
<node TEXT="Dale ?? (SCE)" ID="ID_1411779119" CREATED="1405700495161" MODIFIED="1405700511492"/>
</node>
</node>
</node>
</node>
<node TEXT="Analytic" ID="ID_1992097536" CREATED="1405694291704" MODIFIED="1405694295921">
<node TEXT="Agilis" ID="ID_1688737969" CREATED="1405618073911" MODIFIED="1405618078727"/>
<node TEXT="FirstFuel" ID="ID_105319219" CREATED="1376066588960" MODIFIED="1376066591648"/>
<node TEXT="IBM" ID="ID_166012957" CREATED="1374942901540" MODIFIED="1405694231666"/>
<node TEXT="OPower" ID="ID_866788039" CREATED="1376066564722" MODIFIED="1376066567864"/>
</node>
</node>
<node TEXT="Technology" POSITION="left" ID="ID_1833279867" CREATED="1403390596884" MODIFIED="1403390608916">
<edge COLOR="#7c0000"/>
<node TEXT="Feeds &amp; Entries" ID="ID_832657495" CREATED="1403390609465" MODIFIED="1403390623203"/>
<node TEXT="Links &amp; IDs" ID="ID_512399607" CREATED="1403390646687" MODIFIED="1403663513814">
<font SIZE="9"/>
</node>
</node>
<node TEXT="Green Button Gas" POSITION="left" ID="ID_1477386347" CREATED="1403475679049" MODIFIED="1403475690040">
<edge COLOR="#00007c"/>
<node TEXT="Committed" ID="ID_1231315276" CREATED="1403475696188" MODIFIED="1403475705099"/>
<node TEXT="Deployed" ID="ID_1412936481" CREATED="1403475708416" MODIFIED="1403475711654"/>
</node>
<node TEXT="Green Button Water" POSITION="left" ID="ID_608132225" CREATED="1405693121498" MODIFIED="1405693128521">
<edge COLOR="#ff0000"/>
<node TEXT="LA DWP" ID="ID_829419007" CREATED="1405693582759" MODIFIED="1405693590658"/>
<node TEXT="Kalamath Falls (??)" ID="ID_1324428931" CREATED="1405693591535" MODIFIED="1405693626740"/>
</node>
<node TEXT="Green Button Air Quality" POSITION="left" ID="ID_130989681" CREATED="1405693129037" MODIFIED="1405693137069">
<edge COLOR="#0000ff"/>
<node TEXT="SanJose/Intel Deployment" ID="ID_231619275" CREATED="1405693560965" MODIFIED="1405693577992"/>
</node>
<node TEXT="Testing &amp; Certification" POSITION="right" ID="ID_1222161090" CREATED="1374937266294" MODIFIED="1404923972727">
<edge COLOR="#7c7c00"/>
<node TEXT="Download My Data" ID="ID_963836877" CREATED="1374937803730" MODIFIED="1374937813332">
<node TEXT="Testing &amp; Certification Authorities" ID="ID_928795991" CREATED="1374938707737" MODIFIED="1403662416013">
<node TEXT="UCAIug" ID="ID_616697946" CREATED="1403662302249" MODIFIED="1403662306937"/>
<node TEXT="ANSII" ID="ID_1750411079" CREATED="1403662418071" MODIFIED="1403662421854"/>
</node>
<node TEXT="Test Labs" ID="ID_1795648443" CREATED="1374938736034" MODIFIED="1374938749459">
<node TEXT="Underwriters Labs (UL)" ID="ID_1415005275" CREATED="1374938850418" MODIFIED="1374938863885"/>
</node>
<node TEXT="Tested Implementations" ID="ID_517498005" CREATED="1374938750201" MODIFIED="1374938757197">
<node TEXT="Schneider-Electric EPO" ID="ID_228061556" CREATED="1374938882607" MODIFIED="1403662367139"/>
<node TEXT="Pepco Holdings" ID="ID_1963715863" CREATED="1374938894392" MODIFIED="1403662377944"/>
<node TEXT="NISC/Wake Electric" ID="ID_1057077086" CREATED="1379363488671" MODIFIED="1403662392851"/>
</node>
<node TEXT="Interoperability Testing and Certification (ITCA)" ID="ID_957272283" CREATED="1374938758590" MODIFIED="1374938810727"/>
</node>
<node TEXT="Connect My Data" ID="ID_1400652575" CREATED="1374937815547" MODIFIED="1374937822514">
<node TEXT="Testing &amp; Certification Authority" ID="ID_1516885538" CREATED="1374938707737" MODIFIED="1374938714565">
<node TEXT="UCAIug" ID="ID_275078276" CREATED="1403662429663" MODIFIED="1403662434291"/>
<node TEXT="ANSII" ID="ID_1442294093" CREATED="1403662442295" MODIFIED="1403662444341"/>
</node>
<node TEXT="Underwriters Labs (UL)" ID="ID_1675069677" CREATED="1374938736034" MODIFIED="1403662456768">
<node TEXT="" ID="ID_394240783" CREATED="1403662446445" MODIFIED="1403662446445"/>
</node>
<node TEXT="Tested Implementations" ID="ID_212515273" CREATED="1374938750201" MODIFIED="1374938757197">
<node TEXT="Schneider Electric EPO" ID="ID_1509125625" CREATED="1403662459972" MODIFIED="1403662474008"/>
<node TEXT="Scheider Electric ION EEM" ID="ID_1158239175" CREATED="1403662474571" MODIFIED="1403662485019"/>
<node TEXT="C3" ID="ID_21236049" CREATED="1403662485552" MODIFIED="1403662492418"/>
<node TEXT="Souther California Edison (SCE)" ID="ID_1152167709" CREATED="1403662493129" MODIFIED="1403662506046"/>
<node TEXT="Pacific Gas &amp; Electric (PG&amp;E)" ID="ID_420393770" CREATED="1403662506674" MODIFIED="1403662516934"/>
<node TEXT="San Diego Gas &amp; Electric (SDG&amp;E)" ID="ID_38116448" CREATED="1403662517575" MODIFIED="1403662542673"/>
<node TEXT="London Hydro" ID="ID_650303331" CREATED="1403662543707" MODIFIED="1403662549274"/>
</node>
<node TEXT="Interoperability Testing and Certification (ITCA)" ID="ID_589422744" CREATED="1374938758590" MODIFIED="1374938810727"/>
</node>
</node>
<node TEXT="Energy Conglomorate Universe" LOCALIZED_STYLE_REF="styles.topic" POSITION="right" ID="ID_561521170" CREATED="1379689542938" MODIFIED="1405694091911" HGAP="-24" VSHIFT="540">
<hook NAME="FreeNode"/>
<edge COLOR="#00ff00"/>
<font SIZE="24"/>
<cloud COLOR="#33ffff" SHAPE="ARC"/>
<node TEXT="MidAmerican Energy Holdings Company" ID="ID_1790103225" CREATED="1379689568347" MODIFIED="1405693805874" LINK="http://www.midamerican.com/">
<font SIZE="18"/>
<node TEXT="PacifiCorp" ID="ID_1192426092" CREATED="1379689724753" MODIFIED="1379690664297" LINK="http://www.pacificorp.com/car/op.html">
<node TEXT="Rocky Mountain Power" ID="ID_1938859717" CREATED="1379689836109" MODIFIED="1379690639004" LINK="http://www.rockymountainpower.net/index.html"/>
<node TEXT="PacificPower" ID="ID_1886234263" CREATED="1379690555775" MODIFIED="1383413058481" LINK="http://www.pacificpower.net/index.html"/>
</node>
<node TEXT="MidAmerican Energy Company" ID="ID_1667002663" CREATED="1379689734396" MODIFIED="1380300017416" LINK="http://www.midamericanenergy.com/aboutus2.aspx"/>
<node TEXT="" ID="ID_714337661" CREATED="1379689776918" MODIFIED="1379689776918"/>
</node>
<node TEXT="Xcel Energy Inc" ID="ID_490834549" CREATED="1379689708822" MODIFIED="1405693811291" LINK="http://www.xcelenergy.com/">
<font SIZE="18"/>
<node TEXT="Colorado" ID="ID_1761641767" CREATED="1380038319134" MODIFIED="1380038332168" LINK="http://www.xcelenergy.com/About_Us/Our_Company/Service_Areas/Colorado_Communities_Served"/>
<node TEXT="Michigan" ID="ID_1135429440" CREATED="1380038334351" MODIFIED="1380038401516" LINK="http://www.xcelenergy.com/About_Us/Our_Company/Service_Areas/Michigan_Communities_Served"/>
<node TEXT="Minnisota" ID="ID_1171269326" CREATED="1380038404292" MODIFIED="1380038435020" LINK="http://www.xcelenergy.com/About_Us/Our_Company/Service_Areas/Minnesota_Communities_Served"/>
<node TEXT="New Mexico" ID="ID_536024618" CREATED="1380038437060" MODIFIED="1405693177934" LINK="http://www.xcelenergy.com/About_Us/Our_Company/Service_Areas/Minnesota_Communities_Served"/>
<node TEXT="North Dakota" ID="ID_154597070" CREATED="1380038458065" MODIFIED="1380038479627" LINK="http://www.xcelenergy.com/About_Us/Our_Company/Service_Areas/Minnesota_Communities_Served"/>
<node TEXT="South Dakota" ID="ID_1315520753" CREATED="1380038480784" MODIFIED="1380038523671" LINK="http://www.xcelenergy.com/About_Us/Our_Company/Service_Areas/Minnesota_Communities_Served"/>
<node TEXT="Texas" ID="ID_1448284487" CREATED="1380038537002" MODIFIED="1380038545323" LINK="http://www.xcelenergy.com/About_Us/Our_Company/Service_Areas/Texas_Communities_Served"/>
</node>
<node TEXT="Southern Company" ID="ID_27099084" CREATED="1380293496269" MODIFIED="1405693845440" LINK="http://www.southerncompany.com/" STYLE="as_parent">
<font SIZE="18"/>
<node TEXT="Alabama Power" ID="ID_97073807" CREATED="1380298855516" MODIFIED="1380298875238" LINK="http://www.alabamapower.com/"/>
<node TEXT="Georgia Power" ID="ID_1750297677" CREATED="1380298877837" MODIFIED="1380298906938" LINK="http://www.georgiapower.com/"/>
<node TEXT="Gulf Power" ID="ID_285064843" CREATED="1380298908836" MODIFIED="1380298932670" LINK="http://www.gulfpower.com/"/>
<node TEXT="Missippi Power" ID="ID_788298191" CREATED="1380299028406" MODIFIED="1380299055398" LINK="http://www.mississippipower.com/"/>
</node>
<node TEXT="Sempra Energy" ID="ID_1940871747" CREATED="1380307756601" MODIFIED="1405693862071" LINK="http://www.sempra.com/">
<font SIZE="18"/>
<node TEXT="SDG&amp;E" ID="ID_325135697" CREATED="1380307770842" MODIFIED="1380307795580" LINK="http://SDGE.com"/>
<node TEXT="SoCal Gas" ID="ID_598705577" CREATED="1380307777723" MODIFIED="1380307826136" LINK="http://www.socalgas.com/"/>
</node>
<node TEXT="Duke Progress Energy" ID="ID_1125220889" CREATED="1380307954643" MODIFIED="1405693869996" LINK="https://www.progress-energy.com/">
<font SIZE="18"/>
<node TEXT="North Carolina" ID="ID_1512290958" CREATED="1380307991141" MODIFIED="1380308006407" LINK="http://www.duke-energy.com/north-carolina.asp"/>
<node TEXT="Indiana" ID="ID_466458533" CREATED="1380308094668" MODIFIED="1380308134525" LINK="http://www.duke-energy.com/indiana.asp"/>
<node TEXT="Kentucky" ID="ID_1580656533" CREATED="1380308137260" MODIFIED="1380308163871" LINK="http://www.duke-energy.com/kentucky.asp"/>
<node TEXT="Ohio" ID="ID_882256584" CREATED="1380308176308" MODIFIED="1380308798528" LINK="http://www.duke-energy.com/ohio.asp"/>
<node TEXT="South Carolina" ID="ID_1538013272" CREATED="1380308185888" MODIFIED="1380308266901" LINK="http://www.duke-energy.com/south-carolina.asp"/>
<node TEXT="Preogress Energy (Florida)" ID="ID_504892405" CREATED="1380308020182" MODIFIED="1380308227781" LINK="http://www.duke-energy.com/south-carolina.asp"/>
<node TEXT="Progress Energy (South Carolina)" ID="ID_224873677" CREATED="1380308232944" MODIFIED="1380308795605" LINK="https://www.progress-energy.com/carolinas/home/index.page"/>
</node>
<node TEXT="Excelon" ID="ID_1245115272" CREATED="1383248541076" MODIFIED="1405693875167" LINK="http://www.exeloncorp.com">
<font SIZE="18"/>
<node TEXT="Baltimore Gas &amp; Electric (BGE)" ID="ID_1459052335" CREATED="1383311779269" MODIFIED="1383312000903" LINK="http://www.bge.com/pages/default.aspx"/>
<node TEXT="Constelation Energy" ID="ID_362640398" CREATED="1383311792661" MODIFIED="1383312053062" LINK="http://www.constellation.com/pages/default.aspx"/>
<node TEXT="ComEd" ID="ID_223973703" CREATED="1383311802582" MODIFIED="1383311968871" LINK="https://www.comed.com/Pages/default.aspx"/>
<node TEXT="PECO (Patomic Electric Company)" ID="ID_1153838447" CREATED="1383311901969" MODIFIED="1383312028926" LINK="https://www.peco.com/Pages/Home.aspx"/>
</node>
<node TEXT="Northeast Utilities" ID="ID_583425420" CREATED="1392995595177" MODIFIED="1405693881730">
<font SIZE="18"/>
<node TEXT="Connecticut Power &amp; Light" ID="ID_1069903894" CREATED="1392995627193" MODIFIED="1392995637188"/>
<node TEXT="New Hampshire Public Service" ID="ID_869720799" CREATED="1392995637915" MODIFIED="1405693253914"/>
<node TEXT="NStar" ID="ID_816248585" CREATED="1392995658787" MODIFIED="1392995661134"/>
</node>
<node TEXT="Ameren Corp" ID="ID_1145952499" CREATED="1393534312315" MODIFIED="1405693888658">
<font SIZE="18"/>
</node>
<node TEXT="AEP - American Electric Power" ID="ID_127734674" CREATED="1393534443277" MODIFIED="1405693898894">
<font SIZE="18"/>
</node>
<node TEXT="AES Corp" ID="ID_40703951" CREATED="1393534454623" MODIFIED="1405693905715">
<font SIZE="18"/>
</node>
<node TEXT="ALK - Alaska Energy Resources" ID="ID_1455315476" CREATED="1393534460980" MODIFIED="1405693910194">
<font SIZE="18"/>
</node>
<node TEXT="ALQ - Algonquine Power &amp; Utility Corp" ID="ID_843744715" CREATED="1393534474306" MODIFIED="1405693914980">
<font SIZE="18"/>
</node>
<node TEXT="AVA - Avista Corp" ID="ID_1913498843" CREATED="1393534513019" MODIFIED="1405693919931">
<font SIZE="18"/>
</node>
<node TEXT="BHK - Black Hills Corp" ID="ID_371869775" CREATED="1393534523023" MODIFIED="1405693924564">
<font SIZE="18"/>
</node>
<node TEXT="BHK.A - Berkshire Hathaway Inc." ID="ID_1593082709" CREATED="1393534536839" MODIFIED="1405693928664">
<font SIZE="18"/>
</node>
<node TEXT="CDQ - Cassie de depot et placement du Qubec" ID="ID_1241212021" CREATED="1393534549977" MODIFIED="1405694091910">
<font SIZE="18"/>
</node>
<node TEXT="CMS - CMS Energy Corp" ID="ID_778048095" CREATED="1393534577892" MODIFIED="1405693940536">
<font SIZE="18"/>
</node>
<node TEXT="CNL - Cleco Corp." ID="ID_760104117" CREATED="1393534586266" MODIFIED="1405693946522">
<font SIZE="18"/>
</node>
<node TEXT="CNP - Centerpoint Energy Corp" ID="ID_1265486125" CREATED="1393534605181" MODIFIED="1405693952478">
<font SIZE="18"/>
</node>
<node TEXT="CPK - Chesapeake Utilities Corp." ID="ID_512123738" CREATED="1393534616434" MODIFIED="1405693957747">
<font SIZE="18"/>
</node>
<node TEXT="D - Dominion Resources Inc." ID="ID_1290998467" CREATED="1393534641942" MODIFIED="1405693962449">
<font SIZE="18"/>
</node>
<node TEXT="DTE - DTE Energy Co." ID="ID_627290336" CREATED="1393534653812" MODIFIED="1405693968025">
<font SIZE="18"/>
</node>
<node TEXT="DUQ - Dusquene Light Holdings" ID="ID_537115505" CREATED="1393534747751" MODIFIED="1405693973056">
<font SIZE="18"/>
</node>
<node TEXT="ED - Consolidated Edison Corp" ID="ID_331817128" CREATED="1393534762238" MODIFIED="1405693977099">
<font SIZE="18"/>
</node>
<node TEXT="EDE - Empire District Electric" ID="ID_664839361" CREATED="1393534776871" MODIFIED="1405693981212">
<font SIZE="18"/>
</node>
<node TEXT="EE - El Paso Electric Co." ID="ID_1897958439" CREATED="1393534792026" MODIFIED="1405693986051">
<font SIZE="18"/>
</node>
<node TEXT="EIX - Edison International" ID="ID_271718615" CREATED="1393534803832" MODIFIED="1405693990830">
<font SIZE="18"/>
</node>
<node TEXT="EMA - Emera Corp" ID="ID_293187884" CREATED="1393534822907" MODIFIED="1405693995517">
<font SIZE="18"/>
</node>
<node TEXT="ETR - Entergy Corp" ID="ID_1862243620" CREATED="1393534836938" MODIFIED="1405693999633">
<font SIZE="18"/>
</node>
<node TEXT="FE - First Energy" ID="ID_1779117105" CREATED="1393534849226" MODIFIED="1405694003589">
<font SIZE="18"/>
</node>
<node TEXT="FTS - Fortis Inc." ID="ID_1610824136" CREATED="1393534864256" MODIFIED="1405694007872">
<font SIZE="18"/>
</node>
</node>
</node>
</map>
