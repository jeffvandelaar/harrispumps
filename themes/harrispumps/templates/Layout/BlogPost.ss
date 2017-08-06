<div class="hero-margin blogpost">
  <div class="hero-inside">
    <div class="content-center">
      <div class="main-container">
        <div class="slider-heading-text-bg">
          <div class="slider-header-text">$SubTitle</div>
        </div>
        <div class="slider-link-text-bg"><a class="hero-inside-link slider-link-text" href="$HeaderLinkURL">$HeaderLink</a></div>
      </div>
    </div>
    <% if $BlogHeaderImage %>
    	<img alt="old team at harris pumps" src="$BlogHeaderImage.URL" width="100%">
    <%end_if %>
  </div>
  <div class="hidden-hero-link-desktop">
  	<a class="hero-inside-link hero-link-block slider-link-text" href="$HeaderLinkURL">$HeaderLink</a>
  </div>
</div>
<div class="main">
	<div class="main-container">
		<div class="main-heading-wrapper"><h1 class="h1-text-center">$Title</h1></div>
		<div class="hr"></div>
		<div class="content-block content-block-bg content-block-center">
			<div class="content-block">
				<div class="row">
				
					<div class="col-xs-6">
						<div class="content-block">
							{$Content}
						</div>
						<div class="hr"></div>
							<div class="content-block">
								<a class="document-download-link w-clearfix w-inline-block" href="$Document.URL" target="_blank">
									<div class="icon-wrapper">
										<div class="fa fa-2x fa-file-pdf-o"></div>
									</div>
									<div class="document-download-text">
										<div class="text-block">Product documentation</div>
									</div>
								</a>
							</div>
						</div>
					
						<div class="col-xs-6">
							<div class="gallery-featured-img">
								<% include KBSlideshow %>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<% include Map %>

<% include CallToAction %>