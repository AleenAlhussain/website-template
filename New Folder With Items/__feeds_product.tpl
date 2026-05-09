<div class="col-6 col-md-4 col-lg-4 col-xl-3">
	<div class="post mb20 product {if $_boosted}boosted{/if}">
		{if $post['needs_subscription']}
			<a href="{$system['system_url']}/posts/{$post['post_id']}">
				<div class="ptb20 plr20">
					{include file='_need_subscription.tpl'}
				</div>
			</a>
		{else}
			<a href="{$system['system_url']}/posts/{$post['post_id']}" class="product-image">
				{if $post['photos_num'] > 0}
					<img src="{$system['system_uploads']}/{$post['photos'][0]['source']}" class="w-100 h-100">
				{else}
					<img src="{$system['system_url']}/content/themes/{$system['theme']}/images/blank_product.png" class="w-100 h-100">
				{/if}
			</a>
			<div class="plr10 ptb10 product-info">
				<h2 class="truncate">
					<a href="{$system['system_url']}/posts/{$post['post_id']}" class="body_color">{$post['product']['name']}</a>
				</h2>
				<div class="truncate price">
					{if $post['product']['price'] > 0}
						{$post['product']['price_formatted']}
					{else}
						{__("Free")}
					{/if}
				</div>
				<div class="truncate ele_post_prod_shead">
					{if $post['product']['is_digital']}
						{__("Digital")}<span class="font-weight-bold ml5 mr5">·</span>
					{/if}
					{if $post['product']['status'] == "new"}
						{__("New")}
					{else}
						{__("Used")}
					{/if}

					{if $post['product']['available']}
						{if $post['product']['quantity'] > 0}
							<span class="font-weight-bold ml5 mr5">·</span>{__("In stock")}
						{else}
							<span class="font-weight-bold ml5 mr5">·</span>{__("Out of stock")}
						{/if}
					{else}
						<span class="font-weight-bold ml5 mr5">·</span>{__("SOLD")}
					{/if}
				</div>
				{if $system['posts_reviews_enabled']}
					<div class="product-meta">
						<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 17.75l-6.172 3.245l1.179 -6.873l-5 -4.867l6.9 -1l3.086 -6.253l3.086 6.253l6.9 1l-5 4.867l1.179 6.873z"></path></svg>
						<span>{$post['reviews_count']} {__("Reviews")}</span>
						{if $post['post_rate']}
							<span class="badge badge-warning">{$post['post_rate']|number_format:1}</span>
						{/if}
					</div>
				{/if}
				<a class="btn btn-mat btn-info position-absolute" href="{$system['system_url']}/posts/{$post['post_id']}" title='{__("More")}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="m-0 align-text-top"><path d="M24 24H0V0h24v24z" fill="none" opacity=".87"/><path fill="currentColor" d="M7.38 21.01c.49.49 1.28.49 1.77 0l8.31-8.31c.39-.39.39-1.02 0-1.41L9.15 2.98c-.49-.49-1.28-.49-1.77 0s-.49 1.28 0 1.77L14.62 12l-7.25 7.25c-.48.48-.48 1.28.01 1.76z"/></svg>
				</a>
			</div>
		{/if}
	</div>
</div>