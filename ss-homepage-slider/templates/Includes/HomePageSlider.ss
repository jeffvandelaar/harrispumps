<% if Slides %>

	<section class="slider hero-slider<% if AutoSlide %> autoslide<% end_if %>">
		
		<% loop Slides %>
		
			<div id="slide-{$Pos}" class="slide {$TextColor}-text $FirstLast<% if First %> current<% else %> hide<% end_if %>" style="background-image:radial-gradient(circle at 50% 50%, transparent, rgb(0, 0, 0)), url({$Image.Link});" data-slide="$Pos">
			
					<div class="slider-info-wrapper">
						<div class="main-container">
							<div class="slider-heading-text-bg">
						
								<% if Title %>
									<h2 class="slider-header-text">$Title</h2>
								<% end_if %>
							</div>
							
							<div class="slider-link-text-bg">
								
								<% if Text %>
									<p class="test">$Text</p>
								<% end_if %>
								
								<% if Link %>
									<a href="$Link" class="slider-link-text">
										<% if LinkText %>
											$LinkText
										<% else %>
											Read more
										<% end_if %>
									</a>
								<% end_if %>
							
							</div>
						</div>
					</div>
				
			</div>
			
		<% end_loop %>
		
		<% if Slides.Count > 1 %>

			<% if SliderNavType = 'PrevNext' %>
				<a class="fa fa-chevron-left slider-nav-arrow prev" href="javascript:void(0);" data-direction="prev"></a>
				<a class="fa fa-chevron-right slider-nav-arrow next" href="javascript:void(0);" data-direction="next"></a>
			<% else %>
		
				<nav class="slider-nav">
				
					<% loop Slides %>
						<a href="javascript:void(0);" class="$FirstLast<% if First %> current<% end_if %>" data-slide="$Pos"></a>
					<% end_loop %>
				
				</nav>

			<% end_if %>
			
		<% end_if %>
		
	</section>

<% end_if %>