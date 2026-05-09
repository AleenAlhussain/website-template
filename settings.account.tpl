<h2 class="ele_page_title small mt-n1 mb-4">{__("Account Settings")}</h2>
					
<form class="js_ajax-forms" data-url="users/settings.php?edit=account">
	<div class="heading-small mb-1">
		{__("Email")}
	</div>
	{if !$user->_data['user_email_verified']}
		<div class="alert alert-danger p-3">
			<div class="mb-2 mx-n1">
				<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M19.5099 5.85L13.5699 2.42C12.5999 1.86 11.3999 1.86 10.4199 2.42L4.48992 5.85C3.51992 6.41 2.91992 7.45 2.91992 8.58V15.42C2.91992 16.54 3.51992 17.58 4.48992 18.15L10.4299 21.58C11.3999 22.14 12.5999 22.14 13.5799 21.58L19.5199 18.15C20.4899 17.59 21.0899 16.55 21.0899 15.42V8.58C21.0799 7.45 20.4799 6.42 19.5099 5.85ZM11.2499 7.75C11.2499 7.34 11.5899 7 11.9999 7C12.4099 7 12.7499 7.34 12.7499 7.75V13C12.7499 13.41 12.4099 13.75 11.9999 13.75C11.5899 13.75 11.2499 13.41 11.2499 13V7.75ZM12.9199 16.63C12.8699 16.75 12.7999 16.86 12.7099 16.96C12.5199 17.15 12.2699 17.25 11.9999 17.25C11.8699 17.25 11.7399 17.22 11.6199 17.17C11.4899 17.12 11.3899 17.05 11.2899 16.96C11.1999 16.86 11.1299 16.75 11.0699 16.63C11.0199 16.51 10.9999 16.38 10.9999 16.25C10.9999 15.99 11.0999 15.73 11.2899 15.54C11.3899 15.45 11.4899 15.38 11.6199 15.33C11.9899 15.17 12.4299 15.26 12.7099 15.54C12.7999 15.64 12.8699 15.74 12.9199 15.87C12.9699 15.99 12.9999 16.12 12.9999 16.25C12.9999 16.38 12.9699 16.51 12.9199 16.63Z" fill="currentColor"/></svg>
			</div>
			<div class="text">
				<strong class="bold">{__("Email Verification Required")}</strong><br>
				<p>{__("Check your email inbox")} {__("to complete the verification process")}</p>
				<button class="btn btn-sm btn-mat btn-success" data-toggle="modal" data-url="core/activation_email_resend.php">{__("Resend Verification Email")}</button>
			</div>
		</div>
	{/if}
	<label class="ele_field">
		<input type="email" placeholder=" " name="email" value="{$user->_data['user_email']}">
		<span>{__("Email Address")}</span>
	</label>

	{if ($system['activation_enabled'] && $system['activation_type'] == "sms") || ($system['two_factor_enabled'] && $system['two_factor_type'] == "sms")}
		<hr>
		<div class="heading-small mb-1">
			{__("Phone Number")}
		</div>
		{if $user->_data['user_phone'] && !$user->_data['user_phone_verified']}
			<div class="alert alert-danger p-3">
				<div class="mb-2 mx-n1">
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M19.5099 5.85L13.5699 2.42C12.5999 1.86 11.3999 1.86 10.4199 2.42L4.48992 5.85C3.51992 6.41 2.91992 7.45 2.91992 8.58V15.42C2.91992 16.54 3.51992 17.58 4.48992 18.15L10.4299 21.58C11.3999 22.14 12.5999 22.14 13.5799 21.58L19.5199 18.15C20.4899 17.59 21.0899 16.55 21.0899 15.42V8.58C21.0799 7.45 20.4799 6.42 19.5099 5.85ZM11.2499 7.75C11.2499 7.34 11.5899 7 11.9999 7C12.4099 7 12.7499 7.34 12.7499 7.75V13C12.7499 13.41 12.4099 13.75 11.9999 13.75C11.5899 13.75 11.2499 13.41 11.2499 13V7.75ZM12.9199 16.63C12.8699 16.75 12.7999 16.86 12.7099 16.96C12.5199 17.15 12.2699 17.25 11.9999 17.25C11.8699 17.25 11.7399 17.22 11.6199 17.17C11.4899 17.12 11.3899 17.05 11.2899 16.96C11.1999 16.86 11.1299 16.75 11.0699 16.63C11.0199 16.51 10.9999 16.38 10.9999 16.25C10.9999 15.99 11.0999 15.73 11.2899 15.54C11.3899 15.45 11.4899 15.38 11.6199 15.33C11.9899 15.17 12.4299 15.26 12.7099 15.54C12.7999 15.64 12.8699 15.74 12.9199 15.87C12.9699 15.99 12.9999 16.12 12.9999 16.25C12.9999 16.38 12.9699 16.51 12.9199 16.63Z" fill="currentColor"/></svg>
				</div>
				<div class="text">
					<strong class="bold">{__("Phone Verification Required")}</strong><br>
					<p>{__("Check your phone SMS")} {__("to complete phone verification process")}</p>
					<button class="btn btn-sm btn-mat btn-success" data-toggle="modal" data-url="#activation-phone">{__("Enter Code")}</button>
				</div>
			</div>
		{/if}
		
		<label class="ele_field">
			<input type="tel" placeholder=" " name="phone" value="{$user->_data['user_phone']}">
			<span>{__("Phone Number")}</span>
		</label>
		<span class="help-block">{__("Phone number (e.g: +1234567890)")}</span>
	{/if}

	{if !$system['disable_username_changes']}
		<hr>

		{if $user->_data['user_verified']}
			<div class="alert alert-warning p-3">
				<div class="mb-2 mx-n1">
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM11.25 8C11.25 7.59 11.59 7.25 12 7.25C12.41 7.25 12.75 7.59 12.75 8V13C12.75 13.41 12.41 13.75 12 13.75C11.59 13.75 11.25 13.41 11.25 13V8ZM12.92 16.38C12.87 16.51 12.8 16.61 12.71 16.71C12.61 16.8 12.5 16.87 12.38 16.92C12.26 16.97 12.13 17 12 17C11.87 17 11.74 16.97 11.62 16.92C11.5 16.87 11.39 16.8 11.29 16.71C11.2 16.61 11.13 16.51 11.08 16.38C11.03 16.26 11 16.13 11 16C11 15.87 11.03 15.74 11.08 15.62C11.13 15.5 11.2 15.39 11.29 15.29C11.39 15.2 11.5 15.13 11.62 15.08C11.86 14.98 12.14 14.98 12.38 15.08C12.5 15.13 12.61 15.2 12.71 15.29C12.8 15.39 12.87 15.5 12.92 15.62C12.97 15.74 13 15.87 13 16C13 16.13 12.97 16.26 12.92 16.38Z" fill="currentColor"/></svg>
				</div>
				<div class="text">
					{__("Your account is already verified if you changed your username you will lose the verification badge")}
				</div>
			</div>
		{/if}

		<div class="heading-small mb-1">
			{__("Username")}
		</div>
		
		<label class="ele_field">
			<input type="text" placeholder=" " name="username" value="{$user->_data['user_name']}">
			<span>{__("Username")} ({$system['system_url']}/)</span>
		</label>
		<span class="help-block">{__("Can only contain alphanumeric characters (A–Z, 0–9) and periods ('.')")}</span>
	{/if}
	
	<!-- Secuirty Check -->
	<div class="js_hidden-section x-hidden">
		<div class="border rounded p-3 mb-4">
			<div class="heading-small mb-1 pt-0">
				{__("Secuirty Check")}
			</div>
			<label class="ele_field">
				<input type="password" placeholder=" " name="password">
				<span>{__("Current Password")}</span>
			</label>
			<span class="help-block mb-0">{__("You need to enter your current password for security check")}</span>
		</div>
	</div>
	<!-- Secuirty Check -->
		
	<!-- success -->
	<div class="alert alert-success mb0 x-hidden"></div>
	<!-- success -->

	<!-- error -->
	<div class="alert alert-danger mb0 x-hidden"></div>
	<!-- error -->

	<div class="text-center ele_sett_bott_btn">
		<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
	</div>
</form>