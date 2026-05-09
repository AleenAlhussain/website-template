<div class="col-md-6 col-lg-4">
	<div class="post mb20 plr15 ptb15 ele_job {if $_boosted}boosted{/if}">
		{if $post['needs_subscription']}
			<a href="{$system['system_url']}/posts/{$post['post_id']}">
				<div class="ptb20 plr20">
					{include file='_need_subscription.tpl'}
				</div>
			</a>
		{else}
			{if $_boosted}
				<div class="boosted-icon m-0 mb15">{__("Promoted")}</div>
			{/if}
			
			<div class="valign justify-content-between mb15">
				<a href="{$system['system_url']}/posts/{$post['post_id']}">
					<img src="{$system['system_uploads']}/{$post['course']['cover_image']}" class="avatar w-100">
				</a>
			</div>
			<h4 class="truncate"><a href="{$system['system_url']}/posts/{$post['post_id']}" class="body_color">{$post['course']['title']}</a></h4>
			<div class="product-info">
				<div class="truncate price">
					{print_money($post['course']['fees'], $post['course']['fees_currency']['symbol'], $post['course']['fees_currency']['dir'])}
				</div>
			</div>
			
			<div class="job_info mt-3">
				<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="18" y1="6" x2="18" y2="6.01"></line><path d="M18 13l-3.5 -5a4 4 0 1 1 7 0l-3.5 5"></path><polyline points="10.5 4.75 9 4 3 7 3 20 9 17 15 20 21 17 21 15"></polyline><line x1="9" y1="4" x2="9" y2="17"></line><line x1="15" y1="15" x2="15" y2="20"></line></svg>&nbsp;&nbsp;{if $post['course']['location']}{$post['course']['location']}{else}{__("N/A")}{/if}
			</div>
			{if $system['posts_reviews_enabled']}
				<div class="job_info mt5">
					<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z"></path></svg>&nbsp;&nbsp;{$post['reviews_count']} {__("Reviews")} {if $post['post_rate']}<span class="badge badge-warning">{$post['post_rate']|number_format:1}</span>{/if}
				</div>
			{/if}
			
			<hr class="mtb15">
			<div class="job_foot">
				{if $post['author_id'] != $user->_data['user_id'] }
					<button type="button" class="btn btn-mat btn-block btn-success js_course-enroll" data-toggle="modal" data-size="large" data-url="posts/course.php?do=application&post_id={$post['post_id']}">{__("Enroll Now")}</button>
				{else}
					<a type="button" class="btn btn-mat btn-block btn-secondary" href="{$system['system_url']}/posts/{$post['post_id']}">{__("More")}</a>
				{/if}
			</div>
		{/if}
	</div>
</div>