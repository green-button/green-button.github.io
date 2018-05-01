---
layout: page
title: Green Button Presentations home
---

<h2>Green Button Presentations</h2>
<dl>
{% for presentation in site.data.presentations %}

<dt>
	{% if presentation.featured == false %}
	 	<dt><a href="{{presentation.pdf}}" target="_blank"/>{{presentation.name}}</a></dt>
	 	<dd>{{presentation.description}}</dd>
	{% endif %}
</dt>

{% endfor %}
</dl>
