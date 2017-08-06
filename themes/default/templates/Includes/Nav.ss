<div class="nav-menu">
    <ul class="nav-menu-inner">
        <% loop $Menu(1) %>
            <li>
                <% if not $Children || $HideChildrenFromNavigation  %>
                    <a href="$Link" title="$Title.XML" {$MenuTarget}>$MenuTitle.XML</a>
                <% else %>
                    <a class="menu-has-sub" title="$Title.XML">
                        $MenuTitle.XML <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="sub-dropdown dropdown">
                        <li>
                            <a href="$Link" title="$Title.XML" {$MenuTarget}>$MenuTitle.XML</a>
                        </li>
                        <% loop $Children %>
                            <li>
                                <a href="$Link" title="$Title.XML" {$MenuTarget}>
                                    $MenuTitle.XML
                                </a>
                            </li>
                        <% end_loop %>
                    </ul>
                <% end_if %>
            </li>
        <% end_loop %>
    </ul>
</div>