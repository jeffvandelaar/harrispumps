<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %>&nbsp;|&nbsp;$SiteConfig.Title</title>
    $MetaTags(false)
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone=no">

    <link rel="shortcut icon" href="$ThemeDir/img/favicon.ico" />

    $SiteConfig.CustomHeaderOutput.RAW
</head>
<body>
	<% base_tag %>
    <% if $SiteConfig.ShowResponsiveOutput %>
    <div id="responsive"><div></div></div>
    <% end_if %>

    <% include Header %>
    $Layout
    <% include Footer %>

    $SiteConfig.CustomFooterOutput.RAW
</body>
</html>
