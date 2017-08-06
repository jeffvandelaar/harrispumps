<% if $Pages %>
        <% loop $Pages %>
            <% if $Last %>
                <a href="$Link">$MenuTitle.XML</a>
            <% else %>
                <a href="$Link">$MenuTitle.XML</a> &gt;
            <% end_if %>
        <% end_loop %>
<% end_if %>