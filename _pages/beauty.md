---
layout: default
title: Beauty
permalink: /beauty
pagination: 
  enabled: true
  categories:
    values:
      - beauty
    matching: any
---
<section>
    WE SEE 
    WE CONQUER
</section>
<!-- Featured
================================================== -->
<section class="featured-posts">
    <div class="section-title">
        <h2><span>The Ordinary Products</span></h2>
    </div>
    <div class="row">

    {% for post in site.posts %}

        {% if post.ordinary == true %}

            {% include postbox.html %}

        {% endif %}

    {% endfor %}

    </div>
</section>

<!-- Posts Index
================================================== -->
<section class="recent-posts">

    <div class="section-title">

        <h2><span>All Stories</span></h2>

    </div>

    <div class="row listrecent">

        {% for post in paginator.posts %}
        	{% if post.list == true %}
            	{% include postbox.html %}
            {% endif %}

        {% endfor %}

    </div>

</section>

<!-- Pagination
================================================== -->
<div class="bottompagination">
<div class="pointerup"><i class="fa fa-caret-up"></i></div>
<span class="navigation" role="navigation">
    {% include pagination.html %}
</span>
</div>