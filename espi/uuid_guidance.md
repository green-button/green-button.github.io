---
title: UUID Guidance
layout: page
---
<h2>Generating Persistent UUIDs for Green Button</h2>
<p>
The UUIDs used for UsagePoint must be constant (should also be constant for ReadingType, LocalTimeParameters, MeterReading). This is necessary so that a user or third party can recognize updates and extensions to the data sets from one Green Button file to the next. The identities of these resources are established when the account is created and doesn’t change over the life of the account. 
</p>
<p>
Those for each IntervalBlock created should get a new random UUID value. Also, for each new ElectricPowerUsageSummary and ElectricPowerQualitySummary a new UUID is created. If updates to these resources are to be provided, the UUIDs used in the updates must be the same as used in the original resource. Random re-generation of UUIDs each time a resource is transmitted is not appropriate and will cause the Green Button implementation to fail certification tests for both Download My Data and Connect My Data.
</p><p>
Developers must generate the UUIDs in accordance with RFC4122 (<a href="http://www.ietf.org/rfc/rfc4122.txt">http://www.ietf.org/rfc/rfc4122.txt</a>).
To make reproducible UUIDs that do not need to be stored, the developer may use a one-way hash based on SHA-1 which is a secure non-reversible hash function. The construction of the UUID in this way is called <b>version 5</b> (note the method below allows you to compute them each time; the algorithm for constructing uuid is in section 4.3 of the RFC). 
</p>
<p>
The requirements for these types of UUIDs are as follows:
<ul>
<li>The UUIDs generated at different times from the same name in the same namespace MUST be equal.</li>
<li>The UUIDs generated from two different names in the same namespace should be different (with very high probability).</li>
<li>The UUIDs generated from the same name in two different namespaces should be different with (very high probability).</li>
<li>If two UUIDs that were generated from names are equal, then they were generated from the same name in the same namespace (with very high probability).</li>
</ul>
</p>
<p>
This method of generating a UUID combines a scheme, a namespace, and a name to create a globally unique string that can be formed into a UUID. It is called “version 5” of the RFC4122 that allows the creation of a UUID based on three data elements:
<ul>
<li>A namespaceUUIDType – for example NameSpace_URL from appendix C of the standard allows you to use a url for the namespace part (for this form, the NameSpace_URL value is 6ba7b811-9dad-11d1-80b4-00c04fd430c8</li>
<li>A namespace – if the type is NameSpace_URL, then an example namespace would be “services.greenbuttondata.org”</li>
<li>A name – a unique name within the namespace.</li>
</ul>
</p>
<p>
The form of the UUID recommended for use in ESPI is:
<br /><b>urn:uuid:xxxxxxxx-xxxx-Mxxx-Nxxx-xxxxxxxxxxxx</b>
<br />
(where M and N are defined in the standard and x are hexadecimal digits):
<ol>
<li>The value of M is 5 for version 5.</li>
<li>The value of N is the most significant two bits of that character must be 0b10.</li>
</ol>
That is values of 8,9,a,b are valid values of hex nibble N.
</p>
<p>
To use this scheme:
<ol>
<li>consider meterId as the meter id (another id that is constant with respect to the meter that corresponds to the UsagePoint will do). Then create the “names” for the persistent UUIDs for use in your Green Button installation:
<ul>
<li>usagePointName = meterId</li>
<li>meterReadingName = meterId + “mrWh” ⇐ this will be a constant for MeterReadings of this UsagePoint of the Wh readings.</li>
<li>readingTypeName = readingTypeWh ⇐ this will be a constant for all Green Button data you make of that ReadingType</li>
<li>localTimeParamtersName = localTimeParamtersPT ⇐ this will be a constant for all Green Button data you make that is in the Pacific time zone</li>
</ul>
</li>
<li>Then generate the corresponding UUIDs by applying SHA-1 to the desired concatenated string:</li>
<li>Generate the bytes of the UUID = SHA1(namespaceUUIDType + namespace + name) where each term is an ordered sequence of bytes concatenated (note leave out formatting and separating characters such as the ‘-‘ in the namespaceUUIDType).</li>
<li>Then, set the values of M and N:
<ul>
<li>M is 13th nibble</li>
<li>N is upper 2 bits of 17th nibble</li>
</ul>
</li>
<li>Format the string</li>
</ol>
