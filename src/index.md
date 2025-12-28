---
layout: default
title: Sacred Plant Ceremonies
slides:
    - title: Sacred Tobacco Ceremony
      image: 7hierbas.jpg
    - title: Amazonian Plant Healing
      image: eucaliptus.jpg
    - title: Rituals of Renewal
      image: jurema.jpg
    - title: Kokopelli Spirit Medicine
      image: samauma.jpg
---

{% if site.development %}
{% include dev.html %}
{% endif %}
{% av "7hierbas.jpg" %}

<section class="slider" aria-label="Gallery">
      <ol class="slider-track">

        {% assign total = page.slides | size %}

        {% for slide in page.slides %}
          {% assign index = forloop.index %}
          {% assign prev = index | minus: 1 %}
          {% assign next = index | plus: 1 %}

          {% if prev < 1 %}
            {% assign prev = total %}
          {% endif %}
          {% if next > total %}
            {% assign next = 1 %}
          {% endif %}

          <li id="slide{{ index }}" tabindex="0" class="slide">
            <div class="slide-inner">
              <h2 class="slide-title">{{ slide.title }}</h2>



              <a href="#slide{{ prev }}" class="slide-prev">‹</a>
              <a href="#slide{{ next }}" class="slide-next">›</a>
            </div>
          </li>

        {% endfor %}

      </ol>

</section>
