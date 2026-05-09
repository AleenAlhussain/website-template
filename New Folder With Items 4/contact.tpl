{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container">
	<!-- content panel -->
	<div class="ele_content plr30 ptb30">
		<div class="row mx-md-n3">
			<div class="col-lg-5 px-md-3">
				<div class="position-relative ele_contact">
					<h2 class="ele_contact_sub position-relative">{__("Contact Us")}</h2>
					<h2 class="ele_contact_title position-relative">{__("Contact us and we will contact you back")}</h2>
					<img src="{$system['system_url']}/content/themes/{$system['theme']}/images/support.png">
				</div>
			</div>
			
			<div class="col-lg-7 px-md-3">
				<form class="js_ajax-forms" data-url="core/contact.php">
					<label class="ele_field">
						<input name="name" type="text" placeholder=" ">
						<span>{__("Name")} *</span>
					</label>
					
					<label class="ele_field">
						<input name="email" type="email" placeholder=" ">
						<span>{__("Email")} *</span>
					</label>
					
					<label class="ele_field">
						<input name="subject" type="text" placeholder=" ">
						<span>{__("Subject")} *</span>
					</label>
					
					<label class="ele_field">
						<textarea placeholder=" " name="message" rows="5"></textarea>
						<span>{__("Message")} *</span>
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

					<div class="text-center ele_sett_bott_btn">
						<button type="submit" class="btn btn-mat btn-primary">{__("Send")}</button>
					</div>

					<!-- success -->
					<div class="alert alert-success x-hidden"></div>
					<!-- success -->

					<!-- error -->
					<div class="alert alert-danger x-hidden"></div>
					<!-- error -->
				</form>
			</div>
		</div>
	</div>
	<!-- content panel -->
</div>
<!-- page content -->

{include file='_footer.tpl'}