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

<h3>RetailCustomer, DataCustodian &amp; ThirdParty Actors</h3>
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
<p>Green Button uses the <a href="http://tools.ietf.org/html/rfc4287">Atom Syndication Format Standard</a> to represent structured energy usage information in an XML format that may be exchanged on the internet. Both Google (GData) and Microsoft (OData) independently recognized the power of the Atom Syndication Format to encode complex data for exchange over RESTful web services. Green Button adopted these concepts in the construction of ESPI.</p>

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
entities may be contained in a feed and the entry/contents describe the ESPI entity itself. In
addition, you need to construct (during the parse if possible for you) the associations that need to
exist between the ESPI entities.  The <em>&lt;link&gt;</em> tags are quite important for use during
parsing of the Green Button data. These links allow you to know which <em>MeterReading</em>s are
related to a specific <em>UsagePoint</em>.

<p>Within an
<em>&lt;entry&gt;</em>, the <em>"related"</em> links point to a collection, for example:
<pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:c8c34b3a-d175-447b-bd00-176f60194de0&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1" rel="self"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/MeterReading" rel="related"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/ElectricPowerUsageSummary" rel="related"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/1" rel="related"/&gt;
      &lt;title&gt;Green Button Sample Data File&lt;/title&gt;
      &lt;content&gt;
            &lt;espi:UsagePoint&gt;
                  &lt;espi:ServiceCategory&gt;
                        &lt;espi:kind&gt;0&lt;/espi:kind&gt;
                  &lt;/espi:ServiceCategory&gt;
            &lt;/espi:UsagePoint&gt;
      &lt;/content&gt;
      &lt;published&gt;2013-09-19T04:00:00Z&lt;/published&gt;
      &lt;updated&gt;2013-09-19T04:00:00Z&lt;/updated&gt;
&lt;/entry&gt;

    </code></pre>

  </div>
</div>
<!-- end .concepts -->

<div id="data-elements">
<h3>Green Button Resources</h3>
<p>A <em>DataCustodian</em> will, when authorized by a <em>RetailCustomer</em>, publish a GreenButton data stream. A <em>ThirdParty</em> may then subscribe to that stream. Green Button uses the <a href="http://oauth.net/"><span style="color:blue;">OAuth 2.0 Authorization Framework</span></a> protocol to provide secure authorization for accessing the published data stream.
</p>
<p>Green Button APIs are designed to support data flows that are both large and small. Many Utilities will schedule bulk transfers of hundreds of thousands of 24-hour data sets as a batch process. In this case, the Green Button APIs must be able to accommodate blocked transfers, recovery, and restarts. Other use-cases are driven more by frequent transmissions of smaller data sets, for example the hourly usage of a single outlet in your home. Green Button is designed to handle both!</p>

<div id="accordion1">
  <h3><a href="/espi/application_information/">ApplicationInformation</a></h3>
  <div>
    <p></p>
    <pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:af6e8b03-0299-467e-972a-a883ecdcc575&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ApplicationInformation/2" rel="self"/&gt;
      &lt;title&gt;GreenButtonData.org  ThirdParty Application&lt;/title&gt;
      &lt;content&gt;
            &lt;espi:ApplicationInformation&gt;
                  &lt;espi:dataCustodianId&gt;data_custodian&lt;/espi:dataCustodianId&gt;
                  &lt;espi:dataCustodianApplicationStatus&gt;1&lt;/espi:dataCustodianApplicationStatus&gt;
                  &lt;espi:thirdPartyNotifyUri&gt;https://services.greenbuttondata.org/ThirdParty/espi/1_1/Notification&lt;/espi:thirdPartyNotifyUri&gt;
                  &lt;espi:dataCustodianBulkRequestURI&gt;&lt;/espi:dataCustodianBulkRequestURI&gt;
                  &lt;espi:dataCustodianResourceEndpoint&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource&lt;/espi:dataCustodianResourceEndpoint&gt;
                  &lt;espi:thirdPartyScopeSelectionScreenURI&gt;https://services.greenbuttondata.org/ThirdParty/RetailCustomer/ScopeSelection&lt;/espi:thirdPartyScopeSelectionScreenURI&gt;
                  &lt;espi:client_secret&gt;secret&lt;/espi:client_secret&gt;
                  &lt;espi:redirect_uri&gt;https://services.greenbuttondata.org/ThirdParty/espi/1_1/OAuthCallBack&lt;/espi:redirect_uri&gt;
                  &lt;espi:client_id&gt;third_party&lt;/espi:client_id&gt;
                  &lt;espi:contacts&gt;john.teeter@energyos.org,martin.burns@nist.gov,donald.coffin@reminetworks.com&lt;/espi:contacts&gt;
                  &lt;espi:token_endpoint_auth_method&gt;client_secret_basic&lt;/espi:token_endpoint_auth_method&gt;
                  &lt;espi:scope&gt;FB=4_5_15;IntervalDuration=900;BlockDuration=monthly;HistoryLength=13&lt;/espi:scope&gt;
                  &lt;espi:scope&gt;FB=4_5_15;IntervalDuration=3600;BlockDuration=monthly;HistoryLength=13&lt;/espi:scope&gt;
                  &lt;espi:scope&gt;FB=4_5_12_15_16;IntervalDuration=3600;BlockDuration=monthly;HistoryLength=13&lt;/espi:scope&gt;
                  &lt;espi:grant_types&gt;refresh_token&lt;/espi:grant_types&gt;
                  &lt;espi:grant_types&gt;authorization_code&lt;/espi:grant_types&gt;
                  &lt;espi:dataCustodianScopeSelectionScreenURI&gt;https://services.greenbuttondata.org/DataCustodian/RetailCustomer/ScopeSelectionList&lt;/espi:dataCustodianScopeSelectionScreenURI&gt;
            &lt;/espi:ApplicationInformation&gt;
      &lt;/content&gt;
      &lt;published&gt;2014-01-02T10:00:00Z&lt;/published&gt;
      &lt;updated&gt;2014-01-02T10:00:00Z&lt;/updated&gt;
&lt;/entry&gt;

    </code></pre>
    </div>
  </div>

<div id="accordion">
  <h3><a href="/espi/authorization/">Authorization</a></h3>
  <div>
    <p></p>
    <pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:bdcb34c0-7afd-4812-b30c-0d90fbeab936&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/5" rel="self"/&gt;
      &lt;content&gt;
            &lt;espi:Authorization&gt;
                  &lt;espi:authorizedPeriod&gt;
                        &lt;espi:duration&gt;0&lt;/espi:duration&gt;
                        &lt;espi:start&gt;0&lt;/espi:start&gt;
                  &lt;/espi:authorizedPeriod&gt;
                  &lt;espi:publishedPeriod&gt;
                        &lt;espi:duration&gt;0&lt;/espi:duration&gt;
                        &lt;espi:start&gt;0&lt;/espi:start&gt;
                  &lt;/espi:publishedPeriod&gt;
                  &lt;espi:status&gt;1&lt;/espi:status&gt;
                  &lt;espi:expires_at&gt;31535999&lt;/espi:expires_at&gt;
                  &lt;espi:scope&gt;FB=4_5_15;IntervalDuration=900;BlockDuration=monthly;HistoryLength=13&lt;/espi:scope&gt;
                  &lt;espi:token_type&gt;Bearer&lt;/espi:token_type&gt;
                  &lt;espi:resourceURI&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Batch/Subscription/5&lt;/espi:resourceURI&gt;
                  &lt;espi:authorizationURI&gt;https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Authorization/5&lt;/espi:authorizationURI&gt;
            &lt;/espi:Authorization&gt;
      &lt;/content&gt;
      &lt;published&gt;2014-09-03T06:39:45Z&lt;/published&gt;
      &lt;updated&gt;2014-09-03T06:39:45Z&lt;/updated&gt;
&lt;/entry&gt;

    </code></pre>
    </div>
  </div>

<div id="accordion">
  <h3>UsagePoint</h3>
  <div>
    <p>A <em>UsagePoint</em> is where a resource is measured. Typically, it is your Utility Smart Meter, but it could be the outlet on the wall as well. UsagePoints provide the reference for all meter readings that are contained within the Green Button data. UsagePoints have a <em>ServiceCategory</em> that defines what <em>kind</em> of resource &mdash; such as an electricity, gas, or water measurement &mdash; is being reported. </p>
    <pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:c8c34b3a-d175-447b-bd00-176f60194de0&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1" rel="self"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/MeterReading" rel="related"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/ElectricPowerUsageSummary" rel="related"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/1" rel="related"/&gt;
      &lt;title&gt;Green Button Sample Data File&lt;/title&gt;
      &lt;content&gt;
            &lt;espi:UsagePoint&gt;
                  &lt;espi:ServiceCategory&gt;
                        &lt;espi:kind&gt;0&lt;/espi:kind&gt;
                  &lt;/espi:ServiceCategory&gt;
            &lt;/espi:UsagePoint&gt;
      &lt;/content&gt;
      &lt;published&gt;2013-09-19T04:00:00Z&lt;/published&gt;
      &lt;updated&gt;2013-09-19T04:00:00Z&lt;/updated&gt;
&lt;/entry&gt;

    </code></pre>
  </div>
  <h3>MeterReading</h3>
  <div>
    <p>A MeterReading is a container for all of the measured <em>IntervalBlocks</em> within the Green Button data captured at a <em>UsagePoint</em>.</p>
    <pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:4234ae39-fb6d-48ca-8856-ac9f41fb3d34&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/MeterReading" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/MeterReading/1" rel="self"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/MeterReading/1/IntervalBlock" rel="related"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType/1" rel="related"/&gt;
      &lt;title&gt;Monthly Electricity Consumption&lt;/title&gt;
      &lt;content&gt;
            &lt;espi:MeterReading/&gt;
      &lt;/content&gt;
      &lt;published&gt;2013-09-19T04:00:00Z&lt;/published&gt;
      &lt;updated&gt;2013-09-19T04:00:00Z&lt;/updated&gt;
&lt;/entry&gt;

    </code></pre>
  </div>
  <h3>ReadingType</h3>
  <div>
    <p>A <em>ReadingType</em> provides detail as to the specifics of the reading data that is being obtained. Green Button follows international standards and has the ability to represent large industrial resources as well as those used in a residence.</p>
     <pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:99b292fc-55f7-4f27-a3b9-cddab97cca90&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/ReadingType/1" rel="self"/&gt;
      &lt;title&gt;Type of Meter Reading Data&lt;/title&gt;
      &lt;content&gt;
            &lt;espi:ReadingType&gt;
                  &lt;espi:accumulationBehaviour&gt;4&lt;/espi:accumulationBehaviour&gt;
                  &lt;espi:commodity&gt;1&lt;/espi:commodity&gt;
                  &lt;espi:currency&gt;840&lt;/espi:currency&gt;
                  &lt;espi:dataQualifier&gt;12&lt;/espi:dataQualifier&gt;
                  &lt;espi:flowDirection&gt;1&lt;/espi:flowDirection&gt;
                  &lt;espi:intervalLength&gt;86400&lt;/espi:intervalLength&gt;
                  &lt;espi:kind&gt;12&lt;/espi:kind&gt;
                  &lt;espi:phase&gt;769&lt;/espi:phase&gt;
                  &lt;espi:powerOfTenMultiplier&gt;0&lt;/espi:powerOfTenMultiplier&gt;
                  &lt;espi:timeAttribute&gt;0&lt;/espi:timeAttribute&gt;
                  &lt;espi:uom&gt;72&lt;/espi:uom&gt;
            &lt;/espi:ReadingType&gt;
      &lt;/content&gt;
      &lt;published&gt;2013-09-19T04:00:00Z&lt;/published&gt;
      &lt;updated&gt;2013-09-19T04:00:00Z&lt;/updated&gt;
&lt;/entry&gt;

    </code></pre>
  </div>
  <h3>IntervalBlock</h3>
  <div>
    <p><em>IntervalBlock</em>s are the primary data carrier within the Green Button data. IntervalBlocks may have one or more Intervals, each with a start and duration, as well as the specific <em>IntervalReading</em></p>

    <pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:e0383570-16b1-4ab9-8642-fdb7e89660db&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/MeterReading/1/IntervalBlock" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/MeterReading/1/IntervalBlock/1" rel="self"/&gt;
      &lt;title&gt;&lt;/title&gt;
      &lt;content&gt;
            &lt;espi:IntervalBlock&gt;
                  &lt;espi:interval&gt;
                        &lt;espi:duration&gt;2678400&lt;/espi:duration&gt;
                        &lt;espi:start&gt;1357016400&lt;/espi:start&gt;
                  &lt;/espi:interval&gt;
                  &lt;espi:IntervalReading&gt;
                        &lt;espi:cost&gt;256347&lt;/espi:cost&gt;
                        &lt;espi:timePeriod&gt;
                              &lt;espi:duration&gt;86400&lt;/espi:duration&gt;
                              &lt;espi:start&gt;1357016400&lt;/espi:start&gt;
                        &lt;/espi:timePeriod&gt;
                        &lt;espi:value&gt;21021&lt;/espi:value&gt;
                  &lt;/espi:IntervalReading&gt;
                  &lt;espi:IntervalReading&gt;
                        &lt;espi:cost&gt;256347&lt;/espi:cost&gt;
                        &lt;espi:timePeriod&gt;
                              &lt;espi:duration&gt;86400&lt;/espi:duration&gt;
                              &lt;espi:start&gt;1357102800&lt;/espi:start&gt;
                        &lt;/espi:timePeriod&gt;
                        &lt;espi:value&gt;21021&lt;/espi:value&gt;
                  &lt;/espi:IntervalReading&gt;
                  ...
                  &lt;espi:IntervalReading&gt;
                        &lt;espi:cost&gt;256347&lt;/espi:cost&gt;
                        &lt;espi:timePeriod&gt;
                              &lt;espi:duration&gt;86400&lt;/espi:duration&gt;
                              &lt;espi:start&gt;1359608400&lt;/espi:start&gt;
                        &lt;/espi:timePeriod&gt;
                        &lt;espi:value&gt;21021&lt;/espi:value&gt;
                  &lt;/espi:IntervalReading&gt;
            &lt;/espi:IntervalBlock&gt;
      &lt;/content&gt;
      &lt;published&gt;2013-02-01T05:00:00Z&lt;/published&gt;
      &lt;updated&gt;2013-02-01T05:00:00Z&lt;/updated&gt;
&lt;/entry&gt;

    </code></pre>
  </div>
  <h3>LocalTimeParameters</h3>
  <div>
    <p>The <em>LocalTimeParameters</em> provide a flexible manner to enable <em>Energy Usage Information (EUI)</em> to be provided with a reference to local time, without including any <em>Personally Identifiable Information</em>.  </p>
    <pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:e30ce77d-ec22-4da5-83c2-991ba34c97d6&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/LocalTimeParameters/1" rel="self"/&gt;
      &lt;title&gt;DST For North America&lt;/title&gt;
      &lt;content&gt;
            &lt;espi:LocalTimeParameters&gt;
                  &lt;espi:dstEndRule&gt;B40E2000&lt;/espi:dstEndRule&gt;
                  &lt;espi:dstOffset&gt;3600&lt;/espi:dstOffset&gt;
                  &lt;espi:dstStartRule&gt;360E2000&lt;/espi:dstStartRule&gt;
                  &lt;espi:tzOffset&gt;-18000&lt;/espi:tzOffset&gt;
            &lt;/espi:LocalTimeParameters&gt;
      &lt;/content&gt;
      &lt;published&gt;2013-09-19T04:00:00Z&lt;/published&gt;
      &lt;updated&gt;2013-09-19T04:00:00Z&lt;/updated&gt;
&lt;/entry&gt;

    </code></pre>
  </div>
  <h3>UsageSummary</h3>
  <div>
    <p></p>
    <pre><code>&lt;entry xmlns:espi="http://naesb.org/espi" xmlns="http://www.w3.org/2005/Atom"&gt;
      &lt;id&gt;urn:uuid:923a7143-263e-421b-bea2-e41b7e240013&lt;/id&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/UsageSummary" rel="up"/&gt;
      &lt;link href="https://services.greenbuttondata.org/DataCustodian/espi/1_1/resource/Subscription/1/UsagePoint/1/UsageSummary/1" rel="self"/&gt;
      &lt;title&gt;Usage Summary&lt;/title&gt;
      &lt;content&gt;
            &lt;espi:UsageSummary&gt;
                  &lt;espi:billingPeriod&gt;
                        &lt;espi:duration&gt;2419200&lt;/espi:duration&gt;
                        &lt;espi:start&gt;1391230800&lt;/espi:start&gt;
                  &lt;/espi:billingPeriod&gt;
                  &lt;espi:billLastPeriod&gt;6752000&lt;/espi:billLastPeriod&gt;
                  &lt;espi:billToDate&gt;4807000&lt;/espi:billToDate&gt;
                  &lt;espi:costAdditionalLastPeriod&gt;0&lt;/espi:costAdditionalLastPeriod&gt;
                  &lt;espi:currency&gt;840&lt;/espi:currency&gt;
                  &lt;espi:overallConsumptionLastPeriod&gt;
                        &lt;espi:powerOfTenMultiplier&gt;0&lt;/espi:powerOfTenMultiplier&gt;
                        &lt;espi:uom&gt;72&lt;/espi:uom&gt;
                        &lt;espi:value&gt;625716&lt;/espi:value&gt;
                  &lt;/espi:overallConsumptionLastPeriod&gt;
                  &lt;espi:currentBillingPeriodOverAllConsumption&gt;
                        &lt;espi:powerOfTenMultiplier&gt;0&lt;/espi:powerOfTenMultiplier&gt;
                        &lt;espi:timeStamp&gt;1395374400&lt;/espi:timeStamp&gt;
                        &lt;espi:uom&gt;72&lt;/espi:uom&gt;
                        &lt;espi:value&gt;447993&lt;/espi:value&gt;
                  &lt;/espi:currentBillingPeriodOverAllConsumption&gt;
                  &lt;espi:qualityOfReading&gt;14&lt;/espi:qualityOfReading&gt;
                  &lt;espi:statusTimeStamp&gt;1395374400&lt;/espi:statusTimeStamp&gt;
            &lt;/espi:UsageSummary&gt;
      &lt;/content&gt;
      &lt;published&gt;2014-03-01T05:00:00Z&lt;/published&gt;
      &lt;updated&gt;2014-03-01T05:00:00Z&lt;/updated&gt;
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
  style sheet.
<ul>
<li>Examples of <a href="https://services.greenbuttondata.org/sample-data.html">Download My Data files may be found on the Green Button Sandbox</a>.</li>
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
