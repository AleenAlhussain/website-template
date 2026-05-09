<!doctype html>

<html data-lang="{$system['language']['code']}" {if $system['language']['dir'] == "RTL"} dir="RTL" {/if}>

<head>

    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="version" content="{$system['system_version']}">
	<meta name="mobile-web-app-capable" content="yes">
	{if $system['theme_mode_night']}
		<meta name="theme-color" content="#212121" id="night-mode-meta">
	{/if}

    <!-- Title -->
    <title>{$page_title|truncate:70}</title>
    <!-- Title -->

    <!-- Meta -->
    <meta name="description" content="{$page_description|truncate:300}">
    <meta name="keywords" content="{$system['system_keywords']}">
    <!-- Meta -->

    <!-- OG-Meta -->
    <meta property="og:title" content="{$page_title|truncate:70}" />
    <meta property="og:description" content="{$page_description|truncate:300}" />
    <meta property="og:site_name" content="{__($system['system_title'])}" />
    <meta property="og:image" content="{$page_image}" />
    <!-- OG-Meta -->

    <!-- Twitter-Meta -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="{$page_title|truncate:70}" />
    <meta name="twitter:description" content="{$page_description|truncate:300}" />
    <meta name="twitter:image" content="{$page_image}" />
    <!-- Twitter-Meta -->

    <!-- Favicon -->
    {if $system['system_favicon_default']}
        <link rel="shortcut icon" href="{$system['system_url']}/content/themes/{$system['theme']}/images/favicon.png" />
		<link rel="apple-touch-icon" href="{$system['system_url']}/content/themes/{$system['theme']}/images/favicon.png" />
    {elseif $system['system_favicon']}
        <link rel="shortcut icon" href="{$system['system_uploads']}/{$system['system_favicon']}" />
		<link rel="apple-touch-icon" href="{$system['system_uploads']}/{$system['system_favicon']}" />
    {/if}
    <!-- Favicon -->

    <!-- Fonts [Roboto|Font-Awesome] -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
	
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Fonts [Roboto|Font-Awesome] -->
    
    <!-- CSS -->
    {if $system['language']['dir'] == "LTR"}
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" type='text/css' href="{$system['system_url']}/content/themes/{$system['theme']}/css/style.min.css?v={$system['system_version']}">
    {else}
        <link rel="stylesheet" href="https://cdn.rtlcss.com/bootstrap/v4.5.3/css/bootstrap.min.css" integrity="sha384-JvExCACAZcHNJEc7156QaHXTnQL3hQBixvj5RV5buE7vgnNEzzskDtx9NQ4p6BJe" crossorigin="anonymous">
        <link rel="stylesheet" type='text/css' href="{$system['system_url']}/content/themes/{$system['theme']}/css/style.rtl.min.css?v={$system['system_version']}">
    {/if}
	
	{if !$user->_logged_in}
	{if $system['landing_page_template'] == "elengine"}
		{if $system['language']['dir'] == "LTR"}
			<link rel="stylesheet" type='text/css' href="{$system['system_url']}/content/themes/{$system['theme']}/css/elengine.css">
		{else}
			<link rel="stylesheet" type='text/css' href="{$system['system_url']}/content/themes/{$system['theme']}/css/elengine.rtl.css">
		{/if}
	{/if}
	{/if}
    <!-- CSS -->

    <!-- CSS Customized -->
    {include file='_head.css.tpl'}
    <!-- CSS Customized -->

    <!-- Header Custom JavaScript -->
    {if $system['custome_js_header']}
        <script>
            {html_entity_decode($system['custome_js_header'], ENT_QUOTES)}
        </script>
    {/if}
    <!-- Header Custom JavaScript -->
	
	<!-- PWA -->
    {if $system['pwa_enabled']}
      <link rel="manifest" href="{$system['system_url']}/manifest.php">
      <!-- register service worker -->
      <script>
        if ('serviceWorker' in navigator) {
          navigator.serviceWorker.register('/sw.js').then((registration) => {
            console.log('Service Worker registered with scope:', registration.scope);
          }).catch((error) => {
            console.log('Service Worker registration failed:', error);
          });
        }
      </script>
      <!-- register service worker -->
    {else}
      <!-- unregister service worker -->
      <script>
        if ('serviceWorker' in navigator) {
          navigator.serviceWorker.getRegistrations().then(function(registrations) {
            for (let registration of registrations) {
              registration.unregister();
            }
          });
        }
      </script>
      <!-- unregister service worker -->
    {/if}
    <!-- PWA -->
	
	<!-- AgeVerif Checker -->
    {if !$user->_is_admin && $system['age_restriction'] && $system['ageverif_enabled'] && $system['ageverif_api_key']}
      <script src="https://www.ageverif.com/checker.js?key={$system['ageverif_api_key']}"></script>
    {/if}
    <!-- AgeVerif Checker -->

</head>