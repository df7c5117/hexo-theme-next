<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ config.author }}</span>
</div>

{% if theme.copyright %}
<div>
  <a class="theme-link" href="https://hexo.io">Hexo</a> × 
  <a class="theme-link" href="https://github.com/iissnan/hexo-theme-next">
    NexT.{{ theme.scheme }}</a>
  <span> Modified by </span>
  <a class="theme-link" href="https://github.com/df7c5117/hexo-theme-next">
    df7c5117
  </a>
</div>
{% endif %}
