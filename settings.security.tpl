{if $sub_view == "password"}
	<h2 class="ele_page_title small mt-n1 mb-4">{__("Change Password")}</h2>
	
	<form class="js_ajax-forms" data-url="users/settings.php?edit=password">
		<div class="alert alert-warning p-3 mb-4">
			<div class="mb-2 mx-n1">
				<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM11.25 8C11.25 7.59 11.59 7.25 12 7.25C12.41 7.25 12.75 7.59 12.75 8V13C12.75 13.41 12.41 13.75 12 13.75C11.59 13.75 11.25 13.41 11.25 13V8ZM12.92 16.38C12.87 16.51 12.8 16.61 12.71 16.71C12.61 16.8 12.5 16.87 12.38 16.92C12.26 16.97 12.13 17 12 17C11.87 17 11.74 16.97 11.62 16.92C11.5 16.87 11.39 16.8 11.29 16.71C11.2 16.61 11.13 16.51 11.08 16.38C11.03 16.26 11 16.13 11 16C11 15.87 11.03 15.74 11.08 15.62C11.13 15.5 11.2 15.39 11.29 15.29C11.39 15.2 11.5 15.13 11.62 15.08C11.86 14.98 12.14 14.98 12.38 15.08C12.5 15.13 12.61 15.2 12.71 15.29C12.8 15.39 12.87 15.5 12.92 15.62C12.97 15.74 13 15.87 13 16C13 16.13 12.97 16.26 12.92 16.38Z" fill="currentColor"></path></svg>
			</div>
			<div class="text">
				{__("Changing password will log you out from all other sessions")}
			</div>
		</div>
		
		<label class="ele_field">
			<input type="password" name="current" placeholder=" ">
			<span>{__("Confirm Current Password")}</span>
		</label>

		<div class="row">
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="password" name="new" placeholder=" ">
					<span>{__("Your New Password")}</span>
				</label>
			</div>
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="password" name="confirm" placeholder=" ">
					<span>{__("Confirm New Password")}</span>
				</label>
			</div>
		</div>

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

{elseif $sub_view == "sessions"}
	<div class="valign ele_page_hdng border-0 p-0 mt-n1 mb-4 justify-content-between align-items-start align-items-lg-center flex-column flex-lg-row">
		<h2 class="ele_page_title small mb-3 mb-lg-0">{__("Manage Sessions")}</h2>
		<button class="btn btn-sm btn-mat btn-danger js_session-delete-all">
			<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"/></svg> {__("Log Out Of All Sessions")}
		</button>
	</div>

	<div class="table-responsive">
		<table class="table table-hover mb-0">
			<thead>
				<tr>
					<th class="bold">{__("ID")}</th>
					<th class="bold">{__("Browser")}</th>
					<th class="bold">{__("OS")}</th>
					<th class="bold">{__("Date")}</th>
					<th class="bold">{__("IP")}</th>
					<th class="bold">{__("Actions")}</th>
				</tr>
			</thead>
			<tbody>
				{if $sessions}
					{foreach $sessions as $session}
						<tr>
							<td>{$session@iteration}</td>
							<td>
								{$session['user_browser']} {if $session['session_id'] == $user->_data['active_session_id']}<span class="badge badge-pill badge-success">{__("Active Session")}</span>{/if}
							</td>
							<td>{$session['user_os']}</td>
							<td>
								<span class="js_moment" data-time="{$session['session_date']}">{$session['session_date']}</span>
							</td>
							<td>{$session['user_ip']}</td>
							<td>
								<button title='{__("End Session")}' class="btn btn-sm btn-icon btn-rounded btn-danger p-1 js_session-deleter" data-id="{$session['session_id']}" {if $session['session_id'] == $user->_data['active_session_id']} onclick="localStorage.clear();" {/if}>
									<svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"/></svg>
								</button>
							</td>
						</tr>
					{/foreach}
				{else}
					<tr>
						<td colspan="6" class="text-center">{__("No data to show")}</td>
					</tr>
				{/if}
			</tbody>
		</table>
	</div>

{elseif $sub_view == "two-factor"}
	<h2 class="ele_page_title small mt-n1 mb-4">{__("Two-Factor Authentication")}</h2>
	
	<form class="js_ajax-forms" data-url="users/settings.php?edit=two-factor">
		<div class="alert bg-light border p-3 mb-4">
			<div class="mb-2 mx-n1">
				<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M13.25 12C13.9404 12 14.5 11.4404 14.5 10.75C14.5 10.0596 13.9404 9.5 13.25 9.5C12.5596 9.5 12 10.0596 12 10.75C12 11.4404 12.5596 12 13.25 12Z" fill="currentColor"/><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.18C2 19.83 4.17 22 7.81 22H16.18C19.82 22 21.99 19.83 21.99 16.19V7.81C22 4.17 19.83 2 16.19 2ZM15.89 13.47C14.86 14.49 13.39 14.81 12.09 14.4L11.03 15.45C10.94 15.54 10.78 15.54 10.68 15.45L9.71 14.48C9.57 14.34 9.33 14.34 9.18 14.48C9.03 14.62 9.04 14.86 9.18 15.01L10.15 15.98C10.25 16.08 10.25 16.24 10.15 16.33L9.74 16.74C9.57 16.92 9.24 17.03 9 17L7.91 16.85C7.55 16.8 7.22 16.46 7.16 16.1L7.01 15.01C6.97 14.77 7.09 14.44 7.25 14.27L9.6 11.92C9.2 10.62 9.51 9.15 10.54 8.12C12.01 6.65 14.41 6.65 15.89 8.12C17.37 9.59 17.37 11.99 15.89 13.47Z" fill="currentColor"/></svg>
			</div>
			<div class="text">
				<strong class="bold">{__("Two-Factor Authentication")}</strong><br>
					{__("Log in with a code from your")} 
					{if $system['two_factor_type'] == "email"}{__("email")}{/if} 
					{if $system['two_factor_type'] == "sms"}{__("phone")}{/if} 
					{if $system['two_factor_type'] == "google"}{__("Google Authenticator App")}{/if} 
					{__("as well as a password")}
			</div>
		</div>

		{if !$user->_data['user_two_factor_enabled'] && $system['two_factor_type'] == "google"}
			<div class="heading-small mb-1">
				{__("Configuring your authenticator")}
			</div>
			<ol class="mb-3">
				<li class="mb5">
					{__("You need to download Google Authenticator app for")}
					<a target="_blank" href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en">{__("Android")}
						<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="16" height="16" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M11 7h-5a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-5"></path><line x1="10" y1="14" x2="20" y2="4"></line><polyline points="15 4 20 4 20 9"></polyline></svg>
					</a>
					{__("or")}
					<a target="_blank" href="https://apps.apple.com/eg/app/google-authenticator/id388497605">{__("IOS")}
						<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="16" height="16" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M11 7h-5a2 2 0 0 0 -2 2v9a2 2 0 0 0 2 2h9a2 2 0 0 0 2 -2v-5"></path><line x1="10" y1="14" x2="20" y2="4"></line><polyline points="15 4 20 4 20 9"></polyline></svg>
					</a>
				</li>
				<li>
					{__("In your app, add a new account using the details below")}:
				</li>
			</ol>

			<div class="row text-center">
				<div class="form-group col-md-6">
					<h6>{__("Scanning the QR code")}</h6>
					<img src="{$two_factor_QR}">
				</div>
				<div class="form-group col-md-6">
					<h6>{__("Manually by entering this token")}</h6>
					<h3>
						<span class="badge badge-warning pt10 plr20">{$two_factor_gsecret}</span>
					</h3>
				</div>
			</div>
			
			<hr>

			<div class="heading-small mb-1">
				{__("Activate your authenticator")}
			</div>
			<label class="ele_field">
				<input name="gcode" type="text" placeholder=" " required>
				<span>{__("Verification Code")}</span>
			</label>
			<span class="help-block">{__("Enter the code shown on your app")}</span>

			<!-- success -->
			<div class="alert alert-success mb0 x-hidden"></div>
			<!-- success -->

			<!-- error -->
			<div class="alert alert-danger mb0 x-hidden"></div>
			<!-- error -->
		{else}
			<div class="form-table-row">
				<div>
					<div class="form-control-label h6">{__("Two-Factor Authentication")}</div>
					<div class="form-text d-none d-sm-block">{__("Enable two-factor authentication to log in with a code from your email/phone as well as a password")}</div>
				</div>
				<div class="text-right">
					<label class="switch" for="two_factor_enabled">
						<input type="checkbox" name="two_factor_enabled" id="two_factor_enabled" {if $user->_data['user_two_factor_enabled']}checked{/if}>
						<span class="slider round"></span>
					</label>
				</div>
			</div>

			<!-- success -->
			<div class="alert alert-success mb0 x-hidden"></div>
			<!-- success -->

			<!-- error -->
			<div class="alert alert-danger mb0 x-hidden"></div>
			<!-- error -->
		{/if}

		<div class="text-center ele_sett_bott_btn">
			<input type="hidden" name="type" value="{$system['two_factor_type']}">
			<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
		</div>
	</form>
{/if}