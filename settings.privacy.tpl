<h2 class="ele_page_title small mt-n1 mb-4">{__("Privacy")}</h2>

<form class="js_ajax-forms" data-url="users/settings.php?edit=privacy">
	{if $system['chat_enabled']}
		<div class="form-table-row">
			<div>
				<div class="form-control-label h6">{__("Chat Active Status")}</div>
				<div class="form-text d-none d-sm-block">{__("If chat active status is disabled you will appear offline and will not see who is online")}</div>
			</div>
			<div class="text-right">
				<label class="switch" for="user_chat_enabled">
					<input type="checkbox" name="user_chat_enabled" id="user_chat_enabled" {if $user->_data['user_chat_enabled']}checked{/if}>
					<span class="slider round"></span>
				</label>
			</div>
		</div>
	{/if}

	<div class="form-table-row">
		<div>
			<div class="form-control-label h6">{__("Email you with our newsletter")}</div>
			<div class="form-text d-none d-sm-block">{__("From time to time we send newsletter email to all of our members")}</div>
		</div>
		<div class="text-right">
			<label class="switch" for="user_newsletter_enabled">
				<input type="checkbox" name="user_newsletter_enabled" id="user_newsletter_enabled" {if $user->_data['user_newsletter_enabled']}checked{/if}>
				<span class="slider round"></span>
			</label>
		</div>
	</div>
	
	{if $user->_data['can_receive_tip']}
		<div class="form-table-row">
			<div>
				<div class="form-control-label h6">{__("Tips Enabled")}</div>
				<div class="form-text d-none d-sm-block">{__("Allow the send tips button on your profile")}</div>
			</div>
			<div class="text-right">
				<label class="switch" for="user_tips_enabled">
					<input type="checkbox" name="user_tips_enabled" id="user_tips_enabled" {if $user->_data['user_tips_enabled']}checked{/if}>
					<span class="slider round"></span>
				</label>
			</div>
		</div>
    {/if}
	
	<div class="form-table-row">
		<div>
			<div class="form-control-label h6">
				{if $system['friends_enabled']}{__("Hide from friends suggestions list")}{else}{__("Hide from followings suggestions list")}{/if}
			</div>
			<div class="form-text d-none d-sm-block">{__("Enable this option to hide your profile from the suggestions list")}</div>
		</div>
		<div class="text-right">
			<label class="switch" for="user_suggestions_hidden">
				<input type="checkbox" name="user_suggestions_hidden" id="user_suggestions_hidden" {if $user->_data['user_suggestions_hidden']}checked{/if}>
				<span class="slider round"></span>
			</label>
		</div>
    </div>
	
	<hr>

	<div class="row">
		{if $system['chat_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_chat">
						<option {if $user->_data['user_privacy_chat'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_chat'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_chat'] == "me"}selected{/if} value="me">
							{__("No One")}
						</option>
					</select>
					<span>{__("Who can message you?")}</span>
				</label>
			</div>
		{/if}
	  
		{if $system['pokes_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_poke">
						<option {if $user->_data['user_privacy_poke'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_poke'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_poke'] == "me"}selected{/if} value="me">
							{__("No One")}
						</option>
					</select>
					<span>{__("Who can poke you?")}</span>
				</label>
			</div>
		{/if}

		{if $system['gifts_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_gifts">
						<option {if $user->_data['user_privacy_gifts'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_gifts'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_gifts'] == "me"}selected{/if} value="me">
							{__("No One")}
						</option>
					</select>
					<span>{__("Who can send you gifts?")}</span>
				</label>
			</div>
		{/if}

		{if $system['wall_posts_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_wall">
						<option {if $user->_data['user_privacy_wall'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_wall'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_wall'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can post on your wall?")}</span>
				</label>
			</div>
		{/if}
		
		{if $user->_data['can_add_collaborative_posts']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_collaborative">
						<option {if $user->_data['user_privacy_collaborative'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_collaborative'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_collaborative'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can tag you in collaborative posts?")}</span>
				</label>
			</div>
		{/if}

		{if !$system['genders_disabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_gender">
						<option {if $user->_data['user_privacy_gender'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_gender'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_gender'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your gender?")}</span>
				</label>
			</div>
		{/if}

		{if $system['relationship_info_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_relationship">
						<option {if $user->_data['user_privacy_relationship'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_relationship'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_relationship'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your relationship?")}</span>
				</label>
			</div>
		{/if}

		<div class="form-group col-md-6">
			<label class="ele_field">
				<select name="user_privacy_birthdate">
					<option {if $user->_data['user_privacy_birthdate'] == "public"}selected{/if} value="public">
						{__("Everyone")}
					</option>
					<option {if $user->_data['user_privacy_birthdate'] == "friends"}selected{/if} value="friends">
						{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
					</option>
					<option {if $user->_data['user_privacy_birthdate'] == "me"}selected{/if} value="me">
						{__("Just Me")}
					</option>
				</select>
				<span>{__("Who can see your birthdate?")}</span>
			</label>
		</div>

		<div class="form-group col-md-6">
			<label class="ele_field">
				<select name="user_privacy_basic">
					<option {if $user->_data['user_privacy_basic'] == "public"}selected{/if} value="public">
						{__("Everyone")}
					</option>
					<option {if $user->_data['user_privacy_basic'] == "friends"}selected{/if} value="friends">
						{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
					</option>
					<option {if $user->_data['user_privacy_basic'] == "me"}selected{/if} value="me">
						{__("Just Me")}
					</option>
				</select>
				<span>{__("Who can see your basic info?")}</span>
			</label>
		</div>

		{if $system['work_info_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_work">
						<option {if $user->_data['user_privacy_work'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_work'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_work'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your work info?")}</span>
				</label>
			</div>
		{/if}

		{if $system['location_info_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_location">
						<option {if $user->_data['user_privacy_location'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_location'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_location'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your location info?")}</span>
				</label>
			</div>
		{/if}

		{if $system['education_info_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_education">
						<option {if $user->_data['user_privacy_education'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_education'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_education'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your education info?")}</span>
				</label>
			</div>
		{/if}

		<div class="form-group col-md-6">
			<label class="ele_field">
				<select name="user_privacy_other">
					<option {if $user->_data['user_privacy_other'] == "public"}selected{/if} value="public">
						{__("Everyone")}
					</option>
					<option {if $user->_data['user_privacy_other'] == "friends"}selected{/if} value="friends">
						{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
					</option>
					<option {if $user->_data['user_privacy_other'] == "me"}selected{/if} value="me">
						{__("Just Me")}
					</option>
				</select>
				<span>{__("Who can see your other info?")}</span>
			</label>
		</div>

		{if $system['friends_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_friends">
						<option {if $user->_data['user_privacy_friends'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_friends'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_friends'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your friends?")}</span>
				</label>
			</div>
		{/if}	
		
		<div class="form-group col-md-6">
			<label class="ele_field">
				<select name="user_privacy_followers">
					<option {if $user->_data['user_privacy_followers'] == "public"}selected{/if} value="public">
						{__("Everyone")}
					</option>
					<option {if $user->_data['user_privacy_followers'] == "friends"}selected{/if} value="friends">
						{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
					</option>
					<option {if $user->_data['user_privacy_followers'] == "me"}selected{/if} value="me">
						{__("Just Me")}
					</option>
				</select>
				<span>{__("Who can see your followers/followings?")}</span>
			</label>
		</div>
		
		{if $system['monetization_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_subscriptions">
						<option {if $user->_data['user_privacy_subscriptions'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_subscriptions'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_subscriptions'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your subscriptions?")}</span>
				</label>
			</div>
		{/if}

		<div class="form-group col-md-6">
			<label class="ele_field">
				<select name="user_privacy_photos">
					<option {if $user->_data['user_privacy_photos'] == "public"}selected{/if} value="public">
						{__("Everyone")}
					</option>
					<option {if $user->_data['user_privacy_photos'] == "friends"}selected{/if} value="friends">
						{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
					</option>
					<option {if $user->_data['user_privacy_photos'] == "me"}selected{/if} value="me">
						{__("Just Me")}
					</option>
				</select>
				<span>{__("Who can see your photos?")}</span>
			</label>
		</div>

		{if $system['pages_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_pages">
						<option {if $user->_data['user_privacy_pages'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_pages'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_pages'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your liked pages?")}</span>
				</label>
			</div>
		{/if}

		{if $system['groups_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_groups">
						<option {if $user->_data['user_privacy_groups'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_groups'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_groups'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your joined groups?")}</span>
				</label>
			</div>
		{/if}
		
		{if $system['events_enabled']}
			<div class="form-group col-md-6">
				<label class="ele_field">
					<select name="user_privacy_events">
						<option {if $user->_data['user_privacy_events'] == "public"}selected{/if} value="public">
							{__("Everyone")}
						</option>
						<option {if $user->_data['user_privacy_events'] == "friends"}selected{/if} value="friends">
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
						</option>
						<option {if $user->_data['user_privacy_events'] == "me"}selected{/if} value="me">
							{__("Just Me")}
						</option>
					</select>
					<span>{__("Who can see your joined events?")}</span>
				</label>
			</div>
		{/if}
	</div>

	<!-- success -->
	<div class="alert alert-success mb0 x-hidden"></div>
	<!-- success -->

	<!-- error -->
	<div class="alert alert-danger mb0 x-hidden"></div>

	<div class="text-center ele_sett_bott_btn">
		<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
	</div>
</form>