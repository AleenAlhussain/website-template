{include file='_head.tpl'}
{include file='_header.tpl'}

{assign var="post" value=$photo['post']}

<!-- page content -->
<div class="container mt20">

	<!-- content panel -->
		<div class="row">
			<!-- left panel -->
			<div class="col-lg-8 middlecol">
				<div class="post" data-id="{if $photo['is_single']}{$post['post_id']}{else}{$photo['photo_id']}{/if}">
					{include file='__feeds_post_photo.tpl' standalone=true}
				</div>
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