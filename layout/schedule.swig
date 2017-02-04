{% extends '_layout.swig' %}
{% block title %} {{ __('title.schedule') }} | {{ config.title }} {% endblock %}

{% block page_class %}page-post-detail page-calendar{% endblock %}

{% block content %}

  <section id="schedule">
    <ul id="event-list">
    </ul>
  </section>

{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
