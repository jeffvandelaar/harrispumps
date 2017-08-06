<% if $Filename %>
    <div class="row">
        <div class="col-sm-12">
            <h5>
                <a href="$Link" class="h5-link">
                    <span class="text-uppercase">[{$Extension}]</span> {$Title} ({$Size})
                </a>
            </h5>
        </div>
        <div class="col-sm-12">
            <p>File Type: <span class="text-uppercase">{$Extension}</span></p>

            <p>
                <a href="$Link" class="h5-link">
                    {$BaseHref}{$Filename}
                </a>
            </p>
        </div>
    </div>
<% else %>
    <div class="row">
        <div class="col-sm-12">
            <h5>
                <a href="$Link" class="h5-link">
                    <% if $MenuTitle %>$MenuTitle
                    <% else %>$Title<% end_if %>
                </a>
            </h5>
        </div>
        <div class="col-sm-12">
            <p>$Content.ContextSummary(250)</p>

            <p>
                $Breadcrumbs
            </p>
        </div>
    </div>
<% end_if %>
<hr>