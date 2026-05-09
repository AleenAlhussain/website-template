{if $_tpl == "box"}
    <li class="col-md-6 col-lg-3">
        <div class="ui-box">
            <div class="img">
                <a href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">
                    <img alt="{$_page['page_title']}" src="{$_page['page_picture']}" />
                </a>
            </div>
            <div class="mt10">
                <span class="js_user-popover" data-uid="{$_page['page_id']}" data-type="page">
                    <a class="h6" href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">{$_page['page_title']|truncate:30}</a>
                </span>
                {if $_page['page_verified']}
                    <span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified Page")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
                {/if}
                {if !$_page['monetization_plan']}<div>{$_page['page_likes']} {__("Likes")}</div>{/if}
            </div>
			{if $_page['monetization_plan']}
				<div class="mt10">
					<span class="badge badge-info">{print_money($_page['monetization_plan']['price'])} / {if $_page['monetization_plan']['period_num'] != '1'}{$_page['monetization_plan']['period_num']}{/if} {__($_page['monetization_plan']['period']|ucfirst)}</span>
				</div>
			{/if}
            <div class="mt10">
				{if $_connection == 'unsubscribe'}
					{if $user->_data['user_id'] == $_page['plan_user_id']}
						<button type="button" class="btn btn-mat btn-danger js_unsubscribe-plan" data-id="{$_page['plan_id']}">
							<i class="fa fa-trash mr5"></i> {__("Unsubscribe")}
						</button>
					{/if}
				{else}
					{if $_page['i_like']}
						<button type="button" class="btn btn-mat btn-primary js_unlike-page" data-id="{$_page['page_id']}">
							<i class="fa fa-heart mr5"></i>{__("Unlike")}
						</button>
					{else}
						<button type="button" class="btn btn-mat btn-primary js_like-page" data-id="{$_page['page_id']}">
							<i class="fa fa-heart mr5"></i>{__("Like")}
						</button>
					{/if}
				{/if}
            </div>
        </div>
    </li>
{elseif $_tpl == "mainpage"}
    <div class="valign justify-content-between feeds-item ele_my_pages">
        <div class="valign pr30 info">
            <a class="avatar mr20" href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">
                <img src="{$_page['page_picture']}" alt="{$_page['page_title']}" class="rounded-circle">
            </a>
            <div class="text">
                <h3>
                    <span class="name js_user-popover" data-uid="{$_page['page_id']}" data-type="page">
                        <a href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}" class="body_color">{$_page['page_title']}</a>
                    </span>
                    {if $_page['page_verified']}
					<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified Page")}'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
                    {/if}
                </h3>
				{if !$_page['monetization_plan']}
					<p class="mb-0">
						<svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="align-text-top"><path d="M8.39062 18.4907V8.33071C8.39062 7.93071 8.51062 7.54071 8.73062 7.21071L11.4606 3.15071C11.8906 2.50071 12.9606 2.04071 13.8706 2.38071C14.8506 2.71071 15.5006 3.81071 15.2906 4.79071L14.7706 8.06071C14.7306 8.36071 14.8106 8.63071 14.9806 8.84071C15.1506 9.03071 15.4006 9.15071 15.6706 9.15071H19.7806C20.5706 9.15071 21.2506 9.47071 21.6506 10.0307C22.0306 10.5707 22.1006 11.2707 21.8506 11.9807L19.3906 19.4707C19.0806 20.7107 17.7306 21.7207 16.3906 21.7207H12.4906C11.8206 21.7207 10.8806 21.4907 10.4506 21.0607L9.17062 20.0707C8.68062 19.7007 8.39062 19.1107 8.39062 18.4907Z"/><path d="M5.21 6.37891H4.18C2.63 6.37891 2 6.97891 2 8.45891V18.5189C2 19.9989 2.63 20.5989 4.18 20.5989H5.21C6.76 20.5989 7.39 19.9989 7.39 18.5189V8.45891C7.39 6.97891 6.76 6.37891 5.21 6.37891Z"/></svg> {$_page['page_likes']} {__("Likes")}
					</p>
				{/if}
            </div>
        </div>
		<div>
			{if $_connection == 'unsubscribe'}
				{if $user->_data['user_id'] == $_page['plan_user_id']}
					<button type="button" class="btn btn-mat btn-danger js_unsubscribe-plan" data-id="{$_page['plan_id']}">
						<i class="fa fa-trash mr5"></i> {__("Unsubscribe")}
					</button>
				{/if}
			{else}
				{if $_page['i_like']}
					<button type="button" class="btn btn-mat btn-primary js_unlike-page" data-id="{$_page['page_id']}">
						<i class="fa fa-heart mr5"></i>{__("Unlike")}
					</button>
				{else}
					<button type="button" class="btn btn-mat btn-primary js_like-page" data-id="{$_page['page_id']}">
						<i class="fa fa-heart mr5"></i>{__("Like")}
					</button>
				{/if}
			{/if}
		</div>
    </div>
{elseif $_tpl == "list"}
    <li class="feeds-item">
        <div class="data-container {if $_small}small{/if}">
            <a class="data-avatar" href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">
                <img src="{$_page['page_picture']}" alt="{$_page['page_title']}">
            </a>
            <div class="data-content">
                <div class="float-right">
                    {if $_page['i_like']}
                        <button type="button" class="btn btn-mat btn-primary js_unlike-page" data-id="{$_page['page_id']}">
                            <i class="fa fa-heart mr5"></i>{__("Unlike")}
                        </button>
                    {else}
                        <button type="button" class="btn btn-mat btn-primary js_like-page" data-id="{$_page['page_id']}">
                            <i class="fa fa-heart mr5"></i>{__("Like")}
                        </button>
                    {/if}
                </div>
                <div>
                    <span class="name js_user-popover" data-uid="{$_page['page_id']}" data-type="page">
                        <a href="{$system['system_url']}/pages/{$_page['page_name']}{if $_search}?ref=qs{/if}">{$_page['page_title']|truncate:30}</a>
                    </span>
                    {if $_page['page_verified']}
                    <span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified Page")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
                    {/if}
                    <div>{$_page['page_likes']} {__("Likes")}</div>
                </div>
            </div>
        </div>
    </li>
{/if}