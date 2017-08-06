<% control Page(home) %>
	<% if $Latitude && $Longitude %>
	        <div id="map" class="map"></div>
	<% end_if %>
<% end_control %>

<% control Page(home) %>
	<% if $Latitude && $Longitude %>
	    <script type="text/javascript">
	    
	        var map;
	        $(document).ready(function () {
	            map = new GMaps({
	                el         : '#map',
	                lat        : '{$Latitude}',
	                lng        : '{$Longitude}',
	                zoom       : parseInt('{$MapZoom}'),
	                mapType    : '{$MapType}',
	                scrollwheel: false,
	                styles: [{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#d3d3d3"}]},{"featureType":"transit","stylers":[{"color":"#808080"},{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"visibility":"on"},{"color":"#b3b3b3"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"weight":1.8}]},{"featureType":"road.local","elementType":"geometry.stroke","stylers":[{"color":"#d7d7d7"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ebebeb"}]},{"featureType":"administrative","elementType":"geometry","stylers":[{"color":"#a7a7a7"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"landscape","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#efefef"}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#696969"}]},{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"visibility":"on"},{"color":"#737373"}]},{"featureType":"poi","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"color":"#d6d6d6"}]},{"featureType":"road","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"color":"#dadada"}]}]
	            });
	            map.addMarker({
	                lat       : '{$Latitude}',
	                lng       : '{$Longitude}',
	                title     : '{$MarkerTitle}',
	                infoWindow: {
	                    content: '{$MarkerContent.JS}'
	                }
	            });
	            
	        });

	    </script>
	<% end_if %>
<% end_control %>