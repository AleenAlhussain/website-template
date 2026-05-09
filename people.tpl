{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container mt20">
	<!-- content panel -->
	<div class="valign ele_page_titlemulti mb15">
		<h2 class="ele_page_title mb0"><svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.5" d="M9 2C6.38 2 4.25 4.13 4.25 6.75C4.25 9.32 6.26 11.4 8.88 11.49C8.96 11.48 9.04 11.48 9.1 11.49C9.12 11.49 9.13 11.49 9.15 11.49C9.16 11.49 9.16 11.49 9.17 11.49C11.73 11.4 13.74 9.32 13.75 6.75C13.75 4.13 11.62 2 9 2Z"></path><path d="M14.0809 14.1499C11.2909 12.2899 6.74094 12.2899 3.93094 14.1499C2.66094 14.9999 1.96094 16.1499 1.96094 17.3799C1.96094 18.6099 2.66094 19.7499 3.92094 20.5899C5.32094 21.5299 7.16094 21.9999 9.00094 21.9999C10.8409 21.9999 12.6809 21.5299 14.0809 20.5899C15.3409 19.7399 16.0409 18.5999 16.0409 17.3599C16.0309 16.1299 15.3409 14.9899 14.0809 14.1499Z"></path><path opacity="0.5" d="M19.9894 7.3401C20.1494 9.2801 18.7694 10.9801 16.8594 11.2101C16.8494 11.2101 16.8494 11.2101 16.8394 11.2101H16.8094C16.7494 11.2101 16.6894 11.2101 16.6394 11.2301C15.6694 11.2801 14.7794 10.9701 14.1094 10.4001C15.1394 9.4801 15.7294 8.1001 15.6094 6.6001C15.5394 5.7901 15.2594 5.0501 14.8394 4.4201C15.2194 4.2301 15.6594 4.1101 16.1094 4.0701C18.0694 3.9001 19.8194 5.3601 19.9894 7.3401Z"></path><path d="M21.9902 16.5899C21.9102 17.5599 21.2902 18.3999 20.2502 18.9699C19.2502 19.5199 17.9902 19.7799 16.7402 19.7499C17.4602 19.0999 17.8802 18.2899 17.9602 17.4299C18.0602 16.1899 17.4702 14.9999 16.2902 14.0499C15.6202 13.5199 14.8402 13.0999 13.9902 12.7899C16.2002 12.1499 18.9802 12.5799 20.6902 13.9599C21.6102 14.6999 22.0802 15.6299 21.9902 16.5899Z"></path></svg> {__("People")}</h2>
	</div>
	
	<!-- tabs -->
	<div class="valign ele_post_filters">
		<div class="ele_post_filters_nav not_filter valign ele_scroll">
			<a href="{$system['system_url']}/people" class='btn-mat filterby pointer {if $view == "" || $view == "find"}active{/if}'>
				<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 10.9c-.61 0-1.1.49-1.1 1.1s.49 1.1 1.1 1.1c.61 0 1.1-.49 1.1-1.1s-.49-1.1-1.1-1.1zM12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm2.19 12.19L6 18l3.81-8.19L18 6l-3.81 8.19z"></path></svg>{__("Find")}
			</a>
			{if $system['friends_enabled']}
				<a href="{$system['system_url']}/people/friend_requests" class='btn-mat filterby pointer {if $view == "friend_requests"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><g><rect fill="none" height="24" width="24"/></g><g><path d="M15.39,14.56C13.71,13.7,11.53,13,9,13c-2.53,0-4.71,0.7-6.39,1.56C1.61,15.07,1,16.1,1,17.22V20h16v-2.78 C17,16.1,16.39,15.07,15.39,14.56z M9,12c2.21,0,4-1.79,4-4c0-2.21-1.79-4-4-4S5,5.79,5,8C5,10.21,6.79,12,9,12z M20,9V7 c0-0.55-0.45-1-1-1h0c-0.55,0-1,0.45-1,1v2h-2c-0.55,0-1,0.45-1,1v0c0,0.55,0.45,1,1,1h2v2c0,0.55,0.45,1,1,1h0c0.55,0,1-0.45,1-1 v-2h2c0.55,0,1-0.45,1-1v0c0-0.55-0.45-1-1-1H20z"/></g></svg>{__("Friend Requests")}
					{if $user->_data['friend_requests']}
						<span class="badge badge-info align-middle">{count($user->_data['friend_requests'])}</span>
					{/if}
				</a>
				<a href="{$system['system_url']}/people/sent_requests" class='btn-mat filterby pointer {if $view == "sent_requests"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M6 8C6 5.79 7.79 4 10 4S14 5.79 14 8 12.21 12 10 12 6 10.21 6 8M10 14C5.58 14 2 15.79 2 18V20H13.09C13.04 19.67 13 19.34 13 19C13 17.36 13.66 15.87 14.74 14.78C13.41 14.29 11.78 14 10 14M23 19L20 16V18H16V20H20V22L23 19Z" /></svg>{__("Sent Requests")}
					{if $user->_data['friend_requests_sent_total']}
						<span class="badge badge-warning align-middle">{$user->_data['friend_requests_sent_total']}</span>
					{/if}
				</a>
			{/if}
		</div>
	</div>
	<!-- tabs -->

	<!-- content -->
	<div class="row">
		<!-- left panel -->
		<div class="col-lg-4 sidebar rightcol leftcol js_sticky-sidebar">
			<!-- search panel -->
			<div class="ele_content p-3 mb-4">
				<form action="{$system['system_url']}/people/find" method="post">
					<label class="ele_field mb-3">
						<input type="text" name="query" placeholder=" " value="{$query}">
						<span>{__("Search")} {__("Query")}</span>
					</label>
					
					{if $system['location_info_enabled']}
						<!-- city -->
						<label class="ele_field mb-3">
							<input type="text" name="city" placeholder=" " value="{$city}">
							<span>{__("City")}</span>
						</label>
						<!-- city -->
						<!-- country -->
						<label class="ele_field mb-3">
							<select class="" name="country" id="country">
								<option value="none">{__("Any")}</option>
								{foreach $countries as $_country}
									<option {if $country == $_country['country_id']}selected{/if} value="{$_country['country_id']}">{$_country['country_name']}</option>
								{/foreach}
							</select>
							<span>{__("Country")}</span>
						</label>
						<!-- country -->
					{/if}
					
					{if $system['location_finder_enabled']}
						<div class="form-group">
							<label class="form-control-label">{__("Distance")} {$distance_value}</label>
							<div class="valign ele_people_range">
								<input type="range" class="custom-range" min="1" max="5000" name="distance_slider" value="{isset($distance_value)? $distance_value : 5000}" oninput="this.form.distance_value.value=this.value">
								<span class="valign">&nbsp;&nbsp;<input type="text" readonly class="p-0 border-0 bg-transparent" min="1" max="5000" name="distance_value" value="{isset($distance_value)? $distance_value : 5000}" oninput="this.form.distance_slider.value=this.value"> {if $system['system_distance'] == "mile"}{__("ML")}{else}{__("KM")}{/if}</span>
							</div>
						</div>
					{/if}
					
					<div class="form-group {if $system['genders_disabled']}x-hidden{/if}">
						<label class="form-control-label">{__("Gender")}</label>
						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input" id="gender_any" name="gender" value="any" checked>
							<label for="gender_any" class="custom-control-label">{__("Any")}</label>
						</div>
						{foreach $genders as $_gender}
						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input" id="gender_{$_gender['gender_name']}" name="gender" value="{$_gender['gender_id']}" {if $gender == $_gender['gender_id']}checked{/if}>
							<label for="gender_{$_gender['gender_name']}" class="custom-control-label">{$_gender['gender_name']}</label>
						</div>
						{/foreach}
					</div>
					
					<button class="btn btn-secondary btn-sm btn-mat" type="button" data-toggle="collapse" data-target="#more_People" aria-expanded="false" aria-controls="more_People">
						<svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("More")}
					</button>
					
					<div class="collapse" id="more_People">
						<div class="card card-body">
							{if $system['relationship_info_enabled']}
								<label class="ele_field mb-3">
									<select class="" name="relationship">
										<option {if $relationship == "any"}selected{/if} value="any">{__("Any")}</option>
										<option {if $relationship == "single"}selected{/if} value="single">{__("Single")}</option>
										<option {if $relationship == "relationship"}selected{/if} value="relationship">{__("In a relationship")}</option>
										<option {if $relationship == "married"}selected{/if} value="married">{__("Married")}</option>
										<option {if $relationship == "complicated"}selected{/if} value="complicated">{__("It's complicated")}</option>
										<option {if $relationship == "separated"}selected{/if} value="separated">{__("Separated")}</option>
										<option {if $relationship == "divorced"}selected{/if} value="divorced">{__("Divorced")}</option>
										<option {if $relationship == "widowed"}selected{/if} value="widowed">{__("Widowed")}</option>
									</select>
									<span>{__("Relationship")}</span>
								</label>
							{/if}
							
							<!-- online status -->
							<label class="ele_field mb-3">
								<select class="" name="online_status">
									<option {if $online_status == "any"}selected{/if} value="any">{__("Any")}</option>
									<option {if $online_status == "online"}selected{/if} value="online">{__("Online")}</option>
									<option {if $online_status == "offline"}selected{/if} value="offline">{__("Offline")}</option>
								</select>
								<span>{__("Online Status")}</span>
							</label>
							<!-- online status -->
							<!-- verified status -->
							<label class="ele_field mb-0">
								<select class="" name="verified_status">
									<option {if $verified_status == "any"}selected{/if} value="any">{__("Any")}</option>
									<option {if $verified_status == "verified"}selected{/if} value="verified">{__("Verified")}</option>
									<option {if $verified_status == "unverified"}selected{/if} value="unverified">{__("Not Verified")}</option>
								</select>
								<span>{__("Verified Status")}</span>
							</label>
							<!-- verified status -->
							
							<!-- custom fields -->
                                {if $custom_fields}
                                {include file='__custom_fields.tpl' _custom_fields=$custom_fields _registration=true _search=true}
                                {/if}
							<!-- custom fields -->
						</div>
					</div>
					
					<div class="text-center ele_sett_bott_btn">
						<button type="submit" class="btn btn-primary btn-block btn-mat mb-0" name="submit">{__("Search")}</button>
					</div>
              </form>
			</div>
			<!-- search panel -->

			{include file='_ads_campaigns.tpl'}
			{include file='_ads.tpl'}
			{include file='_widget.tpl'}
		</div>
		<!-- left panel -->

		<!-- right panel -->
		<div class="col-lg-8 middlecol">
			<div class="ele_content p-3 mb-4">
				{if $view == ""}
					<div class="valign ele_page_hdng border-0 pt-0 pb5 mb15">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5s-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V18c0 .55.45 1 1 1h12c.55 0 1-.45 1-1v-1.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05.02.01.03.03.04.04 1.14.83 1.93 1.94 1.93 3.41V18c0 .35-.07.69-.18 1H22c.55 0 1-.45 1-1v-1.5c0-2.33-4.67-3.5-7-3.5z"/></svg> {__("People You May Know")}
					</div>

					{if $people}
						<ul class="ele_side_users mx-n2">
							{foreach $people as $_user}
							{include file='__feeds_user.tpl' _tpl="list" _connection="add"}
							{/foreach}
						</ul>

						<!-- see-more -->
						{if count($people) >= $system['min_results']}
							<div class="alert alert-info see-more js_see-more" data-get="new_people">
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
						{/if}
						<!-- see-more -->
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{__("No people available")}
						</div>
					{/if}
				
				{elseif $view == "find"}
					<div class="valign ele_page_hdng border-0 pt-0 pb5 mb15">
						<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><g><rect fill="none" height="24" width="24"/><rect fill="none" height="24" width="24"/></g><g><g><circle cx="10" cy="8" r="4"/><path d="M10.35,14.01C7.62,13.91,2,15.27,2,18v1c0,0.55,0.45,1,1,1h8.54C9.07,17.24,10.31,14.11,10.35,14.01z"/><path d="M19.43,18.02c0.47-0.8,0.7-1.77,0.48-2.82c-0.34-1.64-1.72-2.95-3.38-3.16c-2.63-0.34-4.85,1.87-4.5,4.5 c0.22,1.66,1.52,3.04,3.16,3.38c1.05,0.22,2.02-0.01,2.82-0.48l1.86,1.86c0.39,0.39,1.02,0.39,1.41,0l0,0 c0.39-0.39,0.39-1.02,0-1.41L19.43,18.02z M16,18c-1.1,0-2-0.9-2-2c0-1.1,0.9-2,2-2s2,0.9,2,2C18,17.1,17.1,18,16,18z"/></g></g></svg> {__("Search Results")}
					</div>
					
					{if $people}
						<ul class="ele_side_users mx-n2">
							{foreach $people as $_user}
							{include file='__feeds_user.tpl' _tpl="list" _connection=$_user['connection']}
							{/foreach}
						</ul>
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{__("No people available for your search")}
						</div>
					{/if}
				
				{elseif $view == "friend_requests"}
					<div class="valign ele_page_hdng border-0 pt-0 pb5 mb15">
						<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><g><rect fill="none" height="24" width="24"></rect></g><g><path d="M15.39,14.56C13.71,13.7,11.53,13,9,13c-2.53,0-4.71,0.7-6.39,1.56C1.61,15.07,1,16.1,1,17.22V20h16v-2.78 C17,16.1,16.39,15.07,15.39,14.56z M9,12c2.21,0,4-1.79,4-4c0-2.21-1.79-4-4-4S5,5.79,5,8C5,10.21,6.79,12,9,12z M20,9V7 c0-0.55-0.45-1-1-1h0c-0.55,0-1,0.45-1,1v2h-2c-0.55,0-1,0.45-1,1v0c0,0.55,0.45,1,1,1h2v2c0,0.55,0.45,1,1,1h0c0.55,0,1-0.45,1-1 v-2h2c0.55,0,1-0.45,1-1v0c0-0.55-0.45-1-1-1H20z"></path></g></svg> {__("Respond to Your Friend Request")}
					</div>
					
					{if $user->_data['friend_requests']}
						<ul class="ele_side_users mx-n2">
							{foreach $user->_data['friend_requests'] as $_user}
							{include file='__feeds_user.tpl' _tpl="list" _connection="request"}
							{/foreach}
						</ul>
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{__("No new requests")}
						</div>
					{/if}

					<!-- see-more -->
					{if count($user->_data['friend_requests']) >= $system['max_results']}
						<div class="alert alert-info see-more js_see-more" data-get="friend_requests">
							<span>{__("See More")}</span>
							<div class="loader loader_small x-hidden"></div>
						</div>
					{/if}
					<!-- see-more -->
				
				{elseif $view == "sent_requests"}
					<div class="valign ele_page_hdng border-0 pt-0 pb5 mb15">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M6 8C6 5.79 7.79 4 10 4S14 5.79 14 8 12.21 12 10 12 6 10.21 6 8M10 14C5.58 14 2 15.79 2 18V20H13.09C13.04 19.67 13 19.34 13 19C13 17.36 13.66 15.87 14.74 14.78C13.41 14.29 11.78 14 10 14M23 19L20 16V18H16V20H20V22L23 19Z" /></svg> {__("Friend Requests Sent")}
					</div>

					{if $user->_data['friend_requests_sent']}
						<ul class="ele_side_users mx-n2">
							{foreach $user->_data['friend_requests_sent'] as $_user}
							{include file='__feeds_user.tpl' _tpl="list" _connection="cancel"}
							{/foreach}
						</ul>
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{__("No new requests")}
						</div>
					{/if}

					<!-- see-more -->
					{if count($user->_data['friend_requests_sent']) >= $system['max_results']}
						<div class="alert alert-info see-more js_see-more" data-get="friend_requests_sent">
							<span>{__("See More")}</span>
							<div class="loader loader_small x-hidden"></div>
						</div>
					{/if}
					<!-- see-more -->
				
				{/if}

			</div>
		</div>
		<!-- right panel -->
	</div>
	<!-- content -->

	<!-- content panel -->
</div>
<!-- page content -->

{include file='_footer.tpl'}