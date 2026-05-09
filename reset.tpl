{include file='_head.tpl'}
{include file='_header.tpl'}

<style>
	body, .main-wrapper {
		padding: 0 !important;
	}
	.main-header, .ele_sidebar_left {
		display: none;
	}
</style>

<div class="valign w-100 h-100 position-relative flex-column ele_welcome">
	<div class="w-100 position-relative mb-5 ele_welcome_top">
		<div class="container">
			<div class="valign ptb15 justify-content-between">
				<a class="logo-wrapper" href="{$system['system_url']}">
					{if $system['system_logo']}
						<img class="ele_logo_pc d-sm-none d-md-block" src="{$system['system_uploads']}/{$system['system_logo']}" alt="{$system['system_title']}">
						{if $system['system_favicon_default']}
							<img class="ele_logo_mobi d-none d-sm-block d-md-none" src="{$system['system_url']}/content/themes/{$system['theme']}/images/favicon.png" />
						{elseif $system['system_favicon']}
							<img class="ele_logo_mobi d-none d-sm-block d-md-none" src="{$system['system_uploads']}/{$system['system_favicon']}" />
						{/if}
					{else}
						{$system['system_title']}
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
				<div class="welcome_page">
					<div class="ele_content card-register">
						<h4>{__("Reset Password")}</h4>
						<p class="mb-4">{__("Enter the email address you signed up with and we'll email you a reset link")}</p>
						<form class="js_ajax-forms" data-url="core/forget_password.php">
							<label class="ele_field">
								<input type="text" placeholder=" " id="email" name="email" required autofocus>
								<span>{__("Email")}</span>
							</label>

							{if $system['reCAPTCHA_enabled']}
								<div class="form-group">
									<!-- reCAPTCHA -->
									<script src='https://www.google.com/recaptcha/api.js' async defer></script>
									<div class="g-recaptcha" data-sitekey="{$system['reCAPTCHA_site_key']}"></div>
									<!-- reCAPTCHA -->
								</div>
							{/if}
							
							{if $system['turnstile_enabled']}
								<div class="form-group">
									<!-- Turnstile -->
									<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>
									<div class="cf-turnstile" data-sitekey="{$system['turnstile_site_key']}" data-callback="javascriptCallback"></div>
									<!-- Turnstile -->
								</div>
							{/if}
							
							<input type="hidden" name="secret" value="{$secret}">
							<button type="submit" class="btn btn-block btn-primary btn-mat">{__("Continue")}</button>

							<!-- error -->
							<div class="alert alert-danger x-hidden"></div>
							<!-- error -->
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="w-100 position-relative mt-5 ele_welcome_bottom">
		{include file='_footer.links.tpl'}
	</div>
</div>

{include file='_footer.tpl'}