<div class="hero-margin">
  <div class="hero-inside">
    <div class="content-center">
      <div class="main-container">
        <div class="slider-heading-text-bg">
          <div class="slider-header-text">$Title</div>
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
	  <div class="row">
	    {$Content}
	    {$Form}
	  </div>
    <hr style="clear:both;">
	<div class="content-block content-block-bg content-block-center">
		<div class="row" style="clear:both;">
		    <div class="column">
		        <article class="productlist">
		            <% if $PaginatedList.Exists %>
		                <% loop $PaginatedList %>
		                    
		                    <div class="flex-3col col-sm-4 product">
								<div class="product-overview-wrapper">
									<a class="product-header-link w-inline-block" href="$Link">
										<div>$Title</div>
									</a>
									<div class="product-img-link-wrapper">
										<a class="product-img-link w-inline-block" href="$Link">
											<% loop $KBSlides %>
												<% if $First %>
													<img alt="$Title" src="{$KBImage}">
												<% else %>
												<% end_if %>
											<% end_loop %>
										</a>
									</div>
									<a class="product-intro-text-link w-inline-block" href="$Link">
										<p class="text-center">$Summary</p>
									</a>
								</div>
							</div>
							<% if Last %>
							<% else %>
								<% if MultipleOf(3) %>
									<hr>
								<% end_if %>
							<% end_if %>
							
							
						<% end_loop %>
		            <% else %>
		                <p><%t Blog.NoPosts "There are no posts" %></p>
		            <% end_if %>
		        </article>
		
		        $Form
		        $CommentsForm
		
		        <% with $PaginatedList %>
		            <% include Pagination %>
		        <% end_with %>
		    </div>
		    <% include BlogSideBar %>
		</div>
	</div>

  </div>

</div>

<% include Testimonials %>

<% include Map %>

<% include CallToAction %>