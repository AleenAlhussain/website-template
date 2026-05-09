<div class="modal-body plr0 ptb0">
    <div class="x-form publisher mini" data-id="{$album['album_id']}">

        <!-- publisher close -->
        <div class="publisher-close">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        </div>
        <!-- publisher close -->

        <!-- publisher-message -->
        <div class="publisher-message no-avatar">
            <img class="publisher-avatar" src="{$user->_data['user_picture']}">
            <textarea dir="auto" class="js_autosize js_mentions" placeholder='{__("What is on your mind? #Hashtag.. @Mention.. Link..")}'></textarea>
            <div class="publisher-emojis" style="display: block;">
                <div class="position-relative">
                    <span class="js_emoji-menu-toggle" data-toggle="tooltip" data-placement="top" title='{__("Insert an emoji")}'>
                        <i class="far fa-smile-wink fa-lg"></i>
                    </span>
                </div>
            </div>
        </div>
        <!-- publisher-message -->

        <!-- post attachments -->
        <div class="publisher-attachments attachments clearfix x-hidden js_attachments-photos"></div>
        <!-- post attachments -->

        <!-- post feelings -->
		<div class="publisher-meta" data-meta="feelings">
            <div id="feelings-menu-toggle" data-init-text='{__("What are you doing?")}'>{__("What are you doing?")}</div>
            <div id="feelings-data" style="display: none">
                <input type="text" class="no-icon" placeholder='{__("What are you doing?")}'>
                <span></span>
            </div>
            <div id="feelings-menu" class="dropdown-menu ele_create_menu ele_scroll feelings-list">
				{foreach $feelings as $feeling}
					<li class="feeling-item js_feelings-add" data-action="{$feeling['action']}" data-placeholder="{__($feeling['placeholder'])}">
						<div class="dropdown-item"><span class="icon"><i class="twa twa-{$feeling['icon']}"></i></span><span class="data">{__($feeling['text'])}</span></div>
					</li>
				{/foreach}
            </div>
            <div id="feelings-types" class="dropdown-menu ele_create_menu ele_scroll feelings-list">
				{foreach $feelings_types as $type}
					<li class="feeling-item js_feelings-type" data-type="{$type['action']}" data-icon="{$type['icon']}">
						<div class="dropdown-item"><span class="icon"><i class="twa twa-{$type['icon']}"></i></span><span class="data">{__($type['text'])}</span></div>
					</li>
				{/foreach}
            </div>
        </div>
        <!-- post feelings -->

        <!-- post location -->
		<div class="publisher-meta" data-meta="location">
			<svg xmlns="http://www.w3.org/2000/svg" class="svg-container" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"> <path stroke="none" d="M0 0h24v24H0z" fill="none"></path> <line x1="18" y1="6" x2="18" y2="6.01"></line> <path d="M18 13l-3.5 -5a4 4 0 1 1 7 0l-3.5 5"></path> <polyline points="10.5 4.75 9 4 3 7 3 20 9 17 15 20 21 17 21 15"></polyline> <line x1="9" y1="4" x2="9" y2="17"></line> <line x1="15" y1="15" x2="15" y2="20"></line></svg>
            <input class="js_geocomplete" type="text" placeholder='{__("Where are you?")}'>
        </div>
        <!-- post location -->

        <!-- publisher-tools-tabs -->
        <div class="publisher-tools-tabs">
            <ul class="row">
                {if $system['photos_enabled']}
                    <li class="col-md-6">
                        <div class="publisher-tools-tab attach js_publisher-tab" data-tab="photos">
							<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" data-handle="publisher" data-multiple="true" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="15" y1="8" x2="15.01" y2="8" /><rect x="4" y="4" width="16" height="16" rx="3" /><path d="M4 15l4 -4a3 5 0 0 1 3 0l5 5" /><path d="M14 14l1 -1a3 5 0 0 1 3 0l2 2" /></svg>{__("Upload Photos")}
                        </div>
                    </li>
                {/if}
                {if $system['activity_posts_enabled']}
                    <li class="col-md-6">
                        <div class="publisher-tools-tab js_publisher-feelings">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <circle cx="12" cy="12" r="9" />  <line x1="9" y1="9" x2="9.01" y2="9" />  <line x1="15" y1="9" x2="15.01" y2="9" />  <path d="M8 13a4 4 0 1 0 8 0m0 0h-8" /></svg>{__("Feelings/Activity")}
                        </div>
                    </li>
                {/if}
                {if $system['geolocation_enabled']}
                    <li class="col-md-6">
                        <div class="publisher-tools-tab js_publisher-tab" data-tab="location">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <line x1="18" y1="6" x2="18" y2="6.01" />  <path d="M18 13l-3.5 -5a4 4 0 1 1 7 0l-3.5 5" />  <polyline points="10.5 4.75 9 4 3 7 3 20 9 17 15 20 21 17 21 15" />  <line x1="9" y1="4" x2="9" y2="17" />  <line x1="15" y1="15" x2="15" y2="20" /></svg>{__("Check In")}
                        </div>
                    </li>
                {/if}
            </ul>
        </div>
        <!-- publisher-tools-tabs -->

        <!-- publisher-footer -->
        <div class="publisher-footer">
            <!-- publisher-buttons -->
            {if $album['user_type'] == 'user' && !$album['in_group'] && !$album['in_event']}
                <!-- privacy -->
                <div class="btn-group" data-toggle="tooltip" data-placement="top" data-value="friends" title='{__("Shared with: Friends")}'>
                    <button type="button" class="btn btn-sm btn-info dropdown-toggle" data-toggle="dropdown" data-display="static">
                        <i class="btn-group-icon fa fa-users mr10"></i><span class="btn-group-text">{__("Friends")}</span>
                    </button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="dropdown-item pointer" data-value="public">
                            <i class="fa fa-globe mr5"></i>{__("Public")}
                        </div>
                        <div class="dropdown-item pointer" data-value="friends">
                            <i class="fa fa-users mr5"></i>{__("Friends")}
                        </div>
                        <div class="dropdown-item pointer" data-value="me">
                            <i class="fa fa-lock mr5"></i>{__("Only Me")}
                        </div>
                    </div>
                </div>
                <!-- privacy -->
            {else}
                <!-- privacy -->
                {if $album['privacy'] == "custom"}
                    <div class="btn-group" data-toggle="tooltip" data-placement="top" data-value="custom" title='{__("Shared with")} {__("Custom People")}'>
                        <button type="button" class="btn btn-sm btn-info">
                            <i class="btn-group-icon fa fa-cog mr10"></i> <span class="btn-group-text">{__("Custom")}</span>
                        </button>
                    </div>
                {elseif $album['privacy'] == "public"}
                    <div class="btn-group" data-toggle="tooltip" data-placement="top" data-value="public" title='{__("Shared with: Public")}'>
                        <button type="button" class="btn btn-sm btn-info">
                            <i class="btn-group-icon fa fa-users mr10"></i> <span class="btn-group-text">{__("Public")}</span>
                        </button>
                    </div>
                {/if}
                <!-- privacy -->
            {/if}
            <button type="button" class="btn btn-sm btn-primary mr5 js_publisher-btn js_publisher-album">{__("Post")}</button>
            <!-- publisher-buttons -->
        </div>
        <!-- publisher-footer -->
    </div>
</div>