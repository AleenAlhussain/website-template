<li>
    <div class="conversation clearfix valign position-relative w-100 {if (isset($is_me) && $is_me) || $message['user_id'] == $user->_data['user_id']}right{/if}" id="{$message['message_id']}">
        {if (!isset($is_me) || !$is_me) && $message['user_id'] != $user->_data['user_id']}
            <div class="conversation-user">
                <a href="{$system['system_url']}/{$message['user_name']}">
                    <img class="w-100 h-100" src="{$message['user_picture']}" alt="">
                </a>
            </div>
        {/if}
        <div class="conversation-body {if $system['chat_translation_enabled']}js_chat-translator{/if}">
            <!-- message text -->
            {if !is_empty($message['message'])}
				<div class="text {if (isset($is_me) && $is_me) || $message['user_id'] == $user->_data['user_id']}js_chat-color-me{/if}">{$message['message']}</div>
			{/if}
			
			{if $message['image']}
				<span class="text-link js_lightbox-nodata {if $message['message'] != ''}mt5{/if}" data-image="{$system['system_uploads']}/{$message['image']}">
					<img alt="" class="img-fluid" src="{$system['system_uploads']}/{$message['image']}">
				</span>
			{/if}
			
			{if $message['video']}
				<!-- video -->
				<div class="{if $message['message'] != ''}mt5{/if}">
					<video class="img-fluid video-wrapper" src="{$system['system_uploads']}/{$message['video']}" controls></video>
				</div>
				<!-- video -->
			{/if}
			
			{if $message['voice_note']}
				<div class="{if $message['message'] != ''}mt5{/if}">
					<audio class="js_audio" id="audio-{$message['message_id']}" controls preload="auto">
						<source src="{$system['system_uploads']}/{$message['voice_note']}" type="audio/mpeg">
						<source src="{$system['system_uploads']}/{$message['voice_note']}" type="audio/mp3">
						{__("Your browser does not support HTML5 audio")}
					</audio>
				</div>
			{/if}
            <!-- message text -->
			
			{if $message['post']}
				<!-- product -->
				<div class="text {if (isset($is_me) && $is_me) || $message['user_id'] == $user->_data['user_id']}js_chat-color-me{/if}">
					<div class="product">
						<a href="{$system['system_url']}/posts/{$message['post']['post_id']}" class="product-image">
							<img src="{$system['system_uploads']}/{$message['post']['photos'][0]['source']}" class="w-100 h-100">
						</a>
						<div class="pt10 product-info">
							<h2 class="truncate">
								<a href="{$system['system_url']}/posts/{$message['post']['post_id']}" class="body_color">{$message['post']['product']['name']}</a>
							</h2>
							<div class="truncate price">
								{if $message['post']['product']['price'] > 0}
									{$message['post']['product']['price_formatted']}
								{else}
									{__("Free")}
								{/if}
							</div>
							<div class="truncate ele_post_prod_shead">
								{if $message['post']['product']['is_digital']}
									{__("Digital")}<span class="font-weight-bold ml5 mr5">·</span>
								{/if}
								{if $message['post']['product']['status'] == "new"}
									{__("New")}
								{else}
									{__("Used")}
								{/if}

								{if $message['post']['product']['available']}
									{if $message['post']['product']['quantity'] > 0}
										<span class="font-weight-bold ml5 mr5">·</span>{__("In stock")}
									{else}
										<span class="font-weight-bold ml5 mr5">·</span>{__("Out of stock")}
									{/if}
								{else}
									<span class="font-weight-bold ml5 mr5">·</span>{__("SOLD")}
								{/if}
							</div>
						</div>
					</div>
				</div>
				<!-- product -->
			{/if}

            <!-- message time -->
            <div class="time js_moment" data-time="{$message['time']}">
                {$message['time']}
            </div>
            <!-- message time -->
			
			{if $system['chat_translation_enabled']}
				<!-- message translation -->
				<div class="translate">
					{__("Tap to translate")}
				</div>
				<!-- message translation -->
			{/if}

            <!-- seen status -->
            {if $conversation['last_seen_message_id'] == $message['message_id']}
                <div class="seen">
                    {__("Seen by")} <span class="js_seen-name-list">{$conversation['seen_name_list']}</span>
                </div>
            {/if}
            <!-- seen status -->
        </div>
    </div>
</li>