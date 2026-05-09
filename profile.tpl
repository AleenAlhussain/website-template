{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- profile-header -->
<div class="profile-header profile">
	<div class="ele_cover_sec_bg">
		{if $profile['user_cover_id']}
			<img src="{$profile['user_cover']}" alt="{$profile['name']}">
		{/if}
		<div class="ele_cover_bg_grad"></div>
	</div>
	<div class="container position-relative ele_prof_mobi_full ele_prof_cont_wide">
		<!-- profile-cover -->
		<div class="profile-cover-wrapper">
			{if $profile['user_cover_id']}
				<!-- full-cover -->
				<img class="js_position-cover-full x-hidden" src="{$profile['user_cover_full']}">
				<!-- full-cover -->
				
				<!-- cropped-cover -->
				<img class="js_position-cover-cropped {if $user->_logged_in && $profile['user_cover_lightbox']}js_lightbox{/if}" data-init-position="{$profile['user_cover_position']}" data-id="{$profile['user_cover_id']}" data-image="{$profile['user_cover_full']}" data-context="album" src="{$profile['user_cover']}" alt="{$profile['name']}">
				<!-- cropped-cover -->
			{/if}
			
			{if $profile['user_id'] == $user->_data['user_id']}
				<!-- buttons -->
				<div class="profile-cover-buttons">
					<div class="dropdown">
						<div class="toggle" data-toggle="dropdown" role="button" aria-expanded="false">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.58078 19.0112L2.56078 19.0312C2.29078 18.4413 2.12078 17.7713 2.05078 17.0312C2.12078 17.7613 2.31078 18.4212 2.58078 19.0112Z" fill="currentColor"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z" fill="currentColor"/><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.19C2 17.28 2.19 18.23 2.56 19.03C3.42 20.93 5.26 22 7.81 22H16.19C19.83 22 22 19.83 22 16.19V13.9V7.81C22 4.17 19.83 2 16.19 2ZM20.37 12.5C19.59 11.83 18.33 11.83 17.55 12.5L13.39 16.07C12.61 16.74 11.35 16.74 10.57 16.07L10.23 15.79C9.52 15.17 8.39 15.11 7.59 15.65L3.85 18.16C3.63 17.6 3.5 16.95 3.5 16.19V7.81C3.5 4.99 4.99 3.5 7.81 3.5H16.19C19.01 3.5 20.5 4.99 20.5 7.81V12.61L20.37 12.5Z" fill="currentColor"/></svg> {__("Cover")}
						</div>
						<ul class="dropdown-menu dropdown-menu-right ele_create_menu" role="menu">
							<li>
								<a class="profile-cover-change">
									<div class="js_x-uploader" data-handle="cover-user">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M20.659 10a6 6 0 1 0 0 4H21v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v6h-.341zM5 6v3h2V6H5zm10 10a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm0-2a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path><path fill="currentColor" d="M21 6h-2V5H5v14h14v-1h2v2a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v2zM6 6h2v3H6V6zm9 10a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm0 2a6 6 0 1 1 0-12 6 6 0 0 1 0 12zm0-4a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"></path></svg> {__("Upload Photo")}
									</div>
								</a>
							</li>
							<li>
								<a class="action" data-toggle="modal" data-url="users/photos.php?filter=cover&type=user&id={$profile['user_id']}">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" class="hover_path" d="M17.409 19C16.633 16.6012 15.1323 15.1147 13.1434 13.3979C15.0238 11.8971 17.4071 11 20 11V3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H6V1H8V5H4V12C9.22015 12 13.6618 14.4616 15.3127 19H17.409ZM18 1V5H10V3H16V1H18ZM16.5 10C15.6716 10 15 9.32843 15 8.5C15 7.67157 15.6716 7 16.5 7C17.3284 7 18 7.67157 18 8.5C18 9.32843 17.3284 10 16.5 10Z"></path><path fill="currentColor" d="M20 13C18.3221 13 16.7514 13.4592 15.4068 14.2587C16.5908 15.6438 17.5269 17.2471 18.1465 19H20V13ZM16.0037 19C14.0446 14.3021 9.4079 11 4 11V19H16.0037ZM4 9C7.82914 9 11.3232 10.4348 13.9738 12.7961C15.7047 11.6605 17.7752 11 20 11V3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H6V1H8V5H4V9ZM18 1V5H10V3H16V1H18ZM16.5 10C15.6716 10 15 9.32843 15 8.5C15 7.67157 15.6716 7 16.5 7C17.3284 7 18 7.67157 18 8.5C18 9.32843 17.3284 10 16.5 10Z"></path></svg> {__("Select Photo")}
								</a>
							</li>
						</ul>
					</div>
					<div class="profile-cover-position {if !$profile['user_cover']}x-hidden{/if}">
						<input class="js_position-picture-val" type="hidden" name="position-picture-val">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="js_init-position-picture" data-handle="user" data-id="{$profile['user_id']}"><path fill="currentColor" d="M13,6V11H18V7.75L22.25,12L18,16.25V13H13V18H16.25L12,22.25L7.75,18H11V13H6V16.25L1.75,12L6,7.75V11H11V6H7.75L12,1.75L16.25,6H13Z"></path></svg>
					</div>
					<div class="profile-cover-position-buttons">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="js_save-position-picture"><path fill="currentColor" d="M9 16.17L5.53 12.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41l4.18 4.18c.39.39 1.02.39 1.41 0L20.29 7.71c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L9 16.17z"></path></svg>
					</div>
					<div class="profile-cover-position-buttons">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="js_cancel-position-picture"><path fill="currentColor" d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path></svg>
					</div>
					<div class="profile-cover-delete {if !$profile['user_cover']}x-hidden{/if}">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="js_delete-cover" data-handle="cover-user"><path d="M21.0697 5.23C19.4597 5.07 17.8497 4.95 16.2297 4.86V4.85L16.0097 3.55C15.8597 2.63 15.6397 1.25 13.2997 1.25H10.6797C8.34967 1.25 8.12967 2.57 7.96967 3.54L7.75967 4.82C6.82967 4.88 5.89967 4.94 4.96967 5.03L2.92967 5.23C2.50967 5.27 2.20967 5.64 2.24967 6.05C2.28967 6.46 2.64967 6.76 3.06967 6.72L5.10967 6.52C10.3497 6 15.6297 6.2 20.9297 6.73C20.9597 6.73 20.9797 6.73 21.0097 6.73C21.3897 6.73 21.7197 6.44 21.7597 6.05C21.7897 5.64 21.4897 5.27 21.0697 5.23Z" fill="currentColor"/><path d="M19.2297 8.14C18.9897 7.89 18.6597 7.75 18.3197 7.75H5.67975C5.33975 7.75 4.99975 7.89 4.76975 8.14C4.53975 8.39 4.40975 8.73 4.42975 9.08L5.04975 19.34C5.15975 20.86 5.29975 22.76 8.78975 22.76H15.2097C18.6997 22.76 18.8398 20.87 18.9497 19.34L19.5697 9.09C19.5897 8.73 19.4597 8.39 19.2297 8.14ZM13.6597 17.75H10.3297C9.91975 17.75 9.57975 17.41 9.57975 17C9.57975 16.59 9.91975 16.25 10.3297 16.25H13.6597C14.0697 16.25 14.4097 16.59 14.4097 17C14.4097 17.41 14.0697 17.75 13.6597 17.75ZM14.4997 13.75H9.49975C9.08975 13.75 8.74975 13.41 8.74975 13C8.74975 12.59 9.08975 12.25 9.49975 12.25H14.4997C14.9097 12.25 15.2497 12.59 15.2497 13C15.2497 13.41 14.9097 13.75 14.4997 13.75Z" fill="currentColor"/></svg>
					</div>
				</div>
				<!-- buttons -->
				
				<!-- loaders -->
				<div class="profile-cover-change-loader">
					<div class="valign w-100 h-100 flex-column justify-content-center p-4">
						<div class="progress x-progress w-100">
							<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
				</div>
				<div class="profile-cover-position-loader">
					<svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18" fill="currentColor" ><path d="M0 0h24v24H0V0z" fill="none"/><path d="M10.5 9h3c.28 0 .5-.22.5-.5V6h1.79c.45 0 .67-.54.35-.85l-3.79-3.79c-.2-.2-.51-.2-.71 0L7.85 5.15c-.31.31-.09.85.36.85H10v2.5c0 .28.22.5.5.5zm-2 1H6V8.21c0-.45-.54-.67-.85-.35l-3.79 3.79c-.2.2-.2.51 0 .71l3.79 3.79c.31.31.85.09.85-.36V14h2.5c.28 0 .5-.22.5-.5v-3c0-.28-.22-.5-.5-.5zm14.15 1.65l-3.79-3.79c-.32-.32-.86-.1-.86.35V10h-2.5c-.28 0-.5.22-.5.5v3c0 .28.22.5.5.5H18v1.79c0 .45.54.67.85.35l3.79-3.79c.2-.19.2-.51.01-.7zM13.5 15h-3c-.28 0-.5.22-.5.5V18H8.21c-.45 0-.67.54-.35.85l3.79 3.79c.2.2.51.2.71 0l3.79-3.79c.31-.31.09-.85-.35-.85H14v-2.5c0-.28-.22-.5-.5-.5z"/></svg> {__("Drag to reposition cover")}
				</div>
				<!-- loaders -->
			{/if}
		</div>
		<!-- profile-cover -->
		
		<div class="ele_content px-3 pt-3 pb-0 position-relative profile-info-cont">
			<!-- profile-avatar -->
			<div class="profile-avatar-wrapper">
				<img {if $profile['user_picture_id']} {if $user->_logged_in && $profile['user_picture_lightbox']}class="js_lightbox"{/if} data-id="{$profile['user_picture_id']}" data-context="album" data-image="{$profile['user_picture_full']}" {elseif !$profile['user_picture_default']} class="js_lightbox-nodata" data-image="{$profile['user_picture']}" {/if}  src="{$profile['user_picture']}" alt="{$profile['name']}">
				
				{if $profile['user_id'] == $user->_data['user_id']}
					<!-- buttons -->
					<div class="dropdown position-absolute">
						<div class="toggle text-center" data-toggle="dropdown" role="button" aria-expanded="false">
							<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.0002 6C17.3902 6 16.8302 5.65 16.5502 5.11L15.8302 3.66C15.3702 2.75 14.1702 2 13.1502 2H10.8602C9.83017 2 8.63017 2.75 8.17017 3.66L7.45017 5.11C7.17017 5.65 6.61017 6 6.00017 6C3.83017 6 2.11017 7.83 2.25017 9.99L2.77017 18.25C2.89017 20.31 4.00017 22 6.76017 22H17.2402C20.0002 22 21.1002 20.31 21.2302 18.25L21.7502 9.99C21.8902 7.83 20.1702 6 18.0002 6ZM10.5002 7.25H13.5002C13.9102 7.25 14.2502 7.59 14.2502 8C14.2502 8.41 13.9102 8.75 13.5002 8.75H10.5002C10.0902 8.75 9.75017 8.41 9.75017 8C9.75017 7.59 10.0902 7.25 10.5002 7.25ZM12.0002 18.12C10.1402 18.12 8.62017 16.61 8.62017 14.74C8.62017 12.87 10.1302 11.36 12.0002 11.36C13.8702 11.36 15.3802 12.87 15.3802 14.74C15.3802 16.61 13.8602 18.12 12.0002 18.12Z" fill="currentColor"/></svg>
						</div>
						<ul class="dropdown-menu ele_create_menu" role="menu">
							<li>
								<a class="profile-avatar-change">
									<div class="js_x-uploader" data-handle="picture-user">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M20.659 10a6 6 0 1 0 0 4H21v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v6h-.341zM5 6v3h2V6H5zm10 10a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm0-2a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path><path fill="currentColor" d="M21 6h-2V5H5v14h14v-1h2v2a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v2zM6 6h2v3H6V6zm9 10a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm0 2a6 6 0 1 1 0-12 6 6 0 0 1 0 12zm0-4a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"></path></svg> {__("Upload Photo")}
									</div>
								</a>
							</li>
							<li>
								<a class="action" data-toggle="modal" data-url="users/photos.php?filter=avatar&type=user&id={$profile['user_id']}">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" class="hover_path" d="M17.409 19C16.633 16.6012 15.1323 15.1147 13.1434 13.3979C15.0238 11.8971 17.4071 11 20 11V3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H6V1H8V5H4V12C9.22015 12 13.6618 14.4616 15.3127 19H17.409ZM18 1V5H10V3H16V1H18ZM16.5 10C15.6716 10 15 9.32843 15 8.5C15 7.67157 15.6716 7 16.5 7C17.3284 7 18 7.67157 18 8.5C18 9.32843 17.3284 10 16.5 10Z"></path><path fill="currentColor" d="M20 13C18.3221 13 16.7514 13.4592 15.4068 14.2587C16.5908 15.6438 17.5269 17.2471 18.1465 19H20V13ZM16.0037 19C14.0446 14.3021 9.4079 11 4 11V19H16.0037ZM4 9C7.82914 9 11.3232 10.4348 13.9738 12.7961C15.7047 11.6605 17.7752 11 20 11V3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H6V1H8V5H4V9ZM18 1V5H10V3H16V1H18ZM16.5 10C15.6716 10 15 9.32843 15 8.5C15 7.67157 15.6716 7 16.5 7C17.3284 7 18 7.67157 18 8.5C18 9.32843 17.3284 10 16.5 10Z"></path></svg> {__("Select Photo")}
								</a>
							</li>
							<li class="{if $profile['user_picture_default'] || !$profile['user_picture_id']}x-hidden{/if}">
								<a class="profile-avatar-crop">
									<div class="js_init-crop-picture" data-image="{$profile['user_picture_full']}" data-handle="user" data-id="{$profile['user_id']}">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M19 17h3v2h-3v3h-2v-3H6a1 1 0 0 1-1-1V7H2V5h3V2h2v3h11a1 1 0 0 1 1 1v11z"></path><path fill="currentColor" d="M15 17v2H6a1 1 0 0 1-1-1V7H2V5h3V2h2v15h8zm2 5V7H9V5h9a1 1 0 0 1 1 1v11h3v2h-3v3h-2z"></path></svg> {__("Crop Photo")}
									</div>
								</a>
							</li>
							<li class="{if $profile['user_picture_default']}x-hidden{/if}">
								<a class="profile-avatar-delete">
									<div class="js_delete-picture" data-handle="picture-user">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M4 8h16v13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V8zm3-3V3a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v2h5v2H2V5h5zm2-1v1h6V4H9zm0 8v6h2v-6H9zm4 0v6h2v-6h-2z"></path><path fill="currentColor" d="M4 8h16v13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V8zm2 2v10h12V10H6zm3 2h2v6H9v-6zm4 0h2v6h-2v-6zM7 5V3a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v2h5v2H2V5h5zm2-1v1h6V4H9z"></path></svg> {__("Delete Photo")}
									</div>
								</a>
							</li>
						</ul>
					</div>
					<!-- buttons -->
					<!-- loaders -->
					<div class="profile-avatar-change-loader">
						<div class="valign w-100 h-100 flex-column justify-content-center p-4">
							<div class="progress x-progress w-100">
								<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
					</div>
					<!-- loaders -->
				{/if}
			</div>
			<!-- profile-avatar -->
			
			<!-- profile-name -->
			<div class="profile-name-wrapper">
				<h3>
					{$profile['name']}
					{if $profile['user_verified']}
						<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
					{/if}
					{if $profile['user_subscribed']}
						<span class="pro-badge" data-toggle="tooltip" data-placement="top" title="{__($profile['package_name'])} {__('Member')}">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"></path><path fill="currentColor" d="M12 2.02c-5.51 0-9.98 4.47-9.98 9.98s4.47 9.98 9.98 9.98 9.98-4.47 9.98-9.98S17.51 2.02 12 2.02zm-.52 15.86v-4.14H8.82c-.37 0-.62-.4-.44-.73l3.68-7.17c.23-.47.94-.3.94.23v4.19h2.54c.37 0 .61.39.45.72l-3.56 7.12c-.24.48-.95.31-.95-.22z"></path></svg> {__("PRO")}
						</span>
					{/if}
				</h3>
				{if $profile['custom_user_group']}
					<h6><span class="badge badge-primary">{__($profile['custom_user_group']['user_group_title'])}</span></h6>
				{/if}
				<p class="mb-0">@{$profile['user_name']}</p>
			</div>
			<!-- profile-name -->
			
			<!-- profile-buttons -->
			<div class="profile-buttons-wrapper position-absolute">
				{if $user->_logged_in}
					{if $user->_data['user_id'] != $profile['user_id']}
						<!-- add friend -->
						{if $system['friends_enabled']}
							{if $profile['we_friends']}
								<button type="button" class="btn btn-sm btn-success btn-delete js_friend-remove" data-uid="{$profile['user_id']}">
									<i class="fa fa-check mr5"></i>{__("Friends")}
								</button>
							{elseif $profile['he_request']}
								<button type="button" class="btn btn-sm btn-primary js_friend-accept" data-uid="{$profile['user_id']}">
									<i class="fa fa-user-plus mr5"></i>{__("Confirm")}
								</button>
								<button type="button" class="btn btn-sm btn-danger js_friend-decline" data-uid="{$profile['user_id']}">
									<i class="fa fa-times mr5"></i>{__("Decline")}
								</button>
							{elseif $profile['i_request']}
								<button type="button" class="btn btn-sm btn-warning js_friend-cancel" data-uid="{$profile['user_id']}">
									<i class="fa fa-clock mr5"></i>{__("Sent")}
								</button>
							{elseif !$profile['friendship_declined']}
								<button type="button" class="btn btn-sm btn-success js_friend-add" data-uid="{$profile['user_id']}">
									<i class="fa fa-user-plus mr5"></i>{__("Add Friend")}
								</button>
							{/if}
						{/if}
						<!-- add friend -->

						<!-- follow -->
						{if $profile['i_follow']}
							<button type="button" class="btn btn-sm btn-info js_unfollow" data-uid="{$profile['user_id']}">
								<i class="fa fa-check mr5"></i>{__("Following")}
							</button>
						{else}
							<button type="button" class="btn btn-sm btn-info js_follow" data-uid="{$profile['user_id']}">
								<i class="fa fa-rss mr5"></i>{__("Follow")}
							</button>
						{/if}
						<!-- follow -->

						<!-- message -->
						{if $user->_logged_in}
							{if $system['chat_enabled'] && $profile['user_privacy_chat'] == "public" || ($profile['user_privacy_chat'] == "friends" && $profile['we_friends'])}
								<button type="button" class="btn btn-icon btn-rounded btn-secondary mlr5 js_chat-start btn_prof_msg" data-uid="{$profile['user_id']}" data-name="{$profile['name']}" data-link="{$profile['user_name']}" data-picture="{$profile['user_picture']}">
									<svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 0 48 48" width="20" class="d-none"><path fill="currentColor" d="M13.5 28.05H26.2Q26.8 28.05 27.225 27.625Q27.65 27.2 27.65 26.55Q27.65 25.9 27.225 25.475Q26.8 25.05 26.15 25.05H13.45Q12.85 25.05 12.425 25.475Q12 25.9 12 26.55Q12 27.2 12.425 27.625Q12.85 28.05 13.5 28.05ZM13.5 21.55H34.55Q35.15 21.55 35.575 21.125Q36 20.7 36 20.05Q36 19.4 35.575 18.975Q35.15 18.55 34.5 18.55H13.45Q12.85 18.55 12.425 18.975Q12 19.4 12 20.05Q12 20.7 12.425 21.125Q12.85 21.55 13.5 21.55ZM13.5 15.05H34.55Q35.15 15.05 35.575 14.625Q36 14.2 36 13.55Q36 12.9 35.575 12.475Q35.15 12.05 34.5 12.05H13.45Q12.85 12.05 12.425 12.475Q12 12.9 12 13.55Q12 14.2 12.425 14.625Q12.85 15.05 13.5 15.05ZM3.7 40.2V7.1Q3.7 5.75 4.725 4.725Q5.75 3.7 7.1 3.7H40.9Q42.25 3.7 43.275 4.725Q44.3 5.75 44.3 7.1V32.9Q44.3 34.2 43.275 35.25Q42.25 36.3 40.9 36.3H11.7L6.6 41.4Q5.8 42.2 4.75 41.775Q3.7 41.35 3.7 40.2Z"></path></svg> <span>{__("Message")}</span>
								</button>
							{/if}
						{/if}
						<!-- message -->

						<!-- poke & report & block -->
						<div class="d-inline-block dropdown">
							<button type="button" class="btn btn-secondary p-0 rounded-circle plr10" data-toggle="dropdown" data-display="static">
                                <svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 0 24 24" width="20"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="currentColor" d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path></svg>
                            </button>
							<div class="dropdown-menu dropdown-menu-right ele_create_menu post-dropdown-menu">
								<!-- poke -->
								{if $system['pokes_enabled'] && !$profile['i_poked']}
									{if $profile['user_privacy_poke'] == "public" || ($profile['user_privacy_poke'] == "friends" && $profile['we_friends'])}
										<div>
											<div class="dropdown-item pointer js_poke action" data-id="{$profile['user_id']}" data-name="{$profile['name']}">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M12 2c5.52 0 10 4.48 10 10s-4.48 10-10 10S2 17.52 2 12 6.48 2 12 2zm0 18c4.427 0 8-3.573 8-8s-3.573-8-8-8a7.99 7.99 0 0 0-8 8c0 4.427 3.573 8 8 8zm0-2c-3.32 0-6-2.68-6-6s2.68-6 6-6 6 2.68 6 6-2.68 6-6 6zm0-8c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path><path fill="currentColor" d="M12 20a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm0 2C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm0-6a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm0 2a6 6 0 1 1 0-12 6 6 0 0 1 0 12zm0-4a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"></path></svg> {__("Poke")}
												<div class="action-desc">{__("Let them know you are here")}</div>
											</div>
										</div>
									{/if}
								{/if}
								<!-- poke -->
								<!-- share -->
								<div>
									<div class="dropdown-item pointer action" data-toggle="modal" data-url="modules/share.php?node_type=user&node_username={$profile['user_name']}">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" d="M13.1202 17.0228L8.92129 14.7324C8.19135 15.5125 7.15261 16 6 16C3.79086 16 2 14.2091 2 12C2 9.79086 3.79086 8 6 8C7.15255 8 8.19125 8.48746 8.92118 9.26746L13.1202 6.97713C13.0417 6.66441 13 6.33707 13 6C13 3.79086 14.7909 2 17 2C19.2091 2 21 3.79086 21 6C21 8.20914 19.2091 10 17 10C15.8474 10 14.8087 9.51251 14.0787 8.73246L9.87977 11.0228C9.9583 11.3355 10 11.6629 10 12C10 12.3371 9.95831 12.6644 9.87981 12.9771L14.0788 15.2675C14.8087 14.4875 15.8474 14 17 14C19.2091 14 21 15.7909 21 18C21 20.2091 19.2091 22 17 22C14.7909 22 13 20.2091 13 18C13 17.6629 13.0417 17.3355 13.1202 17.0228ZM6 14C7.10457 14 8 13.1046 8 12C8 10.8954 7.10457 10 6 10C4.89543 10 4 10.8954 4 12C4 13.1046 4.89543 14 6 14ZM17 8C18.1046 8 19 7.10457 19 6C19 4.89543 18.1046 4 17 4C15.8954 4 15 4.89543 15 6C15 7.10457 15.8954 8 17 8ZM17 20C18.1046 20 19 19.1046 19 18C19 16.8954 18.1046 16 17 16C15.8954 16 15 16.8954 15 18C15 19.1046 15.8954 20 17 20Z"></path><path fill="currentColor" class="hover_path" d="M13.5759 17.2714L8.46576 14.484C7.83312 15.112 6.96187 15.5 6 15.5C4.067 15.5 2.5 13.933 2.5 12C2.5 10.067 4.067 8.5 6 8.5C6.96181 8.5 7.83301 8.88796 8.46564 9.51593L13.5759 6.72855C13.5262 6.49354 13.5 6.24983 13.5 6C13.5 4.067 15.067 2.5 17 2.5C18.933 2.5 20.5 4.067 20.5 6C20.5 7.933 18.933 9.5 17 9.5C16.0381 9.5 15.1669 9.11201 14.5343 8.48399L9.42404 11.2713C9.47382 11.5064 9.5 11.7501 9.5 12C9.5 12.2498 9.47383 12.4935 9.42408 12.7285L14.5343 15.516C15.167 14.888 16.0382 14.5 17 14.5C18.933 14.5 20.5 16.067 20.5 18C20.5 19.933 18.933 21.5 17 21.5C15.067 21.5 13.5 19.933 13.5 18C13.5 17.7502 13.5262 17.5064 13.5759 17.2714Z"></path></svg> {__("Share")}
										<div class="action-desc">{__("Share this profile")}</div>
									</div>
								</div>
								<!-- share -->
								<!-- report -->
								<div>
									<div class="dropdown-item pointer action" data-toggle="modal" data-url="data/report.php?do=create&handle=user&id={$profile['user_id']}">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M3 3h9.382a1 1 0 0 1 .894.553L14 5h6a1 1 0 0 1 1 1v11a1 1 0 0 1-1 1h-6.382a1 1 0 0 1-.894-.553L12 16H5v6H3V3z"></path><path fill="currentColor" d="M5 16v6H3V3h9.382a1 1 0 0 1 .894.553L14 5h6a1 1 0 0 1 1 1v11a1 1 0 0 1-1 1h-6.382a1 1 0 0 1-.894-.553L12 16H5zM5 5v9h8.236l1 2H19V7h-6.236l-1-2H5z"></path></svg> {__("Report")}
										<div class="action-desc">{__("Report this to admins")}</div>
									</div>
								</div>
								<!-- report -->
								<!-- block -->
								<div>
									<div class="dropdown-item pointer js_block-user action" data-uid="{$profile['user_id']}">
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm4.891-13.477a6.04 6.04 0 0 0-1.414-1.414l-8.368 8.368a6.04 6.04 0 0 0 1.414 1.414l8.368-8.368z"></path><path fill="currentColor" d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm0-2a8 8 0 1 0 0-16 8 8 0 0 0 0 16zm4.891-11.477l-8.368 8.368a6.04 6.04 0 0 1-1.414-1.414l8.368-8.368a6.04 6.04 0 0 1 1.414 1.414z"></path></svg> {__("Block")}
										<div class="action-desc">{__("This user won't be able to reach you")}</div>
									</div>
								</div>
								<!-- block -->
								<!-- manage -->
								{if $user->_is_admin}
									<div class="dropdown-divider"></div>
									<div>
										<a href="{$system['system_url']}/admincp/users/edit/{$profile['user_id']}" class="dropdown-item">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M9.243 19H21v2H3v-4.243l9.9-9.9 4.242 4.244L9.242 19zm5.07-13.556l2.122-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"></path><path fill="currentColor" d="M5 19h1.414l9.314-9.314-1.414-1.414L5 17.586V19zm16 2H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L9.243 19H21v2zM15.728 6.858l1.414 1.414 1.414-1.414-1.414-1.414-1.414 1.414z"></path></svg> {__("Edit in Admin Panel")}
										</a>
									</div>
								{elseif $user->_is_moderator}
									<div class="dropdown-divider"></div>
									<div>
										<a href="{$system['system_url']}/modcp/users/edit/{$profile['user_id']}" class="dropdown-item">
											<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M9.243 19H21v2H3v-4.243l9.9-9.9 4.242 4.244L9.242 19zm5.07-13.556l2.122-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"></path><path fill="currentColor" d="M5 19h1.414l9.314-9.314-1.414-1.414L5 17.586V19zm16 2H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L9.243 19H21v2zM15.728 6.858l1.414 1.414 1.414-1.414-1.414-1.414-1.414 1.414z"></path></svg> {__("Edit in Moderator Panel")}
										</a>
									</div>
								{/if}
								<!-- manage -->
							</div>
						</div>
						<!-- poke & report & block -->
					{else}
						<!-- edit -->
						<a href="{$system['system_url']}/settings/profile" class="btn btn-secondary btn-mat">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M3 17.46v3.04c0 .28.22.5.5.5h3.04c.13 0 .26-.05.35-.15L17.81 9.94l-3.75-3.75L3.15 17.1c-.1.1-.15.22-.15.36zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z"/></svg> {__("Edit")}
						</a>
						<!-- edit -->
					{/if}
				{/if}
			</div>
			<!-- profile-buttons -->
			
			<!-- social links -->
			{if $system['social_info_enabled']}
				{if $profile['user_social_facebook'] || $profile['user_social_twitter'] || $profile['user_social_youtube'] || $profile['user_social_instagram'] || $profile['user_social_twitch'] || $profile['user_social_linkedin'] || $profile['user_social_vkontakte']}
					<div class="valign mx-n1 pt-3 pb-1">
						{if $profile['user_social_facebook']}
							<a target="_blank" href="{$profile['user_social_facebook']}" class="mx-1">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"><path fill="#4267b2" d="M12 2C6.477 2 2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.879V14.89h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.989C18.343 21.129 22 16.99 22 12c0-5.523-4.477-10-10-10z"/></svg>
							</a>
						{/if}
						{if $profile['user_social_twitter']}
							<a target="_blank" href="{$profile['user_social_twitter']}" class="mx-1">
							   <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"><path fill="#1da1f2" d="M22.162 5.656a8.384 8.384 0 0 1-2.402.658A4.196 4.196 0 0 0 21.6 4c-.82.488-1.719.83-2.656 1.015a4.182 4.182 0 0 0-7.126 3.814 11.874 11.874 0 0 1-8.62-4.37 4.168 4.168 0 0 0-.566 2.103c0 1.45.738 2.731 1.86 3.481a4.168 4.168 0 0 1-1.894-.523v.052a4.185 4.185 0 0 0 3.355 4.101 4.21 4.21 0 0 1-1.89.072A4.185 4.185 0 0 0 7.97 16.65a8.394 8.394 0 0 1-6.191 1.732 11.83 11.83 0 0 0 6.41 1.88c7.693 0 11.9-6.373 11.9-11.9 0-.18-.005-.362-.013-.54a8.496 8.496 0 0 0 2.087-2.165z"/></svg>
							</a>
						{/if}
						{if $profile['user_social_youtube']}
							<a target="_blank" href="{$profile['user_social_youtube']}" class="mx-1">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"><path fill="#ff0000" d="M21.543 6.498C22 8.28 22 12 22 12s0 3.72-.457 5.502c-.254.985-.997 1.76-1.938 2.022C17.896 20 12 20 12 20s-5.893 0-7.605-.476c-.945-.266-1.687-1.04-1.938-2.022C2 15.72 2 12 2 12s0-3.72.457-5.502c.254-.985.997-1.76 1.938-2.022C6.107 4 12 4 12 4s5.896 0 7.605.476c.945.266 1.687 1.04 1.938 2.022zM10 15.5l6-3.5-6-3.5v7z"/></svg>
							</a>
						{/if}
						{if $profile['user_social_instagram']}
							<a target="_blank" href="{$profile['user_social_instagram']}" class="mx-1">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"><path fill="#d14668" d="M12 2c2.717 0 3.056.01 4.122.06 1.065.05 1.79.217 2.428.465.66.254 1.216.598 1.772 1.153a4.908 4.908 0 0 1 1.153 1.772c.247.637.415 1.363.465 2.428.047 1.066.06 1.405.06 4.122 0 2.717-.01 3.056-.06 4.122-.05 1.065-.218 1.79-.465 2.428a4.883 4.883 0 0 1-1.153 1.772 4.915 4.915 0 0 1-1.772 1.153c-.637.247-1.363.415-2.428.465-1.066.047-1.405.06-4.122.06-2.717 0-3.056-.01-4.122-.06-1.065-.05-1.79-.218-2.428-.465a4.89 4.89 0 0 1-1.772-1.153 4.904 4.904 0 0 1-1.153-1.772c-.248-.637-.415-1.363-.465-2.428C2.013 15.056 2 14.717 2 12c0-2.717.01-3.056.06-4.122.05-1.066.217-1.79.465-2.428a4.88 4.88 0 0 1 1.153-1.772A4.897 4.897 0 0 1 5.45 2.525c.638-.248 1.362-.415 2.428-.465C8.944 2.013 9.283 2 12 2zm0 5a5 5 0 1 0 0 10 5 5 0 0 0 0-10zm6.5-.25a1.25 1.25 0 0 0-2.5 0 1.25 1.25 0 0 0 2.5 0zM12 9a3 3 0 1 1 0 6 3 3 0 0 1 0-6z"/></svg>
							</a>
						{/if}
						{if $profile['user_social_twitch']}
							<a target="_blank" href="{$profile['user_social_twitch']}" class="mx-1">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"><path fill="#9147ff" d="M11.64 5.93H13.07V10.21H11.64M15.57 5.93H17V10.21H15.57M7 2L3.43 5.57V18.43H7.71V22L11.29 18.43H14.14L20.57 12V2M19.14 11.29L16.29 14.14H13.43L10.93 16.64V14.14H7.71V3.43H19.14Z"/></svg>
							</a>
						{/if}
						{if $profile['user_social_linkedin']}
							<a target="_blank" href="{$profile['user_social_linkedin']}" class="mx-1">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"><path fill="#0076b6" d="M6.94 5a2 2 0 1 1-4-.002 2 2 0 0 1 4 .002zM7 8.48H3V21h4V8.48zm6.32 0H9.34V21h3.94v-6.57c0-3.66 4.77-4 4.77 0V21H22v-7.93c0-6.17-7.06-5.94-8.72-2.91l.04-1.68z"/></svg>
							</a>
						{/if}
						{if $profile['user_social_vkontakte']}
							<a target="_blank" href="{$profile['user_social_vkontakte']}" class="mx-1">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="22" height="22"><path fill="#4a76a8" d="M15.07 2H8.93C3.33 2 2 3.33 2 8.93V15.07C2 20.67 3.33 22 8.93 22H15.07C20.67 22 22 20.67 22 15.07V8.93C22 3.33 20.67 2 15.07 2M18.15 16.27H16.69C16.14 16.27 15.97 15.82 15 14.83C14.12 14 13.74 13.88 13.53 13.88C13.24 13.88 13.15 13.96 13.15 14.38V15.69C13.15 16.04 13.04 16.26 12.11 16.26C10.57 16.26 8.86 15.32 7.66 13.59C5.85 11.05 5.36 9.13 5.36 8.75C5.36 8.54 5.43 8.34 5.85 8.34H7.32C7.69 8.34 7.83 8.5 7.97 8.9C8.69 11 9.89 12.8 10.38 12.8C10.57 12.8 10.65 12.71 10.65 12.25V10.1C10.6 9.12 10.07 9.03 10.07 8.68C10.07 8.5 10.21 8.34 10.44 8.34H12.73C13.04 8.34 13.15 8.5 13.15 8.88V11.77C13.15 12.08 13.28 12.19 13.38 12.19C13.56 12.19 13.72 12.08 14.05 11.74C15.1 10.57 15.85 8.76 15.85 8.76C15.95 8.55 16.11 8.35 16.5 8.35H17.93C18.37 8.35 18.47 8.58 18.37 8.89C18.19 9.74 16.41 12.25 16.43 12.25C16.27 12.5 16.21 12.61 16.43 12.9C16.58 13.11 17.09 13.55 17.43 13.94C18.05 14.65 18.53 15.24 18.66 15.65C18.77 16.06 18.57 16.27 18.15 16.27Z"/></svg>
							</a>
						{/if}
					</div>
				{/if}
			{/if}
			<!-- social links -->
			
			<!-- profile-tabs -->
			<div class="border-top mx-n3 mt15 ele_user_profile_nav">
				<ul class="d-flex px-2 m-0">
					<li>
						<a href="{$system['system_url']}/{$profile['user_name']}" class='d-block position-relative text-center plr20 ptb15 {if $view == ""}active{/if}'>{__("Timeline")}</a>
					</li>
					<li>
						<a href="{$system['system_url']}/{$profile['user_name']}/{if $system['friends_enabled']}friends{else}followers{/if}" class='d-block position-relative text-center plr20 ptb15 {if $view == "friends" || $view == "followers" || $view == "followings"}active{/if}'>
							{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if} {if $profile['friends_count'] > 0}<span>{$profile['friends_count']}</span>{/if}
						</a>
					</li>
					<li>
						<a href="{$system['system_url']}/{$profile['user_name']}/photos" class='d-block position-relative text-center plr20 ptb15 {if $view == "photos" || $view == "albums" || $view == "album"}active{/if}'>{__("Photos")}</a>
					</li>
					{if $system['videos_enabled']}
						<li>
							<a href="{$system['system_url']}/{$profile['user_name']}/videos" class='d-block position-relative text-center plr20 ptb15 {if $view == "videos"}active{/if}'>{__("Videos")}</a>
						</li>
					{/if}
					{if $system['reels_enabled']}
						<li>
							<a href="{$system['system_url']}/{$profile['user_name']}/reels" class='d-block position-relative text-center plr20 ptb15 {if $view == "reels"}active{/if}'>{__("Reels")}</a>
						</li>
					{/if}
					{if $profile['can_write_blogs']}
						<li>
							<a href="{$system['system_url']}/{$profile['user_name']}/blogs" class='d-block position-relative text-center plr20 ptb15 {if $view == "blogs"}active{/if}'>{__("Blogs")}</a>
						</li>
					{/if}
					{if $profile['can_sell_products']}
						<li>
							<a href="{$system['system_url']}/{$profile['user_name']}/products" class='d-block position-relative text-center plr20 ptb15 {if $view == "products"}active{/if}'>{__("Store")}</a>
						</li>
					{/if}
					{if $system['pages_enabled']}
						<li>
							<a href="{$system['system_url']}/{$profile['user_name']}/pages" class='d-block position-relative text-center plr20 ptb15 {if $view == "pages"}active{/if}'>{__("Pages")}</a>
						</li>
					{/if}
					{if $system['groups_enabled']}
						<li>
							<a href="{$system['system_url']}/{$profile['user_name']}/groups" class='d-block position-relative text-center plr20 ptb15 {if $view == "groups"}active{/if}'>{__("Groups")}</a>
						</li>
					{/if}
					{if $system['events_enabled']}
						<li>
							<a href="{$system['system_url']}/{$profile['user_name']}/events" class='d-block position-relative text-center plr20 ptb15 {if $view == "events"}active{/if}'>{__("Events")}</a>
						</li>
					{/if}
				</ul>
			</div>
			<!-- profile-tabs -->
		</div>
	</div>
</div>
<!-- profile-header -->


<!-- page content -->
<div class="container ele_prof_cont_wide">
	<!-- profile-content -->
	<div class="row mb30">
		<!-- panel [mutual-friends] -->
		{if $user->_logged_in && $user->_data['user_id'] != $profile['user_id'] && !$profile['we_friends'] && !$profile['friendship_declined']}
			<div class="col-sm-12 d-none">
				<div class="ele_content mb20 p-3 panel-mutual-friends">
					<div class="valign ele_sidebar_widget_title px-0 pb-1 pt-0">
						<b>{__("Do you know")} {$profile['name']}?</b>
					</div>
					<p>
						{__("To see what")} {$profile['name']} {__("shares with friends")}, {__("send a friend request")}
					</p>
					{if $profile['mutual_friends_count'] && $profile['mutual_friends_count'] > 0}
						<div class="valign">
							<ul class="valign">
								{foreach $profile['mutual_friends'] as $mutual_friend}
									<li class="rounded-circle">
										<a data-toggle="tooltip" data-placement="top" title="{if $system['show_usernames_enabled']}{$mutual_friend['user_name']}{else}{$mutual_friend['user_firstname']} {$mutual_friend['user_lastname']}{/if}" class="post-avatar-picture w-100 h-100" href="{$system['system_url']}/{$mutual_friend['user_name']}" style="background-image:url({$mutual_friend['user_picture']});">
										</a>
									</li>
									{if $mutual_friend@index > 6}{break}{/if}
								{/foreach}
							</ul>&nbsp;&nbsp;&nbsp;&nbsp;
							<div class="text-underline" data-toggle="modal" data-url="users/mutual_friends.php?uid={$profile['user_id']}">{$profile['mutual_friends_count']} {__("Mutual Friends")}</div>
						</div>
					{/if}
				</div>
			</div>
		{/if}
		<!-- panel [mutual-friends] -->

		<!-- view content -->
		{if $view == ""}

			<!-- left panel -->
			<div class="col-lg-4 sidebar rightcol leftcol js_sticky-sidebar">
				<!-- subscribe -->
				{if $user->_logged_in && $user->_data['user_id'] != $profile['user_id'] && $profile['has_subscriptions_plans']}
					<div class="mb15">
						<button class="btn btn-primary btn-mat btn-block" data-toggle="modal" data-url="monetization/controller.php?do=get_plans&node_id={$profile['user_id']}&node_type=profile" data-size="large">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M13.5476 3.25C15.3866 3.24999 16.8308 3.24998 17.9694 3.3786C19.1316 3.50988 20.074 3.78362 20.8574 4.40228C21.0919 4.58749 21.3093 4.79205 21.507 5.0138C22.1732 5.76101 22.4707 6.66669 22.6124 7.77785C22.6287 7.9057 22.6368 7.96963 22.6222 8.02578C22.5987 8.11553 22.5299 8.19375 22.4438 8.22835C22.39 8.25 22.3226 8.25 22.1878 8.25H1.81224H1.81223C1.67746 8.25 1.61007 8.25 1.55622 8.22835C1.47015 8.19375 1.40128 8.11553 1.37784 8.02578C1.36318 7.96963 1.37133 7.9057 1.38764 7.77785C1.52933 6.66669 1.82682 5.76101 2.49299 5.0138C2.69069 4.79205 2.90812 4.58749 3.14264 4.40228C3.92602 3.78362 4.86843 3.50988 6.03059 3.3786C7.16918 3.24998 8.61347 3.24999 10.4525 3.25H13.5476ZM22.75 12.0527C22.75 13.7768 22.75 15.1427 22.6124 16.2222C22.4707 17.3333 22.1732 18.239 21.507 18.9862C21.3093 19.2079 21.0919 19.4125 20.8574 19.5977C20.074 20.2164 19.1316 20.4901 17.9694 20.6214C16.8308 20.75 15.3866 20.75 13.5475 20.75H10.4525C8.61345 20.75 7.16917 20.75 6.03058 20.6214C4.86842 20.4901 3.926 20.2164 3.14263 19.5977C2.90811 19.4125 2.69068 19.2079 2.49298 18.9862C1.82681 18.239 1.52932 17.3333 1.38763 16.2222C1.24998 15.1427 1.24999 13.7767 1.25 12.0527V11.9473C1.25 11.3715 1.24999 10.8357 1.25512 10.3371C1.25795 10.0614 1.25937 9.92356 1.34704 9.83678C1.43472 9.75 1.57361 9.75 1.85139 9.75H22.1486C22.4264 9.75 22.5653 9.75 22.653 9.83678C22.7406 9.92356 22.7421 10.0614 22.7449 10.3371C22.75 10.8355 22.75 11.3712 22.75 11.9467V11.9468V11.947V11.9471V11.9472V12.0527ZM10.25 16C10.25 15.5858 10.5858 15.25 11 15.25H12.5C12.9142 15.25 13.25 15.5858 13.25 16C13.25 16.4142 12.9142 16.75 12.5 16.75H11C10.5858 16.75 10.25 16.4142 10.25 16ZM15.5 15.25C15.0858 15.25 14.75 15.5858 14.75 16C14.75 16.4142 15.0858 16.75 15.5 16.75H19C19.4142 16.75 19.75 16.4142 19.75 16C19.75 15.5858 19.4142 15.25 19 15.25H15.5Z" fill="currentColor"/></svg> {__("SUBSCRIBE FOR")} {if $profile['user_monetization_discount_enabled']}{print_money($profile['user_monetization_min_price'] * (1 - $profile['user_monetization_discount_percent'] / 100))}{/if}{if $profile['user_monetization_discount_enabled']}<span style="text-decoration: line-through;" class="ml5">{/if}{print_money($profile['user_monetization_min_price'])}{if $profile['user_monetization_discount_enabled']}</span>{/if}
						</button>
					</div>
				{/if}
				<!-- subscribe -->

				<!-- tips -->
				{if $user->_logged_in && $user->_data['user_id'] != $profile['user_id'] && $profile['can_receive_tips'] && $profile['user_tips_enabled']}
					<div class="mb15">
						<button type="button" class="btn btn-primary btn-mat btn-block" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$profile['user_id']}"}'>
							{__("Send a Tip")}
						</button>
					</div>
				{/if}
				<!-- tips -->
				
				<!-- gifts -->
				{if $user->_logged_in && $user->_data['user_id'] != $profile['user_id'] && $system['gifts_enabled']}
					{if $user->_data['can_send_gifts'] && ($profile['user_privacy_gifts'] == "public" || ($profile['user_privacy_gifts'] == "friends" && $profile['we_friends']))}
						<button type="button" class="btn btn-block btn-mat btn_send_gift mb15" data-toggle="modal" data-url="#gifts" data-options='{ "uid": {$profile["user_id"]} }'>
							<img src="{$system['system_url']}/content/themes/{$system['theme']}/images/gift.svg">{__("Send a Gift")}
						</button>
					{/if}
				{/if}
				<!-- gifts -->
				
				<!-- search -->
				<div class="ele_content p-3 mb15">
					<form action="{$system['system_url']}/{$profile['user_name']}/search" method="get">
						<div class="input-group align-items-center el_prof_search_bar">
							<input type="text" name="query" class="form-control" placeholder='{__("Search")}'>
							<button type="submit" class="btn p-2 rounded-circle border-0 shadow-none btn-primary">
								<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="currentColor" d="M15.5 14h-.79l-.28-.27c1.2-1.4 1.82-3.31 1.48-5.34-.47-2.78-2.79-5-5.59-5.34-4.23-.52-7.79 3.04-7.27 7.27.34 2.8 2.56 5.12 5.34 5.59 2.03.34 3.94-.28 5.34-1.48l.27.28v.79l4.25 4.25c.41.41 1.08.41 1.49 0 .41-.41.41-1.08 0-1.49L15.5 14zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
							</button>
						</div>
					</form>
				</div>
				<!-- search -->
				
				{if $system['merits_enabled'] && $system['merits_widgets_statistics'] && $profile['user_id'] == $user->_data['user_id']}
					<!-- panel [merits] -->
					<div class="ele_content p-3 mb15">
						<div class="valign ele_sidebar_widget_title px-0 pt-1 mb-2">
							<b>{__("Merits")}</b>
						</div>

						<div class="row text-center">
							<div class="col-4 mb-2">
								<div class="mb-2">
									<svg xmlns="http://www.w3.org/2000/svg" height="34" viewBox="0 -960 960 960" width="34" fill="currentColor"><path d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143Zm126 18L314-169q-11 7-23 6t-21-8q-9-7-14-17.5t-2-23.5l44-189-147-127q-10-9-12.5-20.5T140-571q4-11 12-18t22-9l194-17 75-178q5-12 15.5-18t21.5-6q11 0 21.5 6t15.5 18l75 178 194 17q14 2 22 9t12 18q4 11 1.5 22.5T809-528L662-401l44 189q3 13-2 23.5T690-171q-9 7-21 8t-23-6L480-269Zm0-201Z"/></svg>
								</div>
								<div class="mt10">
									<div class="fw-bold">{__("Received")}</div>
									<div><span class="badge bg-light text-primary">{$user->_data['merits_balance']['received']}</span></div>
								</div>
							</div>
							<div class="col-4 mb-2">
								<div class="mb-2">
									<svg xmlns="http://www.w3.org/2000/svg" height="34" viewBox="0 -960 960 960" width="34" fill="currentColor"><path d="M480-269 314-169q-11 7-23 6t-21-8q-9-7-14-17.5t-2-23.5l44-189-147-127q-10-9-12.5-20.5T140-571q4-11 12-18t22-9l194-17 75-178q5-12 15.5-18t21.5-6q11 0 21.5 6t15.5 18l75 178 194 17q14 2 22 9t12 18q4 11 1.5 22.5T809-528L662-401l44 189q3 13-2 23.5T690-171q-9 7-21 8t-23-6L480-269Z"/></svg>
								</div>
								<div class="mt10">
									<div class="fw-bold">{__("Sent")}</div>
									<div><span class="badge bg-light text-primary">{$user->_data['merits_balance']['sent']}</span></div>
								</div>
							</div>
							<div class="col-4 mb-2">
								<div class="mb-2">
									<svg xmlns="http://www.w3.org/2000/svg" height="34" viewBox="0 -960 960 960" width="34" fill="currentColor"><path d="M480-675v312l126 77-33-144 111-96-146-13-58-136Zm0 406L314-169q-11 7-23 6t-21-8q-9-7-14-17.5t-2-23.5l44-189-147-127q-10-9-12.5-20.5T140-571q4-11 12-18t22-9l194-17 75-178q5-12 15.5-18t21.5-6q11 0 21.5 6t15.5 18l75 178 194 17q14 2 22 9t12 18q4 11 1.5 22.5T809-528L662-401l44 189q3 13-2 23.5T690-171q-9 7-21 8t-23-6L480-269Z"/></svg>
								</div>
								<div class="mt10">
									<div class="fw-bold">{__("Left")}</div>
									<div><span class="badge bg-light text-primary">{$user->_data['merits_balance']['remining']}</span></div>
								</div>
							</div>
						</div>
						<div class="mt10 text-center">
							<button class="btn btn-mat btn-primary" data-toggle="modal" data-size="large" data-url="users/merits.php?do=publish">{__("Send Merit")}</button>
						</div>
					</div>
					<!-- panel [merits] -->
				{/if}
				
				<!-- panel [profile completion] -->
				{if isset($profile['profile_completion']) && $profile['profile_completion'] < 100}
					<div class="ele_content p-3 mb15">
						<div class="valign ele_sidebar_widget_title p-0">
							<b>{__("Profile Completion")}</b>
							<span>{$profile['profile_completion']}%</span>
						</div>
						<div class="progress progress-bar-success mt-2 mb-3">
							<div class="progress-bar" role="progressbar" aria-valuenow="{$profile['profile_completion']}" aria-valuemin="0" aria-valuemax="100" style="width: {$profile['profile_completion']}%"></div>
						</div>
						
						{if $system['verification_for_posts']}
						<div class="mt-1">
							{if !$profile['user_verified']}
								<a href="{$system['system_url']}/settings/verification">
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Verify your account to add content")}
								</a>
							{else}
								<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
								<span style="text-decoration: line-through;">{__("Verify your account to add content")}</span>
							{/if}
						</div>
						{/if}
						<div class="mt-1">
							{if $profile['user_picture_default']}
								<span class="text-link js_profile-image-trigger">
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Add your profile picture")}
								</span>
							{else}
								<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
								<span style="text-decoration: line-through;">{__("Add your profile picture")}</span>
							{/if}
						</div>
						<div class="mt-1">
							{if $profile['user_cover_default']}
								<span class="text-link js_profile-cover-trigger">
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Add your profile cover")}
								</span>
							{else}
								<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
								<span style="text-decoration: line-through;">{__("Add your profile cover")}</span>
							{/if}
						</div>
						{if $system['biography_info_enabled']}
							<div class="mt-1">
								{if !$profile['user_biography']}
									<a href="{$system['system_url']}/settings/profile">
										<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Add your biography")}
									</a>
								{else}
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
									<span style="text-decoration: line-through;">{__("Add your biography")}</span>
								{/if}
							</div>
						{/if}
						<div class="mt-1">
							{if !$profile['user_birthdate']}
								<a href="{$system['system_url']}/settings/profile">
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Add your birthdate")}
								</a>
							{else}
								<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
								<span style="text-decoration: line-through;">{__("Add your birthdate")}</span>
							{/if}
						</div>
						{if $system['relationship_info_enabled']}
							<div class="mt-1">
								{if !$profile['user_relationship']}
									<a href="{$system['system_url']}/settings/profile">
										<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Add your relationship")}
									</a>
								{else}
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
									<span style="text-decoration: line-through;">{__("Add your relationship")}</span>
								{/if}
							</div>
						{/if}
						{if $system['work_info_enabled']}
							<div class="mt-1">
								{if !$profile['user_work_title'] || !$profile['user_work_place']}
									<a href="{$system['system_url']}/settings/profile/work">
										<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Add your work info")}
									</a>
								{else}
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
									<span style="text-decoration: line-through;">{__("Add your work info")}</span>
								{/if}
							</div>
						{/if}
						{if $system['location_info_enabled']}
							<div class="mt-1">
								{if !$profile['user_current_city'] || !$profile['user_hometown']}
									<a href="{$system['system_url']}/settings/profile/location">
										<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Add your location info")}
									</a>
								{else}
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
									<span style="text-decoration: line-through;">{__("Add your location info")}</span>
								{/if}
							</div>
						{/if}
						{if $system['education_info_enabled']}
							<div class="mt-1">
								{if !$profile['user_edu_major'] || !$profile['user_edu_school']}
									<a href="{$system['system_url']}/settings/profile/education">
										<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="4" y="4" width="6" height="6" rx="1"></rect><rect x="14" y="4" width="6" height="6" rx="1"></rect><rect x="4" y="14" width="6" height="6" rx="1"></rect><path d="M14 17h6m-3 -3v6"></path></svg>{__("Add your education info")}
									</a>
								{else}
									<svg xmlns="http://www.w3.org/2000/svg" class="mr5 align-text-top green" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><path d="M9 12l2 2l4 -4"></path></svg>
									<span style="text-decoration: line-through;">{__("Add your education info")}</span>
								{/if}
							</div>
						{/if}
					</div>
				{/if}
				<!-- panel [profile completion] -->

				<!-- panel [about] -->
				<div class="ele_content px-3 py-2 mb15">
					<div class="valign ele_sidebar_widget_title px-0 pb-0 pt-1">
						<b>{__("About")}</b>
					</div>
					<div class="profle-meta-wrapper">
						{if $system['biography_info_enabled']}
							{if !is_empty($profile['user_biography'])}
								<div class="p-0 pt5 m-0">
									<div class="js_readmore overflow-hidden">
										{$profile['user_biography']|nl2br}
									</div>
								</div>
								<hr class="my-2">
							{/if}
						{/if}
						
						<div>
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M20 17v-12c0 -1.121 -.879 -2 -2 -2s-2 .879 -2 2v12l2 2l2 -2z"></path><path d="M16 7h4"></path><path d="M18 19h-13a2 2 0 1 1 0 -4h4a2 2 0 1 0 0 -4h-3"></path></svg> {$profile['posts_count']} {__("Posts")}
						</div>
						<div>
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M15 8l.01 0"></path><path d="M4 4m0 3a3 3 0 0 1 3 -3h10a3 3 0 0 1 3 3v10a3 3 0 0 1 -3 3h-10a3 3 0 0 1 -3 -3z"></path><path d="M4 15l4 -4a3 5 0 0 1 3 0l5 5"></path><path d="M14 14l1 -1a3 5 0 0 1 3 0l2 2"></path></svg> {$profile['photos_count']} {__("Photos")}
						</div>
						{if $system['videos_enabled']}
							<div>
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M15 10l4.553 -2.276a1 1 0 0 1 1.447 .894v6.764a1 1 0 0 1 -1.447 .894l-4.553 -2.276v-4z"></path><path d="M3 6m0 2a2 2 0 0 1 2 -2h8a2 2 0 0 1 2 2v8a2 2 0 0 1 -2 2h-8a2 2 0 0 1 -2 -2z"></path></svg> {$profile['videos_count']} {__("Videos")}
							</div>
						{/if}
						
						{if $system['work_info_enabled']}
							{if $profile['user_work_title']}
								{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_work'] == "public" || ($profile['user_privacy_work'] == "friends" && $profile['we_friends'])}
									<div>
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="3" y="7" width="18" height="13" rx="2"></rect><path d="M8 7v-2a2 2 0 0 1 2 -2h4a2 2 0 0 1 2 2v2"></path><line x1="12" y1="12" x2="12" y2="12.01"></line><path d="M3 13a20 20 0 0 0 18 0"></path></svg>
										{$profile['user_work_title']} 
										{if $profile['user_work_place']}
											{__("at")} 
											{if $profile['user_work_url']}
												<a target="_blank" href="{$profile['user_work_url']}" class="bold">{$profile['user_work_place']}</a>
											{else}
												<span class="bold">{$profile['user_work_place']}</span>
											{/if}
										{/if}
									</div>
								{/if}
							{/if}
						{/if}
						
						{if $system['location_info_enabled']}
							{if $profile['user_current_city']}
								{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_location'] == "public" || ($profile['user_privacy_location'] == "friends" && $profile['we_friends'])}
									<div>
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><polyline points="5 12 3 12 12 3 21 12 19 12"></polyline><path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7"></path><rect x="10" y="12" width="4" height="4"></rect></svg>
										{__("Lives in")} <span class="bold">{$profile['user_current_city']}</span>
									</div>
								{/if}
							{/if}
							
							{if $profile['user_hometown']}
								{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_location'] == "public" || ($profile['user_privacy_location'] == "friends" && $profile['we_friends'])}
									<div>
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="11" r="3"></circle><path d="M17.657 16.657l-4.243 4.243a2 2 0 0 1 -2.827 0l-4.244 -4.243a8 8 0 1 1 11.314 0z"></path></svg>
										{__("From")} <span class="bold">{$profile['user_hometown']}</span>
									</div>
								{/if}
							{/if}
						{/if}
						
						{if $system['education_info_enabled']}
							{if $profile['user_edu_major']}
								{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_education'] == "public" || ($profile['user_privacy_education'] == "friends" && $profile['we_friends'])}
									<div>
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M22 9l-10 -4l-10 4l10 4l10 -4v6"></path><path d="M6 10.6v5.4a6 3 0 0 0 12 0v-5.4"></path></svg>
										{__("Studied")} {$profile['user_edu_major']} 
										{__("at")}  <span class="bold">{$profile['user_edu_school']}</span>
										{if $profile['user_edu_class']}
											<div class="details">
												{__("Class of")} {$profile['user_edu_class']}
											</div>
										{/if}
									</div>
								{/if}
							{/if}
						{/if}
						
						{if !$system['genders_disabled']}
							{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_gender'] == "public" || ($profile['user_privacy_gender'] == "friends" && $profile['we_friends'])}
								<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="5" r="2"></circle><path d="M10 22v-5l-1 -1v-4a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v4l-1 1v5"></path></svg>{$profile['user_gender']}
								</div>
							{/if}
						{/if}
						
						{if $system['relationship_info_enabled']}
							{if $profile['user_relationship']}
								{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_relationship'] == "public" || ($profile['user_privacy_relationship'] == "friends" && $profile['we_friends'])}
									<div>
										<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M19.5 13.572l-7.5 7.428l-7.5 -7.428m0 0a5 5 0 1 1 7.5 -6.566a5 5 0 1 1 7.5 6.572"></path></svg>
										{if $profile['user_relationship'] == "relationship"}
											{__("In a relationship")}
										{elseif $profile['user_relationship'] == "complicated"}
											{__("It's complicated")}
										{else}
											{__($profile['user_relationship']|ucfirst)}
										{/if}
									</div>
								{/if}
							{/if}
						{/if}
						
						{if $profile['user_birthdate'] != null}
							{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_birthdate'] == "public" || ($profile['user_privacy_birthdate'] == "friends" && $profile['we_friends'])}
								<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M3 20h18v-8a3 3 0 0 0 -3 -3h-12a3 3 0 0 0 -3 3v8z"></path><path d="M2.996 14.803c.312 .135 .654 .204 1.004 .197a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1c.35 .007 .692 -.062 1.004 -.197"></path><path d="M12 4l1.465 1.638a2 2 0 1 1 -3.015 .099l1.55 -1.737z"></path></svg>
									{$profile['user_birthdate']|date_format:$system['system_date_format']}
								</div>
							{/if}
						{/if}
						
						{if $system['website_info_enabled']}
							{if $profile['user_website']}
								<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M10 14a3.5 3.5 0 0 0 5 0l4 -4a3.5 3.5 0 0 0 -5 -5l-.5 .5"></path><path d="M14 10a3.5 3.5 0 0 0 -5 0l-4 4a3.5 3.5 0 0 0 5 5l.5 -.5"></path></svg>
									<a target="_blank" href="{$profile['user_website']}">{$profile['user_website']}</a>
								</div>
							{/if}
						{/if}
						
						<div>
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="9" cy="7" r="4"></circle><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path><path d="M21 21v-2a4 4 0 0 0 -3 -3.85"></path></svg>
							{__("Followed by")} 
							<a href="{$system['system_url']}/{$profile['user_name']}/followers">{$profile['followers_count']} {__("people")}</a>
						</div>
					</div>
				</div>
				<!-- panel [about] -->
				
				<!-- photos -->
				{if $profile['photos']}
					<div class="ele_content p-0 mb15 panel-photos">
						<div class="valign ele_sidebar_widget_title">
							<b><a href="{$system['system_url']}/{$profile['user_name']}/photos" class="body_color">{__("Photos")}</a></b>
						</div>
						
						<div class="pb10 plr10">
							<div class="row no-gutters mx-0">
								{foreach $profile['photos'] as $photo}
									{include file='__feeds_photo.tpl' _context="photos" _small=true}
								{/foreach}
							</div>
						</div>
					</div>
				{/if}
				<!-- photos -->

				<!-- custom fields [basic] -->
				{if $custom_fields['basic']}
					{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_basic'] == "public" || ($profile['user_privacy_basic'] == "friends" && $profile['we_friends'])}
						<div class="ele_content px-3 py-2 mb15">
							<div class="valign ele_sidebar_widget_title px-0 pb-0 pt-1">
								<b>{__("Basic Info")}</b>
							</div>
					
							<div class="profle-meta-wrapper">
								{foreach $custom_fields['basic'] as $custom_field}
									{if $custom_field['value']}
										<div>
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="12" y1="8" x2="12.01" y2="8"></line><polyline points="11 12 12 12 12 16 13 16"></polyline></svg>
											<strong class="bold">{__($custom_field['label'])}</strong><br>
											{if $custom_field['type'] == "textbox" && $custom_field['is_link']}
												<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
											{elseif $custom_field['type'] == "multipleselectbox"}
												{__($custom_field['value_string']|trim)}
											{else}
												{__($custom_field['value']|trim)}
											{/if}
										</div>
									{/if}
								{/foreach}
							</div>
						</div>
					{/if}
				{/if}
				<!-- custom fields [basic] -->

				<!-- custom fields [work] -->
				{if $custom_fields['work']}
					{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_work'] == "public" || ($profile['user_privacy_work'] == "friends" && $profile['we_friends'])}
						<div class="ele_content px-3 py-2 mb15">
							<div class="valign ele_sidebar_widget_title px-0 pb-0 pt-1">
								<b>{__("Work Info")}</b>
							</div>
							
							<div class="profle-meta-wrapper">
								{foreach $custom_fields['work'] as $custom_field}
									{if $custom_field['value']}
										<div>
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="12" y1="8" x2="12.01" y2="8"></line><polyline points="11 12 12 12 12 16 13 16"></polyline></svg>
											<strong class="bold">{__($custom_field['label'])}</strong><br>
											{if $custom_field['type'] == "textbox" && $custom_field['is_link']}
												<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
											{elseif $custom_field['type'] == "multipleselectbox"}
												{__($custom_field['value_string']|trim)}
											{else}
												{__($custom_field['value']|trim)}
											{/if}
										</div>
									{/if}
								{/foreach}
							</div>
						</div>
					{/if}
				{/if}
				<!-- custom fields [work] -->

				<!-- custom fields [location] -->
				{if $custom_fields['location']}
					{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_location'] == "public" || ($profile['user_privacy_location'] == "friends" && $profile['we_friends'])}
						<div class="ele_content px-3 py-2 mb15">
							<div class="valign ele_sidebar_widget_title px-0 pb-0 pt-1">
								<b>{__("Location Info")}</b>
							</div>
							
							<div class="profle-meta-wrapper">
								{foreach $custom_fields['location'] as $custom_field}
									{if $custom_field['value']}
										<div>
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="12" y1="8" x2="12.01" y2="8"></line><polyline points="11 12 12 12 12 16 13 16"></polyline></svg>
											<strong class="bold">{__($custom_field['label'])}</strong><br>
											{if $custom_field['type'] == "textbox" && $custom_field['is_link']}
												<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
											{elseif $custom_field['type'] == "multipleselectbox"}
												{__($custom_field['value_string']|trim)}
											{else}
												{__($custom_field['value']|trim)}
											{/if}
										</div>
									{/if}
								{/foreach}
							</div>
						</div>
					{/if}
				{/if}
				<!-- custom fields [location] -->

				<!-- custom fields [education] -->
				{if $custom_fields['education']}
					{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_education'] == "public" || ($profile['user_privacy_education'] == "friends" && $profile['we_friends'])}
						<div class="ele_content px-3 py-2 mb15">
							<div class="valign ele_sidebar_widget_title px-0 pb-0 pt-1">
								<b>{__("Education Info")}</b>
							</div>
							
							<div class="profle-meta-wrapper">
								{foreach $custom_fields['education'] as $custom_field}
									{if $custom_field['value']}
										<div>
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="12" y1="8" x2="12.01" y2="8"></line><polyline points="11 12 12 12 12 16 13 16"></polyline></svg>
											<strong class="bold">{__($custom_field['label'])}</strong><br>
											{if $custom_field['type'] == "textbox" && $custom_field['is_link']}
												<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
											{elseif $custom_field['type'] == "multipleselectbox"}
												{__($custom_field['value_string']|trim)}
											{else}
												{__($custom_field['value']|trim)}
											{/if}
										</div>
									{/if}
								{/foreach}
							</div>
						</div>
					{/if}
				{/if}
				<!-- custom fields [education] -->

				<!-- custom fields [other] -->
				{if $custom_fields['other']}
					{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_other'] == "public" || ($profile['user_privacy_other'] == "friends" && $profile['we_friends'])}
						<div class="ele_content px-3 py-2 mb15">
							<div class="valign ele_sidebar_widget_title px-0 pb-0 pt-1">
								<b>{__("Other Info")}</b>
							</div>
							
							<div class="profle-meta-wrapper">
								{foreach $custom_fields['other'] as $custom_field}
									{if $custom_field['value']}
										<div>
											<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="12" y1="8" x2="12.01" y2="8"></line><polyline points="11 12 12 12 12 16 13 16"></polyline></svg>
											<strong class="bold">{__($custom_field['label'])}</strong><br>
											{if $custom_field['type'] == "textbox" && $custom_field['is_link']}
												<a href="{$custom_field['value']}">{__($custom_field['value']|trim)}</a>
											{elseif $custom_field['type'] == "multipleselectbox"}
												{__($custom_field['value_string']|trim)}
											{else}
												{__($custom_field['value']|trim)}
											{/if}
										</div>
									{/if}
								{/foreach}
							</div>
						</div>
					{/if}
				{/if}
				<!-- custom fields [other] -->
				
				<!-- gifts transactions -->
				{if $system['gifts_enabled']}
					{if $profile['gift_transactions']}
						<div class="ele_content p-0 mb15">
							<div class="valign ele_sidebar_widget_title px-3 pb-1">
								<b>{__("Gifts")}</b>
							</div>
							
							<ul class="ele_side_users ele_side_page px-1 pb-2">
								{foreach $profile['gift_transactions'] as $gift_transaction}
									<li class="feeds-item">
										<div class="data-container">
											<a class="data-avatar">
												<img src="{$gift_transaction['image']}" alt="Gift Image">
											</a>
											<div class="data-content pt-0">
												<div>
													<span class="name">
														<a href="{$system['system_url']}/{$gift_transaction['user_name']}">
															<img src="{$gift_transaction['user_picture']}" width="22" class="rounded-circle me-2 img-fluid" alt="User Picture" />
															{$gift_transaction['user_fullname']|truncate:30}
														</a>
													</span>
													{if $gift_transaction['points']}
														<div class="mt-1"><span class="badge rounded-pill badge-lg bg-success text-white">{$gift_transaction['points']} {__("Points")}</span></div>
													{/if}
												</div>
											</div>
										</div>
									</li>
								{/foreach}
							</ul>
						</div>
					{/if}
				{/if}
				<!-- gifts transactions -->
			</div>
			<!-- right panel -->
			
			<!-- center panel -->
			<div class="col-lg-8 middlecol">
				<!-- publisher -->
				{if $user->_logged_in}
					{if $user->_data['user_id'] == $profile['user_id']}
						{include file='_publisher.tpl' _handle="me" _node_can_monetize_content=$user->_data['can_monetize_content'] _node_monetization_enabled=$user->_data['user_monetization_enabled'] _node_monetization_plans=$user->_data['user_monetization_plans'] _privacy=true}
					{elseif $system['wall_posts_enabled'] && ( $profile['user_privacy_wall'] == 'friends' && $profile['we_friends'] || $profile['user_privacy_wall'] == 'public' )}
						{include file='_publisher.tpl' _handle="user" _id=$profile['user_id'] _privacy=true}
					{/if}

				{/if}
				<!-- publisher -->

				<!-- pinned post -->
				{if $pinned_post}
					{include file='_pinned_post.tpl' post=$pinned_post}
				{/if}
				<!-- pinned post -->

				<!-- posts -->
				{include file='_posts.tpl' _get="posts_profile" _id=$profile['user_id']}
				<!-- posts -->
			</div>
			<!-- center panel -->
		
		{elseif $view == "friends"}
			<!-- friends -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
						<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z"></path></svg> {__("Friends")}</div>
						<div class="valign align-items-start mt-3 mt-md-0 mw-100">
							<div class="valign nav ele_switch_tabs m-0" role="tablist">
								<div>
									<a class="active" href="{$system['system_url']}/{$profile['user_name']}/friends">
										{__("Friends")}
										<span class="badge badge-pill badge-info">{$profile['friends_count']}</span>
									</a>
								</div>
								<div>
									<a class="" href="{$system['system_url']}/{$profile['user_name']}/followers">{__("Followers")}</a>
								</div>
								<div>
									<a class="" href="{$system['system_url']}/{$profile['user_name']}/followings">{__("Followings")}</a>
								</div>
								{if $profile['has_subscriptions_plans']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/subscribers">{__("Subscribers")}</a>
									</div>
								{/if}
								{if $system['monetization_enabled']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/subscriptions">{__("Subscriptions")}</a>
									</div>
								{/if}
							</div>
						</div>
					</div>

					{if $profile['friends']}
						<ul class="row">
							{foreach $profile['friends'] as $_user}
								{include file='__feeds_user.tpl' _tpl="box" _connection=$_user["connection"] _top_friends=true _darker=true}
							{/foreach}
						</ul>
						{if $profile['friends_count'] >= $system['max_results_even']}
							<!-- see-more -->
							<div class="alert alert-info see-more mt0 mb20 js_see-more" data-get="friends" data-uid="{$profile['user_id']}">
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{/if}
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have friends")}
						</div>
					{/if}
				</div>
			</div>
			<!-- friends -->
		
		{elseif $view == "followers"}
			<!-- followers -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
						<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z"></path></svg> {__("Friends")}</div>
						<div class="valign align-items-start mt-3 mt-md-0 mw-100">
							<div class="valign nav ele_switch_tabs m-0" role="tablist">
								{if $system['friends_enabled']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/friends">{__("Friends")}</a>
									</div>
								{/if}
								<div>
									<a class="active" href="{$system['system_url']}/{$profile['user_name']}/followers">
									{__("Followers")}
									<span class="badge badge-pill badge-info">{$profile['followers_count']}</span>
								</a>
								</div>
								<div>
									<a class="" href="{$system['system_url']}/{$profile['user_name']}/followings">{__("Followings")}</a>
								</div>
								{if $profile['has_subscriptions_plans']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/subscribers">{__("Subscribers")}</a>
									</div>
								{/if}
								{if $system['monetization_enabled']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/subscriptions">{__("Subscriptions")}</a>
									</div>
								{/if}
							</div>
						</div>
					</div>
					
					{if $profile['followers']}
						<ul class="row">
							{foreach $profile['followers'] as $_user}
								{include file='__feeds_user.tpl' _tpl="box" _connection=$_user["connection"] _darker=true}
							{/foreach}
						</ul>

						{if $profile['followers_count'] >= $system['max_results_even']}
						<!-- see-more -->
						<div class="alert alert-info see-more mt0 mb20 js_see-more" data-get="followers" data-uid="{$profile['user_id']}">
							<span>{__("See More")}</span>
							<div class="loader loader_small x-hidden"></div>
						</div>
						<!-- see-more -->
						{/if}
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have followers")}
						</div>
					{/if}
				</div>
			</div>
			<!-- followers -->
		
		{elseif $view == "followings"}
			<!-- followings -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
						<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z"></path></svg> {__("Friends")}</div>
						<div class="valign align-items-start mt-3 mt-md-0 mw-100">
							<div class="valign nav ele_switch_tabs m-0" role="tablist">
								{if $system['friends_enabled']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/friends">{__("Friends")}</a>
									</div>
								{/if}
								<div>
									<a class="" href="{$system['system_url']}/{$profile['user_name']}/followers">{__("Followers")}</a>
								</div>
								<div>
									<a class="active" href="{$system['system_url']}/{$profile['user_name']}/followings">
										{__("Followings")}
										<span class="badge badge-pill badge-info">{$profile['followings_count']}</span>
									</a>
								</div>
								{if $profile['has_subscriptions_plans']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/subscribers">{__("Subscribers")}</a>
									</div>
								{/if}
								{if $system['monetization_enabled']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/subscriptions">{__("Subscriptions")}</a>
									</div>
								{/if}
							</div>
						</div>
					</div>
					
					{if $profile['followings']}
						<ul class="row">
							{foreach $profile['followings'] as $_user}
								{include file='__feeds_user.tpl' _tpl="box" _connection=$_user["connection"] _darker=true}
							{/foreach}
						</ul>

						{if $profile['followings_count'] >= $system['max_results_even']}
						<!-- see-more -->
						<div class="alert alert-info see-more mt0 mb20 js_see-more" data-get="followings" data-uid="{$profile['user_id']}">
							<span>{__("See More")}</span>
							<div class="loader loader_small x-hidden"></div>
						</div>
						<!-- see-more -->
						{/if}
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have followings")}
						</div>
					{/if}
				</div>
			</div>
			<!-- followings -->
		
		{elseif $view == "subscribers"}
			<!-- subscribers -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
						<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z"></path></svg> {__("Friends")}</div>
						<div class="valign align-items-start mt-3 mt-md-0 mw-100">
							<div class="valign nav ele_switch_tabs m-0" role="tablist">
								{if $system['friends_enabled']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/friends">{__("Friends")}</a>
									</div>
								{/if}
								<div>
									<a class="" href="{$system['system_url']}/{$profile['user_name']}/followers">{__("Followers")}</a>
								</div>
								<div>
									<a class="" href="{$system['system_url']}/{$profile['user_name']}/followings">{__("Followings")}</a>
								</div>
								<div>
									<a class="active" href="{$system['system_url']}/{$profile['user_name']}/subscribers">
										{__("Subscribers")}
										<span class="badge badge-pill badge-info">{$profile['subscribers_count']}</span>
									</a>
								</div>
								{if $system['monetization_enabled']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/subscriptions">{__("Subscriptions")}</a>
									</div>
								{/if}
							</div>
						</div>
					</div>
					
					{if $profile['subscribers']}
						<ul class="row">
							{foreach $profile['subscribers'] as $_user}
								{include file='__feeds_user.tpl' _tpl="box" _connection=$_user["connection"] _darker=true}
							{/foreach}
						</ul>
						{if $profile['subscribers_count'] >= $system['max_results_even']}
							<!-- see-more -->
							<div class="alert alert-info see-more mt0 mb20 js_see-more" data-get="subscribers" data-uid="{$profile['user_id']}" data-type="user">
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{/if}
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have subscribers")}
						</div>
					{/if}
				</div>
			</div>
			<!-- subscribers -->
		  
		{elseif $view == "subscriptions"}
			<!-- subscriptions -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
						<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z"></path></svg> {__("Friends")}</div>
						<div class="valign align-items-start mt-3 mt-md-0 mw-100">
							<div class="valign nav ele_switch_tabs m-0" role="tablist">
								{if $system['friends_enabled']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/friends">{__("Friends")}</a>
									</div>
								{/if}
								<div>
									<a class="" href="{$system['system_url']}/{$profile['user_name']}/followers">{__("Followers")}</a>
								</div>
								<div>
									<a class="" href="{$system['system_url']}/{$profile['user_name']}/followings">{__("Followings")}</a>
								</div>
								{if $profile['has_subscriptions_plans']}
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/subscribers">{__("Subscribers")}</a>
									</div>
								{/if}
								{if $system['monetization_enabled']}
									<div>
										<a class="active" href="{$system['system_url']}/{$profile['user_name']}/subscriptions">
											{__("Subscriptions")}
											<span class="badge badge-pill badge-info">{$profile['subscriptions_count']}</span>
										</a>
									</div>
								{/if}
							</div>
						</div>
					</div>

					{if $profile['subscriptions']}
						<ul class="row">
							{foreach $profile['subscriptions'] as $_subscription}
								{if $_subscription['node_type'] == "profile"}
									{include file='__feeds_user.tpl' _user=$_subscription _tpl="box" _connection='unsubscribe' _darker=true}
								{elseif $_subscription['node_type'] == "page"}
									{include file='__feeds_page.tpl' _page=$_subscription _tpl="box" _connection='unsubscribe' _darker=true}
								{elseif $_subscription['node_type'] == "group"}
									{include file='__feeds_group.tpl' _group=$_subscription _tpl="box" _connection='unsubscribe' _darker=true}
								{/if}
							{/foreach}
						</ul>
						{if $profile['subscriptions_count'] >= $system['max_results_even']}
							<!-- see-more -->
							<div class="alert alert-info see-more mt0 mb20 js_see-more" data-get="subscriptions" data-uid="{$profile['user_id']}">
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{/if}
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have subscriptions")}
						</div>
					{/if}
				</div>
			</div>
			<!-- subscriptions -->
		
		{elseif $view == "photos"}
			<!-- photos -->
			<div class="col-12">
				<div class="ele_content ele_page_content panel-photos">
					{if $profile['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='profile' node_id=$profile['user_id'] price=$profile['user_monetization_min_price'] discount_enabled=$profile['user_monetization_discount_enabled'] discount_percent=$profile['user_monetization_discount_percent']}
					{else}
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.9 13.98l2.1 2.53 3.1-3.99c.2-.26.6-.26.8.01l3.51 4.68c.25.33.01.8-.4.8H6.02c-.42 0-.65-.48-.39-.81L8.12 14c.19-.26.57-.27.78-.02z"></path></svg> {__("Photos")}</div>
							<div class="valign align-items-start">
								<div class="valign nav ele_switch_tabs m-0" role="tablist">
									<div>
										<a class="active" href="{$system['system_url']}/{$profile['user_name']}/photos">{__("Photos")}</a>
									</div>
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/albums">{__("Albums")}</a>
									</div>
								</div>
							</div>
						</div>

						{if $profile['photos']}
							<ul class="row no-gutters mx-0">
								{foreach $profile['photos'] as $photo}
									{include file='__feeds_photo.tpl' _context="photos" _can_pin=true}
								{/foreach}
							</ul>
							<!-- see-more -->
							<div class="alert alert-info see-more mt20 js_see-more" data-get="photos" data-id="{$profile['user_id']}" data-type='user'>
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V13.9L20.37 12.5C19.59 11.83 18.33 11.83 17.55 12.5L13.39 16.07C12.61 16.74 11.35 16.74 10.57 16.07L10.23 15.79C9.52 15.17 8.39 15.11 7.59 15.65L2.67 18.95L2.56 19.03C2.19 18.23 2 17.28 2 16.19V7.81C2 4.17 4.17 2 7.81 2H16.19C19.83 2 22 4.17 22 7.81Z" fill="currentColor"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z" fill="currentColor"/><path d="M21.9986 13.8986V16.1886C21.9986 19.8286 19.8286 21.9986 16.1886 21.9986H7.80859C5.25859 21.9986 3.41859 20.9286 2.55859 19.0286L2.66859 18.9486L7.58859 15.6486C8.38859 15.1086 9.51859 15.1686 10.2286 15.7886L10.5686 16.0686C11.3486 16.7386 12.6086 16.7386 13.3886 16.0686L17.5486 12.4986C18.3286 11.8286 19.5886 11.8286 20.3686 12.4986L21.9986 13.8986Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have photos")}
							</div>
						{/if}
					{/if}
				</div>
			</div>
			<!-- photos -->
		
		{elseif $view == "albums"}
			<!-- albums -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					{if $profile['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='profile' node_id=$profile['user_id'] price=$profile['user_monetization_min_price'] discount_enabled=$profile['user_monetization_discount_enabled'] discount_percent=$profile['user_monetization_discount_percent']}
					{else}
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.9 13.98l2.1 2.53 3.1-3.99c.2-.26.6-.26.8.01l3.51 4.68c.25.33.01.8-.4.8H6.02c-.42 0-.65-.48-.39-.81L8.12 14c.19-.26.57-.27.78-.02z"></path></svg> {__("Photos")}</div>
							<div class="valign align-items-start">
								<div class="valign nav ele_switch_tabs m-0" role="tablist">
									<div>
										<a class="" href="{$system['system_url']}/{$profile['user_name']}/photos">{__("Photos")}</a>
									</div>
									<div>
										<a class="active" href="{$system['system_url']}/{$profile['user_name']}/albums">{__("Albums")}</a>
									</div>
								</div>
							</div>
						</div>
						
						{if $profile['albums']}
							<ul class="row">
								{foreach $profile['albums'] as $album}
								{include file='__feeds_album.tpl'}
								{/foreach}
							</ul>
							{if count($profile['albums']) >= $system['max_results_even']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="albums" data-id="{$profile['user_id']}" data-type='user'>
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{/if}
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V13.9L20.37 12.5C19.59 11.83 18.33 11.83 17.55 12.5L13.39 16.07C12.61 16.74 11.35 16.74 10.57 16.07L10.23 15.79C9.52 15.17 8.39 15.11 7.59 15.65L2.67 18.95L2.56 19.03C2.19 18.23 2 17.28 2 16.19V7.81C2 4.17 4.17 2 7.81 2H16.19C19.83 2 22 4.17 22 7.81Z" fill="currentColor"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z" fill="currentColor"/><path d="M21.9986 13.8986V16.1886C21.9986 19.8286 19.8286 21.9986 16.1886 21.9986H7.80859C5.25859 21.9986 3.41859 20.9286 2.55859 19.0286L2.66859 18.9486L7.58859 15.6486C8.38859 15.1086 9.51859 15.1686 10.2286 15.7886L10.5686 16.0686C11.3486 16.7386 12.6086 16.7386 13.3886 16.0686L17.5486 12.4986C18.3286 11.8286 19.5886 11.8286 20.3686 12.4986L21.9986 13.8986Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have albums")}
							</div>
						{/if}
					{/if}
				</div>
			</div>
			<!-- albums -->
		
		{elseif $view == "album"}
			<!-- albums -->
			<div class="col-12">
				<div class="ele_content ele_page_content panel-photos">
					{if $profile['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='profile' node_id=$profile['user_id'] price=$profile['user_monetization_min_price'] discount_enabled=$profile['user_monetization_discount_enabled'] discount_percent=$profile['user_monetization_discount_percent']}
					{else}
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb0 justify-content-between">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.9 13.98l2.1 2.53 3.1-3.99c.2-.26.6-.26.8.01l3.51 4.68c.25.33.01.8-.4.8H6.02c-.42 0-.65-.48-.39-.81L8.12 14c.19-.26.57-.27.78-.02z"></path></svg> {__("Albums")}</div>
							<a href="{$system['system_url']}/{$profile['user_name']}/albums" class="btn btn-sm btn-mat btn-secondary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Back to Albums")}</a>
						</div>
						
						{include file='_album.tpl'}
					{/if}
				</div>
			</div>
			<!-- albums -->

		{elseif $view == "videos"}
			<!-- videos -->
			<div class="col-12">
				<div class="ele_content ele_page_content panel-videos">
					{if $profile['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='profile' node_id=$profile['user_id'] price=$profile['user_monetization_min_price'] discount_enabled=$profile['user_monetization_discount_enabled'] discount_percent=$profile['user_monetization_discount_percent']}
					{else}
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17,10.5V7A1,1 0 0,0 16,6H4A1,1 0 0,0 3,7V17A1,1 0 0,0 4,18H16A1,1 0 0,0 17,17V13.5L21,17.5V6.5L17,10.5Z"></path></svg> {__("Videos")}
						</div>
						
						{if $profile['videos']}
							<ul class="row no-gutters mx-0">
								{foreach $profile['videos'] as $video}
									{include file='__feeds_video.tpl'}
								{/foreach}
							</ul>
							<!-- see-more -->
							<div class="alert alert-info see-more js_see-more mt20" data-get="videos" data-id="{$profile['user_id']}" data-type='user'>
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V16.19C22 19.83 19.83 22 16.19 22H7.81C4.17 22 2 19.83 2 16.19V7.81C2 7.3 2.04 6.81 2.13 6.36C2.64 3.61 4.67 2.01 7.77 2H16.23C19.33 2.01 21.36 3.61 21.87 6.36C21.96 6.81 22 7.3 22 7.81Z" fill="currentColor"/><path d="M22 7.81V7.86H2V7.81C2 7.3 2.04 6.81 2.13 6.36H7.77V2H9.27V6.36H14.73V2H16.23V6.36H21.87C21.96 6.81 22 7.3 22 7.81Z" fill="currentColor"/><path d="M14.4411 12.7208L12.3611 11.5208C11.5911 11.0808 10.8511 11.0208 10.2711 11.3508C9.69109 11.6808 9.37109 12.3608 9.37109 13.2408V15.6408C9.37109 16.5208 9.69109 17.2008 10.2711 17.5308C10.5211 17.6708 10.8011 17.7408 11.0911 17.7408C11.4911 17.7408 11.9211 17.6108 12.3611 17.3608L14.4411 16.1608C15.2111 15.7208 15.6311 15.1008 15.6311 14.4308C15.6311 13.7608 15.2011 13.1708 14.4411 12.7208Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have videos")}
							</div>
						{/if}
					{/if}
				</div>
			</div>
			<!-- videos -->
		
		{elseif $view == "reels"}
			
			<!-- reels -->
			<div class="col-12">
				<div class="ele_content ele_page_content panel-videos">
					{if $profile['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='profile' node_id=$profile['user_id'] price=$profile['user_monetization_min_price'] discount_enabled=$profile['user_monetization_discount_enabled'] discount_percent=$profile['user_monetization_discount_percent']}
					{else}
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17,10.5V7A1,1 0 0,0 16,6H4A1,1 0 0,0 3,7V17A1,1 0 0,0 4,18H16A1,1 0 0,0 17,17V13.5L21,17.5V6.5L17,10.5Z"></path></svg> {__("Reels")}
						</div>
						
						{if $profile['reels']}
							<ul class="row no-gutters mx-0">
								{foreach $profile['reels'] as $video}
									{include file='__feeds_video.tpl' _is_reel=true}
								{/foreach}
							</ul>
							<!-- see-more -->
							<div class="alert alert-info see-more js_see-more mt20" data-get="videos_reels" data-id="{$profile['user_id']}" data-type='user'>
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V16.19C22 19.83 19.83 22 16.19 22H7.81C4.17 22 2 19.83 2 16.19V7.81C2 7.3 2.04 6.81 2.13 6.36C2.64 3.61 4.67 2.01 7.77 2H16.23C19.33 2.01 21.36 3.61 21.87 6.36C21.96 6.81 22 7.3 22 7.81Z" fill="currentColor"/><path d="M22 7.81V7.86H2V7.81C2 7.3 2.04 6.81 2.13 6.36H7.77V2H9.27V6.36H14.73V2H16.23V6.36H21.87C21.96 6.81 22 7.3 22 7.81Z" fill="currentColor"/><path d="M14.4411 12.7208L12.3611 11.5208C11.5911 11.0808 10.8511 11.0208 10.2711 11.3508C9.69109 11.6808 9.37109 12.3608 9.37109 13.2408V15.6408C9.37109 16.5208 9.69109 17.2008 10.2711 17.5308C10.5211 17.6708 10.8011 17.7408 11.0911 17.7408C11.4911 17.7408 11.9211 17.6108 12.3611 17.3608L14.4411 16.1608C15.2111 15.7208 15.6311 15.1008 15.6311 14.4308C15.6311 13.7608 15.2011 13.1708 14.4411 12.7208Z" fill="currentColor"/></svg>{$profile['name']} {__("doesn't have reels")}
							</div>
						{/if}
					{/if}
				</div>
			</div>
			<!-- reels -->
		
		{elseif $view == "blogs"}
			<!-- blogs -->
			<div class="col-12">
				<div class="valign ele_page_hdng border-0 p-0 mb15">
					<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor"><path d="M160-120q-33 0-56.5-23.5T80-200v-640l67 67 66-67 67 67 67-67 66 67 67-67 67 67 66-67 67 67 67-67 66 67 67-67v640q0 33-23.5 56.5T800-120H160Zm0-80h280v-240H160v240Zm360 0h280v-80H520v80Zm0-160h280v-80H520v80ZM160-520h640v-120H160v120Z"/></svg> {__("Blogs")}
				</div>
				
				{if $profile['needs_subscription']}
					{include file='_need_subscription.tpl' node_type='profile' node_id=$profile['user_id'] price=$profile['user_monetization_min_price'] discount_enabled=$profile['user_monetization_discount_enabled'] discount_percent=$profile['user_monetization_discount_percent']}
				{else}
					<!-- search -->
					<div class="ele_content p-3 mb15">
						<form action="{$system['system_url']}/{$profile['user_name']}/search" method="get">
							<div class="input-group align-items-center el_prof_search_bar">
								<input type="text" name="query" class="form-control" placeholder='{__("Search")}'>
								<input type="hidden" name="filter" value="article">
								<button type="submit" class="btn p-2 rounded-circle border-0 shadow-none btn-primary">
									<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="currentColor" d="M15.5 14h-.79l-.28-.27c1.2-1.4 1.82-3.31 1.48-5.34-.47-2.78-2.79-5-5.59-5.34-4.23-.52-7.79 3.04-7.27 7.27.34 2.8 2.56 5.12 5.34 5.59 2.03.34 3.94-.28 5.34-1.48l.27.28v.79l4.25 4.25c.41.41 1.08.41 1.49 0 .41-.41.41-1.08 0-1.49L15.5 14zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
								</button>
							</div>
						</form>
					</div>
					<!-- search -->

					{if $posts}
						<ul class="row">
							{foreach $posts as $blog}
								{include file='__feeds_blog.tpl' _tpl="featured" _iteration=$blog@iteration}
							{/foreach}
						</ul>

						<!-- see-more -->
						<div class="alert alert-post see-more js_see-more" data-get="blogs_profile" data-id="{$profile['user_id']}">
							<span>{__("See More")}</span>
							<div class="loader loader_small x-hidden"></div>
						</div>
						<!-- see-more -->
					{else}
						{include file='_no_data.tpl'}
					{/if}
				{/if}
			</div>
			<!-- blogs -->

		{elseif $view == "products"}
			<!-- products -->
			<div class="col-12">
				<div class="valign ele_page_hdng border-0 p-0 mb15">
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path fill="currentColor" d="M201-120q-33 0-56.5-23.5T121-200v-318q-23-21-35.5-54t-.5-72l42-136q8-26 28.5-43t47.5-17h556q27 0 47 16.5t29 43.5l42 136q12 39-.5 71T841-518v318q0 33-23.5 56.5T761-120H201Zm368-440q27 0 41-18.5t11-41.5l-22-140h-78v148q0 21 14 36.5t34 15.5Zm-180 0q23 0 37.5-15.5T441-612v-148h-78l-22 140q-4 24 10.5 42t37.5 18Zm-178 0q18 0 31.5-13t16.5-33l22-154h-78l-40 134q-6 20 6.5 43t41.5 23Zm540 0q29 0 42-23t6-43l-42-134h-76l22 154q3 20 16.5 33t31.5 13Z"/></svg> {__("Products")}
				</div>
					
				{if $profile['needs_subscription']}
					{include file='_need_subscription.tpl' node_type='profile' node_id=$profile['user_id'] price=$profile['user_monetization_min_price'] discount_enabled=$profile['user_monetization_discount_enabled'] discount_percent=$profile['user_monetization_discount_percent']}
				{else}
					<!-- search -->
					<div class="ele_content p-3 mb15">
						<form action="{$system['system_url']}/{$profile['user_name']}/search" method="get">
							<div class="input-group align-items-center el_prof_search_bar">
								<input type="text" name="query" class="form-control" placeholder='{__("Search")}'>
								<input type="hidden" name="filter" value="product">
								<button type="submit" class="btn p-2 rounded-circle border-0 shadow-none btn-primary">
									<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="currentColor" d="M15.5 14h-.79l-.28-.27c1.2-1.4 1.82-3.31 1.48-5.34-.47-2.78-2.79-5-5.59-5.34-4.23-.52-7.79 3.04-7.27 7.27.34 2.8 2.56 5.12 5.34 5.59 2.03.34 3.94-.28 5.34-1.48l.27.28v.79l4.25 4.25c.41.41 1.08.41 1.49 0 .41-.41.41-1.08 0-1.49L15.5 14zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
								</button>
							</div>
						</form>
					</div>
					<!-- search -->
					
					{if $posts}
						<div class="row">
							{foreach $posts as $post}
								{include file='__feeds_product.tpl'}
							{/foreach}
						</div>

						<!-- see-more -->
						<div class="alert alert-info see-more js_see-more mt20" data-get="products_profile" data-id="{$profile['user_id']}">
							<span>{__("See More")}</span>
							<div class="loader loader_small x-hidden"></div>
						</div>
						<!-- see-more -->
					{else}
						{include file='_no_data.tpl'}
					{/if}
				{/if}
			</div>
			<!-- products -->
		
		{elseif $view == "pages"}
			<!-- pages -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					<div class="valign ele_page_hdng border-0 pt20 pb5 mb15">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0zm0 0h24v24H0V0z" fill="none"></path><path d="M13.12 2.06L7.58 7.6c-.37.37-.58.88-.58 1.41V19c0 1.1.9 2 2 2h9c.8 0 1.52-.48 1.84-1.21l3.26-7.61C23.94 10.2 22.49 8 20.34 8h-5.65l.95-4.58c.1-.5-.05-1.01-.41-1.37-.59-.58-1.53-.58-2.11.01zM3 21c1.1 0 2-.9 2-2v-8c0-1.1-.9-2-2-2s-2 .9-2 2v8c0 1.1.9 2 2 2z"></path></svg> {__("Pages")}
					</div>
					
					{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_pages'] == "public" || ($profile['user_privacy_pages'] == "friends" && $profile['we_friends'])}
						{if count($profile['pages']) > 0}
							<ul class="row">
								{foreach $profile['pages'] as $_page}
									{include file='__feeds_page.tpl' _tpl="box" _darker=true}
								{/foreach}
							</ul>

							{if count($profile['pages']) >= $system['max_results_even']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="profile_pages" data-uid="{$profile['user_id']}">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{/if}
						{else}
							{include file='_no_data.tpl'}
						{/if}
					{else}
						{include file='_no_data.tpl'}
					{/if}
				</div>
			</div>
			<!-- pages -->
		
		{elseif $view == "groups"}
			<!-- groups -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					<div class="valign ele_page_hdng border-0 pt20 pb5 mb15">
						<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><g><rect fill="none" height="24" width="24"></rect><rect fill="none" height="24" width="24"></rect></g><g><path d="M22,9V8c0-0.55-0.45-1-1-1h0c-0.55,0-1,0.45-1,1v1h-1c-0.55,0-1,0.45-1,1v0c0,0.55,0.45,1,1,1h1v1c0,0.55,0.45,1,1,1h0 c0.55,0,1-0.45,1-1v-1h1c0.55,0,1-0.45,1-1v0c0-0.55-0.45-1-1-1H22z"></path><g><path d="M8,12c2.21,0,4-1.79,4-4s-1.79-4-4-4S4,5.79,4,8S5.79,12,8,12z"></path><path d="M8,13c-2.67,0-8,1.34-8,4v3h16v-3C16,14.34,10.67,13,8,13z"></path><path d="M12.51,4.05C13.43,5.11,14,6.49,14,8s-0.57,2.89-1.49,3.95C14.47,11.7,16,10.04,16,8S14.47,4.3,12.51,4.05z"></path><path d="M16.53,13.83C17.42,14.66,18,15.7,18,17v3h2v-3C20,15.55,18.41,14.49,16.53,13.83z"></path></g></g></svg> {__("Groups")}
					</div>
					
					{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_groups'] == "public" || ($profile['user_privacy_groups'] == "friends" && $profile['we_friends'])}
						{if count($profile['groups']) > 0}
							<ul class="row">
								{foreach $profile['groups'] as $_group}
									{include file='__feeds_group.tpl' _tpl="box" _darker=true}
								{/foreach}
							</ul>

							{if count($profile['groups']) >= $system['max_results_even']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="profile_groups" data-uid="{$profile['user_id']}">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{/if}
						{else}
							{include file='_no_data.tpl'}
						{/if}
					{else}
						{include file='_no_data.tpl'}
					{/if}
				</div>
			</div>
			<!-- groups -->
		
		{elseif $view == "events"}
			<!-- events -->
			<div class="col-12">
				<div class="ele_content ele_page_content">
					<div class="valign ele_page_hdng border-0 pt20 pb5 mb15">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M19 3h-1V2c0-.55-.45-1-1-1s-1 .45-1 1v1H8V2c0-.55-.45-1-1-1s-1 .45-1 1v1H5c-1.11 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm6 12H6v-1c0-2 4-3.1 6-3.1s6 1.1 6 3.1v1z"></path></svg> {__("Events")}
					</div>
					
					{if $profile['user_id'] == $user->_data['user_id'] || $profile['user_privacy_events'] == "public" || ($profile['user_privacy_events'] == "friends" && $profile['we_friends'])}
						{if count($profile['events']) > 0}
							<ul class="row">
								{foreach $profile['events'] as $_event}
									{include file='__feeds_event.tpl' _tpl="box" _darker=true}
								{/foreach}
							</ul>

							{if count($profile['events']) >= $system['max_results_even']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="profile_events" data-uid="{$profile['user_id']}">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{/if}
						{else}
							{include file='_no_data.tpl'}
						{/if}
					{else}
						{include file='_no_data.tpl'}
					{/if}
				</div>
			</div>
			<!-- events -->

		{elseif $view == "search"}

			<!-- left panel -->
			<div class="col-lg-4 sidebar rightcol leftcol js_sticky-sidebar">
				<!-- search -->
				<div class="ele_content p-3 mb15">
					<form action="{$system['system_url']}/{$profile['user_name']}/search" method="get">
						<div class="input-group align-items-center el_prof_search_bar">
							<input type="text" name="query" class="form-control" placeholder='{__("Search")}' {if $query}value="{$query}" {/if}>
							<button type="submit" class="btn p-2 rounded-circle border-0 shadow-none btn-primary">
								<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="currentColor" d="M15.5 14h-.79l-.28-.27c1.2-1.4 1.82-3.31 1.48-5.34-.47-2.78-2.79-5-5.59-5.34-4.23-.52-7.79 3.04-7.27 7.27.34 2.8 2.56 5.12 5.34 5.59 2.03.34 3.94-.28 5.34-1.48l.27.28v.79l4.25 4.25c.41.41 1.08.41 1.49 0 .41-.41.41-1.08 0-1.49L15.5 14zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
							</button>
						</div>
					</form>
				</div>
				<!-- search -->
			</div>
			<!-- left panel -->

			<!-- right panel -->
			<div class="col-lg-8 middlecol">
				<!-- posts -->
				{include file='_posts.tpl' _get="posts_profile" _id=$profile['user_id'] _title=__("Search Results") _query=$query _filter=$filter}
				<!-- posts -->
			</div>
			<!-- right panel -->

		{/if}
		<!-- view content -->
	</div>
	<!-- profile-content -->
</div>
<!-- page content -->

{include file='_footer.tpl'}

{if $gift}
    <script>
        $(function() {
            modal('#gift');
        });
    </script>
{/if}