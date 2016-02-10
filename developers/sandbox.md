---
title: Build
layout: page
---
# Green Button Developers Sandbox
The Green Button team has provided a development and test sandbox. This web site hosts a fully functional Data Custodian and Third Party implementation populated with test data.

This page describes some of the features of this sandbox.

## Data Custodian
**[Green Button Data Custodian](https://services.greenbuttondata.org/DataCustodian/)**

A fully functional Green Button Data Custodian maintained to allow community experimentation. The administrative functions are available when you sign-in using credentials:

* **grace : koala** (ROLE=ADMIN) or
* **alan: koala** (ROLE=USER)

You will then be able to review various functions of the sandbox. The short video <a href="">Using the DataCustodian</a> will provide a starting point for poking around.  <b>NOTE: this is a shared sandbox, so things you do may effect other concurrent users! please use the reset and initialize functions with care.</b>

<span class="anchor" id="for-third-parties"></span>

##Third Party
**[Green Button Third Party](https://services.greenbuttondata.org/ThirdParty/)**

The sandbox also contains a minimal <a href="https://services.greenbuttondata.org/ThirdParty/">Third Party Application</a>. It supports the minimal behavior of a Green Button Third Party and may be used to connect to any certified Green Button Data Custodian. It has an administrative account (grace:koala); as well as numerous retail customer accounts to work with.

## RESTful API

The full complement of <a href="http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API/">Green Button RESTful APIs</a> are supported in the <a href="http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API/">DataCustodian sandbox</a>. You are encouraged to experiment with these APIs using the swagger based <a href"http://energyos.github.io/OpenESPI-GreenButton-API-Documentation/API/">API Sandbox</a>. Please keep in mind that certain of the actions (DELETE, PUT, and POST) will modify the state of the sandbox, so you should insure that you run DataCustodian Initialization following any experiments that perform modifications.

## Sandbox Implementation

Numerous tools and code bases are available on <a href="http://github.com/energyos">Github</a> and are available under the Apache 2 license. In addition to a full implementations of Green Button DataCustodain ThirdParty services,  a common java library is available for reuse. There are also numerous tools for testing and generation of Green Button sample data sets.
</p>
  <dt><a href="https://services.greenbuttondata.org/">Green Button Sandbox</a></dt>
  <dd>The sandbox is maintained to support developers as they implement their Green Button services. It is a deployment of the EnergyOS OpenESPI java spring code base running on a Tomcat 7 server. This effort, supported by NIST, is the result of a public collaboration with contributions maintained in the following Github repositories:
    <ul>
      <li><a href="https://github.com/energyos/OpenESPI-Common-java">OpenESPI Common Library</a></li>
      <li><a href="https://github.com/energyos/OpenESPI-DataCustodian-java">OpenESPI DataCustodian</a></li>
      <li><a href="https://github.com/energyos/OpenESPI-ThirdParty-java">OpenESPI ThirdParty</a></li>
    </ul>
  </dd>

# Other Development Tools


## Green Button Data SDK

**<a href="https://github.com/energyos/OpenESPI-GreenbuttonDataSDK">Green Button Tools SDK</a>**

The Tools SDK provides a set of stand-alone tools to help you work with Green Button XML data. Written primarily in Visual Basic and using Excel macros, you will be able to see simple code that parses Green Button XML and validates appropriate things like time and resource values.  These tools were used in the creation of the on-line <a href="http://www.greenbuttondata.org/greentest.aspx">Green Button validator</a>, where you can test your exported Green Button files for correctness.

Also find a sample XSLT that will transform Green Button Data to human-readable table in a web browser: <a href="https://github.com/energyos/OpenESPI-GreenbuttonDataSDK/blob/master/GreenButtonDemoPage/data/GreenButtonDataStyleSheet.xslt">GreenButtonDataStyleSheet.xslt</a>

## Green Button CMD Test Harness

**<a href="https://github.com/energyos/OpenESPI-GreenButtonCMDTest">Green Button Connect My Data Test Harness</a>**

The Connect My Data test services are currently being developed with support of NIST in collaboration with the OpenADE task group. This effort uses the <a href="http://www.soapui.org/">SOAPui automated testing platform</a> as well as the <a href="http://www.groovy-lang.org/">Groovy scripting environment</a>.  You may download, install, and run the test suits from the <a href="https://github.com/energyos/OpenESPI-GreenButtonCMDTest">github repository</a>.

## RESTful API Developers Page

**<a href="https://github.com/energyos/OpenESPI-GreenButton-API-Documentation">Green Button RESTful API</a>**

The <a href="http://swagger.wordnik.com/">swagger API platform</a> is used to provide a dynamic API sandbox for developers to work within. It is deployed and operable to review API calls to the <a href="https://services.greenbuttondata.org">Green Button Services Sandbox</a>. You may fork the github repository and use this repository to test against your own DataCustodian services as well. 


