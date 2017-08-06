<div class="navbar-bg"></div>
      <div class="navbar-wrapper">
	  
	  <a class="brand-link w-inline-block w--current" href="$BaseHref">
	  	<img alt="harris pumps logo" src="assets/Logos/Harris-Pumps-Logos/logo-harris-pumps-orig.png">
	  </a>
	  
    <div class="menu-wrapper">
    
      <div class="mobile-search w-clearfix">
      	<a class="search-link search-link-dropdown w-inline-block" data-ix="show-and-hide-search" href="">
      		<img src="$ThemeDir/img/icon-search-red.png" width="200">
      	</a>
      </div>
      
      <div class="search-wrapper w-clearfix">
      
		<a class="search-link w-inline-block" href="" type="submit" >
			<img src="$ThemeDir/img/icon-search-red.png" width="200">
		</a>
      	
        <div class="form-wrapper form-wrapper-search form">
	        <form action="/search/SearchForm/" method="get" enctype="application/x-www-form-urlencoded" class="inline-search"
	      role="search">
			    <div class="container">
			        <input class="text-field text-field-search input" name="Search" type="search" placeholder="Search">
			    </div>		
			</form>
		</div>      	
        
      </div>
      
      <a class="menu-btn menu-btn-mobile w-inline-block" data-ix="show-and-hide">
      	<img src="$ThemeDir/img/icon-burger-menu-white.png" width="50">
      </a>
      
      <div class="search-form-dropdown">
        <div class="search-form-wrapper" data-ix="display-none-on-load" style="display: none;">
          <div class="form-wrapper form-wrapper-search w-form">
          </div>
        </div>
      </div>
      
      <div class="hidden-navbar" data-ix="display-none-on-load" style="display: none;">
      
      	<a class="navbar-link-dropdown w-clearfix w-inline-block" data-ix="show-and-hide-1" href="#">
	        <div class="dropdown-icon">
	          <div class="fa fa-angle-down fa-lg"></div>
	        </div>
	        <div>Who are we</div>
        </a>
        <div class="hidden-dropdown-1" data-ix="display-none-on-load" style="display: none;">
        	<% if $CustomMenu(whoarewe) %>
	          <% loop $CustomMenu(whoarewe) %>
            	<a class="navbar-link w-inline-block" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
        </div>
        
        <a class="navbar-link-dropdown w-clearfix w-inline-block" data-ix="show-and-hide-2" href="#">
	        <div class="dropdown-icon">
	          <div class="fa fa-angle-down fa-lg"></div>
	        </div>
	        <div>What we do</div>
        </a>
        <div class="hidden-dropdown-2" data-ix="display-none-on-load" style="display: none;">
        	<% if $CustomMenu(whatwedo) %>
	          <% loop $CustomMenu(whatwedo) %>
            	<a class="navbar-link w-inline-block" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
        </div>
        
        <a class="navbar-link-dropdown w-clearfix w-inline-block" data-ix="show-and-hide-3" href="#">
	        <div class="dropdown-icon">
	          <div class="fa fa-angle-down fa-lg"></div>
	        </div>
	        <div>Products we work with</div>
        </a>
        <div class="hidden-dropdown-3" data-ix="display-none-on-load" style="display: none;">
        	<% if $CustomMenu(productsweworkwith) %>
	          <% loop $CustomMenu(productsweworkwith) %>
            	<a class="navbar-link w-inline-block" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
        </div>
        
        <a class="navbar-link-dropdown w-clearfix w-inline-block" data-ix="show-and-hide-4" href="#">
	        <div class="dropdown-icon">
	          <div class="fa fa-angle-down fa-lg"></div>
	        </div>
	        <div>Who we help</div>
        </a>
        <div class="hidden-dropdown-4" data-ix="display-none-on-load" style="display: none;">
        	<% if $CustomMenu(whowehelp) %>
	          <% loop $CustomMenu(whowehelp) %>
            	<a class="navbar-link w-inline-block" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
        </div>
        
        <a class="navbar-link-dropdown w-clearfix w-inline-block" data-ix="show-and-hide-5" href="#">
	        <div class="dropdown-icon">
	          <div class="fa fa-angle-down fa-lg"></div>
	        </div>
	        <div>Problems we solve</div>
        </a>
        <div class="hidden-dropdown-5" data-ix="display-none-on-load" style="display: none;">
        	<% if $CustomMenu(problemswesolve) %>
	          <% loop $CustomMenu(problemswesolve) %>
            	<a class="navbar-link w-inline-block" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
        </div>
        
        <a class="navbar-link-dropdown w-clearfix w-inline-block" data-ix="show-and-hide-6" href="#">
	        <div class="dropdown-icon">
	          <div class="fa fa-angle-down fa-lg"></div>
	        </div>
	        <div>Contact</div>
        </a>
        <div class="hidden-dropdown-6" data-ix="display-none-on-load" style="display: none;">
        	<% if $CustomMenu(contact) %>
	          <% loop $CustomMenu(contact) %>
            	<a class="navbar-link w-inline-block" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
        </div>
        
      </div>
        
      <a class="burger-menu w-inline-block" data-ix="show-and-hide-menu">
      	<img src="$ThemeDir/img/icon-burger-menu-white.png" width="50">
      </a>
    </div>
    
    <div class="hidden-menu-desktop" data-ix="display-none-on-load" style="display: none;">
      <div class="burger-full-menu">
        <div class="w-row">
          <div class="col-xs-2">
            <div class="menu-heading-bg">
              <h4 class="h4-white">Who are we:</h4>
            </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-heading-bg">
              <h4 class="h4-white">What we do:</h4>
            </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-heading-bg">
              <h4 class="h4-white">Products we work with:</h4>
            </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-heading-bg">
              <h4 class="h4-white">Who we help:</h4>
            </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-heading-bg">
              <h4 class="h4-white">Problems we solve:</h4>
            </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-heading-bg">
              <h4 class="h4-white">Contact:</h4>
            </div>
          </div>
        </div>
        <div class="w-row">
          <div class="col-xs-2">
            <div class="menu-links">
            
	        <% if $CustomMenu(whoarewe) %>
	          <% loop $CustomMenu(whoarewe) %>
            	<a class="menu-link" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
	        
            </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-links">
            
	        <% if $CustomMenu(whatwedo) %>
	          <% loop $CustomMenu(whatwedo) %>
            	<a class="menu-link" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
	        
	        </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-links">
            
	        <% if $CustomMenu(productsweworkwith) %>
	          <% loop $CustomMenu(productsweworkwith) %>
            	<a class="menu-link" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
	        
	        </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-links">
            
	        <% if $CustomMenu(whowwehelp) %>
	          <% loop $CustomMenu(whowehelp) %>
            	<a class="menu-link" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
	        
	        </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-links">
            
	        <% if $CustomMenu(problemswesolve) %>
	          <% loop $CustomMenu(problemswesolve) %>
            	<a class="menu-link" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
	        
	        </div>
          </div>
          <div class="col-xs-2">
            <div class="menu-links">
            
	        <% if $CustomMenu(contact) %>
	          <% loop $CustomMenu(contact) %>
            	<a class="menu-link" href="$Link">$MenuTitle</a>
			  <% end_loop %>
	        <% end_if %>
	        
	        </div>
          </div>
        </div>
      </div>
    </div>
    
    
  </div>