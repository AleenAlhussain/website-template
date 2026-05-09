{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<style>
	body, .main-wrapper {
		padding: 0 !important;
	}
	.main-header {
		display: none;
	}
</style>
<div class="w-100 h-100 overflow-hidden">
    <div class="ele_messages">

        <!-- threads -->
        <div class="ele_msg_user_list">
			<div class="valign justify-content-between plr15 ptb10 ele_msg_header">
				<div class="dropdown">
					<button type="button" class="btn rounded-circle p-0 border-0" data-toggle="dropdown" role="button" aria-expanded="false">
						<img src="{$user->_data['user_picture']}" class="w-100 h-100 rounded-circle">
					</button>
					<ul class="dropdown-menu ele_create_menu" role="menu">
						<li>
							<a href="{$system['system_url']}">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M21 20a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.49a1 1 0 0 1 .386-.79l8-6.222a1 1 0 0 1 1.228 0l8 6.222a1 1 0 0 1 .386.79V20zm-10-7v6h2v-6h-2z2z"></path><path fill="currentColor" d="M13 19h6V9.978l-7-5.444-7 5.444V19h6v-6h2v6zm8 1a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9.49a1 1 0 0 1 .386-.79l8-6.222a1 1 0 0 1 1.228 0l8 6.222a1 1 0 0 1 .386.79V20z"></path></svg> {__("Home")}
							</a>
						</li>
						<li>
							<a class="dropdown-item" href="{$system['system_url']}/signout">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm5-6l5-4-5-4v3H9v2h8v3z"></path><path fill="currentColor" d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2a9.985 9.985 0 0 1 8 4h-2.71a8 8 0 1 0 .001 12h2.71A9.985 9.985 0 0 1 12 22zm7-6v-3h-8v-2h8V8l5 4-5 4z"></path></svg> {__("Log Out")}
							</a>
						</li>
					</ul>
				</div>
				<h2>{__("Messenger")}</h2>
				<a type="button" class="btn btn-secondary rounded-circle p-0 border-0 js_chat-new" href="{$system['system_url']}/messages/new">
					<svg width="22" height="22" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M12 2.25C6.61522 2.25 2.25 6.61522 2.25 12C2.25 13.2061 2.54104 14.3862 2.89482 15.3809C3.1597 16.1257 3.35199 16.6666 3.4822 17.0745C3.61715 17.4972 3.66179 17.7081 3.66858 17.816C3.68255 18.0383 3.68079 18.1455 3.66968 18.2352C3.65857 18.325 3.63414 18.4294 3.56638 18.6416C3.529 18.7587 3.45516 18.9159 3.29509 19.1805C3.135 19.4451 2.91394 19.777 2.60092 20.2465L2.37596 20.584C2.22254 20.8141 2.20823 21.11 2.33875 21.3539C2.46926 21.5978 2.7234 21.75 3 21.75H12C17.3848 21.75 21.75 17.3848 21.75 12C21.75 6.61522 17.3848 2.25 12 2.25ZM12 8.25C12.4142 8.25 12.75 8.58579 12.75 9V11.25H15C15.4142 11.25 15.75 11.5858 15.75 12C15.75 12.4142 15.4142 12.75 15 12.75H12.75V15C12.75 15.4142 12.4142 15.75 12 15.75C11.5858 15.75 11.25 15.4142 11.25 15V12.75H9C8.58579 12.75 8.25 12.4142 8.25 12C8.25 11.5858 8.58579 11.25 9 11.25H11.25V9C11.25 8.58579 11.5858 8.25 12 8.25Z" fill="currentColor"/></svg>
				</a>
			</div>
			<div class="ele_msg_container js_live-messages-alt">
				<div class="js_scroller" data-slimScroll-height="490px">
					{if $user->_data['conversations']}
						<ul class="open_msg_user">
							{foreach $user->_data['conversations'] as $_conversation}
								{include file='__feeds_conversation.tpl' conversation=$_conversation}
							{/foreach}
						</ul>
						{if count($user->_data['conversations']) >= $system['max_results']}
							<!-- see-more -->
							<div class="alert alert-post see-more small mlr15 js_see-more" data-get="conversations">
								<span>{__("Load Older Threads")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{/if}
					{/if}
				</div>
			</div>
        </div>
        <!-- threads -->

        <!-- conversation -->
        <div class="position-relative ele_msg_user_chat js_conversation-container {if $view == "message" && $sub_view == "all"}hide{/if}">
            {if $view == "new"}
                <div class="panel-messages fresh">
                    <div class="valign plr15 ptb10 bold ele_msg_header">
						<span class="d-none chat_navigation"><button type="button" class="btn rounded-circle p-0 border-0 btn-secondary" onclick="$('.ele_msg_user_chat').fadeOut(100);"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z" fill="currentColor"></path></svg></button>&nbsp;&nbsp;</span>
                        {__("New Message")}
                    </div>
                    <div class="position-relative ele_msg_container">
                        <div class="chat-conversations js_scroller" data-slimScroll-height="420px"></div>
						
                        <div class="chat-to clearfix js_autocomplete-tags">
                            <div class="to">{__("To")}:</div>
                            <ul class="tags">
                                {if $recipient}
                                    <li data-uid="{$recipient['user_id']}">{$recipient['user_fullname']}<button type="button" class="close js_tag-remove" title='{__("Remove")}'><span>×</span></button></li>
                                {/if}
                            </ul>
                            <div class="typeahead">
                                <input type="text" size="1" autofocus>
                            </div>
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
                                    <div class="progress x-progress"><div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div></div>
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
								<li class="btn btn-mat btn-primary x-form-tools-post d-inline-flex d-md-none justify-content-center js_post-message">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg" class="d-none"><path d="M16.1391 2.95907L7.10914 5.95907C1.03914 7.98907 1.03914 11.2991 7.10914 13.3191L9.78914 14.2091L10.6791 16.8891C12.6991 22.9591 16.0191 22.9591 18.0391 16.8891L21.0491 7.86907C22.3891 3.81907 20.1891 1.60907 16.1391 2.95907ZM16.4591 8.33907L12.6591 12.1591C12.5091 12.3091 12.3191 12.3791 12.1291 12.3791C11.9391 12.3791 11.7491 12.3091 11.5991 12.1591C11.3091 11.8691 11.3091 11.3891 11.5991 11.0991L15.3991 7.27907C15.6891 6.98907 16.1691 6.98907 16.4591 7.27907C16.7491 7.56907 16.7491 8.04907 16.4591 8.33907Z"/></svg><span>{__("Send")}</span>
                                </li>
							</div>
                        </div>
                    </div>
                </div>
            {else}
                {if $conversation}
                    {include file='ajax.chat.conversation.tpl'}
                {else}
					<div class="h-100 valign justify-content-center flex-column">
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.98 10.79V14.79C17.98 15.05 17.97 15.3 17.94 15.54C17.71 18.24 16.12 19.58 13.19 19.58H12.79C12.54 19.58 12.3 19.7 12.15 19.9L10.95 21.5C10.42 22.21 9.56 22.21 9.03 21.5L7.82999 19.9C7.69999 19.73 7.41 19.58 7.19 19.58H6.79001C3.60001 19.58 2 18.79 2 14.79V10.79C2 7.86001 3.35001 6.27001 6.04001 6.04001C6.28001 6.01001 6.53001 6 6.79001 6H13.19C16.38 6 17.98 7.60001 17.98 10.79Z"/><path d="M9.98828 14C9.42828 14 8.98828 13.55 8.98828 13C8.98828 12.45 9.43828 12 9.98828 12C10.5383 12 10.9883 12.45 10.9883 13C10.9883 13.55 10.5483 14 9.98828 14Z"/><path d="M13.4883 14C12.9283 14 12.4883 13.55 12.4883 13C12.4883 12.45 12.9383 12 13.4883 12C14.0383 12 14.4883 12.45 14.4883 13C14.4883 13.55 14.0383 14 13.4883 14Z"/><path d="M6.5 14C5.94 14 5.5 13.55 5.5 13C5.5 12.45 5.95 12 6.5 12C7.05 12 7.5 12.45 7.5 13C7.5 13.55 7.05 14 6.5 14Z"/><path d="M21.9791 6.79001V10.79C21.9791 13.73 20.6291 15.31 17.9391 15.54C17.9691 15.3 17.9791 15.05 17.9791 14.79V10.79C17.9791 7.60001 16.3791 6 13.1891 6H6.78906C6.52906 6 6.27906 6.01001 6.03906 6.04001C6.26906 3.35001 7.85906 2 10.7891 2H17.1891C20.3791 2 21.9791 3.60001 21.9791 6.79001Z"/></svg> {__("No Conversation Selected")}
						</div>
						<div class="text-center mb-5 mt-n5">
							<a class="btn btn-mat btn-sm btn-primary js_chat-new" href="{$system['system_url']}/messages/new"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"></path></svg> {__("New Message")}</a>
						</div>
					</div>
                {/if}
            {/if}
        </div>
        <!-- conversation -->

    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}