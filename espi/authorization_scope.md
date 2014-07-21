---
title: ESPI OAuth2 Scope Definition
layout: page
---
<div>
<h2>Encoding of OAuth 2.0 “scope”</h2>
<h3>Ref: <a href="">authorization.docx Section 2.6</a></h3>
<p>The following defines a potential OAuth 2.0 “scope” parameter format.&nbsp; It is based on the Green Button Test Plan function blocks for the data custodian (defines what is in the file).
<u></u><u></u></p>
<p>From the test plan (these are the individual blocks of conformance that will be tested for):<u></u><u></u></p>
<h3>1.1.1<span style="font-weight:normal;font-size:7pt;font-family:&#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;
</span>Function Blocks Terms for Scope<u></u><u></u></h3>
<p class="MsoNormal"><u></u>&nbsp;<u></u></p>
<table border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none">
<thead>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;background:#4CBA6F;padding:0in 5.4pt 0in 5.4pt">
<p><b><span style="color:white">FB
<br>
Term<u></u><u></u></span></b></p>
</td>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-left:none;background:#4CBA6F;padding:0in 5.4pt 0in 5.4pt">
<p><b><span style="color:white">Function Block<u></u><u></u></span></b></p>
</td>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-left:none;background:#4CBA6F;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b><span style="color:white">FB <br>
Term<u></u><u></u></span></b></p>
</td>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-left:none;background:#4CBA6F;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b><span style="color:white">Function Block<u></u><u></u></span></b></p>
</td>
</tr>
</thead>
<tbody>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>1<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_1] Common Data Custodian<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>18<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_18] Multiple Usage Points<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>2<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_2] Green Button Download My Data<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>19<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_19] Partial update data<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>3<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_3] Core Green Button Connect My Data<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>27<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_27] Usage Summary with Demands and Previous Day Attributes<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>4<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_4] Interval Metering<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>28<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_28] Usage Summary Costs for Current Billing Period<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>5<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_5] Interval Electricity Metering<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>29<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_29] Temperature<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>6<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_6] Demand Electricity Metering<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>32<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_32] Resource Level REST<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>7<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_7] Net Metering<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>33<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_33] Management REST Interfaces<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>8<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_8] Forward and Reverse Metering<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>34<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_34] SFTP for Bulk<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>9<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_9] Register Values<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>35<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_35] REST for Bulk<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>10<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_10] Gas<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>36<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_36] Third Party (Client) Dynamic Registration<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>11<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_11] Water<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>37<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_37] Query Parameters<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>12<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_12] Cost of Interval Data<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>38<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_38] On Demand Requests<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>13<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_13] Security and Privacy classes<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>39<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_39] PUSH model<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>14<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_14] Authorization and Authentication<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>40<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_40] Offline Authorization<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>15<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_15] Usage Summary<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>41<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_41] Manage&nbsp; Authorization Resource<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>16<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_16] Usage Summary with Cost<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>42<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_42] Third Party Core REST Services<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>17<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p>[FB_17] Power Quality Summary<u></u><u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
<b>43<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">
[FB_43] Third Party Management REST Services<u></u><u></u></p>
</td>
</tr>
<tr>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p><b>&nbsp;</b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p><u></u>&nbsp;<u></u></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%"><b>44<u></u><u></u></b></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" style="margin-bottom:10.0pt;line-height:115%">[FB_44] Manage ApplicationInformation Resource<u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p><u></u>&nbsp;<u></u></p>
<h3>1.1.2<span style="font-weight:normal;font-size:7pt;font-family:&#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;
</span>Extended Backus-Naur Form (EBNF) for Scope parameter:<a href="https://mail.google.com/mail/u/0/?ui=2&ik=fd9c02731b&view=lg&msg=1475952e6fe8889a#1475952e6fe8889a__ftn1" name="1475952e6fe8889a__ftnref1" title=""><span><span><b><span style="font-size:11pt;color:rgb(79,129,189)">[1]</span></b></span></span></a><u></u><u></u></h3>
<p><u></u>&nbsp;<u></u></p>
<table border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none">
<thead>
<tr style="height:16.95pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:16.95pt">
<p class="MsoNormal" style="vertical-align:bottom"><b><span style="font-size:18pt">Term</span></b><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:16.95pt">
<p class="MsoNormal" style="vertical-align:bottom"><b><span style="font-size:18pt">Expansion</span></b><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
</thead>
<tbody>
<tr style="height:13.45pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">Scope
</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">&nbsp;[ FBTerms ], [ ValueTerms ], [ ResourceTerms ];</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:13.45pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">FBTerms
</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">“FB=“, { [FBTerm], ”_”} , FBTerm, ScopeDelimiter ;</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:13.45pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">FBTerm
</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">“1” | “2” | “3” “4” | “5” | “6” | “7” | “8” | “9” | “10” | “11” | “12” | “13” | “14” | “15” | “16” | “17” | “18” | “19” | “27” | “28” | “29” | “32”
| “33” | “34” | “35” | “36” | “37” | “38” | “39” | “40” | “41” | “42” | “43”</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:13.45pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">ValueTerms
</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">{ ( "IntervalDuration=",
</span><span style="font-size:14pt">namedOrNumber,{“_”, namedOrNumber}</span><span style="font-size:14pt">),</span><span style="font-size:14.0pt;color:red">
</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:13.75pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13.75pt">
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.75pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">| ( "BlockDuration=",
</span><span style="font-size:14pt">namedOrNumber,{“_”, namedOrNumber}</span><span style="font-size:14pt">),
</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:13.45pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">| ( "HistoryLength=", nonNegativeNumber),</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:13.45pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:13.45pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">| ( "SubscriptionFrequency=", nonNegativeNumber | namedFrequency), ScopeDelimiter };</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:28.3pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:28.3pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">ResourceTerms</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:28.3pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">{ (“</span><span style="font-size:14pt">AccountCollection</span><span style="font-size:14pt">=”, nonNegativeNumber) | “BR=”, brID), ScopeDelimiter}</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">ScopeDelimiter</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">“;”</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">namedFrequency
</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">“billingPeriod” | “daily” | “monthly” | “seasonal” | “weekly” |
</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">namedOrNumber</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">nonNegativeNumber | namedFrequency;</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">brID</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">Character</span><span style="font-size:14pt">, {Character}*;</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">nonNegativeNumber</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">digit, { digit };</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">Digit</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">0 | "1" | "2" | "3" | "4" | "5" | "6" | "7" | "8" | "9" ;</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">Character</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">Digit | “-” |
</span><span style="font-size:14pt">"A" | "B" | "C" | "D" | "E" | "F" | "G"</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | "H" | "I" | "J" | "K" | "L" | "M" | "N"</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:14pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | "O" | "P" | "Q" | "R" | "S" | "T" | "U"</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
<p class="MsoNormal" style="line-height:15.5pt;vertical-align:bottom"><span style="font-size:14pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | "V" | "W" | "X" | "Y" | "Z" |
</span><span style="font-size:14pt">"a" | "b" | "c" | "d" | "e" | "f" | "g" | "h" | "i" | "j" | "k" | "l" | "m" | "n" | "o" | "p" | "q" | "r" | "s" | "t" | "u" | "v" | "w" | "x" | "y" | "z" ;</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p><u></u>&nbsp;<u></u></p>
<p>Where:<u></u><u></u></p>
<table border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none">
<tbody>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">ResourceTerms</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-left:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">If a Bulk resource is specified via the “BR” term, the value of the {bulkID} is provided after the equals sign (“=”). There could be one or more terms
in this list that express the granularity of notifications about resource changes.&nbsp; If the Subscription has more than one UsagePoint, the AccountCollection term can indicate the number of UsagePoints included</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">FBTerms</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">The function blocks supported</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">ValueTerms</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">These are parameterized terms</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">IntervalDuration</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">This is the minimum default length of an interval in seconds (e.g. 900 for 15 minutes, 3600 for one hour, …)</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">BlockDuration</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">This is the length of a block that contains the intervals (based on enumeration of MacroPeriodKind in ESPI above as namedFrequency)</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">HistoryLength</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">This is the length of history buffer seconds</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
<tr style="height:15.5pt">
<td valign="top" style="border:solid #4CBA6F 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">BulkAccountCollection</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
<td valign="top" style="border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt;height:15.5pt">
<p class="MsoNormal" style="vertical-align:bottom"><span style="font-size:16pt">Used where the DC wants to provide for the reporting of multiple UsagePoints in a single Subscription. The number of UsagePoints is represented by
the value in the assignment statement – e.g. 4 UsagePoints would be BulkAccountCollection=4.</span><span style="font-size:18.0pt;font-family:Arial"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p style="margin-left:1.5in"><u></u>&nbsp;<u></u></p>
<h3>1.1.3<span style="font-weight:normal;font-size:7pt;font-family:&#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;
</span>Scope Examples for use In ApplicationInformation<u></u><u></u></h3>
<p class="MsoNormal">The scope parameter in ApplicationInformation provides the scopes available from the DataCustodian. They are compound in that a particular scope for an authorization may be a subset.<u></u><u></u></p>
<p class="MsoNormal">Example 1:<u></u><u></u></p>
<p class="MsoNormal" style="margin-left:1.0in">Scope = “FB=1_3_4_5_8_13_18_19_31_34_<wbr>35_39;<br>
<span style="font-family:&quot;Wingdings 3&quot;">Ê</span>IntervalDuration=900_3600;<wbr>BlockDuration=Daily; HistoryLength= 34128000;<wbr>SubscriptionFrequency=Daily;<br>
<span style="font-family:&quot;Wingdings 3&quot;">Ê</span> AccountCollection=5;BR=1;”<u></u><u></u></p>
<p class="MsoNormal">Example 2:<u></u><u></u></p>
<p class="MsoNormal" style="margin-left:1.0in">Scope = “FB=1_3_4_5_7_8_13_14_15_18_<wbr>19_31_32_34_35_37_38_39_40;<br>
<span style="font-family:&quot;Wingdings 3&quot;">Ê</span>IntervalDuration=300_900_<wbr>3600;BlockDuration=Daily_<wbr>BillingPeriod_Weekly_Monthly; HistoryLength=63072000;<wbr>SubscriptionFrequency=Daily;<br>
<span style="font-family:&quot;Wingdings 3&quot;">Ê</span> AccountCollection=5;BR=1;”<u></u><u></u></p>
<p class="MsoNormal">Example 3:<u></u><u></u></p>
<p class="MsoNormal" style="margin-left:1.0in">Scope = “FB=1_3_4_5_8_13_14_18_19_31_<wbr>34_35_39_40;<br>
<span style="font-family:&quot;Wingdings 3&quot;">Ê</span>IntervalDuration=300_900_<wbr>3600;BlockDuration=Daily_<wbr>BillingPeriod_Weekly_Monthly; HistoryLength=94608000;<wbr>SubscriptionFrequency=Daily;<br>
<span style="font-family:&quot;Wingdings 3&quot;">Ê</span> AccountCollection=5;BR=1;”<u></u><u></u></p>
<h3>1.1.4<span style="font-weight:normal;font-size:7pt;font-family:&#39;Times New Roman&#39;">&nbsp;&nbsp;&nbsp;&nbsp;
</span>Scope Examples for Individual Authorizations<u></u><u></u></h3>
<p>Electricity Interval Metering of hourly load profile blocked monthly for 13 months and a usage summary:<u></u><u></u></p>
<p style="margin-left:.5in">Scope = “FB=1_3_4_5_13_14_15_19_37_39;<wbr>IntervalDuration=3600;<wbr>BlockDuration=monthly;
<br>
<span style="font-family:&quot;Wingdings 3&quot;">Ê</span> HistoryLength=94608000”<u></u><u></u></p>
<p>Monthly only electricity metering including summaries and costs for 13 months:<u></u><u></u></p>
<p style="margin-left:.5in">Scope = “FB=1_3_4_5_13_14_15_16_19_37_<wbr>39;IntervalDuration=monthly;
<br>
<span style="font-family:&quot;Wingdings 3&quot;">Ê</span> BlockDuration=monthly;
HistoryLength=94608000” <u></u><u></u></p>
<div><br clear="all">
<hr align="left" size="1" width="33%">
<div>
<p>Note: The current
is revised from earlier syntax with comma delimiters removed due to some unpredictable behavior in some OAuth code libraries that recognized comma and space as scope delimiters and ESPI wants the scope strings to be atomic.</p>
</div>
</div>
<br>
</div>
