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
	<div class="container">
	    <div class="row contact">
	            <div class="col-sm-12">
	                $Content
	            </div>
	            <div class="col-sm-6 first">
	            
		            <div class="address-text">
		              <p><strong>Physical Address:</strong><br>$SiteConfig.OurAddress</p>
		            </div>
			        <div class="phone-wrapper">
		              <div class="phone-icon"><img alt="phone icon" src="$ThemeDir/img/icon-phone-red.png" width="100"></div>
		              <div class="contact-text">
		                <p>Phone: <strong><a href="tel:$SiteConfig.Phone">$SiteConfig.Phone</a></strong></p>
		              </div>
		            </div>
		            <div class="phone-wrapper">
		              <div class="phone-icon"><img alt="phone icon" src="$ThemeDir/img/icon-fax-red.png" width="100"></div>
		              <div class="contact-text">
		                <p>Fax: <strong>$SiteConfig.Fax</strong></p>
		              </div>
		            </div>
		            <div class="phone-wrapper">
		              <div class="phone-icon"><img alt="phone icon" src="$ThemeDir/img/icon-email-red.png" width="100"></div>
		              <div class="contact-text">
		                <p><a href="mailto:$SiteConfig.Email"><strong>Email us today</strong></a></p>
		              </div>
		            </div>
		            <div class="address-text">
		              <p><strong>Postal Address:</strong><br>$SiteConfig.PostalAddress</p>
		            </div>
            
	            </div>
	            <div class="col-sm-6 second">
					<% control ContactForm %>
						$Form
						<div class="g-recaptcha" data-sitekey="6LeMjiIUAAAAAE3vkcyhwS0YZVb2mDVCwg0fgPF4"></div>
					<% end_control %>
	            </div>
	    </div>
	</div>
</div>

<% include Map %>

<% include CallToAction %>