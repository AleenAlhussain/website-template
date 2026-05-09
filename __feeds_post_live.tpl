<!-- post body -->
<div class="post-body pt0">

    <!-- post header -->
    <div class="valign post-header">
		<div class="valign">
			<!-- post picture -->
			<div class="post-avatar">
				{if $post['is_anonymous']}
					<div class="post-avatar-anonymous">
						<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M12,3C9.31,3 7.41,4.22 7.41,4.22L6,9H18L16.59,4.22C16.59,4.22 14.69,3 12,3M12,11C9.27,11 5.39,11.54 5.13,11.59C4.09,11.87 3.25,12.15 2.59,12.41C1.58,12.75 1,13 1,13H23C23,13 22.42,12.75 21.41,12.41C20.75,12.15 19.89,11.87 18.84,11.59C18.84,11.59 14.82,11 12,11M7.5,14A3.5,3.5 0 0,0 4,17.5A3.5,3.5 0 0,0 7.5,21A3.5,3.5 0 0,0 11,17.5C11,17.34 11,17.18 10.97,17.03C11.29,16.96 11.63,16.9 12,16.91C12.37,16.91 12.71,16.96 13.03,17.03C13,17.18 13,17.34 13,17.5A3.5,3.5 0 0,0 16.5,21A3.5,3.5 0 0,0 20,17.5A3.5,3.5 0 0,0 16.5,14C15.03,14 13.77,14.9 13.25,16.19C12.93,16.09 12.55,16 12,16C11.45,16 11.07,16.09 10.75,16.19C10.23,14.9 8.97,14 7.5,14M7.5,15A2.5,2.5 0 0,1 10,17.5A2.5,2.5 0 0,1 7.5,20A2.5,2.5 0 0,1 5,17.5A2.5,2.5 0 0,1 7.5,15M16.5,15A2.5,2.5 0 0,1 19,17.5A2.5,2.5 0 0,1 16.5,20A2.5,2.5 0 0,1 14,17.5A2.5,2.5 0 0,1 16.5,15Z"></path></svg>
					</div>
				{else}
					<a class="post-avatar-picture" href="{$post['post_author_url']}" style="background-image:url({$post['post_author_picture']});"></a>
					{if $post['post_author_online']}<span class="online-dot"></span>{/if}
				{/if}
			</div>
			<!-- post picture -->
			
			<!-- post meta -->
			<div class="post-meta">
				<div class="title">
					<!-- post author -->
					{if $post['is_anonymous']}
						<span class="post-author">{__("Anonymous")}</span>
					{else}
						<span class="js_user-popover" data-type="{$post['user_type']}" data-uid="{$post['user_id']}">
							<a class="post-author" href="{$post['post_author_url']}">{$post['post_author_name']}</a>
						</span>
						{if $post['post_author_verified']}
							{if $post['user_type'] == "user"}
								<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"/></svg></span>
							{else}
								<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified Page")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"/></svg></span>
							{/if}
						{/if}
						{if $post['user_subscribed']}
							<span class="pro-badge" data-toggle="tooltip" data-placement="top" title="{__($_post['package_name'])} {__('Member')}"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"/><path fill="currentColor" d="M12 2.02c-5.51 0-9.98 4.47-9.98 9.98s4.47 9.98 9.98 9.98 9.98-4.47 9.98-9.98S17.51 2.02 12 2.02zm-.52 15.86v-4.14H8.82c-.37 0-.62-.4-.44-.73l3.68-7.17c.23-.47.94-.3.94.23v4.19h2.54c.37 0 .61.39.45.72l-3.56 7.12c-.24.48-.95.31-.95-.22z"/></svg> PRO</span>
						{/if}
					{/if}
					<!-- post author -->
				</div>

				<!-- post time & location & privacy -->
				<div class="valign post-time">
					<a href="{$system['system_url']}/posts/{$post['post_id']}" class="js_moment post-sub-item" data-time="{$post['time']}">{$post['time']}</a>
					
					<span class="font-weight-bold ml5 mr5">·</span>
					{if $post['privacy'] == "me"}
						<svg xmlns="http://www.w3.org/2000/svg" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Only Me")}' width="14" height="14" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" opacity="0.7"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="5" y="11" width="14" height="10" rx="2"></rect><circle cx="12" cy="16" r="1"></circle><path d="M8 11v-4a4 4 0 0 1 8 0v4"></path></svg>
					{elseif $post['privacy'] == "friends"}
						<svg xmlns="http://www.w3.org/2000/svg" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}' width="14" height="14" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" opacity="0.7"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="9" cy="7" r="4"></circle><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path><path d="M21 21v-2a4 4 0 0 0 -3 -3.85"></path></svg>
					{elseif $post['privacy'] == "public"}
						<svg xmlns="http://www.w3.org/2000/svg" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Public")}' width="14" height="14" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" opacity="0.7"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="3.6" y1="9" x2="20.4" y2="9"></line><line x1="3.6" y1="15" x2="20.4" y2="15"></line><path d="M11.5 3a17 17 0 0 0 0 18"></path><path d="M12.5 3a17 17 0 0 1 0 18"></path></svg>
					{elseif $post['privacy'] == "custom"}
						<svg xmlns="http://www.w3.org/2000/svg" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Custom People")}' width="14" height="14" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" opacity="0.7"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M10.325 4.317c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 1.065 2.572c1.756 .426 1.756 2.924 0 3.35a1.724 1.724 0 0 0 -1.066 2.573c.94 1.543 -.826 3.31 -2.37 2.37a1.724 1.724 0 0 0 -2.572 1.065c-.426 1.756 -2.924 1.756 -3.35 0a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065z"></path><circle cx="12" cy="12" r="3"></circle></svg>
					{/if}
				</div>
				<!-- post time & location & privacy -->
			</div>
			<!-- post meta -->
		</div>
    </div>
    <!-- post header -->
	
	<!-- post actions -->
    {if $user->_logged_in}
        <div class="valign post-actions">
			<div class="valign">
            <!-- reactions -->
            <div class="action-btn unselectable reactions-wrapper {if $post['i_react']}js_unreact-post{/if}" data-reaction="{$post['i_reaction']}">
                <!-- reaction-btn -->
                <div class="reaction-btn">
                    {if !$post['i_react']}
                        <div class="reaction-btn-icon">
                            <i class="far fa-smile fa-fw"></i>
                        </div>
                        <span class="reaction-btn-name">{__("React")}</span>
                    {else}
                        <div class="reaction-btn-icon">
                            <div class="inline-emoji no_animation">
                                {include file='__reaction_emojis.tpl' _reaction=$post['i_reaction']}
                            </div>
                        </div>
                        <span class="reaction-btn-name" style="color: {$system['reactions'][$post['i_reaction']]['color']};">{__($system['reactions'][$post['i_reaction']]['title'])}</span>
                    {/if}
                </div>
                <!-- reaction-btn -->

                <!-- reactions-container -->
                <div class="reactions-container">
                    {foreach $system['reactions_enabled'] as $reaction}
                        <div class="reactions_item reaction reaction-{$reaction@iteration} js_react-post" data-reaction="{$reaction['reaction']}" data-reaction-color="{$reaction['color']}" data-title="{__($reaction['title'])}">
                            {include file='__reaction_emojis.tpl' _reaction=$reaction['reaction']}
                        </div>
                    {/foreach}
                </div>
                <!-- reactions-container -->
            </div>
            <!-- reactions -->

            <!-- comment -->
			<div class="valign action-btn js_comment {if $post['comments_disabled']}x-hidden{/if}">
				<div class="stat-ico-bg"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17.98 10.79V14.79C17.98 15.05 17.97 15.3 17.94 15.54C17.71 18.24 16.12 19.58 13.19 19.58H12.79C12.54 19.58 12.3 19.7 12.15 19.9L10.95 21.5C10.42 22.21 9.56 22.21 9.03 21.5L7.82999 19.9C7.69999 19.73 7.41 19.58 7.19 19.58H6.79001C3.60001 19.58 2 18.79 2 14.79V10.79C2 7.86001 3.35001 6.27001 6.04001 6.04001C6.28001 6.01001 6.53001 6 6.79001 6H13.19C16.38 6 17.98 7.60001 17.98 10.79Z" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M21.98 6.79001V10.79C21.98 13.73 20.63 15.31 17.94 15.54C17.97 15.3 17.98 15.05 17.98 14.79V10.79C17.98 7.60001 16.38 6 13.19 6H6.79004C6.53004 6 6.28004 6.01001 6.04004 6.04001C6.27004 3.35001 7.86004 2 10.79 2H17.19C20.38 2 21.98 3.60001 21.98 6.79001Z" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M13.4955 13.25H13.5045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M9.9955 13.25H10.0045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M6.4955 13.25H6.5045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg></div><span>{__("Comment")}</span>
			</div>
            <!-- comment -->
			</div>

            <!-- share -->
			<div>
            {if $post['privacy'] == "public"}
				<div class="valign action-btn" data-toggle="modal" data-url="posts/share.php?do=create&post_id={$post['post_id']}" title='{__("Share")}'>
					<div class="stat-ico-bg"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.44 8.8999C20.04 9.2099 21.51 11.0599 21.51 15.1099V15.2399C21.51 19.7099 19.72 21.4999 15.25 21.4999H8.73998C4.26998 21.4999 2.47998 19.7099 2.47998 15.2399V15.1099C2.47998 11.0899 3.92998 9.2399 7.46998 8.9099" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 15.0001V3.62012" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.35 5.85L12 2.5L8.65002 5.85" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg></div>
				</div>
            {/if}
			</div>
            <!-- share -->
        </div>
    {/if}
    <!-- post actions -->

    <!-- post stats -->
    <div class="valign post-stats">
        <!-- reactions stats -->
		<div class="valign">
			{if $post['reactions_total_count'] > 0}
				<div data-toggle="modal" data-url="posts/who_reacts.php?post_id={$post['post_id']}">
					<div class="reactions-stats">
						{foreach $post['reactions'] as $reaction_type => $reaction_count}
							{if $reaction_count > 0}
								<div class="reactions-stats-item">
									<div class="inline-emoji no_animation">
										{include file='__reaction_emojis.tpl' _reaction=$reaction_type}
									</div>
								</div>
							{/if}
						{/foreach}
						<!-- reactions count -->
						<span>
							{$post['reactions_total_count_formatted']}
						</span>
						<!-- reactions count -->
					</div>
				</div>
			{/if}
		</div>
        <!-- reactions stats -->

        <!-- comments & shares -->
        <div class="valign">
            <!-- comments -->
			{if $post['comments'] > 0}
			<span class="pointer js_comments-toggle">{$post['comments_formatted']} {__("Comments")}</span>
			{/if}
            <!-- comments -->

            <!-- shares -->
			{if $post['shares'] > 0}
				<span class="font-weight-bold ml5 mr5">·</span><span class="pointer" data-toggle="modal" data-url="posts/who_shares.php?post_id={$post['post_id']}">{$post['shares_formatted']} {__("Shares")}</span>
			{/if}
            <!-- shares -->
        </div>
        <!-- comments & shares -->
    </div>
    <!-- post stats -->

	{if $user->_logged_in}
    {if $post['author_id'] != $user->_data['user_id'] && $post['tips_enabled']}
		<!-- tips -->
		<div class="valign post-tips">
			<button class="btn btn-mat btn-primary" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$post['author_id']}", "value": "1"}'>
				{print_money(1)}
			</button>
			<button class="btn btn-mat btn-primary" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$post['author_id']}", "value": "5"}'>
				{print_money(5)}
			</button>
			<button class="btn btn-mat btn-primary" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$post['author_id']}", "value": "10"}'>
				{print_money(10)}
			</button>
			<button class="btn btn-mat btn-primary" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$post['author_id']}", "value": "20"}'>
				{print_money(20)}
			</button>
			<button class="btn btn-mat btn-primary" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$post['author_id']}", "value": "50"}'>
				{print_money(50)}
			</button>
			<button class="btn btn-mat btn-primary" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$post['author_id']}", "value": "100"}'>
				{print_money(100)}
			</button>
			<button class="btn btn-mat btn-primary" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$post['author_id']}"}'>
				$$$
			</button>
		</div>
		<!-- tips -->
    {/if}
	{/if}
</div>

<!-- post footer -->
<div class="post-footer">
    <!-- comments -->
    {include file='__feeds_post.comments.tpl' _live_comments=true}
    <!-- comments -->
</div>
<!-- post footer -->