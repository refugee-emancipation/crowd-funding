---
layout: page
show_meta: false
title: "Downloads"
subheadline: "Layouts of Feeling Responsive"
permalink: "/downloads/"
---
<ul>
    {% for post in site.categories.downloads %}
    <li><a href="{{ site.url }}{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
</ul>
