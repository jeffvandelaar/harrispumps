<% if $KBSlides %>
    <div class="kbslideshow1">

    <% loop $KBSlides %>
        <div class="kbslide">

        <% if $KBImage %>
            <img src="$KBImage" alt="" />
        <% end_if %> <%-- / $KBImage --%>

        </div>
    <% end_loop %> <%-- / $KBSlides --%>

</div>
<div class="kbslideshow2 gallery-slider">

    <% loop $KBSlides %>
        <div class="kbslide">

        <% if $KBImage %>
            <img src="$KBImage" alt="" />
        <% end_if %> <%-- / $KBImage --%>

        </div>
    <% end_loop %> <%-- / $KBSlides --%>

</div>

<% include KBSlick %>

<% end_if %> <%-- / $KBSlides --%>