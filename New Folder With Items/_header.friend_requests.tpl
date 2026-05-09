<div class="dropdown js_live-requests">
	<span class="counter {if $user->_data['user_live_requests_counter'] == 0}x-hidden{/if}">{$user->_data['user_live_requests_counter']}</span>
    <button class="ele_hdr_droptoggle req_ddown" data-toggle="dropdown" data-display="static" role="button">
		<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.5" d="M9 2C6.38 2 4.25 4.13 4.25 6.75C4.25 9.32 6.26 11.4 8.88 11.49C8.96 11.48 9.04 11.48 9.1 11.49C9.12 11.49 9.13 11.49 9.15 11.49C9.16 11.49 9.16 11.49 9.17 11.49C11.73 11.4 13.74 9.32 13.75 6.75C13.75 4.13 11.62 2 9 2Z"/><path d="M14.0809 14.1499C11.2909 12.2899 6.74094 12.2899 3.93094 14.1499C2.66094 14.9999 1.96094 16.1499 1.96094 17.3799C1.96094 18.6099 2.66094 19.7499 3.92094 20.5899C5.32094 21.5299 7.16094 21.9999 9.00094 21.9999C10.8409 21.9999 12.6809 21.5299 14.0809 20.5899C15.3409 19.7399 16.0409 18.5999 16.0409 17.3599C16.0309 16.1299 15.3409 14.9899 14.0809 14.1499Z"/><path opacity="0.5" d="M19.9894 7.3401C20.1494 9.2801 18.7694 10.9801 16.8594 11.2101C16.8494 11.2101 16.8494 11.2101 16.8394 11.2101H16.8094C16.7494 11.2101 16.6894 11.2101 16.6394 11.2301C15.6694 11.2801 14.7794 10.9701 14.1094 10.4001C15.1394 9.4801 15.7294 8.1001 15.6094 6.6001C15.5394 5.7901 15.2594 5.0501 14.8394 4.4201C15.2194 4.2301 15.6594 4.1101 16.1094 4.0701C18.0694 3.9001 19.8194 5.3601 19.9894 7.3401Z"/><path d="M21.9902 16.5899C21.9102 17.5599 21.2902 18.3999 20.2502 18.9699C19.2502 19.5199 17.9902 19.7799 16.7402 19.7499C17.4602 19.0999 17.8802 18.2899 17.9602 17.4299C18.0602 16.1899 17.4702 14.9999 16.2902 14.0499C15.6202 13.5199 14.8402 13.0999 13.9902 12.7899C16.2002 12.1499 18.9802 12.5799 20.6902 13.9599C21.6102 14.6999 22.0802 15.6299 21.9902 16.5899Z"/></svg>
    </button>
    <div class="dropdown-menu dropdown-menu-right dropdown-widget js_dropdown-keepopen ele_scroll">
        <div class="valign dropdown-widget-header">
            <span class="title">{__("Friend Requests")}</span>
			<div class="d-inline-flex align-items-center">
				<button class="btn bg-transparent ml15 d-sm-none" onclick='$(".req_ddown").dropdown("toggle");'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="width: 28px;height: auto;"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M18 6l-12 12"></path><path d="M6 6l12 12"></path></svg></button>
			</div>
        </div>
        <div class="dropdown-widget-body custom-scrollbar">
            <div class="js_scroller">
                {if $user->_data['friend_requests']}
                    <ul class="ele_friend_reqs ele_side_users mx-n2">
                        {foreach $user->_data['friend_requests'] as $_user}
                        {include file='__feeds_user.tpl' _tpl="list" _connection="request"}
                        {/foreach}
                    </ul>
                {else}
					<p class="text-center text-muted empty_state">
						<svg enable-background="new 0 0 32 32" viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg"><path d="m26 32h-20c-3.314 0-6-2.686-6-6v-20c0-3.314 2.686-6 6-6h20c3.314 0 6 2.686 6 6v20c0 3.314-2.686 6-6 6z" fill="#f5e6fe"></path><g fill="#be63f9"><path d="m10.4 10.733c0-.667 1.011-2.4 2.933-2.4 1.911 0 2.94 1.733 2.94 2.4-.007 0-.02.007-.027.007-1.12.3-1.847-.92-1.873-.973-.118-.192-.368-.213-.52-.073-1.413 1.313-3.3 1.059-3.453 1.039z"></path><path d="m14.02 10.427c-1.52 1.193-3.313 1.02-3.68.973-.081 1.215 1.094 2.933 2.993 2.933 1.907 0 3.079-1.73 2.993-2.933-.883.23-1.727-.249-2.306-.973z"></path><path d="m15.804 15.667h-5.304c-1.379 0-2.5 1.121-2.5 2.5v2.333c0 .276.224.5.5.5h6.104c-.625-1.893-.144-3.918 1.2-5.333z"></path></g><path d="m19.667 15c-2.389 0-4.333 1.944-4.333 4.333s1.944 4.333 4.333 4.333 4.333-1.943 4.333-4.333-1.944-4.333-4.333-4.333zm1.638 5.029c.26.26.26.682 0 .943-.26.26-.682.26-.943 0l-.695-.695-.695.695c-.26.26-.682.26-.943 0-.26-.26-.26-.682 0-.943l.695-.695-.695-.695c-.26-.26-.26-.682 0-.943s.682-.26.943 0l.695.695.695-.695c.26-.26.682-.26.943 0s.26.682 0 .943l-.695.695z" fill="#d9a4fc"></path></svg> {__("No new requests")}
					</p>
                {/if}
            </div>
        </div>
        <a class="dropdown-widget-footer" href="{$system['system_url']}/people/friend_requests">{__("See All")}</a>
    </div>
</div>