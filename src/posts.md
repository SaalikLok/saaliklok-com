---
layout: page
title: Blog
---

{% for post in collections.posts.resources %}
  <h3><a href="{{ post.relative_url }}">{{ post.data.title }}</a></h3>
  {{ post.data.description }}
{% endfor %}
