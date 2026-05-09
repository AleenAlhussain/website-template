<li class="ele_notifis {if !$conversation['seen']}unread{/if}" data-last-message="{$conversation['last_message_id']}">
	<a class="data-container js_chat-start" {if $conversation['user_id']}data-uid="{$conversation['user_id']}" {/if} data-cid="{$conversation['conversation_id']}" data-name="{$conversation['name']}" data-name-list="{$conversation['name_list']}" data-link="{$conversation['link']}" href="{$system['system_url']}/messages/{$conversation['conversation_id']}" {if $conversation['picture']}data-picture="{$conversation['picture']}" {/if} {if $conversation['node_id']}data-chat-box="true" {/if} {if $conversation['multiple_recipients']} data-multiple="true" {/if}>
		<div class="valign">
			<div class="ele_notifis_avatar">
				{if $conversation['picture']}
					<img src="{$conversation['picture']}" alt="{$conversation['name']}">
				{else}
					<div class="left-avatar" style="background-image: url('{$conversation['picture_left']}')"></div>
					<div class="right-avatar" style="background-image: url('{$conversation['picture_right']}')"></div>
				{/if}
			</div>
			<div class="ele_notifis_data message">
				<div class="time js_moment" data-time="{$conversation['last_message']['time']}">{$conversation['last_message']['time']}</div>
				<span class="name">{$conversation['name']}</span>
				<div class="text">
					{if $conversation['last_message']['image'] != ''}
						<img class="data-img" src="{$system['system_uploads']}/{$conversation['image']}" alt="">
					{/if}
					
					{if $conversation['last_message']['image'] != ''}
						<svg xmlns="http://www.w3.org/2000/svg" height="15" viewBox="0 0 24 24" width="15" fill="currentColor"><path d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.9 13.98l2.1 2.53 3.1-3.99c.2-.26.6-.26.8.01l3.51 4.68c.25.33.01.8-.4.8H6.02c-.42 0-.65-.48-.39-.81L8.12 14c.19-.26.57-.27.78-.02z"/></svg> {__("Photo")}
					{elseif $conversation['last_message']['video'] != ''}
						<svg xmlns="http://www.w3.org/2000/svg" height="15" viewBox="0 -960 960 960" width="15" fill="currentColor"><path d="M216-192q-29 0-50.5-21.5T144-264v-432q0-29.7 21.5-50.85Q187-768 216-768h432q29.7 0 50.85 21.15Q720-725.7 720-696v168l113-113q8-8 19.5-3.83Q864-640.67 864-629v297.88Q864-319 852.5-315q-11.5 4-19.5-4L720-432v168q0 29-21.15 50.5T648-192H216Z"></path></svg> {__("Video")}
					{elseif $conversation['last_message']['voice_note'] != ''}
						<svg xmlns="http://www.w3.org/2000/svg" height="15" viewBox="0 0 24 24" width="15" fill="currentColor"><path d="M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3zm5.91-3c-.49 0-.9.36-.98.85C16.52 14.2 14.47 16 12 16s-4.52-1.8-4.93-4.15c-.08-.49-.49-.85-.98-.85-.61 0-1.09.54-1 1.14.49 3 2.89 5.35 5.91 5.78V20c0 .55.45 1 1 1s1-.45 1-1v-2.08c3.02-.43 5.42-2.78 5.91-5.78.1-.6-.39-1.14-1-1.14z"/></svg> {__("Voice Message")}
					{elseif $conversation['last_message']['post']}
						<svg xmlns="http://www.w3.org/2000/svg" height="15" viewBox="0 -960 960 960" width="15" fill="currentColor"><path d="M263.79-96Q234-96 213-117.21t-21-51Q192-198 213.21-219t51-21Q294-240 315-218.79t21 51Q336-138 314.79-117t-51 21Zm432 0Q666-96 645-117.21t-21-51Q624-198 645.21-219t51-21Q726-240 747-218.79t21 51Q768-138 746.79-117t-51 21ZM222-768h570q14 0 20.5 11t1.5 23L702.63-476.14Q694-456 676.5-444T637-432H317l-42 72h457q15.3 0 25.65 10.29Q768-339.42 768-324.21t-10.35 25.71Q747.3-288 732-288H276q-43 0-63.5-36.15-20.5-36.16.5-71.85l52-90-131-306H84q-15.3 0-25.65-10.29Q48-812.58 48-827.79t10.35-25.71Q68.7-864 84-864h73q11 0 19.5 6t13.5 16l32 74Z"/></svg> {__("Product")}
					{elseif $conversation['last_message']['message'] != ''}
						{$conversation['last_message']['message_orginal']}
					{/if}
				</div>
			</div>
		</div>
	</a>
</li>