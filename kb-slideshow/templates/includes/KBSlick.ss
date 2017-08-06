<%-- Demonstration of functionality, using slick (https://github.com/kenwheeler/slick) --%>

<%-- Get slick and jQuery from CDN --%>
<% require css(https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick.min.css) %>
<% require css(https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick-theme.min.css) %>
<% require javascript(https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js) %>
<% require javascript(https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.8/slick.min.js) %>

<%-- Initialize slick --%>
<script type="text/javascript">
$( document ).ready( function() {

    // Slick settings (just a couple)
    // Full list of settings can be found here: https://github.com/kenwheeler/slick/#settings
    var cfg1 = {

        slidesToShow: 1,
		slidesToScroll: 1,
		arrows: false,
		fade: true,
		asNavFor: '.kbslideshow2'

    };
    var cfg2 = {

        slidesToShow: 2,
		slidesToScroll: 2,
		asNavFor: '.kbslideshow1',
		centerMode: false,
		focusOnSelect: false,
		arrows: true, 
		dots: false,
		focusOnSelect: true

    };

    // Initialize
    $( '.kbslideshow1' ).slick( cfg1 );
    $( '.kbslideshow2' ).slick( cfg2 );

});
</script>