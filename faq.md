---
title: faq
layout: page
---

<h2>FedFaq</h2>
<dl>
{% for faq in site.data.faqs %}
<hr />
	 <dt>{{faq.question}}</dt>
	 <dd>{{faq.answer}}</dd>
{% endfor %}
</dl>


