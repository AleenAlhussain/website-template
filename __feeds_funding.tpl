<div class="col-sm-12 col-md-6 col-lg-6">
	<div class="ele_content blog-container">
		{if $funding['needs_subscription']}
			<div class="ptb20 plr20">
				{include file='_need_subscription.tpl'}
			</div>
		{else}
			<div class="blog-image">
				<a href="{$system['system_url']}/posts/{$funding['post_id']}"><img src="{$system['system_uploads']}/{$funding['funding']['cover_image']}"></a>
			</div>
			<div class="blog-content">
				<div class="category"><span class="js_moment" data-time="{$funding['time']}">{$funding['time']}</span></div>
				<h3 class="truncate ele_funding_list_title"><a href="{$system['system_url']}/posts/{$funding['post_id']}">{$funding['funding']['title']}</a></h3>
				<div class="text mt5">{$funding['text']|truncate:150}</div>
				<div class="mt10 ele_funding_list_price">
					<span class="float-right">{$funding['funding']['funding_completion']}%</span>
					<strong>{print_money($funding['funding']['raised_amount'])} {__("Raised of")} {print_money($funding['funding']['amount'])}</strong>
				</div>
				<div class="progress mt5 ele_funding_list_progress">
					<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="{$funding['funding']['funding_completion']}" aria-valuemin="0" aria-valuemax="100" style="width: {$funding['funding']['funding_completion']}%"></div>
				</div>
			</div>
		{/if}
	</div>
</div>