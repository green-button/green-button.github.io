---
layout: page
title: Green Button Presentations home
---

<h2>Green Button Presentations</h2>
<dl>
{% for video in site.data.presentations %}

<dt>
    <a href="{{presentation.pdf}}" >{{presentation.name}}: {{presentation.description}} </a>
</dt>
{% endfor %}
</dl>