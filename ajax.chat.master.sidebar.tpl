{if $sidebar_friends}
	{foreach $sidebar_friends as $_user}
		<div class="data-container js_chat-start" data-uid="{$_user['user_id']}" data-name="{if $system['show_usernames_enabled']}{$_user['user_name']}{else}{$_user['user_firstname']} {$_user['user_lastname']}{/if}" data-link="{$_user['user_name']}" data-picture="{$_user['user_picture']}" title="{if $system['show_usernames_enabled']}{$_user['user_name']}{else}{$_user['user_firstname']} {$_user['user_lastname']}{/if}">
			<div class="data-avatar">
				<img src="{$_user['user_picture']}" alt="">
				{if $_user['user_is_online'] }
					<svg xmlns="http://www.w3.org/2000/svg" width="9" height="9" viewBox="0 0 24 24"><path fill="currentColor" d="M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z" /></svg>
				{else}
				{/if}
			</div>
			{if $system['chat_status_enabled'] && !$_user['user_is_online']}
				<span class="position-absolute text-center chat_last_see_time"><span class="js_moment" data-time="{$_user['user_last_seen']}">{$_user["user_last_seen"]}</span></span>
			{/if}
		</div>
	{/foreach}
{else}
	<div class="chat_skel"></div><div class="chat_skel"></div><div class="chat_skel"></div><div class="chat_skel"></div><div class="chat_skel"></div>
{/if}