{include file='_head.tpl'}
{include file='_header.tpl'}

<div class="container mt20">
	<!-- announcments -->
	{include file='_announcements.tpl'}
	<!-- announcments -->
	
	<div class="{if $view == "" && $system['daytime_msg_enabled']}home_padd_top{/if}">
		{if $view == ""}
			{if $user->_logged_in}
				<!-- stories -->
				{if $user->_data['can_add_stories'] || ($system['stories_enabled'] && !empty($stories['array']))}
					<div class="mb30 ele_home_stories">
						<div class="empty_stories">
							<div class="story_empty"><a><span><b></b></span></a><p></p></div>
							<div class="story_empty"><a><span><b></b></span></a><p></p></div>
							<div class="story_empty"><a><span><b></b></span></a><p></p></div>
							<div class="story_empty"><a><span><b></b></span></a><p></p></div>
							<div class="story_empty"><a><span><b></b></span></a><p></p></div>
							<div class="story_empty"><a><span><b></b></span></a><p></p></div>
							<div class="story_empty"><a><span><b></b></span></a><p></p></div>
						</div>
						<div id="stories" data-json='{htmlspecialchars($stories["json"], ENT_QUOTES, "UTF-8")}'>
							{if $has_story}
								<div class="create_story ele_story_actions">
									<button class="btn ele_content mb10 js_story-deleter">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#EF4C5D" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 6h16l-1.58 14.22A2 2 0 0 1 16.432 22H7.568a2 2 0 0 1-1.988-1.78L4 6z"/><path d="M7.345 3.147A2 2 0 0 1 9.154 2h5.692a2 2 0 0 1 1.81 1.147L18 6H6l1.345-2.853z"/><path d="M2 6h20"/><path d="M10 11v5"/><path d="M14 11v5"/></svg> {__("Delete Your Story")}
									</button>
									<button class="btn ele_content" data-toggle="modal" data-url="posts/story.php?do=create">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#1BC3BB" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 8v4m0 0v4m0-4h4m-4 0H8"/><circle cx="12" cy="12" r="10"/></svg> {__("Create Story")}
									</button>
									<p class="truncate pointer">{__("Stories")}</p>
								</div>
							{else}
								{if $user->_data['can_add_stories']}
									<div class="create_story" data-toggle="modal" data-url="posts/story.php?do=create">
										<a>
											<img src="{$user->_data['user_picture']}">
											<span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M19,13H13V19H11V13H5V11H11V5H13V11H19V13Z" /></svg></span>
										</a>
										<p class="truncate pointer">{__("Create Story")}</p>
									</div>
								{/if}
							{/if}
						</div>
					</div>
					<hr class="style-two mb30">
				{/if}
				<!-- stories -->
			{/if}
		{/if}
		
		<div class="row">
			<div class="col-lg-8 middlecol">
				{if $view == ""}
					{if $user->_logged_in}
						{if $system['merits_enabled'] && $system['merits_widgets_newsfeed']}
							<!-- merits -->
							<div class="ele_content mb20">
								<div class="valign ele_sidebar_widget_title px-0 pt-0">
									<b>{__("Merits")}</b>
								</div>
						
								{if $merits_categories}
									<div class="merits-box-wrapper js_merits_slick">
										{foreach $merits_categories as $_category}
											<div class="merit-box" data-toggle="modal" data-size="large" data-url="users/merits.php?do=publish&category_id={$_category['category_id']}">
												<img src="{$system['system_uploads']}/{$_category['category_image']}" width="64px" height="64px">
												<div class="name">{$_category['category_name']}</div>
											</div>
										{/foreach}
									</div>
								{/if}
							</div>
							<!-- merits -->
						{/if}
			  
						<!-- publisher -->
						{include file='_publisher.tpl' _handle="me" _node_can_monetize_content=$user->_data['can_monetize_content'] _node_monetization_enabled=$user->_data['user_monetization_enabled'] _node_monetization_plans=$user->_data['user_monetization_plans'] _privacy=true}
						<!-- publisher -->
						
						{include file='_widget.tpl' widgets=$newsfeed_widgets}

						<!-- boosted post -->
						{if $boosted_post}
							{include file='_boosted_post.tpl' post=$boosted_post}
						{/if}
						<!-- boosted post -->
					{/if}

					<!-- posts -->
					{include file='_posts.tpl' _get="newsfeed"}
					<!-- posts -->

				{elseif $view == "popular"}
					<h2 class="ele_page_title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.18C2 19.83 4.17 22 7.81 22H16.18C19.82 22 21.99 19.83 21.99 16.19V7.81C22 4.17 19.83 2 16.19 2Z" fill="currentColor"/><path d="M7.33011 15.2381C7.17011 15.2381 7.01011 15.1881 6.87011 15.0781C6.54011 14.8281 6.48011 14.3581 6.73011 14.0281L9.11011 10.9381C9.40011 10.5681 9.81011 10.3281 10.2801 10.2681C10.7401 10.2081 11.2101 10.3381 11.5801 10.6281L13.4101 12.0681C13.4801 12.1281 13.5501 12.1281 13.6001 12.1181C13.6401 12.1181 13.7101 12.0981 13.7701 12.0181L16.0801 9.03805C16.3301 8.70805 16.8101 8.64805 17.1301 8.90805C17.4601 9.15805 17.5201 9.62805 17.2601 9.95805L14.9501 12.9381C14.6601 13.3081 14.2501 13.5481 13.7801 13.5981C13.3101 13.6581 12.8501 13.5281 12.4801 13.2381L10.6501 11.7981C10.5801 11.7381 10.5001 11.7381 10.4601 11.7481C10.4201 11.7481 10.3501 11.7681 10.2901 11.8481L7.91011 14.9381C7.78011 15.1381 7.56011 15.2381 7.33011 15.2381Z" fill="currentColor"/></svg> {__("Popular Posts")}</h2>
					
					<!-- popular posts -->
					{include file='_posts.tpl' _get="popular"}
					<!-- popular posts -->

				{elseif $view == "discover"}
					<h2 class="ele_page_title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M13.89 2.8799L9.19999 2.1399C5.28999 1.5299 3.47999 2.8499 2.85999 6.7599L2.11999 11.4499C1.71999 14.0099 2.13999 15.6699 3.58999 16.6799C4.34999 17.2199 5.38999 17.5799 6.73999 17.7899L11.43 18.5299C15.34 19.1399 17.15 17.8199 17.77 13.9099L18.5 9.2199C18.62 8.4499 18.67 7.7599 18.63 7.1499C18.5 4.6499 17.03 3.3699 13.89 2.8799ZM8.23999 9.3499C7.06999 9.3499 6.11999 8.3999 6.11999 7.2399C6.11999 6.0699 7.06999 5.1199 8.23999 5.1199C9.39999 5.1199 10.35 6.0699 10.35 7.2399C10.35 8.3999 9.39999 9.3499 8.23999 9.3499Z" fill="currentColor"/><path d="M20.4998 13.4699L18.9998 17.9799C17.7498 21.7399 15.7498 22.7399 11.9898 21.4899L7.47984 19.9899C5.20984 19.2399 3.94984 18.1999 3.58984 16.6799C4.34984 17.2199 5.38984 17.5799 6.73984 17.7899L11.4298 18.5299C15.3398 19.1399 17.1498 17.8199 17.7698 13.9099L18.4998 9.2199C18.6198 8.4499 18.6698 7.7599 18.6298 7.1499C21.0198 8.4199 21.5398 10.3399 20.4998 13.4699Z" fill="currentColor"/><path d="M10.3491 7.24012C10.3491 8.40012 9.39914 9.35012 8.23914 9.35012C7.06914 9.35012 6.11914 8.40012 6.11914 7.24012C6.11914 6.07012 7.06914 5.12012 8.23914 5.12012C9.39914 5.12012 10.3491 6.07012 10.3491 7.24012Z" fill="currentColor"/></svg> {__("Discover Posts")}</h2>
					
					<!-- discover posts -->
					{include file='_posts.tpl' _get="discover"}
					<!-- discover posts -->

				{elseif $view == "saved"}
					<h2 class="ele_page_title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.4" d="M16.8203 2H7.18031C5.05031 2 3.32031 3.74 3.32031 5.86V19.95C3.32031 21.75 4.61031 22.51 6.19031 21.64L11.0703 18.93C11.5903 18.64 12.4303 18.64 12.9403 18.93L17.8203 21.64C19.4003 22.52 20.6903 21.76 20.6903 19.95V5.86C20.6803 3.74 18.9503 2 16.8203 2Z" fill="currentColor"></path> <path d="M12.0007 10.2801C10.9807 10.2801 9.96074 10.1001 8.99074 9.75005C8.60074 9.61005 8.40074 9.18005 8.54074 8.79005C8.69074 8.40005 9.12074 8.20005 9.51074 8.34005C11.1207 8.92005 12.8907 8.92005 14.5007 8.34005C14.8907 8.20005 15.3207 8.40005 15.4607 8.79005C15.6007 9.18005 15.4007 9.61005 15.0107 9.75005C14.0407 10.1001 13.0207 10.2801 12.0007 10.2801Z" fill="currentColor"></path> </svg> {__("Saved Posts")}</h2>
					
					<!-- saved posts -->
					{include file='_posts.tpl' _get="saved"}
					<!-- saved posts -->
					
				{elseif $view == "scheduled"}
					<h2 class="ele_page_title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8.10002 1.25C8.63849 1.25 9.07502 1.68754 9.07502 2.22727V3.21284C9.65291 3.20453 10.2784 3.20453 10.9537 3.20454H13.0464C13.7216 3.20453 14.3471 3.20453 14.925 3.21284V2.22727C14.925 1.68754 15.3615 1.25 15.9 1.25C16.4385 1.25 16.875 1.68754 16.875 2.22727V3.29947C17.0513 3.31556 17.221 3.33437 17.3843 3.35638C18.5544 3.51407 19.5397 3.85141 20.3222 4.63573C21.1047 5.42004 21.4412 6.40758 21.5985 7.58045C21.6826 8.20706 21.72 8.92803 21.7367 9.75H2.26337C2.28002 8.92803 2.31745 8.20705 2.4015 7.58045C2.55882 6.40758 2.89538 5.42004 3.67787 4.63573C4.46036 3.85141 5.4456 3.51407 6.61574 3.35638C6.77904 3.33437 6.94876 3.31556 7.12502 3.29947V2.22727C7.12502 1.68754 7.56154 1.25 8.10002 1.25Z" fill="currentColor"/><g opacity="0.4"><path d="M10.9977 22.75C9.21986 22.75 7.74279 22.75 6.61573 22.5982C5.44559 22.4405 4.46035 22.1031 3.67786 21.3188C2.89537 20.5345 2.5588 19.547 2.40148 18.3741C2.24996 17.2444 2.24998 15.8081 2.25 14.0261V14.0261V11.9285V11.9284C2.24999 11.1349 2.24998 10.4099 2.26335 9.75H4.21386C4.20045 10.3958 4.20001 11.1378 4.20001 12V13.9545C4.20001 15.8249 4.20208 17.1294 4.3341 18.1137C4.46235 19.0698 4.69693 19.5761 5.05673 19.9367C5.41652 20.2974 5.92166 20.5325 6.87557 20.6611C7.85752 20.7934 9.15897 20.7955 11.025 20.7955C11.5647 20.7955 11.975 21.233 11.975 21.7727C11.975 22.3125 11.5375 22.75 10.9977 22.75Z" fill="currentColor"/><path d="M19.8 11.9796C19.8 11.1173 19.7996 10.3958 19.7862 9.75H21.7367C21.75 10.4099 21.75 11.1349 21.75 11.9285C21.75 12.467 21.3135 12.9545 20.775 12.9545C20.2365 12.9545 19.8 12.518 19.8 11.9796Z" fill="currentColor"/></g><path fill-rule="evenodd" clip-rule="evenodd" d="M17 13.25C14.3766 13.25 12.25 15.3766 12.25 18C12.25 20.6234 14.3766 22.75 17 22.75C19.6234 22.75 21.75 20.6234 21.75 18C21.75 15.3766 19.6234 13.25 17 13.25ZM17.75 16.2656C17.75 15.8514 17.4142 15.5156 17 15.5156C16.5858 15.5156 16.25 15.8514 16.25 16.2656V17.9988C16.25 18.2716 16.3982 18.523 16.6369 18.6551L17.904 19.3562C18.2664 19.5567 18.7228 19.4255 18.9233 19.0631C19.1239 18.7006 18.9926 18.2442 18.6302 18.0437L17.75 17.5567V16.2656Z" fill="currentColor"/></svg> {__("Scheduled Posts")}</h2>
					
					<!-- scheduled posts -->
					{include file='_posts.tpl' _get="scheduled"}
					<!-- scheduled posts -->

				{elseif $view == "memories"}
					<!-- page header -->
					<h2 class="ele_page_title mb0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M18.3495 19.68C17.7995 21.09 16.4595 22 14.9495 22H9.04949C7.52949 22 6.19949 21.09 5.64949 19.68C5.09949 18.26 5.47949 16.69 6.59949 15.67L10.6495 12H13.3595L17.3995 15.67C18.5195 16.69 18.8895 18.26 18.3495 19.68Z" fill="currentColor"/><path d="M13.82 18.1412H10.18C9.8 18.1412 9.5 17.8312 9.5 17.4612C9.5 17.0812 9.81 16.7812 10.18 16.7812H13.82C14.2 16.7812 14.5 17.0912 14.5 17.4612C14.5 17.8312 14.19 18.1412 13.82 18.1412Z" fill="currentColor"/><path d="M18.3506 4.32C17.8006 2.91 16.4606 2 14.9506 2H9.05065C7.54065 2 6.20065 2.91 5.65065 4.32C5.11065 5.74 5.48065 7.31 6.61065 8.33L10.6506 12H13.3606L17.4006 8.33C18.5206 7.31 18.8906 5.74 18.3506 4.32ZM13.8206 7.23H10.1806C9.80065 7.23 9.50065 6.92 9.50065 6.55C9.50065 6.18 9.81065 5.87 10.1806 5.87H13.8206C14.2006 5.87 14.5006 6.18 14.5006 6.55C14.5006 6.92 14.1906 7.23 13.8206 7.23Z" fill="currentColor"/></svg> {__("Memories")}</h2>
					<p class="mb15 ele_page_subtitle">{__("Enjoy looking back on your memories")}</p>
					<!-- page header -->

					<!-- memories posts -->
					{include file='_posts.tpl' _get="memories" _filter="all"}
					<!-- memories posts -->

				{elseif $view == "blogs"}
					<!-- blogs posts -->
					{include file='_posts.tpl' _get="posts_profile" _id=$user->_data['user_id'] _filter="article"}
					<!-- blogs posts -->

				{elseif $view == "products"}
					<!-- products posts -->
					{include file='_posts.tpl' _get="posts_profile" _id=$user->_data['user_id'] _filter="product"}
					<!-- products posts -->

				{elseif $view == "funding"}
					<!-- funding posts -->
					{include file='_posts.tpl' _get="posts_profile" _id=$user->_data['user_id'] _filter="funding"}
					<!-- funding posts -->
					
				{elseif $view == "offers"}
					<!-- funding posts -->
					{include file='_posts.tpl' _get="posts_profile" _id=$user->_data['user_id'] _filter="offer"}
					<!-- funding posts -->

				{elseif $view == "jobs"}
					<!-- jobs posts -->
					{include file='_posts.tpl' _get="posts_profile" _id=$user->_data['user_id'] _filter="job"}
					<!-- jobs posts -->

				{elseif $view == "courses"}
					<!-- courses posts -->
					{include file='_posts.tpl' _get="posts_profile" _id=$user->_data['user_id'] _filter="course"}
					<!-- courses posts -->

				{elseif $view == "boosted_posts"}
					<h2 class="ele_page_title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M11.9707 22C17.4936 22 21.9707 17.5228 21.9707 12C21.9707 6.47715 17.4936 2 11.9707 2C6.44786 2 1.9707 6.47715 1.9707 12C1.9707 17.5228 6.44786 22 11.9707 22Z" fill="currentColor"/><path d="M15.2505 11.2992H13.5505V7.3392C13.5505 6.4192 13.0505 6.2292 12.4405 6.9192L12.0005 7.4192L8.28045 11.6492C7.77045 12.2292 7.98045 12.6992 8.75045 12.6992H10.4505V16.6592C10.4505 17.5792 10.9505 17.7692 11.5605 17.0792L12.0005 16.5792L15.7205 12.3492C16.2305 11.7692 16.0205 11.2992 15.2505 11.2992Z" fill="currentColor"/></svg> {__("My Boosted Posts")}</h2>
					
					{if $user->_is_admin || $user->_data['user_subscribed']}
						<!-- boosted posts -->
						{include file='_posts.tpl' _get="boosted"}
						<!-- boosted posts -->
					{else}
						<!-- upgrade -->
						<div class="ele_content">
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19 10.2808V17.4308C18.97 20.2808 18.19 21.0008 15.22 21.0008H5.78003C2.76003 21.0008 2 20.2508 2 17.2708V10.2808C2 7.58078 2.63 6.71078 5 6.57078C5.24 6.56078 5.50003 6.55078 5.78003 6.55078H15.22C18.24 6.55078 19 7.30078 19 10.2808Z" fill="currentColor"/><path d="M22 6.73V13.72C22 16.42 21.37 17.29 19 17.43V10.28C19 7.3 18.24 6.55 15.22 6.55H5.78003C5.50003 6.55 5.24 6.56 5 6.57C5.03 3.72 5.81003 3 8.78003 3H18.22C21.24 3 22 3.75 22 6.73Z" fill="currentColor"/><path d="M6.95831 18.5586H5.23828C4.82828 18.5586 4.48828 18.2186 4.48828 17.8086C4.48828 17.3986 4.82828 17.0586 5.23828 17.0586H6.95831C7.36831 17.0586 7.70831 17.3986 7.70831 17.8086C7.70831 18.2186 7.37831 18.5586 6.95831 18.5586Z" fill="currentColor"/><path d="M12.5494 18.5586H9.10938C8.69938 18.5586 8.35938 18.2186 8.35938 17.8086C8.35938 17.3986 8.69938 17.0586 9.10938 17.0586H12.5494C12.9594 17.0586 13.2994 17.3986 13.2994 17.8086C13.2994 18.2186 12.9694 18.5586 12.5494 18.5586Z" fill="currentColor"/><path d="M19 11.8594H2V13.3594H19V11.8594Z" fill="currentColor"/></svg> {__("Membership")}
								<p class="mb30">{__("Choose the Plan That's Right for You")}, {__("Check the package from")} <a href="{$system['system_url']}/packages">{__("Here")}</p>
								<div class="text-center">
									<a href="{$system['system_url']}/packages" class="btn btn-mat btn-primary">{__("Upgrade to Pro")}</a>
								</div>
							</div>
						</div>
						<!-- upgrade -->
					{/if}

				{elseif $view == "boosted_pages"}
					<h2 class="ele_page_title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M11.9707 22C17.4936 22 21.9707 17.5228 21.9707 12C21.9707 6.47715 17.4936 2 11.9707 2C6.44786 2 1.9707 6.47715 1.9707 12C1.9707 17.5228 6.44786 22 11.9707 22Z" fill="currentColor"/><path d="M15.2505 11.2992H13.5505V7.3392C13.5505 6.4192 13.0505 6.2292 12.4405 6.9192L12.0005 7.4192L8.28045 11.6492C7.77045 12.2292 7.98045 12.6992 8.75045 12.6992H10.4505V16.6592C10.4505 17.5792 10.9505 17.7692 11.5605 17.0792L12.0005 16.5792L15.7205 12.3492C16.2305 11.7692 16.0205 11.2992 15.2505 11.2992Z" fill="currentColor"/></svg> {__("My Boosted Pages")}</h2>
					
					{if $user->_is_admin || $user->_data['user_subscribed']}
						<div class="ele_content p-0 px-3 mt-4">
							{if $boosted_pages}
								<ul class="row m-0 w-100 d-block">
									{foreach $boosted_pages as $_page}
										{include file='__feeds_page.tpl' _tpl='mainpage'}
									{/foreach}
								</ul>

								{if count($boosted_pages) >= $system['pages_results']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="boosted_pages">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
								{/if}
							{else}
								{include file='_no_data.tpl'}
							{/if}
						</div>
					{else}
						<!-- upgrade -->
						<div class="ele_content">
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19 10.2808V17.4308C18.97 20.2808 18.19 21.0008 15.22 21.0008H5.78003C2.76003 21.0008 2 20.2508 2 17.2708V10.2808C2 7.58078 2.63 6.71078 5 6.57078C5.24 6.56078 5.50003 6.55078 5.78003 6.55078H15.22C18.24 6.55078 19 7.30078 19 10.2808Z" fill="currentColor"/><path d="M22 6.73V13.72C22 16.42 21.37 17.29 19 17.43V10.28C19 7.3 18.24 6.55 15.22 6.55H5.78003C5.50003 6.55 5.24 6.56 5 6.57C5.03 3.72 5.81003 3 8.78003 3H18.22C21.24 3 22 3.75 22 6.73Z" fill="currentColor"/><path d="M6.95831 18.5586H5.23828C4.82828 18.5586 4.48828 18.2186 4.48828 17.8086C4.48828 17.3986 4.82828 17.0586 5.23828 17.0586H6.95831C7.36831 17.0586 7.70831 17.3986 7.70831 17.8086C7.70831 18.2186 7.37831 18.5586 6.95831 18.5586Z" fill="currentColor"/><path d="M12.5494 18.5586H9.10938C8.69938 18.5586 8.35938 18.2186 8.35938 17.8086C8.35938 17.3986 8.69938 17.0586 9.10938 17.0586H12.5494C12.9594 17.0586 13.2994 17.3986 13.2994 17.8086C13.2994 18.2186 12.9694 18.5586 12.5494 18.5586Z" fill="currentColor"/><path d="M19 11.8594H2V13.3594H19V11.8594Z" fill="currentColor"/></svg> {__("Membership")}
								<p class="mb30">{__("Choose the Plan That's Right for You")}, {__("Check the package from")} <a href="{$system['system_url']}/packages">{__("Here")}</p>
								<div class="text-center">
									<a href="{$system['system_url']}/packages" class="btn btn-mat btn-primary">{__("Upgrade to Pro")}</a>
								</div>
							</div>
						</div>
						<!-- upgrade -->
					{/if}
					
				{elseif $view == "boosted_groups"}
					<h2 class="ele_page_title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M11.9707 22C17.4936 22 21.9707 17.5228 21.9707 12C21.9707 6.47715 17.4936 2 11.9707 2C6.44786 2 1.9707 6.47715 1.9707 12C1.9707 17.5228 6.44786 22 11.9707 22Z" fill="currentColor"/><path d="M15.2505 11.2992H13.5505V7.3392C13.5505 6.4192 13.0505 6.2292 12.4405 6.9192L12.0005 7.4192L8.28045 11.6492C7.77045 12.2292 7.98045 12.6992 8.75045 12.6992H10.4505V16.6592C10.4505 17.5792 10.9505 17.7692 11.5605 17.0792L12.0005 16.5792L15.7205 12.3492C16.2305 11.7692 16.0205 11.2992 15.2505 11.2992Z" fill="currentColor"/></svg> {__("My Boosted Groups")}</h2>
					
					{if $user->_is_admin || $user->_data['user_subscribed']}
						<div>
							{if $boosted_groups}
								<ul class="row">
									{foreach $boosted_groups as $_group}
										{include file='__feeds_group.tpl' _tpl='maingroup'}
									{/foreach}
								</ul>

								{if count($boosted_groups) >= $system['groups_results']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="boosted_groups">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
								{/if}
							{else}
								{include file='_no_data.tpl'}
							{/if}
						</div>
					{else}
						<!-- upgrade -->
						<div class="ele_content">
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19 10.2808V17.4308C18.97 20.2808 18.19 21.0008 15.22 21.0008H5.78003C2.76003 21.0008 2 20.2508 2 17.2708V10.2808C2 7.58078 2.63 6.71078 5 6.57078C5.24 6.56078 5.50003 6.55078 5.78003 6.55078H15.22C18.24 6.55078 19 7.30078 19 10.2808Z" fill="currentColor"/><path d="M22 6.73V13.72C22 16.42 21.37 17.29 19 17.43V10.28C19 7.3 18.24 6.55 15.22 6.55H5.78003C5.50003 6.55 5.24 6.56 5 6.57C5.03 3.72 5.81003 3 8.78003 3H18.22C21.24 3 22 3.75 22 6.73Z" fill="currentColor"/><path d="M6.95831 18.5586H5.23828C4.82828 18.5586 4.48828 18.2186 4.48828 17.8086C4.48828 17.3986 4.82828 17.0586 5.23828 17.0586H6.95831C7.36831 17.0586 7.70831 17.3986 7.70831 17.8086C7.70831 18.2186 7.37831 18.5586 6.95831 18.5586Z" fill="currentColor"/><path d="M12.5494 18.5586H9.10938C8.69938 18.5586 8.35938 18.2186 8.35938 17.8086C8.35938 17.3986 8.69938 17.0586 9.10938 17.0586H12.5494C12.9594 17.0586 13.2994 17.3986 13.2994 17.8086C13.2994 18.2186 12.9694 18.5586 12.5494 18.5586Z" fill="currentColor"/><path d="M19 11.8594H2V13.3594H19V11.8594Z" fill="currentColor"/></svg> {__("Membership")}
								<p class="mb30">{__("Choose the Plan That's Right for You")}, {__("Check the package from")} <a href="{$system['system_url']}/packages">{__("Here")}</p>
								<div class="text-center">
									<a href="{$system['system_url']}/packages" class="btn btn-mat btn-primary">{__("Upgrade to Pro")}</a>
								</div>
							</div>
						</div>
						<!-- upgrade -->
					{/if}

				{elseif $view == "boosted_events"}
					<h2 class="ele_page_title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M11.9707 22C17.4936 22 21.9707 17.5228 21.9707 12C21.9707 6.47715 17.4936 2 11.9707 2C6.44786 2 1.9707 6.47715 1.9707 12C1.9707 17.5228 6.44786 22 11.9707 22Z" fill="currentColor"/><path d="M15.2505 11.2992H13.5505V7.3392C13.5505 6.4192 13.0505 6.2292 12.4405 6.9192L12.0005 7.4192L8.28045 11.6492C7.77045 12.2292 7.98045 12.6992 8.75045 12.6992H10.4505V16.6592C10.4505 17.5792 10.9505 17.7692 11.5605 17.0792L12.0005 16.5792L15.7205 12.3492C16.2305 11.7692 16.0205 11.2992 15.2505 11.2992Z" fill="currentColor"/></svg> {__("My Boosted Events")}</h2>
					
					{if $user->_is_admin || $user->_data['user_subscribed']}
						<div>
							{if $boosted_events}
								<ul class="row">
									{foreach $boosted_events as $_event}
										{include file='__feeds_event.tpl' _tpl='mainevent'}
									{/foreach}
								</ul>

								{if count($boosted_events) >= $system['events_results']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="boosted_events">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
								{/if}
							{else}
								{include file='_no_data.tpl'}
							{/if}
						</div>
					{else}
						<!-- upgrade -->
						<div class="ele_content">
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19 10.2808V17.4308C18.97 20.2808 18.19 21.0008 15.22 21.0008H5.78003C2.76003 21.0008 2 20.2508 2 17.2708V10.2808C2 7.58078 2.63 6.71078 5 6.57078C5.24 6.56078 5.50003 6.55078 5.78003 6.55078H15.22C18.24 6.55078 19 7.30078 19 10.2808Z" fill="currentColor"/><path d="M22 6.73V13.72C22 16.42 21.37 17.29 19 17.43V10.28C19 7.3 18.24 6.55 15.22 6.55H5.78003C5.50003 6.55 5.24 6.56 5 6.57C5.03 3.72 5.81003 3 8.78003 3H18.22C21.24 3 22 3.75 22 6.73Z" fill="currentColor"/><path d="M6.95831 18.5586H5.23828C4.82828 18.5586 4.48828 18.2186 4.48828 17.8086C4.48828 17.3986 4.82828 17.0586 5.23828 17.0586H6.95831C7.36831 17.0586 7.70831 17.3986 7.70831 17.8086C7.70831 18.2186 7.37831 18.5586 6.95831 18.5586Z" fill="currentColor"/><path d="M12.5494 18.5586H9.10938C8.69938 18.5586 8.35938 18.2186 8.35938 17.8086C8.35938 17.3986 8.69938 17.0586 9.10938 17.0586H12.5494C12.9594 17.0586 13.2994 17.3986 13.2994 17.8086C13.2994 18.2186 12.9694 18.5586 12.5494 18.5586Z" fill="currentColor"/><path d="M19 11.8594H2V13.3594H19V11.8594Z" fill="currentColor"/></svg> {__("Membership")}
								<p class="mb30">{__("Choose the Plan That's Right for You")}, {__("Check the package from")} <a href="{$system['system_url']}/packages">{__("Here")}</p>
								<div class="text-center">
									<a href="{$system['system_url']}/packages" class="btn btn-mat btn-primary">{__("Upgrade to Pro")}</a>
								</div>
							</div>
						</div>
						<!-- upgrade -->
					{/if}

				{/if}
			</div>
			<!-- center panel -->

			<!-- right panel -->
			<div class="col-lg-4 sidebar rightcol js_sticky-sidebar">
				{if $system['merits_enabled'] && $system['merits_widgets_balance']}
					<!-- merits -->
					<div class="ele_content mb15">
						<div class="valign ele_sidebar_widget_title px-0 pt-0">
							<b>{__("Merits")}</b>
						</div>
						<div class="pb-3">
							{__("You have")} <a class="bold">{$user->_data['merits_balance']['remining']}</a> {__("merits left")}
							<div class="mt-3">
								<button class="btn btn-primary btn-mat" data-toggle="modal" data-size="large" data-url="users/merits.php?do=publish">
									{__("Send Merit")}
								</button>
							</div>
						</div>
					</div>
					<!-- merits -->
				{/if}
		  
				<!-- pro users -->
				{if $system['packages_enabled']}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M16.7702 18.98H7.23024C6.81024 18.98 6.43024 18.71 6.29024 18.32L2.13024 6.67004C1.80024 5.74004 2.86024 4.95004 3.65024 5.52004L7.65024 8.38004C8.18024 8.76004 8.94024 8.53004 9.17024 7.92004L11.0602 2.88004C11.3802 2.01004 12.6102 2.01004 12.9302 2.88004L14.8202 7.92004C15.0502 8.54004 15.8002 8.76004 16.3402 8.38004L20.3402 5.52004C21.1402 4.95004 22.1902 5.75004 21.8602 6.67004L17.7002 18.32C17.5702 18.71 17.1902 18.98 16.7702 18.98Z" fill="#ff7043"/><path d="M17 22H7C6.59 22 6.25 21.66 6.25 21.25C6.25 20.84 6.59 20.5 7 20.5H17C17.41 20.5 17.75 20.84 17.75 21.25C17.75 21.66 17.41 22 17 22Z" fill="#ff7043"/><path d="M14.5 14.75H9.5C9.09 14.75 8.75 14.41 8.75 14C8.75 13.59 9.09 13.25 9.5 13.25H14.5C14.91 13.25 15.25 13.59 15.25 14C15.25 14.41 14.91 14.75 14.5 14.75Z" fill="#ff7043"/></svg> {__("Promoted Users")}</b>
						</div>
						<div class="featured-users-innr">
							{if $system['packages_enabled'] && !$user->_data['user_subscribed']}
								<a href="{$system['system_url']}/packages" class="ele_prem">
									<img src="{$system['system_url']}/content/themes/{$system['theme']}/images/rocket.png">
									<p>{__("Upgrade to Pro")}</p>
									<button type="button" class="btn btn-mat btn-primary">{__("Upgrade")}</button>
								</a>
							{/if}
							<div class="valign ele_pro_users">
								{foreach $pro_members as $_member}
									<div>
										<a class="user-box" href="{$system['system_url']}/{$_member['user_name']}">
											<img alt="" src="{$_member['user_picture']}" />
											<div class="truncate text-center name">
												{if $system['show_usernames_enabled']}
													{$_member['user_name']}
												{else}
													{$_member['user_firstname']} {$_member['user_lastname']}
												{/if}
											</div>
										</a>
									</div>
								{/foreach}
							</div>
						</div>
					</div>
				{/if}
				<!-- pro users -->
				
				<!-- trending -->
				{if $trending_hashtags}
					{include file='_trending_widget.tpl'}
				{/if}
				<!-- trending -->

				<!-- pro pages -->
				{if $promoted_pages}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b>{__("Promoted Pages")}</b>
							{if $system['packages_enabled'] && !$user->_data['user_subscribed']}
								<a class="bold" href="{$system['system_url']}/packages">{__("Upgrade")}</a>
							{/if}
						</div>
						<ul class="ele_side_users ele_side_page ele_side_propage">
							{foreach $promoted_pages as $_page}
								{include file='__feeds_page.tpl' _tpl="list"}
							{/foreach}
						</ul>
					</div>
				{/if}
				<!-- pro pages -->
				
				<!-- pro groups -->
				{if $promoted_groups}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b>{__("Promoted Groups")}</b>
							{if $system['packages_enabled'] && !$user->_data['user_subscribed']}
								<a class="bold" href="{$system['system_url']}/packages">{__("Upgrade")}</a>
							{/if}
						</div>
						<ul class="ele_side_users ele_side_page ele_side_propage">
							{foreach $promoted_groups as $_group}
								{include file='__feeds_group.tpl' _tpl="list"}
							{/foreach}
						</ul>
					</div>
				{/if}
				<!-- pro groups -->
				
				<!-- pro events -->
				{if $promoted_events}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b>{__("Promoted Events")}</b>
							{if $system['packages_enabled'] && !$user->_data['user_subscribed']}
								<a class="bold" href="{$system['system_url']}/packages">{__("Upgrade")}</a>
							{/if}
						</div>
						<div class="ele_side_events_prnt">
							<ul class="valign ele_side_events ele_scroll">
								{foreach $promoted_events as $_event}
									{include file='__feeds_event.tpl' _tpl="box"}
								{/foreach}
							</ul>
						</div>
					</div>
				{/if}
				<!-- pro events -->

				{include file='_ads.tpl'}
				{include file='_ads_campaigns.tpl'}
				{include file='_widget.tpl'}
				
				<!-- latest blogs -->
				{if $latest_blogs}
					{include file='_blogs_carousel.tpl'}
				{/if}
				<!-- latest blogs -->
				
				{if $top_merits_users}
					<!-- merits top users -->
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b>{__("Merits Top Users")}</b>
							<a class="bold" href="{$system['system_url']}/merits">{__("See All")}</a>
						</div>
						<ul class="ele_side_users">
							{foreach $top_merits_users as $top_user}
								{include file='__feeds_user.tpl' _tpl="list" _user=$top_user['top_user'] _merit_category=$top_user['category'] _merits_count= $top_user['top_user']['count']}
							{/foreach}
						</ul>
					</div>
					<!-- merits top users -->
				{/if}

				<!-- friends suggestions -->
				{if $new_people}
					<div class="ele_content p-0 mb15" id="ele_side_people">
						<div class="valign ele_sidebar_widget_title">
							<b>
								{if $system['friends_enabled']}
									{__("Suggested Friends")}
								{else}
									{__("Suggested People")}
								{/if}
							</b>
							<a class="bold" href="{$system['system_url']}/people">{__("See All")}</a>
						</div>
						<ul class="ele_side_users">
							{foreach $new_people as $_user}
								{include file='__feeds_user.tpl' _tpl="list" _connection="add"}
							{/foreach}
						</ul>
					</div>
				{/if}
				<!-- friends suggestions -->

				<!-- suggested pages -->
				{if $new_pages}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b>{__("Suggested Pages")}</b>
							<a class="bold" href="{$system['system_url']}/pages">{__("See All")}</a>
						</div>
						<ul class="ele_side_users ele_side_page">
							{foreach $new_pages as $_page}
								{include file='__feeds_page.tpl' _tpl="list"}
							{/foreach}
						</ul>
					</div>
				{/if}
				<!-- suggested pages -->

				<!-- suggested groups -->
				{if $new_groups}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b>{__("Suggested Groups")}</b>
							<a class="bold" href="{$system['system_url']}/groups">{__("See All")}</a>
						</div>
						<ul class="ele_side_users ele_side_group">
							{foreach $new_groups as $_group}
								{include file='__feeds_group.tpl' _tpl="list"}
							{/foreach}
						</ul>
					</div>
				{/if}
				<!-- suggested groups -->

				<!-- suggested events -->
				{if $new_events}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b>{__("Suggested Events")}</b>
							<a class="bold" href="{$system['system_url']}/events">{__("See All")}</a>
						</div>
						<div class="ele_side_events_prnt">
							<ul class="valign ele_side_events ele_scroll">
								{foreach $new_events as $_event}
									{include file='__feeds_event.tpl' _tpl="box"}
								{/foreach}
							</ul>
						</div>
					</div>
				{/if}
				<!-- suggested events -->
			</div>
		</div>
	</div>
</div>

{include file='_footer.tpl'}