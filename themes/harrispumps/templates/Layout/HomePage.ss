<% base_tag %>
<div class="hero-margin">
	<div class="gateways">
	    <div class="gateway-wrapper">
	      <div class="row">
	      
		  	<% loop $Gateways %>
		        <div class="gateway-col-$Pos col-xs-3">
			        <a class="gateway-link w-inline-block" data-ix="gateway-link-popup-$Pos" href="$GatewayLinkURL">
			          <div class="gateway-img" style="background-image: url($GatewayPhoto.URL);"></div>
			          <div class="gateway-header-text">
			            <div class="gateway-heading-bg">
			              <div class="gateway-heading-text">$Title</div>
			            </div>
			          </div>
			          <div class="overlay-text-$Pos" data-ix="gateway-popup" style="opacity: 0; transform: translateX(0px) translateY(100%) translateZ(0px);">
			            <p>$GatewayIntroText</p>
			          </div>
			        </a>
		        </div>
			<% end_loop %>
			
	      </div>
	    </div>
	</div>
</div>

<div class="mobile-gateway-links">
	<% loop $Gateways %>
		<a class="mobile-gateway-link inline-block" href="$GatewayLinkURL">
			<div class="gateway-heading-text">$Title</div>
		</a>
	<% end_loop %>
</div>


<div class="main">
  <div class="main-container">
        {$Content}
    </div>
</div>

<% include CallToAction %>

<% include Map %>