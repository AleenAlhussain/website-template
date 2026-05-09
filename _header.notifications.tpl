<div class="dropdown js_live-notifications">
	<span class="counter {if $user->_data['user_live_notifications_counter'] == 0}x-hidden{/if}">{$user->_data['user_live_notifications_counter']}</span>
    <button class="ele_hdr_droptoggle noti_ddown" data-toggle="dropdown" data-display="static" role="button">
        <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.5" d="M20.3992 16.3298C20.1192 17.0798 19.5292 17.6498 18.7592 17.9098C17.6792 18.2698 16.5692 18.5398 15.4492 18.7298C15.3392 18.7498 15.2292 18.7698 15.1192 18.7798C14.9392 18.8098 14.7592 18.8298 14.5792 18.8498C14.3592 18.8798 14.1292 18.8998 13.8992 18.9198C13.2692 18.9698 12.6492 18.9998 12.0192 18.9998C11.3792 18.9998 10.7392 18.9698 10.1092 18.9098C9.83923 18.8898 9.57923 18.8598 9.31923 18.8198C9.16923 18.7998 9.01923 18.7798 8.87923 18.7598C8.76923 18.7398 8.65923 18.7298 8.54923 18.7098C7.43923 18.5298 6.33923 18.2598 5.26923 17.8998C4.46923 17.6298 3.85923 17.0598 3.58923 16.3298C3.31923 15.6098 3.41923 14.7698 3.84923 14.0498L4.97923 12.1698C5.21923 11.7598 5.43923 10.9698 5.43923 10.4898V8.6298C5.43923 4.9998 8.38923 2.0498 12.0192 2.0498C15.6392 2.0498 18.5892 4.9998 18.5892 8.6298V10.4898C18.5892 10.9698 18.8092 11.7598 19.0592 12.1698L20.1892 14.0498C20.5992 14.7498 20.6792 15.5698 20.3992 16.3298Z"/><path d="M12.0002 10.7601C11.5802 10.7601 11.2402 10.4201 11.2402 10.0001V6.90014C11.2402 6.48014 11.5802 6.14014 12.0002 6.14014C12.4202 6.14014 12.7602 6.48014 12.7602 6.90014V10.0001C12.7502 10.4201 12.4102 10.7601 12.0002 10.7601Z"/><path d="M14.8297 20.01C14.4097 21.17 13.2997 22 11.9997 22C11.2097 22 10.4297 21.68 9.87969 21.11C9.55969 20.81 9.31969 20.41 9.17969 20C9.30969 20.02 9.43969 20.03 9.57969 20.05C9.80969 20.08 10.0497 20.11 10.2897 20.13C10.8597 20.18 11.4397 20.21 12.0197 20.21C12.5897 20.21 13.1597 20.18 13.7197 20.13C13.9297 20.11 14.1397 20.1 14.3397 20.07C14.4997 20.05 14.6597 20.03 14.8297 20.01Z"/></svg>
    </button>
    <div class="dropdown-menu dropdown-menu-right dropdown-widget js_dropdown-keepopen ele_scroll">
        <div class="valign dropdown-widget-header">
            <span class="title">{__("Notifications")}</span>
            <div class="d-inline-flex align-items-center">
				<label class="ele_noti_sound" for="notifications_sound" title="{__('Sound')}" data-toggle="tooltip">
					<input type="checkbox" class="js_notifications-sound-toggle" name="notifications_sound" id="notifications_sound" {if $user->_data['notifications_sound']}checked{/if}>
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M2 14.959V9.04C2 8.466 2.448 8 3 8h3.586a.98.98 0 0 0 .707-.305l3-3.388c.63-.656 1.707-.191 1.707.736v13.914c0 .934-1.09 1.395-1.716.726l-2.99-3.369A.98.98 0 0 0 6.578 16H3c-.552 0-1-.466-1-1.041z"/><path d="M16 8.5c1.333 1.778 1.333 5.222 0 7"/><path d="M19 5c3.988 3.808 4.012 10.217 0 14"/></svg>
					<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M22 15l-6-6m6 0l-6 6"/><path d="M2 14.959V9.04C2 8.466 2.448 8 3 8h3.586a.98.98 0 0 0 .707-.305l3-3.388c.63-.656 1.707-.191 1.707.736v13.914c0 .934-1.09 1.395-1.716.726l-2.99-3.369A.98.98 0 0 0 6.578 16H3c-.552 0-1-.466-1-1.041z"/></svg>
				</label>
				<button class="btn bg-transparent ml15 d-sm-none" onclick='$(".noti_ddown").dropdown("toggle");'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="width: 28px;height: auto;"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M18 6l-12 12"></path><path d="M6 6l12 12"></path></svg></button>
			</div>
        </div>
        <div class="dropdown-widget-body custom-scrollbar">
            <div class="js_scroller">
                {if $user->_data['notifications']}
                    <ul>
                        {foreach $user->_data['notifications'] as $notification}
                        {include file='__feeds_notification.tpl'}
                        {/foreach}
                    </ul>
                {else}
                    <p class="text-center text-muted empty_state">
                        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><path d="m416 512h-320c-53.023438 0-96-42.976562-96-96v-320c0-53.023438 42.976562-96 96-96h320c53.023438 0 96 42.976562 96 96v320c0 53.023438-42.976562 96-96 96zm0 0" fill="#e3f8fa"/><path d="m245.328125 384c19.3125 0 35.472656-13.761719 39.183594-32h-78.382813c3.726563 18.238281 19.886719 32 39.199219 32zm0 0" fill="#8ce1eb"/><path d="m320.128906 256c-.050781 0-.082031 0-.128906 0-41.167969 0-74.671875-33.488281-74.671875-74.671875 0-11.3125 2.609375-22.015625 7.136719-31.648437-2.351563-.222657-4.722656-.367188-7.136719-.367188-41.230469 0-74.671875 33.421875-74.671875 74.671875v29.742187c0 21.105469-9.25 41.027344-25.472656 54.753907-5.40625 4.625-7.808594 11.984375-5.871094 19.152343 2.289062 8.367188 10.527344 13.695313 19.199219 13.695313h173.601562c9.085938 0 17.664063-5.886719 19.503907-14.785156 1.421874-6.878907-1.023438-13.773438-6.371094-18.253907-15.519532-13.023437-24.476563-32.128906-25.117188-52.289062zm0 0" fill="#26c6da"/><path d="m373.328125 181.328125c0 29.453125-23.875 53.328125-53.328125 53.328125s-53.328125-23.875-53.328125-53.328125 23.875-53.328125 53.328125-53.328125 53.328125 23.875 53.328125 53.328125zm0 0" fill="#8ce1eb"/></svg> {__("No notifications")}
                    </p>
                {/if}
            </div>
        </div>
        <a class="dropdown-widget-footer" href="{$system['system_url']}/notifications">{__("See All")}</a>
    </div>
</div>