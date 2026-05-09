<div class="ele_content p-0 mb15">
	<div class="valign ele_sidebar_widget_title">
		<b>{__("Trending")}</b>
	</div>
	<div class="valign ele_htag">
		{foreach $trending_hashtags as $hashtag}
			<a class="trending-item" href="{$system['system_url']}/search/hashtag/{$hashtag['hashtag']}">
				<div class="hash">#{$hashtag['hashtag']}</div>
				<div class="frequency">{$hashtag['frequency']} {__("Posts")}</div>
			</a>
		{/foreach}
	</div>
</div>