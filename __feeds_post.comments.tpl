<div class="post-comments">
	{if $user->_logged_in}
		{if $_is_photo}

			<!-- sort comments -->
			{if $photo['comments'] > 0}
				<div class="comments-filter">
					<div class="btn-group btn-group-sm js_comments-filter" data-value="photo_comments">
						<button type="button" class="btn dropdown-toggle btn-mat ptb0 plr0" data-toggle="dropdown" data-display="static">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M11 18h2c.55 0 1-.45 1-1s-.45-1-1-1h-2c-.55 0-1 .45-1 1s.45 1 1 1zM3 7c0 .55.45 1 1 1h16c.55 0 1-.45 1-1s-.45-1-1-1H4c-.55 0-1 .45-1 1zm4 6h10c.55 0 1-.45 1-1s-.45-1-1-1H7c-.55 0-1 .45-1 1s.45 1 1 1z"/></svg> <span class="btn-group-text">{__("Most Recent")}</span>
						</button>
						<ul class="dropdown-menu ele_create_menu">
							<li><div class="dropdown-item pointer" data-value="photo_comments" data-id="{$photo['photo_id']}">{__("Most Recent")}</div></li>
							<li><div class="dropdown-item pointer" data-value="photo_comments_top" data-id="{$photo['photo_id']}">{__("Top Comments")}</div></li>
							<li><div class="dropdown-item pointer" data-value="photo_comments_all" data-id="{$photo['photo_id']}">{__("All Comments")}</div></li>
						</ul>
					</div>
				</div>
			{/if}
			<!-- sort comments -->

			<!-- post comment -->
			{include file='__feeds_comment.form.tpl' _handle='photo' _id=$photo['photo_id']}
			<!-- post comment -->

			<!-- comments loader -->
			<div class="text-center x-hidden js_comments-filter-loader">
				<div class="loader loader_large"></div>
			</div>
			<!-- comments loader -->

			<!-- comments -->
			<ul class="js_comments {if $photo['comments'] > 0}pt10{/if}">
				{if $photo['comments'] > 0}
					{foreach $photo['photo_comments'] as $comment}
					{include file='__feeds_comment.tpl' _comment=$comment}
					{/foreach}
				{/if}
			</ul>
			<!-- comments -->

			<!-- previous comments -->
			{if $photo['comments'] >= $system['min_results']}
				<div class="pb10 text-center js_see-more" data-get="photo_comments" data-id="{$photo['photo_id']}" data-remove="true" data-target-stream=".js_comments">
					<span class="btn btn-mat btn-secondary">{__("View previous comments")}</span>
					<div class="loader loader_small x-hidden"></div>
				</div>
			{/if}
			<!-- previous comments -->

		{else}

			<!-- sort comments -->
			{if $post['comments'] > 0}
				<div class="comments-filter">
					<div class="btn-group btn-group-sm js_comments-filter" data-value="post_comments">
						<button type="button" class="btn dropdown-toggle btn-mat ptb0 plr0" data-toggle="dropdown" data-display="static">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M11 18h2c.55 0 1-.45 1-1s-.45-1-1-1h-2c-.55 0-1 .45-1 1s.45 1 1 1zM3 7c0 .55.45 1 1 1h16c.55 0 1-.45 1-1s-.45-1-1-1H4c-.55 0-1 .45-1 1zm4 6h10c.55 0 1-.45 1-1s-.45-1-1-1H7c-.55 0-1 .45-1 1s.45 1 1 1z"/></svg> <span class="btn-group-text">{__("Most Recent")}</span>
						</button>
						<ul class="dropdown-menu ele_create_menu">
							<li><div class="dropdown-item pointer" data-value="post_comments" data-id="{$post['post_id']}">{__("Most Recent")}</div></li>
							<li><div class="dropdown-item pointer" data-value="post_comments_top" data-id="{$post['post_id']}">{__("Top Comments")}</div></li>
							<li><div class="dropdown-item pointer" data-value="post_comments_all" data-id="{$post['post_id']}">{__("All Comments")}</div></li>
						</ul>
					</div>
				</div>
			{/if}
			<!-- sort comments -->

			<!-- post comment -->
			{include file='__feeds_comment.form.tpl' _handle='post' _id=$post['post_id']}
			<!-- post comment -->

			<!-- comments loader -->
			<div class="text-center x-hidden js_comments-filter-loader">
				<div class="loader loader_large"></div>
			</div>
			<!-- comments loader -->
			
			<!-- comments -->
			<ul class="js_comments {if $post['comments'] > 0}pt10{/if} {if $_live_comments}js_live-comments{/if}">
				{if $post['comments'] > 0}
					{foreach $post['post_comments'] as $comment}
					{include file='__feeds_comment.tpl' _comment=$comment}
					{/foreach}
				{/if}
			</ul>
			<!-- comments -->

			<!-- previous comments -->
			{if $post['comments'] >= $system['min_results']}
				<div class="pt5 pb15 text-center js_see-more" data-get="post_comments" data-id="{$post['post_id']}" data-remove="true" data-target-stream=".js_comments">
					<span class="btn btn-mat btn-secondary">{__("View previous comments")}</span>
					<div class="loader loader_small x-hidden"></div>
				</div>
			{/if}
			<!-- previous comments -->

		{/if}
	{else}
		<div class="pb10">
			<a href="{$system['system_url']}/signin">{__("Please log in to like, share and comment!")}</a>
		</div>
	{/if}
</div>