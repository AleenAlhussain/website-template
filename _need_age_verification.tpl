<!-- need age verification -->
<div class="ele_content">
	<div class="text-center empty_state">
		{include file='__svg_icons.tpl' icon="adult" class="" width="24px" height="24px"}
		
		{if !$user->_data['user_adult']}
			{__("You must be 18+ to view this content")}
		{else}
			{__("Your age must be verified to view this content")}
		{/if}
	</div>
</div>
<!-- need age verification -->