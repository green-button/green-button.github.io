---
layout: page
title: Green Button Presentations home
---

<h2>Green Button Presentations</h2>
<dl>
{% for presentation in site.data.presentations %}

<dt>
	 <dt><a href="{{presentation.pdf}}" />{{presentation.name}}</a></dt>
	 <dd>{{presentation.description}}</dd>
</dt>

{% endfor %}
</dl>