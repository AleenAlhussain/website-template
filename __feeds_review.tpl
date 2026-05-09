{if $_tpl == "box" || $_tpl == ""}
<div class="col-md-12">
	<div class="d-flex tag_review_body">
		<div class="post-avatar">
			<a class="post-avatar-picture" href="{$system['system_url']}/{$_review['user_name']}" style="background-image:url({$_review['user_picture']});"></a>
		</div>
		
		<div class="post-meta">
			<div class="title">
				<span class="js_user-popover" data-uid="{$_review['user_id']}">
					<a class="post-author" href="{$system['system_url']}/{$_review['user_name']}">
						{$_review['user_fullname']}
					</a>
				</span>
				{if $_review['user_verified']}
					<span class="verified-color" data-toggle="tooltip" title='{__("Verified User")}'>
						<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg>
					</span>
				{/if}
				{if $_review['user_subscribed']}
					<span class="pro-badge" data-toggle="tooltip" title='{__("Pro User")}'>
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"></path><path fill="currentColor" d="M12 2.02c-5.51 0-9.98 4.47-9.98 9.98s4.47 9.98 9.98 9.98 9.98-4.47 9.98-9.98S17.51 2.02 12 2.02zm-.52 15.86v-4.14H8.82c-.37 0-.62-.4-.44-.73l3.68-7.17c.23-.47.94-.3.94.23v4.19h2.54c.37 0 .61.39.45.72l-3.56 7.12c-.24.48-.95.31-.95-.22z"></path></svg> PRO
					</span>
				{/if}
				<span class="font-weight-bold ml5 mr5">·</span>
				<span class="js_moment" data-time="{$_review['time']}">{$_review['time']}</span>
			</div>
			<!-- rating -->
			<div class="review-stars small">
				{include file='__stars_rate.tpl' rate=$_review['rate']}
			</div>
			<!-- rating -->
			
			<!-- review -->
			{if $_review['review']}
				<div class="review-review mt-1">
					{$_review['review']}
				</div>
			{/if}
			<!-- review -->
			
			<!-- photos -->
			{if $_review['photos']}
				<div class="d-flex truncate review-photos mt-2">
					{foreach $_review['photos'] as $_photo}
						<span class="pointer js_lightbox-nodata" data-image="{$system['system_uploads']}/{$_photo['source']}">
							<img src="{$system['system_uploads']}/{$_photo['source']}">
						</span>
					{/foreach}
				</div>
			{/if}
			<!-- photos -->
			
			<!-- reply -->
			{if $_review['reply']}
				<div class="mt-3">
					<div class="ele_content ele_ads_lists d-inline-flex m-0 review-reply">
						{if $_review['node_type'] == "page"}
							<div class="post-avatar">
								<a class="post-avatar-picture" href="{$system['system_url']}/pages/{$_review['page']['page_name']}" style="background-image:url({$_review['page']['page_picture']});"></a>
							</div>
							
							<div class="post-meta">
								<div class="title p-0">
									<span class="js_user-popover">
										<a class="post-author" href="{$system['system_url']}/pages/{$_review['page']['page_name']}">
											{$_review['page']['page_title']}
										</a>
									</span>
									{if $_review['page']['page_verified']}
										<span class="verified-color" data-toggle="tooltip" title='{__("Verified Page")}'>
											<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg>
										</span>
									{/if}
								</div>
								
								<div class="review-review">
									{$_review['reply']}
								</div>
							</div>
						{elseif $_review['node_type'] == "group"}
							<div class="post-avatar">
								<a class="post-avatar-picture" href="{$system['system_url']}/groups/{$_review['group']['group_name']}" style="background-image:url({$_review['group']['group_picture']});"></a>
							</div>
							
							<div class="post-meta">
								<div class="title p-0">
									<span class="js_user-popover">
										<a class="post-author" href="{$system['system_url']}/groups/{$_review['group']['group_name']}">
											{$_review['group']['group_title']}
										</a>
									</span>
								</div>
								
								<div class="review-review">
									{$_review['reply']}
								</div>
							</div>
						{elseif $_review['node_type'] == "event"}
							<div class="post-avatar">
								<a class="post-avatar-picture" href="{$system['system_url']}/events/{$_review['event']['event_id']}" style="background-image:url({$_review['event']['event_picture']});"></a>
							</div>
							
							<div class="post-meta">
								<div class="title p-0">
									<span class="js_user-popover">
										<a class="post-author" href="{$system['system_url']}/events/{$_review['event']['event_id']}">
											{$_review['event']['event_title']}
										</a>
									</span>
								</div>
								
								<div class="review-review">
									{$_review['reply']}
								</div>
							</div>
						{elseif $_review['node_type'] == "post"}
							<div class="post-avatar">
								<a class="post-avatar-picture" href="{$_review['post']['post_author_url']}" style="background-image:url({$_review['post']['post_author_picture']});"></a>
							</div>
							
							<div class="post-meta">
								<div class="title p-0">
									<span class="js_user-popover">
										<a class="post-author" href="{$_review['post']['post_author_url']}">
											{$_review['event']['event_title']}
										</a>
									</span>
								</div>
								
								<div class="review-review">
									{$_review['reply']}
								</div>
							</div>
						{/if}
					</div>
				</div>
			{/if}
			<!-- reply -->
			
			<!-- actions -->
			{if $_review['manage_review'] && !$_review['reply']}
				<div class="mt-3">
					<button type="button" class="btn btn-sm btn-secondary btn-mat" data-toggle="modal" data-url="modules/review.php?do=reply&id={$_review['review_id']}">{__("Reply")}</button>
				</div>
			{/if}
			<!-- actions -->
		</div>
	</div>
</div>
{elseif $_tpl == "list"}
<div class="col-md-12">
	<div class="d-flex tag_review_body">
		<div class="post-avatar">
			<a class="post-avatar-picture" href="{$system['system_url']}/{$_review['user_name']}" style="background-image:url({$_review['user_picture']});"></a>
		</div>
		
		<div class="post-meta">
			<div class="title">
				<span class="js_user-popover" data-uid="{$_review['user_id']}">
					<a class="post-author" href="{$system['system_url']}/{$_review['user_name']}">
						{$_review['user_fullname']}
					</a>
				</span>
				{if $_review['user_verified']}
					<span class="verified-color" data-toggle="tooltip" title='{__("Verified User")}'>
						<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg>
					</span>
				{/if}
				{if $_review['user_subscribed']}
					<span class="pro-badge" data-toggle="tooltip" title='{__("Pro User")}'>
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"></path><path fill="currentColor" d="M12 2.02c-5.51 0-9.98 4.47-9.98 9.98s4.47 9.98 9.98 9.98 9.98-4.47 9.98-9.98S17.51 2.02 12 2.02zm-.52 15.86v-4.14H8.82c-.37 0-.62-.4-.44-.73l3.68-7.17c.23-.47.94-.3.94.23v4.19h2.54c.37 0 .61.39.45.72l-3.56 7.12c-.24.48-.95.31-.95-.22z"></path></svg> PRO
					</span>
				{/if}
				<span class="font-weight-bold ml5 mr5">·</span>
				<span class="js_moment" data-time="{$_review['time']}">{$_review['time']}</span>
			</div>
			<!-- rating -->
			<div class="review-stars small">
				{include file='__stars_rate.tpl' rate=$_review['rate']}
			</div>
			<!-- rating -->
			
			<!-- review -->
			{if $_review['review']}
				<div class="review-review mt-1">
					{$_review['review']}
				</div>
			{/if}
			<!-- review -->
			
			<!-- photos -->
			{if $_review['photos']}
				<div class="d-flex truncate review-photos mt-2">
					{foreach $_review['photos'] as $_photo}
						<span class="pointer js_lightbox-nodata" data-image="{$system['system_uploads']}/{$_photo['source']}">
							<img src="{$system['system_uploads']}/{$_photo['source']}">
						</span>
					{/foreach}
				</div>
			{/if}
			<!-- photos -->
			
			<!-- reply -->
			{if $_review['reply']}
				<div class="mt-3">
					<div class="ele_content ele_ads_lists d-inline-flex m-0 review-reply">
						{if $_review['node_type'] == "page"}
							<div class="post-avatar">
								<a class="post-avatar-picture" href="{$system['system_url']}/pages/{$_review['page']['page_name']}" style="background-image:url({$_review['page']['page_picture']});"></a>
							</div>
							
							<div class="post-meta">
								<div class="title p-0">
									<span class="js_user-popover">
										<a class="post-author" href="{$system['system_url']}/pages/{$_review['page']['page_name']}">
											{$_review['page']['page_title']}
										</a>
									</span>
									{if $_review['page']['page_verified']}
										<span class="verified-color" data-toggle="tooltip" title='{__("Verified Page")}'>
											<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg>
										</span>
									{/if}
								</div>
								
								<div class="review-review">
									{$_review['reply']}
								</div>
							</div>
						{elseif $_review['node_type'] == "group"}
							<div class="post-avatar">
								<a class="post-avatar-picture" href="{$system['system_url']}/groups/{$_review['group']['group_name']}" style="background-image:url({$_review['group']['group_picture']});"></a>
							</div>
							
							<div class="post-meta">
								<div class="title p-0">
									<span class="js_user-popover">
										<a class="post-author" href="{$system['system_url']}/groups/{$_review['group']['group_name']}">
											{$_review['group']['group_title']}
										</a>
									</span>
								</div>
								
								<div class="review-review">
									{$_review['reply']}
								</div>
							</div>
						{elseif $_review['node_type'] == "event"}
							<div class="post-avatar">
								<a class="post-avatar-picture" href="{$system['system_url']}/events/{$_review['event']['event_id']}" style="background-image:url({$_review['event']['event_picture']});"></a>
							</div>
							
							<div class="post-meta">
								<div class="title p-0">
									<span class="js_user-popover">
										<a class="post-author" href="{$system['system_url']}/events/{$_review['event']['event_id']}">
											{$_review['event']['event_title']}
										</a>
									</span>
								</div>
								
								<div class="review-review">
									{$_review['reply']}
								</div>
							</div>
						{elseif $_review['node_type'] == "post"}
							<div class="post-avatar">
								<a class="post-avatar-picture" href="{$_review['post']['post_author_url']}" style="background-image:url({$_review['post']['post_author_picture']});"></a>
							</div>
							
							<div class="post-meta">
								<div class="title p-0">
									<span class="js_user-popover">
										<a class="post-author" href="{$_review['post']['post_author_url']}">
											{$_review['event']['event_title']}
										</a>
									</span>
								</div>
								
								<div class="review-review">
									{$_review['reply']}
								</div>
							</div>
						{/if}
					</div>
				</div>
			{/if}
			<!-- reply -->
			
			<!-- actions -->
			{if $_review['manage_review'] && !$_review['reply']}
				<div class="mt-3">
					<button type="button" class="btn btn-sm btn-secondary btn-mat" data-toggle="modal" data-url="modules/review.php?do=reply&id={$_review['review_id']}">{__("Reply")}</button>
				</div>
			{/if}
			<!-- actions -->
		</div>
	</div>
</div>
{/if}