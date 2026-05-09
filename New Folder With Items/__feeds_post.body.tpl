<!-- post header -->
<div class="valign post-header">
	<div class="valign">
		<!-- post picture -->
		<div class="post-avatar">
			{if $_post['is_anonymous']}
				<div class="post-avatar-anonymous">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M12,3C9.31,3 7.41,4.22 7.41,4.22L6,9H18L16.59,4.22C16.59,4.22 14.69,3 12,3M12,11C9.27,11 5.39,11.54 5.13,11.59C4.09,11.87 3.25,12.15 2.59,12.41C1.58,12.75 1,13 1,13H23C23,13 22.42,12.75 21.41,12.41C20.75,12.15 19.89,11.87 18.84,11.59C18.84,11.59 14.82,11 12,11M7.5,14A3.5,3.5 0 0,0 4,17.5A3.5,3.5 0 0,0 7.5,21A3.5,3.5 0 0,0 11,17.5C11,17.34 11,17.18 10.97,17.03C11.29,16.96 11.63,16.9 12,16.91C12.37,16.91 12.71,16.96 13.03,17.03C13,17.18 13,17.34 13,17.5A3.5,3.5 0 0,0 16.5,21A3.5,3.5 0 0,0 20,17.5A3.5,3.5 0 0,0 16.5,14C15.03,14 13.77,14.9 13.25,16.19C12.93,16.09 12.55,16 12,16C11.45,16 11.07,16.09 10.75,16.19C10.23,14.9 8.97,14 7.5,14M7.5,15A2.5,2.5 0 0,1 10,17.5A2.5,2.5 0 0,1 7.5,20A2.5,2.5 0 0,1 5,17.5A2.5,2.5 0 0,1 7.5,15M16.5,15A2.5,2.5 0 0,1 19,17.5A2.5,2.5 0 0,1 16.5,20A2.5,2.5 0 0,1 14,17.5A2.5,2.5 0 0,1 16.5,15Z"></path></svg>
				</div>
			{else}
				<a class="post-avatar-picture" href="{$_post['post_author_url']}" style="background-image:url({$_post['post_author_picture']});"></a>
				{if $_post['post_author_online']}<span class="online-dot"></span>{/if}
			{/if}
		</div>
		<!-- post picture -->
		
		<div class="post-meta">
			<div class="title">
				<!-- post author -->
				{if $_post['is_anonymous']}
					<span class="post-author">{__("Anonymous")}</span>
				{else}
					<span class="js_user-popover" data-type="{$_post['user_type']}" data-uid="{$_post['user_id']}">
						<a class="post-author" href="{$_post['post_author_url']}">{$_post['post_author_name']}</a>
					</span>
					{if $_post['post_author_verified']}
						{if $_post['user_type'] == "user"}
							<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"/></svg></span>
						{else}
							<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified Page")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"/></svg></span>
						{/if}
					{/if}
					{if $_post['user_subscribed']}
						<span class="pro-badge" data-toggle="tooltip" data-placement="top" title="{__($_post['package_name'])} {__('Member')}"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"/><path fill="currentColor" d="M12 2.02c-5.51 0-9.98 4.47-9.98 9.98s4.47 9.98 9.98 9.98 9.98-4.47 9.98-9.98S17.51 2.02 12 2.02zm-.52 15.86v-4.14H8.82c-.37 0-.62-.4-.44-.73l3.68-7.17c.23-.47.94-.3.94.23v4.19h2.54c.37 0 .61.39.45.72l-3.56 7.12c-.24.48-.95.31-.95-.22z"/></svg> PRO</span>
					{/if}
				{/if}
				<!-- post author -->
				
				<!-- post-title -->
				<span class="post-title">
					{if !$_shared && $_post['post_type'] == "shared"}
						{__("shared")} 
						{if $_post['origin']['is_anonymous']}
							{__("Anonymous post")}
						{else}
							<span class="js_user-popover" data-type="{$_post['origin']['user_type']}" data-uid="{$_post['origin']['user_id']}">
								<a class="post-author" href="{$_post['origin']['post_author_url']}">{$_post['origin']['post_author_name']}</a>{__("'s")}
							</span> 
							<a href="{$system['system_url']}/posts/{$_post['origin']['post_id']}">
								{if $_post['origin']['post_type'] == 'link'}
									{__("link")}

								{elseif $_post['origin']['post_type'] == 'media'}
									{if $_post['origin']['media']['media_type'] != "soundcloud"}
										{__("video")}
									{else}
										{__("song")}
									{/if}

								{elseif $_post['origin']['post_type'] == 'photos'}
									{if $_post['origin']['photos_num'] > 1}{__("photos")}{else}{__("photo")}{/if}

								{elseif $_post['origin']['post_type'] == 'album'}
									{__("album")}

								{elseif $_post['origin']['post_type'] == 'poll'}
									{__("poll")}
									
								{elseif $_post['origin']['post_type'] == 'reel'}
									{__("reel")}
			  
								{elseif $_post['origin']['post_type'] == 'video'}
									{__("video")}

								{elseif $_post['origin']['post_type'] == 'audio'}
									{__("audio")}

								{elseif $_post['origin']['post_type'] == 'file'}
									{__("file")}

								{else}
									{__("post")}
								{/if}
							</a>
						{/if}

					{elseif $_post['post_type'] == "link"}
						{__("shared a link")}

					{elseif $_post['post_type'] == "live"}
						{if $_post['live']['live_ended']}
							{__("was live")}
						{else}
							{__("is live now")}
						{/if}

					{elseif $_post['post_type'] == "photos"}
						{if $_post['photos_num'] == 1}
							{__("added a photo")}
						{else}
							{__("added")} {$_post['photos_num']} {__("photos")}
						{/if}

					{elseif $_post['post_type'] == "album"}
						{__("added")} {$_post['photos_num']} {__("photos to the album")} <a href="{$system['system_url']}/{$_post['album']['path']}/album/{$_post['album']['album_id']}">{$_post['album']['title']}</a>

					{elseif $_post['post_type'] == "profile_picture"}
						{__("updated the profile picture")}

					{elseif $_post['post_type'] == "profile_cover"}
						{__("updated the cover photo")}

					{elseif $_post['post_type'] == "page_picture"}
						{__("updated page picture")}

					{elseif $_post['post_type'] == "page_cover"}
						{__("updated cover photo")}

					{elseif $_post['post_type'] == "group_picture"}
						{__("updated group picture")}

					{elseif $_post['post_type'] == "group_cover"}
						{__("updated group cover")}

					{elseif $_post['post_type'] == "event_cover"}
						{__("updated event cover")}

					{elseif $_post['post_type'] == "article"}
						{__("added blog")} {if $_post['blog']['category_name']}<a href="{$system['system_url']}/blogs/category/{$_post['blog']['category_id']}/{$_post['blog']['category_url']}" class="blog-category text-no-underline">{__($_post['blog']['category_name'])}</a>{/if}

					{elseif $_post['post_type'] == "product"}
						{__("added product for sale")}

					{elseif $_post['post_type'] == "funding"}
						{__("raised funding request")}

					{elseif $_post['post_type'] == "offer"}
						{__("added offer")}

					{elseif $_post['post_type'] == "job"}
						{__("added job")}
						
					{elseif $_post['post_type'] == "course"}
						{__("added course")}

					{elseif $_post['post_type'] == "poll"}
						{__("added poll")}
						
					{elseif $_post['post_type'] == "reel"}
						{__("added reel")}

					{elseif $_post['post_type'] == "video"}
						{__("added video")} {if $_post['video']['category_name']}<a href="{$system['system_url']}/watch/category/{$_post['video']['category_id']}/{$_post['video']['category_url']}" class="blog-category text-no-underline">{__($_post['video']['category_name'])}</a>{/if}

					{elseif $_post['post_type'] == "audio"}
						{__("added audio")}

					{elseif $_post['post_type'] == "file"}
						{__("added file")}
						
					{elseif $_post['post_type'] == "merit"}
						{__("sent merit")} {if $_post['merit']['category_name']}<span class="badge rounded-pill badge-lg btn-primary">{__($_post['merit']['category_name'])}</span>{/if}
					
					{elseif $_post['post_type'] == "group"}
						{__("created group")}

					{elseif $_post['post_type'] == "event"}
						{__("created event")}

					{/if}

					{if $_get != 'posts_group' && $_post['in_group']}
						<i class="fa fa-caret-right ml5 mr5"></i><svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="18" viewBox="0 0 24 24" width="18"><rect fill="none" height="24" width="24"/><g><path fill="currentColor" d="M12,12.75c1.63,0,3.07,0.39,4.24,0.9c1.08,0.48,1.76,1.56,1.76,2.73L18,17c0,0.55-0.45,1-1,1H7c-0.55,0-1-0.45-1-1l0-0.61 c0-1.18,0.68-2.26,1.76-2.73C8.93,13.14,10.37,12.75,12,12.75z M4,13c1.1,0,2-0.9,2-2c0-1.1-0.9-2-2-2s-2,0.9-2,2 C2,12.1,2.9,13,4,13z M5.13,14.1C4.76,14.04,4.39,14,4,14c-0.99,0-1.93,0.21-2.78,0.58C0.48,14.9,0,15.62,0,16.43L0,17 c0,0.55,0.45,1,1,1l3.5,0v-1.61C4.5,15.56,4.73,14.78,5.13,14.1z M20,13c1.1,0,2-0.9,2-2c0-1.1-0.9-2-2-2s-2,0.9-2,2 C18,12.1,18.9,13,20,13z M24,16.43c0-0.81-0.48-1.53-1.22-1.85C21.93,14.21,20.99,14,20,14c-0.39,0-0.76,0.04-1.13,0.1 c0.4,0.68,0.63,1.46,0.63,2.29V18l3.5,0c0.55,0,1-0.45,1-1L24,16.43z M12,6c1.66,0,3,1.34,3,3c0,1.66-1.34,3-3,3s-3-1.34-3-3 C9,7.34,10.34,6,12,6z"/></g></svg> <a href="{$system['system_url']}/groups/{$_post['group_name']}">{$_post['group_title']}</a>

					{elseif $_get != 'posts_event' && $_post['in_event']}
						<i class="fa fa-caret-right ml5 mr5"></i><svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="currentColor" d="M16 13h-3c-.55 0-1 .45-1 1v3c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-3c0-.55-.45-1-1-1zm0-10v1H8V3c0-.55-.45-1-1-1s-1 .45-1 1v1H5c-1.11 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2h-1V3c0-.55-.45-1-1-1s-1 .45-1 1zm2 17H6c-.55 0-1-.45-1-1V9h14v10c0 .55-.45 1-1 1z"/></svg> <a href="{$system['system_url']}/events/{$_post['event_id']}">{$_post['event_title']}</a>

					{elseif $_post['in_wall']}
						<i class="fa fa-caret-right ml5 mr5"></i>
						<span class="js_user-popover" data-type="user" data-uid="{$_post['wall_id']}">
							<a class="post-author" href="{$system['system_url']}/{$_post['wall_username']}">{$_post['wall_fullname']}</a>
						</span>
					
					{elseif $_post['is_collaborative']}
						<i class="fa fa-users ml5 mr5"></i>
						{__("collaborated with")}
						{foreach $_post['collaborative_users'] as $_user}
							<span class="js_user-popover" data-type="user" data-uid="{$_user['user_id']}">
								<a href="{$system['system_url']}/{$_user['user_name']}">{$_user['user_fullname']}</a>
							</span>
							{if !$_user@last}
								<span class="text-muted">,</span>
							{/if}
						{/foreach}
					{/if}
				</span>
				<!-- post-title -->
				<!-- post feeling -->
				{if $_post['feeling_action']}
					<span class="post-title feeling-text">
						{if $_post['post_type'] != "" && $_post['post_type'] != "map"  && $_post['post_type'] != "media"} & {/if}{__("is")} {__($_post["feeling_action"])} {__($_post["feeling_value"])} <i class="twa twa-lg twa-{$_post['feeling_icon']}"></i>
					</span>
				{/if}
				<!-- post feeling -->
			</div>
				
			<!-- post time & location & privacy -->
				<div class="valign post-time">
					<a href="{$system['system_url']}/posts/{$_post['post_id']}" class="js_moment post-sub-item" data-time="{$_post['time']}">{$_post['time']}</a>
					{if $_post['location']}
						<span class="font-weight-bold ml5 mr5">·</span><span class="post-sub-item">{$_post['location']}</span>
					{/if}
					{if $system['post_translation_enabled']}
						<span class="font-weight-bold ml5 mr5">·</span><span class="post-sub-item pointer js_translator">{__("Translate")}</span>
					{/if}
					{if $system['newsfeed_source'] == "default"}
						<span class="font-weight-bold ml5 mr5">·</span>
						{if !$_post['is_anonymous'] && !$_shared && $_post['manage_post'] && $_post['user_type'] == 'user' && !$_post['in_group'] && !$_post['in_event'] && $_post['post_type'] != "article" && $_post['post_type'] != "product" && $_post['post_type'] != "funding"}
							<!-- privacy -->
							{if $_post['privacy'] == "me"}
								<div class="btn-group" data-toggle="tooltip" data-value="me" title='{__("Shared with: Only Me")}'>
									<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" data-display="static">
										<i class="btn-group-icon fa fa-lock"></i>
									</button>
									<div class="dropdown-menu ele_create_menu ele_post_pub_privacy_menu">
										<div class="dropdown-item pointer js_edit-privacy" data-title='{__("Shared with: Public")}' data-value="public">
											<i class="fa fa-globe"></i> {__("Public")}
										</div>
										<div class="dropdown-item pointer js_edit-privacy" data-title='{if $system['friends_enabled']}{__("Shared with: Friends")}{else}{__("Shared with: Followers")}{/if}' data-value="friends">
											<i class="fa fa-users"></i> {if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
										</div>
										<div class="dropdown-item pointer js_edit-privacy" data-title='{__("Shared with: Only Me")}' data-value="me">
											<i class="fa fa-lock"></i> {__("Only Me")}
										</div>
									</div>
								</div>
							{elseif $_post['privacy'] == "friends"}
								<div class="btn-group" data-toggle="tooltip" data-value="friends" title='{if $system['friends_enabled']}{__("Shared with: Friends")}{else}{__("Shared with: Followers")}{/if}'>
									<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" data-display="static">
										<i class="btn-group-icon fa fa-users"></i>
									</button>
									<div class="dropdown-menu ele_create_menu ele_post_pub_privacy_menu">
										<div class="dropdown-item pointer js_edit-privacy" data-title='{__("Shared with: Public")}' data-value="public">
											<i class="fa fa-globe"></i> {__("Public")}
										</div>
										<div class="dropdown-item pointer js_edit-privacy" data-title='{if $system['friends_enabled']}{__("Shared with: Friends")}{else}{__("Shared with: Followers")}{/if}' data-value="friends">
											<i class="fa fa-users"></i> {if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
										</div>
										<div class="dropdown-item pointer js_edit-privacy" data-title='{__("Shared with: Only Me")}' data-value="me">
											<i class="fa fa-lock"></i> {__("Only Me")}
										</div>
									</div>
								</div>
							{elseif $_post['privacy'] == "public"}
								<div class="btn-group" data-toggle="tooltip" data-value="public" title='{__("Shared with: Public")}'>
									<button type="button" class="btn dropdown-toggle" data-toggle="dropdown" data-display="static">
										<i class="btn-group-icon fa fa-globe"></i>
									</button>
									<div class="dropdown-menu ele_create_menu ele_post_pub_privacy_menu">
										<div class="dropdown-item pointer js_edit-privacy" data-title='{__("Shared with: Public")}' data-value="public">
											<i class="fa fa-globe"></i> {__("Public")}
										</div>
										<div class="dropdown-item pointer js_edit-privacy" data-title='{if $system['friends_enabled']}{__("Shared with: Friends")}{else}{__("Shared with: Followers")}{/if}' data-value="friends">
											<i class="fa fa-users"></i> {if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
										</div>
										<div class="dropdown-item pointer js_edit-privacy" data-title='{__("Shared with: Only Me")}' data-value="me">
											<i class="fa fa-lock"></i> {__("Only Me")}
										</div>
									</div>
								</div>
							{/if}
							<!-- privacy -->
						
						{else}
							{if $_post['privacy'] == "me"}
								<i class="fa fa-user-lock post-sub-item" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Only Me")}'></i>
							{elseif $_post['privacy'] == "friends"}
								<i class="fa fa-user-friends post-sub-item" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}'></i>
							{elseif $_post['privacy'] == "public"}
								<i class="fa fa-globe-americas post-sub-item" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Public")}'></i>
							{elseif $_post['privacy'] == "custom"}
								<i class="fa fa-cog post-sub-item" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Custom People")}'></i>
							{/if}
						{/if}
					{/if}
					{if $_post['for_subscriptions']}
						<span class="font-weight-bold ml5 mr5">·</span><span class="post-sub-item"><i class="fa fa-star mr5"></i>{__("Subscriptions")}</span>
					{/if}
					{if $_post['is_paid']}
						<span class="font-weight-bold ml5 mr5">·</span><span class="post-sub-item"><i class="fa-solid fa-sack-dollar mr5"></i>{__("Paid")}</span>
					{/if}
					{if $_post['for_adult']}
						<span class="font-weight-bold ml5 mr5">·</span><span class="post-sub-item"><i class="fa-solid fa-eye-slash mr5"></i>{__("Adult")|upper}</span>
					{/if}
					{if $system['posts_reviews_enabled'] && $post['post_type'] != "product"}
						{if $_post['post_rate']}
							<span class="font-weight-bold ml5 mr5">·</span>
							<span class="review-stars small">
								{include file='__stars_rate.tpl' rate=$_post['post_rate']}
							</span>
							<span class="post-sub-item">{$_post['post_rate']|number_format:1}</span>
						{/if}
					{/if}
				</div>
			<!-- post time & location & privacy -->
		</div>
	</div>
	
	<!-- post menu -->
	{if $user->_logged_in && !$_shared && $_get != "posts_information"}
		<div class="dropdown ele_post_hdr_menu">
			<div class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"><path fill="currentColor" d="M12 13.172l4.95-4.95 1.414 1.414L12 16 5.636 9.636 7.05 8.222z"/></svg>
			</div>
			<div class="dropdown-menu dropdown-menu-right ele_create_menu post-dropdown-menu">
				{if $_post['manage_post'] && $_post['post_type'] == "product"}
					{if $_post['product']['available']}
						<div>
							<div class="dropdown-item pointer js_sold-post">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M6.5 2h11a1 1 0 0 1 .8.4L21 6v15a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V6l2.7-3.6a1 1 0 0 1 .8-.4zM19 8H5v12h14V8zm-.5-2L17 4H7L5.5 6h13zM9 10v2a3 3 0 0 0 6 0v-2h2v2a5 5 0 0 1-10 0v-2h2z"/><path class="hover_path" d="M6.5 2h11a1 1 0 0 1 .8.4L21 6v15a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V6l2.7-3.6a1 1 0 0 1 .8-.4zm12 4L17 4H7L5.5 6h13zM9 10H7v2a5 5 0 0 0 10 0v-2h-2v2a3 3 0 0 1-6 0v-2z"/></svg> <span>{__("Mark as Sold")}</span>
							</div>
						</div>
					{else}
						<div>
							<div class="dropdown-item pointer js_unsold-post">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M6.5 2h11a1 1 0 0 1 .8.4L21 6v15a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V6l2.7-3.6a1 1 0 0 1 .8-.4zM19 8H5v12h14V8zm-.5-2L17 4H7L5.5 6h13zM9 10v2a3 3 0 0 0 6 0v-2h2v2a5 5 0 0 1-10 0v-2h2z"/><path class="hover_path" d="M6.5 2h11a1 1 0 0 1 .8.4L21 6v15a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V6l2.7-3.6a1 1 0 0 1 .8-.4zm12 4L17 4H7L5.5 6h13zM9 10H7v2a5 5 0 0 0 10 0v-2h-2v2a3 3 0 0 1-6 0v-2z"/></svg> <span>{__("Mark as Available")}</span>
							</div>
						</div>
					{/if}
					<div class="dropdown-divider"></div>
				{/if}
				{if $_post['manage_post'] && $_post['post_type'] == "job"}
					{if $_post['job']['available']}
						<div>
							<div class="dropdown-item pointer js_closed-post">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 16v3h16v-3H4zm0-2h16V7H4v7zM9 3v2h6V3H9zm2 8h2v2h-2v-2z"/><path class="hover_path" d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 15v4h16v-4H4zm7-4v2h2v-2h-2zM9 3v2h6V3H9z"/></svg> <span>{__("Mark as Closed")}</span>
							</div>
						</div>
					{else}
						<div>
							<div class="dropdown-item pointer js_unclosed-post">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 16v3h16v-3H4zm0-2h16V7H4v7zM9 3v2h6V3H9zm2 8h2v2h-2v-2z"/><path class="hover_path" d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 15v4h16v-4H4zm7-4v2h2v-2h-2zM9 3v2h6V3H9z"/></svg> <span>{__("Mark as Available")}</span>
							</div>
						</div>
					{/if}
					<div class="dropdown-divider"></div>
				{/if}
				{if $_post['manage_post'] && $_post['post_type'] == "course"}
					{if $_post['course']['available']}
						<div>
							<div class="dropdown-item pointer js_closed-post">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 16v3h16v-3H4zm0-2h16V7H4v7zM9 3v2h6V3H9zm2 8h2v2h-2v-2z"/><path class="hover_path" d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 15v4h16v-4H4zm7-4v2h2v-2h-2zM9 3v2h6V3H9z"/></svg> <span>{__("Mark as Closed")}</span>
							</div>
						</div>
					{else}
						<div>
							<div class="dropdown-item pointer js_unclosed-post">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 16v3h16v-3H4zm0-2h16V7H4v7zM9 3v2h6V3H9zm2 8h2v2h-2v-2z"/><path class="hover_path" d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 15v4h16v-4H4zm7-4v2h2v-2h-2zM9 3v2h6V3H9z"/></svg> <span>{__("Mark as Available")}</span>
							</div>
						</div>
					{/if}
					<div class="dropdown-divider"></div>
				{/if}
				{if $_post['i_save']}
					<div>
						<div href="#" class="dropdown-item pointer js_unsave-post">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M4 2h16a1 1 0 0 1 1 1v19.276a.5.5 0 0 1-.704.457L12 19.03l-8.296 3.702A.5.5 0 0 1 3 22.276V3a1 1 0 0 1 1-1zm15 17.965V4H5v15.965l7-3.124 7 3.124zM12 13.5l-2.939 1.545.561-3.272-2.377-2.318 3.286-.478L12 6l1.47 2.977 3.285.478-2.377 2.318.56 3.272L12 13.5z"/><path class="hover_path" d="M4 2h16a1 1 0 0 1 1 1v19.276a.5.5 0 0 1-.704.457L12 19.03l-8.296 3.702A.5.5 0 0 1 3 22.276V3a1 1 0 0 1 1-1zm8 11.5l2.939 1.545-.561-3.272 2.377-2.318-3.286-.478L12 6l-1.47 2.977-3.285.478 2.377 2.318-.56 3.272L12 13.5z"/></svg> <span>{__("Unsave Post")}</span>
						</div>
					</div>
				{else}
					<div>
						<div class="dropdown-item pointer js_save-post">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M4 2h16a1 1 0 0 1 1 1v19.276a.5.5 0 0 1-.704.457L12 19.03l-8.296 3.702A.5.5 0 0 1 3 22.276V3a1 1 0 0 1 1-1zm15 17.965V4H5v15.965l7-3.124 7 3.124zM12 13.5l-2.939 1.545.561-3.272-2.377-2.318 3.286-.478L12 6l1.47 2.977 3.285.478-2.377 2.318.56 3.272L12 13.5z"/><path class="hover_path" d="M4 2h16a1 1 0 0 1 1 1v19.276a.5.5 0 0 1-.704.457L12 19.03l-8.296 3.702A.5.5 0 0 1 3 22.276V3a1 1 0 0 1 1-1zm8 11.5l2.939 1.545-.561-3.272 2.377-2.318-3.286-.478L12 6l-1.47 2.977-3.285.478 2.377 2.318-.56 3.272L12 13.5z"/></svg> <span>{__("Save Post")}</span>
						</div>
					</div>
				{/if}
				<div class="dropdown-divider"></div>
				{if $_post['manage_post']}
					<!-- Boost -->
					{if !$_post['still_scheduled']}
						{if $system['packages_enabled'] && !$_post['in_group'] && !$_post['in_event']}
							{if $_post['boosted']}
								<div>
									<div class="dropdown-item pointer js_unboost-post">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.502 20A6.523 6.523 0 0 1 12 23.502 6.523 6.523 0 0 1 8.498 20h2.26c.326.489.747.912 1.242 1.243.495-.33.916-.754 1.243-1.243h2.259zM18 14.805l2 2.268V19H4v-1.927l2-2.268V9c0-3.483 2.504-6.447 6-7.545C15.496 2.553 18 5.517 18 9v5.805zM17.27 17L16 15.56V9c0-2.318-1.57-4.43-4-5.42C9.57 4.57 8 6.681 8 9v6.56L6.73 17h10.54zM12 11a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"/><path class="hover_path" d="M8.498 20h7.004A6.523 6.523 0 0 1 12 23.502 6.523 6.523 0 0 1 8.498 20zM18 14.805l2 2.268V19H4v-1.927l2-2.268V9c0-3.483 2.504-6.447 6-7.545C15.496 2.553 18 5.517 18 9v5.805zM12 11a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/></svg> <span>{__("Unboost Post")}</span>
									</div>
								</div>
							{else}
								{if $user->_data['can_boost_posts']}
									<div>
										<div class="dropdown-item pointer js_boost-post">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.502 20A6.523 6.523 0 0 1 12 23.502 6.523 6.523 0 0 1 8.498 20h2.26c.326.489.747.912 1.242 1.243.495-.33.916-.754 1.243-1.243h2.259zM18 14.805l2 2.268V19H4v-1.927l2-2.268V9c0-3.483 2.504-6.447 6-7.545C15.496 2.553 18 5.517 18 9v5.805zM17.27 17L16 15.56V9c0-2.318-1.57-4.43-4-5.42C9.57 4.57 8 6.681 8 9v6.56L6.73 17h10.54zM12 11a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"/><path class="hover_path" d="M8.498 20h7.004A6.523 6.523 0 0 1 12 23.502 6.523 6.523 0 0 1 8.498 20zM18 14.805l2 2.268V19H4v-1.927l2-2.268V9c0-3.483 2.504-6.447 6-7.545C15.496 2.553 18 5.517 18 9v5.805zM12 11a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/></svg> <span>{__("Boost Post")}</span>
										</div>
									</div>
								{else}
									<div>
										<a href="{$system['system_url']}/packages" class="dropdown-item">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.502 20A6.523 6.523 0 0 1 12 23.502 6.523 6.523 0 0 1 8.498 20h2.26c.326.489.747.912 1.242 1.243.495-.33.916-.754 1.243-1.243h2.259zM18 14.805l2 2.268V19H4v-1.927l2-2.268V9c0-3.483 2.504-6.447 6-7.545C15.496 2.553 18 5.517 18 9v5.805zM17.27 17L16 15.56V9c0-2.318-1.57-4.43-4-5.42C9.57 4.57 8 6.681 8 9v6.56L6.73 17h10.54zM12 11a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"/><path class="hover_path" d="M8.498 20h7.004A6.523 6.523 0 0 1 12 23.502 6.523 6.523 0 0 1 8.498 20zM18 14.805l2 2.268V19H4v-1.927l2-2.268V9c0-3.483 2.504-6.447 6-7.545C15.496 2.553 18 5.517 18 9v5.805zM12 11a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/></svg> <span>{__("Boost Post")}</span>
										</a>
									</div>
								{/if}
							{/if}
						{/if}
					{/if}
					<!-- Boost -->
					<!-- Pin -->
					{if !$_post['still_scheduled']}
						{if !$_post['is_anonymous']}
							{if (!$_post['in_group'] && !$_post['in_event']) || ($_post['in_group'] && $_post['is_group_admin']) || ($_post['in_event'] && $_post['is_event_admin'])}
								{if $_post['pinned']}
									<div>
										<div class="dropdown-item pointer js_unpin-post">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M13.828 1.686l8.486 8.486-1.415 1.414-.707-.707-4.242 4.242-.707 3.536-1.415 1.414-4.242-4.243-4.95 4.95-1.414-1.414 4.95-4.95-4.243-4.242 1.414-1.415L8.88 8.05l4.242-4.242-.707-.707 1.414-1.415zm.708 3.536l-4.671 4.67-2.822.565 6.5 6.5.564-2.822 4.671-4.67-4.242-4.243z"/><path class="hover_path" d="M22.314 10.172l-1.415 1.414-.707-.707-4.242 4.242-.707 3.536-1.415 1.414-4.242-4.243-4.95 4.95-1.414-1.414 4.95-4.95-4.243-4.242 1.414-1.415L8.88 8.05l4.242-4.242-.707-.707 1.414-1.415z"/></svg> <span>{__("Unpin Post")}</span>
										</div>
									</div>
								{else}
									<div>
										<div class="dropdown-item pointer js_pin-post">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M13.828 1.686l8.486 8.486-1.415 1.414-.707-.707-4.242 4.242-.707 3.536-1.415 1.414-4.242-4.243-4.95 4.95-1.414-1.414 4.95-4.95-4.243-4.242 1.414-1.415L8.88 8.05l4.242-4.242-.707-.707 1.414-1.415zm.708 3.536l-4.671 4.67-2.822.565 6.5 6.5.564-2.822 4.671-4.67-4.242-4.243z"/><path class="hover_path" d="M22.314 10.172l-1.415 1.414-.707-.707-4.242 4.242-.707 3.536-1.415 1.414-4.242-4.243-4.95 4.95-1.414-1.414 4.95-4.95-4.243-4.242 1.414-1.415L8.88 8.05l4.242-4.242-.707-.707 1.414-1.415z"/></svg> <span>{__("Pin Post")}</span>
										</div>
									</div>
								{/if}
							{/if}
						{/if}
					{/if}
					<!-- Pin -->
					<!-- Edit -->
					{if $_post['post_type'] == "article"}
						<div>
							<a href="{$system['system_url']}/blogs/edit/{$_post['post_id']}" class="dropdown-item pointer">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.728 9.686l-1.414-1.414L5 17.586V19h1.414l9.314-9.314zm1.414-1.414l1.414-1.414-1.414-1.414-1.414 1.414 1.414 1.414zM7.242 21H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L7.243 21z"/><path class="hover_path" d="M12.9 6.858l4.242 4.243L7.242 21H3v-4.243l9.9-9.9zm1.414-1.414l2.121-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"/></svg> {__("Edit Blog")}
							</a>
						</div>
					{elseif $_post['post_type'] == "product"}
						<div>
							<div class="dropdown-item pointer" data-toggle="modal" data-url="posts/product.php?do=edit&post_id={$_post['post_id']}">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.728 9.686l-1.414-1.414L5 17.586V19h1.414l9.314-9.314zm1.414-1.414l1.414-1.414-1.414-1.414-1.414 1.414 1.414 1.414zM7.242 21H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L7.243 21z"/><path class="hover_path" d="M12.9 6.858l4.242 4.243L7.242 21H3v-4.243l9.9-9.9zm1.414-1.414l2.121-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"/></svg> {__("Edit Product")}
							</div>
						</div>
					{elseif $_post['post_type'] == "funding"}
						<div>
							<div class="dropdown-item pointer" data-toggle="modal" data-url="posts/funding.php?do=edit&post_id={$_post['post_id']}">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.728 9.686l-1.414-1.414L5 17.586V19h1.414l9.314-9.314zm1.414-1.414l1.414-1.414-1.414-1.414-1.414 1.414 1.414 1.414zM7.242 21H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L7.243 21z"/><path class="hover_path" d="M12.9 6.858l4.242 4.243L7.242 21H3v-4.243l9.9-9.9zm1.414-1.414l2.121-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"/></svg> {__("Edit Funding")}
							</div>
						</div>
					{elseif $_post['post_type'] == "offer"}
						<div>
							<div class="dropdown-item pointer" data-toggle="modal" data-url="posts/offer.php?do=edit&post_id={$_post['post_id']}">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.728 9.686l-1.414-1.414L5 17.586V19h1.414l9.314-9.314zm1.414-1.414l1.414-1.414-1.414-1.414-1.414 1.414 1.414 1.414zM7.242 21H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L7.243 21z"/><path class="hover_path" d="M12.9 6.858l4.242 4.243L7.242 21H3v-4.243l9.9-9.9zm1.414-1.414l2.121-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"/></svg> {__("Edit Offer")}
							</div>
						</div>
					{elseif $_post['post_type'] == "job"}
						<div>
							<div class="dropdown-item pointer" data-toggle="modal" data-url="posts/job.php?do=edit&post_id={$_post['post_id']}">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.728 9.686l-1.414-1.414L5 17.586V19h1.414l9.314-9.314zm1.414-1.414l1.414-1.414-1.414-1.414-1.414 1.414 1.414 1.414zM7.242 21H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L7.243 21z"/><path class="hover_path" d="M12.9 6.858l4.242 4.243L7.242 21H3v-4.243l9.9-9.9zm1.414-1.414l2.121-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"/></svg> {__("Edit Job")}
							</div>
						</div>
					{elseif $_post['post_type'] == "course"}
						<div>
							<div class="dropdown-item pointer" data-toggle="modal" data-toggle="modal" data-url="posts/course.php?do=edit&post_id={$_post['post_id']}">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.728 9.686l-1.414-1.414L5 17.586V19h1.414l9.314-9.314zm1.414-1.414l1.414-1.414-1.414-1.414-1.414 1.414 1.414 1.414zM7.242 21H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L7.243 21z"/><path class="hover_path" d="M12.9 6.858l4.242 4.243L7.242 21H3v-4.243l9.9-9.9zm1.414-1.414l2.121-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"/></svg> {__("Edit Course")}
							</div>
						</div>
					{else}
						<div>
							<div class="dropdown-item pointer js_edit-post">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M15.728 9.686l-1.414-1.414L5 17.586V19h1.414l9.314-9.314zm1.414-1.414l1.414-1.414-1.414-1.414-1.414 1.414 1.414 1.414zM7.242 21H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L7.243 21z"/><path class="hover_path" d="M12.9 6.858l4.242 4.243L7.242 21H3v-4.243l9.9-9.9zm1.414-1.414l2.121-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"/></svg> {__("Edit Post")}
							</div>
						</div>
					{/if}
					<!-- Edit -->
					<!-- Monetization -->
					{if $_post['can_be_for_subscriptions']}
						{if $_post['for_subscriptions']}
							<div>
								<div class="dropdown-item pointer js_unmonetize-post">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path d="M11.0049 2L18.3032 4.28071C18.7206 4.41117 19.0049 4.79781 19.0049 5.23519V7H21.0049C21.5572 7 22.0049 7.44772 22.0049 8V16C22.0049 16.5523 21.5572 17 21.0049 17L17.7848 17.0011C17.3982 17.5108 16.9276 17.9618 16.3849 18.3318L11.0049 22L5.62486 18.3318C3.98563 17.2141 3.00488 15.3584 3.00488 13.3744V5.23519C3.00488 4.79781 3.28913 4.41117 3.70661 4.28071L11.0049 2ZM11.0049 4.094L5.00488 5.97V13.3744C5.00488 14.6193 5.58406 15.7884 6.56329 16.5428L6.75154 16.6793L11.0049 19.579L14.7869 17H10.0049C9.4526 17 9.00488 16.5523 9.00488 16V8C9.00488 7.44772 9.4526 7 10.0049 7H17.0049V5.97L11.0049 4.094ZM11.0049 12V15H20.0049V12H11.0049ZM11.0049 10H20.0049V9H11.0049V10Z"/><path class="hover_path" d="M11.0049 2L18.3032 4.28071C18.7206 4.41117 19.0049 4.79781 19.0049 5.23519V7H21.0049C21.5572 7 22.0049 7.44772 22.0049 8V10H9.00488V8C9.00488 7.44772 9.4526 7 10.0049 7H17.0049V5.97L11.0049 4.094L5.00488 5.97V13.3744C5.00488 14.6193 5.58406 15.7884 6.56329 16.5428L6.75154 16.6793L11.0049 19.579L14.7869 17H10.0049C9.4526 17 9.00488 16.5523 9.00488 16V12H22.0049V16C22.0049 16.5523 21.5572 17 21.0049 17L17.7848 17.0011C17.3982 17.5108 16.9276 17.9618 16.3849 18.3318L11.0049 22L5.62486 18.3318C3.98563 17.2141 3.00488 15.3584 3.00488 13.3744V5.23519C3.00488 4.79781 3.28913 4.41117 3.70661 4.28071L11.0049 2Z"/></svg> {__("For Everyone")}
								</div>
							</div>
						{else}
							<div>
								<div class="dropdown-item pointer js_monetize-post">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path d="M11.0049 2L18.3032 4.28071C18.7206 4.41117 19.0049 4.79781 19.0049 5.23519V7H21.0049C21.5572 7 22.0049 7.44772 22.0049 8V16C22.0049 16.5523 21.5572 17 21.0049 17L17.7848 17.0011C17.3982 17.5108 16.9276 17.9618 16.3849 18.3318L11.0049 22L5.62486 18.3318C3.98563 17.2141 3.00488 15.3584 3.00488 13.3744V5.23519C3.00488 4.79781 3.28913 4.41117 3.70661 4.28071L11.0049 2ZM11.0049 4.094L5.00488 5.97V13.3744C5.00488 14.6193 5.58406 15.7884 6.56329 16.5428L6.75154 16.6793L11.0049 19.579L14.7869 17H10.0049C9.4526 17 9.00488 16.5523 9.00488 16V8C9.00488 7.44772 9.4526 7 10.0049 7H17.0049V5.97L11.0049 4.094ZM11.0049 12V15H20.0049V12H11.0049ZM11.0049 10H20.0049V9H11.0049V10Z"/><path class="hover_path" d="M11.0049 2L18.3032 4.28071C18.7206 4.41117 19.0049 4.79781 19.0049 5.23519V7H21.0049C21.5572 7 22.0049 7.44772 22.0049 8V10H9.00488V8C9.00488 7.44772 9.4526 7 10.0049 7H17.0049V5.97L11.0049 4.094L5.00488 5.97V13.3744C5.00488 14.6193 5.58406 15.7884 6.56329 16.5428L6.75154 16.6793L11.0049 19.579L14.7869 17H10.0049C9.4526 17 9.00488 16.5523 9.00488 16V12H22.0049V16C22.0049 16.5523 21.5572 17 21.0049 17L17.7848 17.0011C17.3982 17.5108 16.9276 17.9618 16.3849 18.3318L11.0049 22L5.62486 18.3318C3.98563 17.2141 3.00488 15.3584 3.00488 13.3744V5.23519C3.00488 4.79781 3.28913 4.41117 3.70661 4.28071L11.0049 2Z"/></svg> {__("For Subscribers Only")}
								</div>
							</div>
						{/if}
					{/if}
					<!-- Monetization -->
					<!-- Delete -->
					<div>
						<div class="dropdown-item pointer js_delete-post">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M17 6h5v2h-2v13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V8H2V6h5V3a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3zm1 2H6v12h12V8zm-9 3h2v6H9v-6zm4 0h2v6h-2v-6zM9 4v2h6V4H9z"/><path class="hover_path" d="M17 6h5v2h-2v13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V8H2V6h5V3a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3zm-8 5v6h2v-6H9zm4 0v6h2v-6h-2zM9 4v2h6V4H9z"/></svg> {__("Delete Post")}
						</div>
					</div>
					<!-- Delete -->
					<!-- Hide -->
					{if $_post['user_type'] == "user" && !$_post['in_group'] && !$_post['in_event'] && !$_post['is_anonymous']}
						{if $_post['is_hidden']}
							<div>
								<div class="dropdown-item pointer js_allow-post">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z"/><path class="hover_path" d="M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z"/></svg> <span>{__("Allow on Timeline")}</span>
								</div>
							</div>
						{else}
							<div>
								<div class="dropdown-item pointer js_disallow-post">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z"/><path class="hover_path" d="M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z"/></svg> <span>{__("Hide from Timeline")}</span>
								</div>
							</div>
						{/if}
					{/if}
					<!-- Hide -->
					<!-- Disable Comments -->
					{if $_post['comments_disabled']}
						<div>
							<div class="dropdown-item pointer js_enable-post-comments">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8zm2 14h2a6 6 0 1 0 0-12h-4a6 6 0 0 0-6 6c0 3.61 2.462 5.966 8 8.48V17z"/><path class="hover_path" d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8z"/></svg> <span>{__("Turn on Commenting")}</span>
							</div>
						</div>
					{else}
						<div>
							<div class="dropdown-item pointer js_disable-post-comments">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8zm2 14h2a6 6 0 1 0 0-12h-4a6 6 0 0 0-6 6c0 3.61 2.462 5.966 8 8.48V17z"/><path class="hover_path" d="M10 3h4a8 8 0 1 1 0 16v3.5c-5-2-12-5-12-11.5a8 8 0 0 1 8-8z"/></svg> <span>{__("Turn off Commenting")}</span>
							</div>
						</div>
					{/if}
					<!-- Disable Comments -->
				{else}
					{if $_post['user_type'] == "user" && !$_post['is_anonymous']}
						<div>
							<div class="dropdown-item pointer js_hide-author action" data-author-id="{$_post['user_id']}" data-author-name="{$_post['post_author_name']}">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm-5-9h10v2H7v-2z"/><path class="hover_path" d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zM7 11v2h10v-2H7z"/></svg> {__("Unfollow")} {if $system['show_usernames_enabled']}{$_post['user_name']}{else}{$_post['user_firstname']}{/if}
								<div class="action-desc">{__("Stop seeing posts but stay friends")}</div>
							</div>
						</div>
					{/if}
					<div>
						<div class="dropdown-item pointer js_hide-post action">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M17.882 19.297A10.949 10.949 0 0 1 12 21c-5.392 0-9.878-3.88-10.819-9a10.982 10.982 0 0 1 3.34-6.066L1.392 2.808l1.415-1.415 19.799 19.8-1.415 1.414-3.31-3.31zM5.935 7.35A8.965 8.965 0 0 0 3.223 12a9.005 9.005 0 0 0 13.201 5.838l-2.028-2.028A4.5 4.5 0 0 1 8.19 9.604L5.935 7.35zm6.979 6.978l-3.242-3.242a2.5 2.5 0 0 0 3.241 3.241zm7.893 2.264l-1.431-1.43A8.935 8.935 0 0 0 20.777 12 9.005 9.005 0 0 0 9.552 5.338L7.974 3.76C9.221 3.27 10.58 3 12 3c5.392 0 9.878 3.88 10.819 9a10.947 10.947 0 0 1-2.012 4.592zm-9.084-9.084a4.5 4.5 0 0 1 4.769 4.769l-4.77-4.769z"/><path class="hover_path" d="M4.52 5.934L1.393 2.808l1.415-1.415 19.799 19.8-1.415 1.414-3.31-3.31A10.949 10.949 0 0 1 12 21c-5.392 0-9.878-3.88-10.819-9a10.982 10.982 0 0 1 3.34-6.066zm10.237 10.238l-1.464-1.464a3 3 0 0 1-4.001-4.001L7.828 9.243a5 5 0 0 0 6.929 6.929zM7.974 3.76C9.221 3.27 10.58 3 12 3c5.392 0 9.878 3.88 10.819 9a10.947 10.947 0 0 1-2.012 4.592l-3.86-3.86a5 5 0 0 0-5.68-5.68L7.974 3.761z"/></svg> {__("Hide this post")}
							<div class="action-desc">{__("See fewer posts like this")}</div>
						</div>
					</div>
					<div>
						<div class="dropdown-item pointer" data-toggle="modal" data-url="data/report.php?do=create&handle=post&id={$_post['post_id']}">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M4 17v5H2V3h19.138a.5.5 0 0 1 .435.748L18 10l3.573 6.252a.5.5 0 0 1-.435.748H4zM4 5v10h14.554l-2.858-5 2.858-5H4z"/><path class="hover_path" d="M2 3h19.138a.5.5 0 0 1 .435.748L18 10l3.573 6.252a.5.5 0 0 1-.435.748H4v5H2V3z"/></svg> {__("Report post")}
						</div>
					</div>
				{/if}
				<div class="dropdown-divider"></div>
				<div>
					<a href="{$system['system_url']}/posts/{$_post['post_id']}" target="_blank" class="dropdown-item">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M10 6v2H5v11h11v-5h2v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h6zm11-3v8h-2V6.413l-7.793 7.794-1.414-1.414L17.585 5H13V3h8z"/><path class="hover_path" d="M10 6v2H5v11h11v-5h2v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V7a1 1 0 0 1 1-1h6zm11-3v9l-3.794-3.793-5.999 6-1.414-1.414 5.999-6L12 3h9z"/></svg> {__("Open post in new tab")}
					</a>
				</div>
				{if $_post['is_anonymous'] && ($user->_is_admin || $user->_is_moderator)}
                    <div class="dropdown-divider"></div>
					<div>
						<a href="{$_post['post_author_url']}" target="_blank" class="dropdown-item">
							<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm-4.987-3.744A7.966 7.966 0 0 0 12 20c1.97 0 3.773-.712 5.167-1.892A6.979 6.979 0 0 0 12.16 16a6.981 6.981 0 0 0-5.147 2.256zM5.616 16.82A8.975 8.975 0 0 1 12.16 14a8.972 8.972 0 0 1 6.362 2.634 8 8 0 1 0-12.906.187zM12 13a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm0-2a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/><path class="hover_path" d="M12 2c5.52 0 10 4.48 10 10s-4.48 10-10 10S2 17.52 2 12 6.48 2 12 2zM6.023 15.416C7.491 17.606 9.695 19 12.16 19c2.464 0 4.669-1.393 6.136-3.584A8.968 8.968 0 0 0 12.16 13a8.968 8.968 0 0 0-6.137 2.416zM12 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/></svg> {__("Open Author Profile")}
						</a>
					</div>
				{/if}
			</div>
		</div>
	{/if}
	<!-- post menu -->
</div>
<!-- post header -->

{if $_post['can_get_details'] }
{if $_post['needs_pro_package']}
	{include file='_need_pro_package.tpl' _manage = true}
{elseif $_post['needs_permission']}
    {include file='_need_permission.tpl'}
{else}
<!-- post text -->
{if !in_array($_post['post_type'], ['product', 'funding', 'offer', 'job', 'course'])}
    {if !$_shared}
        {include file='__feeds_post.text.tpl'}
    {else}
        {if $_post['colored_pattern']}
            <div class="post-colored" {if $_post['colored_pattern']['type'] == "color"} style="background-image: linear-gradient(45deg, {$_post['colored_pattern']['background_color_1']}, {$_post['colored_pattern']['background_color_2']});" {else} style="background-image: url({$system['system_uploads']}/{$_post['colored_pattern']['background_image']})" {/if}>
                <div class="post-colored-text-wrapper ele_scroll">
                    <div class="post-text" dir="auto" style="color: {$_post['colored_pattern']['text_color']};">
                        {$_post['text']}
                    </div>
                </div>
            </div>
        {else}
            <div class="post-text js_readmore" dir="auto">{$_post['text']}</div>
        {/if}
        <div class="post-text-translation x-hidden" dir="auto"></div>
    {/if}
{/if}
<!-- post text -->

{if !$_shared && $_post['post_type'] == "shared" && $_post['origin']}
    <div class="post-snippet {if in_array($_post['origin']['post_type'], ['product', 'funding', 'job', 'course', 'poll'])}pb15{/if}">
        {if $_snippet}
            <div class="post-snippet-toggle text-link js_show-attachments">{__("Show Attachments")}</div>
        {/if}
        <div {if $_snippet}class="x-hidden" {/if}>
            {include file='__feeds_post.body.tpl' _post=$_post['origin'] _shared=true}
        </div>
    </div>
{/if}

{if $_post['post_type'] == "link" && $_post['link']}
    <div class="mt10 post-site-link">
        <div class="post-media">
            {if $_post['link']['source_thumbnail']}
                <a class="post-media-image" href="{$_post['link']['source_url']}" target="_blank" rel="nofollow">
                    <img src="{$_post['link']['source_thumbnail']}">
                </a>
            {/if}
            <div class="post-media-meta">
				<a href="{$_post['link']['source_url']}" target="_blank" rel="nofollow">
					<div class="source">{$_post['link']['source_host']|upper}</div>
					<h5 class="truncate title">{$_post['link']['source_title']}</h5>
					<div class="text">{$_post['link']['source_text']}</div>
				</a>
            </div>
        </div>
    </div>
{/if}

{if $_post['post_type'] == "media" && $_post['media']}
    <div class="mt10">
        {if $_post['media']['source_type'] == "photo"}
			<div class="post-gif-link">
				<div class="post-media">
					<div class="post-media-image">
						<img src="{$_post['media']['source_url']}">
						<a target="_blank" href="{$_post['media']['source_url']}" class="source">{$_post['media']['source_provider']}</a>
					</div>
				</div>
			</div>
        {else}
            {if $_post['media']['source_provider'] == "YouTube"}
				{$_post['media']['vidoe_id'] = get_youtube_id($_post['media']['source_html'])}
				{if $system['smart_yt_player']}
					<div class="youtube-player js_youtube-player" data-id="{$_post['media']['vidoe_id']}">
						<img src="https://i.ytimg.com/vi/{$_post['media']['vidoe_id']}/hqdefault.jpg">
						<div class="play"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M10,15L15.19,12L10,9V15M21.56,7.17C21.69,7.64 21.78,8.27 21.84,9.07C21.91,9.87 21.94,10.56 21.94,11.16L22,12C22,14.19 21.84,15.8 21.56,16.83C21.31,17.73 20.73,18.31 19.83,18.56C19.36,18.69 18.5,18.78 17.18,18.84C15.88,18.91 14.69,18.94 13.59,18.94L12,19C7.81,19 5.2,18.84 4.17,18.56C3.27,18.31 2.69,17.73 2.44,16.83C2.31,16.36 2.22,15.73 2.16,14.93C2.09,14.13 2.06,13.44 2.06,12.84L2,12C2,9.81 2.16,8.2 2.44,7.17C2.69,6.27 3.27,5.69 4.17,5.44C4.64,5.31 5.5,5.22 6.82,5.16C8.12,5.09 9.31,5.06 10.41,5.06L12,5C16.19,5 18.8,5.16 19.83,5.44C20.73,5.69 21.31,6.27 21.56,7.17Z" /></svg></div>
					</div>
				{else}
					<div class="post-media border-0 rounded-0">
						{if $system['disable_yt_player']}
							<div class="plyr__video-embed js_video-plyr-youtube" data-plyr-provider="youtube" data-plyr-embed-id="{$_post['media']['vidoe_id']}"></div>
						{else}
							<div class="embed-responsive embed-responsive-16by9">
								{html_entity_decode($_post['media']['source_html'], ENT_QUOTES)}
							</div>
						{/if}
					</div>
				{/if}
                    
            {elseif in_array($_post['media']['source_provider'], ["Vimeo", "Twitch", "Rumble.com", "Banned.Video", "brighteon", "Odysee"])}
                <div class="post-media border-0 rounded-0">
                    <div class="embed-responsive embed-responsive-16by9">
                        {html_entity_decode($_post['media']['source_html'], ENT_QUOTES)}
                    </div>
                </div>
			{elseif $_post['media']['source_provider'] == "Facebook"}
				<div class="embed-facebook-wrapper">
					{html_entity_decode($_post['media']['source_html'], ENT_QUOTES)}
					<div class="embed-facebook-placeholder ptb30">
						<div class="d-flex justify-content-center">
							<div class="spinner-grow"></div>
						</div>
					</div>
				</div>
            {else}
                <div class="embed-iframe-wrapper">
                    {html_entity_decode($_post['media']['source_html'], ENT_QUOTES)}
                </div>
            {/if}
        {/if}
    </div>
{/if}

{if $_post['post_type'] == "live" && $_post['live']}
    {if $system['save_live_enabled'] && $_post['live']['live_ended'] && $_post['live']['live_recorded']}
        <div>
			<video class="js_video-plyr" id="video-{$_post['live']['live_id']}{if $pinned || $boosted}-{$_post['post_id']}{/if}" {if $_post['live']['video_thumbnail']}poster="{$system['system_uploads']}/{$_post['live']['video_thumbnail']}" {/if} playsinline controls preload="auto" style="max-width: 100%; width: 100%; height: auto;">
                <source src="{$system['system_agora_uploads']}/{$_post['live']['agora_file']}" type="application/x-mpegURL">
            </video>
        </div>
    {else}
        <div class="youtube-player with-live js_lightbox-live">
            <img src="{$system['system_uploads']}/{$_post['live']['video_thumbnail']}">
            <div class="play"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 13.5v-7c0-.41.47-.65.8-.4l4.67 3.5c.27.2.27.6 0 .8l-4.67 3.5c-.33.25-.8.01-.8-.4z"></path></svg></div>
        </div>
    {/if}
{/if}

{if ($_post['post_type'] == "photos" || $_post['post_type'] == "album" || $_post['post_type'] == "profile_picture" || $_post['post_type'] == "profile_cover" || $_post['post_type'] == "page_picture" || $_post['post_type'] == "page_cover" || $_post['post_type'] == "group_picture" || $_post['post_type'] == "group_cover" || $_post['post_type'] == "event_cover" || $_post['post_type'] == "product" || $_post['post_type'] == "combo") && $_post['photos_num'] > 0}
    <div class="mt10">
        {include file='__feeds_post.body.photos.tpl'}
    </div>
{/if}

{if $_post['post_type'] == "map"}
    <div class="post-map">
		<iframe width="100%" height="300" frameborder="0" style="border:0;" src="https://www.google.com/maps/embed/v1/place?key={$system['geolocation_key']}&amp;q={$_post['location']}"></iframe>
    </div>
{/if}

{if $_post['post_type'] == "article" && $_post['blog']}
    <div class="mt10 post-site-link">
        <div class="post-media">
            {if $_post['blog']['cover']}
                <a class="post-media-image" href="{$system['system_url']}/blogs/{$_post['post_id']}/{$_post['blog']['title_url']}">
                    <div class="image" style="background-image:url('{$system['system_uploads']}/{$_post['blog']['cover']}');"></div>
                </a>
            {/if}
            <div class="post-media-meta">
				<a href="{$system['system_url']}/blogs/{$_post['post_id']}/{$_post['blog']['title_url']}">
					<h5 class="truncate title mt0">{$_post['blog']['title']}</h5>
					<div class="text">{$_post['blog']['text_snippet']|truncate:400}</div>
				</a>
            </div>
        </div>
    </div>
{/if}

<!-- product -->
{if $_post['post_type'] == "product" && $_post['product']}
    <div class="post-product-container">
		<h4 class="ele_post_prod_name">{$_post['product']['name']}</h4>
		<p class="ele_post_prod_price">
			{if $_post['product']['price'] > 0}
				{$_post['product']['price_formatted']}
			{else}
				{__("Free")}
			{/if}
		</p>
		<div class="valign mb-1 ele_post_prod_shead">
			<a href="{$system['system_url']}/market/category/{$_post['product']['category_id']}/{$_post['product']['category_url']}"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="1.75" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3"></polyline><line x1="12" y1="12" x2="20" y2="7.5"></line><line x1="12" y1="12" x2="12" y2="21"></line><line x1="12" y1="12" x2="4" y2="7.5"></line><line x1="16" y1="5.25" x2="8" y2="9.75"></line></svg>&nbsp;{__($_post['product']['category_name'])}</a>
        </div>
		<div class="valign ele_post_prod_shead">
			{if $_post['product']['location']}
				<span>{$_post['product']['location']}</span><span class="font-weight-bold ml5 mr5">·</span>
			{/if}
			{if $_post['product']['is_digital']}
				<span>{__("Digital")}</span><span class="font-weight-bold ml5 mr5">·</span>
			{/if}
			{if $_post['product']['status'] == "new"}
				<span>{__("New")}</span>
			{else}
				<span>{__("Used")}</span>
			{/if}
			<span class="font-weight-bold ml5 mr5">·</span>
			{if $_post['product']['available']}
				{if $_post['product']['quantity'] > 0}
					<span>{__("In stock")}</span>
				{else}
					<span>{__("Out of stock")}</span>
				{/if}
			{else}
				<span>{__("SOLD")}</span>
			{/if}
		</div>
		
		{if $system['posts_reviews_enabled']}
			<div class="mtb15">
				<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z"></path></svg>
				<span class="pointer ml5" data-toggle="modal" data-url="posts/who_reviews.php?post_id={$post['post_id']}">
					{$post['reviews_count']} {__("Reviews")}
				</span>
				{if $post['post_rate']}
					<span class="review-stars small ml5">
						{include file='__stars_rate.tpl' rate=$post['post_rate']}
					</span>
					<span class="post-sub-item">{$post['post_rate']|number_format:1}</span>
				{/if}
			</div>
        {/if}
		
		{if $_post['author_id'] != $user->_data['user_id'] }
			<div class="mtb15">
				{if $system['market_shopping_cart_enabled']}
					{if $_post['product']['available'] && $_post['product']['quantity'] > 0}
						<button type="button" class="btn btn-primary btn-mat js_shopping-add-to-cart mr-2" data-id="{$_post['post_id']}">
							{if $_post['product']['is_digital']}
								{__("Buy & Download")}
							{else}
								{__("Buy")}
							{/if}
						</button>
					{else}
						<button type="button" class="btn btn-primary btn-mat mr-2" disabled>{__("Currently unavailable")}</button>
					{/if}
				{/if}
                <button type="button" class="btn btn-info btn-mat js_chat-start" data-uid="{$_post['author_id']}" data-name="{$_post['post_author_name']}" data-link="{$_post['user_name']}" data-picture="{$_post['post_author_picture']}" data-product-post-id="{$_post['post_id']}">{__("Contact Seller")}</button>
			</div>
        {/if}
		
		<hr>
        
        <!-- post text -->
        {if !$_shared}
            {include file='__feeds_post.text.tpl'}
        {else}
            <div class="post-text js_readmore text-muted" dir="auto">{$_post['text']}</div>
            <div class="post-text-translation x-hidden" dir="auto"></div>
        {/if}
        <!-- post text -->
		
		<!-- custom fileds -->
        {if $_post['custom_fields']['basic']}
            <div class="mb10">
                {foreach $_post['custom_fields']['basic'] as $custom_field}
                    {if $custom_field['value']}
                        <div>
                            <strong class="bold">{__($custom_field['label'])}</strong><br>
                            {if $custom_field['type'] == "textbox" && $custom_field['is_link']}
								<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
							{elseif $custom_field['type'] == "multipleselectbox"}
								{__($custom_field['value_string']|trim)}
							{else}
								{__($custom_field['value']|trim)}
							{/if}
                        </div>
                    {/if}
                {/foreach}
            </div>
        {/if}
        <!-- custom fileds -->
    </div>
{/if}
<!-- product -->

{if $_post['post_type'] == "funding" && $_post['funding']}
    <div class="mt10 post-funding-meta">
        <div class="post-media">
            <a class="post-media-image" href="{$system['system_url']}/posts/{$_post['post_id']}" target="_blank">
                <div class="image" style="background-image:url('{$system['system_uploads']}/{$_post['funding']['cover_image']}');"></div>
            </a>
        </div>
		<div class="funding-completion mb10">
			<div class="funding-title">
                {$_post['funding']['title']}
            </div>
			<span class="float-right">{$_post['funding']['funding_completion']}%</span>
			<strong>{print_money($_post['funding']['raised_amount'])} {__("Raised of")} {print_money($_post['funding']['amount'])}</strong>
			<div class="progress mt5">
				<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{$_post['funding']['funding_completion']}" aria-valuemin="0" aria-valuemax="100" style="width: {$_post['funding']['funding_completion']}%"></div>
			</div>
		</div>
		<div class="funding-description">
			<!-- post text -->
			{if !$_shared}
				{include file='__feeds_post.text.tpl'}
			{else}
				<div class="post-text js_readmore text-muted" dir="auto">{$_post['text']}</div>
				<div class="post-text-translation x-hidden" dir="auto"></div>
			{/if}
			<!-- post text -->
		</div>
		{if $user->_logged_in && $_post['author_id'] != $user->_data['user_id'] }
			<div class="mt10 clearfix">
				<button type="button" class="btn btn-success btn-block btn-mat" data-toggle="modal" data-url="#funding-donate" data-options='{ "post_id": {$_post["post_id"]} }'><svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><g><rect fill="none" height="24" width="24"/></g><g><g><path d="M3,11L3,11c-1.1,0-2,0.9-2,2v7c0,1.1,0.9,2,2,2h0c1.1,0,2-0.9,2-2v-7C5,11.9,4.1,11,3,11z"/><path d="M10,5.3C10,3.45,11.45,2,13.3,2c1.04,0,2.05,0.49,2.7,1.25C16.65,2.49,17.66,2,18.7,2C20.55,2,22,3.45,22,5.3 c0,2.1-2.5,4.51-5.33,7.09c-0.38,0.35-0.97,0.35-1.35,0C12.5,9.81,10,7.4,10,5.3"/><path d="M19.99,17h-6.83c-0.11,0-0.22-0.02-0.33-0.06l-1.47-0.51c-0.26-0.09-0.39-0.37-0.3-0.63l0,0c0.09-0.26,0.38-0.4,0.64-0.3 l1.12,0.43c0.11,0.04,0.24,0.07,0.36,0.07h2.63c0.65,0,1.18-0.53,1.18-1.18v0c0-0.49-0.31-0.93-0.77-1.11L9.3,11.13 C9.08,11.04,8.84,11,8.6,11H7v9.02l6.37,1.81c0.41,0.12,0.85,0.1,1.25-0.05L22,19l0,0C22,17.89,21.1,17,19.99,17z"/></g></g></svg> {__("Donate")}</button>
			</div>
		{/if}
    </div>
{/if}

{if $_post['post_type'] == "offer" && $_post['offer']}
    <div class="mt10 post-site-link">
        <div class="post-media">
			<div class="post-media-image">
				{if $_post['photos_num'] == 1}
					<div class="image" style="background-image:url('{$system['system_uploads']}/{$_post['offer']['thumbnail']}');"></div>
				{else $_post['photos']}
					{include file='__feeds_post.body.photos.tpl'}
				{/if}
				{if $_post['offer']['end_date']}
					<div class="source">{__("Expires")}: {$_post['offer']['end_date']|date_format:$system['system_date_format']}</div>
				{/if}
			</div>
            <div class="post-media-meta pb0">
                <h5 class="truncate title"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M3.9889 14.6584L2.46891 13.1385C1.84891 12.5185 1.84891 11.4985 2.46891 10.8785L3.9889 9.35843C4.2489 9.09843 4.4589 8.58843 4.4589 8.22843V6.07846C4.4589 5.19846 5.1789 4.47843 6.0589 4.47843H8.2089C8.5689 4.47843 9.0789 4.26846 9.3389 4.00846L10.8589 2.48844C11.4789 1.86844 12.4989 1.86844 13.1189 2.48844L14.6389 4.00846C14.8989 4.26846 15.4089 4.47843 15.7689 4.47843H17.9189C18.7989 4.47843 19.5189 5.19846 19.5189 6.07846V8.22843C19.5189 8.58843 19.7289 9.09843 19.9889 9.35843L21.5089 10.8785C22.1289 11.4985 22.1289 12.5185 21.5089 13.1385L19.9889 14.6584C19.7289 14.9184 19.5189 15.4284 19.5189 15.7884V17.9384C19.5189 18.8184 18.7989 19.5384 17.9189 19.5384H15.7689C15.4089 19.5384 14.8989 19.7485 14.6389 20.0085L13.1189 21.5285C12.4989 22.1485 11.4789 22.1485 10.8589 21.5285L9.3389 20.0085C9.0789 19.7485 8.5689 19.5384 8.2089 19.5384H6.0589C5.1789 19.5384 4.4589 18.8184 4.4589 17.9384V15.7884C4.4589 15.4184 4.2489 14.9084 3.9889 14.6584Z" fill="#ef4c5d"/><path d="M14.9983 16C14.4383 16 13.9883 15.55 13.9883 15C13.9883 14.45 14.4383 14 14.9883 14C15.5383 14 15.9883 14.45 15.9883 15C15.9883 15.55 15.5483 16 14.9983 16Z" fill="#ef4c5d"/><path d="M9.01001 10C8.45001 10 8 9.55 8 9C8 8.45 8.45 8 9 8C9.55 8 10 8.45 10 9C10 9.55 9.56001 10 9.01001 10Z" fill="#ef4c5d"/><path d="M9.00141 15.7514C8.81141 15.7514 8.62141 15.6815 8.47141 15.5315C8.18141 15.2415 8.18141 14.7614 8.47141 14.4714L14.4714 8.47141C14.7614 8.18141 15.2414 8.18141 15.5314 8.47141C15.8214 8.76141 15.8214 9.24146 15.5314 9.53146L9.5314 15.5315C9.3814 15.6815 9.1914 15.7514 9.00141 15.7514Z" fill="#ef4c5d"/></svg> {$_post['offer']['meta_title']}</h5>
				{if $_post['offer']['price']}
					<div class="text-success mtb5">
						{__("From")} <strong class="bold">{print_money($_post['offer']['price'])}</strong>
					</div>
				{/if}
                <!-- post text -->
                {if !$_shared}
                    {include file='__feeds_post.text.tpl'}
                {else}
                    <div class="post-text js_readmore text-muted" dir="auto">{$_post['text']}</div>
                    <div class="post-text-translation x-hidden" dir="auto"></div>
                {/if}
                <!-- post text -->
				<!-- custom fileds -->
                {if $_post['custom_fields']['basic']}
                    <div class="mb10">
                        {foreach $_post['custom_fields']['basic'] as $custom_field}
                            {if $custom_field['value']}
                                <div>
                                    <strong class="bold">{__($custom_field['label'])}</strong><br>
                                    {if $custom_field['type'] == "textbox" && $custom_field['is_link']}
										<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
									{elseif $custom_field['type'] == "multipleselectbox"}
										{__($custom_field['value_string']|trim)}
									{else}
										{__($custom_field['value']|trim)}
									{/if}
                                </div>
                            {/if}
                        {/foreach}
                    </div>
                {/if}
                <!-- custom fileds -->
            </div>
        </div>
    </div>
{/if}

{if $_post['post_type'] == "job" && $_post['job']}
    <div class="mt10 post-job-meta">
        <div class="post-media">
            <a class="post-media-image" href="{$system['system_url']}/posts/{$_post['post_id']}" target="_blank">
                <div class="image" style="background-image:url('{$system['system_uploads']}/{$_post['job']['cover_image']}');"></div>
            </a>
        </div>
		<div class="job-title mt15"><a href="{$system['system_url']}/posts/{$_post['post_id']}" target="_blank">{$_post['job']['title']}</a></div>
		<p>{print_money($_post['job']['salary_minimum'], $_post['job']['salary_minimum_currency']['symbol'], $_post['job']['salary_minimum_currency']['dir'])} - {print_money($_post['job']['salary_maximum'], $_post['job']['salary_maximum_currency']['symbol'], $_post['job']['salary_maximum_currency']['dir'])} / {$_post['job']['pay_salary_per_meta']}</p>
		<div class="valign text-center ele_post_job_info">
			<div>
				<b>{__("Location")}</b>
				<p>{$_post['job']['location']}</p>
			</div>
			<div>
				<b>{__("Type")}</b>
				<p>{$_post['job']['type_meta']}</p>
			</div>
			<div>
				<b>{__("Status")}</b>
				<p>{if $_post['job']['available']}
                            <span class="badge badge-success">{__("Open")}</span>
                        {else}
                            <span class="badge badge-danger">{__("Closed")}</span>
                        {/if}</p>
			</div>
		</div>
		<div class="job-description">
			<!-- post text -->
			{if !$_shared}
				{include file='__feeds_post.text.tpl'}
			{else}
				<div class="post-text js_readmore text-muted" dir="auto">{$_post['text']}</div>
				<div class="post-text-translation x-hidden" dir="auto"></div>
			{/if}
			<!-- post text -->
		</div>
		<!-- custom fileds -->
            {if $_post['custom_fields']['basic']}
                <div class="mb10">
                    {foreach $_post['custom_fields']['basic'] as $custom_field}
                        {if $custom_field['value']}
                            <div>
                                <strong class="bold">{__($custom_field['label'])}</strong><br>
                                {if $custom_field['type'] == "textbox" && $custom_field['is_link']}
									<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
								{elseif $custom_field['type'] == "multipleselectbox"}
									{__($custom_field['value_string']|trim)}
								{else}
									{__($custom_field['value']|trim)}
								{/if}
                            </div>
                        {/if}
                    {/foreach}
                </div>
            {/if}
		<!-- custom fileds -->
		{if $_post['author_id'] == $user->_data['user_id']}
			<div class="mt10 clearfix">
				<button type="button" class="btn btn-primary btn-block btn-mat js_job-apply" data-toggle="modal" data-url="posts/job.php?do=candidates&post_id={$_post['post_id']}" {if $_post['job']['candidates_count'] == 0}disabled{/if}>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5s-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V18c0 .55.45 1 1 1h12c.55 0 1-.45 1-1v-1.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05.02.01.03.03.04.04 1.14.83 1.93 1.94 1.93 3.41V18c0 .35-.07.69-.18 1H22c.55 0 1-.45 1-1v-1.5c0-2.33-4.67-3.5-7-3.5z"/></svg> {__("View Candidates")} ({$_post['job']['candidates_count']})
				</button>
			</div>
		{/if}
		{if $user->_logged_in && $_post['job']['available'] &&  $_post['author_id'] != $user->_data['user_id'] }
			<div class="mt10 clearfix">
				<button type="button" class="btn btn-success btn-block btn-mat js_job-apply" data-toggle="modal" data-url="posts/job.php?do=application&post_id={$_post['post_id']}">
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M20 6h-4V4c0-1.11-.89-2-2-2h-4c-1.11 0-2 .89-2 2v2H4c-1.11 0-1.99.89-1.99 2L2 19c0 1.11.89 2 2 2h16c1.11 0 2-.89 2-2V8c0-1.11-.89-2-2-2zm-6 0h-4V4h4v2z"/></svg> {__("Apply Now")}
				</button>
			</div>
		{/if}
    </div>
{/if}

{if $_post['post_type'] == "course" && $_post['course']}
	<div class="mt10 post-job-meta">
        <div class="post-media">
            <a class="post-media-image" href="{$system['system_url']}/posts/{$_post['post_id']}" target="_blank">
                <div class="image" style="background-image:url('{$system['system_uploads']}/{$_post['course']['cover_image']}');"></div>
            </a>
        </div>
		<div class="job-title mt15"><a href="{$system['system_url']}/posts/{$_post['post_id']}" target="_blank">{$_post['course']['title']}</a></div>
		<p>{print_money($_post['course']['fees'], $_post['course']['fees_currency']['symbol'], $_post['course']['fees_currency']['dir'])}</p>
		
		<div class="valign text-center ele_post_job_info">
			<div>
				<b>{__("Location")}</b>
				<p>{$_post['course']['location']}</p>
			</div>
			<div>
				<b>{__("Date")}</b>
				<p>{$_post['course']['start_date']|date_format:"%e"} {$_post['course']['start_date']|date_format:"%b"} - {$_post['course']['end_date']|date_format:"%e"} {$_post['course']['end_date']|date_format:"%b"} {$_post['course']['end_date']|date_format:"%Y"}</p>
			</div>
			<div>
				<b>{__("Status")}</b>
				<p>{if $_post['course']['available']}
                            <span class="badge badge-success">{__("Open")}</span>
                        {else}
                            <span class="badge badge-danger">{__("Closed")}</span>
                        {/if}</p>
			</div>
		</div>
		<div class="job-description">
			<!-- post text -->
			{if !$_shared}
				{include file='__feeds_post.text.tpl'}
			{else}
				<div class="post-text js_readmore text-muted" dir="auto">{$_post['text']}</div>
				<div class="post-text-translation x-hidden" dir="auto"></div>
			{/if}
			<!-- post text -->
		</div>
		<!-- custom fileds -->
            {if $_post['custom_fields']['basic']}
                <div class="mb10">
                    {foreach $_post['custom_fields']['basic'] as $custom_field}
                        {if $custom_field['value']}
                            <div>
                                <strong class="bold">{__($custom_field['label'])}</strong><br>
                                {if $custom_field['type'] == "textbox" && $custom_field['is_link']}
									<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
								{elseif $custom_field['type'] == "multipleselectbox"}
									{__($custom_field['value_string']|trim)}
								{else}
									{__($custom_field['value']|trim)}
								{/if}
                            </div>
                        {/if}
                    {/foreach}
                </div>
            {/if}
		<!-- custom fileds -->
		{if $_post['author_id'] == $user->_data['user_id']}
			<div class="mt10 clearfix">
				<button type="button" class="btn btn-primary btn-block btn-mat js_course-enroll" data-toggle="modal" data-size="large" data-url="posts/course.php?do=candidates&post_id={$_post['post_id']}" {if $_post['course']['candidates_count'] == 0}disabled{/if}>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M16 11c1.66 0 2.99-1.34 2.99-3S17.66 5 16 5s-3 1.34-3 3 1.34 3 3 3zm-8 0c1.66 0 2.99-1.34 2.99-3S9.66 5 8 5 5 6.34 5 8s1.34 3 3 3zm0 2c-2.33 0-7 1.17-7 3.5V18c0 .55.45 1 1 1h12c.55 0 1-.45 1-1v-1.5c0-2.33-4.67-3.5-7-3.5zm8 0c-.29 0-.62.02-.97.05.02.01.03.03.04.04 1.14.83 1.93 1.94 1.93 3.41V18c0 .35-.07.69-.18 1H22c.55 0 1-.45 1-1v-1.5c0-2.33-4.67-3.5-7-3.5z"/></svg> {__("View Candidates")} ({$_post['course']['candidates_count']})
				</button>
			</div>
		{/if}
		{if $user->_logged_in && $_post['course']['available'] &&  $_post['author_id'] != $user->_data['user_id'] }
			<div class="mt10 clearfix">
				<button type="button" class="btn btn-success btn-block btn-mat js_course-enroll" data-toggle="modal" data-size="large" data-url="posts/course.php?do=application&post_id={$_post['post_id']}">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M11.4436 1.25H12.5564H12.5564H12.5564C14.3942 1.24999 15.8498 1.24997 16.989 1.40314C18.1614 1.56076 19.1104 1.89288 19.8588 2.64124C20.6071 3.38961 20.9392 4.33856 21.0969 5.51098C21.25 6.65019 21.25 8.10585 21.25 9.94359V17C21.25 17.082 21.2368 17.1609 21.2125 17.2348C21.1069 17.6738 20.7117 18 20.2402 18C19.4118 18 18.7402 18.6716 18.7402 19.5C18.7402 20.3284 19.4118 21 20.2402 21C20.7925 21 21.2402 21.4477 21.2402 22C21.2402 22.5339 20.8219 22.97 20.2951 22.9985C20.2811 22.9993 20.267 22.9997 20.2529 22.9999L20.2402 23H20.24H6.2099C4.2832 23 2.74609 21.4192 2.74609 19.5C2.74609 19.4439 2.74741 19.3882 2.75 19.3327V9.94357C2.74998 8.10582 2.74997 6.65019 2.90314 5.51098C3.06076 4.33856 3.39288 3.38961 4.14124 2.64124C4.88961 1.89288 5.83856 1.56076 7.01098 1.40314C8.15018 1.24997 9.60582 1.24999 11.4436 1.25H11.4436H11.4436ZM6.2099 18H17.0771C16.8611 18.4546 16.7402 18.9632 16.7402 19.5C16.7402 20.0368 16.8611 20.5454 17.0771 21H6.2099C5.41516 21 4.74609 20.3422 4.74609 19.5C4.74609 18.6578 5.41516 18 6.2099 18ZM15 7.75C15.4142 7.75 15.75 7.41421 15.75 7C15.75 6.58579 15.4142 6.25 15 6.25H9C8.58579 6.25 8.25 6.58579 8.25 7C8.25 7.41421 8.58579 7.75 9 7.75H15ZM12 11.75C12.4142 11.75 12.75 11.4142 12.75 11C12.75 10.5858 12.4142 10.25 12 10.25H9C8.58579 10.25 8.25 10.5858 8.25 11C8.25 11.4142 8.58579 11.75 9 11.75H12Z" fill="currentColor"/></svg> {__("Enroll Now")}
				</button>
			</div>
		{/if}
    </div>
{/if}

{if $_post['post_type'] == "poll" && $_post['poll']}
    <div class="poll-options mt5" data-poll-votes="{$_post['poll']['votes']}">
        {foreach $_post['poll']['options'] as $option}
            <div class="mt10">
                <div class="poll-option js_poll-vote" data-id="{$option['option_id']}" data-option-votes="{$option['votes']}">
                    <div class="ele_post_as_anon">
                        <input type="radio" name="poll_{if $boosted}boosted_{/if}_{$_post['poll']['poll_id']}" id="option_{$option['option_id']}" class="custom-control-input" {if $option['checked']}checked{/if}>
                        <label for="option_{$option['option_id']}">
							<div class="percentage-bg" {if $_post['poll']['votes'] > 0} style="width: {($option['votes']/$_post['poll']['votes'])*100}%" {/if}></div>
							<span class="valign"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M9 16.2l-3.5-3.5c-.39-.39-1.01-.39-1.4 0-.39.39-.39 1.01 0 1.4l4.19 4.19c.39.39 1.02.39 1.41 0L20.3 7.7c.39-.39.39-1.01 0-1.4-.39-.39-1.01-.39-1.4 0L9 16.2z"></path></svg>{$option['text']}</span>
						</label>
                    </div>
                </div>
                <div class="poll-voters">
                    <div class="more" data-toggle="modal" data-url="posts/who_votes.php?option_id={$option['option_id']}">{$option['votes']}</div>
                </div>
            </div>
        {/foreach}
    </div>
{/if}

{if $_post['post_type'] == "reel" && $_post['reel']}
	<div class="{if $_post['post_type'] == "combo"}mt10{/if}">
        <video class="js_video-plyr" id="reel-{$_post['reel']['reel_id']}{if $pinned || $boosted}-{$_post['post_id']}{/if}" {if $user->_logged_in}onplay="update_media_views('reel', {$_post['reel']['reel_id']})" {/if} {if $_post['reel']['thumbnail']}data-poster="{$system['system_uploads']}/{$_post['reel']['thumbnail']}" {/if} playsinline controls preload="auto" style="max-width: 100%; width: 100%; height: auto;">
			{if empty($_post['reel']['source_240p']) && empty($_post['reel']['source_360p']) && empty($_post['reel']['source_480p']) && empty($_post['reel']['source_720p']) && empty($_post['reel']['source_1080p']) && empty($_post['reel']['source_1440p']) && empty($_post['reel']['source_2160p'])}
				<source src="{$system['system_uploads']}/{$_post['reel']['source']}" type="video/mp4">
			{/if}
			{if $_post['reel']['source_240p']}
				<source src="{$system['system_uploads']}/{$_post['reel']['source_240p']}" type="video/mp4" size="240">
			{/if}
			{if $_post['reel']['source_360p']}
				<source src="{$system['system_uploads']}/{$_post['reel']['source_360p']}" type="video/mp4" size="360">
			{/if}
			{if $_post['reel']['source_480p']}
				<source src="{$system['system_uploads']}/{$_post['reel']['source_480p']}" type="video/mp4" size="480">
			{/if}
			{if $_post['reel']['source_720p']}
				<source src="{$system['system_uploads']}/{$_post['reel']['source_720p']}" type="video/mp4" size="720">
			{/if}
			{if $_post['reel']['source_1080p']}
				<source src="{$system['system_uploads']}/{$_post['reel']['source_1080p']}" type="video/mp4" size="1080">
			{/if}
			{if $_post['reel']['source_1440p']}
				<source src="{$system['system_uploads']}/{$_post['reel']['source_1440p']}" type="video/mp4" size="1440">
			{/if}
			{if $_post['reel']['source_2160p']}
				<source src="{$system['system_uploads']}/{$_post['reel']['source_2160p']}" type="video/mp4" size="2160">
			{/if}
        </video>
	</div>
{/if}

{if ($_post['post_type'] == "video" || $_post['post_type'] == "combo") && $_post['video']}
    <div class="{if $_post['post_type'] == 'combo'}mt10{/if}">
		<video class="js_video-plyr" id="video-{$_post['video']['video_id']}{if $pinned || $boosted}-{$_post['post_id']}{/if}" {if $user->_logged_in}onplay="update_media_views('video', {$_post['video']['video_id']})" {/if} {if $_post['video']['thumbnail']}data-poster="{$system['system_uploads']}/{$_post['video']['thumbnail']}" {/if} playsinline controls preload="auto" style="max-width: 100%; width: 100%; height: auto;">
			{if empty($_post['video']['source_240p']) && empty($_post['video']['source_360p']) && empty($_post['video']['source_480p']) && empty($_post['video']['source_720p']) && empty($_post['video']['source_1080p']) && empty($_post['video']['source_1440p']) && empty($_post['video']['source_2160p'])}
				<source src="{$system['system_uploads']}/{$_post['video']['source']}" type="video/mp4">
			{/if}
			{if $_post['video']['source_240p']}
				<source src="{$system['system_uploads']}/{$_post['video']['source_240p']}" type="video/mp4" size="240">
			{/if}
			{if $_post['video']['source_360p']}
				<source src="{$system['system_uploads']}/{$_post['video']['source_360p']}" type="video/mp4" size="360">
			{/if}
			{if $_post['video']['source_480p']}
				<source src="{$system['system_uploads']}/{$_post['video']['source_480p']}" type="video/mp4" size="480">
			{/if}
			{if $_post['video']['source_720p']}
				<source src="{$system['system_uploads']}/{$_post['video']['source_720p']}" type="video/mp4" size="720">
			{/if}
			{if $_post['video']['source_1080p']}
				<source src="{$system['system_uploads']}/{$_post['video']['source_1080p']}" type="video/mp4" size="1080">
			{/if}
			{if $_post['video']['source_1440p']}
				<source src="{$system['system_uploads']}/{$_post['video']['source_1440p']}" type="video/mp4" size="1440">
			{/if}
			{if $_post['video']['source_2160p']}
				<source src="{$system['system_uploads']}/{$_post['video']['source_2160p']}" type="video/mp4" size="2160">
			{/if}
        </video>
    </div>
{/if}

{if ($_post['post_type'] == "audio" || $_post['post_type'] == "combo") && $_post['audio']}
    <div class="plr15 {if $_post['post_type'] == 'combo'}mt10{/if}">
		<audio class="js_audio" id="audio-{$_post['audio']['audio_id']}" {if $user->_logged_in}onplay="update_media_views('audio', {$_post['audio']['audio_id']})" {/if} controls preload="auto" style="width: 100%;">
            <source src="{$system['system_uploads']}/{$_post['audio']['source']}" type="audio/mpeg">
            <source src="{$system['system_uploads']}/{$_post['audio']['source']}" type="audio/mp3">
            {__("Your browser does not support HTML5 audio")}
        </audio>
    </div>
{/if}

{if ($_post['post_type'] == "file" || $_post['post_type'] == "combo") && $_post['file']}
    <div class="post-downloader mlr15 {if $_post['post_type'] == 'combo'}mt10{/if}">
        <div class="icon">
            <svg width="38" height="38" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.7997 2.21048C15.3897 1.80048 14.6797 2.08048 14.6797 2.65048V6.14048C14.6797 7.60048 15.9197 8.81048 17.4297 8.81048C18.3797 8.82048 19.6997 8.82048 20.8297 8.82048C21.3997 8.82048 21.6997 8.15048 21.2997 7.75048C19.8597 6.30048 17.2797 3.69048 15.7997 2.21048Z" fill="currentColor"/><path d="M20.5 10.19H17.61C15.24 10.19 13.31 8.26 13.31 5.89V3C13.31 2.45 12.86 2 12.31 2H8.07C4.99 2 2.5 4 2.5 7.57V16.43C2.5 20 4.99 22 8.07 22H15.93C19.01 22 21.5 20 21.5 16.43V11.19C21.5 10.64 21.05 10.19 20.5 10.19ZM11.5 17.75H7.5C7.09 17.75 6.75 17.41 6.75 17C6.75 16.59 7.09 16.25 7.5 16.25H11.5C11.91 16.25 12.25 16.59 12.25 17C12.25 17.41 11.91 17.75 11.5 17.75ZM13.5 13.75H7.5C7.09 13.75 6.75 13.41 6.75 13C6.75 12.59 7.09 12.25 7.5 12.25H13.5C13.91 12.25 14.25 12.59 14.25 13C14.25 13.41 13.91 13.75 13.5 13.75Z" fill="currentColor"/></svg>

        </div>
        <div class="info">
            {__("File Type")}: {get_extension({$_post['file']['source']})}
            <div class="mt5">
				{if $_post['needs_payment']}
					<button class="btn btn-primary btn-mat {if !$user->_logged_in}js_login{/if}" {if $user->_logged_in}data-toggle="modal" data-url="#payment" data-options='{ "handle": "paid_post", "paid_post": "true", "id": {$_post['post_id']}, "price": {$_post['post_price']}, "vat": "{get_payment_vat_value($_post['post_price'])}", "fees": "{get_payment_fees_value($_post['post_price'])}", "total": "{get_payment_total_value($_post['post_price'])}", "total_printed": "{get_payment_total_value($_post['post_price'], true)}" }' {/if}>
						{__("PAY TO DOWNLOAD")} ({print_money($_post['post_price'])})
					</button>
				{else}
					<a class="btn btn-primary btn-mat" href="{if $system['mask_file_path_enabled']}{$system['system_url']}/downloads.php?id={$_post['post_id']}{else}{$system['system_uploads']}/{$_post['file']['source']}{/if}">{__("Download")}</a>
				{/if}
            </div>
        </div>
    </div>
{/if}

{if $_post['post_type'] == "merit" && $_post['merit']['image'] && $_post['merit']['message']}
	<div class="mt10">
		{if $_post['merit']['image']}
			<div class="post-media">
				<div class="post-media-image">
					<div class="image" style="background-image:url('{$system['system_uploads']}/{$_post['merit']['image']}');"></div>
				</div>
			</div>
		{/if}
        {if {$_post['merit']['message']}}
			<div class="post-merit-meta mt10">
				<div class="merit-description">
					<!-- post text -->
					<div class="post-text js_readmore text-muted" dir="auto">{$_post['merit']['message']}</div>
					<div class="post-text-translation x-hidden" dir="auto"></div>
					<!-- post text -->
				</div>
			</div>
        {/if}
	</div>
{/if}

{if $_post['post_type'] == "group" && $_post['group']}
	<div class="mt10 plr15 ele_main_group_list">
        <div class="ele_content p-0 m-0 border shadow-none">
			{if $_post['group']['group_cover']}
				<div class="img">
					<a href="{$system['system_url']}/groups/{$_post['group']['group_name']}">
						<img alt="{$_post['group']['group_title']}" src="{$system['system_uploads']}/{$_post['group']['group_cover']}" />
					</a>
				</div>
			{/if}
            <div class="mt10">
                <a class="h6" href="{$system['system_url']}/groups/{$_post['group']['group_name']}">{$_post['group']['group_title']}</a>
                <div type="button" data-toggle="modal" data-url="modules/who_members.php?group_id={$_post['group']['group_id']}">{$_post['group']['group_members_formatted']} {__("Members")}</div>
            </div>
            <div class="mt10">
                {if $_post['group']['i_joined'] == "approved"}
                    <button type="button" class="btn btn-mat btn-success {if !$_no_action}btn-delete{/if} js_leave-group" data-id="{$_post['group']['group_id']}" data-privacy="{$_post['group']['group_privacy']}">
                        <i class="fa fa-check mr5"></i>{__("Joined")}
                    </button>
                {elseif $_post['group']['i_joined'] == "pending"}
                    <button type="button" class="btn btn-mat btn-warning js_leave-group" data-id="{$_post['group']['group_id']}" data-privacy="{$_post['group']['group_privacy']}">
                        <i class="fa fa-clock mr5"></i>{__("Pending")}
                    </button>
                {else}
                    <button type="button" class="btn btn-mat btn-success js_join-group" data-id="{$_post['group']['group_id']}" data-privacy="{if $_post['group']['i_admin']}public{else}{$_post['group']['group_privacy']}{/if}">
                        <i class="fa fa-user-plus mr5"></i>{__("Join")}
                    </button>
                {/if}
            </div>
        </div>
	</div>
{/if}

{if $_post['post_type'] == "event" && $_post['event']}
	<div class="plr15 mt10">
		<div class="ele_content p-2 ele_events_list border shadow-none">
			<div class="img bg-light">
				<a href="{$system['system_url']}/events/{$_post['event']['event_id']}">
					{if $_post['event']['event_cover']}
						<img alt="{$_post['event']['event_title']}" src="{$system['system_uploads']}/{$_post['event']['event_cover']}" />
					{/if}
				</a>
				<div class="d-flex position-absolute align-items-end justify-content-between w-100 ele_events_list_mid">
					<div class="position-relative profle-date-wrapper">
						<span>{__($_post['event']['event_start_date']|date_format:"%b")}</span><b>{$_post['event']['event_start_date']|date_format:"%e"}</b>
					</div>
					<div class="ele_events_list_btns">
						{if $_post['event']['i_joined']['is_interested']}
							<button type="button" class="btn btn-mat btn-light js_uninterest-event" data-id="{$_post['event']['event_id']}">
								<i class="fa fa-check mr5"></i>{__("Interested")}
							</button>
						{else}
							<button type="button" class="btn btn-mat btn-light js_interest-event" data-id="{$_post['event']['event_id']}">
								<i class="fa fa-star mr5"></i>{__("Interested")}
							</button>
						{/if}
					</div>
				</div>
			</div>
			<div class="mt10 ele_events_list_info">
				<h2 class="truncate"><a href="{$system['system_url']}/events/{$_post['event']['event_id']}">{$_post['event']['event_title']}</a></h2>
				<p class="mb-0" type="button" data-toggle="modal" data-url="modules/who_interested.php?event_id={$_post['event']['event_id']}">{$_post['event']['event_interested_formatted']} {__("Interested")}</p>
			</div>
		</div>
	</div>
{/if}

{/if}
  
{else}
	{if $_post['needs_age_verification']}
		<div class="ptb20 plr20">
			{include file='_need_age_verification.tpl'}
		</div>
	{elseif $_post['needs_payment']}
		<div class="ptb20 plr20">
			{include file='_need_payment.tpl' post_id=$_post['post_id'] price=$_post['post_price'] discounted_price=$_post['post_price_discounted'] paid_text=$_post['paid_text'] paid_image=$_post['paid_image']}
		</div>
	{elseif $_post['needs_subscription']}
		<div class="ptb20 plr20">
			{include file='_need_subscription.tpl' node_type=$_post['needs_subscription_type'] node_id=$_post['needs_subscription_id'] price=$_post['needs_subscription_price'] discount_enabled=$_post['needs_subscription_discount_enabled'] discount_percent=$_post['needs_subscription_discount_percent'] subscriptions_image=$_post['subscriptions_image']}
		</div>
	{/if}
{/if}