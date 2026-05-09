{if !$user->_logged_in}
	<body data-hash-tok="{$session_hash['token']}" data-hash-pos="{$session_hash['position']}" {if $system['theme_mode_night']}data-bs-theme="dark" {/if} class="{if $system['theme_mode_night']}night-mode{/if} visitor n_chat {if $page == 'index' && !$system['newsfeed_public']}index-body{/if}" {if $page == 'profile' && $system['system_profile_background_enabled'] && $profile['user_profile_background']}style="background: url({$profile['user_profile_background']}) fixed !important; background-size: 100% auto;" {/if}>
{else}
    <body data-hash-tok="{$session_hash['token']}" data-hash-pos="{$session_hash['position']}" data-chat-enabled="{$user->_data['user_chat_enabled']}" {if $system['theme_mode_night']}data-bs-theme="dark" {/if} class="{if $system['theme_mode_night']}night-mode{/if} {if !$system['chat_enabled'] || $user->_data['user_privacy_chat'] == "me"}n_chat{/if}{if $system['activation_enabled'] && !$system['activation_required'] && !$user->_data['user_activated']} n_activated{/if}{if !$system['system_live']} n_live{/if}" {if $page == 'profile' && $system['system_profile_background_enabled'] && $profile['user_profile_background']}style="background: url({$profile['user_profile_background']}) fixed !important; background-size: 100% auto;"{/if} {if $url}onload="initialize_scraper()" {/if}>
{/if}
    
    <!-- main wrapper -->
    <div class="main-wrapper">
		{if $user->_logged_in && $system['activation_enabled'] && !$system['activation_required'] && !$user->_data['user_activated']}
            <!-- top-bar -->
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-7 d-none d-sm-block">
                            {if $system['activation_type'] == "email"}
                                {__("Please go to")} <span class="text-primary">{$user->_data['user_email']}</span> {__("to complete the activation process")}.
                            {else}
                                {__("Please check the SMS on your phone")} <strong>{$user->_data['user_phone']}</strong> {__("to complete the activation process")}.
                            {/if}
                        </div>
                        <div class="col-sm-5">
                            {if $system['activation_type'] == "email"}
                                <span class="text-link" data-toggle="modal" data-url="core/activation_email_resend.php">
                                    {__("Resend Verification Email")}
                                </span>
                                 - 
                                <span class="text-link" data-toggle="modal" data-url="#activation-email-reset">
                                    {__("Change Email")}
                                </span>
                            {else}
                                <span class="btn btn-info btn-sm mr10" data-toggle="modal" data-url="#activation-phone">{__("Enter Code")}</span>
                                {if $user->_data['user_phone']}
                                    <span class="text-link" data-toggle="modal" data-url="core/activation_phone_resend.php">
                                        {__("Resend SMS")}
                                    </span>
                                     - 
                                {/if}
                                <span class="text-link" data-toggle="modal" data-url="#activation-phone-reset">
                                    {__("Change Phone Number")}
                                </span>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
            <!-- top-bar -->
        {/if}

        {if !$system['system_live']}
            <!-- top-bar alert-->
            <div class="top-bar danger">
                <div class="container">
                    <i class="fa fa-exclamation-triangle fa-lg pr5"></i>
                    <span class="d-none d-sm-inline">{__("The system has been shut down")}.</span>
                    <span>{__("Turn it on from")}</span> <a href="{$system['system_url']}/admincp/settings">{__("Admin Panel")}</a>
                </div>
            </div>
            <!-- top-bar alert-->
        {/if}
		
		{if $user->_login_as}
			<!-- bottom-bar alert-->
			<div class="position-fixed bottom-bar">
				<div class="logged-as-container">
					<i class="fa fa-exclamation-triangle fa-lg pr5"></i>
					<span>{__("You are currently logged in as")} <a href="{$system['system_url']}/{$user->_data['user_name']}">{$user->_data['user_fullname']}</a></span>
					<button class="btn btn-sm btn-warning ml20 btn-mat js_login-as" data-handle="revoke">
						<i class="fa-solid fa-arrow-rotate-left mr5"></i>{__("Switch Back")}
					</button>
				</div>
			</div>
			<!-- bottom-bar alert-->
		{/if}
		
		{if !$user->_logged_in && !$system['newsfeed_public'] && $page == "index"}
		{else}
        <!-- main-header -->
        <div class="main-header">
			<nav class="navbar ele_navbar_top">
				<div class="container-fluid">
					<div class="valign ele_header">
						<button type="button" class="ele_toggle_sidebar" onclick="javascript:$('body').toggleClass('side_open');"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M4 18h16c.55 0 1-.45 1-1s-.45-1-1-1H4c-.55 0-1 .45-1 1s.45 1 1 1zm0-5h16c.55 0 1-.45 1-1s-.45-1-1-1H4c-.55 0-1 .45-1 1s.45 1 1 1zM3 7c0 .55.45 1 1 1h16c.55 0 1-.45 1-1s-.45-1-1-1H4c-.55 0-1 .45-1 1z"></path></svg></button>
						
						<a class="logo-wrapper" href="{$system['system_url']}">
							{if $system['system_logo']}
								<img class="logo-light ele_logo_pc" src="{$system['system_uploads']}/{$system['system_logo']}" alt="{__($system['system_title'])}">
								{if !$system['system_logo_dark']}
								<img class="logo-dark ele_logo_pc" src="{$system['system_uploads']}/{$system['system_logo']}" alt="{__($system['system_title'])}">
								{else}
								<img class="logo-dark ele_logo_pc" src="{$system['system_uploads']}/{$system['system_logo_dark']}" alt="{$system['system_title']}">
								{/if}
								
								{if $system['system_favicon_default']}
									<img class="ele_logo_mobi d-block d-md-none" src="{$system['system_url']}/content/themes/{$system['theme']}/images/favicon.png" alt="{__($system['system_title'])}"/>
								{elseif $system['system_favicon']}
									<img class="ele_logo_mobi d-block d-md-none" src="{$system['system_uploads']}/{$system['system_favicon']}" alt="{__($system['system_title'])}"/>
								{/if}
							{else}
								{__($system['system_title'])}
							{/if}
						</a>
						
						{if $user->_logged_in || (!$user->_logged_in && $system['system_public']) }
							{include file='_header.search.tpl'}
						{/if}
					</div>
				</div>
				<div class="ele_header_shadow"></div>
			</nav>
			<div class="valign ele_navbar_top_right {if !$user->_logged_in}flex-end{/if}">
				<div class="dropdown hide_botm_menu_home">
					<a href="{$system['system_url']}" type="button" class="ele_hdr_droptoggle">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M10.0693 2.81986L3.13929 8.36985C2.35929 8.98985 1.85929 10.2999 2.02929 11.2799L3.35929 19.2398C3.59929 20.6598 4.95928 21.8099 6.39928 21.8099H17.5993C19.0293 21.8099 20.3993 20.6498 20.6393 19.2398L21.9693 11.2799C22.1293 10.2999 21.6293 8.98985 20.8593 8.36985L13.9293 2.82984C12.8593 1.96984 11.1293 1.96986 10.0693 2.81986Z" fill="currentColor"></path><path d="M12 15.5C13.3807 15.5 14.5 14.3807 14.5 13C14.5 11.6193 13.3807 10.5 12 10.5C10.6193 10.5 9.5 11.6193 9.5 13C9.5 14.3807 10.6193 15.5 12 15.5Z" fill="currentColor"></path></svg>
					</a>
				</div>
				
				{if $system['reels_enabled']}
					<div class="dropdown hide_botm_menu_home">
						<a href="{$system['system_url']}/reels" type="button" class="ele_hdr_droptoggle">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.32" d="M1.25 6.25V14.75C1.25 17.5503 1.25 18.9504 1.79497 20.02C2.27433 20.9608 3.03924 21.7257 3.98005 22.205C5.04961 22.75 6.44974 22.75 9.25 22.75H14.75C17.5503 22.75 18.9504 22.75 20.02 22.205C20.9608 21.7257 21.7257 20.9608 22.205 20.02C22.75 18.9504 22.75 17.5503 22.75 14.75V6.25H1.25Z" fill="currentColor"/><path fill-rule="evenodd" clip-rule="evenodd" d="M10.4863 1.25011H6.54545C3.62086 1.25011 1.25 3.62097 1.25 6.54557C1.25 7.21082 1.78929 7.75011 2.45455 7.75011H8H13.5H19H21.5455C22.2107 7.75011 22.75 7.21082 22.75 6.54557C22.75 3.62097 20.3791 1.25011 17.4545 1.25011H10.5123C10.5036 1.24996 10.495 1.24996 10.4863 1.25011ZM10.0754 2.75011L12.1754 6.25011H8.4413L6.49703 2.75042C6.51314 2.75021 6.52929 2.75011 6.54545 2.75011H10.0754ZM4.97047 3.09131C3.74529 3.65083 2.86967 4.84302 2.76133 6.25011H6.72536L4.97047 3.09131ZM13.9246 6.25011L11.8246 2.75011H15.5927C15.6092 2.79657 15.6305 2.84208 15.6569 2.88599L17.6754 6.25011H13.9246ZM19.4246 6.25011H21.2387C21.0879 4.29202 19.4513 2.75011 17.4545 2.75011H17.3246L19.4246 6.25011ZM5.75 17.0001C5.75 16.3098 6.30964 15.7501 7 15.7501C7.69036 15.7501 8.25 16.3098 8.25 17.0001C8.25 17.6905 7.69036 18.2501 7 18.2501C6.30964 18.2501 5.75 17.6905 5.75 17.0001Z" fill="currentColor"/></svg>
						</a>
					</div>
				{/if}
				
				{if $user->_logged_in}
					<!-- friend requests -->
					{if $system['friends_enabled']}
						{include file='_header.friend_requests.tpl'}
					{/if}
					<!-- friend requests -->

					<!-- messages -->
					{if $system['chat_enabled'] && $user->_data['user_privacy_chat'] != "me"}
						{include file='_header.messages.tpl'}
					{/if}
					<!-- messages -->

					<!-- notifications -->
					{include file='_header.notifications.tpl'}
					<!-- notifications -->
				
					<!-- user-menu -->
					{include file='_user_menu.tpl'}
					<!-- user-menu -->
				{else}
					<div class="user-menu dropdown ele_main_usr_ddmenu">
						<button class="ele_hdr_droptoggle ele_hdr_user_droptoggle ele_hdr_nouser_droptoggle" data-toggle="dropdown" data-display="static" role="button" aria-expanded="false">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="currentColor" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm0 14.2c-2.5 0-4.71-1.28-6-3.22.03-1.99 4-3.08 6-3.08 1.99 0 5.97 1.09 6 3.08-1.29 1.94-3.5 3.22-6 3.22z"/></svg> <span>{__("Join")}</span>
						</button>
						<ul class="dropdown-menu dropdown-menu-right js_dropdown-keepopen ele_hdr_user_dropdown ele_scroll">
							<h2 class="ele_page_title m5 ele_mobi_hdr_not_title">{__("Join")}</h2>
							<a class="dropdown-item" href="{$system['system_url']}/signin">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M12,3c-4.625,0-8.442,3.507-8.941,8.001H10v-3l5,4l-5,4v-3H3.06C3.56,17.494,7.376,21,12,21c4.963,0,9-4.037,9-9 S16.963,3,12,3z" /></svg> {__("Sign In")}
							</a>
							{if $system['registration_enabled']}
								<a class="dropdown-item" href="{$system['system_url']}/signup">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M4.5 8.552c0 1.995 1.505 3.5 3.5 3.5s3.5-1.505 3.5-3.5-1.505-3.5-3.5-3.5S4.5 6.557 4.5 8.552zM19 8L17 8 17 11 14 11 14 13 17 13 17 16 19 16 19 13 22 13 22 11 19 11zM4 19h8 1 1v-1c0-2.757-2.243-5-5-5H7c-2.757 0-5 2.243-5 5v1h1H4z" /></svg> {__("Sign Up")}
								</a>
							{/if}
							{if ($system['themes'] && count($system['themes']) > 1) || $system['system_theme_mode_select']}
								<hr class="style-two">
							{/if}
							{if $system['themes'] && count($system['themes']) > 1}
								<div class="dropdown-item pointer" data-toggle="modal" data-url="#theme-switcher">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M4.25 3.98932C4.25 2.47644 5.47644 1.25 6.98932 1.25H9H13H17.0107C18.5236 1.25 19.75 2.47644 19.75 3.98932V10V10.9203C19.75 12.474 18.9348 13.9137 17.6026 14.7131L15.9609 15.6981C15.2748 16.1098 14.9102 16.8992 15.0418 17.6885L15.2466 18.9175C15.581 20.9237 14.0339 22.75 12 22.75C9.96613 22.75 8.41903 20.9237 8.7534 18.9175L8.95825 17.6885C9.08979 16.8992 8.72525 16.1098 8.03913 15.6981L6.39743 14.7131C5.06517 13.9137 4.25 12.474 4.25 10.9203V10V3.98932ZM18.25 9.25H5.75V3.98932C5.75 3.30486 6.30486 2.75 6.98932 2.75H8.25V6C8.25 6.41421 8.58579 6.75 9 6.75C9.41421 6.75 9.75 6.41421 9.75 6V2.75H12.25V4C12.25 4.41421 12.5858 4.75 13 4.75C13.4142 4.75 13.75 4.41421 13.75 4V2.75H17.0107C17.6951 2.75 18.25 3.30486 18.25 3.98932V9.25Z" fill="currentColor"></path></svg> {__("Theme Switcher")}
								</div>
							{/if}
							{if $system['system_theme_mode_select']}
								{if $system['theme_mode_night']}
									<div class="dropdown-item pointer js_theme-mode" data-mode="day">
										<i class="js_theme-mode-icon fas fa-sun"></i> <span class="js_theme-mode-text">{__("Day Mode")}</span>
									</div>
								{else}
									<div class="dropdown-item pointer js_theme-mode" data-mode="night">
										<i class="js_theme-mode-icon fas fa-moon"></i> <span class="js_theme-mode-text">{__("Night Mode")}</span>
									</div>
								{/if}
							{/if}
							<div class="mini-footer ele_menu_foot">
								<div class="valign ele_footer_cright">
									&copy; {'Y'|date} {$system['system_title']}
									<button type="button" class="btn ele_mobi_langs" onclick="$('.ele_main_usr_ddmenu').addClass('open-lang');"><svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24"><path fill="currentColor" d="M17.9,17.39C17.64,16.59 16.89,16 16,16H15V13A1,1 0 0,0 14,12H8V10H10A1,1 0 0,0 11,9V7H13A2,2 0 0,0 15,5V4.59C17.93,5.77 20,8.64 20,12C20,14.08 19.2,15.97 17.9,17.39M11,19.93C7.05,19.44 4,16.08 4,12C4,11.38 4.08,10.78 4.21,10.21L9,15V16A2,2 0 0,0 11,18M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z"></path></svg> {$system['language']['title']}</button>
								</div>
								<div class="ele_footer_links">
									{if $static_pages}
										{foreach $static_pages as $static_page}
											{if $static_page['page_in_footer']}
											<a href="{$static_page['url']}">{__($static_page['page_title'])}</a> • 
											{/if}
										{/foreach}
									{/if}
									{if $system['contact_enabled']}
										<a href="{$system['system_url']}/contacts">{__("Contact Us")}</a> • 
									{/if}
									{if $system['support_center_enabled']}
										<a href="{$system['system_url']}/support">{__("Support Center")}</a> • 
									{/if}
									{if $system['directory_enabled']}
										<a href="{$system['system_url']}/directory">{__("Directory")}</a>
									{/if}
								</div>
							</div>
						</ul>
						<ul class="dropdown-menu js_dropdown-keepopen ele_scroll ele_mobi_langs_menu dropdown-menu-right">
							<button type="button" class="btn" onclick="$('.ele_main_usr_ddmenu').removeClass('open-lang');"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 24 24"><path fill="currentColor" d="M20 11H6.83l2.88-2.88c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L3.71 11.3c-.39.39-.39 1.02 0 1.41L8.3 17.3c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L6.83 13H20c.55 0 1-.45 1-1s-.45-1-1-1z" /></svg></button>
							<h3>{__("Language")}</h3>
							{foreach $system['languages'] as $language}
								<a class="dropdown-item" href="?lang={$language['code']}">
									<img width="16" height="16" class="mr10" src="{$language['flag']}">{$language['title']}
								</a>
							{/foreach}
						</ul>
					</div>
				{/if}
			</div>
        </div>
        <!-- main-header -->
		{/if}
		
		<!-- side panel -->
		{if $page != "app_oauth" && $page != "sign" && $page != "reset" && $page != "live" && $page != "messages" && $page != "started"}
			{if !$user->_logged_in && !$system['newsfeed_public'] && $page == "index"}
			
			{else}
				{include file='_sidebar.tpl'}
			{/if}
		{/if}
		<!-- side panel -->
		
		{if $user->_logged_in && $page != "live" && $page != "reels" && $page != "messages" && $page != "started"}
			<div class="dropup ele_create_dropup tag_chat_header">
				<a href="#" class="btn btn-mat btn-primary" data-toggle="dropdown" role="button" data-display="static">
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M18 13h-5v5c0 .55-.45 1-1 1s-1-.45-1-1v-5H6c-.55 0-1-.45-1-1s.45-1 1-1h5V6c0-.55.45-1 1-1s1 .45 1 1v5h5c.55 0 1 .45 1 1s-.45 1-1 1z"></path></svg>
				</a>
				<ul class="dropdown-menu dropdown-menu-right ele_create_menu">
					<li>
						<a href="#" data-toggle="modal" data-url="posts/publisher.php" data-size="large">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M21 1.99669C6 1.99669 4 15.9967 3 21.9967C3.66667 21.9967 4.33275 21.9967 4.99824 21.9967C5.66421 18.6636 7.33146 16.8303 10 16.4967C14 15.9967 17 12.4967 18 9.49669L16.5 8.49669C16.8333 8.16336 17.1667 7.83002 17.5 7.49669C18.5 6.49669 19.5042 4.99669 21 1.99669Z"></path><path fill="currentColor" d="M6.93912 14.0328C6.7072 14.6563 6.51032 15.2331 6.33421 15.8155C7.29345 15.1189 8.43544 14.6767 9.75193 14.5121C12.2652 14.198 14.4976 12.5385 15.6279 10.4537L14.1721 8.99888L15.5848 7.58417C15.9185 7.25004 16.2521 6.91614 16.5858 6.58248C17.0151 6.15312 17.5 5.35849 18.0129 4.2149C12.4197 5.08182 8.99484 8.50647 6.93912 14.0328ZM17 8.99739L18 9.99669C17 12.9967 14 15.9967 10 16.4967C7.33146 16.8303 5.66421 18.6636 4.99824 21.9967H3C4 15.9967 6 1.99669 21 1.99669C20.0009 4.99402 19.0018 6.99313 18.0027 7.99402C17.6662 8.33049 17.3331 8.66382 17 8.99739Z"></path></svg> {__("Create Post")}
						</a>
					</li>
					{if $system['live_enabled']}
						<li>
							<a href="{$system['system_url']}/live">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M16 4C16.5523 4 17 4.44772 17 5V9.2L22.2133 5.55071C22.4395 5.39235 22.7513 5.44737 22.9096 5.6736C22.9684 5.75764 23 5.85774 23 5.96033V18.0397C23 18.3158 22.7761 18.5397 22.5 18.5397C22.3974 18.5397 22.2973 18.5081 22.2133 18.4493L17 14.8V19C17 19.5523 16.5523 20 16 20H2C1.44772 20 1 19.5523 1 19V5C1 4.44772 1.44772 4 2 4H16ZM7.4 8.82867C7.2067 8.82867 7.04543 8.96578 7.00813 9.14806L7 9.22867V14.7713C7 14.8474 7.02169 14.9219 7.06254 14.9861C7.16631 15.1492 7.36858 15.2116 7.54238 15.1452L7.61475 15.1088L11.9697 12.3375C12.0191 12.306 12.061 12.2641 12.0924 12.2148C12.1962 12.0517 12.1671 11.842 12.0333 11.7127L11.9697 11.6625L7.61475 8.8912C7.55057 8.85036 7.47607 8.82867 7.4 8.82867Z"></path><path fill="currentColor" d="M16 4C16.5523 4 17 4.44772 17 5V9.2L22.2133 5.55071C22.4395 5.39235 22.7513 5.44737 22.9096 5.6736C22.9684 5.75764 23 5.85774 23 5.96033V18.0397C23 18.3158 22.7761 18.5397 22.5 18.5397C22.3974 18.5397 22.2973 18.5081 22.2133 18.4493L17 14.8V19C17 19.5523 16.5523 20 16 20H2C1.44772 20 1 19.5523 1 19V5C1 4.44772 1.44772 4 2 4H16ZM15 6H3V18H15V6ZM7.4 8.82867C7.47607 8.82867 7.55057 8.85036 7.61475 8.8912L11.9697 11.6625C12.1561 11.7811 12.211 12.0284 12.0924 12.2148C12.061 12.2641 12.0191 12.306 11.9697 12.3375L7.61475 15.1088C7.42837 15.2274 7.18114 15.1725 7.06254 14.9861C7.02169 14.9219 7 14.8474 7 14.7713V9.22867C7 9.00776 7.17909 8.82867 7.4 8.82867ZM21 8.84131L17 11.641V12.359L21 15.1587V8.84131Z"></path></svg> {__("Create Live")}
							</a>
						</li>
					{/if}
					{if $system['stories_enabled']}
						<li>
							<a href="#" data-toggle="modal" data-url="posts/story.php?do=create">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M12.0049 13.0028C13.6617 13.0028 15.0049 14.346 15.0049 16.0028C15.0049 16.8519 14.6521 17.6187 14.0851 18.1645L12.175 20.0024L15.0049 20.0028V22.0028H9.00488L9.00398 20.2784L12.6983 16.7234C12.8874 16.5411 13.0049 16.2857 13.0049 16.0028C13.0049 15.4505 12.5572 15.0028 12.0049 15.0028C11.4526 15.0028 11.0049 15.4505 11.0049 16.0028H9.00488C9.00488 14.346 10.348 13.0028 12.0049 13.0028ZM18.0049 13.0028V17.0028H20.0049V13.0028H22.0049V22.0028H20.0049V19.0028H16.0049V13.0028H18.0049ZM4.00488 12.0028C4.00488 14.5294 5.17612 16.7824 7.00527 18.2485L7.0049 20.665C4.01588 18.9359 2.00488 15.7042 2.00488 12.0028H4.00488ZM12.0049 2.00281C17.1902 2.00281 21.4537 5.94943 21.9555 11.0027L19.943 11.0029C19.4509 7.05652 16.0845 4.00281 12.0049 4.00281C9.54102 4.00281 7.33731 5.11664 5.8698 6.86824L8.00488 9.00281H2.00488V3.00281L4.45144 5.44929C6.28491 3.3379 8.98898 2.00281 12.0049 2.00281Z"></path><path fill="currentColor" d="M12.0049 13.0028C13.6617 13.0028 15.0049 14.346 15.0049 16.0028C15.0049 16.8519 14.6521 17.6187 14.0851 18.1645L12.175 20.0024L15.0049 20.0028V22.0028H9.00488L9.00398 20.2784L12.6983 16.7234C12.8874 16.5411 13.0049 16.2857 13.0049 16.0028C13.0049 15.4505 12.5572 15.0028 12.0049 15.0028C11.4526 15.0028 11.0049 15.4505 11.0049 16.0028H9.00488C9.00488 14.346 10.348 13.0028 12.0049 13.0028ZM18.0049 13.0028V17.0028H20.0049V13.0028H22.0049V22.0028H20.0049V19.0028H16.0049V13.0028H18.0049ZM4.00488 12.0028C4.00488 14.5294 5.17612 16.7824 7.00527 18.2485L7.0049 20.665C4.01588 18.9359 2.00488 15.7042 2.00488 12.0028H4.00488ZM12.0049 2.00281C17.1902 2.00281 21.4537 5.94943 21.9555 11.0027L19.943 11.0029C19.4509 7.05652 16.0845 4.00281 12.0049 4.00281C9.2551 4.00281 6.82935 5.39014 5.3894 7.50305L8.00488 7.50281V9.50281H2.00488V3.50281H4.00488L4.00477 6.00198C5.82922 3.57356 8.73362 2.00281 12.0049 2.00281Z"></path></svg> {__("Create Story")}
							</a>
						</li>
					{/if}
					{if $system['ads_enabled']}
						<li>
							<a href="{$system['system_url']}/ads/new">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M21 3a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h18zM9.399 8h-2l-3.2 8h2.154l.4-1h3.29l.4 1h2.155L9.399 8zM19 8h-2v2h-1a3 3 0 0 0-.176 5.995L16 16h3V8zm-2 4v2h-1l-.117-.007a1 1 0 0 1 0-1.986L16 12h1zm-8.601-1.115L9.244 13H7.552l.847-2.115z"></path><path fill="currentColor" d="M21 3a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h18zm-1 2H4v14h16V5zM9.399 8l3.199 8h-2.155l-.4-1h-3.29l-.4 1H4.199l3.2-8h2zM19 8v8h-3a3 3 0 0 1 0-6h.999L17 8h2zm-2 4h-1a1 1 0 0 0-.117 1.993L16 14h1v-2zm-8.601-1.115L7.552 13h1.692l-.845-2.115z"></path></svg> {__("Create Ads")}
							</a>
						</li>
					{/if}
					{if $system['blogs_enabled']}
						<li>
							<a href="{$system['system_url']}/blogs/new">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M20 22H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1zM7 6v4h4V6H7zm0 6v2h10v-2H7zm0 4v2h10v-2H7zm6-9v2h4V7h-4z"></path><path fill="currentColor" d="M20 22H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1zm-1-2V4H5v16h14zM7 6h4v4H7V6zm0 6h10v2H7v-2zm0 4h10v2H7v-2zm6-9h4v2h-4V7z"></path></svg> {__("Create Blog")} {if $system['paid_blogs_enabled']}<span class="badge rounded-pill badge-lg bg-warning">{__("Paid")}</span>{/if}
							</a>
						</li>
					{/if}
					{if $system['events_enabled']}
						<li>
							<a href="#" data-toggle="modal" data-url="modules/add.php?type=event">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M17 3h4a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h4V1h2v2h6V1h2v2zM4 9v10h16V9H4zm2 4h5v4H6v-4z"></path><path fill="currentColor" d="M17 3h4a1 1 0 0 1 1 1v16a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h4V1h2v2h6V1h2v2zm3 6V5h-3v2h-2V5H9v2H7V5H4v4h16zm0 2H4v8h16v-8zM6 13h5v4H6v-4z"></path></svg> {__("Create Event")}
							</a>
						</li>
					{/if}
					{if $system['funding_enabled']}
						<li>
							<a href="#" data-toggle="modal" data-url="posts/funding.php?do=create">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M9.33 11.5h2.17A4.5 4.5 0 0 1 16 16H8.999L9 17h8v-1a5.578 5.578 0 0 0-.886-3H19a5 5 0 0 1 4.516 2.851C21.151 18.972 17.322 21 13 21c-2.761 0-5.1-.59-7-1.625L6 10.071A6.967 6.967 0 0 1 9.33 11.5zM4 9a1 1 0 0 1 .993.883L5 10V19a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1v-9a1 1 0 0 1 1-1h2zm9.646-5.425L14 3.93l.354-.354a2.5 2.5 0 1 1 3.535 3.536L14 11l-3.89-3.89a2.5 2.5 0 1 1 3.536-3.535z"></path><path fill="currentColor" d="M5 9a1 1 0 0 1 1 1 6.97 6.97 0 0 1 4.33 1.5h2.17c1.332 0 2.53.579 3.353 1.499L19 13a5 5 0 0 1 4.516 2.851C21.151 18.972 17.322 21 13 21c-2.79 0-5.15-.603-7.06-1.658A.998.998 0 0 1 5 20H2a1 1 0 0 1-1-1v-9a1 1 0 0 1 1-1h3zm1.001 3L6 17.021l.045.033C7.84 18.314 10.178 19 13 19c3.004 0 5.799-1.156 7.835-3.13l.133-.133-.12-.1a2.994 2.994 0 0 0-1.643-.63L19 15l-2.112-.001c.073.322.112.657.112 1.001v1H8v-2l6.79-.001-.034-.078a2.501 2.501 0 0 0-2.092-1.416L12.5 13.5H9.57A4.985 4.985 0 0 0 6.002 12zM4 11H3v7h1v-7zm9.646-7.425L14 3.93l.354-.354a2.5 2.5 0 1 1 3.535 3.536L14 11l-3.89-3.89a2.5 2.5 0 1 1 3.536-3.535zm-2.12 1.415a.5.5 0 0 0-.06.637l.058.069L14 8.17l2.476-2.474a.5.5 0 0 0 .058-.638l-.058-.07a.5.5 0 0 0-.638-.057l-.07.058-1.769 1.768-1.767-1.77-.068-.056a.5.5 0 0 0-.638.058z"></path></svg> {__("Create Funding")} {if $system['paid_funding_enabled']}<span class="badge rounded-pill badge-lg bg-warning">{__("Paid")}</span>{/if}
							</a>
						</li>
					{/if}
					{if $system['groups_enabled']}
						<li>
							<a href="#" data-toggle="modal" data-url="modules/add.php?type=group">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M10 19.748V16.4c0-1.283.995-2.292 2.467-2.868A8.482 8.482 0 0 0 9.5 13c-1.89 0-3.636.617-5.047 1.66A8.017 8.017 0 0 0 10 19.748zm8.88-3.662C18.485 15.553 17.17 15 15.5 15c-2.006 0-3.5.797-3.5 1.4V20a7.996 7.996 0 0 0 6.88-3.914zM9.55 11.5a2.25 2.25 0 1 0 0-4.5 2.25 2.25 0 0 0 0 4.5zm5.95 1a2 2 0 1 0 0-4 2 2 0 0 0 0 4zM12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z"></path><path fill="currentColor" d="M9.55 11.5a2.25 2.25 0 1 1 0-4.5 2.25 2.25 0 0 1 0 4.5zm.45 8.248V16.4c0-.488.144-.937.404-1.338a6.473 6.473 0 0 0-5.033 1.417A8.012 8.012 0 0 0 10 19.749zM4.453 14.66A8.462 8.462 0 0 1 9.5 13c1.043 0 2.043.188 2.967.532.878-.343 1.925-.532 3.033-.532 1.66 0 3.185.424 4.206 1.156a8 8 0 1 0-15.253.504zm14.426 1.426C18.486 15.553 17.171 15 15.5 15c-2.006 0-3.5.797-3.5 1.4V20a7.996 7.996 0 0 0 6.88-3.914zM12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm3.5-9.5a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"></path></svg> {__("Create Group")}
							</a>
						</li>
					{/if}
					{if $system['pages_enabled']}
						<li>
							<a href="#" data-toggle="modal" data-url="modules/add.php?type=page">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M3 3h9.382a1 1 0 0 1 .894.553L14 5h6a1 1 0 0 1 1 1v11a1 1 0 0 1-1 1h-6.382a1 1 0 0 1-.894-.553L12 16H5v6H3V3z"></path><path fill="currentColor" d="M5 16v6H3V3h9.382a1 1 0 0 1 .894.553L14 5h6a1 1 0 0 1 1 1v11a1 1 0 0 1-1 1h-6.382a1 1 0 0 1-.894-.553L12 16H5zM5 5v9h8.236l1 2H19V7h-6.236l-1-2H5z"></path></svg> {__("Create Page")}
							</a>
						</li>
					{/if}
					{if $system['market_enabled']}
						<li>
							<a href="#" data-toggle="modal" data-url="posts/product.php?do=create">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M22 20v2H2v-2h1v-6.758A4.496 4.496 0 0 1 1 9.5c0-.827.224-1.624.633-2.303L4.345 2.5a1 1 0 0 1 .866-.5H18.79a1 1 0 0 1 .866.5l2.702 4.682A4.496 4.496 0 0 1 21 13.242V20h1zM5.789 4L3.356 8.213a2.5 2.5 0 0 0 4.466 2.216c.335-.837 1.52-.837 1.856 0a2.5 2.5 0 0 0 4.644 0c.335-.837 1.52-.837 1.856 0a2.5 2.5 0 1 0 4.457-2.232L18.21 4H5.79z"></path><path fill="currentColor" d="M21 13.242V20h1v2H2v-2h1v-6.758A4.496 4.496 0 0 1 1 9.5c0-.827.224-1.624.633-2.303L4.345 2.5a1 1 0 0 1 .866-.5H18.79a1 1 0 0 1 .866.5l2.702 4.682A4.496 4.496 0 0 1 21 13.242zm-2 .73a4.496 4.496 0 0 1-3.75-1.36A4.496 4.496 0 0 1 12 14.001a4.496 4.496 0 0 1-3.25-1.387A4.496 4.496 0 0 1 5 13.973V20h14v-6.027zM5.789 4L3.356 8.213a2.5 2.5 0 0 0 4.466 2.216c.335-.837 1.52-.837 1.856 0a2.5 2.5 0 0 0 4.644 0c.335-.837 1.52-.837 1.856 0a2.5 2.5 0 1 0 4.457-2.232L18.21 4H5.79z"></path></svg> {__("Create Product")} {if $system['paid_products_enabled']}<span class="badge rounded-pill badge-lg bg-warning">{__("Paid")}</span>{/if}
							</a>
						</li>
					{/if}
				</ul>
			</div>
		{/if}
        
        <!-- ads -->
        {include file='_ads.tpl' _ads=$ads_master['header'] _master=true}
        <!-- ads -->