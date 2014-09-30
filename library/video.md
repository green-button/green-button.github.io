---
title: Video Library
layout: page
---

<h2>Green Button Videos</h2>

{% for video in site.data.videos %}
<hr />
<div style="width:470px; display:block'">
<dl>
	<dt>{{video.name}}</dt>
	<dd>{{video.description}}</dd>
	
    {% if video.type == 'use_embedded' %}
	{{video.embedded}}
    {% endif %}
	
    {% if video.type == 'mp4' %}
	<video width="450" height="240" controls preload="none" poster="{{video.embedded}}">
		<source src="{{video.url}}" type="video/mp4">
		Your browser does not support HTML5 video.
	</video>
    {% endif %}
</dl>
</div>
{% endfor %}


