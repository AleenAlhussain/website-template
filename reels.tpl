{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<style>
	body, .main-wrapper {
		padding-left: 0 !important;padding-right: 0 !important;
	}
	.ele_sidebar_left {
		display: none;
	}
	.main-header {
		margin-bottom: 0;
	}
</style>
<div class="reels-wrapper">
	{if $posts}
		<div class="reels-loader" data-offset="1">{__("Loading")} <span class="spinner-grow spinner-grow-sm ml-3"></span></div>
		{foreach $posts as $post}
			{include file='__feeds_reel.tpl' _iteration=$post@iteration}
		{/foreach}
	{else}
		<div class="mtb30 text-white">
			{include file='_no_data.tpl'}
		</div>
	{/if}
</div>
<!-- page content -->

{include file='_footer.tpl'}

<script>
  var first_id = $('.reel-container').first().data('id');
  if (first_id) {
    var url = site_path + '/reels/' + first_id;
    window.history.pushState({ state: 'new' }, '', url);
  }
</script>