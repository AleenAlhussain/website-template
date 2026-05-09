{if $system['landing_page_template'] == "elengine"}
	{include file='_sign_form_elengine.tpl'}
{else}
	<div class="ele_content card-register">

		<!-- signin -->
		<div class="js_panel {if $do == 'up'}x-hidden{/if}">
			<!--<h4 class="auth-title">{__("Login")}</h4>-->

			{if isset($highlight)}<div class="alert alert-warning">{$highlight}</div>{/if}
			
			<form class="js_ajax-forms" data-url="core/signin.php" method="POST">
				<label class="ele_field">
					<input type="text" placeholder=" " name="username_email" required autofocus>
					<span>{__("Email")} {__("or")} {__("Username")}</span>
				</label>
				
				<label class="ele_field">
					<div class="position-absolute js_toggle-password m-3">
						<svg class="eye-icon" width="24px" height="24px" viewBox="0 0 56 56" xmlns="http://www.w3.org/2000/svg" fill="currentColor"><path d="M 28.0103 46.4025 C 44.5562 46.4025 56 33.0170 56 28.8443 C 56 24.6511 44.5354 11.2863 28.0103 11.2863 C 11.5883 11.2863 0 24.6511 0 28.8443 C 0 33.0170 11.6710 46.4025 28.0103 46.4025 Z M 28.0103 40.3501 C 21.5655 40.3501 16.4840 35.1240 16.4426 28.8443 C 16.4220 22.3995 21.5655 17.3387 28.0103 17.3387 C 34.4139 17.3387 39.5574 22.3995 39.5574 28.8443 C 39.5574 35.1240 34.4139 40.3501 28.0103 40.3501 Z M 28.0103 32.9963 C 30.3032 32.9963 32.2036 31.1166 32.2036 28.8443 C 32.2036 26.5515 30.3032 24.6717 28.0103 24.6717 C 25.6968 24.6717 23.7964 26.5515 23.7964 28.8443 C 23.7964 31.1166 25.6968 32.9963 28.0103 32.9963 Z" /></svg>
						<svg class="eye-icon-slash x-hidden" width="24px" height="24px" viewBox="0 0 56 56" xmlns="http://www.w3.org/2000/svg" fill="currentColor"><path d="M 43.9492 47.3227 C 44.2544 47.6280 44.6821 47.7909 45.0686 47.7909 C 45.8832 47.7909 46.6361 47.0580 46.6361 46.2234 C 46.6361 45.8163 46.4735 45.4092 46.1679 45.1038 L 12.1120 11.0682 C 11.8066 10.7629 11.3995 10.6204 10.9924 10.6204 C 10.1781 10.6204 9.4250 11.3532 9.4250 12.1674 C 9.4250 12.5949 9.5675 13.0020 9.8728 13.2870 Z M 45.8628 41.5619 C 52.2546 37.4295 56.0000 32.0555 56.0000 29.6738 C 56.0000 25.5415 44.7025 12.3710 28.0102 12.3710 C 24.5497 12.3710 21.3130 12.9613 18.3410 13.9384 L 23.6540 19.2311 C 24.9771 18.6611 26.4428 18.3354 28.0102 18.3354 C 34.3207 18.3354 39.3892 23.3226 39.3892 29.6738 C 39.3892 31.2209 39.0636 32.7069 38.4324 34.0097 Z M 28.0102 46.9766 C 31.7761 46.9766 35.2774 46.3049 38.4124 45.2056 L 33.0179 39.8112 C 31.5318 40.5848 29.8219 41.0122 28.0102 41.0122 C 21.6591 41.0122 16.6310 35.8621 16.6107 29.6738 C 16.6107 27.8418 17.0382 26.1115 17.8117 24.5848 L 10.7278 17.4600 C 4.0102 21.5924 0 27.2310 0 29.6738 C 0 33.7858 11.5013 46.9766 28.0102 46.9766 Z M 34.4835 29.2463 C 34.4835 25.6840 31.6133 22.7934 28.0102 22.7934 C 27.7456 22.7934 27.4809 22.8137 27.2367 22.8341 L 34.4428 30.0402 C 34.4632 29.7960 34.4835 29.5110 34.4835 29.2463 Z M 21.5166 29.2056 C 21.5166 32.7883 24.4682 35.6789 28.0306 35.6789 C 28.3156 35.6789 28.5802 35.6586 28.8652 35.6382 L 21.5573 28.3303 C 21.5369 28.6153 21.5166 28.9206 21.5166 29.2056 Z" /></svg>
					</div>
					<input type="password" placeholder=" " name="password" required>
					<span>{__("Password")}</span>
				</label>
				
				<div class="custom-control custom-checkbox mt-n2 mb20">
					<input type="checkbox" class="custom-control-input" name="remember" id="remember">
					<label class="custom-control-label" for="remember">{__("Remember me")}</label>
					<a class="float-right" href="{$system['system_url']}/reset">{__("Forgotten password?")}</a>
				</div>
				
				<button type="submit" class="btn btn-block btn-primary btn-mat">{__("Sign In")}</button>
				
				<!-- error -->
				<div class="alert alert-danger mb0 x-hidden"></div>
				<!-- error -->
			</form>
			{if $system['social_login_enabled']}
				{if $system['facebook_login_enabled'] || $system['google_login_enabled'] || $system['twitter_login_enabled'] || $system['linkedin_login_enabled'] || $system['vkontakte_login_enabled'] || $system['wordpress_login_enabled']}
					<div class="hr-heading mtb25">
						<div class="hr-heading-text">
							{__("or")}
						</div>
					</div>
					<div class="valign justify-content-center">
						{if $system['facebook_login_enabled']}
							<a href="{$system['system_url']}/connect/facebook" class="mx-2">
								<svg enable-background="new 0 0 512 512" height="24" viewBox="0 0 512 512" width="24" xmlns="http://www.w3.org/2000/svg"><g><path d="m512 256c0 127.78-93.62 233.69-216 252.89v-178.89h59.65l11.35-74h-71v-48.02c0-20.25 9.92-39.98 41.72-39.98h32.28v-63s-29.3-5-57.31-5c-58.47 0-96.69 35.44-96.69 99.6v56.4h-65v74h65v178.89c-122.38-19.2-216-125.11-216-252.89 0-141.38 114.62-256 256-256s256 114.62 256 256z" fill="#1877f2"></path><path d="m355.65 330 11.35-74h-71v-48.021c0-20.245 9.918-39.979 41.719-39.979h32.281v-63s-29.296-5-57.305-5c-58.476 0-96.695 35.44-96.695 99.6v56.4h-65v74h65v178.889c13.034 2.045 26.392 3.111 40 3.111s26.966-1.066 40-3.111v-178.889z" fill="#fff"></path></g></svg>
							</a>
						{/if}
						{if $system['google_login_enabled']}
							<a href="{$system['system_url']}/connect/google" class="mx-2">
								<svg width="24" height="24" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect width="40" height="40" rx="20" fill="#F2F2F2"/> <g clip-path="url(#clip0_710_6221)"> <path d="M29.6 20.2273C29.6 19.5182 29.5364 18.8364 29.4182 18.1818H20V22.05H25.3818C25.15 23.3 24.4455 24.3591 23.3864 25.0682V27.5773H26.6182C28.5091 25.8364 29.6 23.2727 29.6 20.2273Z" fill="#4285F4"/> <path d="M20 30C22.7 30 24.9636 29.1045 26.6181 27.5773L23.3863 25.0682C22.4909 25.6682 21.3454 26.0227 20 26.0227C17.3954 26.0227 15.1909 24.2636 14.4045 21.9H11.0636V24.4909C12.7091 27.7591 16.0909 30 20 30Z" fill="#34A853"/> <path d="M14.4045 21.9C14.2045 21.3 14.0909 20.6591 14.0909 20C14.0909 19.3409 14.2045 18.7 14.4045 18.1V15.5091H11.0636C10.3864 16.8591 10 18.3864 10 20C10 21.6136 10.3864 23.1409 11.0636 24.4909L14.4045 21.9Z" fill="#FBBC04"/> <path d="M20 13.9773C21.4681 13.9773 22.7863 14.4818 23.8227 15.4727L26.6909 12.6045C24.9591 10.9909 22.6954 10 20 10C16.0909 10 12.7091 12.2409 11.0636 15.5091L14.4045 18.1C15.1909 15.7364 17.3954 13.9773 20 13.9773Z" fill="#E94235"/> </g> <defs> <clipPath id="clip0_710_6221"> <rect width="20" height="20" fill="white" transform="translate(10 10)"/> </clipPath> </defs> </svg>
							</a>
						{/if}
						{if $system['twitter_login_enabled']}
							<a href="{$system['system_url']}/connect/twitter" class="mx-2">
								<svg width="24" height="24" viewBox="0 0 1227 1227" xmlns="http://www.w3.org/2000/svg"><path d="m654.53 592.55 276.12 394.95h-113.32l-225.32-322.28v-.02l-33.08-47.31-263.21-376.5h113.32l212.41 303.85z"></path><path d="m1094.42 0h-961.84c-73.22 0-132.58 59.36-132.58 132.58v961.84c0 73.22 59.36 132.58 132.58 132.58h961.84c73.22 0 132.58-59.36 132.58-132.58v-961.84c0-73.22-59.36-132.58-132.58-132.58zm-311.8 1040.52-228.01-331.84-285.47 331.84h-73.78l326.49-379.5-326.49-475.17h249.02l215.91 314.23 270.32-314.23h73.78l-311.33 361.9h-.02l338.6 492.77z"></path></svg>
							</a>
						{/if}
						{if $system['linkedin_login_enabled']}
							<a href="{$system['system_url']}/connect/linkedin" class="mx-2">
								<svg height="24" viewBox="0 0 176 176" width="24" xmlns="http://www.w3.org/2000/svg"><g><g><rect id="background" fill="#0077b5" height="176" rx="24" width="176"></rect><g fill="#fff"><path d="m63.4 48a15 15 0 1 1 -15-15 15 15 0 0 1 15 15z"></path><path d="m60 73v66.27a3.71 3.71 0 0 1 -3.71 3.73h-15.81a3.71 3.71 0 0 1 -3.72-3.72v-66.28a3.72 3.72 0 0 1 3.72-3.72h15.81a3.72 3.72 0 0 1 3.71 3.72z"></path><path d="m142.64 107.5v32.08a3.41 3.41 0 0 1 -3.42 3.42h-17a3.41 3.41 0 0 1 -3.42-3.42v-31.09c0-4.64 1.36-20.32-12.13-20.32-10.45 0-12.58 10.73-13 15.55v35.86a3.42 3.42 0 0 1 -3.37 3.42h-16.42a3.41 3.41 0 0 1 -3.41-3.42v-66.87a3.41 3.41 0 0 1 3.41-3.42h16.42a3.42 3.42 0 0 1 3.42 3.42v5.78c3.88-5.82 9.63-10.31 21.9-10.31 27.18 0 27.02 25.38 27.02 39.32z"></path></g></g></g></svg>
							</a>
						{/if}
						{if $system['vkontakte_login_enabled']}
							<a href="{$system['system_url']}/connect/vkontakte" class="mx-2">
								<svg height="24" viewBox="0 0 512 512" width="24" xmlns="http://www.w3.org/2000/svg"><g><path d="m0 245.333c0-115.651 0-173.477 35.928-209.405s93.754-35.928 209.405-35.928h21.333c115.651 0 173.477 0 209.405 35.928 35.929 35.928 35.929 93.754 35.929 209.405v21.333c0 115.651 0 173.477-35.929 209.405-35.927 35.929-93.753 35.929-209.404 35.929h-21.333c-115.651 0-173.477 0-209.405-35.928-35.929-35.928-35.929-93.754-35.929-209.405z" fill="#2787f5"></path><path clip-rule="evenodd" d="m138.676 160h-37.342c-10.669 0-12.803 5.022-12.803 10.558 0 9.889 12.66 58.933 58.946 123.798 30.858 44.298 74.333 68.31 113.894 68.31 23.737 0 26.673-5.333 26.673-14.52v-33.48c0-10.667 2.249-12.796 9.764-12.796 5.539 0 15.034 2.769 37.188 24.127 25.319 25.313 29.493 36.669 43.734 36.669h37.342c10.67 0 16.004-5.333 12.927-15.858-3.368-10.49-15.456-25.71-31.497-43.75-8.704-10.284-21.759-21.358-25.715-26.896-5.538-7.119-3.956-10.284 0-16.611 0 0 45.496-64.075 50.243-85.827 2.373-7.911 0-13.724-11.293-13.724h-37.342c-9.494 0-13.872 5.022-16.246 10.558 0 0-18.989 46.276-45.89 76.336-8.704 8.701-12.66 11.47-17.408 11.47-2.373 0-5.809-2.769-5.809-10.678v-73.962c0-9.493-2.755-13.724-10.669-13.724h-58.68c-5.933 0-9.502 4.405-9.502 8.581 0 8.998 13.451 11.074 14.837 36.387v54.978c0 12.053-2.178 14.239-6.925 14.239-12.659 0-43.453-46.483-61.716-99.672-3.577-10.337-7.167-14.513-16.711-14.513z" fill="#fff" fill-rule="evenodd"></path></g></svg>
							</a>
						{/if}
						{if $system['wordpress_login_enabled']}
							<a href="{$system['system_url']}/connect/wordpress" class="mx-2">
								<svg viewBox="0 0 447.674 447.674" xmlns="http://www.w3.org/2000/svg" height="24" width="24"><g> <path style="fill:#00769D;" d="M134.289,138.16h-24.722l67.399,190.521l37.732-107.825l-29.254-82.696H159.36v-18.154h115.508 v18.154h-27.049l67.398,190.521l24.227-69.234c31.781-88.702-26.048-116.333-26.048-136.129s16.048-35.843,35.843-35.843 c1.071,0,2.111,0.058,3.13,0.153c-33.541-31.663-78.768-51.08-128.534-51.08c-65.027,0-122.306,33.146-155.884,83.458h66.336 v18.154L134.289,138.16L134.289,138.16z"></path> <path style="fill:#00769D;" d="M36.548,223.837c0,71.704,40.302,133.986,99.483,165.458l-84.52-238.919 C41.883,172.932,36.548,197.761,36.548,223.837z"></path> <path style="fill:#00769D;" d="M386.833,131.547c2.679,15.774,1.868,33.503-2.243,51.301h0.745l-2.832,8.092l0,0 c-1.678,5.843-3.791,11.82-6.191,17.693l-64.444,180.541c59.057-31.51,99.256-93.725,99.256-165.338 C411.124,190.279,402.29,158.788,386.833,131.547z"></path> <path style="fill:#00769D;" d="M166.075,402.033c18.195,5.894,37.603,9.091,57.762,9.091c19.228,0,37.777-2.902,55.239-8.285 l-54.784-154.862L166.075,402.033z"></path> <path style="fill:#00769D;" d="M382.113,65.56C339.836,23.283,283.625,0,223.836,0S107.837,23.283,65.56,65.56S0,164.047,0,223.837 c0,59.789,23.283,115.999,65.56,158.276s98.488,65.56,158.277,65.56s115.999-23.283,158.277-65.56 c42.277-42.277,65.56-98.488,65.56-158.276C447.673,164.047,424.39,107.837,382.113,65.56z M223.836,431.883 c-114.717,0-208.046-93.329-208.046-208.046S109.119,15.79,223.836,15.79s208.046,93.33,208.046,208.047 S338.554,431.883,223.836,431.883z"></path> </g></svg>
							</a>
						{/if}
						{if $system['sngine_login_enabled']}
							<a href="https://{$system['sngine_app_domain']}/api/oauth?app_id={$system['sngine_appid']}" class="mx-2">
								<img src="{$system['system_uploads']}/{$system['sngine_app_icon']}" width="24" height="24" alt="{__({$system['sngine_app_name']})}">
							</a>
						{/if}
					</div>
				{/if}
			{/if}
			{if $system['registration_enabled']}
				<div class="mt25 text-center">
					<a href="{$system['system_url']}/signup{if $oauth_app_id}?oauth_app_id={$oauth_app_id}{/if}" class="js_toggle-panel btn btn-secondary btn-mat btn-block">{__("Sign Up")}</a>
				</div>
			{/if}
		</div>
		<!-- signin -->

		<!-- signup -->
		<div class="js_panel {if $do != 'up'}x-hidden{/if}">
			<!--<h4 class="auth-title">{__("Create a new account")}</h4>-->

			<form class="js_ajax-forms" data-url="core/signup.php" method="POST">
				{if !$system['show_usernames_enabled']}
					<label class="ele_field">
						<input name="first_name" type="text" placeholder=" " required autofocus>
						<span>{__("First name")}</span>
					</label>
					
					<label class="ele_field">
						<input name="last_name" type="text" placeholder=" " required>
						<span>{__("Last name")}</span>
					</label>
				{/if}
				
				<label class="ele_field">
					<input name="username" type="text" placeholder=" " required>
					<span>{__("Username")}</span>
				</label>
				
				<label class="ele_field">
					<input name="email" type="email" placeholder=" " required>
					<span>{__("Email")}</span>
				</label>
				
				<label class="ele_field">
					<input name="password" type="password" placeholder=" " required>
					<span>{__("Password")}</span>
				</label>
				
				{if $system['invitation_enabled']}
					<label class="ele_field">
						<input name="invitation_code" type="text" placeholder=" " value="{$invitation_code}" required>
						<span>{__("Invitation Code")}</span>
					</label>
				{/if}

				{if $system['activation_enabled'] && $system['activation_type'] == "sms"}
					<label class="ele_field">
						<input name="phone" type="text" placeholder=" " required>
						<span>{__("Phone number (e.g: +1234567890)")}</span>
					</label>
				{/if}
				
				<!-- custom fields -->
					{if $custom_fields}
					{include file='__custom_fields.tpl' _custom_fields=$custom_fields _registration=true}
					{/if}
				<!-- custom fields -->

				<div class="js_hidden-section x-hidden">
					{if !$system['genders_disabled']}
						<label class="ele_field">
							<select name="gender" id="gender" required>
								{foreach $genders as $gender}
									<option value="{$gender['gender_id']}">{$gender['gender_name']}</option>
								{/foreach}
							</select>
							<span>{__("Gender")}</span>
						</label>
					{/if}
					
					{if $system['age_restriction']}
						<div class="form-group">
							<label class="form-control-label">{__("Birthdate")}</label>
							<div class="form-row">
								<div class="col">
									<label class="ele_field">
									<select name="birth_month">
										<option value="none">{__("Month")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '1'}selected{/if} value="1">{__("Jan")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '2'}selected{/if} value="2">{__("Feb")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '3'}selected{/if} value="3">{__("Mar")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '4'}selected{/if} value="4">{__("Apr")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '5'}selected{/if} value="5">{__("May")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '6'}selected{/if} value="6">{__("Jun")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '7'}selected{/if} value="7">{__("Jul")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '8'}selected{/if} value="8">{__("Aug")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '9'}selected{/if} value="9">{__("Sep")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '10'}selected{/if} value="10">{__("Oct")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '11'}selected{/if} value="11">{__("Nov")}</option>
										<option {if $user->_data['user_birthdate_parsed']['month'] == '12'}selected{/if} value="12">{__("Dec")}</option>
									</select>
										<span>{__("Month")}</span>
									</label>
								</div>
								<div class="col">
									<label class="ele_field">
									<select name="birth_day">
										<option value="none">{__("Day")}</option>
										{for $i=1 to 31}
											<option {if $user->_data['user_birthdate_parsed']['day'] == $i}selected{/if} value="{$i}">{$i}</option>
										{/for}
									</select>
										<span>{__("Day")}</span>
									</label>
								</div>
								<div class="col">
									<label class="ele_field">
									<select name="birth_year">
										<option value="none">{__("Year")}</option>
										{for $i=1905 to 2023}
											<option {if $user->_data['user_birthdate_parsed']['year'] == $i}selected{/if} value="{$i}">{$i}</option>
										{/for}
									</select>
										<span>{__("Year")}</span>
									</label>
								</div>
							</div>
						</div>
					{/if}
					
					{if $system['select_user_group_enabled']}
						<!-- user group -->
						<label class="ele_field">
							<select name="custom_user_group">
								<option value="none">{__("User Group")}:</option>
								<option value="0">{__("Users")}</option>
								{foreach $user_groups as $user_group}
									<option value="{$user_group['user_group_id']}">{__($user_group['user_group_title'])}</option>
								{/foreach}
							</select>
							<span>{__("Select User Group")}</span>
						</label>
						<!-- user group -->
					{/if}
					
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
					
					{* Honeypot *}
					<input type="text" name="field1" style="display:none !important" tabindex="-1" autocomplete="off">
					{* Honeypot *}
					
					<!-- newsletter consent -->
					{if $system['newsletter_consent']}
						<div class="custom-control custom-checkbox mb10">
							<input type="checkbox" class="custom-control-input" name="newsletter_agree" id="newsletter_agree">
							<label class="custom-control-label" for="newsletter_agree">
								{__("I expressly agree to receive the newsletter")}
							</label>
						</div>
					{/if}
					<!-- newsletter consent -->
					
					<!-- privacy & terms consent -->
					<div class="custom-control custom-checkbox mb25">
						<input type="checkbox" class="custom-control-input" name="privacy_agree" id="privacy_agree">
						<label class="custom-control-label" for="privacy_agree">
							{__("By creating your account, you agree to our")} <a href="{$system['system_url']}/static/terms" target="_blank">{__("Terms")}</a> {__("and")} <a href="{$system['system_url']}/static/privacy" target="_blank">{__("Privacy Policy")}</a>
						</label>
					</div>
					<!-- privacy & terms consent -->
				</div>
				
				{if $oauth_app_id}
					<input type="hidden" name="oauth_app_id" value="{$oauth_app_id}">
				{/if}
				<button type="submit" class="btn btn-block btn-primary btn-mat">{__("Sign Up")}</button>

				<!-- error -->
				<div class="alert alert-danger mb0 x-hidden"></div>
				<!-- error -->
			</form>
			
			<div class="mt25 text-center">
				{__("Already have an account?")} <a href="{$system['system_url']}/signin" class="js_toggle-panel text-link">{__("Sign In")}</a>
			</div>
		</div>
		<!-- signup -->
	</div>
{/if}