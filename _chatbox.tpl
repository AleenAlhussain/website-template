<div class="ele_content pt-3 pb-1 px-0 mb15 panel-messages" data-cid="{$_node['chatbox_conversation']['conversation_id']}">
	<div class="valign ele_page_hdng border-0 py-0 px-3 mb15">
		<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 -960 960 960" width="16"><path fill="currentColor" d="M280-240q-17 0-28.5-11.5T240-280v-80h520v-360h80q17 0 28.5 11.5T880-680v503q0 27-24.5 37.5T812-148l-92-92H280Zm-40-200-92 92q-19 19-43.5 8.5T80-377v-463q0-17 11.5-28.5T120-880h520q17 0 28.5 11.5T680-840v360q0 17-11.5 28.5T640-440H240Z"/></svg> {__("Chatbox")}
	</div>

    {if ($_node_type == "group" && $_node['i_joined'] == "approved") || ($_node_type == "event" && ($event['i_joined']['is_going'] || $event['i_joined']['is_interested']))}
		<div class="chat-conversations js_scroller py-0 px-3" data-slimScroll-height="350px" data-slimScroll-start="bottom">
			{include file='ajax.chat.conversation.messages.tpl' conversation=$_node['chatbox_conversation']}
		</div>
		
		<div class="chat-typing px-3">
			<div class="typing_loader_prnt"><div class="d-none js_chat-typing-users"></div><span></span><span></span><span></span></div>
		</div>
		
		<div class="chat-voice-notes px-3">
			<div class="voice-recording-wrapper" data-handle="chat">
				<!-- processing message -->
				<div class="x-hidden js_voice-processing-message">
					<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="#ef4c5d" d="M8 18c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm4 4c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1s-1 .45-1 1v18c0 .55.45 1 1 1zm-8-8c.55 0 1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1v2c0 .55.45 1 1 1zm12 4c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm3-7v2c0 .55.45 1 1 1s1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1z"></path></svg> {__("Processing")} {__("Voice Notes")}<span class="loading-dots"></span>
				</div>
				<!-- processing message -->

				<!-- success message -->
				<div class="x-hidden js_voice-success-message">
					<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Voice note recorded successfully")}
					<div class="mt-1">
						<button type="button" class="btn btn-mat btn-voice-clear js_voice-remove">{__("Clear")}</button>
					</div>
				</div>
				<!-- success message -->

				<!-- start recording -->
				<div class="btn btn-mat btn-voice-start js_voice-start">
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3zm5.91-3c-.49 0-.9.36-.98.85C16.52 14.2 14.47 16 12 16s-4.52-1.8-4.93-4.15c-.08-.49-.49-.85-.98-.85-.61 0-1.09.54-1 1.14.49 3 2.89 5.35 5.91 5.78V20c0 .55.45 1 1 1s1-.45 1-1v-2.08c3.02-.43 5.42-2.78 5.91-5.78.1-.6-.39-1.14-1-1.14z"></path></svg> {__("Record")} {__("Voice Notes")}
				</div>
				<!-- start recording -->

				<!-- stop recording -->
				<div class="btn btn-mat btn-voice-stop js_voice-stop" style="display: none">
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M8 6h8c1.1 0 2 .9 2 2v8c0 1.1-.9 2-2 2H8c-1.1 0-2-.9-2-2V8c0-1.1.9-2 2-2z"></path></svg> {__("Recording")} <span class="js_voice-timer">00:00</span>
				</div>
				<!-- stop recording -->
			</div>
		</div>
		
		<div class="chat-attachments attachments px-3 clearfix x-hidden">
			<ul>
				<li class="loading">
					<div class="progress x-progress"><div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div></div>
				</li>
			</ul>
		</div>
		
		<div class="x-form chat-form bg-transparent">
			<div class="chat-form-message p-0">
				<textarea class="js_autosize js_post-message p-3" dir="auto" rows="1" placeholder='{__("Write a message")}'></textarea>
			</div>
			<div class="valign justify-content-between plr10 pb-2">
				<ul class="x-form-tools p-0 clearfix">
					{if $system['chat_photos_enabled']}
						<li class="x-form-tools-attach align-middle">
							<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" data-handle="chat"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="15" y1="8" x2="15.01" y2="8"></line><rect x="4" y="4" width="16" height="16" rx="3"></rect><path d="M4 15l4 -4a3 5 0 0 1 3 0l5 5"></path><path d="M14 14l1 -1a3 5 0 0 1 3 0l2 2"></path></svg>
						</li>
					{/if}
					{if $system['voice_notes_chat_enabled']}
						<li class="x-form-tools-voice align-middle js_chat-voice-notes-toggle">
							<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="9" y="2" width="6" height="11" rx="3"></rect><path d="M5 10a7 7 0 0 0 14 0"></path><line x1="8" y1="21" x2="16" y2="21"></line><line x1="12" y1="17" x2="12" y2="21"></line></svg>
						</li>
					{/if}
					<li class="x-form-tools-emoji align-middle js_emoji-menu-toggle">
						<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="9" y1="10" x2="9.01" y2="10"></line><line x1="15" y1="10" x2="15.01" y2="10"></line><path d="M9.5 15a3.5 3.5 0 0 0 5 0"></path></svg>
					</li>
				</ul>
				<ul class="x-form-tools p-0 clearfix d-md-none">
					<li class="x-form-tools-post align-middle js_post-message">
						<button type="button" class="btn btn-sm btn-mat btn-primary shadow-none">{__("Send")}</button>
					</li>
				</ul>
			</div>
		</div>
	{else}
		<div class="text-center empty_state">
			<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.5" d="M17.98 10.79V14.79C17.98 15.05 17.97 15.3 17.94 15.54C17.71 18.24 16.12 19.58 13.19 19.58H12.79C12.54 19.58 12.3 19.7 12.15 19.9L10.95 21.5C10.42 22.21 9.56 22.21 9.03 21.5L7.82999 19.9C7.69999 19.73 7.41 19.58 7.19 19.58H6.79001C3.60001 19.58 2 18.79 2 14.79V10.79C2 7.86001 3.35001 6.27001 6.04001 6.04001C6.28001 6.01001 6.53001 6 6.79001 6H13.19C16.38 6 17.98 7.60001 17.98 10.79Z"></path><path d="M9.99023 14C9.43023 14 8.99023 13.55 8.99023 13C8.99023 12.45 9.44023 12 9.99023 12C10.5402 12 10.9902 12.45 10.9902 13C10.9902 13.55 10.5502 14 9.99023 14Z"></path><path d="M13.4902 14C12.9302 14 12.4902 13.55 12.4902 13C12.4902 12.45 12.9402 12 13.4902 12C14.0402 12 14.4902 12.45 14.4902 13C14.4902 13.55 14.0402 14 13.4902 14Z"></path><path d="M6.5 14C5.94 14 5.5 13.55 5.5 13C5.5 12.45 5.95 12 6.5 12C7.05 12 7.5 12.45 7.5 13C7.5 13.55 7.05 14 6.5 14Z"></path><path d="M21.9791 6.79001V10.79C21.9791 13.73 20.6291 15.31 17.9391 15.54C17.9691 15.3 17.9791 15.05 17.9791 14.79V10.79C17.9791 7.60001 16.3791 6 13.1891 6H6.78906C6.52906 6 6.27906 6.01001 6.03906 6.04001C6.26906 3.35001 7.85906 2 10.7891 2H17.1891C20.3791 2 21.9791 3.60001 21.9791 6.79001Z"></path></svg>{__("Join the")} {__($_node_type)} {__("to join the chatbox")}
		</div>
	{/if}
</div>