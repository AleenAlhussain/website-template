<div class="panel-messages" data-cid="{$conversation['conversation_id']}" data-color="{$conversation['color']}" data-chat-price="{$conversation['chat_price']}" data-call-price="{$conversation['call_price']}">
	<div class="valign justify-content-between plr15 ptb10 bold ele_msg_header">
		<div class="truncate d-inline-flex align-items-center mw-100">
			<span class="d-none chat_navigation"><button type="button" class="btn rounded-circle p-0 border-0 btn-secondary" onclick="$('.ele_msg_user_chat').fadeOut(100);"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z" fill="currentColor"></path></svg></button>&nbsp;&nbsp;</span>
			<div class="truncate d-flex flex-column ele_msg_name">
				{if $conversation['node_id']}
					<a href="{$system['system_url']}/{$conversation['link']}">{$conversation['name']}</a>
				{else}
					{if !$conversation['multiple_recipients']}
						{$conversation['name_html']}
					{else}
						<span title="{$conversation['name_list']}">{$conversation['name']}</span>
					{/if}
				{/if}
				<small class="chat-typing">
					<span class="loading-dots"><span class="js_chat-typing-users"></span> {__("Typing")}</span>
				</small>
			</div>
		</div>
		<div class="ele_msg_btns">
			{if !$conversation['multiple_recipients'] && !$conversation['node_id']}
                {if $system['video_call_enabled']}
                    <button type="button" class="btn rounded-circle p-0 border-0 btn-secondary ml5 js_chat-call-start" data-type="video" data-uid="{$conversation['user_id']}" data-name="{$conversation['name']}" data-picture="{$conversation['picture']}">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="align-text-top"><path d="M21.15 6.17C20.74 5.95 19.88 5.72 18.71 6.54L17.24 7.58C17.13 4.47 15.78 3.25 12.5 3.25H6.5C3.08 3.25 1.75 4.58 1.75 8V16C1.75 18.3 3 20.75 6.5 20.75H12.5C15.78 20.75 17.13 19.53 17.24 16.42L18.71 17.46C19.33 17.9 19.87 18.04 20.3 18.04C20.67 18.04 20.96 17.93 21.15 17.83C21.56 17.62 22.25 17.05 22.25 15.62V8.38C22.25 6.95 21.56 6.38 21.15 6.17ZM11 11.38C9.97 11.38 9.12 10.54 9.12 9.5C9.12 8.46 9.97 7.62 11 7.62C12.03 7.62 12.88 8.46 12.88 9.5C12.88 10.54 12.03 11.38 11 11.38Z"/></svg>
                    </button>
                {/if}
                {if $system['audio_call_enabled']}
                    <button type="button" class="btn rounded-circle p-0 border-0 btn-secondary ml5 js_chat-call-start" data-type="audio" data-uid="{$conversation['user_id']}" data-name="{$conversation['name']}" data-picture="{$conversation['picture']}">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="align-text-top"><path d="M11.05 14.95L9.2 16.8C8.81 17.19 8.19 17.19 7.79 16.81C7.68 16.7 7.57 16.6 7.46 16.49C6.43 15.45 5.5 14.36 4.67 13.22C3.85 12.08 3.19 10.94 2.71 9.81C2.24 8.67 2 7.58 2 6.54C2 5.86 2.12 5.21 2.36 4.61C2.6 4 2.98 3.44 3.51 2.94C4.15 2.31 4.85 2 5.59 2C5.87 2 6.15 2.06 6.4 2.18C6.66 2.3 6.89 2.48 7.07 2.74L9.39 6.01C9.57 6.26 9.7 6.49 9.79 6.71C9.88 6.92 9.93 7.13 9.93 7.32C9.93 7.56 9.86 7.8 9.72 8.03C9.59 8.26 9.4 8.5 9.16 8.74L8.4 9.53C8.29 9.64 8.24 9.77 8.24 9.93C8.24 10.01 8.25 10.08 8.27 10.16C8.3 10.24 8.33 10.3 8.35 10.36C8.53 10.69 8.84 11.12 9.28 11.64C9.73 12.16 10.21 12.69 10.73 13.22C10.83 13.32 10.94 13.42 11.04 13.52C11.44 13.91 11.45 14.55 11.05 14.95Z"/><path d="M21.9696 18.3291C21.9696 18.6091 21.9196 18.8991 21.8196 19.1791C21.7896 19.2591 21.7596 19.3391 21.7196 19.4191C21.5496 19.7791 21.3296 20.1191 21.0396 20.4391C20.5496 20.9791 20.0096 21.3691 19.3996 21.6191C19.3896 21.6191 19.3796 21.6291 19.3696 21.6291C18.7796 21.8691 18.1396 21.9991 17.4496 21.9991C16.4296 21.9991 15.3396 21.7591 14.1896 21.2691C13.0396 20.7791 11.8896 20.1191 10.7496 19.2891C10.3596 18.9991 9.96961 18.7091 9.59961 18.3991L12.8696 15.1291C13.1496 15.3391 13.3996 15.4991 13.6096 15.6091C13.6596 15.6291 13.7196 15.6591 13.7896 15.6891C13.8696 15.7191 13.9496 15.7291 14.0396 15.7291C14.2096 15.7291 14.3396 15.6691 14.4496 15.5591L15.2096 14.8091C15.4596 14.5591 15.6996 14.3691 15.9296 14.2491C16.1596 14.1091 16.3896 14.0391 16.6396 14.0391C16.8296 14.0391 17.0296 14.0791 17.2496 14.1691C17.4696 14.2591 17.6996 14.3891 17.9496 14.5591L21.2596 16.9091C21.5196 17.0891 21.6996 17.2991 21.8096 17.5491C21.9096 17.7991 21.9696 18.0491 21.9696 18.3291Z"/></svg>
                    </button>
                {/if}
            {/if}
			{if !$conversation['node_id']}
				<button type="button" class="btn rounded-circle p-0 border-0 btn-danger ml5 js_delete-conversation" title='{__("Delete")}'>
					<svg width="19" height="19" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="align-text-top"><path d="M21.0697 5.23C19.4597 5.07 17.8497 4.95 16.2297 4.86V4.85L16.0097 3.55C15.8597 2.63 15.6397 1.25 13.2997 1.25H10.6797C8.34967 1.25 8.12967 2.57 7.96967 3.54L7.75967 4.82C6.82967 4.88 5.89967 4.94 4.96967 5.03L2.92967 5.23C2.50967 5.27 2.20967 5.64 2.24967 6.05C2.28967 6.46 2.64967 6.76 3.06967 6.72L5.10967 6.52C10.3497 6 15.6297 6.2 20.9297 6.73C20.9597 6.73 20.9797 6.73 21.0097 6.73C21.3897 6.73 21.7197 6.44 21.7597 6.05C21.7897 5.64 21.4897 5.27 21.0697 5.23Z"/><path d="M19.2297 8.14C18.9897 7.89 18.6597 7.75 18.3197 7.75H5.67975C5.33975 7.75 4.99975 7.89 4.76975 8.14C4.53975 8.39 4.40975 8.73 4.42975 9.08L5.04975 19.34C5.15975 20.86 5.29975 22.76 8.78975 22.76H15.2097C18.6997 22.76 18.8398 20.87 18.9497 19.34L19.5697 9.09C19.5897 8.73 19.4597 8.39 19.2297 8.14ZM13.6597 17.75H10.3297C9.91975 17.75 9.57975 17.41 9.57975 17C9.57975 16.59 9.91975 16.25 10.3297 16.25H13.6597C14.0697 16.25 14.4097 16.59 14.4097 17C14.4097 17.41 14.0697 17.75 13.6597 17.75ZM14.4997 13.75H9.49975C9.08975 13.75 8.74975 13.41 8.74975 13C8.74975 12.59 9.08975 12.25 9.49975 12.25H14.4997C14.9097 12.25 15.2497 12.59 15.2497 13C15.2497 13.41 14.9097 13.75 14.4997 13.75Z"/></svg>
				</button>
			{else}
				<button type="button" class="btn rounded-circle p-0 border-0 btn-danger ml5 js_leave-conversation" title='{__("Leave")}'>
					<svg width="19" height="19" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="align-text-top"><path d="M7.87828 12.07C7.87828 11.66 8.21828 11.32 8.62828 11.32H14.1083V2.86C14.0983 2.38 13.7183 2 13.2383 2C7.34828 2 3.23828 6.11 3.23828 12C3.23828 17.89 7.34828 22 13.2383 22C13.7083 22 14.0983 21.62 14.0983 21.14V12.81H8.62828C8.20828 12.82 7.87828 12.48 7.87828 12.07Z"/><path d="M20.5416 11.5402L17.7016 8.69016C17.4116 8.40016 16.9316 8.40016 16.6416 8.69016C16.3516 8.98016 16.3516 9.46016 16.6416 9.75016L18.2016 11.3102H14.1016V12.8102H18.1916L16.6316 14.3702C16.3416 14.6602 16.3416 15.1402 16.6316 15.4302C16.7816 15.5802 16.9716 15.6502 17.1616 15.6502C17.3516 15.6502 17.5416 15.5802 17.6916 15.4302L20.5316 12.5802C20.8316 12.3002 20.8316 11.8302 20.5416 11.5402Z"/></svg>
				</button>
			{/if}
            
		</div>
	</div>

    <div class="position-relative ele_msg_container">
        <div class="chat-conversations js_scroller" data-slimScroll-height="420px" data-slimScroll-start="bottom">
            {include file='ajax.chat.conversation.messages.tpl'}
        </div>
		
        <div class="chat-typing">
            <div class="typing_loader_prnt"><div class="d-none js_chat-typing-users"></div><span></span><span></span><span></span></div>
        </div>
		
		<div class="chat-voice-notes">
			<div class="voice-recording-wrapper" data-handle="chat">
				<!-- processing message -->
				<div class="x-hidden js_voice-processing-message">
					<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="#ef4c5d" d="M8 18c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm4 4c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1s-1 .45-1 1v18c0 .55.45 1 1 1zm-8-8c.55 0 1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1v2c0 .55.45 1 1 1zm12 4c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm3-7v2c0 .55.45 1 1 1s1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1z"></path></svg> {__("Processing")} {__("Voice Notes")}<span class="loading-dots"></span>
				</div>
				<!-- processing message -->

				<!-- success message -->
				<div class="x-hidden js_voice-success-message">
					<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Voice note recorded successfully")}
					<div class="float-right">
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
		
        <div class="chat-attachments attachments clearfix x-hidden">
            <ul>
                <li class="loading">
                    <div class="progress x-progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
                </li>
            </ul>
        </div>
		
        <div class="x-form chat-form">
			<div class="valign position-relative ele_write_message">
				<div class="border-0 p-0 position-relative chat-form-message">
					<textarea class="border-0 w-100 js_autosize js_post-message ele_msg_write_tarea" dir="auto" rows="1" placeholder='{__("Write a message")}'></textarea>
					<button class="btn position-absolute x-form-tools-emoji js_emoji-menu-toggle">
						<svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 24 24"><path fill="currentColor" d="M12,22c5.514,0,10-4.486,10-10S17.514,2,12,2S2,6.486,2,12S6.486,22,12,22z M15.493,9c0.824,0,1.493,0.669,1.493,1.493 s-0.669,1.493-1.493,1.493S14,11.317,14,10.493S14.669,9,15.493,9z M11.192,15.919c0.529,0.107,1.085,0.107,1.616,0 c0.253-0.052,0.505-0.131,0.75-0.233c0.234-0.1,0.464-0.224,0.679-0.368c0.208-0.142,0.407-0.306,0.591-0.489 c0.183-0.182,0.347-0.381,0.489-0.592l1.658,1.117c-0.215,0.319-0.462,0.619-0.734,0.891c-0.271,0.271-0.57,0.518-0.885,0.73 c-0.322,0.218-0.665,0.403-1.021,0.554c-0.368,0.154-0.746,0.272-1.128,0.35C12.811,17.959,12.404,18,12,18 s-0.811-0.041-1.207-0.122c-0.383-0.077-0.761-0.195-1.127-0.349c-0.357-0.151-0.7-0.337-1.021-0.554 c-0.316-0.214-0.615-0.46-0.888-0.733c-0.271-0.27-0.519-0.569-0.733-0.889l1.658-1.117c0.143,0.211,0.307,0.41,0.488,0.59 c0.185,0.186,0.384,0.35,0.594,0.492c0.213,0.144,0.442,0.268,0.679,0.368C10.687,15.788,10.938,15.867,11.192,15.919z M8.5,9 C9.328,9,10,9.672,10,10.5S9.328,12,8.5,12S7,11.328,7,10.5S7.672,9,8.5,9z"></path></svg>
					</button>
				</div>
				{if $system['chat_photos_enabled']}
					<button class="btn btn-mat p-0 x-form-tools-attach">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" data-handle="chat"><path d="M2.58078 19.0112L2.56078 19.0312C2.29078 18.4413 2.12078 17.7713 2.05078 17.0312C2.12078 17.7613 2.31078 18.4212 2.58078 19.0112Z"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z"/><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.19C2 17.28 2.19 18.23 2.56 19.03C3.42 20.93 5.26 22 7.81 22H16.19C19.83 22 22 19.83 22 16.19V13.9V7.81C22 4.17 19.83 2 16.19 2ZM20.37 12.5C19.59 11.83 18.33 11.83 17.55 12.5L13.39 16.07C12.61 16.74 11.35 16.74 10.57 16.07L10.23 15.79C9.52 15.17 8.39 15.11 7.59 15.65L3.85 18.16C3.63 17.6 3.5 16.95 3.5 16.19V7.81C3.5 4.99 4.99 3.5 7.81 3.5H16.19C19.01 3.5 20.5 4.99 20.5 7.81V12.61L20.37 12.5Z"/></svg>
					</button>
				{/if}
				{if $system['voice_notes_chat_enabled']}
					<button class="btn btn-mat p-0 x-form-tools-voice js_chat-voice-notes-toggle ele_msg_record hide_ele_write_btn">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path d="M19.1197 9.11938C18.7297 9.11938 18.4197 9.42938 18.4197 9.81938V11.3994C18.4197 14.9394 15.5397 17.8194 11.9997 17.8194C8.45969 17.8194 5.57969 14.9394 5.57969 11.3994V9.80938C5.57969 9.41938 5.26969 9.10938 4.87969 9.10938C4.48969 9.10938 4.17969 9.41938 4.17969 9.80938V11.3894C4.17969 15.4594 7.30969 18.8094 11.2997 19.1694V21.2994C11.2997 21.6894 11.6097 21.9994 11.9997 21.9994C12.3897 21.9994 12.6997 21.6894 12.6997 21.2994V19.1694C16.6797 18.8194 19.8197 15.4594 19.8197 11.3894V9.80938C19.8097 9.42938 19.4997 9.11938 19.1197 9.11938Z"/><path d="M11.9981 2C9.55813 2 7.57812 3.98 7.57812 6.42V11.54C7.57812 13.98 9.55813 15.96 11.9981 15.96C14.4381 15.96 16.4181 13.98 16.4181 11.54V6.42C16.4181 3.98 14.4381 2 11.9981 2ZM13.3081 8.95C13.2381 9.21 13.0081 9.38 12.7481 9.38C12.6981 9.38 12.6481 9.37 12.5981 9.36C12.2081 9.25 11.7981 9.25 11.4081 9.36C11.0881 9.45 10.7781 9.26 10.6981 8.95C10.6081 8.64 10.7981 8.32 11.1081 8.24C11.6981 8.08 12.3181 8.08 12.9081 8.24C13.2081 8.32 13.3881 8.64 13.3081 8.95ZM13.8381 7.01C13.7481 7.25 13.5281 7.39 13.2881 7.39C13.2181 7.39 13.1581 7.38 13.0881 7.36C12.3881 7.1 11.6081 7.1 10.9081 7.36C10.6081 7.47 10.2681 7.31 10.1581 7.01C10.0481 6.71 10.2081 6.37 10.5081 6.27C11.4681 5.92 12.5281 5.92 13.4881 6.27C13.7881 6.38 13.9481 6.71 13.8381 7.01Z"/></svg>
					</button>
				{/if}
				{if !$conversation['node_id']}
					<span class="dropup hide_ele_write_btn">
						<button class="btn btn-mat p-0 x-form-tools-colors js_chat-colors-menu-toggle js_chat-color-me">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path d="M17.0408 10.6406L9.69083 3.29062L8.82083 2.42063C8.53083 2.13063 8.05083 2.13063 7.76083 2.42063C7.47083 2.71062 7.47083 3.19062 7.76083 3.48062L8.63083 4.35062L3.00083 9.98062C2.36083 10.6206 2.02083 11.2706 2.00083 11.9206C1.98083 12.6106 2.32083 13.3006 3.00083 13.9906L7.01083 18.0006C8.35083 19.3306 9.69083 19.3306 11.0208 18.0006L17.0408 11.9806C17.2408 11.7806 17.3308 11.5106 17.3108 11.2506C17.3008 11.0306 17.2008 10.8006 17.0408 10.6406Z"/><path d="M16 22.75H3C2.59 22.75 2.25 22.41 2.25 22C2.25 21.59 2.59 21.25 3 21.25H16C16.41 21.25 16.75 21.59 16.75 22C16.75 22.41 16.41 22.75 16 22.75Z"/><path d="M19.35 14.7803C19.09 14.5003 18.61 14.5003 18.35 14.7803C18.04 15.1203 16.5 16.8503 16.5 18.1703C16.5 19.4703 17.55 20.5203 18.85 20.5203C20.15 20.5203 21.2 19.4703 21.2 18.1703C21.2 16.8603 19.66 15.1203 19.35 14.7803Z"/></svg>
						</button>
					</span>
				{/if}
				<li class="btn btn-mat btn-primary x-form-tools-post d-inline-flex d-md-none justify-content-center js_post-message">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="d-none"><path d="M16.1391 2.95907L7.10914 5.95907C1.03914 7.98907 1.03914 11.2991 7.10914 13.3191L9.78914 14.2091L10.6791 16.8891C12.6991 22.9591 16.0191 22.9591 18.0391 16.8891L21.0491 7.86907C22.3891 3.81907 20.1891 1.60907 16.1391 2.95907ZM16.4591 8.33907L12.6591 12.1591C12.5091 12.3091 12.3191 12.3791 12.1291 12.3791C11.9391 12.3791 11.7491 12.3091 11.5991 12.1591C11.3091 11.8691 11.3091 11.3891 11.5991 11.0991L15.3991 7.27907C15.6891 6.98907 16.1691 6.98907 16.4591 7.27907C16.7491 7.56907 16.7491 8.04907 16.4591 8.33907Z"/></svg><span>{__("Send")}</span>
				</li>
			</div>
        </div>
    </div>
</div>