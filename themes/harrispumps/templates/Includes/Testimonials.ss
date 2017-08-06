<% if $Testimonials %>
    <% loop $Testimonials %>
		<div class="testimonial-greyscale" style="background-image: url({$Image.URL});">
		  <div class="content-center">
		    <div class="main-container">
		      <div class="inside-heading-text-bg">
		        <div class="main-copy">
		          <div class="blockquote-bg blockquote-bg-blk">
		            <blockquote class="blockquote blockquote-red">{$Testimonial}
		              <span class="blockquote-footer">- {$Title}, <a href="{$WebsiteURL}" target="_blank" class="blockquote-link">{$Company}</a></span></blockquote>
		          </div>
		        </div>
		      </div>
		    </div>
		  </div>
		</div>
    <% end_loop %>
<% end_if %>