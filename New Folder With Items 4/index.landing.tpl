{include file='_head.tpl'}
{include file='_header.tpl'}

<style>
	body, .main-wrapper {
		padding: 0 !important;
	}
</style>
	
{if $system['landing_page_template'] == "elengine"}
	{include file='index.landing.elengine.tpl'}
{else}
	<div class="valign w-100 h-100 position-relative flex-column ele_welcome">
		<div class="w-100 position-relative main-header mb-5 ele_welcome_top">
			<div class="container">
				<div class="valign ptb15 justify-content-between">
					<a class="logo-wrapper" href="{$system['system_url']}">
						{if $system['system_logo']}
							<img class="logo-light" src="{$system['system_uploads']}/{$system['system_logo']}" alt="{__($system['system_title'])}">
							{if !$system['system_logo_dark']}
								<img class="logo-dark" src="{$system['system_uploads']}/{$system['system_logo']}" alt="{__($system['system_title'])}">
							{else}
								<img class="logo-dark" src="{$system['system_uploads']}/{$system['system_logo_dark']}" alt="{$system['system_title']}">
							{/if}
						{else}
							{__($system['system_title'])}
						{/if}
					</a>
					{if $system['registration_enabled']}
						<a class="btn btn-primary btn-mat" href="{$system['system_url']}/signup">{__("Sign Up")}</a>
					{/if}
				</div>
			</div>
		</div>
		
		<div class="w-100 position-relative ele_welcome_mid">
			<div class="container">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-5">
						<div class="h-100 d-md-flex justify-content-center flex-column index-intro">
							<h1>{__("Welcome to")} {__($system['system_title'])}</h1>
							<p class="m-0">{__($system['system_description'])}</p>
							{if $system['play_store_badge_enabled'] || $system['appgallery_badge_enabled'] || $system['app_store_badge_enabled']}
								<div class="valign mt-5 welcome_page_apps {if $system['play_store_badge_enabled']}mx-n2{/if}">
									{if $system['play_store_badge_enabled']}
										<a href="{$system['play_store_link']}" target="_blank">
											{include file='__svg_icons.tpl' icon="playstore_badge" height="57px"}
										</a>
									{/if}
									{if $system['app_store_badge_enabled']}
										<a href="{$system['app_store_link']}" target="_blank">
											{include file='__svg_icons.tpl' icon="appstore_badge" height="40px" class="mr10"}
										</a>
									{/if}
									{if $system['appgallery_badge_enabled']}
										<a href="{$system['appgallery_store_link']}" target="_blank" class="huwei">
											{include file='__svg_icons.tpl' icon="appgallery_badge" height="40px"}
										</a>
									{/if}
								</div>
							{/if}
						</div>
					</div>

					<div class="col-xl-6 col-lg-6 col-md-7 welcome_page">
						{include file='_sign_form.tpl' do="in"}
					</div>
				</div>
			</div>
		</div>
		
		<div class="w-100 position-relative mt-5 ele_welcome_bottom">
			{include file='_footer.links.tpl'}
		</div>
	</div>
{/if}

{include file='_footer.tpl'}