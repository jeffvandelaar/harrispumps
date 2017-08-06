<div class="row accordion-image">
    <% if $ImagePosition == 'Top' %>
        <div class="col-sm-12">
            <img src="$Image.Link">
        </div>
        <div class="col-sm-12">
			<% loop $Accordions %>
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="heading2$Pos">
			      <h4 class="panel-title">
			        <a role="button" data-toggle="collapse" data-parent="#accordion" href="/#collapse2$Pos" aria-expanded="false" aria-controls="collapse2$Pos" class="collapsed" >
			          $Title
			        </a>
			      </h4>
			    </div>
			    <div id="collapse2$Pos" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2$Pos" aria-expanded="false" class="height:0px">
			      <div class="panel-body">
			        <p>$AccordionText</p>
			      </div>
			    </div>
			  </div>
			<% end_loop %>
        </div>
    <% end_if %>
    <% if $ImagePosition == 'Left' %>
        <div class="col-sm-6 first">
            <img src="$Image.Link">
        </div>
        <div class="col-sm-6 second">
			<% loop $Accordions %>
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="heading2$Pos">
			      <h4 class="panel-title">
			        <a role="button" data-toggle="collapse" data-parent="#accordion" href="/#collapse2$Pos" aria-expanded="false" aria-controls="collapse2$Pos" class="collapsed" >
			          $Title
			        </a>
			      </h4>
			    </div>
			    <div id="collapse2$Pos" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2$Pos" aria-expanded="false" class="height:0px">
			      <div class="panel-body">
			        <p>$AccordionText</p>
			      </div>
			    </div>
			  </div>
			<% end_loop %>
        </div>
    <% end_if %>
    <% if $ImagePosition == 'Right' %>
        <div class="col-sm-6 first">
			<% loop $Accordions %>
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="heading2$Pos">
			      <h4 class="panel-title">
			        <a role="button" data-toggle="collapse" data-parent="#accordion" href="/#collapse2$Pos" aria-expanded="false" aria-controls="collapse2$Pos" class="collapsed" >
			          $Title
			        </a>
			      </h4>
			    </div>
			    <div id="collapse2$Pos" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2$Pos" aria-expanded="false" class="height:0px">
			      <div class="panel-body">
			        <p>$AccordionText</p>
			      </div>
			    </div>
			  </div>
			<% end_loop %>
        </div>
        <div class="col-sm-6 second">
            <img src="$Image.Link">
        </div>
    <% end_if %>
    <% if $ImagePosition == 'Bottom' %>
        <div class="col-sm-12">
			<% loop $Accordions %>
			  <div class="panel panel-default">
			    <div class="panel-heading" role="tab" id="heading2$Pos">
			      <h4 class="panel-title">
			        <a role="button" data-toggle="collapse" data-parent="#accordion" href="/#collapse2$Pos" aria-expanded="false" aria-controls="collapse2$Pos" class="collapsed" >
			          $Title
			        </a>
			      </h4>
			    </div>
			    <div id="collapse2$Pos" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading2$Pos" aria-expanded="false" class="height:0px">
			      <div class="panel-body">
			        <p>$AccordionText</p>
			      </div>
			    </div>
			  </div>
			<% end_loop %>
        </div>
        <div class="col-sm-12">
            <img src="$Image.Link">
        </div>
    <% end_if %>
</div>