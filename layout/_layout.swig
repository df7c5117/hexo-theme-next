<!doctype html>

{% set html_class = 'theme-next ' + theme.scheme %}
{% if theme.use_motion %}
  {% set html_class = html_class + ' use-motion' %}
{% endif %}

<html class="{{ html_class | lower }}" lang="{{ config.language }}">
<head>
  {% include '_partials/head.swig' %}
  <title>{% block title %}{% endblock %}</title>

</head>

<body itemscope itemtype="http://schema.org/WebPage" lang="{{ page.lang || page.language || config.language }}">


  {% set container_class = "container one-collumn " %}

  <div class="{{ container_class }} {% block page_class %}{% endblock %} ">

    <header id="header" class="header" style="" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner"> {%- include '_partials/header.swig' %} </div>
    </header>

    <main id="main" class="main">
      <div class="main-inner">
        <div class="content-wrap">
          <div id="content" class="content">
            {% block content %}{% endblock %}          
          </div>
          {% include '_partials/comments.swig' %}
        </div>
      </div>
    </main>

    <footer id="footer" class="footer">
      <div class="footer-inner">
        {% include '_partials/footer.swig' %}
        {% block footer %}{% endblock %}
      </div>
    </footer>

    <div class="back-to-top">
      <span class="topbtn">TOP</span>
    </div>
  </div>

  {% include '_scripts/vendors.swig' %}
  {% include '_scripts/commons.swig' %}
  {% include '_scripts/third-party/localsearch.swig' %}

  {% set scheme_script = '_scripts/schemes/' + theme.scheme | lower + '.swig' %}
  {% include scheme_script %}

  {% block script_extra %}{% endblock %}

  {% include '_scripts/boostrap.swig' %}

  {% include '_scripts/third-party/comments.swig' %}
  {% include '_scripts/third-party/mathjax.swig' %}

  <div class="copyright">
    <p class="copy-msg">
        <span class="copy-icon"></span>
        <br>
        不行！你想拿我的图图干什么！
        <br>
        版权所有 / 作者保留所有权利
    </p>
  </div>
  {% if theme.switch_banner %}
<script type="text/javascript">
var number_of_banners = {{ theme.banner_count }};
var randnum = Math.floor(Math.random() * number_of_banners + 1);
document.getElementById("header").style.cssText = "background-image:linear-gradient(rgba(0, 0, 0, .5), rgba(0, 0, 0, .5)),url(/images/banner/" + randnum + ".jpg)!important;";
</script>
{% else %}
<script type="text/javascript">
document.getElementById("header").style.cssText = "background-image:linear-gradient(rgba(0, 0, 0, .5), rgba(0, 0, 0, .5)),url(/images/banner/banner.jpg)!important;"; 
{% endif %}
  <script type="text/javascript">
  $(document).ready(function() {
    $('.protected').picopyright();
  });
  </script>
  
</script>

</body>
</html>
