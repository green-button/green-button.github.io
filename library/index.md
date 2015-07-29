---
title: Green Button Documents Library
layout: page
---
##Green Button Documents Library
<p>The following documents provide background on the Green Button initiative as well as providing Important reference documents for Green Button Implementers</p>
<section>
<a href="video/index.html">Videos</a> || <a href="/Presentations/index.html">Presentations</a> || <a href="#technical">Technical</a> || <a href="#testing">Certification</a> || <a href="#espidev">ESPI Development</a>
</section>
<p/>

###Key References

The references in this section represent the principle technical documents that define and describe the Green Button technology. They begin with the base standard for Green Button. Published in 2011, this standard is ready for an update beginning late 2015. Corrections and enhancements to the standard have been developed under the auspices of the [UCAIug](http://www.ucaiug.org/default.aspx) OpenADE [Task Force](http://osgug.ucaiug.org/sgsystems/OpenADE/Shared%20Documents/Testing%20and%20Certification/GreenButtonTestPlan). See the [Community](/community) for details on their meetings and process.
  
<dl>
{% for document in site.data.documents %}

  {% if document.category == "keyref" %}
  <dt>
    {% if document.html %}
    <a href="{{document.html}}" >
    {{document.name}} (Web Page)</a>
    {% endif %}

    {% if document.doc %}
    <a href="{{document.doc}}" >
    {{document.name}} (Document) </a>
    {% endif %}

    {% if document.pdf %}
    <a href="{{document.pdf}}" >
    {{document.name}} (.pdf) </a>
    {% endif %}

  </dt>


  <dd>{{document.description}}</dd>

{% endif %}
{% endfor %}
</dl>

###Testing &amp; Certification Library

Testing and Certification of implementations of Green Button Download My Data and Connect My Data are administered by the [Green Button Alliance](http://greenbuttonalliance.org/). The references in this section are the basis of the testing and certification program. The Test Steps Spreadsheet contains the 'source code' of the testing program. The Test Plan and Test Data Sheet are generated from the spreadsheet programmaticaly.

<dl>
{% for document in site.data.documents %}

  {% if document.category == "certification" %}
  <dt>
    {% if document.html %}
    <a href="{{document.html}}" >
    {{document.name}} (Web Page)</a>
    {% endif %}

    {% if document.doc %}
    <a href="{{document.doc}}" >
    {{document.name}} (Document) </a>
    {% endif %}

    {% if document.pdf %}
    <a href="{{document.pdf}}" >
    {{document.name}} (.pdf) </a>
    {% endif %}

  </dt>


  <dd>{{document.description}}</dd>

{% endif %}
{% endfor %}
</dl>



###Technical Development Library
<dl>
{% for document in site.data.documents %}

  {% if document.category == "development" %}
  <dt>
    {% if document.html %}
    <a href="{{document.html}}" >
    {{document.name}} (Web Page)</a>
    {% endif %}

    {% if document.doc %}
    <a href="{{document.doc}}" >
    {{document.name}} (Document) </a>
    {% endif %}

    {% if document.pdf %}
    <a href="{{document.pdf}}" >
    {{document.name}} (.pdf) </a>
    {% endif %}

  </dt>


  <dd>{{document.description}}</dd>

{% endif %}
{% endfor %}
</dl>


###OpenESPI Development
<dl>
{% for document in site.data.documents %}

  {% if document.category == "espi" %}
  <dt>
    {% if document.html %}
    <a href="{{document.html}}" >
    {{document.name}} (Web Page)</a>
    {% endif %}

    {% if document.doc %}
    <a href="{{document.doc}}" >
    {{document.name}} (Document) </a>
    {% endif %}

    {% if document.pdf %}
    <a href="{{document.pdf}}" >
    {{document.name}} (.pdf) </a>
    {% endif %}

  </dt>


  <dd>{{document.description}}</dd>

{% endif %}
{% endfor %}
</dl>




  