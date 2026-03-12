---
title: Sites
---

<form action="{{ '/search/' | relative_url }}" method="get">
</form>

{% comment %}
<section class="sites-index">
    <ul class="sites-index-list">
        {% for record in site.data.sites %}
        {% if record.domain %}
        <li class="sites-index__item">
            <a href="{{ '/sites/' | append: record.domain | append: '/' | relative_url }}">{{ record.name | default: record.domain }}</a>
            {% if record.violations == "no" %}
            <span class="badge badge--ok">No violations</span>
            {% elsif record.violations %}
            <span class="badge badge--violations">
                {{ record.violations | size }}
                violation{% if record.violations.size != 1 %}s{% endif %}
            </span>
            {% endif %}
            {% if record.last_updated %}
            <span class="sites-index__updated">Updated {{ record.last_updated }}</span>
            {% endif %}
        </li>
        {% endif %}
        {% endfor %}
    </ul>
</section>
{% endcomment %}
