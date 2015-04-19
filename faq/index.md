---
title: Frequently Asked Questions
layout: page
---

<!-- 
	this toc doesnt quite work; need to improve and can then uncomment

<ul>
{% for faq in site.data.faqs %}
  {% if faq.audience != "fed" %}
	<li><a href="#{{ faq.question }}">{{ faq.question }}</a></li>
  {% endif %}
{% endfor %}

</ul>
-->

<p>&nbsp;</p>

##Frequently Asked Questions

{% for faq in site.data.faqs %}
  {% if faq.audience != "fed" %}
  <dt id="{{faq.question}}">{{faq.question}}</dt>
  <dd>{{faq.answer}}</dd>
  {% endif %}
{% endfor %}

##Federal Agency specific FAQ

{% for faq in site.data.faqs %}
  {% if faq.audience == "fed" %}
  <dt>{{faq.question}}</dt>
  <dd>{{faq.answer}}</dd>
  {% endif %}
{% endfor %}



