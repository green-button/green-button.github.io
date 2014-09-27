---
title: Developers
layout: page
---

## Developers

The Green Button API provides flexible access to Energy Usage Information through a set of RESTful interfaces.

<p>Green Button represents energy usage information as a set of resources as defined in the ESPI standard and uses <a href="http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API">RESTful APIs</a> to provide
standard access to information for metered resources such as
electricity, gas, and water. These interfaces may be used to access and
manage the metered data by using atom+xml based streams of Energy
Usage Information (EUI) encapsulated within an Atom Feed.</p>

<h3></span></a>RetailCustomer, DataCustodian &amp; ThirdParty Actors</h3>
<p>Green Button allows data to be exchanged between Utilities, Customers, and Third Party Services Providers. It uses standard (http) based messaging to accomplish these exchanges. So, starting with the Green Button Actors:
<dl>
<dt>RetailCustomer</dt>

<dd>Any person or enterprise that is provided services such as
electricity, water, or gas from a resource service provider.
RetailCustomers may be residential, commercial, or industrial.</dd>

<dt>DataCustodian</dt>

<dd>Any enterprise that is holding metered data obtained during the
course of providing resources to a <em>RetailCustomer</em>. A <em>DataCustodian</em>
holds that data as part of the service they provide and may, with the authorization of the
RetailCustomer, allow that data to be shared with a third party.</dd>


<dt>ThirdParty</dt>
<dd>Any person or enterprise that is authorized to have access to metered data held by a <em>DataCustodian</em>.  A <em>ThirdParty</em>, when authorized, may <em>subscribe</em> to a <em>RetailCustomer's</em> data and provide additional services as desired.</dd>
</dl>

<img class="img-responsive" src="{{ site.baseurl }}/assets/GreenButton_Actors_transparent.png" />

<h3>Relationships between the Actors</h3>
<p>The Actors enter into relationships as depicted in the diagram above. The simplest relationship is the one that exists between the DataCustodian (i.e. the Utility) and their customer (the <em>RetailCustomer</em>). This relationship allows the <em>RetailCustomer</em> to download a file that contains their resource usage information. This simple relationship is the basis for the <a href="#download-my-data">Green Button Download My Data</a> operation.

</div>
<!-- end .home -->

<div id="concepts">
<h3>Concepts</h3>
<p>Green Button uses the <a href="http://en.wikipedia.org/wiki/Atom_feed">Atom Publishing Standard</a> to represent structured energy usage information in an XML format that may be exchanged on the internet. Both Google (GData) and Microsoft (OData) independently recognized the power of the Atom Syndication Format to encode complex data for exchange over RESTful web services. Green Button adopted these concepts in the construction of ESPI.</p>

<p>The resources defined within Green Button, UsagePoints, MeterReadings, etc, are expressed, in XML format, within the Atom feed's <a href="#entry">Entry</a> tags. This results in a uniform way to expose full-featured data APIs that reference a Retail Customer's encapsulated Energy Usage Information.</p>

<p>Green Button works by placing data within the <em>&lt;entry&gt;</em> tags
of the Atom stream. Data records are placed within the
<em>&lt;entry&gt; ... &lt;content&gt;</em> tags, and relationships
between tables are represented in the
<em>&lt;link&gt;</em>tags.</p>
<p>
The second thing to note is that in the Atom representation, a feed will always represent a collection of 1 or more Green Button resources:
<pre>
&lt;feed&gt;
  ...
  &lt;entry&gt;
    ...
    &lt;content&gt;
      &lt;espi-resource /&gt;
    &lt;/content&gt;
  &lt;/entry&gt;
  ...
&lt;/feed&gt;
</pre>

<div id="accordion2" class="accordion">
<h3>Relationships</h3>
<div>

<p>So all the <a
 href="https://github.com/energyos/OpenESPI-Common-java/blob/master/etc/espiDerived.xsd">espiDerived.xsd</a>
entities are always contained in a feed and the entry/contents describe the ESPI entity itself. In
addition, you need to construct (during the parse if possible for you) the associations that need to
exist between the ESPI entities.  The <em>&lt;link&gt;</em> tags are quite important for use during
parsing of the Green Button data. These links allow you to know which <em>MeterReading</em>s are
related to a specific <em>UsagePoint</em>.

<p>Within an
<em>&lt;entry&gt;</em>, the <em>"related"</em> links point to a collection, for example:
<pre><code>
&lt;feed xmlns="http://www.w3.org/2005/Atom"
         xsi:schemaLocation="http://naesb.org/espi espiDerived.xsd"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"&gt;
 &lt;id&gt;urn:uuid:728B5594-414E-471A-A230-08FCCDAC655C&lt;/id&gt;
 &lt;title&gt;ThirdPartyX Batch Feed&lt;/title&gt;
 &lt;ns3:published&gt;2014-01-02T10:00:00Z&lt;/ns3:published&gt;
 &lt;ns3:updated&gt;2014-01-02T10:00:00Z&lt;/ns3:updated&gt;
 &lt;link rel="self" href="/ThirdParty/83e269c1/Batch"/&gt;
   &lt;entry&gt;
   &lt;id&gt;urn:uuid:97EAEBAD-1214-4A58-A3D4-A16A6DE718E1&lt;/id&gt;
     &lt;link rel="self"
           href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/9b6c7063/UsagePoint/01"/&gt;
     &lt;link rel="up"
           href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/9b6c7063/UsagePoint"/&gt;
     &lt;link rel="related"
           href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/9b6c7063/UsagePoint/01/MeterReading"/&gt;
     &lt;link rel="related"
           href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/9b6c7063/UsagePoint/01/ElectricPowerUsageSummary"/&gt;
     &lt;link rel="related"
           href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/01"/&gt;
     &lt;title&gt;my house&lt;/title&gt;
     &lt;ns3:published&gt;2014-01-02T10:00:00Z&lt;/ns3:published&gt;
     &lt;ns3:updated&gt;2014-01-02T10:00:00Z&lt;/ns3:updated&gt;
     &lt;content&gt;
       &lt;UsagePoint xmlns="http://naesb.org/espi"&gt;
         &lt;ServiceCategory&gt;
           &lt;kind&gt;0&lt;/kind&gt;
         &lt;/ServiceCategory&gt;
       &lt;/UsagePoint&gt;
     &lt;/content&gt;
   &lt;/entry&gt;
 &lt;/feed&gt;
    </code></pre>


  </div>
</div>
<!-- end .concepts -->

<div id="data-elements">
<h3>Green Button Resources</h3>
<p>A <em>DataCustodian</em> will, when authorized by a <em>RetailCustomer</em>, publish a GreenButton data stream. A <em>ThirdParty</em> may then subscribe to that stream. Green Button uses the <a href="http://oauth.net/"><span style="color:blue;">OAuth 2.0 Authorization Framework</span></a> protocol to provide secure authorization for accessing the published data stream.
</p>
<p>Green Button APIs are designed to support data flows that are both large and small. Many Utilities will schedule bulk transfers of hundreds of thousands of 24-hour data sets as a batch process. In this case, the Green Button APIs must be able to accomodate blocked transfers, recovery, and restarts. Other use-cases are driven more by frequent transmissions of smaller data sets, for example the hourly usage of a single outlet in your home. Green Button is designed to handle both!</p>

<div id="accordion1">
  <h3><a href="/espi/application_information/">ApplicationInformation</a></h3>
  <div>
    <p></p>
    <pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;entry xml:lang=&quot;en-us&quot; xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot;&gt;
  &lt;id&gt;urn:uuid:AF6E8B03-0299-467E-972A-A883ECDCC575&lt;/id&gt;
  &lt;link rel=&quot;self&quot; href=&quot;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/DataCustodian/ApplicationInformation/1&quot;/&gt;
  &lt;link rel=&quot;up&quot; href=&quot;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/DataCustodian/ApplicationInformation&quot;/&gt;
  &lt;title&gt;GreenButtonData.org  DataCustodian Application&lt;/title&gt;
  &lt;published&gt;2014-01-02T05:00:00Z&lt;/published&gt;
  &lt;updated&gt;2014-01-02T05:00:00Z&lt;/updated&gt;
  &lt;content&gt;
    &lt;ApplicationInformation xmlns=&quot;http://naesb.org/espi&quot;&gt;
      &lt;dataCustodianId&gt;ConEdison&lt;/dataCustodianId&gt;
      &lt;dataCustodianApplicationStatus&gt;2&lt;/dataCustodianApplicationStatus&gt;
      &lt;thirdPartyApplicationDescription&gt;Energyos Green Button Third Party Sample Application Description&lt;/thirdPartyApplicationDescription&gt;
      &lt;thirdPartyApplicationStatus&gt;1&lt;/thirdPartyApplicationStatus&gt;
      &lt;thirdPartyApplicationType&gt;1&lt;/thirdPartyApplicationType&gt;
      &lt;thirdPartyApplicationUse&gt;1&lt;/thirdPartyApplicationUse&gt;
      &lt;thirdPartyPhone&gt;+1 800 673-6377&lt;/thirdPartyPhone&gt;
      &lt;authorizationServerUri&gt;https://services.greenbuttondata.org/DataCustodian&lt;/authorizationServerUri&gt;
      &lt;thirdPartyNotifyUri&gt;https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification&lt;/thirdPartyNotifyUri&gt;
      &lt;authorizationServerAuthorizationEndpoint&gt;https://services.greenbuttondata.org/DataCustodian/oauth/authorize&lt;/authorizationServerAuthorizationEndpoint&gt;
      &lt;authorizationServerRegistrationEndpoint&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/register&lt;/authorizationServerRegistrationEndpoint&gt;
      &lt;authorizationServerTokenEndpoint&gt;https://services.greenbuttondata.org/DataCustodian/oauth/token&lt;/authorizationServerTokenEndpoint&gt;
      &lt;dataCustodianBulkRequestURI&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Bulk/{BulkID}&lt;/dataCustodianBulkRequestURI&gt;
      &lt;dataCustodianResourceEndpoint&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource&lt;/dataCustodianResourceEndpoint&gt;
      &lt;thirdPartyScopeSelectionScreenURI&gt;https://services.greenbuttondata.org/ThirdParty/espi/1_1/RetailCustomer/ScopeSelection&lt;/thirdPartyScopeSelectionScreenURI&gt;
      &lt;thirdPartyUserPortalScreenURI&gt;https://services.greenbuttondata.org/ThirdParty/espi/1_1/RetailCustomer/home&lt;/thirdPartyUserPortalScreenURI&gt;
      &lt;client_secret&gt;third_party_client_secret&lt;/client_secret&gt;
      &lt;logo_uri&gt;http://services.greenbuttondata.org/ThirdParty/favicon.png&lt;/logo_uri&gt;
      &lt;client_name&gt;EnergyOS Green Button ThirdParty&lt;/client_name&gt;
      &lt;client_uri&gt;https://services.greenbuttondata.org/ThirdParty&lt;/client_uri&gt;
      &lt;redirect_uri&gt;https://services.greenbuttondata.org/ThirdParty/espi/1_1/OAuthCallBack&lt;/redirect_uri&gt;
      &lt;client_id&gt;third_party&lt;/client_id&gt;
      &lt;tos_uri&gt;http://services.greenbuttondata.org/ThirdParty/TermsOfService&lt;/tos_uri&gt;
      &lt;policy_uri&gt;http://services.greenbuttondata.org/ThirdParty/UsagePolicy&lt;/policy_uri&gt;
      &lt;software_id&gt;1.00.00&lt;/software_id&gt;
      &lt;software_version&gt;version 001&lt;/software_version&gt;
      &lt;client_id_issued_at&gt;2147483647&lt;/client_id_issued_at&gt;
      &lt;client_secret_expires_at&gt;2147483647&lt;/client_secret_expires_at&gt;
      &lt;contacts&gt;support@energyos.org&lt;/contacts&gt;
      &lt;token_endpoint_auth_method&gt;client_secret_basic&lt;/token_endpoint_auth_method&gt;
      &lt;scope&gt;FB=1_2_4_5_12_15_16;IntervalDuration=3600;BlockDuration=monthly;HistoryLength=13&lt;/scope&gt;
      &lt;grant_types&gt;authorization_code&lt;/grant_types&gt;
      &lt;grant_types&gt;client_credentials&lt;/grant_types&gt;
      &lt;grant_types&gt;refresh_token&lt;/grant_types&gt;
      &lt;response_types&gt;code&lt;/response_types&gt;
      &lt;registration_client_uri&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/{ApplicationInformationID}/&lt;/registration_client_uri&gt;
      &lt;registration_access_token&gt;3abbc0c4-8dba-45c4-a54b-042737c39dc9&lt;/registration_access_token&gt;
      &lt;dataCustodianScopeSelectionScreenURI&gt;https://services.greenbuttondata.org/DataCustodian/RetailCustomer/ScopeSelection&lt;/dataCustodianScopeSelectionScreenURI&gt;
    &lt;/ApplicationInformation&gt;
  &lt;/content&gt;
&lt;/entry&gt;

    </code></pre>
    </div>
  </div>

<div id="accordion">
  <h3><a href="/espi/authorization/">Authorization</a></h3>
  <div>
    <p></p>
    <pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;entry xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;&gt;
  &lt;id&gt;urn:uuid:A84C74DE-B08D-4F86-8E58-F6FC6EF41CFF&lt;/id&gt;
  &lt;link rel=&quot;self&quot; href=&quot;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/01&quot;/&gt;
  &lt;link rel=&quot;up&quot; href=&quot;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization&quot;/&gt;
  &lt;title&gt;Sample Authorization&lt;/title&gt;
  &lt;published&gt;2013-10-24T04:00:00Z&lt;/published&gt;
  &lt;updated&gt;2013-10-24T04:00:00Z&lt;/updated&gt;
  &lt;content&gt;
    &lt;Authorization xmlns=&quot;http://naesb.org/espi&quot;&gt;
      &lt;authorizedPeriod&gt;
        &lt;duration&gt;31536000&lt;/duration&gt;
        &lt;start&gt;1333252800&lt;/start&gt;
      &lt;/authorizedPeriod&gt;
      &lt;publishedPeriod&gt;
        &lt;duration&gt;31536000&lt;/duration&gt;
        &lt;start&gt;1333252800&lt;/start&gt;
      &lt;/publishedPeriod&gt;
      &lt;access_token&gt;AA886A7A-078D-4307-A3D9-AA036796DBC3&lt;/access_token&gt;
      &lt;status&gt;1&lt;/status&gt;
      &lt;expires_at&gt;86400&lt;/expires_at&gt;
      &lt;grant_type&gt;authorization_code&lt;/grant_type&gt;
      &lt;refresh_token&gt;AA886A7A-078D-4307-A3D9-AA036796DBC4&lt;/refresh_token&gt;
      &lt;scope&gt;FB=4_5_15;IntervalDuration=3600;BlockDuration=monthly;HistoryLength=13&lt;/scope&gt;
      &lt;token_type&gt;bearer&lt;/token_type&gt;
      &lt;error&gt;server_error&lt;/error&gt;
      &lt;error_description&gt;No service&lt;/error_description&gt;
      &lt;error_uri&gt;na&lt;/error_uri&gt;
      &lt;resourceURI&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1&lt;/resourceURI&gt;
      &lt;authorizationURI&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/1&lt;/authorizationURI&gt;
    &lt;/Authorization&gt;
  &lt;/content&gt;
&lt;/entry&gt;

    </code></pre>
    </div>
  </div>

<div id="accordion">
  <h3>UsagePoint</h3>
  <div>
    <p>A <em>UsagePoint</em> is where a resource is measured. Typically, it is your Utility Smart Meter, but it could be the outlet on the wall as well. UsagePoints provide the reference for all meter readings that are contained within the Green Button data. UsagePoints have a <em>ServiceCategory</em> that defines what <em>kind</em> of resource &mdash; such as an electricity, gas, or water measurement &mdash; is being reported. </p>
    <pre><code>&lt;entry xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot;&gt;
  &lt;id&gt;urn:uuid:40BE6242-F7E6-4B51-828E-59B5FC0C35F0&lt;/id&gt;
  &lt;link rel=&quot;self&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint/5446AF3F&quot;/&gt;
  &lt;link rel=&quot;up&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint&quot;/&gt;
  &lt;link rel=&quot;related&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint/5446AF3F/MeterReading&quot;/&gt;
  &lt;link rel=&quot;related&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint/5446AF3F/ElectricPowerUsageSummary&quot;/&gt;
  &lt;link rel=&quot;related&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/LocalTimeParameters/01&quot;/&gt;
  &lt;title&gt;a galaxy far, far away&lt;/title&gt;
  &lt;content&gt;
    &lt;UsagePoint xmlns=&quot;http://naesb.org/espi&quot;&gt;
      &lt;ServiceCategory&gt;
        &lt;kind&gt;0&lt;/kind&gt;
      &lt;/ServiceCategory&gt;
    &lt;/UsagePoint&gt;
  &lt;/content&gt;
  &lt;published&gt;2012-05-03T04:00:00Z&lt;/published&gt;
  &lt;updated&gt;2012-05-03T04:00:00Z&lt;/updated&gt;
&lt;/entry&gt;
    </code></pre>
  </div>
  <h3>ReadingType</h3>
  <div>
    <p>A <em>ReadingType</em> provides detail as to the specifics of the reading data that is being obtained. Green Button follows international standards and has the ability to represent large industrial resources as well as those used in a residence.</p>
     <pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;entry xml:lang=&quot;en-us&quot; xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot;&gt;
  &lt;id&gt;urn:uuid:07003628-BC5B-4807-8A55-F53602835161&lt;/id&gt;
  &lt;link rel=&quot;self&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/ReadingType/07&quot;/&gt;
  &lt;link rel=&quot;up&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/ReadingType&quot;/&gt;
  &lt;title&gt;Type of Meter Reading Data&lt;/title&gt;
  &lt;content&gt;
    &lt;ReadingType xmlns=&quot;http://naesb.org/espi&quot;&gt;
      &lt;accumulationBehaviour&gt;4&lt;/accumulationBehaviour&gt;
      &lt;commodity&gt;1&lt;/commodity&gt;
      &lt;currency&gt;840&lt;/currency&gt;
      &lt;dataQualifier&gt;12&lt;/dataQualifier&gt;
      &lt;flowDirection&gt;1&lt;/flowDirection&gt;
      &lt;intervalLength&gt;3600&lt;/intervalLength&gt;
      &lt;kind&gt;12&lt;/kind&gt;
      &lt;phase&gt;769&lt;/phase&gt;
      &lt;powerOfTenMultiplier&gt;0&lt;/powerOfTenMultiplier&gt;
      &lt;timeAttribute&gt;0&lt;/timeAttribute&gt;
      &lt;uom&gt;72&lt;/uom&gt;
    &lt;/ReadingType&gt;
  &lt;/content&gt;
  &lt;published&gt;2012-05-03T04:00:00Z&lt;/published&gt;
  &lt;updated&gt;2012-05-03T04:00:00Z&lt;/updated&gt;
  &lt;/entry&gt;
&lt;/entry&gt;
    </code></pre>
  </div>
  <h3>MeterReading</h3>
  <div>
    <p>A MeterReading is a container for all of the measured <em>IntervalBlocks</em> within the Green Button data captured at a <em>UsagePoint</em>.</p>
    <pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;entry xml:lang=&quot;en-us&quot; xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot;&gt;
  &lt;id&gt;urn:uuid:CFB85086-A9BF-418B-AB77-8602A2D08C7F&lt;/id&gt;
  &lt;link rel=&quot;self&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint/5446AF3F/MeterReading/01&quot;/&gt;
  &lt;link rel=&quot;up&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint/5446AF3F/MeterReading&quot;/&gt;
  &lt;link rel=&quot;related&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock&quot;/&gt;
  &lt;link rel=&quot;related&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/ReadingType/07&quot;/&gt;
  &lt;title&gt;Hourly Electricity Consumption&lt;/title&gt;
  &lt;content&gt;
    &lt;MeterReading xmlns=&quot;http://naesb.org/espi&quot;/&gt;
  &lt;/content&gt;
  &lt;published&gt;2012-05-03T04:00:00Z&lt;/published&gt;
  &lt;updated&gt;2012-05-03T04:00:00Z&lt;/updated&gt;
 &lt;/entry&gt;
    </code></pre>
  </div>
  <h3>IntervalBlock</h3>
  <div>
    <p><em>IntervalBlock</em>s are the primary data carrier within the Green Button data. IntervalBlocks may have one or more Intervals, each with a start and duration, as well as the specific <em>IntervalReading</em></p>

    <pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;entry xml:lang=&quot;en-us&quot; xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot;&gt;
  &lt;id&gt;urn:uuid:774ECE75-908F-4CF8-9157-347183C3040F&lt;/id&gt;
  &lt;link rel=&quot;self&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock/173&quot;/&gt;
  &lt;link rel=&quot;up&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/RetailCustomer/9B6C7065/UsagePoint/5446AF3F/MeterReading/01/IntervalBlock&quot;/&gt;
  &lt;title/&gt;
  &lt;content&gt;
    &lt;IntervalBlock xmlns=&quot;http://naesb.org/espi&quot;&gt;
      &lt;interval&gt;
        &lt;duration&gt;86400&lt;/duration&gt;
        &lt;start&gt;1333252800&lt;/start&gt;
        &lt;!-- start date: 4/1/2012 4:00:00 AM --&gt;
      &lt;/interval&gt;
      &lt;IntervalReading&gt;
        &lt;cost&gt;8254&lt;/cost&gt;
        &lt;timePeriod&gt;
          &lt;duration&gt;3600&lt;/duration&gt;
          &lt;start&gt;1333252800&lt;/start&gt;
          &lt;!-- 4/1/2012 4:00:00 AM  --&gt;
        &lt;/timePeriod&gt;
        &lt;value&gt;2751&lt;/value&gt;
      &lt;/IntervalReading&gt;
      &lt;IntervalReading&gt;
        &lt;cost&gt;2881&lt;/cost&gt;
        &lt;timePeriod&gt;
          &lt;duration&gt;3600&lt;/duration&gt;
          &lt;start&gt;1333256400&lt;/start&gt;
          &lt;!-- 4/1/2012 5:00:00 AM  --&gt;
        &lt;/timePeriod&gt;
        &lt;value&gt;960&lt;/value&gt;
      &lt;/IntervalReading&gt;

      ...

      &lt;IntervalReading&gt;
        &lt;cost&gt;16445&lt;/cost&gt;
        &lt;timePeriod&gt;
          &lt;duration&gt;3600&lt;/duration&gt;
          &lt;start&gt;1333335600&lt;/start&gt;
          &lt;!-- 4/2/2012 3:00:00 AM  --&gt;
        &lt;/timePeriod&gt;
        &lt;value&gt;2740&lt;/value&gt;
      &lt;/IntervalReading&gt;
    &lt;/IntervalBlock&gt;
  &lt;/content&gt;
  &lt;published&gt;2012-04-02T04:00:00Z&lt;/published&gt;
  &lt;updated&gt;2012-04-02T04:00:00Z&lt;/updated&gt;
&lt;/entry&gt;

&lt;/entry&gt;
    </code></pre>
  </div>
  <h3>LocalTimeParameters</h3>
  <div>
    <p>The <em>LocalTimeParameters</em> provide a flexible manner to enable <em>Energy Usage Information (EUI)</em> to be provided with a reference to local time, without including any <em>Personally Identifiable Information</em>.  </p>
    <pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;entry xml:lang=&quot;en-us&quot; xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot;&gt;
  &lt;id&gt;urn:uuid:2D4F0AE3-5561-4CFC-AF0A-F4BCD474E803&lt;/id&gt;
  &lt;link rel=&quot;self&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/LocalTimeParameters/01&quot;/&gt;
  &lt;link rel=&quot;up&quot; href=&quot;https://localhost:8080/DataCustodian/espi/1_1/resource/LocalTimeParameters&quot;/&gt;
  &lt;title&gt;DST For North America&lt;/title&gt;
  &lt;content&gt;
  &lt;LocalTimeParameters xmlns=&quot;http://naesb.org/espi&quot;&gt;
        &lt;dstEndRule&gt;B40E2000&lt;/dstEndRule&gt;
        &lt;dstOffset&gt;3600&lt;/dstOffset&gt;
        &lt;dstStartRule&gt;360E2000&lt;/dstStartRule&gt;
        &lt;tzOffset&gt;-18000&lt;/tzOffset&gt;
  &lt;/LocalTimeParameters&gt;
  &lt;/content&gt;
  &lt;published&gt;2012-05-03T04:00:00Z&lt;/published&gt;
  &lt;updated&gt;2012-05-03T04:00:00Z&lt;/updated&gt;
 &lt;/entry&gt;
    </code></pre>
  </div>
  <h3>ElectricPowerUsageSummary</h3>
  <div>
    <p></p>
    <pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;entry xml:lang=&quot;en-us&quot; xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot;&gt;
  &lt;id&gt;urn:uuid:97EAEBAD-1214-4A58-A3D4-A16A6DE718E1&lt;/id&gt;
  &lt;published&gt;2012-10-24T00:00:00Z&lt;/published&gt;
  &lt;updated&gt;2012-10-24T00:00:00Z&lt;/updated&gt;
  &lt;link rel="self"
        href="/espi/1_1/resource/Subscription/9b6c7063/ElectricPowerUsageSummary/01"/&gt;
  &lt;link rel="up"
        href="/espi/1_1/resource/Subscription/9b6c7063/ElectricPowerUsageSummary"/&gt;
  &lt;title&gt;my house&lt;/title&gt;
  &lt;content&gt;
    &lt;ElectricPowerUsageSummary xmlns="http://naesb.org/espi"&gt;
      &lt;billingPeriod&gt;
        &lt;duration&gt;2588400&lt;/duration&gt;
        &lt;start&gt;1330578000&lt;/start&gt;
      &lt;/billingPeriod&gt;
      &lt;billLastPeriod&gt;20810000&lt;/billLastPeriod&gt;
      &lt;billToDate&gt;8145000&lt;/billToDate&gt;
      &lt;costAdditionalLastPeriod&gt;4525000&lt;/costAdditionalLastPeriod&gt;
      &lt;currency&gt;840&lt;/currency&gt;
      &lt;overallConsumptionLastPeriod&gt;
        &lt;powerOfTenMultiplier&gt;0&lt;/powerOfTenMultiplier&gt;
        &lt;uom&gt;72&lt;/uom&gt;
        &lt;value&gt;1951364&lt;/value&gt;
      &lt;/overallConsumptionLastPeriod&gt;
      &lt;currentBillingPeriodOverAllConsumption&gt;
        &lt;powerOfTenMultiplier&gt;0&lt;/powerOfTenMultiplier&gt;
        &lt;timeStamp&gt;1334462400&lt;/timeStamp&gt;
        &lt;uom&gt;72&lt;/uom&gt;
        &lt;value&gt;1006640&lt;/value&gt;
      &lt;/currentBillingPeriodOverAllConsumption&gt;
      &lt;qualityOfReading&gt;14&lt;/qualityOfReading&gt;
      &lt;statusTimeStamp&gt;1334462400&lt;/statusTimeStamp&gt;
    &lt;/ElectricPowerUsageSummary&gt;
  &lt;/content&gt;
&lt;/entry&gt;
    </code></pre>
  </div>
  <h3>ElectricPowerQualitySummary</h3>
  <div>
    <p></p>
    <pre><code>&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;
&lt;entry xml:lang=&quot;en-us&quot; xsi:schemaLocation=&quot;http://naesb.org/espi espiDerived.xsd&quot; xmlns:xsi=&quot;http://www.w3.org/2001/XMLSchema-instance&quot; xmlns=&quot;http://www.w3.org/2005/Atom&quot; xmlns:espi=&quot;http://naesb.org/espi&quot;&gt;
  &lt;id&gt;urn:uuid:DEB0A337-C1B5-4658-99BA-4688E253A99B&lt;/id&gt;
  &lt;link rel=&quot;self&quot; href=&quot;Subscription/9b6c7063/ElectricPowerQualitySummary/01&quot;/&gt;
  &lt;link rel=&quot;up&quot; type=&quot;&quot; href=&quot;Subscription/9b6c7063/UsagePoint/01/ElectricPowerQualitySummary&quot;/&gt;
  &lt;title&gt;Quality Summary&lt;/title&gt;
  &lt;content&gt;
    &lt;ElectricPowerQualitySummary xmlns=&quot;http://naesb.org/espi&quot;&gt;
      &lt;flickerPlt&gt;1&lt;/flickerPlt&gt;
      &lt;flickerPst&gt;2&lt;/flickerPst&gt;
      &lt;harmonicVoltage&gt;3&lt;/harmonicVoltage&gt;
      &lt;longInterruptions&gt;4&lt;/longInterruptions&gt;
      &lt;mainsVoltage&gt;5&lt;/mainsVoltage&gt;
      &lt;measurementProtocol&gt;6&lt;/measurementProtocol&gt;
      &lt;powerFrequency&gt;7&lt;/powerFrequency&gt;
      &lt;rapidVoltageChanges&gt;8&lt;/rapidVoltageChanges&gt;
      &lt;shortInterruptions&gt;9&lt;/shortInterruptions&gt;
      &lt;summaryInterval&gt;
        &lt;duration&gt;2119600&lt;/duration&gt;
        &lt;start&gt;2330578000&lt;/start&gt;
      &lt;/summaryInterval&gt;
      &lt;supplyVoltageDips&gt;10&lt;/supplyVoltageDips&gt;
      &lt;supplyVoltageImbalance&gt;11&lt;/supplyVoltageImbalance&gt;
      &lt;supplyVoltageVariations&gt;12&lt;/supplyVoltageVariations&gt;
      &lt;tempOvervoltage&gt;13&lt;/tempOvervoltage&gt;
    &lt;/ElectricPowerQualitySummary&gt;
  &lt;/content&gt;
  &lt;published&gt;2012-10-24T00:00:00Z&lt;/published&gt;
  &lt;updated&gt;2012-10-24T00:00:00Z&lt;/updated&gt;
&lt;/entry&gt;
    </code></pre>
  </div>
</div>

</div>
<!-- end .data-elements -->

<div id="examples">
<h3>Samples and Sandboxes</h3>
<dl>
  <dt>Download My Data</dt>
  <dd>A RetailCustomer may download an XML file from either a Data
  Custodian or a Third Party. RESTful interfaces are provided to
  enable this operation. There are no assumptions made with respect to
  what the RetailCustomer might do with this XML file, although best
  practices would be to ensure the file is viewable using a minimal
  stylesheet.
<ul>
<li>Examples of <a href="http://services.greenbuttondata.org/sample-data.html">Download My Data files may be found on the Green Button Sandbox</a>.</li>
</ul>
</dd>
  <dt>Connect My Data</dt>

  <dd>The RetailCustomer may also authorize Green Button data to move
  between two machines, such as from their utility to a company that
  might use the data to estimate the energy efficiency of their
  facility. In this case, <em>Connect My Data</em> would be used to
  provide machine-to-machine data transfers. Connect My Data may provide
  a single transfer of information, or transfers on a predefined
  schedule.
<ul>
<li>Connect My Data <a href="http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API/">RESTful APIs may be experimented with at the API Sandbox</a>.</li>
</ul>
</dd>
</dl>
</div>
