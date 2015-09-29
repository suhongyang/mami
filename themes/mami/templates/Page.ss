<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="$ContentLocale"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang="$ContentLocale"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang="$ContentLocale"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="$ContentLocale"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
		<% base_tag %>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		$MetaTags(false)
        <meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="shortcut icon" href="{$BaseHref}favicon.ico"><!-- Remember to place favicon.ico and apple-touch-icon.png in the root directory -->
		<link rel="apple-touch-icon" href="{$BaseHref}apple-touch-icon.png">

        <script src="{$ThemeDir}/js/vendor/modernizr-2.6.2.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		<%-- <a href="#main-content" class="visuallyhidden">Skip to main content</a> --%>

        <% include Header %>

        $Layout

        <% include Footer %>

		<% require javascript('framework/thirdparty/jquery/jquery.js') %>
        <script src="{$ThemeDir}/js/plugins.js"></script>
        <script src="{$ThemeDir}/js/main.js"></script>

    </body>
</html>
