<div class="row text-image-special">
    <% if $ImagePosition == 'Top' %>
        <div class="col-sm-12">
            <img src="$Image.Link">
        </div>
        <div class="col-sm-12">
            {$Content}
        </div>
    <% end_if %>
    <% if $ImagePosition == 'Left' %>
        <div class="col-sm-6 first image">
            <img src="$Image.Link">
        </div>
        <div class="col-sm-6 second text">
            {$Content}
        </div>
    <% end_if %>
    <% if $ImagePosition == 'Right' %>
        <div class="col-sm-6 first text">
            {$Content}
        </div>
        <div class="col-sm-6 second image">
            <img src="$Image.Link">
        </div>
    <% end_if %>
    <% if $ImagePosition == 'Bottom' %>
        <div class="col-sm-12">
            {$Content}
        </div>
        <div class="col-sm-12">
            <img src="$Image.Link">
        </div>
    <% end_if %>
</div>