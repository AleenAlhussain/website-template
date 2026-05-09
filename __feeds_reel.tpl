<div class="reel-container{if $_hidden || $_iteration > 1} hidden{/if}" data-id="{$post['post_id']}">
	<div class="position-relative">
		<div class="reel-video-wrapper">
			<div class="reel-prev-btn js_reel-prev-btn"><i class="fa fa-chevron-circle-up fa-3x"></i></div>
			<div class="reel-next-btn js_reel-next-btn"><i class="fa fa-chevron-circle-down fa-3x"></i></div>
			<div class="reel-video-container">
				<video class="js_video-plyr" data-reel="true" id="reel-{$post['reel']['reel_id']}" {if $user->_logged_in}onplay="update_media_views('reel', {$post['reel']['reel_id']})" {/if} {if $post['reel']['thumbnail']}data-poster="{$system['system_uploads']}/{$post['reel']['thumbnail']}" {/if} preload="auto" {if $_iteration == 1}autoplay{/if} playsinline preload="auto">
					{if empty($post['reel']['source_240p']) && empty($post['reel']['source_360p']) && empty($post['reel']['source_480p']) && empty($post['reel']['source_720p']) && empty($post['reel']['source_1080p']) && empty($post['reel']['source_1440p']) && empty($post['reel']['source_2160p'])}
						<source src="{$system['system_uploads']}/{$post['reel']['source']}" type="video/mp4">
					{/if}
					{if $post['reel']['source_240p']}
						<source src="{$system['system_uploads']}/{$post['reel']['source_240p']}" type="video/mp4" size="240">
					{/if}
					{if $post['reel']['source_360p']}
						<source src="{$system['system_uploads']}/{$post['reel']['source_360p']}" type="video/mp4" size="360">
					{/if}
					{if $post['reel']['source_480p']}
						<source src="{$system['system_uploads']}/{$post['reel']['source_480p']}" type="video/mp4" size="480">
					{/if}
					{if $post['reel']['source_720p']}
						<source src="{$system['system_uploads']}/{$post['reel']['source_720p']}" type="video/mp4" size="720">
					{/if}
					{if $post['reel']['source_1080p']}
						<source src="{$system['system_uploads']}/{$post['reel']['source_1080p']}" type="video/mp4" size="1080">
					{/if}
					{if $post['reel']['source_1440p']}
						<source src="{$system['system_uploads']}/{$post['reel']['source_1440p']}" type="video/mp4" size="1440">
					{/if}
					{if $post['reel']['source_2160p']}
						<source src="{$system['system_uploads']}/{$post['reel']['source_2160p']}" type="video/mp4" size="2160">
					{/if}
				</video>

				{if $post['text']}
					<div class="video-caption-overlay"></div>
					<div class="video-caption">
						{include file='__feeds_post.text.tpl'}
					</div>
				{/if}
				
				<div class="video-controlls">
					<div class="reel-actions">
						<!-- post picture -->
						<div class="post-avatar">
							{if $post['is_anonymous']}
								<div class="post-avatar-anonymous">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M12,3C9.31,3 7.41,4.22 7.41,4.22L6,9H18L16.59,4.22C16.59,4.22 14.69,3 12,3M12,11C9.27,11 5.39,11.54 5.13,11.59C4.09,11.87 3.25,12.15 2.59,12.41C1.58,12.75 1,13 1,13H23C23,13 22.42,12.75 21.41,12.41C20.75,12.15 19.89,11.87 18.84,11.59C18.84,11.59 14.82,11 12,11M7.5,14A3.5,3.5 0 0,0 4,17.5A3.5,3.5 0 0,0 7.5,21A3.5,3.5 0 0,0 11,17.5C11,17.34 11,17.18 10.97,17.03C11.29,16.96 11.63,16.9 12,16.91C12.37,16.91 12.71,16.96 13.03,17.03C13,17.18 13,17.34 13,17.5A3.5,3.5 0 0,0 16.5,21A3.5,3.5 0 0,0 20,17.5A3.5,3.5 0 0,0 16.5,14C15.03,14 13.77,14.9 13.25,16.19C12.93,16.09 12.55,16 12,16C11.45,16 11.07,16.09 10.75,16.19C10.23,14.9 8.97,14 7.5,14M7.5,15A2.5,2.5 0 0,1 10,17.5A2.5,2.5 0 0,1 7.5,20A2.5,2.5 0 0,1 5,17.5A2.5,2.5 0 0,1 7.5,15M16.5,15A2.5,2.5 0 0,1 19,17.5A2.5,2.5 0 0,1 16.5,20A2.5,2.5 0 0,1 14,17.5A2.5,2.5 0 0,1 16.5,15Z"></path></svg>
								</div>
							{else}
								<a class="post-avatar-picture" href="{$post['post_author_url']}" style="background-image:url({$post['post_author_picture']});"></a>
							{/if}
						</div>
						<!-- post picture -->

						<!-- reactions -->
						<div class="reel-action-btn">
							<div class="action-btn unselectable reactions-wrapper {if $post['i_react']}js_unreact-post{/if}" data-reaction="{$post['i_reaction']}">
								<!-- reaction-btn -->
								<div class="reaction-btn">
									{if !$post['i_react']}
										<div class="reaction-btn-icon">
											<i class="far fa-smile fa-fw white-icon"></i>
										</div>
									{else}
										<div class="reaction-btn-icon">
											<div class="inline-emoji no_animation">
												{include file='__reaction_emojis.tpl' _reaction=$post['i_reaction']}
											</div>
										</div>
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
							<!-- reactions stats -->
							<span class="pointer" data-toggle="modal" data-url="posts/who_reacts.php?post_id={$post['post_id']}">
								{$post['reactions_total_count_formatted']}
							</span>
							<!-- reactions stats -->
						</div>
						<!-- reactions -->

						<!-- comment -->
						<div class="reel-action-btn">
							<div class="action-btn js_reel-comments-toggle">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17.98 10.79V14.79C17.98 15.05 17.97 15.3 17.94 15.54C17.71 18.24 16.12 19.58 13.19 19.58H12.79C12.54 19.58 12.3 19.7 12.15 19.9L10.95 21.5C10.42 22.21 9.56 22.21 9.03 21.5L7.82999 19.9C7.69999 19.73 7.41 19.58 7.19 19.58H6.79001C3.60001 19.58 2 18.79 2 14.79V10.79C2 7.86001 3.35001 6.27001 6.04001 6.04001C6.28001 6.01001 6.53001 6 6.79001 6H13.19C16.38 6 17.98 7.60001 17.98 10.79Z" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M21.98 6.79001V10.79C21.98 13.73 20.63 15.31 17.94 15.54C17.97 15.3 17.98 15.05 17.98 14.79V10.79C17.98 7.60001 16.38 6 13.19 6H6.79004C6.53004 6 6.28004 6.01001 6.04004 6.04001C6.27004 3.35001 7.86004 2 10.79 2H17.19C20.38 2 21.98 3.60001 21.98 6.79001Z" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M13.4955 13.25H13.5045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M9.9955 13.25H10.0045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M6.4955 13.25H6.5045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg>
							</div>
							<span class="pointer  js_reel-comments-toggle">{$post['comments_formatted']}</span>
						</div>
						<!-- comment -->

						<!-- share -->
						{if $post['privacy'] == "public" || ($post['in_group'] && $post['group_privacy'] == "public") || ($post['in_event'] && $post['event_privacy'] == "public") }
							<div class="reel-action-btn">
								<div class="action-btn" data-toggle="modal" data-url="posts/share.php?do=create&post_id={$post['post_id']}">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.44 8.8999C20.04 9.2099 21.51 11.0599 21.51 15.1099V15.2399C21.51 19.7099 19.72 21.4999 15.25 21.4999H8.73998C4.26998 21.4999 2.47998 19.7099 2.47998 15.2399V15.1099C2.47998 11.0899 3.92998 9.2399 7.46998 8.9099" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M12 15.0001V3.62012" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M15.35 5.85L12 2.5L8.65002 5.85" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg>
								</div>
								<!-- shares -->
								<span class="pointer" data-toggle="modal" data-url="posts/who_shares.php?post_id={$post['post_id']}">
									{$post['shares_formatted']}
								</span>
								<!-- shares -->
							</div>
						{/if}
						<!-- share -->
					</div>
				</div>
			</div>
		</div>
		<div class="reel-comments-wrapper">
			<div class="clearfix">
				<div class="pt5 pr5 float-right">
					<button type="button" class="close p-2 js_reel-comments-toggle"><span aria-hidden="true">×</span></button>
				</div>
			</div>
			<div class="lightbox-post" data-id="{$post['post_id']}">
				<div class="js_scroller" data-slimScroll-height="100%">
					{include file='__feeds_post_reel.tpl'}
				</div>
			</div>
		</div>
	</div>
</div>