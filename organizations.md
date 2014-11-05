---
layout: page
title: Organizations that have Implemented Green Button
---
<h1>Organizations that Support Green Button</h1>
<p>
The following organizations have deployed Green Button for their customers
<hr />
</p>
<table style="width:90%;">
<tr>
<td style="vertical-align:top;">
<h2>Green Button Utilities</h2>
<ul>
{% for organization in site.data.partners %}
  {% if organization.status == "implemented" %}
    {% if organization.type == "utility" %}
	  <li><a href="{{organization.url}}" />{{organization.name}}</a></li>
    {% endif %}
  {% endif %}	  
{% endfor %}
</ul>
</td>
<td style="vertical-align:top;">
<h2>Green Button Vendors</h2>
<ul>
{% for organization in site.data.partners %}
  {% if organization.status == "implemented" %}
  {% if organization.type == "company" %}
  <li><a href="{{organization.url}}" />{{organization.name}}</a></li>
  {% endif %}
  {% endif %}  
{% endfor %}
</ul>
</td>
</tr>
<tr>
<td style="vertical-align:top;">
<h2>Committed Utilities</h2>
<ul>
{% for organization in site.data.partners %}
  {% if organization.status == "committed" %}
    {% if organization.type == "utility" %}
	  <li><a href="{{organization.url}}" />{{organization.name}}</a></li>
    {% endif %}
  {% endif %}	  
{% endfor %}
</ul>
</td>
<td style="vertical-align:top;">
<h2>Green Button Vendors</h2>
<ul>
{% for organization in site.data.partners %}
  {% if organization.status == "implemented" %}
    {% if organization.type == "company" %}
      <li><a href="{{organization.url}}" />{{organization.name}}</a></li>
    {% endif %}
  {% endif %}  
{% endfor %}
</ul>
</td>
</tr>
</table>
