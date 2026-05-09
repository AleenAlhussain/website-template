{if $_tpl == "featured"}
    <div class="{if $_iteration == 1}col-sm-12 col-md-12 col-lg-12{else}col-sm-6 col-md-4 col-lg-4{/if}">
        <div class="ele_content blog-container {if $_iteration == 1}primary{/if}">
			{if $blog['needs_payment']}
				<div class="ptb20 plr20">
					{include file='_need_payment.tpl' post_id=$blog['post_id'] price=$blog['post_price'] discounted_price=$blog['post_price_discounted']}
				</div>
			{elseif $blog['needs_subscription']}
				<div class="ptb20 plr20">
					{include file='_need_subscription.tpl'}
				</div>
			{elseif $blog['needs_pro_package']}
				<div class="ptb20 plr20">
					{include file='_need_pro_package.tpl'}
				</div>
			{elseif $blog['needs_age_verification']}
				<div class="ptb20 plr20">
					{include file='_need_age_verification.tpl'}
				</div>
			{else}
				<div class="blog-image">
					<a href="{if $blog['needs_payment'] || $blog['needs_subscription'] || $blog['needs_pro_package'] || $blog['needs_age_verification']}{$system['system_url']}/posts/{$blog['post_id']}{else}{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}{/if}" ><img src="{$blog['blog']['parsed_cover']}"></a>
				</div>
				<div class="blog-content">
					<a class="category" href="{$system['system_url']}/blogs/category/{$blog['blog']['category_id']}/{$blog['blog']['category_url']}">{$blog['blog']['category_name']}</a>
					<h3><a href="{if $blog['needs_subscription']}{$system['system_url']}/posts/{$blog['post_id']}{else}{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}{/if}">{$blog['blog']['title']}</a></h3>
					{if $_iteration == 1}<div class="text mt10">{$blog['blog']['text_snippet']|truncate:150}</div>{/if}
					<div class="valign justify-content-between {if $_iteration == 1}mt20{else}mt10{/if}">
						<div class="valign w-100 {if $_iteration == 1}mw-95{else}mw-100{/if}">
							<a href="{$blog['post_author_url']}" class="post-avatar"><div class="post-avatar-picture" style="background-image:url('{$blog['post_author_picture']}');"></div></a>
							<div class="post-meta">
								<div class="bold"><a class="truncate d-block" href="{$blog['post_author_url']}">{$blog['post_author_name']}</a></div>
								<div class="post-time">
									<small class="js_moment" data-time="{$blog['time']}">{$blog['time']}</small>
								</div>
							</div>
						</div>
						{if $_iteration == 1}<a href="{if $blog['needs_subscription']}{$system['system_url']}/posts/{$blog['post_id']}{else}{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}{/if}" class="btn btn-mat">{__("More")}</a>{/if}
					</div>
				</div>
			{/if}
        </div>
    </div>
{else}
    <div class="ele_content blog-container ">
		{if $blog['needs_payment']}
			<a href="{$system['system_url']}/posts/{$blog['post_id']}">
				<div class="ptb20 plr20">
				  {include file='_need_payment.tpl' post_id=$blog['post_id'] price=$blog['post_price'] discounted_price=$blog['post_price_discounted'] paid_text=$blog['paid_text']}
				</div>
			</a>
		{elseif $blog['needs_subscription']}
			<a href="{$system['system_url']}/posts/{$blog['post_id']}">
				<div class="ptb20 plr20">
					{include file='_need_subscription.tpl'}
				</div>
			</a>
		{elseif $blog['needs_pro_package']}
			<div class="ptb20 plr20">
				{include file='_need_pro_package.tpl'}
			</div>
		{elseif $blog['needs_age_verification']}
			<div class="ptb20 plr20">
				{include file='_need_age_verification.tpl'}
			</div>
		{else}
			<div class="blog-image">
				<a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}"><img src="{$blog['blog']['parsed_cover']}"></a>
			</div>
			<div class="blog-content blog-content-list">
				<a class="category" href="{$system['system_url']}/blogs/category/{$blog['blog']['category_id']}/{$blog['blog']['category_url']}">{__($blog['blog']['category_name'])}</a>
				<h3><a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}">{$blog['blog']['title']}</a></h3>
				<div class="text mb5">
					{if $_small}
						{$blog['blog']['text_snippet']|truncate:100}
					{else}
						{$blog['blog']['text_snippet']|truncate:180}
					{/if}
				</div>
				<div class="valign justify-content-between {if $_iteration == 1}mt20{else}mt10{/if}">
					<div class="valign w-100 {if $_iteration == 1}mw-95{else}mw-100{/if}">
						<a href="{$blog['post_author_url']}" class="post-avatar"><div class="post-avatar-picture" style="background-image:url('{$blog['post_author_picture']}');"></div></a>
						<div class="post-meta">
							<div class="bold"><a class="truncate d-block" href="{$blog['post_author_url']}">{$blog['post_author_name']}</a></div>
							<div class="post-time">
								<small class="js_moment" data-time="{$blog['time']}">{$blog['time']}</small>
							</div>
						</div>
					</div>
					<a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}" class="btn btn-mat">{$blog['comments_formatted']} {__("Comments")}</a>
				</div>
			</div>
		{/if}
    </div>
{/if}