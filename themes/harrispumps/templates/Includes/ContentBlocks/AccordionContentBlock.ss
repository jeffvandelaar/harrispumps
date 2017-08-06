<div class="row accordion">
<% loop $Accordions %>
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="heading$Pos">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="/#collapse$Pos" aria-expanded="false" aria-controls="collapse$Pos" class="collapsed" >
          $Title
        </a>
      </h4>
    </div>
    <div id="collapse$Pos" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading$Pos" aria-expanded="false" class="height:0px">
      <div class="panel-body">
        <p>$AccordionText</p>
      </div>
    </div>
  </div>
<% end_loop %>
</div>