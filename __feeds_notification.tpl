{if $_tpl == "with-action"}
	<li class="ele_notifis feeds-action-item {if !$notification['seen']}unread{/if}" data-id="{$notification['notification_id']}">
		<a class="data-container" href="{$notification['url']}" {if $notification['action'] == "mass_notification"}target="_blank" {/if}>
			<div class="valign">
				<div class="ele_notifis_avatar">
					<img src="{$notification['user_picture']}" alt="">
					<div class="icon">
						{if $notification['reaction']}
							<div class="reaction-btn">
								<div class="reaction-btn-icon">
									<div class="inline-emoji no_animation">
										{include file='__reaction_emojis.tpl' _reaction=$notification['reaction']}
									</div>
								</div>
							</div>
						{else}
							<i class="{$notification['icon']}"></i> 
						{/if}
					</div>
				</div>
				<div class="ele_notifis_data">
					<span class="name">{$notification['name']}</span>
					{if !$notification['system_notification'] && $notification['user_verified']}
						<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
					{/if}
					<span>{$notification['message']}</span>
					<div class="time js_moment" data-time="{$notification['time']}">{$notification['time']}</div>
				</div>
			</div>
		</a>
		
		<button data-bs-toggle="tooltip" title='{__("Delete")}' class="btn p-2 btn-rounded btn-light lh-1 text-danger js_notification-deleter" data-id="{$notification['notification_id']}">
			<svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 -960 960 960" width="20" fill="currentColor"><path d="M280-120q-33 0-56.5-23.5T200-200v-520q-17 0-28.5-11.5T160-760q0-17 11.5-28.5T200-800h160q0-17 11.5-28.5T400-840h160q17 0 28.5 11.5T600-800h160q17 0 28.5 11.5T800-760q0 17-11.5 28.5T760-720v520q0 33-23.5 56.5T680-120H280Zm120-160q17 0 28.5-11.5T440-320v-280q0-17-11.5-28.5T400-640q-17 0-28.5 11.5T360-600v280q0 17 11.5 28.5T400-280Zm160 0q17 0 28.5-11.5T600-320v-280q0-17-11.5-28.5T560-640q-17 0-28.5 11.5T520-600v280q0 17 11.5 28.5T560-280Z"/></svg>
        </button>
	</li>
{else}
	<li class="ele_notifis {if !$notification['seen']}unread{/if}" data-id="{$notification['notification_id']}">
		<a class="data-container" href="{$notification['url']}" {if $notification['action'] == "mass_notification"}target="_blank" {/if}>
			<div class="valign">
				<div class="ele_notifis_avatar">
					<img src="{$notification['user_picture']}" alt="">
					<div class="icon">
						{if $notification['reaction']}
							<div class="reaction-btn">
								<div class="reaction-btn-icon">
									<div class="inline-emoji no_animation">
										{include file='__reaction_emojis.tpl' _reaction=$notification['reaction']}
									</div>
								</div>
							</div>
						{else}
							<i class="{$notification['icon']}"></i> 
						{/if}
					</div>
				</div>
				<div class="ele_notifis_data">
					<span class="name">{$notification['name']}</span>
					{if !$notification['system_notification'] && $notification['user_verified']}
						<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
					{/if}
					<span>{$notification['message']}</span>
					<div class="time js_moment" data-time="{$notification['time']}">{$notification['time']}</div>
				</div>
			</div>
		</a>
	</li>
{/if}