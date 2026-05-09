{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Getting Started")}</h2>
				<p class="text-xlg">{__("This information will let us know more about you")}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M15.48 3H7.52C4.07 3 2 5.06 2 8.52V16.47C2 19.94 4.07 22 7.52 22H15.47C18.93 22 20.99 19.94 20.99 16.48V8.52C21 5.06 18.93 3 15.48 3Z" fill="currentColor"/><path d="M21.0195 2.97832C19.2295 1.17832 17.4795 1.13832 15.6395 2.97832L14.5095 4.09832C14.4095 4.19832 14.3795 4.33832 14.4195 4.46832C15.1195 6.91832 17.0795 8.87832 19.5295 9.57832C19.5595 9.58832 19.6095 9.58832 19.6395 9.58832C19.7395 9.58832 19.8395 9.54832 19.9095 9.47832L21.0195 8.35832C21.9295 7.44832 22.3795 6.57832 22.3795 5.68832C22.3795 4.78832 21.9295 3.89832 21.0195 2.97832Z" fill="currentColor"/><path d="M17.8591 10.4198C17.5891 10.2898 17.3291 10.1598 17.0891 10.0098C16.8891 9.88984 16.6891 9.75984 16.4991 9.61984C16.3391 9.51984 16.1591 9.36984 15.9791 9.21984C15.9591 9.20984 15.8991 9.15984 15.8191 9.07984C15.5091 8.82984 15.1791 8.48984 14.8691 8.11984C14.8491 8.09984 14.7891 8.03984 14.7391 7.94984C14.6391 7.83984 14.4891 7.64984 14.3591 7.43984C14.2491 7.29984 14.1191 7.09984 13.9991 6.88984C13.8491 6.63984 13.7191 6.38984 13.5991 6.12984C13.4691 5.84984 13.3691 5.58984 13.2791 5.33984L7.89912 10.7198C7.54912 11.0698 7.20912 11.7298 7.13912 12.2198L6.70912 15.1998C6.61912 15.8298 6.78912 16.4198 7.17912 16.8098C7.50912 17.1398 7.95912 17.3098 8.45912 17.3098C8.56912 17.3098 8.67912 17.2998 8.78912 17.2898L11.7591 16.8698C12.2491 16.7998 12.9091 16.4698 13.2591 16.1098L18.6391 10.7298C18.3891 10.6498 18.1391 10.5398 17.8591 10.4198Z" fill="currentColor"/></svg>
		</div>
	</div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative">
    <div class="row">
        <div class="col-12 col-md-8 col-lg-6 col-xl-6 mx-md-auto">
            <div class="card card-register mb-5">
                <h4>{__("Welcome")} <span class="text-primary">{$user_profile->displayName}</span></h4>
                <div class="mt-3 mb-4">
                    <img class="img-thumbnail rounded-circle" src="{$user_profile->photoURL}" width="99" height="99">
                </div>
                <form class="js_ajax-forms" data-url="core/signup_social.php">
                    {if $system['invitation_enabled']}
						<label class="ele_field">
							<input name="invitation_code" type="text" placeholder=" " value="{$invitation_code}" required>
							<span>{__("Invitation Code")}</span>
						</label>
                    {/if}
					
					{if !$system['show_usernames_enabled']}
						<label class="ele_field">
							<input name="first_name" type="text" placeholder=" " value="{$user_profile->firstName}" required>
							<span>{__("First name")}</span>
						</label>
						
						<label class="ele_field">
							<input name="last_name" type="text" placeholder=" " value="{$user_profile->lastName}" required>
							<span>{__("Last name")}</span>
						</label>
					{/if}
					
					<label class="ele_field">
						<input name="username" type="text" placeholder=" " required>
						<span>{__("Username")}</span>
					</label>
					
					<label class="ele_field">
						<input name="email" type="email" placeholder=" " value="{$user_profile->email}" required>
						<span>{__("Email")}</span>
					</label>
					
					{if $system['activation_enabled'] && $system['activation_type'] == "sms"}
						<!-- phone -->
						<label class="ele_field">
							<input name="phone" type="text" placeholder=" " required>
							<span>{__("Phone number")}</span>
						</label>
						<!-- phone -->
					{/if}
					
					<label class="ele_field">
						<input name="password" type="password" placeholder=" " required>
						<span>{__("Password")}</span>
					</label>
					
					<!-- custom fields -->
					{if $custom_fields}
						{include file='__custom_fields.tpl' _custom_fields=$custom_fields _registration=true}
					{/if}
					<!-- custom fields -->
					
					{if !$system['genders_disabled']}
						<label class="ele_field">
							<select name="gender" required>
								<option value="none">{__("Gender")}:</option>
								{foreach $genders as $gender}
									<option value="{$gender['gender_id']}">{$gender['gender_name']}</option>
								{/foreach}
							</select>
							<span>{__("I am")}</span>
						</label>
					{/if}
					
					{if $system['age_restriction']}
						<!-- birthdate -->
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
						<!-- birthdate -->
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
							<span>{__("User Group")}</span>
						</label>
						<!-- user group -->
					{/if}

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
                    <div class="custom-control custom-checkbox mb10">
                        <input type="checkbox" class="custom-control-input" name="privacy_agree" id="privacy_agree">
                        <label class="custom-control-label" for="privacy_agree">
                            {__("By creating your account, you agree to our")} <a href="{$system['system_url']}/static/terms" target="_blank">{__("Terms")}</a> {__("and")} <a href="{$system['system_url']}/static/privacy" target="_blank">{__("Privacy Policy")}</a>
                        </label>
                    </div>
					
                    <div class="mt-3">
                        <input value="{$user_profile->photoURL}" name="avatar" type="hidden">
                        <input value="{$provider}" name="provider" type="hidden">
                        <button type="submit" class="btn btn-block btn-success btn-mat">{__("Sign Up")}</button>
                    </div>
                    <!-- error -->
                    <div class="alert alert-danger mb0 x-hidden"></div>
                    <!-- error -->
                </form>
            </div>
        </div>
    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}