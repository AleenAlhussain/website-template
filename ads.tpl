{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
	<div class="circle-1"></div>
	<div class="circle-3"></div>
	<div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Ads Manager")}</h2>
				<p class="text-xlg">{__("Manage Ads, Create new Campaign")}</p>
				{if $view == ""}
					<a class="btn btn-mat" href="{$system['system_url']}/ads/new"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("New Campaign")}</a>
				{/if}
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19 10.2808V17.4308C18.97 20.2808 18.19 21.0008 15.22 21.0008H5.78003C2.76003 21.0008 2 20.2508 2 17.2708V10.2808C2 7.58078 2.63 6.71078 5 6.57078C5.24 6.56078 5.50003 6.55078 5.78003 6.55078H15.22C18.24 6.55078 19 7.30078 19 10.2808Z" fill="currentColor"></path><path d="M22 6.73V13.72C22 16.42 21.37 17.29 19 17.43V10.28C19 7.3 18.24 6.55 15.22 6.55H5.78003C5.50003 6.55 5.24 6.56 5 6.57C5.03 3.72 5.81003 3 8.78003 3H18.22C21.24 3 22 3.75 22 6.73Z" fill="currentColor"></path><path d="M6.95831 18.5586H5.23828C4.82828 18.5586 4.48828 18.2186 4.48828 17.8086C4.48828 17.3986 4.82828 17.0586 5.23828 17.0586H6.95831C7.36831 17.0586 7.70831 17.3986 7.70831 17.8086C7.70831 18.2186 7.37831 18.5586 6.95831 18.5586Z" fill="currentColor"></path><path d="M12.5494 18.5586H9.10938C8.69938 18.5586 8.35938 18.2186 8.35938 17.8086C8.35938 17.3986 8.69938 17.0586 9.10938 17.0586H12.5494C12.9594 17.0586 13.2994 17.3986 13.2994 17.8086C13.2994 18.2186 12.9694 18.5586 12.5494 18.5586Z" fill="currentColor"></path><path d="M19 11.8594H2V13.3594H19V11.8594Z" fill="currentColor"></path></svg>
		</div>
	</div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative">
	
	<!-- content panel -->
		<!-- adblock-warning-message -->
		<div class="alert alert-danger adblock-warning-message">
			{__("Turn off the ad blocker or add this web page's URL as an exception so you use ads system without any problems")}, {__("After you turn off the ad blocker, you'll need to refresh your screen")}
		</div>
		<!-- adblock-warning-message -->

		{if $view == ""}
			<!-- ads campaigns -->
			<div class="mb30 ele_content ele_page_content">
				<div class="valign ele_page_hdng border-0 pt20 pb5 mb0">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M12,8H4A2,2 0 0,0 2,10V14A2,2 0 0,0 4,16H5V20A1,1 0 0,0 6,21H8A1,1 0 0,0 9,20V16H12L17,20V4L12,8M21.5,12C21.5,13.71 20.54,15.26 19,16V8C20.53,8.75 21.5,10.3 21.5,12Z"></path></svg> {__("My Campaigns")}
				</div>

				{if $campaigns}
					<div class="row">
						{foreach $campaigns as $campaign}
							<div class="col-lg-4 col-md-6">
								<div class="ele_content ele_ads_lists">
									<div class="aemp">
										<div class="dropdown">
											<a href="#" class="dropdown-toggle no_dd_arrow" data-toggle="dropdown" role="button" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M7.41,8.58L12,13.17L16.59,8.58L18,10L12,16L6,10L7.41,8.58Z"></path></svg></a>
											<ul class="dropdown-menu dropdown-menu-right ele_create_menu clearfix" role="menu">
												<li>
													<a href="{$system['system_url']}/ads/edit/{$campaign['campaign_id']}">
														<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M9.243 19H21v2H3v-4.243l9.9-9.9 4.242 4.244L9.242 19zm5.07-13.556l2.122-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"></path><path fill="currentColor" d="M5 19h1.414l9.314-9.314-1.414-1.414L5 17.586V19zm16 2H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L9.243 19H21v2zM15.728 6.858l1.414 1.414 1.414-1.414-1.414-1.414-1.414 1.414z"></path></svg> {__("Edit")}
													</a>
												</li>
												<li>
													<a href="javascript:void(0);" class="js_ads-delete-campaign" data-id="{$campaign['campaign_id']}">
														<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M20 7v14a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V7H2V5h20v2h-2zm-9 3v7h2v-7h-2zM7 2h10v2H7V2z"></path><path fill="currentColor" d="M20 7v14a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V7H2V5h20v2h-2zM6 7v13h12V7H6zm1-5h10v2H7V2zm4 8h2v7h-2v-7z"></path></svg> {__("Delete")}
													</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="aid">{$campaign['campaign_start_date']|date_format:"%e/%m/%Y"} - {$campaign['campaign_end_date']|date_format:"%e/%m/%Y"}</div>
									<div class="acomp truncate"><a href="{$system['system_url']}/ads/edit/{$campaign['campaign_id']}">{$campaign['campaign_title']}</a></div>
									<div class="abid">{if $campaign['campaign_bidding'] == "click"}{__("Click")}{else}{__("View")}{/if} {__("Bidding")}</div>
									<div class="valign">
										{if $campaign['campaign_bidding'] == "click"}
											<div><svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path fill="currentColor" d="M13 1.07V9h7c0-4.08-3.05-7.44-7-7.93zM4 15c0 4.42 3.58 8 8 8s8-3.58 8-8v-4H4v4zm7-13.93C7.05 1.56 4 4.92 4 9h7V1.07z"></path></svg> {$campaign['campaign_clicks']} {__("Clicks")}</div>
										{else}
											<div><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M12 4C7 4 2.73 7.11 1 11.5 2.73 15.89 7 19 12 19s9.27-3.11 11-7.5C21.27 7.11 17 4 12 4zm0 12.5c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5zm0-8c-1.66 0-3 1.34-3 3s1.34 3 3 3 3-1.34 3-3-1.34-3-3-3z"></path></svg> {$campaign['campaign_views']} {__("Views")}</div>
										{/if}
										<div><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="currentColor" d="M20 4H4c-1.11 0-1.99.89-1.99 2L2 18c0 1.11.89 2 2 2h16c1.11 0 2-.89 2-2V6c0-1.11-.89-2-2-2zm-1 14H5c-.55 0-1-.45-1-1v-5h16v5c0 .55-.45 1-1 1zm1-10H4V6h16v2z"/></svg> {print_money($campaign['campaign_spend'])} {__("Spend")}</div>
									</div>
									<div class="abid">{__("Created")}: <span class="js_moment" data-time="{$campaign['campaign_created_date']}">{$campaign['campaign_created_date']}</span></div>
									<div class="abid">{__("Budget")}: {print_money($campaign['campaign_budget'])}</div>
									<hr>
									<div class="asts">
										<span class="valign">
											<span>
												<span>{__("Status")}</span>: 
												{if $campaign['campaign_is_declined']}
													{__("Declined")}
												{else}
													{if !$campaign['campaign_is_approved']}
														{__("Approval Pending")}
													{else}
														{if $campaign['campaign_is_active']}
															{__("Active")}
														{else}
															{__("Not Active")}
														{/if}
													{/if}
												{/if}
											</span>
											{if $campaign['campaign_is_approved']}
												{if $campaign['campaign_is_active']}
													<button data-toggle="tooltip" data-placement="top" title='{__("Stop")}' class="btn js_ads-stop-campaign" data-id="{$campaign['campaign_id']}">
														<svg width="22" height="22" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.18C2 19.83 4.17 22 7.81 22H16.18C19.82 22 21.99 19.83 21.99 16.19V7.81C22 4.17 19.83 2 16.19 2ZM16.78 9.7L11.11 15.37C10.97 15.51 10.78 15.59 10.58 15.59C10.38 15.59 10.19 15.51 10.05 15.37L7.22 12.54C6.93 12.25 6.93 11.77 7.22 11.48C7.51 11.19 7.99 11.19 8.28 11.48L10.58 13.78L15.72 8.64C16.01 8.35 16.49 8.35 16.78 8.64C17.07 8.93 17.07 9.4 16.78 9.7Z" fill="currentColor"/></svg>
													</button>
												{else}
													<button data-toggle="tooltip" data-placement="top" title='{__("Resume")}' class="btn js_ads-resume-campaign" data-id="{$campaign['campaign_id']}">
														<svg width="22" height="22" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9 22H15C20 22 22 20 22 15V9C22 4 20 2 15 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
													</button>
												{/if}
											{/if}
										</span>
									</div>
								</div>
							</div>
						{/foreach}
					</div>
				{else}
					{include file='_no_data.tpl'}
				{/if}
			</div>
			<!-- ads campaigns -->

		{elseif $view == "new"}

			<!-- new campaign -->
			<div class="mb30 ele_content ele_page_content">
				<div class="valign ele_page_hdng border-0 pt20 pb0">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M12,8H4A2,2 0 0,0 2,10V14A2,2 0 0,0 4,16H5V20A1,1 0 0,0 6,21H8A1,1 0 0,0 9,20V16H12L17,20V4L12,8M21.5,12C21.5,13.71 20.54,15.26 19,16V8C20.53,8.75 21.5,10.3 21.5,12Z"></path></svg> {__("New Campaign")}
				</div>

				<form class="js_ajax-forms" data-url="ads/campaign.php?do=create">
					{if $user->_data['user_wallet_balance'] == 0}
						<div class="alert alert-danger mt0">
							{__("Your current wallet credit is")}: <strong>{print_money($user->_data['user_wallet_balance'])}</strong> {__("You need to")} <a href="{$system['system_url']}/wallet">{__("Replenish your wallet credit")}</a>
						</div>
					{/if}
					
					{if $system['ads_approval_enabled']}
						<div class="alert alert-warning mt0">
							{__("Your campaign will need to be approved by admin before publishing")}
						</div>
					{/if}

					<div class="row">
						<!-- campaign details & target audience -->
						<div class="col-sm-6">
							<!-- campaign details -->
							<label class="ele_field">
								<input type="text" name="campaign_title" placeholder=" ">
								<span>{__("Campaign Title")}</span>
							</label>
							<span class="help-block">{__("Set a title for your campaign")}</span>
							
							<label class="ele_field">
								<input type="datetime-local" name="campaign_start_date" placeholder=" ">
								<span>{__("Campaign Start Date")}</span>
							</label>
							<span class="help-block">{__("Set Campaign start datetime (UTC)")}</span>
							
							<label class="ele_field">
								<input type="datetime-local" name="campaign_end_date" placeholder=" ">
								<span>{__("Campaign End Date")}</span>
							</label>
							<span class="help-block">{__("Set Campaign end datetime (UTC)")}</span>
							
							<label class="ele_field currency {$system['system_currency_dir']}">
								<input type="text" name="campaign_budget" placeholder=" " min="1.00" max="1000">
								<span>{__("Campaign Budget")}</span>
								<b>{$system['system_currency_symbol']}</b>
							</label>
							<span class="help-block">{__("Set a budget for your campaign, campaign will be paused if reached its limit")}</span>
							
							<label class="ele_field">
								<select name="campaign_bidding">
									<option value="click">{__("Pay Per Click")} ({print_money($system['ads_cost_click'], null, null, false)})</option>
									<option value="view">{__("Pay Per View")} ({print_money($system['ads_cost_view'], null, null, false)})</option>
								</select>
								<span>{__("Campaign Bidding")}</span>
							</label>
                            <!-- campaign details -->
							
							<hr>

							<!-- target audience -->
							<label class="ele_field">
								<select class="" multiple name="audience_countries[]" id="js_ads-audience-countries">
									{foreach $countries as $country}
										<option value="{$country['country_id']}">{$country['country_name']}</option>
									{/foreach}
								</select>
								<span>{__("Audience Country")}</span>
							</label>
							
							<label class="ele_field {if $system['genders_disabled']}x-hidden{/if}">
								<select name="audience_gender" id="js_ads-audience-gender">
									<option value="all">{__("All")}</option>
									{foreach $genders as $gender}
										<option value="{$gender['gender_id']}">{$gender['gender_name']}</option>
									{/foreach}
								</select>
								<span>{__("Audience Gender")}</span>
							</label>
							
							{if $system['relationship_info_enabled']}
								<label class="ele_field">
									<select name="audience_relationship" id="js_ads-audience-relationship">
										<option value="all">{__("All")}</option>
										<option value="single">{__("Single")}</option>
										<option value="relationship">{__("In a relationship")}</option>
										<option value="married">{__("Married")}</option>
										<option value="complicated">{__("It's complicated")}</option>
										<option value="separated">{__("Separated")}</option>
										<option value="divorced">{__("Divorced")}</option>
										<option value="widowed">{__("Widowed")}</option>
									</select>
									<span>{__("Audience Relationship")}</span>
								</label>
							{/if}
							
							<div class="estimated_ad_limit">
								<div class="float-right x-hidden" id="js_ads-potential-reach-loader">
									<div class="spinner-border text-info"></div>
								</div>
								<h4>{__("Potential Reach")}</h4>
								<b class="estimated_text" id="js_ads-potential-reach">{$potential_reach}</b> <span>{__("People")}</span>
							</div>
							<!-- target audience -->
						</div>
						<!-- campaign details & target audience -->

						<!-- ads details -->
						<div class="col-sm-6">
							<label class="ele_field">
								<input type="text" name="ads_title" placeholder=" ">
								<span>{__("Ads Title")}</span>
							</label>
							<span class="help-block">{__("Set a title for your ads")}</span>
							
							<label class="ele_field">
								<textarea placeholder=" " name="ads_description" rows="5"></textarea>
								<span>{__("Ads Description")}</span>
							</label>
							<span class="help-block">{__("Set a description for your ads (maximum 200 characters)")}</span>
							
							<label class="ele_field">
								<select name="ads_type" id="js_campaign-type">
									<option value="url">{__("URL")}</option>
									<option value="post">{__("Post")}</option>
									<option value="page">{__("Page")}</option>
									<option value="group">{__("Group")}</option>
									<option value="event">{__("Event")}</option>
								</select>
								<span>{__("Advertise For")}</span>
							</label>
							<span class="help-block">{__("You can advertise for a URL or one of your posts, pages, groups or events")}</span>
							
							<div id="js_campaign-type-url">
								<label class="ele_field">
									<input type="text" name="ads_url" placeholder=" ">
									<span>{__("Target URL")}</span>
								</label>
								<span class="help-block">{__("Enter your URL you want to advertise for")}</span>
							</div>
							
							<div class="x-hidden" id="js_campaign-type-post">
								<label class="ele_field">
									<input type="text" name="ads_post_url" placeholder=" ">
									<span>{__("Target post URL")}</span>
								</label>
								<span class="help-block">{__("Enter your post URL you want to advertise for")}</span>
							</div>
							
							<div class="x-hidden" id="js_campaign-type-page">
								<label class="ele_field">
									<select name="ads_page">
										<option value="none">{__("Select Page")}</option>
										{foreach $pages as $page}
										<option value="{$page['page_id']}">{__($page['page_title'])}</option>
										{/foreach}
									</select>
									<span>{__("Target Page")}</span>
								</label>
								<span class="help-block">{__("Select one of your pages you want to advertise for")}</span>
							</div>
							
							<div class="x-hidden" id="js_campaign-type-group">
								<label class="ele_field">
									<select name="ads_group">
										<option value="none">{__("Select Group")}</option>
										{foreach $groups as $group}
										<option value="{$group['group_id']}">{__($group['group_title'])}</option>
										{/foreach}
									</select>
									<span>{__("Target Group")}</span>
								</label>
								<span class="help-block">{__("Select one of your groups you want to advertise for")}</span>
							</div>
							
							<div class="x-hidden" id="js_campaign-type-event">
								<label class="ele_field">
									<select name="ads_event">
										<option value="none">{__("Select Event")}</option>
										{foreach $events as $event}
										<option value="{$event['event_id']}">{__($event['event_title'])}</option>
										{/foreach}
									</select>
									<span>{__("Target Group")}</span>
								</label>
								<span class="help-block">{__("Select one of your events you want to advertise for")}</span>
							</div>
							
							<div id="js_campaign-placement">
								<label class="ele_field">
									<select name="ads_placement">
										<option value="newsfeed">{__("Newsfeed")}</option>
										<option value="sidebar">{__("Sidebar")}</option>
									</select>
									<span>{__("Ads Placement")}</span>
								</label>
							</div>

							<div class="form-group" id="js_campaign-image">
								<label class="form-control-label bold" for="ads_image">{__("Ads Image")}</label>
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
									<input type="hidden" class="js_x-uploader-input" name="ads_image">
								</div>
								<span class="form-text">
									{__("The image of your ads, supported formats (JPG, PNG, GIF, WebP, BMP)")}
								</span>
							</div>
							
							<div class="form-group" id="js_campaign-video">
								<label class="form-control-label bold" for="ads_video">{__("Or")} {__("Ads Video")}</label>
								<div class="x-image">
									<div class="x-image-success">
										{__("Uploaded Successfully")}
									</div>
									<button type="button" class="close x-hidden js_x-video-remover" title='{__("Remove")}'></button>
									<div class="x-image-loader">
										<div class="progress x-progress">
											<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									<i class="fa fa-video fa-lg js_x-uploader" data-type="video" data-handle="x-video"></i>
									<input type="hidden" class="js_x-uploader-input" name="ads_video">
								</div>
								<div class="form-text">
									{__("Maximum file size is")} {$system['max_video_size']/1024}{__("MB")} {__("and allowed extensions are")} ({strtoupper($system['video_extensions'])})
								</div>
							</div>
						</div>
						<!-- ads details -->
					</div>

					<!-- error -->
					<div class="alert alert-danger mb0 x-hidden"></div>
					<!-- error -->

					<div class="text-center ele_sett_bott_btn">
						<a class="btn btn-mat" href="{$system['system_url']}/ads"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Publish")}</button>
					</div>
				</form>
			</div>
			<!-- new campaign -->

		{elseif $view == "edit"}

			<!-- edit campaign -->
			<div class="mb30 ele_content ele_page_content">
				<div class="valign ele_page_hdng border-0 pt20 pb0">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M2,6V8H14V6H2M2,10V12H14V10H2M20.04,10.13C19.9,10.13 19.76,10.19 19.65,10.3L18.65,11.3L20.7,13.35L21.7,12.35C21.92,12.14 21.92,11.79 21.7,11.58L20.42,10.3C20.31,10.19 20.18,10.13 20.04,10.13M18.07,11.88L12,17.94V20H14.06L20.12,13.93L18.07,11.88M2,14V16H10V14H2Z"></path></svg> {__("Edit Campaign")}
				</div>

				<form class="js_ajax-forms" data-url="ads/campaign.php?do=edit&id={$campaign['campaign_id']}">
					{if $user->_data['user_wallet_balance'] == 0}
						<div class="alert alert-danger mt0">
							{__("Your current wallet credit is")}: <strong>{print_money($user->_data['user_wallet_balance'])}</strong> {__("You need to")} <a href="{$system['system_url']}/wallet">{__("Replenish your wallet credit")}</a>
						</div>
					{/if}

					{if $system['ads_approval_enabled']}
						<div class="alert alert-warning mt0">
							{__("Your campaign will need to be approved by admin before publishing")}
						</div>
					{/if}

					<div class="row">
						<!-- campaign details & target audience -->
						<div class="col-sm-6">
							<!-- campaign details -->
							<label class="ele_field">
								<input type="text" name="campaign_title" placeholder=" " value="{$campaign['campaign_title']}">
								<span>{__("Campaign Title")}</span>
							</label>
							<span class="help-block">{__("Set a title for your campaign")}</span>
							
							<label class="ele_field">
								<input type="datetime-local" name="campaign_start_date" placeholder=" " value="{$campaign['campaign_start_date']}">
								<span>{__("Campaign Start Date")}</span>
							</label>
							<span class="help-block">{__("Set Campaign start datetime (UTC)")}</span>
							
							<label class="ele_field">
								<input type="datetime-local" name="campaign_end_date" placeholder=" " value="{$campaign['campaign_end_date']}">
								<span>{__("Campaign End Date")}</span>
							</label>
							<span class="help-block">{__("Set Campaign end datetime (UTC)")}</span>
							
							<label class="ele_field currency {$system['system_currency_dir']}">
								<input type="text" name="campaign_budget" placeholder=" " min="1.00" max="1000" value="{$campaign['campaign_budget']}">
								<span>{__("Campaign Budget")}</span>
								<b>{$system['system_currency_symbol']}</b>
							</label>
							<span class="help-block">{__("Set a budget for your campaign, campaign will be paused if reached its limit")}</span>
							
							<label class="ele_field">
								<select name="campaign_bidding">
									<option {if $campaign['campaign_bidding'] == "click"}selected{/if} value="click">{__("Pay Per Click")} ({print_money($system['ads_cost_click'], null, null, false)})</option>
									<option {if $campaign['campaign_bidding'] == "view"}selected{/if} value="view">{__("Pay Per View")} ({print_money($system['ads_cost_view'], null, null, false)})</option>
								</select>
								<span>{__("Campaign Bidding")}</span>
							</label>
                            <!-- campaign details -->
							
							<hr>
							
							<!-- target audience -->
							<label class="ele_field">
								<select class="" multiple name="audience_countries[]" id="js_ads-audience-countries">
									{foreach $countries as $country}
										<option {if in_array($country['country_id'], $campaign['audience_countries'])}selected{/if} value="{$country['country_id']}">{$country['country_name']}</option>
									{/foreach}
								</select>
								<span>{__("Audience Country")}</span>
							</label>
							
							<label class="ele_field {if $system['genders_disabled']}x-hidden{/if}">
								<select name="audience_gender" id="js_ads-audience-gender">
									<option value="all">{__("All")}</option>
									<option {if $campaign['audience_gender'] == "all"}selected{/if} value="all">{__("All")}</option>
									{foreach $genders as $gender}
										<option {if $campaign['audience_gender'] == $gender['gender_id']}selected{/if} value="{$gender['gender_id']}">{$gender['gender_name']}</option>
									{/foreach}
								</select>
								<span>{__("Audience Gender")}</span>
							</label>
							
							{if $system['relationship_info_enabled']}
								<label class="ele_field">
									<select name="audience_relationship" id="js_ads-audience-relationship">
										<option {if $campaign['audience_relationship'] == "all"}selected{/if} value="all">{__("All")}</option>
										<option {if $campaign['audience_relationship'] == "single"}selected{/if} value="single">{__("Single")}</option>
										<option {if $campaign['audience_relationship'] == "relationship"}selected{/if} value="relationship">{__("In a relationship")}</option>
										<option {if $campaign['audience_relationship'] == "married"}selected{/if} value="married">{__("Married")}</option>
										<option {if $campaign['audience_relationship'] == "complicated"}selected{/if} value="complicated">{__("It's complicated")}</option>
										<option {if $campaign['audience_relationship'] == "separated"}selected{/if} value="separated">{__("Separated")}</option>
										<option {if $campaign['audience_relationship'] == "divorced"}selected{/if} value="divorced">{__("Divorced")}</option>
										<option {if $campaign['audience_relationship'] == "widowed"}selected{/if} value="widowed">{__("Widowed")}</option>
									</select>
									<span>{__("Audience Relationship")}</span>
								</label>
							{/if}
							
							<div class="estimated_ad_limit">
								<div class="float-right x-hidden" id="js_ads-potential-reach-loader">
									<div class="spinner-border text-info"></div>
								</div>
								<h4>{__("Potential Reach")}</h4>
								<b class="estimated_text" id="js_ads-potential-reach">{$campaign['campaign_potential_reach']}</b> <span>{__("People")}</span>
							</div>
							<!-- target audience -->
						</div>
						<!-- campaign details & target audience -->

						<!-- ads details -->
						<div class="col-sm-6">
							<label class="ele_field">
								<input type="text" name="ads_title" placeholder=" " value="{$campaign['ads_title']}">
								<span>{__("Ads Title")}</span>
							</label>
							<span class="help-block">{__("Set a title for your ads")}</span>
							
							<label class="ele_field">
								<textarea placeholder=" " name="ads_description" rows="5">{$campaign['ads_description']}</textarea>
								<span>{__("Ads Description")}</span>
							</label>
							<span class="help-block">{__("Set a description for your ads (maximum 200 characters)")}</span>
							
							<label class="ele_field">
								<select name="ads_type" id="js_campaign-type">
									<option {if $campaign['ads_type'] == "url"}selected{/if} value="url">{__("URL")}</option>
									<option {if $campaign['ads_type'] == "post"}selected{/if} value="post">{__("Post")}</option>
									<option {if $campaign['ads_type'] == "page"}selected{/if} value="page">{__("Page")}</option>
									<option {if $campaign['ads_type'] == "group"}selected{/if} value="group">{__("Group")}</option>
									<option {if $campaign['ads_type'] == "event"}selected{/if} value="event">{__("Event")}</option>
								</select>
								<span>{__("Advertise For")}</span>
							</label>
							<span class="help-block">{__("You can advertise for a URL or one of your pages, groups or events")}</span>
							
							<div class="{if $campaign['ads_type'] != 'url'}x-hidden{/if}" id="js_campaign-type-url">
								<label class="ele_field">
									<input type="text" name="ads_url" placeholder=" " value="{$campaign['ads_url']}">
									<span>{__("Target URL")}</span>
								</label>
								<span class="help-block">{__("Enter your URL you want to advertise for")}</span>
							</div>
							
							<div class="{if $campaign['ads_type'] != 'post'}x-hidden{/if}" id="js_campaign-type-post">
								<label class="ele_field">
									<input type="text" name="ads_post_url" placeholder=" " value="{$campaign['ads_post_url']}">
									<span>{__("Target post URL")}</span>
								</label>
								<span class="help-block">{__("Enter your post URL you want to advertise for")}</span>
							</div>
							
							<div class="{if $campaign['ads_type'] != 'page'}x-hidden{/if}" id="js_campaign-type-page">
								<label class="ele_field">
									<select name="ads_page">
										<option value="none">{__("Select Page")}</option>
										{foreach $pages as $page}
											<option {if $campaign['ads_page'] == $page['page_id']}selected{/if} value="{$page['page_id']}">{__($page['page_title'])}</option>
										{/foreach}
									</select>
									<span>{__("Target Page")}</span>
								</label>
								<span class="help-block">{__("Select one of your pages you want to advertise for")}</span>
							</div>
							
							<div class="{if $campaign['ads_type'] != 'group'}x-hidden{/if}" id="js_campaign-type-group">
								<label class="ele_field">
									<select name="ads_group">
										<option value="none">{__("Select Group")}</option>
										{foreach $groups as $group}
											<option {if $campaign['ads_group'] == $group['group_id']}selected{/if} value="{$group['group_id']}">{__($group['group_title'])}</option>
										{/foreach}
									</select>
									<span>{__("Target Group")}</span>
								</label>
								<span class="help-block">{__("Select one of your groups you want to advertise for")}</span>
							</div>
							
							<div class="{if $campaign['ads_type'] != 'event'}x-hidden{/if}" id="js_campaign-type-event">
								<label class="ele_field">
									<select name="ads_event">
										<option value="none">{__("Select Event")}</option>
										{foreach $events as $event}
										<option {if $campaign['ads_event'] == $event['event_id']}selected{/if} value="{$event['event_id']}">{__($event['event_title'])}</option>
										{/foreach}
									</select>
									<span>{__("Target Group")}</span>
								</label>
								<span class="help-block">{__("Select one of your events you want to advertise for")}</span>
							</div>
							
							<div class="{if $campaign['ads_type'] == 'post'}x-hidden{/if}" id="js_campaign-placement">
								<label class="ele_field">
									<select name="ads_placement">
										<option {if $campaign['ads_placement'] == "newsfeed"}selected{/if} value="newsfeed">{__("Newsfeed")}</option>
										<option {if $campaign['ads_placement'] == "sidebar"}selected{/if} value="sidebar">{__("Sidebar")}</option>
									</select>
									<span>{__("Ads Placement")}</span>
								</label>
							</div>
							
							<div class="form-group {if $campaign['ads_type'] == 'post'}x-hidden{/if}" id="js_campaign-image">
								<label class="form-control-label bold" for="ads_image">{__("Ads Image")}</label>
								{if $campaign['ads_image'] == ''}
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
										<input type="hidden" class="js_x-uploader-input" name="ads_image">
									</div>
								{else}
									<div class="x-image" style="background-image: url('{$system['system_uploads']}/{$campaign['ads_image']}')">
										<button type="button" class="close js_x-image-remover" title='{__("Remove")}'>
											<span>×</span>
										</button>
										<div class="x-image-loader">
											<div class="progress x-progress">
												<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
										<input type="hidden" class="js_x-uploader-input" name="ads_image" value="{$campaign['ads_image']}">
									</div>
								{/if}
								<span class="form-text">
									{__("The image of your ads, supported formats (JPG, PNG, GIF, WebP, BMP)")}
								</span>
							</div>
							
							<div class="form-group {if $campaign['ads_type'] == 'post'}x-hidden{/if}" id="js_campaign-video">
								<label class="form-control-label bold" for="ads_video">{__("Or")} {__("Ads Video")}</label>
								{if $campaign['ads_video'] == ''}
									<div class="x-image">
										<div class="x-image-success">
											{__("Uploaded Successfully")}
										</div>
										<button type="button" class="close x-hidden js_x-video-remover" title='{__("Remove")}'></button>
										<div class="x-image-loader">
											<div class="progress x-progress">
												<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<i class="fa fa-video fa-lg js_x-uploader" data-type="video" data-handle="x-video"></i>
										<input type="hidden" class="js_x-uploader-input" name="ads_video">
									</div>
								{else}
									<div class="x-image" style="background-image: url('{$system['system_uploads']}/{$campaign['ads_video']}')">
										<div class="x-image-success" style="display: block;">
											{__("Uploaded Successfully")}
										</div>
										<button type="button" class="close js_x-video-remover" title='{__("Remove")}'></button>
										<div class="x-image-loader">
											<div class="progress x-progress">
												<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<i class="fa fa-video fa-lg js_x-uploader" data-type="video" data-handle="x-video"></i>
										<input type="hidden" class="js_x-uploader-input" name="ads_video" value="{$campaign['ads_video']}">
									</div>
								{/if}
								<div class="form-text">
									{__("Maximum file size is")} {$system['max_video_size']/1024}{__("MB")} {__("and allowed extensions are")} ({strtoupper($system['video_extensions'])})
								</div>
							</div>
						</div>
						<!-- ads details -->
					</div>

					<!-- success -->
					<div class="alert alert-success mb0 x-hidden"></div>
					<!-- success -->

					<!-- error -->
					<div class="alert alert-danger mb0 x-hidden"></div>
					<!-- error -->

					<div class="text-center ele_sett_bott_btn">
						<a class="btn btn-mat" href="{$system['system_url']}/ads"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
					</div>
				</form>
			</div>
			<!-- edit campaign -->

		{/if}
	<!-- content panel -->
</div>
<!-- page content -->

{include file='_footer.tpl'}