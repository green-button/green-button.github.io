---
title: ApplicationInformation Definition
layout: page
---
<div>
<h1> ApplicationInformation Resource Details</h2>
<h4>Ref: <a href="http://osgug.ucaiug.org/sgsystems/OpenADE/Shared%20Documents/Testing%20and%20Certification/GreenButtonTestPlan/referenceMaterial/GreenButtonAuthorization.docx">Authorization.docx Appendix D</a>; <a href="https://github.com/energyos/OpenESPI-Common-java/blob/master/etc/espiDerived.xsd">espiDerived.xsd</h4>

Legend: "TP" = ThirdParty; "DC" = DataCustodian

<table border="1" cellspacing="0" cellpadding="0" width="101%" style="border-collapse:collapse;border:none">
<thead>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;background:#4CBA6F;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal" align="center" style="text-align:center">
<b><span style="font-size:9.0pt;color:white">Supplied by</span></b><span style="font-size:16.0pt;color:white"><u></u><u></u></span></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border:solid windowtext 1.0pt;border-left:none;background:#4CBA6F;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b><span style="font-size:16.0pt;color:white">Element</span></b><span style="font-size:16.0pt;color:white"><u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border:solid windowtext 1.0pt;border-left:none;background:#4CBA6F;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b><span style="font-size:16.0pt;color:white">Description</span></b><span style="font-size:16.0pt;color:white"><u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border:solid windowtext 1.0pt;border-left:none;background:#4CBA6F;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b><span style="font-size:16.0pt;color:white">Sample Content</span></b><span style="font-size:16.0pt;color:white"><u></u><u></u></span></p>
</td>
</tr>
</thead>
<tbody>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">dataCustodianId<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Contains the identifier for the Data Custodian.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p style="margin-top:0in;margin-bottom:0.0001pt"><span style="font-size:10pt;font-family:Calibri">“Sandbox Data Custodian” &nbsp;</span><span style="font-family:Calibri"><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">dataCustodianApplicationStatus<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A code indicating the current status of the application. This value is provided by Data Custodian, cannot be modified by Third Party.<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">1 = Review<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">2 = Production<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">3 = On Hold<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">4 = Revoked<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">2<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">thirdPartyApplicationDescripti<wbr>on<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A description of the application.
<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Third Party Application Description is added as provided by each TP<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">thirdPartyApplicationStatus<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A code indicating the current status of the application.<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">1 = Development<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">2 = ReviewTest<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">3 = Production<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">4 = Retired<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">1<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">thirdPartyApplicationType<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A code indicating the type of the application.<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">1 = Web<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">2 = Desktop<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">3 = Mobile<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">4 = Device<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">1<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">thirdPartyApplicationUse<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A code indicating the expected use of the application.<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">1 = EnergyManagement<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">2 = Comparisons<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">3 = Government<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">4 = Academic<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">5 = Law Enforcement<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">6 = Gamification<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">1<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">thirdPartyPhone<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">The phone number of the organization to which access will be granted. (For debugging - not to be shared with customers)<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="tel:%2B1%20800%20673-6377" value="+18006736377" target="_blank">+1 800 673-6377</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">authorizationServerUri<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Contains the base URI link to the authorization server.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/DataCustodian" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>DataCustodian</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">thirdPartyNotifyUri<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">URI used to notify ThirdParty that subscribed information is available.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>ThirdParty/espi/1_1/<wbr>Notification</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">authorizationServerAuthorizati<wbr>onEndpoint<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">An OAuth 2.0 URI used by the client to obtain authorization from the resource owner via user-agent redirection. {AuthorizationServer}{<wbr>AuthorizationPath}<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/DataCustodian/oauth/authorize" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>DataCustodian/oauth/authorize</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">authorizationServerRegistratio<wbr>nEndpoint<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A URI used by the client to register a Third Party with a Data Custodian via its {AuthorizationServer}{<wbr>AuthorizationServer}{<wbr>RegistrationPath}<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/register" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>DataCustodian/espi/1_1/<wbr>register</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">authorizationServerTokenEndpoi<wbr>nt<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">An OAuth 2.0 URL used by the client to exchange an authorization grant for an access token, typically with client authentication.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/DataCustodian/oauth/token" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>DataCustodian/oauth/token</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">dataCustodianBulkRequestURI<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">{DataCustodianBulkRequestURI}&nbsp; URI of DataCustodian’s Bulk Request endpoint.&nbsp; The value is provided by the Data Custodian and cannot be modified by the ThirdParty.&nbsp;
<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Bulk/%7BBulkID%7D" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>DataCustodian/espi/1_1/<wbr>resource/Batch/Bulk/{BulkID}</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">dataCustodianResourceEndpoint<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">{ResourceServer}{ResourcePath}<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>DataCustodian/espi/1_1/<wbr>resource</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">thirdPartyScopeSelectionScreen<wbr>URI<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">URI redirected from DataCustodian to ThirdParty landing page. Often a login or Scope Selection page.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/ThirdParty/espi/1_1/RetailCustomer/ScopeSelection" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>ThirdParty/espi/1_1/<wbr>RetailCustomer/ScopeSelection</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">thirdPartyUserPortalScreenURI<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">URI of a Third Party’s web page for use with Green Button Connect My Data<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/ThirdParty/espi/1_1/home" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>ThirdParty/espi/1_1/home</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">client_secret<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A secret to be associated with a “client_id” provided by the Data Custodian during registration. Used as part of the HTTP basic authorization needed for OAuth authorization.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">secret<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">logo_uri<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">The link to the logo image for the application. Size greater than 180 x 150 may be cropped or reduced (OAuth logo_uri).<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="http://services.greenbuttondata.org/ThirdParty/favicon.png" target="_blank">http://services.<wbr>greenbuttondata.org/<wbr>ThirdParty/favicon.png</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">client_name<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">The name of the application to which access will be granted (OAuth client_name).<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Green Button ThirdParty<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">client_uri<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">The link to the main page of the application (OAuth client_uri).<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/ThirdParty" target="_blank">https://services.<wbr>greenbuttondata.org/ThirdParty</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">redirect_uri<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">The default redirect back to the application after authorization grant (OAuth redirect URI).<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/ThirdParty/espi/1_1/OAuthCallBack" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>ThirdParty/espi/1_1/<wbr>OAuthCallBack</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">client_id<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Contains the identifier for the Third Party (OAuth client_id).<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">&nbsp;(ThirdParty name)<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">tos_uri<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A URI that points to a human-readable Terms of Service document for the Third Party Application.&nbsp; The Terms of Service usually describes a contractual relationship between the
Retail Customer and the Third Party Application that the Retail Customer accepts when authorizing access to the Third Party Application.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="http://services.greenbuttondata.org/ThirdParty/TermsOfService" target="_blank">http://services.<wbr>greenbuttondata.org/<wbr>ThirdParty/TermsOfService</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">policy_uri<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A URI that points to a human-readable Policy document for the Third Party Application.&nbsp; The policy usually describes how a Retail Customer's energy usage information will be used
by the Third Party Application.<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">&nbsp;</span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="http://services.greenbuttondata.org/ThirdParty/UsagePolicy" target="_blank">http://services.<wbr>greenbuttondata.org/<wbr>ThirdParty/UsagePolicy</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">software_id<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">An identifier for the software that comprises the Third Party Application.&nbsp; The software_id is asserted by the Third Party software and is intended to be shared between all copies
of the Third Party software.&nbsp; The value of this field MAY be a UUID [RFC4122].<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">MyCoolGreenButtonAnalyzer<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">software_version<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A version identifier for the software that comprises a Third Party Application.&nbsp; The value of this field is a string that is intended to be compared using string equality matching.&nbsp;
The value of the software_version SHOULD change on any update to the Third Party software.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Version 1.00.00<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">client_id_issued_at<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Time date stamp at which this client_id was issued. Note the schema data type is TimeType and the presentation in OAuth message flow is xs:dateTime and requires a conversion when
accessed.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10pt;font-family:Arial;background-color:white;background-repeat:initial initial">"1403190000" =</span><span style="font-size:10.0pt;font-family:Arial;color:blue;background:white">&gt;</span><span style="font-size:10pt;font-family:Arial;background-color:white;background-repeat:initial initial">
2014-06-19T15:00:00Z</span><span style="font-size:10.0pt">
<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">client_secret_expires_at<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Date time at which this client_secret expires -- value of 0 means the client_secret never expires.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">0<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">contacts<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Array of email addresses for people responsible for the Authorized Third Party Application.&nbsp; These MAY be made available to Retail Customers for support requests for the Authorized
Third Party application.&nbsp; The Data Custodian Authorization Server MAY use the email addresses as identifiers for an Authorized Third Party application administrative page.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="mailto:support@energyos.org" target="_blank">support@energyos.org</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">token_endpoint_auth_method<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">(The authentication method used by the OAuth 2.0 Token Endpoint to authenticate the Third Party Application)<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">client_secret_basic<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">scope<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">List of scope values the Third Party Application may use when requesting access Tokens.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">FB=1_3_4_5_8_13_18_19_31_34_<wbr>35_39;IntervalDuration=900_<wbr>3600;BlockDuration=Daily; HistoryLength= 34128000;<wbr>SubscriptionFrequency=Daily; AccountCollection=5;BR=1;<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">grant_types<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Grant types Third Party plans to support (all three are required).<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">client_credentials<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">grant_types<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">&nbsp;</span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">authorization_code<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">grant_types<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">&nbsp;</span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">refresh_token<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>TP<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">response_types<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">Response types Third Party plans to supported.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">code<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">registration_client_uri<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">{ClientConfigurationURI} A URI used by a registered client to manage registration information.&nbsp; This URI is returned by the AuthorizationServer in the “registration_client_uri” field
of the client information response. &nbsp;This is used to retrieve the ApplicationInformation resource
<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt"><a href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/%7BApplicationInformationID%7D/" target="_blank">https://services.<wbr>greenbuttondata.org/<wbr>DataCustodian/espi/1_1/<wbr>resource/<wbr>ApplicationInformation/{<wbr>ApplicationInformationID}/</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border-top:none;border-left:solid #4CBA6F 1.0pt;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">registration_access_token<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">A credential obtained during Third Party registration with the Data Custodian to enable access to the ApplicationInformation resource. This is persisted in the ApplicationInformation
resource structure.<u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid #4CBA6F 1.0pt;border-right:solid #4CBA6F 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p style="margin-top:0in;margin-bottom:0.0001pt"><span style="font-size:10.0pt;font-family:Calibri">UUID
is an automatically generated 128 bit number:<u></u><u></u></span></p>
<p style="margin-top:0in;margin-bottom:0.0001pt"><span style="font-size:10.0pt;font-family:Calibri">example
= fe82518d-e325-404e-978c-<wbr>c02f9339bccc<u></u><u></u></span></p>
<p style="margin-top:0in;margin-bottom:0.0001pt"><span style="font-size:10.0pt;font-family:Calibri">&nbsp;</span></p>
<p style="margin-top:0in;margin-bottom:0.0001pt"><span style="font-size:10.0pt;font-family:Calibri">The
Third party doesn’t need to know the value for this field.<u></u><u></u></span></p>
<p class="MsoNormal"><span style="font-size:10.0pt">&nbsp;</span></p>
</td>
</tr>
<tr>
<td width="5%" valign="top" style="width:5.64%;border:solid windowtext 1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><b>DC<u></u><u></u></b></p>
</td>
<td width="33%" valign="top" style="width:33.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">dataCustodianScopeSelectionScr<wbr>eenURI<u></u><u></u></span></p>
</td>
<td width="31%" valign="top" style="width:31.6%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p class="MsoNormal"><span style="font-size:10.0pt">The URI used by the Third Party to redirect the Retail Customer to the Data Custodian Scope Selection Screen (note that this will likely involve a dialogue with the Retail Customer
including a log in authentication process). <u></u><u></u></span></p>
</td>
<td width="29%" valign="top" style="width:29.16%;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt 0in 5.4pt">
<p style="margin-top:0in;margin-bottom:0.0001pt"><span style="font-size:10.0pt"><a href="http://localhost:8080/DataCustodian/RetailCustomer/ScopeSelection" target="_blank">http://localhost:8080/<wbr>DataCustodian/RetailCustomer/<wbr>ScopeSelection</a></span><span style="font-size:10.0pt;font-family:Calibri"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
</div>
