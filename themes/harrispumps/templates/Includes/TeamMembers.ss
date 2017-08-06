<% if $TeamMembers %>
    
    <div class="col-sm-12 teammembers">
    	<% loop $TeamMembers %>
		    <div class="team-4col-flex col-sm-3">
		    	<div class="team-heading"><p class="p-white"><strong>$Title<br>$Position</strong></p></div>
		    	<div class="team-member-img"><img src="$TeamMemberPhoto.URL" width="1000"></div>
		    	<div class="team-member-info-wrapper">$Bio</div>
		    </div>
		<% end_loop %>
	    <div style="clear:both;"></div>
	</div>
    
<% end_if %>