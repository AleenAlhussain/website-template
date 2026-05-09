{include file='_head.tpl'}
{include file='_header.tpl'}

<style>
	body, .main-wrapper {
		padding: 0 !important;
	}
	.main-header:not(.ele_welcome_top), .ele_sidebar_left {
		display: none;
	}
</style>

{if $system['landing_page_template'] == "elengine"}
	{include file='sign.elengine.tpl'}
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
				<div class="d-flex justify-content-center">
					<div class="welcome_page w-100 center">
						{include file='_sign_form.tpl'}
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