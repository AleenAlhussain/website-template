{if $sub_view == ""}
	<div class="valign ele_page_hdng border-0 p-0 mt-n1 mb-4 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
		<h2 class="ele_page_title small mb-3 mb-md-0">{__("Basic")} {__("Settings")}</h2>
	</div>
	
	<form class="js_ajax-forms" data-url="users/settings.php?edit=basic">
		{if !$system['show_usernames_enabled'] && $user->_data['user_verified']}
			<div class="alert alert-warning p-3 mb-4">
				<div class="mb-2 mx-n1">
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM11.25 8C11.25 7.59 11.59 7.25 12 7.25C12.41 7.25 12.75 7.59 12.75 8V13C12.75 13.41 12.41 13.75 12 13.75C11.59 13.75 11.25 13.41 11.25 13V8ZM12.92 16.38C12.87 16.51 12.8 16.61 12.71 16.71C12.61 16.8 12.5 16.87 12.38 16.92C12.26 16.97 12.13 17 12 17C11.87 17 11.74 16.97 11.62 16.92C11.5 16.87 11.39 16.8 11.29 16.71C11.2 16.61 11.13 16.51 11.08 16.38C11.03 16.26 11 16.13 11 16C11 15.87 11.03 15.74 11.08 15.62C11.13 15.5 11.2 15.39 11.29 15.29C11.39 15.2 11.5 15.13 11.62 15.08C11.86 14.98 12.14 14.98 12.38 15.08C12.5 15.13 12.61 15.2 12.71 15.29C12.8 15.39 12.87 15.5 12.92 15.62C12.97 15.74 13 15.87 13 16C13 16.13 12.97 16.26 12.92 16.38Z" fill="currentColor"/></svg>
				</div>
				<div class="text">
					{__("Your account is already verified if you changed your name you will lose the verification badge")}
				</div>
			</div>
		{/if}
			
		<div class="row">
			{if !$system['show_usernames_enabled']}
				<div class="col-md-6">
					<label class="ele_field mb-4">
						<input type="text" placeholder=" " name="firstname" value="{$user->_data['user_firstname']}">
						<span>{__("First Name")}</span>
					</label>
				</div>

				<div class="col-md-6">
					<label class="ele_field mb-4">
						<input type="text" placeholder=" " name="lastname" value="{$user->_data['user_lastname']}">
						<span>{__("Last Name")}</span>
					</label>
				</div>
			{/if}

			{if !$system['genders_disabled']}
				<div class="col-md-6">
					<label class="ele_field mb-4">
						<select name="gender">
							<option value="none">{__("Select Sex")}</option>
							{foreach $genders as $gender}
								<option {if $user->_data['user_gender'] == $gender['gender_id']}selected{/if} value="{$gender['gender_id']}">{$gender['gender_name']}</option>
							{/foreach}
						</select>
						<span>{__("I am")}</span>
					</label>
				</div>
			{/if}

			{if $system['relationship_info_enabled']}
				<div class="col-md-6">
					<label class="ele_field mb-4">
						<select name="relationship">
							<option value="none">{__("Select Relationship")}</option>
							<option {if $user->_data['user_relationship'] == "single"}selected{/if} value="single">{__("Single")}</option>
							<option {if $user->_data['user_relationship'] == "relationship"}selected{/if} value="relationship">{__("In a relationship")}</option>
							<option {if $user->_data['user_relationship'] == "married"}selected{/if} value="married">{__("Married")}</option>
							<option {if $user->_data['user_relationship'] == "complicated"}selected{/if} value="complicated">{__("It's complicated")}</option>
							<option {if $user->_data['user_relationship'] == "separated"}selected{/if} value="separated">{__("Separated")}</option>
							<option {if $user->_data['user_relationship'] == "divorced"}selected{/if} value="divorced">{__("Divorced")}</option>
							<option {if $user->_data['user_relationship'] == "widowed"}selected{/if} value="widowed">{__("Widowed")}</option>
						</select>
						<span>{__("Relationship Status")}</span>
					</label>
				</div>
			{/if}

			<div class="col-md-6">
				<label class="ele_field mb-4">
					<select name="country">
						<option value="none">{__("Select Country")}</option>
						{foreach $countries as $country}
							<option {if $user->_data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_id']}">{$country['country_name']}</option>
						{/foreach}
					</select>
					<span>{__("Country")}</span>
				</label>
			</div>

			{if $system['website_info_enabled']}
				<div class="col-md-6">
					<label class="ele_field mb-4">
						<input type="text" placeholder=" " name="website" value="{$user->_data['user_website']}">
						<span>{__("Website")}</span>
					</label>
					<span class="help-block">{__("Website link must start with http:// or https://")}</span>
				</div>
			{/if}
		</div>

		<div class="row">
			<div class="col">
				<label class="ele_field mb-4">
					<select name="birth_month">
						<option value="none">{__("Select Month")}</option>
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
					<span>{__("Birth")} {__("Month")}</span>
				</label>
			</div>
			<div class="col">
				<label class="ele_field mb-4">
					<select name="birth_day">
						<option value="none">{__("Select Day")}</option>
						{for $i=1 to 31}
							<option {if $user->_data['user_birthdate_parsed']['day'] == $i}selected{/if} value="{$i}">{$i}</option>
						{/for}
					</select>
					<span>{__("Birth")} {__("Day")}</span>
				</label>
			</div>
			<div class="col">
				<label class="ele_field mb-4">
					<select name="birth_year">
						<option value="none">{__("Select Year")}</option>
						{for $i=1905 to 2023}
							<option {if $user->_data['user_birthdate_parsed']['year'] == $i}selected{/if} value="{$i}">{$i}</option>
						{/for}
					</select>
					<span>{__("Birth")} {__("Year")}</span>
				</label>
			</div>
		</div>

		{if $system['biography_info_enabled']}
			<label class="ele_field">
				<textarea placeholder=" " rows="4" name="biography">{$user->_data['user_biography']}</textarea>
				<span>{__("About Me")}</span>
			</label>
		{/if}

		<!-- custom fields -->
		{if $custom_fields['basic']}
		{include file='__custom_fields.tpl' _custom_fields=$custom_fields['basic'] _registration=false}
		{/if}
		<!-- custom fields -->

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

{elseif $sub_view == "work"}
	<div class="valign ele_page_hdng border-0 p-0 mt-n1 mb-4 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
		<h2 class="ele_page_title small mb-3 mb-md-0">{__("Work")} {__("Settings")}</h2>
	</div>
	
	<form class="js_ajax-forms" data-url="users/settings.php?edit=work">
		<label class="ele_field">
			<input type="text" placeholder=" " name="work_title" value="{$user->_data['user_work_title']}">
			<span>{__("Work Title")}</span>
		</label>
		
		<label class="ele_field">
			<input type="text" placeholder=" " name="work_place" value="{$user->_data['user_work_place']}">
			<span>{__("Work Place")}</span>
		</label>
		
		<label class="ele_field">
			<input type="text" placeholder=" " name="work_url" value="{$user->_data['user_work_url']}">
			<span>{__("Work Website")}</span>
		</label>
		<span class="help-block">{__("Website link must start with http:// or https://")}</span>

		<!-- custom fields -->
		{if $custom_fields['work']}
		{include file='__custom_fields.tpl' _custom_fields=$custom_fields['work'] _registration=false}
		{/if}
		<!-- custom fields -->
		
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

{elseif $sub_view == "location"}
	<div class="valign ele_page_hdng border-0 p-0 mt-n1 mb-4 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
		<h2 class="ele_page_title small mb-3 mb-md-0">{__("Location")} {__("Settings")}</h2>
	</div>

	<form class="js_ajax-forms" data-url="users/settings.php?edit=location">
		<label class="ele_field">
			<input type="text" class="js_geocomplete" placeholder=" " name="city" value="{$user->_data['user_current_city']}">
			<span>{__("Current City")}</span>
		</label>
		
		<label class="ele_field">
			<input type="text" class="js_geocomplete" placeholder=" " name="hometown" value="{$user->_data['user_hometown']}">
			<span>{__("Hometown")}</span>
		</label>

		<!-- custom fields -->
		{if $custom_fields['location']}
		{include file='__custom_fields.tpl' _custom_fields=$custom_fields['location'] _registration=false}
		{/if}
		<!-- custom fields -->
		
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

{elseif $sub_view == "education"}
	<div class="valign ele_page_hdng border-0 p-0 mt-n1 mb-4 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
		<h2 class="ele_page_title small mb-3 mb-md-0">{__("Education")} {__("Settings")}</h2>
	</div>

	<form class="js_ajax-forms" data-url="users/settings.php?edit=education">
		<label class="ele_field">
			<input type="text" placeholder=" " name="edu_school" value="{$user->_data['user_edu_school']}">
			<span>{__("School")}</span>
		</label>

		<div class="row">
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" placeholder=" " name="edu_major" value="{$user->_data['user_edu_major']}">
					<span>{__("Major")}</span>
				</label>
			</div>

			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" placeholder=" " name="edu_class" value="{$user->_data['user_edu_class']}">
					<span>{__("Class")}</span>
				</label>
			</div>
		</div>
			
		<!-- custom fields -->
		{if $custom_fields['education']}
		{include file='__custom_fields.tpl' _custom_fields=$custom_fields['education'] _registration=false}
		{/if}
		<!-- custom fields -->
		
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

{elseif $sub_view == "other"}
	<div class="valign ele_page_hdng border-0 p-0 mt-n1 mb-4 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
		<h2 class="ele_page_title small mb-3 mb-md-0">{__("Other")} {__("Settings")}</h2>
	</div>
	
	<form class="js_ajax-forms" data-url="users/settings.php?edit=other">
		<!-- custom fields -->
		{if $custom_fields['other']}
		{include file='__custom_fields.tpl' _custom_fields=$custom_fields['other'] _registration=false}
		{/if}
		<!-- custom fields -->
		
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

{elseif $sub_view == "social"}
	<div class="valign ele_page_hdng border-0 p-0 mt-n1 mb-4 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
		<h2 class="ele_page_title small mb-3 mb-md-0">{__("Social Links")}</h2>
	</div>

	<form class="js_ajax-forms" data-url="users/settings.php?edit=social">
		<div class="row">
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" name="facebook" placeholder=" " value="{$user->_data['user_social_facebook']}">
					<span>{__("Facebook Profile URL")}</span>
				</label>
			</div>
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" name="twitter" placeholder=" " value="{$user->_data['user_social_twitter']}">
					<span>{__("Twitter Profile URL")}</span>
				</label>
			</div>
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" name="youtube" placeholder=" " value="{$user->_data['user_social_youtube']}">
					<span>{__("YouTube Profile URL")}</span>
				</label>
			</div>
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" name="instagram" placeholder=" " value="{$user->_data['user_social_instagram']}">
					<span>{__("Instagram Profile URL")}</span>
				</label>
			</div>
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" name="twitch" placeholder=" " value="{$user->_data['user_social_twitch']}">
					<span>{__("Twitch Profile URL")}</span>
				</label>
			</div>
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" name="linkedin" placeholder=" " value="{$user->_data['user_social_linkedin']}">
					<span>{__("LinkedIn Profile URL")}</span>
				</label>
			</div>
			<div class="col-md-6">
				<label class="ele_field mb-4">
					<input type="text" name="vkontakte" placeholder=" " value="{$user->_data['user_social_vkontakte']}">
					<span>{__("Vkontakte Profile URL")}</span>
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

{elseif $sub_view == "design"}
	<div class="valign ele_page_hdng border-0 p-0 mt-n1 mb-4 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
		<h2 class="ele_page_title small mb-3 mb-md-0">{__("Design")} {__("Settings")}</h2>
	</div>

	<form class="js_ajax-forms" data-url="users/settings.php?edit=design">
		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Profile Background")}
			</label>
			<div class="col-md-9">
				{if $user->_data['user_profile_background'] == ''}
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
						<input type="hidden" class="js_x-uploader-input" name="user_profile_background" value="">
					</div>
				{else}
					<div class="x-image" style="background-image: url('{$system['system_uploads']}/{$user->_data['user_profile_background']}')">
						<button type="button" class="close js_x-image-remover" title='{__("Remove")}'>
							<span>×</span>
						</button>
						<div class="x-image-loader">
							<div class="progress x-progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
						<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
						<input type="hidden" class="js_x-uploader-input" name="user_profile_background" value="{$user->_data['user_profile_background']}">
					</div>
				{/if}
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

{/if}