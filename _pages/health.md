---
layout: default
title: Health
permalink: /health
categories:
    values:
      - health
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
        <h2><span>COVID - 19 Reports</span></h2>
    </div>
    <div class="row">

    {% for post in site.posts %}

        {% if post.covid19 == true %}

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