{if $_tpl == "box"}
    <div class="{if $_vsmall}col-md-6 col-lg-4{else}col-md-6 col-lg-3{/if}">
        <div class="ui-box">
            <div class="img">
                <a href="{$system['system_url']}/{$_user['user_name']}">
                    <img alt="" src="{$_user['user_picture']}" />
                </a>
            </div>
            <div class="mt10 truncate">
                <span class="js_user-popover" data-uid="{$_user['user_id']}">
                    <a class="h6" href="{$system['system_url']}/{$_user['user_name']}">
                        {if $system['show_usernames_enabled']}
                            {$_user['user_name']}
                        {else}
                            {$_user['user_firstname']} {$_user['user_lastname']}
                        {/if}
                    </a>
                </span>
                {if $_user['user_verified']}
					<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
                {/if}
            </div>
			{if $_user['monetization_plan']}
				<div class="mt10">
					<span class="badge bg-info">
						{if $_user['monetization_plan']['discounted_price']}{print_money($_user['monetization_plan']['discounted_price'])}{/if}{if $_user['monetization_plan']['discounted_price']}<span style="text-decoration: line-through;" class="ml5">{/if}{print_money($_user['monetization_plan']['price'])}{if $_user['monetization_plan']['discounted_price']}</span>{/if} / {if $_user['monetization_plan']['period_num'] != '1'}{$_user['monetization_plan']['period_num']}{/if} {__($_user['monetization_plan']['period']|ucfirst)}
					</span>
				</div>
			{/if}
            <div class="mt10">
                <!-- buttons -->
                {if $_connection == "request"}
                    <button type="button" class="btn btn-sm btn-primary js_friend-accept" data-uid="{$_user['user_id']}">{__("Confirm")}</button>
                    <button type="button" class="btn btn-sm btn-danger js_friend-decline" data-uid="{$_user['user_id']}">{__("Decline")}</button>

                {elseif $_connection == "add"}
					{if $system['friends_enabled']}
						<button type="button" class="btn btn-sm btn-success js_friend-add" data-uid="{$_user['user_id']}">
							<i class="fa fa-user-plus mr5"></i>{if $_small}{__("Add")}{else}{__("Add Friend")}{/if}
						</button>
					{else}
						<button type="button" class="btn btn-sm btn-success js_follow" data-uid="{$_user['user_id']}">
							<i class="fa fa-user-plus mr5"></i>{__("Follow")}
						</button>
					{/if}

                {elseif $_connection == "cancel"}
                    <button type="button" class="btn btn-sm btn-warning js_friend-cancel" data-uid="{$_user['user_id']}">
                        <i class="fa fa-clock mr5"></i>{__("Sent")}
                    </button>
					
                {elseif $_connection == "remove"}
					{if $system['friends_enabled']}
						<button type="button" class="btn btn-sm btn-success {if !$_no_action}btn-delete{/if} js_friend-remove" data-uid="{$_user['user_id']}">
							<i class="fa fa-check mr5"></i>{__("Friends")}
						</button>
					{else}
						<button type="button" class="btn btn-sm btn-info js_unfollow" data-uid="{$_user['user_id']}">
							<i class="fa fa-check mr5"></i>{__("Following")}
						</button>
					{/if}

					{if $_top_friends}
						<button type="button" class="btn btn-sm btn-warning {if $_user['top_friend']}js_friend-unfavorite{else}js_friend-favorite{/if}" data-uid="{$_user['user_id']}">
							{if $_user['top_friend']}
								<i class="fa-solid fa-star"></i>
							{else}
								<i class="fa-regular fa-star"></i>
							{/if}
						</button>
					{/if}

                {elseif $_connection == "follow"}
                    <button type="button" class="btn btn-sm btn-info js_follow" data-uid="{$_user['user_id']}">
                        <i class="fa fa-rss mr5"></i>{__("Follow")}
                    </button>

                {elseif $_connection == "unfollow"}
                    <button type="button" class="btn btn-sm btn-info js_unfollow" data-uid="{$_user['user_id']}">
                        <i class="fa fa-check mr5"></i>{__("Following")}
                    </button>

                {elseif $_connection == "blocked"}
                    <button type="button" class="btn btn-sm btn-danger js_unblock-user" data-uid="{$_user['user_id']}">
                        <i class="fa fa-trash mr5"></i>{__("Unblock")}
                    </button>

                {elseif $_connection == "page_invite"}
                    <button type="button" class="btn btn-info btn-sm js_page-invite" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                        <i class="fa fa-user-plus mr5"></i>{__("Invite")}
                    </button>

                {elseif $_connection == "page_manage"}
                    <button type="button" class="btn btn-danger js_page-member-remove" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                        <i class="fa fa-trash mr5"></i>{__("Remove")}
                    </button>
                    {if $_user['i_admin']}
                        <button type="button" class="btn btn-danger js_page-admin-remove" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-trash mr5"></i>{__("Remove Admin")}
                        </button>
                    {else}
                        <button type="button" class="btn btn-primary js_page-admin-addation" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-check mr5"></i>{__("Make Admin")}
                        </button>
                    {/if}

                {elseif $_connection == "group_invite"}
                    <button type="button" class="btn btn-sm btn-info js_group-invite" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                        <i class="fa fa-user-plus mr5"></i>{__("Invite")}
                    </button>

                {elseif $_connection == "group_request"}
                    <button type="button" class="btn btn-sm btn-primary js_group-request-accept" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">{__("Approve")}</button>
                    <button type="button" class="btn btn-sm btn-danger js_group-request-decline" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">{__("Decline")}</button>

                {elseif $_connection == "group_manage"}
                    <button type="button" class="btn btn-sm btn-danger js_group-member-remove" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                        <i class="fa fa-trash mr5"></i>{__("Remove")}
                    </button>
                    {if $_user['i_admin']}
                        <button type="button" class="btn btn-sm btn-danger js_group-admin-remove" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-trash mr5"></i>{__("Remove Admin")}
                        </button>
                    {else}
                        <button type="button" class="btn btn-sm btn-primary js_group-admin-addation" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-check mr5"></i>{__("Make Admin")}
                        </button>
                    {/if}

                {elseif $_connection == "event_invite"}
                    <button type="button" class="btn btn-sm btn-info js_event-invite" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                        <i class="fa fa-user-plus mr5"></i> {__("Invite")}
                    </button>

                {elseif $_connection == "unsubscribe"}
					{if $user->_data['user_id'] == $_user['plan_user_id']}
						<button type="button" class="btn btn-sm btn-danger js_unsubscribe-plan" data-id="{$_user['plan_id']}">
							<i class="fa fa-trash mr5"></i> {__("Unsubscribe")}
						</button>
					{/if}

				{/if}
                <!-- buttons -->
            </div>
        </div>
    </div>
{elseif $_tpl == "list"}
    <li class="feeds-item" {if $_user['id']}data-id="{$_user['id']}" {/if}>
        <div class="data-container {if $_small}small{/if}">
            <a class="data-avatar" href="{$system['system_url']}/{$_user['user_name']}{if $_search}?ref=qs{/if}">
                <img src="{$_user['user_picture']}" alt="">
                {if $_reaction}
                    <div class="data-reaction">
                        <div class="inline-emoji no_animation">
                            {include file='__reaction_emojis.tpl' _reaction=$_reaction}
                        </div>
                    </div>
                {/if}
            </a>
            <div class="data-content">
                <div class="float-right">
                    <!-- buttons -->
                    {if $_connection == "request"}
                        <button type="button" class="btn btn-primary btn-mat js_friend-accept" data-uid="{$_user['user_id']}">{__("Confirm")}</button>
                        <button type="button" class="btn btn-secondary btn-mat js_friend-decline" data-uid="{$_user['user_id']}">{__("Decline")}</button>

                    {elseif $_connection == "add"}
						{if $system['friends_enabled']}
							<button type="button" class="btn btn-success btn-mat js_friend-add" data-uid="{$_user['user_id']}">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M9 3.75C7.20507 3.75 5.75 5.20507 5.75 7C5.75 8.79493 7.20507 10.25 9 10.25C10.7949 10.25 12.25 8.79493 12.25 7C12.25 5.20507 10.7949 3.75 9 3.75ZM4.25 7C4.25 4.37665 6.37665 2.25 9 2.25C11.6234 2.25 13.75 4.37665 13.75 7C13.75 9.62335 11.6234 11.75 9 11.75C6.37665 11.75 4.25 9.62335 4.25 7ZM6 15.75C4.20507 15.75 2.75 17.2051 2.75 19C2.75 19.6904 3.30964 20.25 4 20.25H14C14.6904 20.25 15.25 19.6904 15.25 19C15.25 17.2051 13.7949 15.75 12 15.75H6ZM1.25 19C1.25 16.3766 3.37665 14.25 6 14.25H12C14.6234 14.25 16.75 16.3766 16.75 19C16.75 20.5188 15.5188 21.75 14 21.75H4C2.48122 21.75 1.25 20.5188 1.25 19ZM20.75 7C20.75 6.58579 20.4142 6.25 20 6.25C19.5858 6.25 19.25 6.58579 19.25 7V9.25H17C16.5858 9.25 16.25 9.58579 16.25 10C16.25 10.4142 16.5858 10.75 17 10.75H19.25V13C19.25 13.4142 19.5858 13.75 20 13.75C20.4142 13.75 20.75 13.4142 20.75 13V10.75H23C23.4142 10.75 23.75 10.4142 23.75 10C23.75 9.58579 23.4142 9.25 23 9.25H20.75V7Z" fill="currentColor"/></svg> {if $_small}{__("Add")}{else}{__("Add")}{/if}
							</button>
						{else}
							<button type="button" class="btn btn-success btn-mat js_follow" data-uid="{$_user['user_id']}">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M9 3.75C7.20507 3.75 5.75 5.20507 5.75 7C5.75 8.79493 7.20507 10.25 9 10.25C10.7949 10.25 12.25 8.79493 12.25 7C12.25 5.20507 10.7949 3.75 9 3.75ZM4.25 7C4.25 4.37665 6.37665 2.25 9 2.25C11.6234 2.25 13.75 4.37665 13.75 7C13.75 9.62335 11.6234 11.75 9 11.75C6.37665 11.75 4.25 9.62335 4.25 7ZM6 15.75C4.20507 15.75 2.75 17.2051 2.75 19C2.75 19.6904 3.30964 20.25 4 20.25H14C14.6904 20.25 15.25 19.6904 15.25 19C15.25 17.2051 13.7949 15.75 12 15.75H6ZM1.25 19C1.25 16.3766 3.37665 14.25 6 14.25H12C14.6234 14.25 16.75 16.3766 16.75 19C16.75 20.5188 15.5188 21.75 14 21.75H4C2.48122 21.75 1.25 20.5188 1.25 19ZM20.75 7C20.75 6.58579 20.4142 6.25 20 6.25C19.5858 6.25 19.25 6.58579 19.25 7V9.25H17C16.5858 9.25 16.25 9.58579 16.25 10C16.25 10.4142 16.5858 10.75 17 10.75H19.25V13C19.25 13.4142 19.5858 13.75 20 13.75C20.4142 13.75 20.75 13.4142 20.75 13V10.75H23C23.4142 10.75 23.75 10.4142 23.75 10C23.75 9.58579 23.4142 9.25 23 9.25H20.75V7Z" fill="currentColor"/></svg> {__("Follow")}
							</button>
						{/if}

                    {elseif $_connection == "cancel"}
                        <button type="button" class="btn btn-mat btn-default js_friend-cancel" data-uid="{$_user['user_id']}">{__("Sent")}</button>
                    
                    {elseif $_connection == "remove"}
                        {if $system['friends_enabled']}
							<button type="button" class="btn btn-mat btn-success {if !$_no_action}btn-delete{/if} js_friend-remove" data-uid="{$_user['user_id']}">
								<i class="fa fa-check mr5"></i>{__("Friends")}
							</button>
						{else}
							<button type="button" class="btn btn-mat btn-info js_unfollow" data-uid="{$_user['user_id']}">
								<i class="fa fa-check mr5"></i>{__("Following")}
							</button>
						{/if}

                    {elseif $_connection == "follow"}
                        <button type="button" class="btn btn-mat btn-info js_follow" data-uid="{$_user['user_id']}">
                            <i class="fa fa-rss mr5"></i>{__("Follow")}
                        </button>

                    {elseif $_connection == "unfollow"}
                        <button type="button" class="btn btn-mat btn-info js_unfollow" data-uid="{$_user['user_id']}">
                            <i class="fa fa-check mr5"></i>{__("Following")}
                        </button>

                    {elseif $_connection == "blocked"}
                        <button type="button" class="btn btn-mat btn-danger js_unblock-user" data-uid="{$_user['user_id']}">
                            <i class="fa fa-trash mr5"></i>{__("Unblock")}
                        </button>

                    {elseif $_connection == "page_invite"}
                        <button type="button" class="btn btn-info btn-mat js_page-invite" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-user-plus mr5"></i>{__("Invite")}
                        </button>

                    {elseif $_connection == "page_manage"}
                        <button type="button" class="btn btn-danger btn-mat js_page-member-remove" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-trash mr5"></i>{__("Remove")}
                        </button>
                        {if $_user['i_admin']}
                            <button type="button" class="btn btn-danger btn-mat js_page-admin-remove" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                                <i class="fa fa-trash mr5"></i>{__("Remove Admin")}
                            </button>
                        {else}
                            <button type="button" class="btn btn-primary btn-mat js_page-admin-addation" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                                <i class="fa fa-check mr5"></i>{__("Make Admin")}
                            </button>
                        {/if}

                    {elseif $_connection == "group_invite"}
                        <button type="button" class="btn btn-mat btn-info js_group-invite" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-user-plus mr5"></i>{__("Invite")}
                        </button>

                    {elseif $_connection == "group_request"}
                        <button type="button" class="btn btn-mat btn-primary js_group-request-accept" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">{__("Approve")}</button>
                        <button type="button" class="btn btn-mat btn-danger js_group-request-decline" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">{__("Decline")}</button>

                    {elseif $_connection == "group_manage"}
                        <button type="button" class="btn btn-mat btn-danger js_group-member-remove" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-trash mr5"></i>{__("Remove")}
                        </button>
                        {if $_user['i_admin']}
                            <button type="button" class="btn btn-mat btn-danger js_group-admin-remove" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                                <i class="fa fa-trash mr5"></i>{__("Remove Admin")}
                            </button>
                        {else}
                            <button type="button" class="btn btn-mat btn-primary js_group-admin-addation" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                                <i class="fa fa-check mr5"></i>{__("Make Admin")}
                            </button>
                        {/if}

                    {elseif $_connection == "event_invite"}
                        <button type="button" class="btn btn-mat btn-info js_event-invite" data-id="{$_user['node_id']}" data-uid="{$_user['user_id']}">
                            <i class="fa fa-user-plus mr5"></i> {__("Invite")}
                        </button>

                    {elseif $_connection == "connected_account_remove"}
						<button type="button" class="btn btn-mat btn-danger js_connected-account-remove" data-uid="{$_user['user_id']}">
							<i class="fa fa-trash mr5"></i> {__("Remove")}
						</button>

					{elseif $_connection == "connected_account_revoke"}
						<button type="button" class="btn btn-mat btn-danger js_connected-account-revoke">
							<i class="fa fa-trash mr5"></i> {__("Revoke")}
						</button>
						
					{/if}
					{if $_merit_category}
						<img src="{$system['system_uploads']}/{$_merit_category['category_image']}" width="32px" height="32px" title="{$_merit_category['category_name']}" />
					{/if}
                    <!-- buttons -->
                </div>
                <div class="{if $_merits_count}mt-1{else}mt5{/if}">
                    <span class="name js_user-popover" data-uid="{$_user['user_id']}">
                        <a href="{$system['system_url']}/{$_user['user_name']}{if $_search}?ref=qs{/if}">
                            {if $system['show_usernames_enabled']}
                                {$_user['user_name']}
                            {else}
                                {$_user['user_firstname']} {$_user['user_lastname']}
                            {/if}
                        </a>
                    </span>
                    {if $_user['user_verified']}
                        <span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
                    {/if}
					{if $_user['user_subscribed']}
						<span class="pro-badge" data-toggle="tooltip" title='{__("Pro User")}'>
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"></path><path fill="currentColor" d="M12 2.02c-5.51 0-9.98 4.47-9.98 9.98s4.47 9.98 9.98 9.98 9.98-4.47 9.98-9.98S17.51 2.02 12 2.02zm-.52 15.86v-4.14H8.82c-.37 0-.62-.4-.44-.73l3.68-7.17c.23-.47.94-.3.94.23v4.19h2.54c.37 0 .61.39.45.72l-3.56 7.12c-.24.48-.95.31-.95-.22z"></path></svg> PRO
						</span>
					{/if}
					{if $_user['permission']}<span class="badge bg-warning">{__($_user['permission'])|ucfirst}</span>{/if}
                </div>
                {if $_connection != "me" && $_user['mutual_friends_count'] > 0}
                    <div>
                        <span class="text-underline" data-toggle="modal" data-url="users/mutual_friends.php?uid={$_user['user_id']}">{$_user['mutual_friends_count']} {__("mutual friends")}</span>
                    </div>
                {/if}
                {if $_donation}
                    <div>
                        <span class="badge badge-success">{print_money($_donation)}</span>
                        <span class="js_moment" data-time="{$_donation_time}">{$_donation_time}</span>
                    </div>
                {/if}
				{if $_merits_count}
					<div>
						{$_merits_count} {__("Merits")}
					</div>
				{/if}
            </div>
        </div>
    </li>
{/if}
