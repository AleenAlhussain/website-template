{strip}
<!-- Toasts -->
<div class="toast-container p-3 bottom-0 start-0 fixed-bottom"></div>
<!-- Toasts -->
  
<!-- Modals -->
<div id="modal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <div class="loader pt10 pb10"></div>
            </div>
        </div>
    </div>
</div>

<script id="modal-login" type="text/template">
    <div class="modal-header">
        <h6 class="modal-title">{__("Not Logged In")}</h6>
    </div>
    <div class="modal-body">
        <p>{__("Please log in to continue")}</p>
    </div>
    <div class="modal-footer">
        <a class="btn btn-primary" href="{$system['system_url']}/signin">{__("Login")}</a>
    </div>
</script>

<script id="modal-message" type="text/template">
    <div class="modal-header">
        <h6 class="modal-title">{literal}{{title}}{/literal}</h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body">
        <p>{literal}{{{message}}}{/literal}</p>
    </div>
</script>

<script id="modal-success" type="text/template">
    <div class="modal-body text-center">
        <div class="big-icon success valign justify-content-center">
            <svg width="50" height="50" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.5609 10.7386L20.2009 9.15859C19.9409 8.85859 19.7309 8.29859 19.7309 7.89859V6.19859C19.7309 5.13859 18.8609 4.26859 17.8009 4.26859H16.1009C15.7109 4.26859 15.1409 4.05859 14.8409 3.79859L13.2609 2.43859C12.5709 1.84859 11.4409 1.84859 10.7409 2.43859L9.17086 3.80859C8.87086 4.05859 8.30086 4.26859 7.91086 4.26859H6.18086C5.12086 4.26859 4.25086 5.13859 4.25086 6.19859V7.90859C4.25086 8.29859 4.04086 8.85859 3.79086 9.15859L2.44086 10.7486C1.86086 11.4386 1.86086 12.5586 2.44086 13.2486L3.79086 14.8386C4.04086 15.1386 4.25086 15.6986 4.25086 16.0886V17.7986C4.25086 18.8586 5.12086 19.7286 6.18086 19.7286H7.91086C8.30086 19.7286 8.87086 19.9386 9.17086 20.1986L10.7509 21.5586C11.4409 22.1486 12.5709 22.1486 13.2709 21.5586L14.8509 20.1986C15.1509 19.9386 15.7109 19.7286 16.1109 19.7286H17.8109C18.8709 19.7286 19.7409 18.8586 19.7409 17.7986V16.0986C19.7409 15.7086 19.9509 15.1386 20.2109 14.8386L21.5709 13.2586C22.1509 12.5686 22.1509 11.4286 21.5609 10.7386ZM16.1609 10.1086L11.3309 14.9386C11.1909 15.0786 11.0009 15.1586 10.8009 15.1586C10.6009 15.1586 10.4109 15.0786 10.2709 14.9386L7.85086 12.5186C7.56086 12.2286 7.56086 11.7486 7.85086 11.4586C8.14086 11.1686 8.62086 11.1686 8.91086 11.4586L10.8009 13.3486L15.1009 9.04859C15.3909 8.75859 15.8709 8.75859 16.1609 9.04859C16.4509 9.33859 16.4509 9.81859 16.1609 10.1086Z" fill="currentColor"></path></svg>
        </div>
        <h4 class="mt-4">{literal}{{title}}{/literal}</h4>
        <p>{literal}{{{message}}}{/literal}</p>
    </div>
</script>

<script id="modal-info" type="text/template">
    <div class="modal-body text-center">
		<div class="big-icon text-info valign justify-content-center">
            <svg xmlns="http://www.w3.org/2000/svg" height="50" viewBox="0 -960 960 960" width="50" fill="currentColor"><path d="M480-280q17 0 28.5-11.5T520-320v-160q0-17-11.5-28.5T480-520q-17 0-28.5 11.5T440-480v160q0 17 11.5 28.5T480-280Zm0-320q17 0 28.5-11.5T520-640q0-17-11.5-28.5T480-680q-17 0-28.5 11.5T440-640q0 17 11.5 28.5T480-600Zm0 520q-83 0-156-31.5T197-197q-54-54-85.5-127T80-480q0-83 31.5-156T197-763q54-54 127-85.5T480-880q83 0 156 31.5T763-763q54 54 85.5 127T880-480q0 83-31.5 156T763-197q-54 54-127 85.5T480-80Z"/></svg>
        </div>
		<h4 class="mt-4">{literal}{{title}}{/literal}</h4>
		<p>{literal}{{{message}}}{/literal}</p>
    </div>
</script>

<script id="modal-error" type="text/template">
    <div class="modal-body text-center">
        <div class="big-icon error valign justify-content-center">
            <svg width="50" height="50" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM15.36 14.3C15.65 14.59 15.65 15.07 15.36 15.36C15.21 15.51 15.02 15.58 14.83 15.58C14.64 15.58 14.45 15.51 14.3 15.36L12 13.06L9.7 15.36C9.55 15.51 9.36 15.58 9.17 15.58C8.98 15.58 8.79 15.51 8.64 15.36C8.35 15.07 8.35 14.59 8.64 14.3L10.94 12L8.64 9.7C8.35 9.41 8.35 8.93 8.64 8.64C8.93 8.35 9.41 8.35 9.7 8.64L12 10.94L14.3 8.64C14.59 8.35 15.07 8.35 15.36 8.64C15.65 8.93 15.65 9.41 15.36 9.7L13.06 12L15.36 14.3Z" fill="currentColor"/></svg>
        </div>
        <h4 class="mt-4">{literal}{{title}}{/literal}</h4>
        <p>{literal}{{{message}}}{/literal}</p>
    </div>
</script>

<script id="modal-confirm" type="text/template">
    <div class="modal-header">
        <h6 class="modal-title">{literal}{{title}}{/literal}</h6>
    </div>
    <div class="modal-body">
        <h6>{literal}{{{message}}}{/literal}</h6>
        {literal}{{#password_check}}{/literal}
            <div class="form-group mt20">
                <label class="form-control-label" for="modal-password-check">{__("Confirm Password")}</label>
                <input id="modal-password-check" name="password_check" type="password" class="form-control">
            </div>
        {literal}{{/password_check}}{/literal}
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
        <button type="button" class="btn btn-primary" id="modal-confirm-ok">{__("Confirm")}</button>
    </div>
</script>

<script id="modal-confirm-payment" type="text/template">
    <div class="modal-body text-center">
		<div class="big-icon success valign justify-content-center">
            <svg width="50" height="50" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.4" d="M21.3709 11.3894V17.3794C21.3709 20.1394 19.1309 22.3794 16.3709 22.3794H7.63086C4.87086 22.3794 2.63086 20.1394 2.63086 17.3794V11.4594C3.39086 12.2794 4.47086 12.7494 5.64086 12.7494C6.90086 12.7494 8.11086 12.1194 8.87086 11.1094C9.55086 12.1194 10.7109 12.7494 12.0009 12.7494C13.2809 12.7494 14.4209 12.1494 15.1109 11.1494C15.8809 12.1394 17.0709 12.7494 18.3109 12.7494C19.5209 12.7494 20.6209 12.2594 21.3709 11.3894Z" fill="currentColor"></path> <path d="M14.9894 1.25H8.98936L8.24936 8.61C8.18936 9.29 8.28936 9.93 8.53936 10.51C9.11936 11.87 10.4794 12.75 11.9994 12.75C13.5394 12.75 14.8694 11.89 15.4694 10.52C15.6494 10.09 15.7594 9.59 15.7694 9.08V8.89L14.9894 1.25Z" fill="currentColor"></path> <path opacity="0.6" d="M22.3598 8.27L22.0698 5.5C21.6498 2.48 20.2798 1.25 17.3498 1.25H13.5098L14.2498 8.75C14.2598 8.85 14.2698 8.96 14.2698 9.15C14.3298 9.67 14.4898 10.15 14.7298 10.58C15.4498 11.9 16.8498 12.75 18.3098 12.75C19.6398 12.75 20.8398 12.16 21.5898 11.12C22.1898 10.32 22.4598 9.31 22.3598 8.27Z" fill="currentColor"></path> <path opacity="0.6" d="M6.58965 1.25C3.64965 1.25 2.28965 2.48 1.85965 5.53L1.58965 8.28C1.48965 9.35 1.77965 10.39 2.40965 11.2C3.16965 12.19 4.33965 12.75 5.63965 12.75C7.09965 12.75 8.49965 11.9 9.20965 10.6C9.46965 10.15 9.63965 9.63 9.68965 9.09L10.4697 1.26H6.58965V1.25Z" fill="currentColor"></path> <path d="M11.3491 16.6602C10.0791 16.7902 9.11914 17.8702 9.11914 19.1502V22.3802H14.8691V19.5002C14.8791 17.4102 13.6491 16.4202 11.3491 16.6602Z" fill="currentColor"></path> </svg>
        </div>
        <h4 class="mt-4">{__("Payment Alert")}</h4>
        <p>{__("You are about to purchase the items, do you want to proceed?")}</p>
    </div>
	<div class="modal-footer">
        <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
        <button type="button" class="btn btn-primary" id="modal-confirm-payment-ok">{__("Confirm")}</button>
    </div>
</script>

<script id="modal-loading" type="text/template">
    <div class="modal-body text-center">
        <div class="spinner-border text-primary"></div>
    </div>
</script>
<!-- Modals -->


<!-- Theme Switcher -->
<script id="theme-switcher" type="text/template">
    <div class="modal-header">
        <h6 class="modal-title"><i class="fas fa-paint-roller mr5"></i>{__("Theme Switcher")}</h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body pb0 pt30">
        <div class="row">
            {foreach $system['themes'] as $theme}
                <div class="col-6">
                    <div style="background: rgb(0 0 0 / 0.06); padding: 8px; border-radius: 8px; margin-bottom: 30px;">
                        <a style="display: block; position: relative; padding-bottom: 60%;" href="?theme={$theme['name']}">
                            <img style="width: 100%; height: 100%; position: absolute; top: 0; right: 0; bottom: 0; left: 0; border-radius: 4px;" src="{$system['system_url']}/content/themes/{$theme['name']}/thumbnail.png">
                            <span style="position: absolute; background: linear-gradient(transparent, rgb(0 0 0 / 0.7)); bottom: 0; left: 0; right: 0; width: 100%; border-radius: 0 0 8px 8px; color: #fff; font-size: 14px; text-align: center; text-transform: capitalize; padding: 20px 8px 8px;">
                                {$theme['name']}
                            </span>
                        </a>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</script>
<!-- Themes -->


<!-- Search -->
<script id="search-for" type="text/template">
    <div class="feeds-item mb5">
        <a class="data-container ele_header_search_more" href="{$system['system_url']}/search/{literal}{{#hashtag}}hashtag/{{/hashtag}}{/literal}{literal}{{query}}{/literal}">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"></path><path fill="currentColor" d="M18.031 16.617l4.283 4.282-1.415 1.415-4.282-4.283A8.96 8.96 0 0 1 11 20c-4.968 0-9-4.032-9-9s4.032-9 9-9 9 4.032 9 9a8.96 8.96 0 0 1-1.969 5.617zm-2.006-.742A6.977 6.977 0 0 0 18 11c0-3.868-3.133-7-7-7-3.868 0-7 3.132-7 7 0 3.867 3.132 7 7 7a6.977 6.977 0 0 0 4.875-1.975l.15-.15z"></path></svg> {__("Search for")} "{literal}{{#hashtag}}#{{/hashtag}}{/literal}{literal}{{query}}{/literal}"
        </a>
    </div>
</script>
<!-- Search -->


<!-- Lightbox -->
<script id="lightbox" type="text/template">
    <div class="lightbox">
        <div class="lightbox-container">
            <div class="lightbox-preview">
                <div class="lightbox-next js_lightbox-slider">
					{if $system['language']['dir'] == 'RTL'}
						<i class="fa fa-chevron-circle-left fa-3x"></i>
					{else}
						<i class="fa fa-chevron-circle-right fa-3x"></i>
					{/if}
				</div>
				<div class="lightbox-prev js_lightbox-slider">
					{if $system['language']['dir'] == 'RTL'}
						<i class="fa fa-chevron-circle-right fa-3x"></i>
					{else}
						<i class="fa fa-chevron-circle-left fa-3x"></i>
					{/if}
				</div>
				{if !$system['download_images_disabled']}
                <div class="lightbox-download">
                    <a href="{literal}{{image}}{/literal}" download>{__("Download")}</a> - <a target="_blank" href="{literal}{{image}}{/literal}">{__("View Original")}</a>
                </div>
				{/if}
                <img alt="" class="img-fluid" src="{literal}{{image}}{/literal}">
            </div>
            <div class="lightbox-data">
                <div class="clearfix">
                    <div class="pt5 pr5 float-right">
                        <button type="button" class="close lightbox-close js_lightbox-close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
                <div class="lightbox-post">
                    <div class="js_scroller" data-slimScroll-height="100%">
                        <div class="loader mtb10"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</script>

<script id="lightbox-nodata" type="text/template">
    <div class="lightbox">
        <div class="lightbox-container">
            <div class="lightbox-preview nodata">
                <div class="lightbox-exit js_lightbox-close">
                    <i class="fas fa-times fa-2x"></i>
                </div>
                <img alt="" class="img-fluid" src="{literal}{{image}}{/literal}">
            </div>
        </div>
    </div>
</script>

<script id="lightbox-live" type="text/template">
    <div class="lightbox" data-live-post-id="{literal}{{post_id}}{/literal}">
        <div class="lightbox-container">
            <div class="lightbox-preview with-live">
                <div class="live-stream-video" id="js_live-video">
                    <div class="position-absolute text-center plr10 bold live-counter" id="js_live-counter">
                        <span class="status offline" id=js_live-counter-status>{__("Offline")}</span>
                        <span class="number">
                            <strong id="js_live-counter-number">0</strong>    
                        </span>
                    </div>

                    <div class="position-absolute w-100 ptb30 ele_live_foot">
						<div class="text-center ptb10 plr15 live-status" id="js_live-status">
							{__("Loading")}<span class="spinner-grow spinner-grow-sm ml10"></span>
						</div>
					</div>
                </div>
            </div>
            <div class="lightbox-data">
                <div class="clearfix">
                    <div class="pt5 pr5 float-right">
                        <button type="button" class="close lightbox-close js_lightbox-close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
                <div class="lightbox-post">
                    <div class="js_scroller" data-slimScroll-height="100%">
                        <div class="loader mtb10"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</script>
<!-- Lightbox -->

<!-- Two-Factor Authentication -->
<script id="two-factor-authentication" type="text/template">
    <div class="modal-header">
		<h6 class="modal-title">{__("2FA Authentication")}</h6>
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		</button>
    </div>
    <form class="js_ajax-forms" data-url="core/two_factor_authentication.php">
		<div class="modal-body">
			<div class="mb20">
				{__("You've asked us to require a 6-digit login code when anyone tries to access your account from a new device or browser")}.
			</div>
			<div class="mb20">
				{__("Enter the 6-digit code that you received on your")} <strong>{literal}{{method}}{/literal}</strong>
			</div>
			<div class="form-group">
				<input name="two_factor_key" type="text" class="form-control" placeholder="######" required autofocus>
			</div>
			<!-- error -->
			<div class="alert alert-danger mb0 mt10 x-hidden"></div>
			<!-- error -->
			</div>
		<div class="modal-footer">
			<input name="user_id" type="hidden" value="{literal}{{user_id}}{/literal}">
			{literal}{{#remember}}{/literal}<input name="remember" type="hidden" value="true">{literal}{{/remember}}{/literal}
			{literal}{{#connecting_account}}{/literal}<input name="connecting_account" type="hidden" value="true">{literal}{{/connecting_account}}{/literal}
			<button type="submit" class="btn btn-primary">{__("Continue")}</button>
		</div>
    </form>
</script>
<!-- Two-Factor Authentication -->

{if !$user->_logged_in}
    
    <!-- Forget Password -->
    <script id="forget-password-confirm" type="text/template">
        <div class="modal-header">
            <h6 class="modal-title">{__("Verification Code")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form class="js_ajax-forms" data-url="core/forget_password_confirm.php">
            <div class="modal-body">
                <div class="mb20">
                    {__("We sent you an email with a six-digit verification code. Enter it below to continue to reset your password")}.
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input name="reset_key" type="text" class="form-control" placeholder="######" required autofocus>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label class="form-control-label mb5">{__("We sent your code to")}</label> <span class="badge badge-lg badge-warning">{literal}{{email}}{/literal}</span>
                    </div>
                </div>

                <!-- error -->
                <div class="alert alert-danger mb0 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <input name="email" type="hidden" value="{literal}{{email}}{/literal}">
                <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
            </div>
        </form>
    </script>
    
    <script id="forget-password-reset" type="text/template">
        <div class="modal-header">
            <h6 class="modal-title">{__("Change Your Password")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form class="js_ajax-forms" data-url="core/forget_password_reset.php">
            <div class="modal-body">
                <div class="form-group">
                    <label class="form-control-label" for="password">{__("New Password")}</label>
                    <input name="password" id="password" type="password" class="form-control" required autofocus>
                </div>
                <div class="form-group">
                    <label class="form-control-label" for="confirm">{__("Confirm Password")}</label>
                    <input name="confirm" id="confirm" type="password" class="form-control" required>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <input name="email" type="hidden" value="{literal}{{email}}{/literal}">
                <input name="reset_key" type="hidden" value="{literal}{{reset_key}}{/literal}">
                <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
            </div>
        </form>
    </script>
    <!-- Forget Password -->

{else}
    
	<!-- Account Switcher -->
    <script id="account-switcher" type="text/template">
		<div class="modal-header">
			<h6 class="modal-title">
				{include file='__svg_icons.tpl' icon="accounts_switcher" class="main-icon mr10" width="24px" height="24px"}
				{__("Switch Accounts")}
			</h6>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
		</div>
		<div class="modal-body">
			<ul class="ele_side_users mx-n2">
				{foreach $user->_data['connected_accounts'] as $connected_account}
					<li class="feeds-item">
						<div class="data-container js_connected-account-switch" type="button" data-uid="{$connected_account['user_id']}">
							<span class="data-avatar">
								<img src="{$connected_account['user_picture']}" alt="">
							</span>
							<div class="data-content">
								{if $connected_account['user_id'] == $user->_data['user_id']}
									<div class="float-right">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 2c-.218 0 -.432 .002 -.642 .005l-.616 .017l-.299 .013l-.579 .034l-.553 .046c-4.785 .464 -6.732 2.411 -7.196 7.196l-.046 .553l-.034 .579c-.005 .098 -.01 .198 -.013 .299l-.017 .616l-.004 .318l-.001 .324c0 .218 .002 .432 .005 .642l.017 .616l.013 .299l.034 .579l.046 .553c.464 4.785 2.411 6.732 7.196 7.196l.553 .046l.579 .034c.098 .005 .198 .01 .299 .013l.616 .017l.642 .005l.642 -.005l.616 -.017l.299 -.013l.579 -.034l.553 -.046c4.785 -.464 6.732 -2.411 7.196 -7.196l.046 -.553l.034 -.579c.005 -.098 .01 -.198 .013 -.299l.017 -.616l.005 -.642l-.005 -.642l-.017 -.616l-.013 -.299l-.034 -.579l-.046 -.553c-.464 -4.785 -2.411 -6.732 -7.196 -7.196l-.553 -.046l-.579 -.034a28.058 28.058 0 0 0 -.299 -.013l-.616 -.017l-.318 -.004l-.324 -.001zm2.293 7.293a1 1 0 0 1 1.497 1.32l-.083 .094l-4 4a1 1 0 0 1 -1.32 .083l-.094 -.083l-2 -2a1 1 0 0 1 1.32 -1.497l.094 .083l1.293 1.292l3.293 -3.292z" fill="#1bc3bb" stroke-width="0" /></svg>
									</div>
								{/if}
								<div class="mt5">
									<span class="name">
										<a>
											{if $system['show_usernames_enabled']}
												{$connected_account['user_name']}
											{else}
												{$connected_account['user_firstname']} {$connected_account['user_lastname']}
											{/if}
										</a>
									</span>
									{if $connected_account['user_verified']}
										<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
									{/if}
									{if $connected_account['user_subscribed']}
										&nbsp;&nbsp;<span class="pro-badge" data-toggle="tooltip" data-placement="top" title="{__('Pro User')}"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"/><path fill="currentColor" d="M12 2.02c-5.51 0-9.98 4.47-9.98 9.98s4.47 9.98 9.98 9.98 9.98-4.47 9.98-9.98S17.51 2.02 12 2.02zm-.52 15.86v-4.14H8.82c-.37 0-.62-.4-.44-.73l3.68-7.17c.23-.47.94-.3.94.23v4.19h2.54c.37 0 .61.39.45.72l-3.56 7.12c-.24.48-.95.31-.95-.22z"/></svg> PRO</span>
									{/if}
								</div>
							</div>
						</div>
					</li>
				{/foreach}
			</ul>
			<div class="row">
				<div class="col mt20">
					<a href="{$system['system_url']}/settings/accounts" class="btn btn-secondary btn-mat btn-block">{__("Connected Accounts")}</a>
				</div>
				{if $user->_data['user_id'] == $user->_data['user_master_account']}
					<div class="col mt20">
						<button class="btn btn-primary btn-mat btn-block" data-toggle="modal" data-url="#account-connector">{__("Add Account")}</button>
					</div>
				{/if}
			</div>
		</div>
    </script>

    <script id="account-connector" type="text/template">
      <div class="modal-header">
        <h6 class="modal-title">
          {include file='__svg_icons.tpl' icon="accounts_switcher" class="main-icon mr10" width="24px" height="24px"}  
          {__("Connect Accounts")}
        </h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
      </div>
      <div class="modal-body ptb30">
        <form class="js_ajax-forms" data-url="users/switch.php" method="POST">
          <!-- username or email -->
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-text"><i class="far fa-user fa-fw"></i></span>
              <input type="text" class="form-control" placeholder='{__("Email")} {__("or")} {__("Username")}' name="username_email" required>
            </div>
          </div>
          <!-- username or email -->
          <!-- password -->
          <div class="form-group">
            <div class="input-group">
              <span class="input-group-text"><i class="fas fa-key fa-fw"></i></span>
              <input type="password" class="form-control" placeholder='{__("Password")}' name="password" required>
            </div>
          </div>
          <!-- password -->
          <!-- submit -->
          <div class="d-grid form-group">
            <input type="hidden" name="do" value="signin">
            <button type="submit" class="btn btn-lg btn-primary bg-gradient-blue border-0 rounded-pill">{__("Login")}</button>
          </div>
          <!-- submit -->
          <!-- error -->
          <div class="alert alert-danger mt15 mb0 x-hidden"></div>
          <!-- error -->
        </form>
      </div>
    </script>
    <!-- Account Switcher -->
	
    <!-- Email Activation -->
	<script id="activation-email" type="text/template">
		<div class="modal-header">
			<h6 class="modal-title">{__("Enter the code from the email")}</h6>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
		</div>
		<form class="js_ajax-forms" data-url="core/activation_email.php">
			<div class="modal-body">
				<div class="mb20">
					{__("Let us know if this email belongs to you. Enter the code in the email")}
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input class="form-control" name="code" type="text" placeholder="######" required autofocus>
							{if $user->_data['user_email']}
								<div class="form-text">
									<span class="text-link" data-toggle="modal" data-url="core/activation_email_resend.php">{__("Resend Email")}</span>
								</div>
							{/if}
						</div>
					</div>
					<div class="col-md-6">
						{if $user->_data['user_email']}
							{__("We sent your code to")} <strong>{$user->_data['user_email']}</strong>
						{/if}
					</div>
				</div>
				<!-- error -->
				<div class="alert alert-danger mb0 mt10 x-hidden"></div>
				<!-- error -->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
				<button type="submit" class="btn btn-primary">{__("Continue")}</button>
			</div>
		</form>
    </script>

    <script id="activation-email-reset" type="text/template">
        <div class="modal-header">
            <h6 class="modal-title">{__("Change Email Address")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form class="js_ajax-forms" data-url="core/activation_email_reset.php">
            <div class="modal-body">
                <div class="form-group">
                    <label class="form-control-label mb10">{__("Current Email")}</label><br>
                    <span class="badge badge-lg badge-info">{$user->_data['user_email']}</span>
                    
                </div>
                <div class="form-group">
                    <label class="form-control-label" for="email">{__("New Email")}</label>
                    <input name="email" id="email" type="email" class="form-control" required autofocus>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
            </div>
        </form>
    </script>
    <!-- Email Activation -->


    <!-- Phone Activation -->
    <script id="activation-phone" type="text/template">
        <div class="modal-header">
            <h6 class="modal-title">{__("Enter the code from the SMS message")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form class="js_ajax-forms" data-url="core/activation_phone.php">
            <div class="modal-body">
                <div class="mb20">
                    {__("Let us know if this mobile number belongs to you. Enter the code in the SMS")}
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input name="code" type="text" class="form-control" placeholder="######" required autofocus>
                            {if $user->_data['user_phone']}
                                <span class="form-text">
                                    <span class="text-link" data-toggle="modal" data-url="core/activation_phone_resend.php">{__("Resend SMS")}</span>
                                </span>
                            {/if}
                        </div>
                    </div>
                    <div class="col-md-6">
                        {if $user->_data['user_phone']}
                            {__("We sent your code to")} <strong>{$user->_data['user_phone']}</strong>
                        {/if}
                    </div>
                </div>
				
				<!-- error -->
				<div class="alert alert-danger mb0 mt10 x-hidden"></div>
				<!-- error -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
            </div>
        </form>
    </script>

    <script id="activation-phone-reset" type="text/template">
        <div class="modal-header">
            <h6 class="modal-title">{__("Change Phone Number")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form class="js_ajax-forms" data-url="core/activation_phone_reset.php">
            <div class="modal-body">
                {if $user->_data['user_phone']}
                    <div class="form-group">
                        <label class="form-control-label">{__("Current Phone")}</label>
                        <p class="form-control-plaintext">{$user->_data['user_phone']}</p>
                        
                    </div>
                {/if}
                <div class="form-group">
                    <label class="form-control-label">{__("New Phone")}</label>
                    <input name="phone" type="text" class="form-control" required autofocus>
                    <span class="form-text">
                        {__("For example")}: +12344567890
                    </span>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                <!-- error -->
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
                <button type="submit" class="btn btn-primary">{__("Continue")}</button>
            </div>
        </form>
    </script>
    <!-- Phone Activation -->


    <!-- x-uploader -->
    {/strip}
    <script id="x-uploader" type="text/template">
        <form class="x-uploader" action="{literal}{{url}}{/literal}" method="post" enctype="multipart/form-data">
            {literal}{{#multiple}}{/literal}
                <input name="file[]" type="file" multiple="multiple" accept="{literal}{{accept}}{/literal}">
            {literal}{{/multiple}}{/literal}
            {literal}{{^multiple}}{/literal}
                <input name="file" type="file" accept="{literal}{{accept}}{/literal}">
            {literal}{{/multiple}}{/literal}
            <input type="hidden" name="secret" value="{literal}{{secret}}{/literal}">
        </form>
    </script>
    {strip}
    <!-- x-uploader -->


    <!-- Noty Notification -->
    {if $system['noty_notifications_enabled']}
        <script id="toast-notification" type="text/template">
			<a href="{literal}{{url}}{/literal}" class="toast align-items-center text-bg-info border-0 d-block" role="alert" aria-live="assertive" aria-atomic="true">
				<div class="d-flex">
					<div class="toast-body">
						<div class="data-container">
							<div class="data-avatar">
								<img src="{literal}{{image}}{/literal}" />
							</div>
							<div class="data-content mt10">{literal}{{message}}{/literal}</div>
						</div>
					</div>
					<button type="button" class="close" data-dismiss="toast" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				</div>
			</a>
		</script>
    {/if}
    <!-- Noty Notification -->


    <!-- Adblock Detector -->
    {if $system['adblock_detector_enabled']}
        <script id="adblock-detector" type="text/template">
            <div class="adblock-detector">
                {__("Our website is made possible by displaying online advertisements to our visitors")}<br>
                {__("Please consider supporting us by disabling your ad blocker")}.
            </div>
        </script>
    {/if}
    <!-- Adblock Detector -->


    <!-- Keyboard Shortcuts -->
    <script id="keyboard-shortcuts" type="text/template">
        <div class="modal-header">
            <h6 class="modal-title"><i class="fa fa-keyboard mr5"></i>{__("Keyboard Shortcuts")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body text-xlg">
            <div class="mb10">
                <kbd>J</kbd> {__("Scroll to the next post")}
            </div>
            <div>
                <kbd>K</kbd> {__("Scroll to the previous post")}
            </div>
        </div>
    </script>
    <!-- Keyboard Shortcuts -->


    <!-- Emoji Menu -->
    <script id="emoji-menu" type="text/template">
        <div class="emoji-menu">
            <div class="tab-content">
                <div class="tab-pane tab-emojis active" id="tab-emojis-{literal}{{id}}{/literal}">
                    <div class="js_scroller" data-slimScroll-height="180">
                        {foreach $emojis as $emoji_index => $emoji }
                            <div class="item item-{$emoji_index}"{if $emoji_index > 50 } style="display: none;" js-hidden {/if}>
                                <i data-emoji="{$emoji['unicode_char']}" class="js_emoji twa twa-2x twa-{$emoji['class']}"></i>
                            </div>
                        {/foreach}
                    </div>
                </div>

                <div class="tab-pane" id="tab-stickers-{literal}{{id}}{/literal}">
                    <div class="js_scroller" data-slimScroll-height="180">
                        {foreach from=$user->get_stickers() item=sticker}
                            <div class="item">
                                <img data-emoji=":STK-{$sticker['sticker_id']}:" src="{$system['system_uploads']}/{$sticker['image']}" class="js_emoji">
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>

            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="#tab-emojis-{literal}{{id}}{/literal}" data-toggle="tab">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="align-text-top"><path fill-rule="evenodd" clip-rule="evenodd" d="M12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2ZM8.59919 14.5496C8.35042 14.2184 7.88027 14.1516 7.54908 14.4003C7.21789 14.6491 7.15107 15.1192 7.39984 15.4504C8.4476 16.8454 10.1182 17.75 11.9999 17.75C13.8816 17.75 15.5522 16.8454 16.5999 15.4504C16.8487 15.1192 16.7819 14.6491 16.4507 14.4003C16.1195 14.1516 15.6493 14.2184 15.4006 14.5496C14.6239 15.5835 13.3898 16.25 11.9999 16.25C10.6099 16.25 9.37583 15.5835 8.59919 14.5496ZM10 10C10 10.5523 9.55228 11 9 11C8.44772 11 8 10.5523 8 10C8 9.44772 8.44772 9 9 9C9.55228 9 10 9.44772 10 10ZM15 11C15.5523 11 16 10.5523 16 10C16 9.44772 15.5523 9 15 9C14.4477 9 14 9.44772 14 10C14 10.5523 14.4477 11 15 11Z"/></svg> {__("Emojis")}
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#tab-stickers-{literal}{{id}}{/literal}" data-toggle="tab">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="align-text-top"><path d="M21.9595 11.6608C20.7695 10.9108 19.3895 10.5008 17.9695 10.5008C13.8295 10.5008 10.4695 13.8608 10.4695 18.0008C10.4695 19.4208 10.8695 20.7908 11.6195 21.9808C11.1595 21.9708 10.6895 21.9208 10.2095 21.8508C6.0995 21.1508 2.7895 17.8208 2.1095 13.7008C0.979502 6.85075 6.8195 1.01075 13.6695 2.14075C17.7895 2.82075 21.1195 6.13075 21.8195 10.2408C21.8995 10.7208 21.9495 11.2008 21.9595 11.6608Z"/><path d="M13.3807 21.86C12.5007 20.82 11.9707 19.47 11.9707 18C11.9707 14.69 14.6607 12 17.9707 12C19.4407 12 20.7907 12.53 21.8307 13.41"/></svg> {__("Stickers")}
                    </a>
                </li>
            </ul>
        </div>
    </script>
    <!-- Emoji Menu -->


    <!-- Chat -->
    {if $system['chat_enabled'] && $user->_data['user_privacy_chat'] != "me" && $page != "live" && $page != "messages" && $page != "started" && $page != "reels"}
        <!-- Chat Sidebar -->
        <div class="chat-sidebar {if !$user->_data['user_chat_enabled']}disabled{/if}">
			<div class="dropdown text-center">
				<div class="btn btn-mat btn-mat-raised ele_chat_side_btn" data-toggle="dropdown" role="button" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="ai ai-Gear"><path d="M14 3.269C14 2.568 13.432 2 12.731 2H11.27C10.568 2 10 2.568 10 3.269v0c0 .578-.396 1.074-.935 1.286-.085.034-.17.07-.253.106-.531.23-1.162.16-1.572-.249v0a1.269 1.269 0 0 0-1.794 0L4.412 5.446a1.269 1.269 0 0 0 0 1.794v0c.41.41.48 1.04.248 1.572a7.946 7.946 0 0 0-.105.253c-.212.539-.708.935-1.286.935v0C2.568 10 2 10.568 2 11.269v1.462C2 13.432 2.568 14 3.269 14v0c.578 0 1.074.396 1.286.935.034.085.07.17.105.253.231.531.161 1.162-.248 1.572v0a1.269 1.269 0 0 0 0 1.794l1.034 1.034a1.269 1.269 0 0 0 1.794 0v0c.41-.41 1.04-.48 1.572-.249.083.037.168.072.253.106.539.212.935.708.935 1.286v0c0 .701.568 1.269 1.269 1.269h1.462c.701 0 1.269-.568 1.269-1.269v0c0-.578.396-1.074.935-1.287.085-.033.17-.068.253-.104.531-.232 1.162-.161 1.571.248v0a1.269 1.269 0 0 0 1.795 0l1.034-1.034a1.269 1.269 0 0 0 0-1.794v0c-.41-.41-.48-1.04-.249-1.572.037-.083.072-.168.106-.253.212-.539.708-.935 1.286-.935v0c.701 0 1.269-.568 1.269-1.269V11.27c0-.701-.568-1.269-1.269-1.269v0c-.578 0-1.074-.396-1.287-.935a7.755 7.755 0 0 0-.105-.253c-.23-.531-.16-1.162.249-1.572v0a1.269 1.269 0 0 0 0-1.794l-1.034-1.034a1.269 1.269 0 0 0-1.794 0v0c-.41.41-1.04.48-1.572.249a7.913 7.913 0 0 0-.253-.106C14.396 4.343 14 3.847 14 3.27v0z"/><path d="M16 12a4 4 0 1 1-8 0 4 4 0 0 1 8 0z"/></svg></div>
				<div class="dropdown-menu dropdown-menu-right" role="menu" style="">
					<a class="dropdown-item" href="{$system['system_url']}/settings/blocking">{__("Manage Blocking")}</a>
					<a class="dropdown-item" href="{$system['system_url']}/settings/privacy">{__("Privacy Settings")}</a>
					<div class="dropdown-divider"></div>
					{if $user->_data['user_chat_enabled']}
						<div class="dropdown-item pointer js_chat-toggle" data-status="on"><span class="js_chat-toggle-text">{__("Turn Off Active Status")}</span></div>
					{else}
						<div class="dropdown-item pointer js_chat-toggle" data-status="off"><span class="js_chat-toggle-text">{__("Turn On Active Status")}</span></div>
					{/if}
				</div>
			</div>
			<div class="chat-sidebar-inner ele_scroll">
				<div class="btn btn-mat btn-mat-raised ele_chat_side_btn js_chat-new" href="{$system['system_url']}/messages/new"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16.474 5.408l2.118 2.117m-.756-3.982L12.109 9.27a2.118 2.118 0 0 0-.58 1.082L11 13l2.648-.53c.41-.082.786-.283 1.082-.579l5.727-5.727a1.853 1.853 0 1 0-2.621-2.621z"/><path d="M19 15v3a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2h3"/></svg></div>

				<div class="chat-sidebar-content custom-scrollbar">
					<div class="js_scroller">
						{if $sidebar_friends}
							<!-- Online -->
							<div class="js_chat-contacts-online">
								{foreach $sidebar_friends as $_user}
									{if $_user['user_is_online']}
										<div class="data-container js_chat-start"
										  data-uid="{$_user['user_id']}"
										  data-name="{$_user['user_fullname']}"
										  data-link="{$_user['user_name']}"
										  data-picture="{$_user['user_picture']}"
										  title="{$_user['user_fullname']}">

											<div class="data-avatar">
												<img src="{$_user['user_picture']}" alt="" />
												<svg xmlns="http://www.w3.org/2000/svg" width="9" height="9" viewBox="0 0 24 24"><path fill="currentColor" d="M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z" /></svg>
											</div>
										</div>
									{/if}
								{/foreach}
							</div>
							<!-- Online -->
							<!-- Offline -->
							<div class="js_chat-contacts-offline">
								{foreach $sidebar_friends as $_user}
									{if !$_user['user_is_online']}
										<div class="data-container js_chat-start"
										  data-uid="{$_user['user_id']}"
										  data-name="{$_user['user_fullname']}"
										  data-link="{$_user['user_name']}"
										  data-picture="{$_user['user_picture']}">

											<div class="data-avatar">
												<img src="{$_user['user_picture']}" alt="" />
											</div>

											{if $system['chat_status_enabled']}
												<span class="position-absolute text-center chat_last_see_time"><span class="js_moment" data-time="{$_user['user_last_seen']}">{$_user["user_last_seen"]}</span></span>
											{/if}
										</div>
									{/if}
								{/foreach}
							</div>
							<!-- Offline -->
						{else}
							<div class="chat_skel"></div><div class="chat_skel"></div><div class="chat_skel"></div><div class="chat_skel"></div><div class="chat_skel"></div>
						{/if}
					</div>
				</div>
			</div>
			<div class="ele_chat_offline"></div>
        </div>
        <!-- Chat Sidebar -->
    {/if}

    <script id="chat-box-new" type="text/template">
        <div class="chat-widget chat-box opened fresh">
            <!-- head -->
			<div class="valign justify-content-between chat-widget-head">
				<div class="d-inline-flex align-items-center ele_chat_hdr_usr position-relative">
					<a class="body_color bold truncate">{__("New Message")}</a>
				</div>
                <!-- buttons-->
                <div class="ele_chat_hdr_btns">
					<svg xmlns="http://www.w3.org/2000/svg" class="js_chat-box-close" width="20" height="20" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg>
                </div>
                <!-- buttons-->
            </div>
            <!-- head -->
            <!-- content -->
            <div class="chat-widget-content">
                <div class="chat-conversations js_scroller"></div>
                <div class="chat-to clearfix js_autocomplete-tags">
                    <div class="to">{__("To")}:</div>
                    <ul class="tags"></ul>
                    <div class="typeahead">
                        <input type="text" size="1" autofocus>
                    </div>
                </div>
                <div class="chat-voice-notes">
					<div class="voice-recording-wrapper" data-handle="chat">
                        <!-- processing message -->
						<div class="x-hidden js_voice-processing-message">
							<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="#ef4c5d" d="M8 18c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm4 4c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1s-1 .45-1 1v18c0 .55.45 1 1 1zm-8-8c.55 0 1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1v2c0 .55.45 1 1 1zm12 4c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm3-7v2c0 .55.45 1 1 1s1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1z"></path></svg> {__("Processing")} {__("Voice Notes")}<span class="loading-dots"></span>
						</div>
                        <!-- processing message -->

                        <!-- success message -->
						<div class="x-hidden js_voice-success-message">
							<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Voice note recorded successfully")}
							<div class="float-right">
								<button type="button" class="btn btn-mat btn-voice-clear js_voice-remove">{__("Clear")}</button>
							</div>
						</div>
                        <!-- success message -->

                        <!-- start recording -->
						<div class="btn btn-mat btn-voice-start js_voice-start">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3zm5.91-3c-.49 0-.9.36-.98.85C16.52 14.2 14.47 16 12 16s-4.52-1.8-4.93-4.15c-.08-.49-.49-.85-.98-.85-.61 0-1.09.54-1 1.14.49 3 2.89 5.35 5.91 5.78V20c0 .55.45 1 1 1s1-.45 1-1v-2.08c3.02-.43 5.42-2.78 5.91-5.78.1-.6-.39-1.14-1-1.14z"></path></svg> {__("Record")}
						</div>
                        <!-- start recording -->

                        <!-- stop recording -->
						<div class="btn btn-mat btn-voice-stop js_voice-stop" style="display: none">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M8 6h8c1.1 0 2 .9 2 2v8c0 1.1-.9 2-2 2H8c-1.1 0-2-.9-2-2V8c0-1.1.9-2 2-2z"></path></svg> {__("Recording")} <span class="js_voice-timer">00:00</span>
						</div>
                        <!-- stop recording -->
                    </div>
                </div>
                <div class="chat-attachments attachments clearfix x-hidden">
                    <ul>
                        <li class="loading">
							<div class="progress x-progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
                        </li>
                    </ul>
                </div>
                <div class="x-form chat-form invisible">
                    <div class="chat-form-message">
                        <textarea class="js_autosize js_post-message" dir="auto" rows="1" placeholder='{__("Write a message")}'></textarea>
                    </div>
					<ul class="x-form-tools clearfix">
                        {if $system['chat_photos_enabled']}
                            <li class="x-form-tools-attach align-middle">
								<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" data-handle="chat"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="15" y1="8" x2="15.01" y2="8"></line><rect x="4" y="4" width="16" height="16" rx="3"></rect><path d="M4 15l4 -4a3 5 0 0 1 3 0l5 5"></path><path d="M14 14l1 -1a3 5 0 0 1 3 0l2 2"></path></svg>
                            </li>
                        {/if}
                        {if $system['voice_notes_chat_enabled']}
                            <li class="x-form-tools-voice align-middle js_chat-voice-notes-toggle">
								<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="9" y="2" width="6" height="11" rx="3"></rect><path d="M5 10a7 7 0 0 0 14 0"></path><line x1="8" y1="21" x2="16" y2="21"></line><line x1="12" y1="17" x2="12" y2="21"></line></svg>
                            </li>
                        {/if}
                        <li class="x-form-tools-emoji align-middle js_emoji-menu-toggle">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="9" y1="10" x2="9.01" y2="10"></line><line x1="15" y1="10" x2="15.01" y2="10"></line><path d="M9.5 15a3.5 3.5 0 0 0 5 0"></path></svg>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- content -->
        </div>
    </script>

    <script id="chat-box" type="text/template">
        <div class="chat-widget chat-box opened" id="{literal}{{chat_key_value}}{/literal}" 
        {literal}{{#conversation_id}}{/literal}data-cid="{literal}{{conversation_id}}{/literal}"{literal}{{/conversation_id}}{/literal}
        {literal}{{#user_id}}{/literal}data-uid="{literal}{{user_id}}{/literal}"{literal}{{/user_id}}{/literal}>
            <!-- head -->
            <div class="valign justify-content-between chat-widget-head">
				<div class="d-inline-flex align-items-center ele_chat_hdr_usr position-relative">
					{literal}{{^multiple}}{/literal}
						<a href="{$system['system_url']}/{literal}{{link}}{/literal}" title="{literal}{{name_list}}{/literal}" class="body_color bold truncate">
							<span class="position-relative mr5">
								<img src="{literal}{{picture}}{/literal}" width="25" height="25" class="rounded-circle">
								<i class="fa fa-circle offline js_chat-box-status"></i>
							</span>
							{literal}{{name}}{/literal}
						</a>
					{literal}{{/multiple}}{/literal}
					{literal}{{#multiple}}{/literal}
						<a href="{$system['system_url']}/messages/{literal}{{link}}{/literal}" title="{literal}{{name_list}}{/literal}" class="body_color bold truncate">{literal}{{name}}{/literal}</a>
					{literal}{{/multiple}}{/literal}
					<!-- label -->
					<div class="chat-head-label ml5"><span class="badge rounded-circle badge-danger js_chat-box-label"></span></div>
					<!-- label -->
				</div>
                <!-- buttons-->
                <div class="ele_chat_hdr_btns">
                    <!-- video/audio calls (not multiple) -->
                    {literal}{{^multiple}}{/literal}
                        {if $system['audio_call_enabled'] && $user->_data['can_start_audio_call']}
							<svg xmlns="http://www.w3.org/2000/svg" class="mr10 js_chat-call-start audio" width="20" height="20" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" data-type="audio" data-uid="{literal}{{user_id}}{/literal}" data-name="{literal}{{name_list}}{/literal}" data-picture="{literal}{{picture}}{/literal}"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M5 4h4l2 5l-2.5 1.5a11 11 0 0 0 5 5l1.5 -2.5l5 2v4a2 2 0 0 1 -2 2a16 16 0 0 1 -15 -15a2 2 0 0 1 2 -2"></path><path d="M15 7a2 2 0 0 1 2 2"></path><path d="M15 3a6 6 0 0 1 6 6"></path></svg>
                        {/if}
                        {if $system['video_call_enabled'] && $user->_data['can_start_video_call']}
							<svg xmlns="http://www.w3.org/2000/svg" class="mr10 js_chat-call-start video" width="20" height="20" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" data-type="video" data-uid="{literal}{{user_id}}{/literal}" data-name="{literal}{{name_list}}{/literal}" data-picture="{literal}{{picture}}{/literal}"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M15 10l4.553 -2.276a1 1 0 0 1 1.447 .894v6.764a1 1 0 0 1 -1.447 .894l-4.553 -2.276v-4z"></path><rect x="3" y="6" width="12" height="12" rx="2"></rect><line x1="7" y1="12" x2="11" y2="12"></line><line x1="9" y1="10" x2="9" y2="14"></line></svg>
                        {/if}
                    {literal}{{/multiple}}{/literal}
                    <!-- video/audio calls (not multiple) -->
					<svg xmlns="http://www.w3.org/2000/svg" class="js_chat-box-close" width="20" height="20" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg>
                </div>
                <!-- buttons-->
            </div>
            <!-- head -->
            <!-- content -->
            <div class="chat-widget-content">
				<div class="chat-conversations js_scroller">
					<ul></ul>
				</div>
                <div class="chat-typing">
					<div class="typing_loader_prnt"><div class="d-none js_chat-typing-users"></div><span></span><span></span><span></span></div>
                </div>
                <div class="chat-voice-notes">
                    <div class="voice-recording-wrapper" data-handle="chat">
                        <!-- processing message -->
						<div class="x-hidden js_voice-processing-message">
							<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="#ef4c5d" d="M8 18c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm4 4c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1s-1 .45-1 1v18c0 .55.45 1 1 1zm-8-8c.55 0 1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1v2c0 .55.45 1 1 1zm12 4c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm3-7v2c0 .55.45 1 1 1s1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1z"></path></svg> {__("Processing")} {__("Voice Notes")}<span class="loading-dots"></span>
						</div>
                        <!-- processing message -->

                        <!-- success message -->
						<div class="x-hidden js_voice-success-message">
							<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Voice note recorded successfully")}
							<div class="float-right">
								<button type="button" class="btn btn-mat btn-voice-clear js_voice-remove">{__("Clear")}</button>
							</div>
						</div>
                        <!-- success message -->

                        <!-- start recording -->
						<div class="btn btn-mat btn-voice-start js_voice-start">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3zm5.91-3c-.49 0-.9.36-.98.85C16.52 14.2 14.47 16 12 16s-4.52-1.8-4.93-4.15c-.08-.49-.49-.85-.98-.85-.61 0-1.09.54-1 1.14.49 3 2.89 5.35 5.91 5.78V20c0 .55.45 1 1 1s1-.45 1-1v-2.08c3.02-.43 5.42-2.78 5.91-5.78.1-.6-.39-1.14-1-1.14z"></path></svg> {__("Record")}
						</div>
                        <!-- start recording -->

                        <!-- stop recording -->
						<div class="btn btn-mat btn-voice-stop js_voice-stop" style="display: none">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M8 6h8c1.1 0 2 .9 2 2v8c0 1.1-.9 2-2 2H8c-1.1 0-2-.9-2-2V8c0-1.1.9-2 2-2z"></path></svg> {__("Recording")} <span class="js_voice-timer">00:00</span>
						</div>
                        <!-- stop recording -->
                    </div>
                </div>
                <div class="chat-attachments attachments clearfix x-hidden">
                    <ul>
                        <li class="loading">
                            <div class="progress x-progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
                        </li>
                    </ul>
                </div>
                <div class="x-form chat-form">
                    <div class="chat-form-message">
                        <textarea class="js_autosize js_post-message" dir="auto" rows="1" placeholder='{__("Write a message")}'></textarea>
                    </div>
                    <ul class="x-form-tools clearfix">
                        {if $system['chat_photos_enabled']}
                            <li class="x-form-tools-attach align-middle">
								<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" data-handle="chat"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="15" y1="8" x2="15.01" y2="8"></line><rect x="4" y="4" width="16" height="16" rx="3"></rect><path d="M4 15l4 -4a3 5 0 0 1 3 0l5 5"></path><path d="M14 14l1 -1a3 5 0 0 1 3 0l2 2"></path></svg>
                            </li>
                        {/if}
                        {if $system['voice_notes_chat_enabled']}
                            <li class="x-form-tools-voice align-middle js_chat-voice-notes-toggle">
								<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="9" y="2" width="6" height="11" rx="3"></rect><path d="M5 10a7 7 0 0 0 14 0"></path><line x1="8" y1="21" x2="16" y2="21"></line><line x1="12" y1="17" x2="12" y2="21"></line></svg>
                            </li>
                        {/if}
                        <li class="x-form-tools-emoji align-middle js_emoji-menu-toggle">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="9" y1="10" x2="9.01" y2="10"></line><line x1="15" y1="10" x2="15.01" y2="10"></line><path d="M9.5 15a3.5 3.5 0 0 0 5 0"></path></svg>
                        </li>
                        <li class="x-form-tools-colors d-inline-block align-middle js_chat-colors-menu-toggle js_chat-color-me {literal}{{^conversation_id}}{/literal}x-hidden{literal}{{/conversation_id}}{/literal}">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="currentColor" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /></svg>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- content -->
        </div>
    </script>

    <script id="chat-message" type="text/template">
        <li>
            <div class="conversation clearfix right" id="{literal}{{id}}{/literal}">
                <div class="conversation-body">
					<div class="text js_chat-color-me" {literal}{{#color}}{/literal}style="background-color: {literal}{{color}}{/literal}" {literal}{{/color}}{/literal}>
                        {literal}{{{message}}}{/literal}
                        {literal}{{#image}}{/literal}
                            <span class="text-link js_lightbox-nodata {literal}{{#message}}{/literal}mt5{literal}{{/message}}{/literal}" data-image="{$system['system_uploads']}/{literal}{{image}}{/literal}">
                                <img alt="" class="img-fluid" src="{$system['system_uploads']}/{literal}{{image}}{/literal}">
                            </span>
                        {literal}{{/image}}{/literal}

                        {literal}{{#voice_note}}{/literal}
                            <audio class="js_audio" id="audio-{literal}{{id}}{/literal}" controls preload="auto" style="width: 100%; min-width: 100px;">
                                <source src="{$system['system_uploads']}/{literal}{{voice_note}}{/literal}" type="audio/mpeg">
                                <source src="{$system['system_uploads']}/{literal}{{voice_note}}{/literal}" type="audio/mp3">
                                {__("Your browser does not support HTML5 audio")}
                            </audio>
                        {literal}{{/voice_note}}{/literal}
                    </div>
                    <div class="time js_moment" data-time="{literal}{{time}}{/literal}">
                        {literal}{{time}}{/literal}
                    </div>
                </div>
            </div>
        </li>
    </script>

    <script id="chat-calling" type="text/template">
        <div class="modal-header border-0">
            <h6 class="modal-title  mx-auto">
                {literal}{{#is_video}}{/literal}<i class="fa fa-video mr5"></i>{literal}{{/is_video}}{/literal}
                {literal}{{#is_audio}}{/literal}<i class="fa fa-phone-volume mr5"></i>{literal}{{/is_audio}}{/literal}
                {__("Outgoing call")}
            </h6>
        </div>
        <div class="modal-body text-center">
            <div class="position-relative mb10">
				<div class="profile-avatar-wrapper static mx-auto">
					<img src="{literal}{{picture}}{/literal}" alt="{literal}{{name}}{/literal}">
				</div>
			</div>
			<h3>{literal}{{name}}{/literal}</h3>
            <p class="js_chat-calling-message">{__("Connecting")}<span class="loading-dots"></span></p>
            
            <div class="video-call-stream-wrapper">
                <div class="video-call-stream"></div>
                <div class="video-call-stream-local"></div>
            </div>

            <div class="mt30">
                <button type="button" class="btn btn-light x-hidden js_chat-call-close" data-dismiss="modal">{__("Close")}</button>
                <button type="button" class="btn btn-icon btn-rounded btn-danger p-3 x-hidden js_chat-call-cancel" data-dismiss="modal">
                    <i class="fas fa-phone-slash fa-lg fa-fw"></i>
                </button>
                <button type="button" class="btn btn-icon btn-rounded btn-danger p-3 x-hidden js_chat-call-end" data-dismiss="modal">
                    <i class="fas fa-phone-slash fa-lg fa-fw"></i>
                </button>
            </div>
        </div>
    </script>

    <script id="chat-ringing" type="text/template">
        <div class="modal-header border-0">
            <h6 class="modal-title mx-auto">
                {literal}{{#is_video}}{/literal}<i class="fa fa-video mr5"></i>{__("Incoming call")}{literal}{{/is_video}}{/literal}
                {literal}{{#is_audio}}{/literal}<i class="fa fa-phone-volume mr5"></i>{__("Incoming call")}{literal}{{/is_audio}}{/literal}
            </h6>
        </div>
        <div class="modal-body text-center">
            <div class="position-relative mb10">
                <div class="profile-avatar-wrapper static mx-auto">
                    <img src="{literal}{{picture}}{/literal}" alt="{literal}{{name}}{/literal}">
                </div>
            </div>
            <h3>{literal}{{name}}{/literal}</h3>
            {literal}{{#is_video}}{/literal}<p class="js_chat-calling-message">{__("Wants to have video call with you")}</p>{literal}{{/is_video}}{/literal}
            {literal}{{#is_audio}}{/literal}<p class="js_chat-calling-message">{__("Wants to have audio call with you")}</p>{literal}{{/is_audio}}{/literal}
            
            <div class="video-call-stream-wrapper">
                <div class="video-call-stream"></div>
                <div class="video-call-stream-local"></div>
            </div>

            <div class="mt30">
                <button type="submit" class="btn btn-icon btn-rounded btn-success p-3 mr10 js_chat-call-answer" data-id="{literal}{{id}}{/literal}">
					{literal}{{#is_video}}{/literal}<i class="fas fa-video fa-lg fa-fw mr5"></i>{literal}{{/is_video}}{/literal}
					{literal}{{#is_audio}}{/literal}<i class="fas fa-phone-alt fa-lg fa-fw mr5"></i>{literal}{{/is_audio}}{/literal}
				</button>
                <button type="button" class="btn btn-icon btn-rounded btn-danger p-3 js_chat-call-decline" data-id="{literal}{{id}}{/literal}" data-dismiss="modal"><i class="fas fa-phone-slash fa-lg fa-fw"></i></button>
                <button type="button" class="btn btn-icon btn-rounded btn-danger p-3 x-hidden js_chat-call-end" data-id="{literal}{{id}}{/literal}" data-dismiss="modal"><i class="fas fa-phone-slash fa-lg fa-fw"></i></button>
            </div>
        </div>
        <div class="modal-footer border-0"></div>
    </script>

    <script id="chat-colors-menu" type="text/template">
        <div class="chat-colors-menu">
            <div class="valign flex-wrap js_scroller" data-slimScroll-height="240">
                <div class="pointer item js_chat-color" data-color="#5e72e4" style="color: #5e72e4;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#0ba05d" style="color: #0ba05d;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#ed9e6a" style="color: #ed9e6a;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#a085e2" style="color: #a085e2;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#01a5a5" style="color: #01a5a5;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#2b87ce" style="color: #2b87ce;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#ff72d2" style="color: #ff72d2;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#c9605e" style="color: #c9605e;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#056bba" style="color: #056bba;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#fc9cde" style="color: #fc9cde;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#70a0e0" style="color: #70a0e0;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#f2812b" style="color: #f2812b;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#8ec96c" style="color: #8ec96c;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#f33d4c" style="color: #f33d4c;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#aa2294" style="color: #aa2294;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#0e71ea" style="color: #0e71ea;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#b582af" style="color: #b582af;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#a1ce79" style="color: #a1ce79;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#56c4c5" style="color: #56c4c5;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#f9a722" style="color: #f9a722;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#f9c270" style="color: #f9c270;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#609b41" style="color: #609b41;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#51bcbc" style="color: #51bcbc;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#008484" style="color: #008484;">
                    <div></div>
                </div>
                <div class="pointer item js_chat-color" data-color="#5462a5" style="color: #5462a5;">
                    <div></div>
                </div>
            </div>
        </div>
    </script>

    <script id="chat-attachments-item" type="text/template">
        <li class="item deletable" data-src="{literal}{{src}}{/literal}">
            <img alt="" src="{literal}{{image_path}}{/literal}">
            <button type="button" class="close js_chat-attachment-remover" title='{__("Remove")}'><span>&times;</span></button>
        </li>
    </script>
    <!-- Chat -->

    
    <!-- DayTime Messages -->
    {if $system['daytime_msg_enabled'] && $page == "index"}
        <script id="message-morning" type="text/template">
            <div class="card bg-transparent border-0 m-0 daytime_message morning">
                <button type="button" class="close float-right d-none js_daytime-remover"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" opacity=".45" d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path></svg></button>
				<h3>{__("Good Morning")}, {$user->_data['user_fullname']}</h3>
				<p>{__($system['system_morning_message'])}</p>
            </div>
        </script>

        <script id="message-afternoon" type="text/template">
            <div class="card bg-transparent border-0 m-0 daytime_message noon">
                <button type="button" class="close float-right d-none js_daytime-remover"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" opacity=".45" d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path></svg></button>
				<h3>{__("Good Afternoon")}, {$user->_data['user_fullname']}</h3>
				<p>{__($system['system_afternoon_message'])}</p>
            </div>
        </script>
        
        <script id="message-evening" type="text/template">
            <div class="card bg-transparent border-0 m-0 daytime_message evening">
                <button type="button" class="close float-right d-none js_daytime-remover"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" opacity=".45" d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path></svg></button>
				<h3>{__("Good Evening")}, {$user->_data['user_fullname']}</h3>
				<p>{__($system['system_evening_message'])}</p>
            </div>
        </script>
    {/if}
    <!-- DayTime Messages -->


    <!-- Gifts -->
    {if $system['gifts_enabled'] && $page == "profile"}
        <script id="gifts" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fa fa-gift mr5"></i>{__("Gifts")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="js_ajax-forms" data-url="users/gifts.php?do=send&uid={literal}{{uid}}{/literal}">
                <div class="modal-body">
                    <div class="js_scroller" data-slimScroll-height="440">
						<div class="d-flex flex-wrap justify-content-start">
							{foreach from=$gifts item=gift}
								<div style="width: calc(100% / 3); padding: 5px; text-align: center;">
									<input class="x-hidden input-label" type="radio" name="gift" value="{$gift['gift_id']}" id="gift_{$gift['gift_id']}" />
									<label class="button-label-image" for="gift_{$gift['gift_id']}">
										<img src="{$system['system_uploads']}/{$gift['image']}" style="width: 86px!important; height: 86px!important;" />
										{if $system['gifts_points_enabled']}
											<div class="mt5">
												<span class="badge rounded-pill badge-lg bg-success">{$gift['points']} {__("Points")}</span>
											</div>
										{/if}
									</label>
								</div>
							{/foreach}
						</div>
					</div>
                    <!-- error -->
                    <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                    <!-- error -->
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">{__("Send")}</button>
                </div>
            </form>
        </script>

        <script id="gift" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title">
                    <i class="fa fa-gift mr5"></i>
                    {if $system['show_usernames_enabled']}{$gift['user_name']}{else}{$gift['user_firstname']} {$gift['user_lastname']}{/if} {__("sent you a gift")}
                </h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
				{if $system['gifts_points_enabled']}
					<div class="mb5">
						<span class="badge badge-lg rounded-pill bg-success">{$gift['points']} {__("Points")}</span>
					</div>
				{/if}
		  
                <img class="img-fluid" src="{$system['system_uploads']}/{$gift['image']}">
            </div>
        </script>
    {/if}
    <!-- Gifts -->

    <!-- Uploader -->
    <script id="uploader-attachments-image-item" type="text/template">
        <li class="item deletable" data-src="{literal}{{src}}{/literal}">
            <img alt="" src="{literal}{{image_path}}{/literal}">
            <button type="button" class="close {literal}{{#mini}}{/literal}js_publisher-mini-attachment-image-remover{literal}{{/mini}}{/literal}{literal}{{^mini}}{/literal}js_publisher-attachment-image-remover{literal}{{/mini}}{/literal}" title='{__("Remove")}'><span>&times;</span></button>
        </li>
    </script>

    <script id="uploader-attachments-video-item" type="text/template">
        <li class="item deletable" data-src="{literal}{{src}}{/literal}">
            <div class="name">{literal}{{name}}{/literal}</div>
            <button type="button" class="close js_publisher-mini-attachment-video-remover" title='{__("Remove")}'><span>&times;</span></button>
        </li>
    </script>
    <!-- Uploader -->

    <!-- Posts [Publisher|Comments] -->
        <!-- Publisher -->
        <script id="scraper-photo" type="text/template">
			<button type="button" class="btn btn-mat publisher-scraper-remover js_publisher-scraper-remover"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg></button>
            <div class="post-media">
                <div class="post-media-image">
                    <img src="{literal}{{url}}{/literal}">
                </div>
                <div class="post-media-meta">
                    <div class="source">{literal}{{provider}}{/literal}</div>
                </div>
            </div>
        </script>

        <script id="scraper-link" type="text/template">
			<button type="button" class="btn btn-mat publisher-scraper-remover js_publisher-scraper-remover"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg></button>
            <div class="post-media">
                {literal}{{#thumbnail}}{/literal}
                <a class="post-media-image" href="{literal}{{url}}{/literal}" target="_blank">
                    <img src="{literal}{{thumbnail}}{/literal}">
                </a>
                {literal}{{/thumbnail}}{/literal}
                <div class="post-media-meta">
					<a href="{literal}{{url}}{/literal}" target="_blank">
						<div class="source">{literal}{{host}}{/literal}</div>
						<h5 class="truncate title">{literal}{{title}}{/literal}</h5>
						<div class="text">{literal}{{text}}{/literal}</div>
					</a>
                </div>
            </div>
        </script>

        <script id="scraper-media" type="text/template">
			<button type="button" class="btn btn-mat publisher-scraper-remover js_publisher-scraper-remover"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg></button>
            <div>
                {literal}{{{html}}}{/literal}
            </div>
        </script>

        <script id="scraper-player" type="text/template">
            <button type="button" class="btn btn-mat publisher-scraper-remover js_publisher-scraper-remover"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg></button>
            <div>
                <div class="embed-responsive embed-responsive-16by9">
                    {literal}{{{html}}}{/literal}
                </div>
            </div>
        </script>
		
		<script id="scraper-facebook" type="text/template">
			<button type="button" class="btn btn-mat publisher-scraper-remover js_publisher-scraper-remover"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg></button>
			<div>
				<div class="embed-facebook-wrapper">
					{literal}{{{html}}}{/literal}
					<div class="embed-facebook-placeholder ptb30">
						<div class="d-flex justify-content-center">
							<div class="spinner-grow"></div>
						</div>
					</div>
				</div>
			</div>
		</script>

        <script id="poll-option" type="text/template">
            <div class="publisher-meta" data-meta="poll">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="svg-container" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"/><path fill="currentColor" d="M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z"/></svg>
                <input type="text" placeholder='{__("Add an option")}...'>
            </div>
        </script>

        <script id="pubisher-gif" type="text/template">
			<button type="button" class="btn btn-mat publisher-scraper-remover js_publisher-gif-remover"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg></button>
            <div class="post-media">
                <div class="post-media-image">
                    <div class="image rounded-lg" style="background-image:url('{literal}{{src}}{/literal}');"></div>
                </div>
            </div>
        </script>
		
		<script id="publisher-mention-item" type="text/template">
      <div class="publisher-mention-item">
        <div class="publisher-mention-item__avatar">
          <img class="publisher-mention-item__img" src="{literal}{{avatar}}{/literal}" alt="" loading="lazy" draggable="false">
        </div>
        <div class="publisher-mention-item__body">
          <div class="publisher-mention-item__name mention-item-label">{literal}{{value}}{/literal}</div>
        </div>
      </div>
    </script>

    <script id="publisher-hashtag-item" type="text/template">
      <div class="publisher-hashtag-item">
        <div class="publisher-hashtag-item__body">
          <div class="publisher-hashtag-item__name mention-item-label">#{literal}{{value}}{/literal}</div>
        </div>
      </div>
    </script>
        <!-- Publisher -->
		
		
		<!-- AI -->
    {if $system['ai_text_credit_enabled'] || $system['ai_image_credit_enabled']}
      <script id="ai-credit" type="text/template">
        <div class="modal-header">
          <h6 class="modal-title">
            {__("Buy Credits")}
          </h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <form class="js_ajax-forms" data-url="ai/credit.php">
          <div class="modal-body">
            <div class="row">
              <div class="col-12 col-md-5">
                <div class="card-balance">
                  <p>
                    {__("Your Wallet Balance")}
                  </p>
                  <p class="card-balance-value text-primary">
                    {print_money($user->_data['user_wallet_balance'])}
                  </p>
                  <div class="d-flex justify-content-center mt20">
                    <button class="btn btn-md btn-dark w-100" data-toggle="modal" data-url="#wallet-replenish">
                      <i class="fa fa-wallet fa-fw mr5"></i>{__("Add Funds")}
                    </button>
                  </div>
                </div>
              </div>
              <div class="col-12 col-md-7">
                <div class="bs-callout bs-callout-warning mt0">
                  {literal}{{#is_text}}{/literal}
                  {__("Each word costs")} <span class="badge badge-lg bg-light text-primary">{$system['ai_generated_word_cost']}</span> {__("credits")}
                  {literal}{{/is_text}}{/literal}
                  {literal}{{#is_image}}{/literal}
                  {__("Each image costs")} <span class="badge badge-lg bg-light text-primary">{$system['ai_generated_image_cost']}</span> {__("credits")}
                  {literal}{{/is_image}}{/literal}
                </div>
                <div class="form-group">
                  <label class="form-label">
                    {__("How much credits you want to add?")}
                  </label>
                  <input type="number" class="form-control js_ai-credits-amount" name="amount" placeholder="0" {literal}{{#is_text}}{/literal} data-node-cost="{$system['ai_generated_word_cost']}" {literal}{{/is_text}}{/literal} {literal}{{#is_image}}{/literal} data-node-cost="{$system['ai_generated_image_cost']}" {literal}{{/is_image}}{/literal}>
                  <div class="form-text x-hidden js_ai-credits-cost-text">
                    {__("This will cost you")} {$system['system_currency_symbol']}<span class="js_ai-credits-cost"></span>
                  </div>
                </div>
                <!-- error -->
                <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                <!-- error -->
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <input type="hidden" name="handle" value="{literal}{{handle}}{/literal}">
            <button type="submit" class="btn btn-dark">{__("Buy")}</button>
          </div>
        </form>
      </script>
    {/if}
    <!-- AI -->
		

	<!-- Posts & Comments -->
    {if in_array($page, ["index", "profile", "page", "group", "event", "post", "photo", "market", "blogs", "directory", "search", "share", "reels"])}
        <!-- Comments -->
        <script id="comment-attachments-item" type="text/template">
            <li class="item deletable" data-src="{literal}{{src}}{/literal}">
                <img alt="" src="{literal}{{image_path}}{/literal}">
                <button type="button" class="close js_comment-attachment-remover" title='{__("Remove")}'><span>&times;</span></button>
            </li>
        </script>
        <!-- Comments -->

        <!-- Edit (Posts|Comments) -->
        <script id="edit-post" type="text/template">
            <div class="post-edit">
                <div class="x-form post-form">
                    <textarea rows="2" class="js_autosize js_mentions js_update-post-textarea bg-light rounded-lg">{literal}{{text}}{/literal}</textarea>
                    <ul class="x-form-tools clearfix">
                        <li class="x-form-tools-emoji js_emoji-menu-toggle">
                            <i class="far fa-smile-wink fa-lg fa-fw"></i>
                        </li>
                    </ul>
                </div>
                <div class="text-right mt5">
                    <button class="btn btn-sm btn-light btn-mat mr5 js_unedit-post">{__("Cancel")}</button>
                    <button class="btn btn-sm btn-primary btn-mat js_update-post">{__("Save")}</button>
                </div>
            </div>
        </script>
        
        <script id="edit-comment" type="text/template">
            <div class="comment-edit">
                <div class="x-form comment-form">
                    <textarea rows="1" class="js_autosize js_mentions js_update-comment-textarea">{literal}{{text}}{/literal}</textarea>
                    <ul class="x-form-tools clearfix">
                        <li class="x-form-tools-attach">
                            <i class="far fa-image fa-lg fa-fw js_x-uploader" data-handle="comment"></i>
                        </li>
                        <li class="x-form-tools-emoji js_emoji-menu-toggle">
                            <i class="far fa-smile-wink fa-lg fa-fw"></i>
                        </li>
                    </ul>
                </div>
                <div class="comment-attachments attachments clearfix x-hidden">
                    <ul>
                        <li class="loading">
                            <div class="progress x-progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
                        </li>
                    </ul>
                </div>
                <div class="text-right mt5">
                    <button class="btn btn-sm btn-light btn-mat mr5 js_unedit-comment">{__("Cancel")}</button>
                    <button class="btn btn-sm btn-primary btn-mat js_update-comment">{__("Save")}</button>
                </div>
            </div>
        </script>
        <!-- Edit (Posts|Comments) -->

        <!-- Hidden (Posts|Authors) -->
        <script id="hidden-post" type="text/template">
            <div class="post flagged" data-id="{literal}{{id}}{/literal}">
                <div class="text-semibold mb5">{__("Post Hidden")}</div>
                {__("This post will no longer appear to you")} <span class="text-link js_unhide-post">{__("Undo")}</span>
            </div>
        </script>

        <script id="hidden-author" type="text/template">
            <div class="post flagged" data-id="{literal}{{id}}{/literal}">
                {__("You won't see posts from")} {literal}{{name}}{/literal} {__("in News Feed anymore")}. <span class="text-link js_unhide-author" data-author-id="{literal}{{uid}}{/literal}" data-author-name="{literal}{{name}}{/literal}">{__("Undo")}</span>
            </div>
        </script>
        <!-- Hidden (Posts|Authors) -->
		
		{if $system['tips_enabled']}
        <!-- Tips -->
        <script id="send-tip" type="text/template">
          <div class="modal-header">
            <h6 class="modal-title"><i class="fa fa-dollar-sign mr5"></i>{__("Send Tip")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form class="js_ajax-forms" data-url="payments/wallet.php?do=send_tip">
            <div class="modal-body">
           <div class="bs-callout bs-callout-warning mt0">
                {__("Your Wallet Balance")} <span class="badge badge-lg bg-light text-primary">{print_money($user->_data['user_wallet_balance'])}</span>
              </div>
              <div class="form-group">
                <label class="form-control-label">{__("Amount")}</label>
                <div class="input-money {$system['system_currency_dir']}">
                  <span>{$system['system_currency_symbol']}</span>
                  <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount" value="{literal}{{value}}{/literal}">
                </div>
                <span class="form-text">        
                  {__("The minimum amount")}: {print_money($system['tips_min_amount'])} {__("and the maximum")}: {print_money($system['tips_max_amount'])}
                </span>
              </div>
              <!-- error -->
              <div class="alert alert-danger mb0 mt10 x-hidden"></div>
              <!-- error -->
            </div>
            <div class="modal-footer">
              <input type="hidden" name="send_to_id" value="{literal}{{id}}{/literal}">
              <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
              <button type="submit" class="btn btn-primary">{__("Send")}</button>
            </div>
          </form>
        </script>
        <!-- Tips -->
      {/if}
    {/if}
    <!-- Posts [Publisher|Comments] -->

	<!-- Wallet -->
	<script id="wallet-replenish" type="text/template">
		<div class="modal-header">
			<h6 class="modal-title"><i class="fab fa-paypal mr5"></i>{__("Add Funds")}</h6>
			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>
		<form class="js_ajax-forms" data-url="payments/wallet.php?do=wallet_replenish">
			<div class="modal-body">
				<div class="form-group">
					<label class="form-control-label" for="amount">{__("Amount")}</label>
					<div class="input-money {$system['system_currency_dir']}">
						<span>{$system['system_currency_symbol']}</span>
						<input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
					</div>
				</div>
				<!-- error -->
				<div class="alert alert-danger mb0 mt10 x-hidden"></div>
				<!-- error -->
			</div>
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary">{__("Continue")}</button>
			</div>
		</form>
	</script>
    
    {if $page == "wallet"}
        <script id="wallet-transfer" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fa fa-gift mr5"></i>{__("Send Money")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="js_ajax-forms" data-url="payments/wallet.php?do=wallet_transfer">
                <div class="modal-body">
					{if $system['wallet_max_transfer'] != "0"}
						<div class="alert alert-info mb20">{__("The maximum amount you can transfer is")} {print_money($system['wallet_max_transfer'])}</div>
					{/if}
                    <div class="form-group">
                        <label class="form-control-label">{__("Amount")}</label>
                        <div class="input-money {$system['system_currency_dir']}">
                            <span>{$system['system_currency_symbol']}</span>
                            <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="form-control-label" for="send_to">{__("Send To")}</label>
                        <div class="position-relative js_autocomplete">
                            <input type="text" class="form-control" placeholder="{__("Search for user name or email")}" name="send_to" id="send_to" autocomplete="off">
                            <input type="hidden" name="send_to_id">
                        </div>
                    </div>
                    <!-- error -->
                    <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                    <!-- error -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
                    <button type="submit" class="btn btn-primary">{__("Send")}</button>
                </div>
            </form>
        </script>

        <script id="wallet-withdraw-affiliates" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fa fa-exchange-alt mr5"></i>{__("Withdraw Affiliates Credit")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="js_ajax-forms" data-url="payments/wallet.php?do=wallet_withdraw_affiliates">
                <div class="modal-body">
                    <div class="bs-callout bs-callout-warning mt0">
              {__("Your Affiliates Balance")} <span class="badge badge-lg bg-light text-primary">{print_money($user->_data['user_affiliate_balance'])}</span>
            </div>
                    <div class="form-group">
                        <label class="form-control-label" for="amount">{__("Amount")}</label>
                        <div class="input-money {$system['system_currency_dir']}">
                            <span>{$system['system_currency_symbol']}</span>
                            <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
                        </div>
                    </div>
                    <!-- error -->
                    <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                    <!-- error -->
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                </div>
            </form>
        </script>

        <script id="wallet-withdraw-points" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fa fa-piggy-bank mr5"></i>{__("Withdraw Points Credit")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="js_ajax-forms" data-url="payments/wallet.php?do=wallet_withdraw_points">
                <div class="modal-body">
                    <div class="bs-callout bs-callout-warning mt0">
              {__("Your Points Balance")} <span class="badge badge-lg bg-light text-primary">{if $system['points_per_currency'] == 0}0{else}{print_money((((1/$system['points_per_currency'])*$user->_data['user_points'])))}{/if}</span>
            </div>
                    <div class="form-group">
                        <label class="form-control-label" for="amount">{__("Amount")}</label>
                        <div class="input-money {$system['system_currency_dir']}">
                            <span>{$system['system_currency_symbol']}</span>
                            <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
                        </div>
                    </div>
                    <!-- error -->
                    <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                    <!-- error -->
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                </div>
            </form>
        </script>
		
		<script id="wallet-withdraw-market" type="text/template">
			<div class="modal-header">
				<h6 class="modal-title">{include file='__svg_icons.tpl' icon="market" class="main-icon mr10" width="24px" height="24px"}{__("Withdraw Market Credit")}</h6>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
			</div>
			<form class="js_ajax-forms" data-url="payments/wallet.php?do=wallet_withdraw_market">
				<div class="modal-body">
					<div class="bs-callout bs-callout-warning mt0">
              {__("Your Marketplace Balance")} <span class="badge badge-lg bg-light text-primary">{print_money($user->_data['user_market_balance'])}</span>
            </div>
					<div class="form-group">
						<label class="form-control-label" for="amount">{__("Amount")}</label>
						<div class="input-money {$system['system_currency_dir']}">
							<span>{$system['system_currency_symbol']}</span>
							<input class="form-control" type="text" placeholder="0.00" min="1.00" max="1000" name="amount">
						</div>
					</div>
					<!-- error -->
					<div class="alert alert-danger mb0 mt10 x-hidden"></div>
					<!-- error -->
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">{__("Continue")}</button>
				</div>
			</form>
		</script>

        <script id="wallet-withdraw-funding" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fa fa-hand-holding-usd mr5"></i>{__("Withdraw Funding Credit")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="js_ajax-forms" data-url="payments/wallet.php?do=wallet_withdraw_funding">
                <div class="modal-body">
                    <div class="bs-callout bs-callout-warning mt0">
              {__("Your Funding Balance")} <span class="badge badge-lg bg-light text-primary">{print_money($user->_data['user_funding_balance'])}</span>
            </div>
                    <div class="form-group">
                        <label class="form-control-label" for="amount">{__("Amount")}</label>
                        <div class="input-money {$system['system_currency_dir']}">
                            <span>{$system['system_currency_symbol']}</span>
                            <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
                        </div>
                    </div>
                    <!-- error -->
                    <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                    <!-- error -->
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                </div>
            </form>
        </script>
		<script id="wallet-withdraw-monetization" type="text/template">
        <div class="modal-header">
          <h6 class="modal-title"><i class="fa fa-coins mr5"></i>{__("Withdraw Monetization Credit")}</h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form class="js_ajax-forms" data-url="payments/wallet.php?do=wallet_withdraw_monetization">
          <div class="modal-body">
            <div class="bs-callout bs-callout-warning mt0">
              {__("Your Monetization Balance")} <span class="badge badge-lg bg-light text-primary">{print_money($user->_data['user_monetization_balance'])}</span>
            </div>
            <div class="form-group">
              <label class="form-control-label" for="amount">{__("Amount")}</label>
              <div class="input-money {$system['system_currency_dir']}">
                <span>{$system['system_currency_symbol']}</span>
                <input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount">
              </div>
            </div>
            <!-- error -->
            <div class="alert alert-danger mb0 mt10 x-hidden"></div>
            <!-- error -->
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-primary">{__("Continue")}</button>
          </div>
        </form>
      </script>
    {/if}
    <!-- Wallet -->


    <!-- Crop Profile (Picture|Cover) -->
    {if in_array($page, ["started", "profile", "page", "group", "event"])}
        <script id="crop-profile-picture" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fa fa-crop-alt mr5"></i>{__("Crop Picture")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body text-center">
				<div class="alert alert-info mb-20">
					<i class="fa fa-info-circle mr5"></i>{__("Crop animated images will make them static, You can skip the cropping process by clicking on the cancel button")}
				</div>
                <img id="cropped-profile-picture" src="{literal}{{image}}{/literal}" style="max-width: 100%;">
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
                <button type="button" class="btn btn-primary js_crop-picture" data-handle="{literal}{{handle}}{/literal}" data-id="{literal}{{id}}{/literal}">{__("Save")}</button>
            </div>
        </script>
		
		<script id="crop-profile-cover" type="text/template">
        <div class="modal-header">
          <h6 class="modal-title">
            {include file='__svg_icons.tpl' icon="crop" class="main-icon mr10" width="24px" height="24px"}
            {__("Crop Cover")}
          </h6>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
        </div>
        <div class="modal-body text-center">
          <div class="alert alert-info mb-20">
            <i class="fa fa-info-circle mr5"></i>{__("Crop animated images will make them static, You can skip the cropping process by clicking on the cancel button")}
          </div>
          <img id="cropped-profile-cover" src="{literal}{{image}}{/literal}" style="max-width: 100%;">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
          <button type="button" class="btn btn-primary js_crop-cover" data-handle="{literal}{{handle}}{/literal}" data-id="{literal}{{id}}{/literal}">{__("Save")}</button>
        </div>
      </script>
    {/if}
    <!-- Crop Profile (Picture|Cover) -->


    <!-- Download Information -->
    {if $page == "settings"}
        <script id="download-information" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fa fa-cloud-download-alt mr5"></i>{__("Download Your Information")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center">
                    {include file='__svg_icons.tpl' icon="ready" class="mb20" width="100px" height="100px"}
                    <p class="text-lg">{__("Your file is ready to download")}</p>
                    <a href="{$system['system_url']}/settings/download?hash={$user->_data['user_name']}-{$secret}" class="btn btn-md btn-primary bg-gradient-blue border-0 rounded-pill">
                        <i class="fa fa-cloud-download-alt mr10"></i>{__("Download")}
                    </a>
                </div>
            </div>
        </script>
    {/if}
    <!-- Download Information -->


    <!-- Verification Documents -->
    {if $page == "admin"}
        <script id="verification-documents" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fa fa-paperclip mr5"></i>{__("Verification Documents")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                {if $system['verification_docs_required']}
					<div class="form-group form-row">
						<label class="col-md-3 form-control-label">
							{__("Documents")}
						</label>
						<div class="col-sm-9">
							<div class="row">
								<div class="col-sm-6">
									<div class="section-title mb20">
										{literal}{{#is_page}}{/literal}
											{__("Company Incorporation File")}
										{literal}{{/is_page}}{/literal}
										{literal}{{^is_page}}{/literal}
											{__("Personal Photo")}
										{literal}{{/is_page}}{/literal}
									</div>
									<a target="_blank" href="{literal}{{photo}}{/literal}">
										<img class="img-fluid" src="{literal}{{photo}}{/literal}">
									</a>
								</div>
								<div class="col-sm-6">
									<div class="section-title mb20">
										{literal}{{#is_page}}{/literal}
											{__("Company Tax File")}
										{literal}{{/is_page}}{/literal}
										{literal}{{^is_page}}{/literal}
											{__("Passport or National ID")}
										{literal}{{/is_page}}{/literal}
									</div>
									<a target="_blank" href="{literal}{{passport}}{/literal}">
										<img class="img-fluid" src="{literal}{{passport}}{/literal}">
									</a>
								</div>
							</div>
						</div>
					</div>
				{/if}
				{literal}{{#is_page}}{/literal}
					<div class="form-row form-group">
						<label class="col-md-3 form-control-label">
							{__("Business Website")}
						</label>
						<div class="col-sm-9">
							<p class="pt5 pb0">{literal}{{website}}{/literal}</p>
						</div>
					</div>
					<div class="form-row form-group">
						<label class="col-md-3 form-control-label">
							{__("Business Address")}
						</label>
						<div class="col-sm-9">
							<p class="pt5 pb0">{literal}{{address}}{/literal}</p>
						</div>
					</div>
				{literal}{{/is_page}}{/literal}
                <div class="form-group form-row">
                    <label class="col-md-3 form-control-label">
                        {__("Message")}
                    </label>
                    <div class="col-sm-9">
                        <p class="pt5 pb0">{literal}{{message}}{/literal}</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger js_admin-unverify" data-handle="{literal}{{handle}}{/literal}" data-id="{literal}{{node-id}}{/literal}">
                    <i class="fa fa-times mr5"></i>{__("Decline")}
                </button>
                <button class="btn btn-success js_admin-verify" data-handle="{literal}{{handle}}{/literal}" data-id="{literal}{{node-id}}{/literal}">
                    <i class="fa fa-check mr5"></i>{__("Verify")}
                </button>
            </div>
        </script>
    {/if}
    <!-- Verification Documents -->

	<!-- Export CSV -->
    {if $page == "admin"}
		<script id="export-csv" type="text/template">
			<div class="modal-header">
				<h6 class="modal-title">{__("Export CSV")}</h6>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
			</div>
			<form class="js_ajax-forms" data-url="admin/export.php">
				<div class="modal-body">
					<div class="form-group">
						<label class="form-label" for="from_row">{__("Row to begin at")}</label>
						<input type="text" class="form-control" name="from_row" id="from_row" value="0" required autofocus>
					</div>
					<div class="form-group">
						<label class="form-label" for="results">{__("Number of rows")}</label>
						<input type="text" class="form-control" name="results" id="results" value="10" required>
						<div class="form-text">
							{__("Set to 0 to export all results")}
						</div>
					</div>
					<div class="form-group">
						<label class="form-label" for="to">{__("Date range")}</label>
						<div class="input-group">
							<input type="date" class="form-control" name="from" value="{literal}{{from}}{/literal}">
							<input type="date" class="form-control" name="to" value="{literal}{{to}}{/literal}">
						</div>
					</div>
					<!-- error -->
						<div class="alert alert-danger mb0 mt10 x-hidden"></div>
					<!-- error -->
				</div>
				<div class="modal-footer">
					<input type="hidden" name="handle" value="{literal}{{handle}}{/literal}">
					<button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
					<button type="submit" class="btn btn-success">{__("Export")}</button>
				</div>
			</form>
		</script>
    {/if}
    <!-- Export CSV -->

    <!-- Funding -->
    {if $system['funding_enabled'] && in_array($page, ["index", "profile", "page", "group", "post", "directory", "search"])}
        <script id="funding-donate" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title"><i class="fas fa-hand-holding-usd mr5"></i>{__("Donate")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form class="js_ajax-forms" data-url="posts/funding.php?do=donate&post_id={literal}{{post_id}}{/literal}">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="form-control-label" for="amount">{__("Amount")}</label>
                        <div class="input-money {$system['system_currency_dir']}">
                            <span>{$system['system_currency_symbol']}</span>
							<input type="text" class="form-control" placeholder="0.00" min="1.00" max="1000" name="amount" />
                        </div>
                    </div>
                    <!-- error -->
                    <div class="alert alert-danger mb0 mt10 x-hidden"></div>
                    <!-- error -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
                    <button type="submit" class="btn btn-primary">{__("Continue")}</button>
                </div>
            </form>
        </script>
    {/if}
    <!-- Funding -->

		<!-- Payment -->
        <script id="payment" type="text/template">
            <div class="modal-header">
                <h6 class="modal-title">{__("Payment")}</h6>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
				<div id="payment-summry">
				  <div class="plr20 text-start">
					{if $page != "wallet"}
              <div class="mb15" id="payment-coupon-form">
                <div class="w-100 d-flex gap-2">
                  <input type="text" class="form-control form-control-sm" placeholder="{__('Promo code')}" name="payment-promo-code" id="payment-promo-code" data-price="{literal}{{price}}{/literal}" data-handle="{literal}{{handle}}{/literal}">
                  <button type="button" class="btn btn-light btn-sm js_payment-apply-coupon">{__("Apply")}</button>
                  <button type="button" class="btn btn-light btn-sm js_payment-clear-coupon x-hidden">{__("Clear")}</button>
                </div>
                <div class="alert alert-success mt10 x-hidden" id="payment-coupon-success"></div>
                <div class="alert alert-danger mt10 x-hidden" id="payment-coupon-error"></div>
              </div>
              <div class="divider mtb15"></div>
            {/if}
					<div class="mb15">
					  <span>{__("Amount")}</span>
					  <span class="float-right" id="payment-amount">{literal}{{price}}{/literal}</span>
					</div>
					{if $system['payment_vat_enabled']}
					<div class="mb15">
					  <span>{__("VAT")} <small class="text-muted">{get_payment_vat_percentage()}%</small></span>
					  <span class="float-right" id="payment-vat" data-initial-value="{literal}{{vat}}{/literal}">{literal}{{vat}}{/literal}</span>
					</div>
					{/if}
					{if $system['payment_fees_enabled']}
					  <div class="mb15">
						<span>{__("Fees")} <small class="text-muted">{$system['payment_fees_percentage']}%</small></span>
						<span class="float-right" id="payment-fees" data-initial-value="{literal}{{fees}}{/literal}">{literal}{{fees}}{/literal}</span>
					  </div>
					{/if}
					<div class="mb15">
					  <span>{__("Discount")} <small class="text-muted"><span id="payment-discount-percentage">0</span>%</small></span>
					  <span class="float-right text-success"><span class="mr5">-</span><span id="payment-discount-value">0</span></span>
					</div>
					<div class="divider mtb15"></div>
					<div class="mb15">
					  <span><strong class="bold">{__("Total")}</strong></span>
					  <span class="float-right"><strong class="bold" id="payment-total" data-initial-value="{literal}{{total_printed}}{/literal}">{literal}{{total_printed}}{/literal}</strong></span>
					</div>
					<div class="divider mtb15"></div>
					{if $system['wallet_enabled']}
					  {if $page == "packages" && $system['packages_enabled'] && $system['packages_wallet_payment_enabled']}
						{literal}{{^wallet}}{/literal}
						<div>
						  <small class="text-muted"><i>{__("Note: Paying via wallet credit will not be charged any VAT or fees")}</i></small>
						  <div class="divider mtb15"></div>
						</div>
						{literal}{{/wallet}}{/literal}
					  {/if}
					  {if ($page != "packages" && $page != "wallet") && $system['monetization_enabled'] && $system['monetization_wallet_payment_enabled']}
						{literal}{{#subscribe}}{/literal}
						  <div>
							<small class="text-muted"><i>{__("Note: Paying via wallet credit will not be charged any VAT or fees")}</i></small>
							<div class="divider mtb15"></div>
						  </div>
						{literal}{{/subscribe}}{/literal}
					  {/if}
					  {if ($page != "packages" && $page != "wallet") && $system['monetization_enabled'] && $system['monetization_wallet_payment_enabled']}
						{literal}{{#paid_post}}{/literal}
						  <div>
							<small class="text-muted"><i>{__("Note: Paying via wallet credit will not be charged any VAT or fees")}</i></small>
							<div class="divider mtb15"></div>
						  </div>
						{literal}{{/paid_post}}{/literal}
					  {/if}
					  {if ($page != "packages" && $page != "wallet") && $system['funding_enabled'] && $system['funding_wallet_payment_enabled']}
						{literal}{{#donate}}{/literal}
						  <div>
							<small class="text-muted"><i>{__("Note: Paying via wallet credit will not be charged any VAT or fees")}</i></small>
							<div class="divider mtb15"></div>
						  </div>
						{literal}{{/donate}}{/literal}
					  {/if}
					  {if ($page != "packages" && $page != "wallet") && $system['market_enabled'] && $system['market_wallet_payment_enabled']}
						{literal}{{#marketplace}}{/literal}
						  <div>
							<small class="text-muted"><i>{__("Note: Paying via wallet credit")} {if $system['market_cod_payment_enabled']}{__("or Cash On Delivery")}{/if} {__("will not be charged any VAT or fees")}</i></small>
							<div class="divider mtb15"></div>
						  </div>
						{literal}{{/marketplace}}{/literal}
					  {/if}
					{/if}
					<div class="ptb10 text-end">
					  <button type="button" class="btn btn-primary js_payment-pay">{__("Continue")}</button>
					</div>
				  </div>
				</div>
		
				<div id="payment-methods" class="x-hidden">
					<div class="row justify-content-center text-center" style="margin-left: -5px; margin-right: -5px;">
						{if $system['paypal_enabled']}
						  <div class="col-12 plr5">
							<button class="js_payment-paypal btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
							  <i class="fab fa-paypal fa-lg fa-fw mr5" style="color: #00186A;"></i>{__("PayPal")}
							</button>
						  </div>
						{/if}
						{if $system['creditcard_enabled']}
						  <div class="col-12 plr5">
							<button class="js_payment-stripe btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal} {literal}{{#name}}{/literal} data-name="{literal}{{name}}{/literal}" {literal}{{/name}}{/literal} {literal}{{#img}}{/literal} data-img="{literal}{{img}}{/literal}" {literal}{{/img}}{/literal} data-method="credit">
							  <i class="fa fa-credit-card fa-lg fa-fw mr5" style="color: #8798CC;"></i>{__("Credit Card")}
							</button>
						  </div>
						{/if}
						{if $system['alipay_enabled']}
						  <div class="col-12 plr5">
							<button class="js_payment-stripe btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal} {literal}{{#name}}{/literal} data-name="{literal}{{name}}{/literal}" {literal}{{/name}}{/literal} {literal}{{#img}}{/literal} data-img="{literal}{{img}}{/literal}" {literal}{{/img}}{/literal} data-method="alipay">
							  <i class="fab fa-alipay fa-lg fa-fw mr5" style="color: #5B9EDD;"></i>{__("Alipay")}
							</button>
						  </div>
						{/if}
						{if $system['paystack_enabled']}
						  <div class="col-12 plr5">
							<button class="js_payment-paystack btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
							  {include file='__svg_icons.tpl' icon="paystack" width="20px" height="20px" class="mr5"}{__("Paystack")}
							</button>
						  </div>
						{/if}
						{if $system['2checkout_enabled']}
						  <div class="col-12 plr5">
							<button class="btn btn-block btn-payment plr20 mb10" data-toggle="modal" data-url="#twocheckout" data-options='{ "handle": "{literal}{{handle}}{/literal}", "id": "{literal}{{id}}{/literal}", "price": "{literal}{{price}}{/literal}", "total": "{literal}{{total}}{/literal}" }'>
								{include file='__svg_icons.tpl' icon="2co" class="mr5" width="20px" height="20px"}{__("2Checkout")}
							</button>
						  </div>
						{/if}
						{if $system['authorize_net_enabled']}
						  <div class="col-12 plr5">
							  <button class="btn btn-block btn-payment plr20 mb10" data-toggle="modal" data-url="#authorizenet" data-options='{ "handle": "{literal}{{handle}}{/literal}", "id": "{literal}{{id}}{/literal}", "price": "{literal}{{price}}{/literal}", "total": "{literal}{{total}}{/literal}" }'>
								{include file='__svg_icons.tpl' icon="authorize.net" class="mr5" width="20px" height="20px"}{__("Authorize.Net")}
							  </button>
						  </div>
						{/if}
						{if $system['razorpay_enabled']}
						  <div class="col-12 plr5">
							<button class="btn btn-block btn-payment plr20 mb10" data-toggle="modal" data-url="#razorpay" data-options='{ "handle": "{literal}{{handle}}{/literal}", "id": "{literal}{{id}}{/literal}", "price": "{literal}{{price}}{/literal}", "total": "{literal}{{total}}{/literal}" }'>
							  {include file='__svg_icons.tpl' icon="razorpay" width="20px" height="20px" class="mr5"}{__("Razorpay")}
							</button>
						  </div>
						{/if}
						{if $system['cashfree_enabled']}
						  <div class="col-12 plr5">
							<button class="btn btn-block btn-payment plr20 mb10" data-toggle="modal" data-url="#cashfree" data-options='{ "handle": "{literal}{{handle}}{/literal}", "id": "{literal}{{id}}{/literal}", "price": "{literal}{{price}}{/literal}", "total": "{literal}{{total}}{/literal}" }'>
							  {include file='__svg_icons.tpl' icon="cashfree" class="mr5" width="20px" height="20px"}{__("Cashfree")}
							</button>
						  </div>
						{/if}
						{if $system['shift4_enabled']}
						  <div class="col-12 plr5">
							<button class="js_payment-shift4 btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
							  {include file='__svg_icons.tpl' icon="shift4" width="20px" height="20px" class="mr5"}{__("Shift4")}
							</button>
						  </div>
						{/if}
						{if $system['myfatoorah_enabled']}
						  <div class="col-12 plr5">
							  <button class="js_payment-myfatoorah btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
								{include file='__svg_icons.tpl' icon="myfatoorah" class="mr10" width="20px" height="20px"}{__("MyFatoorah")}
							  </button>
						  </div>
						{/if}
						{if $system['epayco_enabled']}
						  <div class="col-12 plr5">
							  <button class="js_payment-epayco btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal} {literal}{{#total}}{/literal} data-total="{literal}{{total}}{/literal}" {literal}{{/total}}{/literal}>
								<img width="20px" height="20px" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/epayco.png" class="mr5">{__("Epayco")}
							  </button>
						  </div>
						{/if}
						{if $system['flutterwave_enabled']}
						  <div class="col-12 plr5">
							  <button class="js_payment-flutterwave btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
								{include file='__svg_icons.tpl' icon="flutterwave" class="mr5" width="20px" height="20px"}{__("Flutterwave")}
							  </button>
						  </div>
						{/if}
						{if $system['verotel_enabled']}
						  <div class="col-12 plr5">
							  <button class="js_payment-verotel btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
								<img width="20px" height="20px" src="{$system['system_url']}/content/themes/{$system['theme']}/images/icons/verotel.png" class="mr5">{__("Verotel")}
							  </button>
						  </div>
						{/if}
						{if $system['mercadopago_enabled']}
						  <div class="col-12 plr5">
							  <button class="js_payment-mercadopago btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
								{include file='__svg_icons.tpl' icon="mercadopago" class="mr5" width="20px" height="20px"}{__("MercadoPago")}
							  </button>
						  </div>
						{/if}
						{if $system['plisio_enabled']}
						  <div class="col-12 plr5">
							  <button class="js_payment-plisio btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
								{include file='__svg_icons.tpl' icon="plisio" class="mr5" width="20px" height="20px"}{__("Plisio")}
							  </button>
						  </div>
						{/if}
						{if $system['coinpayments_enabled']}
						  <div class="col-12 plr5">
							<button class="js_payment-coinpayments btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
							  <i class="fab fa-bitcoin fa-lg fa-fw mr5" style="color: #FFC107;"></i>{__("CoinPayments")}
							</button>
						  </div>
						{/if}
						{if $system['coinbase_enabled']}
						  <div class="col-12 plr5">
							<button class="js_payment-coinbase btn btn-block btn-payment plr20 mb10" data-handle="{literal}{{handle}}{/literal}" {literal}{{#id}}{/literal} data-id="{literal}{{id}}{/literal}" {literal}{{/id}}{/literal} {literal}{{#price}}{/literal} data-price="{literal}{{price}}{/literal}" {literal}{{/price}}{/literal}>
							  {include file='__svg_icons.tpl' icon="coinbase" width="20px" height="20px" class="mr5"}{__("Coinbase")}
							</button>
						  </div>
						{/if}
						{if $system['bank_transfers_enabled']}
						  <div class="col-12 plr5">
							<button class="btn btn-block btn-payment plr20 mb10" data-toggle="modal" data-url="#bank-transfer" data-options='{ "handle": "{literal}{{handle}}{/literal}", "id": "{literal}{{id}}{/literal}", "price": "{literal}{{price}}{/literal}", "total": "{literal}{{total}}{/literal}" }' data-size="large">
							  <i class="fa fa-university fa-lg fa-fw mr5" style="color: #4CAF50;"></i>{__("Bank Transfer")}
							</button>
						  </div>
						{/if}
						{if $system['wallet_enabled']}
						{if $page == "packages" && $system['packages_enabled'] && $system['packages_wallet_payment_enabled']}
						  {literal}{{^wallet}}{/literal}
						  <div class="col-12 plr5">
							<button class="js_payment-wallet-package btn btn-block btn-payment plr20" data-id="{literal}{{id}}{/literal}">
							  <i class="fa fa-wallet fa-lg fa-fw mr5" style="color: #007bff;"></i>{__("Wallet Credit")}
							</button>
						  </div>
						  {literal}{{/wallet}}{/literal}
						{/if}
						{if ($page != "packages" && $page != "wallet") && $system['monetization_enabled'] && $system['monetization_wallet_payment_enabled']}
						  {literal}{{#subscribe}}{/literal}
						  <div class="col-12 plr5">
							<button class="js_payment-wallet-monetization btn btn-block btn-payment plr20" data-id="{literal}{{id}}{/literal}">
							  <i class="fa fa-wallet fa-lg fa-fw mr5" style="color: #007bff;"></i>{__("Wallet Credit")}
							</button>
						  </div>
						  {literal}{{/subscribe}}{/literal}
						{/if}
						{if ($page != "packages" && $page != "wallet") && $system['monetization_enabled'] && $system['monetization_wallet_payment_enabled']}
						{literal}{{#paid_post}}{/literal}
						<div class="col-12 plr5">
							<button class="js_payment-wallet-paid-post btn btn-block btn-payment plr20" data-id="{literal}{{id}}{/literal}">
							  <i class="fa fa-wallet fa-lg fa-fw mr5" style="color: #007bff;"></i>{__("Wallet Credit")}
							</button>
						</div>
						{literal}{{/paid_post}}{/literal}
					  {/if}
						{if ($page != "packages" && $page != "wallet") && $system['funding_enabled'] && $system['funding_wallet_payment_enabled']}
							{literal}{{#donate}}{/literal}
							<div class="col-12 plr5">
								<button class="js_payment-wallet-donate btn btn-block btn-payment plr20" data-id="{literal}{{id}}{/literal}" data-price="{literal}{{price}}{/literal}">
								  <i class="fa fa-wallet fa-lg fa-fw mr5" style="color: #007bff;"></i>{__("Wallet Credit")}
								</button>
							</div>
							{literal}{{/donate}}{/literal}
						  {/if}
						  {if ($page != "packages" && $page != "wallet") && $system['market_enabled'] && $system['market_wallet_payment_enabled']}
							{literal}{{#marketplace}}{/literal}
							<div class="col-12 col-sm-6 mb10">
							  <div class="d-grid">
								<button class="js_payment-wallet-marketplace btn btn-md btn-payment" data-id="{literal}{{id}}{/literal}" data-price="{literal}{{price}}{/literal}">
								  <i class="fa fa-wallet fa-lg fa-fw mr5" style="color: #007bff;"></i>{__("Wallet Credit")}
								</button>
							  </div>
							</div>
							{literal}{{/marketplace}}{/literal}
						  {/if}
					  {/if}
					  {if $system['market_cod_payment_enabled'] && $page == "market"}
							<div class="col-12 col-sm-6 mb10">
							  <div class="d-grid">
								<button class="js_payment-cod-marketplace btn btn-md btn-payment" data-id="{literal}{{id}}{/literal}" data-price="{literal}{{price}}{/literal}">
								  <i class="fa fa-money-bill-wave fa-lg fa-fw mr5" style="color: #28a745;"></i>{__("Cash on Delivery")}
								</button>
							  </div>
							</div>
						{/if}
					</div>
				</div>
            </div>
        </script>
		<!-- Payment -->
		
		<!-- Stripe Payment Element -->
		{if $system['stripe_payment_element_enabled']}
		  <script id="stripe-payment-element" type="text/template">
			<div class="modal-header">
			  <h6 class="modal-title">{__("Payment")}</h6>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
			</div>
			<form id="stripe-payment-element-form">
			  <div class="modal-body">
				<div id="stripe-payment-element-details">
				  <!-- loading -->
				  <div class="text-center">
					<span class="spinner-grow spinner-grow-lg"></span>
				  </div>
				  <!-- loading -->
				</div>
				<!-- error -->
				<div class="alert alert-danger mt15 mb0 x-hidden"></div>
				<!-- error -->
			  </div>
			  <div class="modal-footer">
				<button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
				<button type="submit" class="btn btn-primary"><i class="fa fa-check-circle mr10"></i>{__("Pay")}</button>
			  </div>
			</form>
		  </script>
		{/if}
		<!-- Stripe Payment Element -->

        <!-- 2Checkout -->
        {if $system['2checkout_enabled']}
            <script id="twocheckout" type="text/template">
                <div class="modal-header">
                    <h6 class="modal-title">{include file='__svg_icons.tpl' icon="2co" width="20px" height="20px" class="mr5"}{__("2Checkout")}</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="twocheckout_form">
                    <div class="modal-body">
                        <div class="heading-small mb20">
                            {__("Card Info")}
                        </div>
                        <div class="pl-md-4 pr-md-4">
                            <div class="row">
                                <div class="form-group col-md-12">
                                    <label class="form-control-label">{__("Card Number")}</label>
                                    <input name="card_number" type="text" class="form-control" required autocomplete="off">
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="form-control-label">{__("Exp Month")}</label>
                                    <select name="card_exp_month" class="form-control" required>
                                        {for $i=1 to 12}
                                            <option value="{if $i < 10}0{/if}{$i}">{if $i < 10}0{/if}{$i}</option>
                                        {/for}
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="form-control-label">{__("Exp Year")}</label>
                                    <select name="card_exp_year" class="form-control" required>
                                        {for $i=2024 to 2040}
                                            <option value="{$i}">{$i}</option>
                                        {/for}
                                    </select>
                                </div>
                                <div class="form-group col-md-4">
                                    <label class="form-control-label">{__("CVC")}</label>
                                    <input name="card_cvv" type="text" class="form-control" required autocomplete="off">
                                </div>
                            </div>
                        </div>
                        <div class="heading-small mb20">
                            {__("Billing Information")}
                        </div>
                        <div class="pl-md-4 pr-md-4">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label class="form-control-label">{__("Name")}</label>
                                    <input name="billing_name" type="text" class="form-control" required value="{$user->_data['user_fullname']}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label">{__("Email")}</label>
                                    <input name="billing_email" type="email" class="form-control" required value="{$user->_data['user_email']}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label">{__("Phone")}</label>
                                    <input name="billing_phone" type="text" class="form-control" required value="{$user->_data['user_phone']}">
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label">{__("Address")}</label>
                                    <input name="billing_address" type="text" class="form-control required">
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label">{__("City")}</label>
                                    <input name="billing_city" type="text" class="form-control" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label">{__("State")}</label>
                                    <input name="billing_state" type="text" class="form-control" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label">{__("Country")}</label>
                                    <select name="billing_country" class="form-control" required>
                                        <option value="none">{__("Select Country")}</option>
                                        {foreach $countries as $country}
                                            <option {if $user->_data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_name']}">{$country['country_name']}</option>
                                        {/foreach}
                                    </select>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="form-control-label">{__("Zip Code")}</label>
                                    <input name="billing_zip_code" type="text" class="form-control" required>
                                </div>
                            </div>
                        </div>

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="modal-footer">
              <input type="hidden" name="token" value="" />
            <input type="hidden" name="promo_code" value="{literal}{{promo_code}}{/literal}" />
            <input type="hidden" name="handle" value="{literal}{{handle}}{/literal}">
            <input type="hidden" name="id" value="{literal}{{id}}{/literal}">
            <input type="hidden" name="price" value="{literal}{{price}}{/literal}">
            <input type="hidden" name="total" value="{literal}{{total}}{/literal}">
              <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
              <button type="submit" class="btn btn-primary"><i class="fa fa-check-circle mr10"></i>{__("Pay")}</button>
            </div>
                </form>
            </script>
        {/if}
        <!-- 2Checkout -->
		
		<!-- Authorize.Net -->
		{if $system['authorize_net_enabled']}
		  <script id="authorizenet" type="text/template">
			<div class="modal-header">
			  <h6 class="modal-title">
				{include file='__svg_icons.tpl' icon="authorize.net" class="mr10" width="24px" height="24px"}
				{__("Authorize.Net")}
			  </h6>
			  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
			</div>
			<form id="authorizenet_form">
			  <div class="modal-body">
				<div class="heading-small mb20">
				  {__("Card Info")}
				</div>
				<div class="pl-md-4 pr-md-4">
				  <div class="row">
					<div class="form-group col-md-12">
					  <label class="form-label">{__("Card Number")}</label>
					  <input class="form-control" name="card_number" type="text" required autocomplete="off">
					</div>
					<div class="form-group col-md-4">
					  <label class="form-label">{__("Exp Month")}</label>
					  <select class="form-select" name="card_exp_month" required>
						{for $i=1 to 12}
						  <option value="{if $i < 10}0{/if}{$i}">{if $i < 10}0{/if}{$i}</option>
						{/for}
					  </select>
					</div>
					<div class="form-group col-md-4">
					  <label class="form-label">{__("Exp Year")}</label>
					  <select class="form-select" name="card_exp_year" required>
						{for $i=2024 to 2040}
						  <option value="{$i}">{$i}</option>
						{/for}
					  </select>
					</div>
					<div class="form-group col-md-4">
					  <label class="form-label">{__("CVC")}</label>
					  <input class="form-control"  name="card_cvv" type="text" required autocomplete="off">
					</div>
				  </div>
				</div>
				<div class="heading-small mb20">
				  {__("Billing Information")}
				</div>
				<div class="pl-md-4 pr-md-4">
				  <div class="row">
					<div class="form-group col-md-6">
					  <label class="form-label">{__("Name")}</label>
					  <input class="form-control" name="billing_name" type="text" required value="{$user->_data['user_fullname']}">
					</div>
					<div class="form-group col-md-6">
					  <label class="form-label">{__("Email")}</label>
					  <input class="form-control" name="billing_email" type="email" required value="{$user->_data['user_email']}">
					</div>
					<div class="form-group col-md-6">
					  <label class="form-label">{__("Phone")}</label>
					  <input class="form-control" name="billing_phone" type="text" required value="{$user->_data['user_phone']}">
					</div>
					<div class="form-group col-md-6">
					  <label class="form-label">{__("Address")}</label>
					  <input name="billing_address" type="text" class="form-control required">
					</div>
					<div class="form-group col-md-6">
					  <label class="form-label">{__("City")}</label>
					  <input class="form-control" name="billing_city" type="text" required>
					</div>
					<div class="form-group col-md-6">
					  <label class="form-label">{__("State")}</label>
					  <input class="form-control" name="billing_state" type="text" required>
					</div>
					<div class="form-group col-md-6">
					  <label class="form-label">{__("Country")}</label>
					  <select class="form-select"  name="billing_country" required>
						<option value="none">{__("Select Country")}</option>
						{foreach $countries as $country}
						  <option {if $user->_data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_name']}">{$country['country_name']}</option>
						{/foreach}
					  </select>
					</div>
					<div class="form-group col-md-6">
					  <label class="form-label">{__("Zip Code")}</label>
					  <input class="form-control" name="billing_zip_code" type="text" required>
					</div>
				  </div>
				</div>
				<!-- error -->
				<div class="alert alert-danger mt15 mb0 x-hidden"></div>
				<!-- error -->
			  </div>
			  <div class="modal-footer">
				<input type="hidden" name="promo_code" value="{literal}{{promo_code}}{/literal}" />
            <input type="hidden" name="handle" value="{literal}{{handle}}{/literal}">
            <input type="hidden" name="id" value="{literal}{{id}}{/literal}">
            <input type="hidden" name="price" value="{literal}{{price}}{/literal}">
            <input type="hidden" name="total" value="{literal}{{total}}{/literal}">
				<button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
				<button type="submit" class="btn btn-primary"><i class="fa fa-check-circle mr10"></i>{__("Pay")}</button>
			  </div>
			</form>
		  </script>
		{/if}
		<!-- Authorize.Net -->
		
		<!-- Razorpay -->
      {if $system['razorpay_enabled']}
        <script id="razorpay" type="text/template">
          <div class="modal-header">
            <h6 class="modal-title">{include file='__svg_icons.tpl' icon="razorpay" width="20px" height="20px" class="mr5"}{__("Razorpay")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form id="razorpay_form">
            <div class="modal-body">
              <div class="row">
                <div class="form-group col-md-6">
                  <label class="form-control-label">{__("Name")}</label>
                  <input name="billing_name" type="text" class="form-control" required value="{$user->_data['user_fullname']}" />
                </div>
                <div class="form-group col-md-6">
                  <label class="form-control-label">{__("Email")}</label>
                  <input name="billing_email" type="email" class="form-control" required value="{$user->_data['user_email']}" />
                </div>
                <div class="form-group col-md-6">
                  <label class="form-control-label">{__("Phone")}</label>
                  <input name="billing_phone" type="text" class="form-control" required value="{$user->_data['user_phone']}" />
                </div>
              </div>
              <!-- error -->
              <div class="alert alert-danger mb0 x-hidden"></div>
              <!-- error -->
            </div>
            <div class="modal-footer">
				<input type="hidden" name="promo_code" value="{literal}{{promo_code}}{/literal}" />
              <input type="hidden" name="handle" value="{literal}{{handle}}{/literal}" />
              <input type="hidden" name="id" value="{literal}{{id}}{/literal}" />
              <input type="hidden" name="price" value="{literal}{{price}}{/literal}" />
			  <input type="hidden" name="total" value="{literal}{{total}}{/literal}" />
              <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
              <button type="submit" class="btn btn-primary"><i class="fa fa-check-circle mr10"></i>{__("Pay")}</button>
            </div>
          </form>
        </script>
      {/if}
      <!-- Razorpay -->

      <!-- Cashfree -->
      {if $system['cashfree_enabled']}
        <script id="cashfree" type="text/template">
          <div class="modal-header">
            <h6 class="modal-title">{include file='__svg_icons.tpl' icon="cashfree" class="mr5" width="20px" height="20px"}{__("Cashfree")}</h6>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <form id="cashfree_form">
            <div class="modal-body">
              <div class="row">
                <div class="form-group col-md-6">
                  <label class="form-control-label">{__("Name")}</label>
                  <input name="billing_name" type="text" class="form-control" required value="{$user->_data['user_fullname']}" />
                </div>
                <div class="form-group col-md-6">
                  <label class="form-control-label">{__("Email")}</label>
                  <input name="billing_email" type="email" class="form-control" required value="{$user->_data['user_email']}" />
                </div>
                <div class="form-group col-md-6">
                  <label class="form-control-label">{__("Phone")}</label>
                  <input name="billing_phone" type="text" class="form-control" required value="{$user->_data['user_phone']}" />
                </div>
              </div>
              <!-- error -->
              <div class="alert alert-danger mb0 x-hidden"></div>
              <!-- error -->
            </div>
            <div class="modal-footer">
              <input type="hidden" name="promo_code" value="{literal}{{promo_code}}{/literal}" />
            <input type="hidden" name="handle" value="{literal}{{handle}}{/literal}" />
            <input type="hidden" name="id" value="{literal}{{id}}{/literal}" />
            <input type="hidden" name="price" value="{literal}{{price}}{/literal}" />
            <input type="hidden" name="total" value="{literal}{{total}}{/literal}" />
              <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
              <button type="submit" class="btn btn-primary"><i class="fa fa-check-circle mr10"></i>{__("Pay")}</button>
            </div>
          </form>
        </script>
      {/if}
      <!-- Cashfree -->

        <!-- Bank Transfer -->
        {if $system['bank_transfers_enabled']}
            <script id="bank-transfer" type="text/template">
                <div class="modal-header">
                    <h6 class="modal-title"><i class="fa fa-university mr5"></i>{__("Bank Transfer")}</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="banktransfer_form">
                    <div class="modal-body">
                        <div class="page-header rounded bank-transfer mb30">
                <div class="circle-1"></div>
                <div class="circle-2"></div>
                <div class="inner text-left">
                  {if $system['bank_name']}<h2 class="mb20"><i class="fa fa-university mr5"></i>{$system['bank_name']}</h2>{/if}
                  {if $system['bank_account_number']}
                    <div class="mb10">
                    <div class="bank-info-meta">{$system['bank_account_number']}</div>
                    <span class="bank-info-help">{__("Account Number / IBAN")}</span>
                  </div>
                  {/if}
                  {if $system['bank_account_name']}
                  <div class="mb10">
                    <div class="bank-info-meta">{$system['bank_account_name']}</div>
                    <span class="bank-info-help">{__("Account Name")}</span>
                  </div>
                  {/if}
                  {if $system['bank_account_routing'] || $system['bank_account_country']}
                  <div class="row mb10">
                    {if $system['bank_account_routing']}
                    <div class="col-md-6">
                      <div class="bank-info-meta">{$system['bank_account_routing']}</div>
                      <span class="bank-info-help">{__("Routing Code")}</span>
                    </div>
                    {/if}
                    {if $system['bank_account_country']}
                    <div class="col-md-6">
                      <div class="bank-info-meta">{$system['bank_account_country']}</div>
                      <span class="bank-info-help">{__("Country")}</span>
                    </div>
                    {/if}
                  </div>
                  {/if}
                </div>
              </div>
                        <div class="alert alert-warning">
                            <div class="icon">
                                <i class="fa fa-exclamation-triangle fa-2x"></i>
                            </div>
                            <div class="text">
                                {$system['bank_transfer_note']}
                            </div>
                        </div>
                        <div class="form-group form-row">
                            <label class="col-md-3 form-control-label">
                                {__("Bank Receipt")}
                            </label>
                            <div class="col-md-9">
                                <div class="x-image">
                                    <button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
                                        <span>×</span>
                                    </button>
                                    <div class="x-image-loader">
                                        <div class="progress x-progress">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </div>
                                    <i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
                                    <input type="hidden" class="js_x-uploader-input" name="bank_receipt" value="">

                                </div>
                                <span class="form-text">
                                    {__("Please attach your bank receipt")}
                                </span>
                            </div>
                        </div>

                        <!-- success -->
                        <div class="alert alert-success mb0 x-hidden"></div>
                        <!-- success -->

                        <!-- error -->
                        <div class="alert alert-danger mb0 x-hidden"></div>
                        <!-- error -->
                    </div>
                    <div class="modal-footer">
              <input type="hidden" name="promo_code" value="{literal}{{promo_code}}{/literal}" />
            <input type="hidden" name="handle" value="{literal}{{handle}}{/literal}">
            <input type="hidden" name="id" value="{literal}{{id}}{/literal}">
            <input type="hidden" name="price" value="{literal}{{price}}{/literal}">
            <input type="hidden" name="total" value="{literal}{{total}}{/literal}">
              <button type="button" class="btn btn-light" data-dismiss="modal">{__("Cancel")}</button>
              <button type="submit" class="btn btn-primary"><i class="fa fa-check-circle mr10"></i>{__("Send")}</button>
            </div>
                </form>
            </script>
        {/if}
        <!-- Bank Transfer -->
	
	<!-- Auto Connect -->
    {if $page == "admin" && $view == "tools" && $sub_view == "auto-connect"}
      <script id="auto-connect-node" type="text/template">
        <div class="auto-connect-node">
          <div class="form-group form-row">
            <label class="col-md-3 form-control-label">
              {__("Select")} {literal}{{nodes_name}}{/literal}
            </label>
            <div class="col-md-9">
              <select class="form-control mb10" name="{literal}{{country_field_name}}{/literal}">
                {foreach $countries as $country}
                  <option value="{$country['country_id']}">{$country['country_name']}</option>
                {/foreach}
              </select>
              <input type="text" class="js_tagify-ajax-late x-hidden" data-handle="{literal}{{nodes}}{/literal}" name="{literal}{{nodes_field_name}}{/literal}">
              <span class="form-text">
                {__("Search for nodes you want new accounts to auto connect")} {__("to this country")}
              </span>
            </div>
          </div>
        </div>
      </script>
    {/if}
    <!-- Auto Connect -->
	
	<!-- Blog reference -->
    {if $page == "blogs" && in_array($view, ['edit', 'new'])}
      <script id="blog-reference" type="text/template">
        <div class="auto-connect-node">
          <div class="row form-group">
            <label class="col-md-12 form-label">
              {__("reference")}
            </label>
            <div class="col-md-12">
              <input type="text" class="form-control mb10" name="references[{literal}{{index}}{/literal}][title]" placeholder="{__('Title')}">
              <input type="text" class="form-control mb10" name="references[{literal}{{index}}{/literal}][link]" placeholder="{__('Link')}">
              <div class="form-text">
                {__("Add a reference title and link to cite your source")}
              </div>
            </div>
          </div>
        </div>
      </script>
    {/if}
    <!-- Blog reference -->

{/if}

{/strip}