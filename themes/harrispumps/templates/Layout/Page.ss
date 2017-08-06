<div class="hero-margin">
  <div class="hero-inside">
    <div class="content-center">
      <div class="main-container">
        <div class="slider-heading-text-bg">
          <div class="slider-header-text">
	          <% if $SubTitle %> 
	          	$SubTitle
	          <% else %>
	          	$Title
	          <% end_if %>
          </div>
        </div>
        <div class="slider-link-text-bg"><a class="hero-inside-link slider-link-text" href="$HeaderLinkURL">$HeaderLink</a></div>
      </div>
    </div>
    <% if $HeaderImage %>
    	<img alt="old team at harris pumps" src="$HeaderImage.URL" width="100%">
    <%end_if %>
  </div>
  <div class="hidden-hero-link-desktop">
  	<a class="hero-inside-link hero-link-block slider-link-text" href="$HeaderLinkURL">$HeaderLink</a>
  </div>
</div>
<div class="main">
  <div class="main-container">
    {$Content}
    {$Form}
  </div>

<% include TeamMembers %>

</div>

<% include Testimonials %>

<% include CallToAction %>