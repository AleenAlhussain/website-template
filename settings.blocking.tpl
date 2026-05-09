<h2 class="ele_page_title small mt-n1 mb-4">{__("Manage Blocking")}</h2>

<div class="alert alert-warning">
	{__("Once you block someone, that person can no longer see things you post on your timeline")}
</div>
{if $blocks}
	<ul class="ele_side_users mx-n2 mb-n2">
		{foreach $blocks as $_user}
		{include file='__feeds_user.tpl' _tpl="list" _connection="blocked"}
		{/foreach}
	</ul>

	{if count($blocks) >= $system['max_results']}
		<!-- see-more -->
		<div class="alert alert-info see-more js_see-more" data-get="blocks">
			<span>{__("See More")}</span>
			<div class="loader loader_small x-hidden"></div>
		</div>
		<!-- see-more -->
	{/if}
{else}
	{include file='_no_data.tpl'}
{/if}