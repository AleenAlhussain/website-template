{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container mt20">

	<!-- content panel -->
		<div class="row">
			<!-- left panel -->
			<div class="col-lg-8 middlecol">
			{include file='__feeds_post.tpl' standalone=true}
			{include file='_ads.tpl' ads=$ads_footer}
			</div>
			<!-- left panel -->

			<!-- right panel -->
			<div class="col-lg-4 sidebar rightcol">
				{include file='_ads_campaigns.tpl'}
				{include file='_ads.tpl'}
				{include file='_widget.tpl'}
			</div>
			<!-- right panel -->
		</div>
	<!-- content panel -->

</div>
<!-- page content -->

{include file='_footer.tpl'}