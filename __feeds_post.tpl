{if !$standalone}<li>{/if}
    <!-- post -->
	{if $post['source'] == "popular"}
		<div class="mb10" style="font-size: 11px; color: #999;">{__("Popular")}</div>
	{else if $post['source'] == "discover"}
		<div class="mb10" style="font-size: 11px; color: #999;">{__("Suggested for you")}</div>
	{/if}
    <div class="post 
                {if $_get == "posts_profile" && $user->_data['user_id'] == $post['author_id'] && ($post['is_hidden'] || $post['is_anonymous'])}is_hidden{/if} 
                {if $boosted}boosted{/if} 
                {if ($post['still_scheduled']) OR ($post['is_pending']) OR ($post['in_group'] && !$post['group_approved']) OR ($post['in_event'] && !$post['event_approved'])}pending{/if}
            " data-id="{$post['post_id']}">

        {if ($post['in_group'] && !$post['group_approved']) OR ($post['in_event'] && !$post['event_approved'])}
            <div class="pending-icon">
				<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 -960 960 960" width="16" fill="currentColor"><path d="M480-520q66 0 113-47t47-113v-120H320v120q0 66 47 113t113 47ZM200-80q-17 0-28.5-11.5T160-120q0-17 11.5-28.5T200-160h40v-120q0-61 28.5-114.5T348-480q-51-32-79.5-85.5T240-680v-120h-40q-17 0-28.5-11.5T160-840q0-17 11.5-28.5T200-880h560q17 0 28.5 11.5T800-840q0 17-11.5 28.5T760-800h-40v120q0 61-28.5 114.5T612-480q51 32 79.5 85.5T720-280v120h40q17 0 28.5 11.5T800-120q0 17-11.5 28.5T760-80H200Z"/></svg> {__("Pending Post")}
            </div>
        {/if}
		
		{if $post['still_scheduled']}
			<div class="pending-icon">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="currentColor" d="M12,2C6.5,2,2,6.5,2,12s4.5,10,10,10s10-4.5,10-10S17.5,2,12,2z M15.55,15.8l-4.08-2.51c-0.3-0.18-0.48-0.5-0.48-0.85 V7.75C11,7.34,11.34,7,11.75,7s0.75,0.34,0.75,0.75v4.45l3.84,2.31c0.36,0.22,0.48,0.69,0.26,1.05 C16.38,15.91,15.91,16.02,15.55,15.8z"></path></svg> {__("Scheduled Post")}
            </div>
		{/if}

        {if $standalone && $pinned}
            <div class="pin-icon">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="currentColor" d="M22.314 10.172l-1.415 1.414-.707-.707-4.242 4.242-.707 3.536-1.415 1.414-4.242-4.243-4.95 4.95-1.414-1.414 4.95-4.95-4.243-4.242 1.414-1.415L8.88 8.05l4.242-4.242-.707-.707 1.414-1.415z"></path></svg> {__("Pinned Post")}
            </div>
        {/if}

        {if $standalone && $boosted}
            <div class="boosted-icon">{__("Promoted")}</div>
        {/if}

        <!-- memory post -->
        {if $_get == "memories"}
            <div class="post-memory-header">
                <span class="js_moment" data-time="{$post['time']}">{$post['time']}</span>
            </div>
        {/if}
        <!-- memory post -->

        <!-- post body -->
        <div class="post-body">

            <!-- post top alert -->
            {if $_get == "posts_profile" && $user->_data['user_id'] == $post['author_id'] && ($post['is_hidden'] || $post['is_anonymous'])}
                <div class="post-top-alert"><div><svg width="22" height="22" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M2.75 12C2.75 11.6616 2.88577 11.0954 3.24331 10.409C3.59385 9.73591 4.13459 8.9926 4.88371 8.3011C6.37297 6.9264 8.69232 5.75 12 5.75C15.3077 5.75 17.627 6.9264 19.1163 8.3011C19.8654 8.9926 20.4061 9.73591 20.7567 10.409C21.1142 11.0954 21.25 11.6616 21.25 12C21.25 12.3384 21.1142 12.9046 20.7567 13.591C20.4061 14.2641 19.8654 15.0074 19.1163 15.6989C17.627 17.0736 15.3077 18.25 12 18.25C8.69232 18.25 6.37297 17.0736 4.88371 15.6989C4.13459 15.0074 3.59385 14.2641 3.24331 13.591C2.88577 12.9046 2.75 12.3384 2.75 12ZM12 4.25C8.30768 4.25 5.62703 5.5736 3.86629 7.1989C2.99041 8.0074 2.34365 8.88909 1.91294 9.71605C1.48923 10.5296 1.25 11.3384 1.25 12C1.25 12.6616 1.48923 13.4704 1.91294 14.284C2.34365 15.1109 2.99041 15.9926 3.86629 16.8011C5.62703 18.4264 8.30768 19.75 12 19.75C15.6923 19.75 18.373 18.4264 20.1337 16.8011C21.0096 15.9926 21.6564 15.1109 22.0871 14.284C22.5108 13.4704 22.75 12.6616 22.75 12C22.75 11.3384 22.5108 10.5296 22.0871 9.71605C21.6564 8.88909 21.0096 8.0074 20.1337 7.1989C18.373 5.5736 15.6923 4.25 12 4.25ZM9.7499 12C9.7499 10.7574 10.7573 9.75002 11.9999 9.75002C13.2425 9.75002 14.2499 10.7574 14.2499 12C14.2499 13.2427 13.2425 14.25 11.9999 14.25C10.7573 14.25 9.7499 13.2427 9.7499 12ZM11.9999 8.25002C9.92883 8.25002 8.2499 9.92896 8.2499 12C8.2499 14.0711 9.92883 15.75 11.9999 15.75C14.071 15.75 15.7499 14.0711 15.7499 12C15.7499 9.92896 14.071 8.25002 11.9999 8.25002Z" fill="currentColor"></path></svg> {__("Only you can see this post")}</div></div>
            {/if}
            <!-- post top alert -->
			
			{if $post['is_collaborative'] && ($post['i_collaborative'] || ($post['is_paid'] && $post['author_id'] == $user->_data['user_id']))}
				<div class="post-collaborative-alert">
					<i class="fa-solid fa-circle-info mr5"></i>
					{if $post['i_collaborative']}
						{__("You are collaborating on this post")} {if $post['is_paid']} & {/if}
					{/if}
					{if $post['is_paid']}
						{__("Collaborators will receive")} {$post['collaborative_percent']}% {__("of the revenue")}
					{/if}
				</div>
			{/if}

            {include file='__feeds_post.body.tpl' _post=$post _shared=false}

			{if $post['can_get_details'] && !$post['needs_pro_package'] && !$post['needs_permission'] }
            <!-- post actions -->
            {if $user->_logged_in && $_get != "posts_information"}
                <div class="valign post-actions">
					<div class="valign">
                    <!-- reactions -->
                    <div class="action-btn unselectable reactions-wrapper {if $post['i_react']}js_unreact-post{/if}" data-reaction="{$post['i_reaction']}">
                        <!-- reaction-btn -->
                        <div class="reaction-btn">
                            {if !$post['i_react']}
                                <div class="reaction-btn-icon">
                                    <i class="far fa-thumbs-up fa-fw"></i>
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

					<div class="valign">
                    <!-- share -->
					{if !$post['still_scheduled'] && ($post['privacy'] == "public" || ($post['in_group'] && $post['group_privacy'] == "public") || ($post['in_event'] && $post['event_privacy'] == "public")) }
                        <div class="valign action-btn" data-toggle="modal" data-url="posts/share.php?do=create&post_id={$post['post_id']}" title='{__("Share")}'>
                            <div class="stat-ico-bg"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.44 8.8999C20.04 9.2099 21.51 11.0599 21.51 15.1099V15.2399C21.51 19.7099 19.72 21.4999 15.25 21.4999H8.73998C4.26998 21.4999 2.47998 19.7099 2.47998 15.2399V15.1099C2.47998 11.0899 3.92998 9.2399 7.46998 8.9099" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 15.0001V3.62012" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.35 5.85L12 2.5L8.65002 5.85" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg></div>
                        </div>
                    {/if}
					<!-- share -->
					<!-- review -->
					{if $post['author_id'] != $user->_data['user_id'] && $system['posts_reviews_enabled']}
						<div class="valign action-btn ml-0" data-toggle="modal" data-url="modules/review.php?do=review&id={$post['post_id']}&type=post" title='{__("Review")}'>
							<div class="stat-ico-bg ml-0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M13.73 3.51001L15.49 7.03001C15.73 7.52002 16.37 7.99001 16.91 8.08001L20.1 8.61001C22.14 8.95001 22.62 10.43 21.15 11.89L18.67 14.37C18.25 14.79 18.02 15.6 18.15 16.18L18.86 19.25C19.42 21.68 18.13 22.62 15.98 21.35L12.99 19.58C12.45 19.26 11.56 19.26 11.01 19.58L8.01997 21.35C5.87997 22.62 4.57997 21.67 5.13997 19.25L5.84997 16.18C5.97997 15.6 5.74997 14.79 5.32997 14.37L2.84997 11.89C1.38997 10.43 1.85997 8.95001 3.89997 8.61001L7.08997 8.08001C7.61997 7.99001 8.25997 7.52002 8.49997 7.03001L10.26 3.51001C11.22 1.60001 12.78 1.60001 13.73 3.51001Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg></div>
						</div>
					{/if}
					<!-- review -->
					<!-- tips -->
					{if $post['author_id'] != $user->_data['user_id'] && $post['tips_enabled']}
						<div class="valign action-btn ml-0" title='{__("Tip")}' data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$post['author_id']}"}'>
							<div class="stat-ico-bg ml-0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 11.4C8 12.17 8.6 12.8 9.33 12.8H10.83C11.47 12.8 11.99 12.25 11.99 11.58C11.99 10.85 11.67 10.59 11.2 10.42L8.8 9.57995C8.32 9.40995 8 9.14995 8 8.41995C8 7.74995 8.52 7.19995 9.16 7.19995H10.66C11.4 7.20995 12 7.82995 12 8.59995" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M10 12.8501V13.5901" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M10 6.40991V7.18991" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M9.99 17.98C14.4028 17.98 17.98 14.4028 17.98 9.99C17.98 5.57724 14.4028 2 9.99 2C5.57724 2 2 5.57724 2 9.99C2 14.4028 5.57724 17.98 9.99 17.98Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12.98 19.88C13.88 21.15 15.35 21.98 17.03 21.98C19.76 21.98 21.98 19.76 21.98 17.03C21.98 15.37 21.16 13.9 19.91 13" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg></div>
						</div>
					{/if}
					<!-- tips -->
					</div>
                    
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
								<span>{$post['reactions_total_count_formatted']}</span>
								<!-- reactions count -->
							</div>
						</div>
					{/if}
				</div>
                <!-- reactions stats -->

				<div class="valign">
					<!-- comments -->
					{if $post['comments'] > 0}
                    <span class="pointer js_comments-toggle">{$post['comments_formatted']} {__("Comments")}</span>
					{/if}
                    <!-- comments -->
					
					<!-- views -->
					{if $system['posts_views_enabled']}
						<span class="font-weight-bold ml5 mr5">·</span><span>{$post['views_formatted']} {__("Views")}</span>
					{/if}
					<!-- views -->
					
					<!-- video views -->
					{if $post['post_type'] == "video"}
						<span class="font-weight-bold ml5 mr5">·</span><span>{$post['video']['views']} {__("Plays")}</span>
					{/if}
					{if $post['post_type'] == "shared" && $post['origin']['post_type'] == "video"}
						<span class="font-weight-bold ml5 mr5">·</span><span>{$post['origin']['video']['views']} {__("Plays")}</span>
					{/if}
					<!-- video views -->

					<!-- audio views -->
					{if $post['post_type'] == "audio"}
						<span class="font-weight-bold ml5 mr5">·</span><span>{$post['audio']['views']} {__("Play")}</span>
					{/if}
					{if $post['post_type'] == "shared" && $post['origin']['post_type'] == "audio"}
						<span class="font-weight-bold ml5 mr5">·</span><span>{$post['origin']['audio']['views']} {__("Play")}</span>
					{/if}
					<!-- audio views -->

                    <!-- shares -->
					{if $post['shares'] > 0}
						<span class="font-weight-bold ml5 mr5">·</span><span class="pointer" data-toggle="modal" data-url="posts/who_shares.php?post_id={$post['post_id']}">{$post['shares_formatted']} {__("Shares")}</span>
					{/if}
                    <!-- shares -->

                    <!-- donations -->
                    {if $post['post_type'] == "funding"}
                        <span class="font-weight-bold ml5 mr5">·</span><span class="pointer" data-toggle="modal" data-url="posts/who_donates.php?post_id={$post['post_id']}">{$post['funding']['total_donations']} {__("Donations")}</span>
                    {/if}
                    <!-- donations -->
					
					{if $system['posts_reviews_enabled']}
					<!-- reviews -->
						<span class="font-weight-bold ml5 mr5">·</span><span class="pointer" data-toggle="modal" data-url="posts/who_reviews.php?post_id={$post['post_id']}">{$post['reviews_count_formatted']} {__("Reviews")}</span>
					<!-- reviews -->
					{/if}
                </div>
                <!-- comments & shares & views & plays & donations -->
            </div>
            <!-- post stats -->
			{/if}
        </div>
        <!-- post body -->

        <!-- post footer -->
		{if $post['can_get_details'] && !$post['needs_pro_package'] && !$post['needs_permission']}
			<div class="post-footer {if $user->_logged_in && (!$standalone || ($page != "post" && $post['boosted']))}x-hidden{/if}">
                <!-- comments -->
                {include file='__feeds_post.comments.tpl'}
                <!-- comments -->
            </div>
        {/if}
        <!-- post footer -->

        <!-- post approval -->
        {if ($post['in_group'] && $post['is_group_admin'] &&!$post['group_approved']) OR ($post['in_event'] && $post['is_event_admin'] &&!$post['event_approved']) }
            <div class="post-approval">
				<div class="row">
					<div class="col plr5">
						<button class="btn btn-primary btn-block btn-mat js_approve-post">{__("Approve")}</button>
					</div>
					<div class="col plr5">
						<button class="btn btn-secondary btn-block btn-mat js_delete-post">{__("Decline")}</button>
					</div>
				</div>
            </div>
        {/if}
        <!-- post approval -->

    </div>
	<!-- post -->
  {if !$standalone}
</li>{/if}