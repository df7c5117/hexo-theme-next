<div class="site-meta {% if theme.custom_logo.enabled %}custom-logo{% endif %}">
  {% if theme.custom_logo.image and theme.scheme === 'Muse' %}
    <div class="site-meta-headline">
      <a>
        <img class="custom-logo-image" src="{{ theme.custom_logo.image }}"
             alt="{{ config.title }}"/>
      </a>
    </div>
  {% endif %}

  <div class="custom-logo-site-title">
    <a href="{{ config.root }}"  class="brand" rel="start">
      <span class="logo-line-before"><i></i></span>
      <img class="author-image" itemprop="image"
               src="{{ url_for( theme.avatar | default(theme.images + '/avatar.png') ) }}"
               alt="{{ theme.author }}" />
      <span class="site-title">{{ config.title }}</span>
      <span class="logo-line-after"><i></i></span>
    </a>
  </div>
    {% if theme.seo %}
      <h1 class="site-subtitle" itemprop="description">{{ config.subtitle }}</h1>
    {% else %}
      <p class="site-subtitle">{{ config.subtitle }}</p>
    {% endif %}
</div>

<div class="site-nav-toggle">
  <button>
    <span class="navmenu">MENU</span>
  </button>
</div>

<nav class="site-nav">

  {% set hasSearch = config.search %}
  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <li class="menu-item menu-item-{{ itemName }}">
          <a href="{{ url_for(path) }}" rel="section">
            {{ __('menu.' + itemName) }}
          </a>
        </li>
      {% endfor %}

      {% if hasSearch %}
        <li class="menu-item menu-item-search">
          {% if config.search %}
            <a href="javascript:;" class="popup-trigger">
          {% endif %}
            {{ __('menu.search') }}
          </a>
        </li>
      {% endif %}
    </ul>
  {% endif %}

{% if hasSearch %}
      {% include 'search.swig' %}
  {% endif %}

    <div class="links-of-author">
          {% if theme.social %}
            {% for name, link in theme.social %}
              <span class="links-of-author-item">
                <a href="{{ link }}" target="_blank" title="{{ name }}">
                  {{ name }}
                </a>
              </span>
            {% endfor %}
          {% endif %}
        </div>
</nav>

{% include '../_custom/header.swig' %}
