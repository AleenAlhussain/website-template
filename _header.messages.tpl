{if $system['redirect_to_mobile_apps']}
	<div class="dropdown d-block d-md-none">
		<span class="counter {if $user->_data['user_live_messages_counter'] == 0}x-hidden{/if}">{$user->_data['user_live_messages_counter']}</span>
		
		<button class="ele_hdr_droptoggle msg_ddown" onclick="open_messenger_app()" role="button">
			<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.5" d="M17.98 10.79V14.79C17.98 15.05 17.97 15.3 17.94 15.54C17.71 18.24 16.12 19.58 13.19 19.58H12.79C12.54 19.58 12.3 19.7 12.15 19.9L10.95 21.5C10.42 22.21 9.56 22.21 9.03 21.5L7.82999 19.9C7.69999 19.73 7.41 19.58 7.19 19.58H6.79001C3.60001 19.58 2 18.79 2 14.79V10.79C2 7.86001 3.35001 6.27001 6.04001 6.04001C6.28001 6.01001 6.53001 6 6.79001 6H13.19C16.38 6 17.98 7.60001 17.98 10.79Z"/><path d="M9.99023 14C9.43023 14 8.99023 13.55 8.99023 13C8.99023 12.45 9.44023 12 9.99023 12C10.5402 12 10.9902 12.45 10.9902 13C10.9902 13.55 10.5502 14 9.99023 14Z"/><path d="M13.4902 14C12.9302 14 12.4902 13.55 12.4902 13C12.4902 12.45 12.9402 12 13.4902 12C14.0402 12 14.4902 12.45 14.4902 13C14.4902 13.55 14.0402 14 13.4902 14Z"/><path d="M6.5 14C5.94 14 5.5 13.55 5.5 13C5.5 12.45 5.95 12 6.5 12C7.05 12 7.5 12.45 7.5 13C7.5 13.55 7.05 14 6.5 14Z"/><path d="M21.9791 6.79001V10.79C21.9791 13.73 20.6291 15.31 17.9391 15.54C17.9691 15.3 17.9791 15.05 17.9791 14.79V10.79C17.9791 7.60001 16.3791 6 13.1891 6H6.78906C6.52906 6 6.27906 6.01001 6.03906 6.04001C6.26906 3.35001 7.85906 2 10.7891 2H17.1891C20.3791 2 21.9791 3.60001 21.9791 6.79001Z"/></svg>
		</button>
	</div>
{/if}

<div class="dropdown js_live-messages {if $system['redirect_to_mobile_apps']}d-none d-md-block{/if}">
	<span class="counter {if $user->_data['user_live_messages_counter'] == 0}x-hidden{/if}">{$user->_data['user_live_messages_counter']}</span>
    <button class="ele_hdr_droptoggle msg_ddown" data-toggle="dropdown" data-display="static" role="button">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.5" d="M17.98 10.79V14.79C17.98 15.05 17.97 15.3 17.94 15.54C17.71 18.24 16.12 19.58 13.19 19.58H12.79C12.54 19.58 12.3 19.7 12.15 19.9L10.95 21.5C10.42 22.21 9.56 22.21 9.03 21.5L7.82999 19.9C7.69999 19.73 7.41 19.58 7.19 19.58H6.79001C3.60001 19.58 2 18.79 2 14.79V10.79C2 7.86001 3.35001 6.27001 6.04001 6.04001C6.28001 6.01001 6.53001 6 6.79001 6H13.19C16.38 6 17.98 7.60001 17.98 10.79Z"/><path d="M9.99023 14C9.43023 14 8.99023 13.55 8.99023 13C8.99023 12.45 9.44023 12 9.99023 12C10.5402 12 10.9902 12.45 10.9902 13C10.9902 13.55 10.5502 14 9.99023 14Z"/><path d="M13.4902 14C12.9302 14 12.4902 13.55 12.4902 13C12.4902 12.45 12.9402 12 13.4902 12C14.0402 12 14.4902 12.45 14.4902 13C14.4902 13.55 14.0402 14 13.4902 14Z"/><path d="M6.5 14C5.94 14 5.5 13.55 5.5 13C5.5 12.45 5.95 12 6.5 12C7.05 12 7.5 12.45 7.5 13C7.5 13.55 7.05 14 6.5 14Z"/><path d="M21.9791 6.79001V10.79C21.9791 13.73 20.6291 15.31 17.9391 15.54C17.9691 15.3 17.9791 15.05 17.9791 14.79V10.79C17.9791 7.60001 16.3791 6 13.1891 6H6.78906C6.52906 6 6.27906 6.01001 6.03906 6.04001C6.26906 3.35001 7.85906 2 10.7891 2H17.1891C20.3791 2 21.9791 3.60001 21.9791 6.79001Z"/></svg>
    </button>
    <div class="dropdown-menu dropdown-menu-right dropdown-widget ele_scroll">
        <div class="valign dropdown-widget-header">
            <span class="title">{__("Messages")}</span>
            <div class="d-inline-flex align-items-center">
				<a class="btn btn-mat btn-secondary js_chat-new" href="{$system['system_url']}/messages/new" title="{__('Send a New Message')}" data-toggle="tooltip">
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M16.474 5.408l2.118 2.117m-.756-3.982L12.109 9.27a2.118 2.118 0 0 0-.58 1.082L11 13l2.648-.53c.41-.082.786-.283 1.082-.579l5.727-5.727a1.853 1.853 0 1 0-2.621-2.621z"/><path d="M19 15v3a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V7a2 2 0 0 1 2-2h3"/></svg>
				</a>
				<button class="btn bg-transparent ml15 d-sm-none" onclick='$(".msg_ddown").dropdown("toggle");'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="width: 28px;height: auto;"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M18 6l-12 12"></path><path d="M6 6l12 12"></path></svg></button>
			</div>
        </div>
        <div class="dropdown-widget-body custom-scrollbar">
            <div class="js_scroller">
                {if $user->_data['conversations']}
                    <ul>
                        {foreach $user->_data['conversations'] as $conversation}
                        {include file='__feeds_conversation.tpl'}
                        {/foreach}
                    </ul>
                {else}
                    <p class="text-center text-muted empty_state">
                        <svg enable-background="new 0 0 32 32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="m26 32h-20c-3.314 0-6-2.686-6-6v-20c0-3.314 2.686-6 6-6h20c3.314 0 6 2.686 6 6v20c0 3.314-2.686 6-6 6z" fill="#ffe6e2"/><g fill="#fc573b"><circle cx="20.333" cy="17.667" r="2"/><path d="m22.167 20.667h-3.667c-1.011 0-1.833.822-1.833 1.833v1c0 .276.224.5.5.5h6.333c.276 0 .5-.224.5-.5v-1c0-1.011-.822-1.833-1.833-1.833z"/><circle cx="10.667" cy="19.333" r="1.333"/><path d="m11.5 21.333h-1.667c-1.011 0-1.833.823-1.833 1.834v.333c0 .276.224.5.5.5h4.333c.276 0 .5-.224.5-.5v-.333c0-1.011-.822-1.834-1.833-1.834z"/></g><path d="m16.167 8h-6.334c-1.011 0-1.833.822-1.833 1.833v5c0 1.011.822 1.833 1.833 1.833h3.305l2.023 1.868c.094.087.216.132.339.132.068 0 .136-.014.201-.042.181-.079.299-.259.299-.457v-1.5h.167c1.011 0 1.833-.822 1.833-1.833v-5c0-1.012-.822-1.834-1.833-1.834zm-3.167 7c-.276 0-.5-.224-.5-.5s.224-.5.5-.5.5.224.5.5-.224.5-.5.5zm.5-2.167c0 .276-.224.5-.5.5s-.5-.224-.5-.5v-2.333c0-.276.224-.5.5-.5s.5.224.5.5z" fill="#fd907e"/></svg> {__("No messages")}
                    </p>
                {/if}
            </div>
        </div>
        <a class="dropdown-widget-footer" href="{$system['system_url']}/messages" target="_blank">{__("See All")}</a>
    </div>
</div>