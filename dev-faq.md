---
layout: page
title: dev-faq home
---
·         Does the data custodian have any control as to the scope (i.e. how is the customer can update their authorization)?
          The data custodian has full control as to the management of the scope. The customer may request an authorization with a new scope, but the data custodian will always control final determination.
		  
·         Is there a document that I can reference and learn more about the authorization duration? I’d like to better understand how the values are defined.
The <a href="">Authorization document</a> will provide the detail you want. Keep in mind their are two life-cycles involved. The duration of the authorization and the duration of any access tokens used in the communication patterns. authorization life-time is defined in the ESPI .xsd as a complex type <em>Authorization</em> (as <em>authorizedPeriod</em> and <em>publishedPeriod</em>

·         If the customer enrolls within the allotted authorization period, can we assume that it would be up to the third party to make the distinction they already have the data and not request from the utility?For those system that support Function Block xx ("FBxx"), the third party may request authorized data at any time. For those systems supporting Function Block yy(FByy), the Data Custodian may determine the initial 13 months of data was transfered at time of authorization and determine to not automatically schedule re-transmission.
Note that enrollment and <em>authorization</em> are not necessarily related as the question might imply. In fact, <em>enrollment</em> is not a defined element within ESPI. 

<h3>Access Tokens</h3>
[Marty Burns] I wanted to follow up with you on the access tokens we are using. Please review the section 1.2.2 in <a href="http://osgug.ucaiug.org/sgsystems/OpenADE/Shared%20Documents/Testing%20and%20Certification/GreenButtonTestPlan/referenceMaterial/GreenButtonAuthorization.docx"> GreenButtonAuthorization.docx</a> which was revised based on your concerns to better explain the naming of access tokens in GBCMD.
<ul>
  <li>access_token</li>
  <li></li>
  <li></li>
</ul>
Specifically, we have identified a number of “named access tokens” for use. However, these are not different OAuth access tokens. We are currently only using two flows – the 3 legged authorization flow, and, the 2 legged client credentials flow. To obtain the different access tokens, we have different client ids and different scopes. We use the simple client credentials flow to generate them.
</p> <p>
For example, we have identified client_access_token and here is the message traffic to obtain it (basic authentication third_party_admin:secret):
</p> 
<pre>
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "POST /DataCustodian/oauth/token?grant_type=client_credentials&scope=ThirdParty_Admin_Access HTTP/1.1[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "Accept-Encoding: gzip,deflate[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "Authorization: Basic dGhpcmRfcGFydHlfYWRtaW46c2VjcmV0[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "Content-Type: application/json[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "Content-Length: 0[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "Host: services.greenbuttondata.org[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "Connection: Keep-Alive[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "User-Agent: Apache-HttpClient/4.1.1 (java 1.5)[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:>> "[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "HTTP/1.1 200 OK[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "Connection: Keep-Alive[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "Transfer-Encoding: chunked[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "Date: Wed, 25 Jun 2014 12:51:05 GMT[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "Content-Type: application/json;charset=UTF-8[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "Server: Apache-Coyote/1.1[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "Cache-Control: no-store[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "Pragma: no-cache[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "a4[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "{"access_token":"75dd9c46-becf-48b5-9cb5-9c3233d718d0","token_type":"bearer","expires_in":27590751,"scope":"ThirdParty_Admin_Access","client_id":"third_party_admin""
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "1[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "}"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "0[\r][\n]"
Wed Jun 25 09:01:00 EDT 2014:DEBUG:<< "[\r][\n]"
 
</pre>


<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML//EN">
<html> <head>
<title></title>
</head>

<body>
<h1></h1>



<hr>
<address></address>
<!-- hhmts start -->Last modified: Wed Jun 25 11:04:38 EDT 2014 <!-- hhmts end -->
</body> </html>
