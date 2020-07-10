---
title: Build
layout: page
---

## How to Build Green Button Applications


Many technical resources are available to you, the developer of Green Button applications. The [library of technical documents]({{ site.baseurl }}/library) and presentations provides links to the standards and implementation guides you will want to review before starting your implementations. Most of these materials are directed to developers of DataCustodians, as the requirements of custodians are much more complex than those of a third party application.  Both may find the [Green Button Developers Guide]({{ site.baseurl }}/developers) useful.

Below find a simple progression of links to aid you in developing and testing a Green Button Application.

<span class="anchor" id="data-custodian-development"></span>

## Build or Parse Green Button Data

1. [Understand Green Button Data](/developers)
2. [Green Button Energy Usage Data XML Schema](https://github.com/greenbuttonalliance/OpenESPI-Common-java/blob/master/etc/usage.xsd)
3. [Green Button Personal Identifiable Information XML Schema](https://github.com/greenbuttonalliance/OpenESPI-Common-java/blob/master/etc/retailcustomer.xsd)
4. [Test file generation Video - Green Button Tools: Introduction (Part 6/10)](/library/video)
5. [Test file generation spreadsheet utility - GreenButtonDataSetGenerator](https://github.com/greenbuttonalliance/OpenESPI-GreenbuttonDataSDK/tree/master/SampleDataGenerator)
6. [Test File Online Validator](http://dmdvalidator.greenbuttonalliance.org)
7. [Review the Green Button Sandbox](/developers/sandbox)

### Build Access to Green Button Data via Download My Data

1. [XML Parsing jscript in Graphing Demo App](https://github.com/greenbuttonalliance/OpenESPI-GreenbuttonDataSDK/tree/master/GreenButtonDemoPage)
2. [DMD Using OpenESPI open source Data Custodian](https://github.com/greenbuttonalliance/OpenESPI-Common-java)

### Build Access to Green Button Data via Connect My Data

1. [CMD Using OpenESPI open source Data Custodian](https://github.com/greenbuttonalliance/OpenESPI-DataCustodian-java)
1. [Understand OAuth Scope for DMD]({{ site.baseurl }}/espi/scope)
1. [Understand ESPI APIs]({{ site.baseurl }}/espi/api_specification)

### Build a Green Button Third Party Client
1. [Implement Third Party Client using OpenESPI open source Third Party](https://github.com/greenbuttonalliance/OpenESPI-ThirdParty-java)
2. [Simple Ruby Client](https://github.com/cew821/greenbutton)
3. Python sample snippet - tbd

## Test your implementation

### For Download My Data

1. [Use the data analyzer](http://www.greenbuttondata.org/greentest.aspx)
2. [Use the batch data analyzer](https://github.com/greenbuttonalliance/OpenESPI-GreenbuttonDataSDK/tree/master/GreenButtonBatchTest)

### For Connect My Data

1. [Use the Certification Test Suite SoapUI Project](https://github.com/greenbuttonalliance/OpenESPI-GreenButtonCMDTest)


