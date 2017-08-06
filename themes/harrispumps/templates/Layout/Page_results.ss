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
</div>

<div class="main">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
					<% if $Query %>
					<h1>You searched for "$Query"</h1>
					<hr>
						<p>Showing $Results.FirstItem - $Results.LastItem  of $Results.getTotalItems results</p>
					<% end_if %>
			</div>
		</div>
	</div>
</div>

<div class="main white">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
					<% if $Results %>
						<% loop $Results %>
							<% include SearchSummary %>
						<% end_loop %>
					<% else %>
						<h4>Sorry, your search query did not return any results.</h4>
					<% end_if %>
		
					<% with $Results %>
						<% include Pagination %>
					<% end_with %>
			</div>
		</div>
	</div>
</div>

<% include Testimonials %>

<% include CallToAction %>