---
title: Green Button Documents Library
layout: page
---
<h2>Green Button Documents Library</h2>
<p>The following documents provide background on the Green Button intitiative as well as providing Important reference documents for Green Button Implementers</p>
<section>
<a href="video/index.html">Videos</a> || <a href="/Presentations/index.html">Presentations</a> || <a href="#technical">Technical</a> || <a href="#testing">Certification</a> || <a href="#espidev">EPSI Development</a>
<hr />
<a id="technical">&nbsp;</a>
<h3>Technical Development Library</h3>
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

<a id="testing">&nbsp;</a>
<h3>Testing &amp; Certification Library</h3>
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


<a id="espidev">&nbsp;</a>
<h3>OpenESPI Development</h3>
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




  