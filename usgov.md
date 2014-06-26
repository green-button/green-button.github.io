s---
layout: default
title: us.gov home
---

<section class="home home-title">
  <hgroup>
    <h1>Federal Goverment</h1>
    <img class="logo" src="{{ site.baseurl }}/assets/logo.png" alt="Green Button">
    <h2>Green Button </h2>
  </hgroup>
</section>

<section class="home home-about" id="#home-about">
  <div class="section-container">
    <div class="section-content">
      <h2 class="section-title">What is Green Button?</h2>
      <p class="lead">Green Button is a secure way to get your energy usage information electronically.</p>
      <ul class="audiences">
        <li>
          <div class="icon">
            <i class="fa fa-lightbulb-o"></i>
          </div>
          <h3>Learn</h3>
          Learn about how to use Green Button in your agency
        </li>
        <li>
          <div class="icon">
            <i class="fa fa-dashboard"></i>
          </div>
          <h3>Analyze</h3>
          Conduct virtual energy audits that can cut costs for building owners and speed up retrofitting.
        </li>
        <li>
          <div class="icon">
            <i class="fa fa-money"></i>
          </div>
          <h3>Save</h3>
          Optimize your energy usage with real data
        </li>
        <li>
          <div class="icon">
            <i class="fa fa-code"></i>
          </div>
          <h3>Build</h3>
          Create tools for businesses and consumers using Green Button data. Start with the <a href="{{ site.baseurl }}/developers">Developer Guide</a>
        </li>
      </ul>
    </div>
  </div>
</section>
<section class="home home-partners">
  <div class="section-container">
    <div class="section-content">
      <h2 class="section-title">Who's Supporting Green Button?</h2>
      <p class="lede">Today, more than 43 million households and businesses can use Green Button to access their own energy usage data from their electric utility, and a growing set of companies are offering products, services, and apps that use Green Button data.</p>
      <ul class="partner_list">
        {% for agency in site.data.agencies %}
        {% if agency.status == "implemented" %}
        {% if agency.featured %}
        <li><a href="{{ agency.url }}" target="_blank">{{ agency.name }}</a></li>
        {% endif %}
        {% endif %}
        {% endfor %}
      </ul>
      <ul class="partner_list below-fold">
        {% for agency in site.data.agencies %}
        {% if agency.status == "implemented" %}
        {% if agency.featured %}
        {% else %}
          <li><a href="{{ agency.url }}" target="_blank">{{ agency.name }}</a></li>
        {% endif %}
        {% endif %}
        {% endfor %}
      </ul>      
      <div class="lead">Future Commitments</div>
      <ul class="agency_list commitments">
        {% for agency in site.data.agencies %}
        {% if agency.status == "committed" %}
        {% if agency.featured %}
        <li><a href="{{ agency.url }}" target="_blank">{{ partner.name }}</a></li>
        {% endif %}
        {% endif %}
        {% endfor %}
      </ul>
      <ul class="partner_list commitments below-fold">
        {% for partner in site.data.agencies %}
        {% if partner.status == "committed" %}
        {% if partner.featured %}
        {% else %}
          <li><a href="{{ partner.url }}" target="_blank">{{ partner.name }}</a></li>
        {% endif %}
        {% endif %}
        {% endfor %}
      </ul>
      <div class="lead end-cta">Don't see your agency?<br><a
  class="buttonish"
  href=mailto:info@greenbuttondata.org?subject=[GOV]Getting%20started%20with%20Green%20Button&#038;body=Hi!%0A%0AI’d%20like%20to%20get%20started%20with%20Green%20Button.%20Could%20you%20send%20me%20more%20information?%0A%0AThanks,%0A%0A[Your%20name]%0A[Your%20organization]%0A[Your%20contact%20information]>Explore
Green Button Today</a></div>
      
    </div>
  </div>
</section>
