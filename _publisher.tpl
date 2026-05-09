{if $user->_data['can_publish_posts']}
	{if $system['verification_for_posts'] && !$user->_data['user_verified']}
		<div class="alert alert-danger p-3 mb20">
			<div class="mb-2 mx-n1">
				<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM11.25 8C11.25 7.59 11.59 7.25 12 7.25C12.41 7.25 12.75 7.59 12.75 8V13C12.75 13.41 12.41 13.75 12 13.75C11.59 13.75 11.25 13.41 11.25 13V8ZM12.92 16.38C12.87 16.51 12.8 16.61 12.71 16.71C12.61 16.8 12.5 16.87 12.38 16.92C12.26 16.97 12.13 17 12 17C11.87 17 11.74 16.97 11.62 16.92C11.5 16.87 11.39 16.8 11.29 16.71C11.2 16.61 11.13 16.51 11.08 16.38C11.03 16.26 11 16.13 11 16C11 15.87 11.03 15.74 11.08 15.62C11.13 15.5 11.2 15.39 11.29 15.29C11.39 15.2 11.5 15.13 11.62 15.08C11.86 14.98 12.14 14.98 12.38 15.08C12.5 15.13 12.61 15.2 12.71 15.29C12.8 15.39 12.87 15.5 12.92 15.62C12.97 15.74 13 15.87 13 16C13 16.13 12.97 16.26 12.92 16.38Z" fill="currentColor"></path></svg>
			</div>
			<div class="text">
				<strong class="bold">{__("Account Verification Required")}</strong><br>
				{__("To publish posts your account must be verified")} <a href="{$system['system_url']}/settings/verification">{__("Verify Now")}</a>
			</div>
		</div>
	{else}
		<div id="publisher-wapper{if $_modal_mode}-modal{/if}">
			<div class="publisher-overlay"></div>
			<div class="ele_content x-form publisher" data-handle="{$_handle}" {if $_id}data-id="{$_id}" {/if} {if $_modal_mode}data-modal-mode="true" style=" margin-bottom: 0;" {/if} id="publisher-box">
				<!-- publisher loader -->
				<div class="publisher-loader ele_progress">
					<div class="indeterminate"></div>
				</div>
				<!-- publisher loader -->
				
				<div class="publisher-slider">
					<!-- publisher-footer -->
					<div class="valign publisher-footer">
						<!-- publisher-buttons -->
						{if $_post_as_page}
							<input type="hidden" name="post_as_page" value="{$_page_id}">
						{/if}
						<button type="button" class="btn btn-primary btn-mat js_publisher-btn js_publisher">{__("Post")}</button>
						<!-- publisher-buttons -->
						
						{if $_modal_mode}
							<!-- publisher close -->
							<button type="button" class="btn-close p-0 bg-transparent shadow-none border-0 js_close-publisher-modal">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" color="currentColor" fill="none"><path d="M19.0005 4.99988L5.00049 18.9999M5.00049 4.99988L19.0005 18.9999" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" /></svg>
							</button>
							<!-- publisher close -->
						{/if}
					</div>
					<!-- publisher-footer -->
				</div>
				
				<!-- publisher-message -->
				<div class="publisher-message">
					{if $_handle == "page" || $_post_as_page}
						<img class="publisher-avatar" src="{$_avatar}">
					{else}
						<img class="publisher-avatar" src="{$user->_data['user_picture']}">
					{/if}
					<div class="colored-text-wrapper">
						<div class="quill-editor js_quill"></div>
						<input type="hidden" class="js_publisher-hidden-editor" value="">
						<textarea style="display: none;" {if $_modal_mode}autofocus{/if} dir="auto" class="js_autosize js_mentions js_publisher-scraper" data-init-placeholder='{__("What is on your mind? #Hashtag.. @Mention.. Link..")}' placeholder='{__("What is on your mind? #Hashtag.. @Mention.. Link..")}'>{if $page == "share" && $url}{$url}{/if}</textarea>
						{if !$_quick_mode}
						{if $user->_data['can_go_live']}
							<a class="btn btn-mat btn-live d-none" href="{$system['system_url']}/live{if $_handle == "page"}?page_id={$_id}{/if}{if $_handle == "group"}?group_id={$_id}{/if}{if $_handle == "event"}?event_id={$_id}{/if}"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M16 4a1 1 0 0 1 1 1v4.2l5.213-3.65a.5.5 0 0 1 .787.41v12.08a.5.5 0 0 1-.787.41L17 14.8V19a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1h14zm-1 2H3v12h12V6zM7.4 8.829a.4.4 0 0 1 .215.062l4.355 2.772a.4.4 0 0 1 0 .674L7.615 15.11A.4.4 0 0 1 7 14.77V9.23c0-.221.18-.4.4-.4zM21 8.84l-4 2.8v.718l4 2.8V8.84z"/></svg> <span>{__("Go Live")}</span></a>
						{/if}
						{/if}
					</div>
				</div>
				<!-- publisher-message -->

				<!-- publisher-slider -->
				<div class="publisher-slider">

					<!-- publisher scraper -->
					<div class="publisher-scraper"></div>
					<!-- publisher scraper -->
					
					<!-- post attachments (photos) -->
					<div class="publisher-attachments attachments clearfix x-hidden js_attachments-photos"></div>
					<!-- post attachments -->
					
					<!-- post attachments (reels) -->
					<div class="publisher-attachments attachments clearfix x-hidden js_attachments-reel"></div>
					<!-- post attachments -->

					<!-- post attachments (videos) -->
					<div class="publisher-attachments attachments clearfix x-hidden js_attachments-video"></div>
					<!-- post attachments -->

					<!-- post attachments (audios) -->
					<div class="publisher-attachments attachments clearfix x-hidden js_attachments-audio"></div>
					<!-- post attachments -->

					<!-- post attachments (files) -->
					<div class="publisher-attachments attachments clearfix x-hidden js_attachments-file"></div>
					<!-- post attachments -->

					<!-- post album -->
					<div class="publisher-meta" data-meta="album">
						<svg xmlns="http://www.w3.org/2000/svg" class="svg-container" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"> <path stroke="none" d="M0 0h24v24H0z" fill="none"></path> <rect x="4" y="4" width="16" height="16" rx="2"></rect> <line x1="4" y1="16" x2="20" y2="16"></line> <path d="M4 12l3 -3c.928 -.893 2.072 -.893 3 0l4 4"></path> <path d="M13 12l2 -2c.928 -.893 2.072 -.893 3 0l2 2"></path> <line x1="14" y1="7" x2="14.01" y2="7"></line></svg>
						<input type="text" placeholder='{__("Album title")}'>
					</div>
					<!-- post album -->

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

					<!-- post colored -->
					<div class="publisher-meta" data-meta="colored">
						{foreach $colored_patterns as $pattern}<div class="colored-pattern-item js_publisher-pattern" data-id="{$pattern['pattern_id']}" data-type="{$pattern['type']}" data-background-image="{$pattern['background_image']}" data-background-color-1="{$pattern['background_color_1']}" data-background-color-2="{$pattern['background_color_2']}" data-text-color="{$pattern['text_color']}" {if $pattern['type'] == "color"} style="background-image: linear-gradient(45deg, {$pattern['background_color_1']}, {$pattern['background_color_2']});" {else} style="background-image: url({$system['system_uploads']}/{$pattern['background_image']})" {/if}></div>{/foreach}
					</div>
					<!-- post colored -->

					<!-- post voice notes -->
					<div class="publisher-meta" data-meta="voice_notes">
						<div class="voice-recording-wrapper" data-handle="publisher">
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
					<!-- post voice notes -->

					<!-- post gif -->
					<div class="publisher-meta" data-meta="gif">
						<svg xmlns="http://www.w3.org/2000/svg" class="svg-container" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M11,8H13V16H11V8M7.67,8H4.33C3.53,8 3,8.67 3,9.33V14.67C3,15.33 3.53,16 4.33,16H7.67C8.47,16 9,15.33 9,14.67V12H7V14H5V10H9V9.33C9,8.67 8.47,8 7.67,8M21,10V8H15V16H17V14H19.5V12H17V10H21Z"></path></svg>
						<input class="js_publisher-gif-search" type="text" placeholder='{__("Search GIFs")}'>
					</div>
					<!-- post gif -->

					<!-- post poll -->
					<div class="publisher-meta" data-meta="poll">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="svg-container" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"/><path fill="currentColor" d="M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z"/></svg>
						<input type="text" placeholder='{__("Add an option")}...'>
					</div>
					<div class="publisher-meta" data-meta="poll">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="svg-container" width="24" height="24"><path fill="none" d="M0 0h24v24H0z"/><path fill="currentColor" d="M11 4h10v2H11V4zm0 4h6v2h-6V8zm0 6h10v2H11v-2zm0 4h6v2h-6v-2zM3 4h6v6H3V4zm2 2v2h2V6H5zm-2 8h6v6H3v-6zm2 2v2h2v-2H5z"/></svg>
						<input type="text" placeholder='{__("Add an option")}...'>
					</div>
					<!-- post poll -->
					
					<!-- post reel -->
					<div class="publisher-meta" data-meta="reel">
						<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Reel uploaded successfully")}
						<div class="float-right">
						  <button type="button" class="btn btn-mat btn-voice-clear js_publisher-attachment-file-remover" data-type="reel">{__("Clear")}</button>
						</div>
					</div>
					<div class="publisher-custom-thumbnail publisher-reel-custom-thumbnail">
						{__("Custom Reel Thumbnail")}
						<div class="x-image">
							<button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'></button>
							<div class="x-image-loader">
								<div class="progress x-progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
							<input type="hidden" class="js_x-uploader-input" name="video_thumbnail" value="">
						</div>
					</div>
					<!-- post reel -->

					<!-- post video -->
					<div class="publisher-meta" data-meta="video">
						<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Video uploaded successfully")}
						<div class="float-right">
							<button type="button" class="btn btn-mat btn-voice-clear js_publisher-attachment-file-remover" data-type="video">{__("Clear")}</button>
						</div>

						<select class="mt-3 px-3" name="video_category" id="video_category">
							{foreach $videos_categories as $category}
								{include file='__categories.recursive_options.tpl'}
							{/foreach}
						</select>
					</div>
					<div class="publisher-custom-thumbnail publisher-video-custom-thumbnail">
					   {__("Custom Video Thumbnail")}
					   <div class="x-image">
							<button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
								<span>×</span>
							</button>
							<div class="x-image-loader">
								<div class="progress x-progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
							<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
							<input type="hidden" class="js_x-uploader-input" name="video_thumbnail" value="">
						</div>
					</div>
					<!-- post video -->

					<!-- post audio -->
					<div class="publisher-meta" data-meta="audio">
						<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Audio uploaded successfully")}
						<div class="float-right">
							<button type="button" class="btn btn-mat btn-voice-clear js_publisher-attachment-file-remover" data-type="audio">{__("Clear")}</button>
						</div>
					</div>
					<!-- post audio -->

					<!-- post file -->
					<div class="publisher-meta" data-meta="file">
						<svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("File uploaded successfully")}
						<div class="float-right">
							<button type="button" class="btn btn-mat btn-voice-clear js_publisher-attachment-file-remover" data-type="file">{__("Clear")}</button>
						</div>
					</div>
					<!-- post file -->

					<div class="valign ele_pub_box_foot">
						<div class="valign">
							{if $_privacy}
								{if $system['newsfeed_source'] == "default"}
									<!-- privacy -->
									{if $system['default_privacy'] == "me"}
										<div class="btn-group js_publisher-privacy" data-toggle="tooltip" data-placement="top" data-value="me">
											<button type="button" class="btn dropdown-toggle ele_post_pub_privacy" data-toggle="dropdown" data-display="static">
												<i class="btn-group-icon fa fa-user-lock mr10"></i><span class="btn-group-text">{__("Only Me")}</span>
											</button>
											<div class="dropdown-menu ele_create_menu ele_post_pub_privacy_menu">
												<li><div class="dropdown-item pointer" data-value="public"><i class="fa fa-globe-americas mr10"></i>{__("Public")}</div></li>
												<li><div class="dropdown-item pointer" data-value="friends"><i class="fa fa-user-friends mr10"></i>{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}</div></li>
												{if $_handle == 'me'}
													<li><div class="dropdown-item pointer" data-value="me"><i class="fa fa-user-lock mr10"></i>{__("Only Me")}</div></li>
												{/if}
											</div>
										</div>
									{elseif $system['default_privacy'] == "friends"}
										<div class="btn-group js_publisher-privacy" data-toggle="tooltip" data-placement="top" data-value="friends">
											<button type="button" class="btn dropdown-toggle ele_post_pub_privacy" data-toggle="dropdown" data-display="static">
												<i class="btn-group-icon fa fa-user-friends mr10"></i><span class="btn-group-text">{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}</span>
											</button>
											<div class="dropdown-menu ele_create_menu ele_post_pub_privacy_menu">
												<li><div class="dropdown-item pointer" data-value="public"><i class="fa fa-globe-americas mr10"></i>{__("Public")}</div></li>
												<li><div class="dropdown-item pointer" data-value="friends"><i class="fa fa-user-friends mr10"></i>{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}</div></li>
												{if $_handle == 'me'}
													<li><div class="dropdown-item pointer" data-value="me"><i class="fa fa-user-lock mr10"></i>{__("Only Me")}</div></li>
												{/if}
											</div>
										</div>
									{else}
										<div class="btn-group js_publisher-privacy" data-toggle="tooltip" data-placement="top" data-value="public">
											<button type="button" class="btn dropdown-toggle ele_post_pub_privacy" data-toggle="dropdown" data-display="static">
												<i class="btn-group-icon fa fa-globe-americas mr10"></i><span class="btn-group-text">{__("Public")}</span>
											</button>
											<div class="dropdown-menu ele_create_menu ele_post_pub_privacy_menu">
												<li><div class="dropdown-item pointer" data-value="public"><i class="fa fa-globe-americas mr10"></i>{__("Public")}</div></li>
												<li><div class="dropdown-item pointer" data-value="friends"><i class="fa fa-user-friends mr10"></i>{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}</div></li>
												{if $_handle == 'me'}
													<li><div class="dropdown-item pointer" data-value="me"><i class="fa fa-user-lock mr10"></i>{__("Only Me")}</div></li>
												{/if}
											</div>
										</div>
									{/if}
									{if $_handle == "me" && $system['anonymous_mode']}
										<button disabled="disabled" type="button" class="btn x-hidden js_publisher-privacy-public ele_post_pub_privacy">
											<i class="btn-group-icon fa fa-globe-americas mr10"></i><span class="btn-group-text">{__("Public")}</span>
										</button>
									{/if}
									<!-- privacy -->
								{/if}
							{/if}
							{if !$_quick_mode}
								{if $system['offers_enabled'] && in_array($_handle, ['me', 'page', 'group','event'])}
									<span class="btn ele_pub_btn_hasat" data-toggle="tooltip" title='{__("Create Offer")}'>
										<svg xmlns="http://www.w3.org/2000/svg" data-tab="offer" data-toggle="modal" data-url="posts/offer.php?do=create{if $_handle == "page"}&page={$_id}{/if}{if $_handle == "group"}&group={$_id}{/if}{if $_handle == "event"}&event={$_id}{/if}" width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5" stroke="#000000" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <line x1="9" y1="15" x2="15" y2="9" />  <circle cx="9.5" cy="9.5" r=".5" fill="currentColor" />  <circle cx="14.5" cy="14.5" r=".5" fill="currentColor" />  <path d="M5 7.2a2.2 2.2 0 0 1 2.2 -2.2h1a2.2 2.2 0 0 0 1.55 -.64l.7 -.7a2.2 2.2 0 0 1 3.12 0l.7 .7a2.2 2.2 0 0 0 1.55 .64h1a2.2 2.2 0 0 1 2.2 2.2v1a2.2 2.2 0 0 0 .64 1.55l.7 .7a2.2 2.2 0 0 1 0 3.12l-.7 .7a2.2 2.2 0 0 0 -.64 1.55v1a2.2 2.2 0 0 1 -2.2 2.2h-1a2.2 2.2 0 0 0 -1.55 .64l-.7 .7a2.2 2.2 0 0 1 -3.12 0l-.7 -.7a2.2 2.2 0 0 0 -1.55 -.64h-1a2.2 2.2 0 0 1 -2.2 -2.2v-1a2.2 2.2 0 0 0 -.64 -1.55l-.7 -.7a2.2 2.2 0 0 1 0 -3.12l.7 -.7a2.2 2.2 0 0 0 .64 -1.55v-1" /></svg> {if $system['paid_offers_enabled']}<span class="badge rounded-pill bg-warning">{__("Paid")}</span>{/if}
									</span>
								{/if}
								{if $system['jobs_enabled'] && in_array($_handle, ['me', 'page', 'group','event'])}
									<span class="btn ele_pub_btn_hasat" data-toggle="tooltip" title='{__("Create Job")}'>
										<svg xmlns="http://www.w3.org/2000/svg" data-tab="job" data-toggle="modal" data-url="posts/job.php?do=create{if $_handle == "page"}&page={$_id}{/if}{if $_handle == "group"}&group={$_id}{/if}{if $_handle == "event"}&event={$_id}{/if}" width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5" stroke="#000000" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <rect x="3" y="7" width="18" height="13" rx="2" />  <path d="M8 7v-2a2 2 0 0 1 2 -2h4a2 2 0 0 1 2 2v2" />  <line x1="12" y1="12" x2="12" y2="12.01" />  <path d="M3 13a20 20 0 0 0 18 0" /></svg> {if $system['paid_jobs_enabled']}<span class="badge rounded-pill bg-warning">{__("Paid")}</span>{/if}
									</span>
								{/if}
								{if $system['courses_enabled'] && in_array($_handle, ['me', 'page', 'group','event'])}
									<span class="btn ele_pub_btn_hasat" data-toggle="tooltip" title='{__("Create Course")}'>
										<svg xmlns="http://www.w3.org/2000/svg" data-tab="job" data-toggle="modal" data-url="posts/course.php?do=create{if $_handle == "page"}&page={$_id}{/if}{if $_handle == "group"}&group={$_id}{/if}{if $_handle == "event"}&event={$_id}{/if}" width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5" stroke="#000000" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M19 4v16h-12a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h12z" /><path d="M19 16h-12a2 2 0 0 0 -2 2" /><path d="M9 8h6" /></svg> {if $system['paid_courses_enabled']}<span class="badge rounded-pill bg-warning">{__("Paid")}</span>{/if}
									</span>
								{/if}
							{/if}
						</div>
						<div>
							<span class="btn ele_pub_btn_hasat active" onclick="$(this).toggleClass('active');$('.publisher').toggleClass('large-text');" data-toggle="collapse" data-target="#ele_pub_options" aria-controls="ele_pub_options">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <polyline points="6 9 12 15 18 9" /></svg>
							</span>
						</div>
					</div>
					
					<!-- publisher-error -->
					<div class="px-3"><div class="alert alert-danger x-hidden"></div></div>
					<!-- publisher-error -->

					<!-- publisher-tools-tabs -->
					<div class="collapse show" id="ele_pub_options">
						<div class="valign publisher-tools-tabs">
							{if !$_quick_mode}
								{if $system['ai_images_enabled']}
									<li>
										<div class="valign publisher-tools-tab js_publisher-tab" data-tab="ai_image" data-toggle="modal" data-size="large" data-url="ai/modal.php?handle=image">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M20.7134 8.12811L20.4668 8.69379C20.2864 9.10792 19.7136 9.10792 19.5331 8.69379L19.2866 8.12811C18.8471 7.11947 18.0555 6.31641 17.0677 5.87708L16.308 5.53922C15.8973 5.35653 15.8973 4.75881 16.308 4.57612L17.0252 4.25714C18.0384 3.80651 18.8442 2.97373 19.2761 1.93083L19.5293 1.31953C19.7058 0.893489 20.2942 0.893489 20.4706 1.31953L20.7238 1.93083C21.1558 2.97373 21.9616 3.80651 22.9748 4.25714L23.6919 4.57612C24.1027 4.75881 24.1027 5.35653 23.6919 5.53922L22.9323 5.87708C21.9445 6.31641 21.1529 7.11947 20.7134 8.12811ZM2.9918 3H14V5H4V19L14 9L20 15V11H22V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3ZM20 17.8284L14 11.8284L6.82843 19H20V17.8284ZM8 11C6.89543 11 6 10.1046 6 9C6 7.89543 6.89543 7 8 7C9.10457 7 10 7.89543 10 9C10 10.1046 9.10457 11 8 11Z"></path></svg>{__("Generate Image")}</span>
										</div>
									</li>
								{/if}
								{if $system['ai_posts_enabled']}
									<li>
										<div class="valign publisher-tools-tab js_publisher-tab" data-tab="ai" data-toggle="modal" data-size="large" data-url="ai/modal.php?handle=post">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"><path d="M16.4356 3.21188C16.8261 2.82185 17.4592 2.82157 17.8496 3.21188L20.6777 6.04099C21.0681 6.43152 21.0682 7.06457 20.6777 7.45505L7.2422 20.8896H3.00001V16.6475L16.4356 3.21188ZM5.00001 17.4756V18.8896H6.41407L15.7276 9.57615L14.3135 8.16208L5.00001 17.4756ZM4.5293 1.3193C4.70583 0.893505 5.29418 0.893508 5.47071 1.3193L5.72364 1.93063C6.15555 2.97342 6.96155 3.80613 7.97462 4.2568L8.69239 4.57614C9.10267 4.75896 9.10262 5.35616 8.69239 5.53903L7.93263 5.87692C6.94497 6.3162 6.15339 7.11943 5.71387 8.1279L5.4668 8.69334C5.28636 9.10747 4.71366 9.10747 4.53321 8.69334L4.28614 8.1279C3.84661 7.11943 3.05506 6.3162 2.06739 5.87692L1.30762 5.53903C0.897483 5.35617 0.897435 4.75896 1.30762 4.57614L2.0254 4.2568C3.03845 3.80614 3.84446 2.97344 4.27637 1.93063L4.5293 1.3193ZM15.7276 6.74802L17.1426 8.16208L18.5567 6.74802L17.1426 5.33395L15.7276 6.74802Z"></path></svg>{__("Generate Post")}
										</div>
									</li>
								{/if}
							{/if}
							
							{if $system['photos_enabled']}
								<li>
									<div class="valign publisher-tools-tab attach js_publisher-tab js_publisher-images-uploader" data-tab="photos">
										<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" data-handle="publisher" data-multiple="true" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="15" y1="8" x2="15.01" y2="8" /><rect x="4" y="4" width="16" height="16" rx="3" /><path d="M4 15l4 -4a3 5 0 0 1 3 0l5 5" /><path d="M14 14l1 -1a3 5 0 0 1 3 0l2 2" /></svg>{__("Upload Photos")}
									</div>
								</li>
								{if !$_quick_mode}
								<li>
									<div class="valign publisher-tools-tab js_publisher-tab" data-tab="album">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <rect x="4" y="4" width="16" height="16" rx="2" />  <line x1="4" y1="16" x2="20" y2="16" />  <path d="M4 12l3 -3c.928 -.893 2.072 -.893 3 0l4 4" />  <path d="M13 12l2 -2c.928 -.893 2.072 -.893 3 0l2 2" />  <line x1="14" y1="7" x2="14.01" y2="7" /></svg>{__("Create Album")}
									</div>
								</li>
								{/if}
							{/if}
							{if $user->_data['can_add_activity_posts']}
								<li>
									<div class="valign publisher-tools-tab js_publisher-feelings">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <circle cx="12" cy="12" r="9" />  <line x1="9" y1="9" x2="9.01" y2="9" />  <line x1="15" y1="9" x2="15.01" y2="9" />  <path d="M8 13a4 4 0 1 0 8 0m0 0h-8" /></svg>{__("Feelings/Activity")}
									</div>
								</li>
							{/if}
							{if $user->_data['can_add_geolocation_posts']}
								<li>
									<div class="valign publisher-tools-tab js_publisher-tab" data-tab="location">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <line x1="18" y1="6" x2="18" y2="6.01" />  <path d="M18 13l-3.5 -5a4 4 0 1 1 7 0l-3.5 5" />  <polyline points="10.5 4.75 9 4 3 7 3 20 9 17 15 20 21 17 21 15" />  <line x1="9" y1="4" x2="9" y2="17" />  <line x1="15" y1="15" x2="15" y2="20" /></svg>{__("Check In")}
									</div>
								</li>
							{/if}
							{if $user->_data['can_add_colored_posts']}
								<li>
									<div class="valign publisher-tools-tab js_publisher-tab" data-tab="colored">
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <path d="M12 21a9 9 0 1 1 0 -18a9 8 0 0 1 9 8a4.5 4 0 0 1 -4.5 4h-2.5a2 2 0 0 0 -1 3.75a1.3 1.3 0 0 1 -1 2.25" />  <circle cx="7.5" cy="10.5" r=".5" fill="currentColor" />  <circle cx="12" cy="7.5" r=".5" fill="currentColor" />  <circle cx="16.5" cy="10.5" r=".5" fill="currentColor" /></svg>{__("Colored Posts")}
									</div>
								</li>
							{/if}
							{if !$_quick_mode}
								{if $system['voice_notes_posts_enabled']}
									<li>
										<div class="valign publisher-tools-tab js_publisher-tab" data-tab="voice_notes">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <rect x="9" y="2" width="6" height="11" rx="3" />  <path d="M5 10a7 7 0 0 0 14 0" />  <line x1="8" y1="21" x2="16" y2="21" />  <line x1="12" y1="17" x2="12" y2="21" /></svg>{__("Voice Notes")}
										</div>
									</li>
								{/if}
								{if $user->_data['can_add_gif_posts']}
									<li>
										<div class="valign publisher-tools-tab js_publisher-tab" data-tab="gif">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" d="M11,8H13V16H11V8M7.67,8H4.33C3.53,8 3,8.67 3,9.33V14.67C3,15.33 3.53,16 4.33,16H7.67C8.47,16 9,15.33 9,14.67V12H7V14H5V10H9V9.33C9,8.67 8.47,8 7.67,8M21,10V8H15V16H17V14H19.5V12H17V10H21Z"></path></svg>{__("GIF")}
										</div>
									</li>
								{/if}
								{if $system['market_enabled'] && in_array($_handle, ['me', 'page', 'group','event'])}
									<li>
										<div class="valign publisher-tools-tab link js_publisher-tab" data-tab="product" data-toggle="modal" data-url="posts/product.php?do=create{if $_handle == "page"}&page={$_id}{/if}{if $_handle == "group"}&group={$_id}{/if}{if $_handle == "event"}&event={$_id}{/if}">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <circle cx="6" cy="19" r="2" />  <circle cx="17" cy="19" r="2" />  <path d="M17 17h-11v-14h-2" />  <path d="M6 5l6.005 .429m7.138 6.573l-.143 .998h-13" />  <path d="M15 6h6m-3 -3v6" /></svg>{__("Create Product")} {if $system['paid_products_enabled']}&nbsp;<span class="badge rounded-pill bg-warning">{__("Paid")}</span>{/if}
										</div>
									</li>
								{/if}
								{if $system['blogs_enabled'] && in_array($_handle, ['me', 'page', 'group','event'])}
									<li>
										<a class="valign publisher-tools-tab link js_publisher-tab" data-tab="blog" href="{$system['system_url']}/blogs/new{if $_handle == 'page'}?page={$_id}{/if}{if $_handle == 'group'}?group={$_id}{/if}{if $_handle == 'event'}?event={$_id}{/if}">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"></path><path d="M20 22H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1zm-1-2V4H5v16h14zM7 6h4v4H7V6zm0 6h10v2H7v-2zm0 4h10v2H7v-2zm6-9h4v2h-4V7z"></path></svg>{__("Create Blog")} {if $system['paid_blogs_enabled']}&nbsp;<span class="badge rounded-pill bg-warning">{__("Paid")}</span>{/if}
										</a>
									</li>
								{/if}
								{if $system['funding_enabled'] && $_handle == "me"}
									<li>
										<div class="valign publisher-tools-tab link js_publisher-tab" data-tab="funding" data-toggle="modal" data-url="posts/funding.php?do=create">
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M15 11v.01" /><path d="M5.173 8.378a3 3 0 1 1 4.656 -1.377" /><path d="M16 4v3.803a6.019 6.019 0 0 1 2.658 3.197h1.341a1 1 0 0 1 1 1v2a1 1 0 0 1 -1 1h-1.342c-.336 .95 -.907 1.8 -1.658 2.473v2.027a1.5 1.5 0 0 1 -3 0v-.583a6.04 6.04 0 0 1 -1 .083h-4a6.04 6.04 0 0 1 -1 -.083v.583a1.5 1.5 0 0 1 -3 0v-2l0 -.027a6 6 0 0 1 4 -10.473h2.5l4.5 -3h0z" /></svg>{__("Create Funding")} {if $system['paid_funding_enabled']}&nbsp;<span class="badge rounded-pill bg-warning">{__("Paid")}</span>{/if}
										</div>
									</li>
								{/if}
							{/if}
							{if $user->_data['can_add_polls_posts']}
								<li>
									<div class="valign publisher-tools-tab js_publisher-tab" data-tab="poll">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" d="M18,10H14V3a1,1,0,0,0-1-1H8A1,1,0,0,0,7,3V8H3A1,1,0,0,0,2,9V21a1,1,0,0,0,1,1H18a1,1,0,0,0,1-1V11A1,1,0,0,0,18,10ZM7,20H4V10H7Zm5,0H9V4h3Zm5,0H14V12h3ZM21,4H20V3a1,1,0,0,0-2,0V4H17a1,1,0,0,0,0,2h1V7a1,1,0,0,0,2,0V6h1a1,1,0,0,0,0-2Z"></path></svg>{__("Create Poll")}
									</div>
								</li>
							{/if}
							{if $user->_data['can_add_reels']}
								<li>
									<div class="valign publisher-tools-tab attach js_publisher-tab" data-tab="reel">
										<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" data-handle="publisher" data-type="reel" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M3 5a2 2 0 0 1 2 -2h14a2 2 0 0 1 2 2v14a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-14z" /><path d="M21 9h-18" /><path d="M15 3l-6 6" /><path d="M9.5 3l-6 6" /><path d="M20 3.5l-5.5 5.5" /></svg>{__("Upload Reel")}
									</div>
								</li>
							{/if}
							{if $user->_data['can_upload_videos']}
								<li>
									<div class="valign publisher-tools-tab attach js_publisher-tab" data-tab="video">
										<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" data-handle="publisher" data-type="video" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <path d="M15 10l4.553 -2.276a1 1 0 0 1 1.447 .894v6.764a1 1 0 0 1 -1.447 .894l-4.553 -2.276v-4z" />  <rect x="3" y="6" width="12" height="12" rx="2" />  <line x1="7" y1="12" x2="11" y2="12" />  <line x1="9" y1="10" x2="9" y2="14" /></svg>{__("Upload Video")}
									</div>
								</li>
							{/if}
							{if $user->_data['can_upload_audios']}
								<li>
									<div class="valign publisher-tools-tab attach js_publisher-tab" data-tab="audio">
										<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" data-handle="publisher" data-type="audio" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <circle cx="6" cy="17" r="3" />  <circle cx="16" cy="17" r="3" />  <polyline points="9 17 9 4 19 4 19 17" />  <line x1="9" y1="8" x2="19" y2="8" /></svg>{__("Upload Audio")}
									</div>
								</li>
							{/if}
							{if $user->_data['can_upload_files']}
								<li>
									<div class="valign publisher-tools-tab attach js_publisher-tab" data-tab="file">
										<svg xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" data-handle="publisher" data-type="file" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">  <path stroke="none" d="M0 0h24v24H0z" fill="none"/>  <path d="M14 3v4a1 1 0 0 0 1 1h4" />  <path d="M17 21h-10a2 2 0 0 1 -2 -2v-14a2 2 0 0 1 2 -2h7l5 5v11a2 2 0 0 1 -2 2z" />  <line x1="12" y1="11" x2="12" y2="17" />  <polyline points="9 14 12 11 15 14" /></svg>{__("Upload File")}
									</div>
								</li>
							{/if}
						</div>
						
						{if $user->_data['can_schedule_posts'] || ($_handle == "me" && $user->_data['can_add_anonymous_posts']) ||  $system['adult_mode'] || ($_handle != "page" && $user->_data['can_receive_tip']) || (in_array($_handle, ['me', 'page', 'group']) && $_node_can_monetize_content && $_node_monetization_enabled && $_node_monetization_plans > 0) || (in_array($_handle, ['me', 'page', 'group','event']) && $user->_data['can_monetize_content'] && $user->_data['user_monetization_enabled']) || in_array($_handle, ['me', 'group','event']) && $user->_data['can_add_collaborative_posts']}
							<!-- publisher-options -->
							<div class="publisher-footer-options">
								<!-- schedule post -->
								{if $user->_data['can_schedule_posts']}
									<div class="form-table-row mb10">
										<div>
											<div class="form-control-label h6">{__("Schedule Post")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("Schedule your post for later")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="is_schedule">
												<input type="checkbox" name="is_schedule" id="is_schedule" class="js_publisher-schedule-toggle">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
									<div class="form-group x-hidden" id="schedule-toggle-wrapper">
										<input type="datetime-local" class="form-control js_publisher-schedule-date">
										<div class="form-text">
											{__("Select a date and time for your post")}
										</div>
									</div>
								{/if}
								<!-- schedule post -->
				
								<!-- anonymous post -->
								{if $_handle == "me" && $user->_data['can_add_anonymous_posts']}
									<div class="form-table-row mb10" id="anonymous-toggle-wrapper">
										<div>
											<div class="form-control-label h6">{__("Anonymous Post")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("Share your post as anonymous post")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="is_anonymous">
												<input type="checkbox" name="is_anonymous" id="is_anonymous" class="js_publisher-anonymous-toggle">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
								{/if}
								<!-- anonymous post -->
								
								<!-- adult content -->
								{if $system['adult_mode']}
									<div class="form-table-row mb10" id="adult-toggle-wrapper">
										<div>
											<div class="form-control-label h6">{__("Adult Content")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("Share your post as adult content")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="for_adult">
												<input type="checkbox" name="for_adult" id="for_adult" class="js_publisher-adult-toggle">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
								{/if}
								<!-- adult content -->

								<!-- enable tips -->
								{if $_handle != "page" && $user->_data['can_receive_tip']}
									<div class="form-table-row mb10" id="tips-toggle-wrapper">
										<div>
											<div class="form-control-label h6">{__("Enable Tips")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("Allow people to send you tips")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="tips_enabled">
												<input type="checkbox" name="tips_enabled" id="tips_enabled" class="js_publisher-tips-toggle">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
								{/if}
								<!-- enable tips -->

								<!-- only for subscribers -->
								{if in_array($_handle, ['me', 'page', 'group']) && $_node_can_monetize_content && $_node_monetization_enabled && $_node_monetization_plans > 0 }
									<div class="form-table-row mb10" id="subscribers-toggle-wrapper">
										<div>
											<div class="form-control-label h6">{__("Subscribers Only")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("Share this post to")} {if $_handle != "me"}{__($_handle)} {/if}{__("subscribers only")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="subscribers_only">
												<input type="checkbox" name="subscribers_only" id="subscribers_only" class="js_publisher-subscribers-toggle">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
									<div class="form-group x-hidden" id="subscriptions-image-wrapper">
										<div class="x-image">
											<button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'></button>
											<div class="x-image-loader">
												<div class="progress x-progress">
													<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
											<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image" data-blur="true"></i>
											<input type="hidden" class="js_x-uploader-input" name="subscriptions_image" value="">
										</div>
										<div class="form-text">
											{__("Upload a preview image for your post (This image will be blured)")}
										</div>
									</div>
								{/if}
								<!-- only for subscribers -->

								<!-- paid post -->
								{if in_array($_handle, ['me', 'page', 'group','event']) && $user->_data['can_monetize_content'] && $user->_data['user_monetization_enabled']}
									<div class="form-table-row mb10" id="paid-toggle-wrapper">
										<div>
											<div class="form-control-label h6">{__("Paid Post")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("Set a price to your post")} ({__("subscribers also paying")})</div>
										</div>
										<div class="text-right">
											<label class="switch" for="paid_post">
												<input type="checkbox" name="paid_post" id="paid_post" class="js_publisher-paid-toggle">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
									<div class="form-table-row mb10 x-hidden" id="paid-lock-toggle-wrapper">
										<div>
											<div class="form-control-label h6">{__("Only Lock Attached File")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("This option will lock the attached file and disable the preview")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="paid_post_lock">
												<input type="checkbox" name="paid_post_lock" id="paid_post_lock" class="js_publisher-paid-lock-toggle">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
									<div class="x-hidden" id="paid-price-wrapper">
										<div class="d-flex tag_page_rate ele_pub_paid_post">
											<div class="set_desc x-hidden" id="paid-text-wrapper">
												<label>{__("Description")}</label>
												<textarea class="form-control" name="paid_post_text" rows="2" placeholder='{__("Paid Post Description")}'></textarea>
											</div>
											<div class="set_price">
												<label>{__('Price')} ({$system['system_currency']})</label>
												<input type="text" name="paid_post_price" placeholder="0.00">
											</div>
										</div>
									</div>
									<div class="form-group x-hidden" id="paid-image-wrapper">
										<div class="x-image">
											<button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'></button>
											<div class="x-image-loader">
												<div class="progress x-progress">
													<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</div>
											<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image" data-blur="true"></i>
											<input type="hidden" class="js_x-uploader-input" name="paid_image" value="">
										</div>
										<div class="form-text">
											{__("Upload a preview image for your post (This image will be blured)")}
										</div>
									</div>
								{/if}
								<!-- paid post -->
								
								<!-- collaborative post -->
								{if in_array($_handle, ['me', 'group','event']) && $user->_data['can_add_collaborative_posts']}
									<div class="form-table-row mb10" id="collaborative-toggle-wrapper">
										<div>
											<div class="form-control-label h6">{__("Collaborative Post")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("Share your post with others")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="collaborative_post">
												<input type="checkbox" name="collaborative_post" id="collaborative_post" class="js_publisher-collaborative-toggle">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
									<div class="form-group x-hidden" id="collaborative-users-wrapper">
										<input type="text" class="js_tagify-ajax x-hidden" data-handle="collaborative_users" name="collaborative_users">
										<div class="form-text">
											{__("Enter the users to collaborate with")}
										</div>
									</div>
									{if $user->_data['can_monetize_content'] && $user->_data['user_monetization_enabled']}
										<div class="form-group x-hidden" id="collaborative-percent-wrapper">
											<input type="number" min="0" max="100" class="form-control" name="collaborative_percent">
											<div class="form-text">
												{__("Enter the % of the revenue that you want to give to the collaborators (only for paid posts)")}
											</div>
										</div>
									{/if}
								{/if}
								<!-- collaborative post -->
							</div>
						{/if}
					</div>
					<!-- publisher-tools-tabs -->

				</div>
				<!-- publisher-slider -->
			</div>
		</div>
	{/if}
{/if}