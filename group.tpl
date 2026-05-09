{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container">
	<div class="row">
		<div class="col-lg-5 js_sticky-sidebar">
			<div class="profile-header mt-0 group">
				<div class="ele_content p-0 mb15">
					<!-- profile-cover -->
					<div class="profile-cover-wrapper">
						{if $group['group_cover_id']}
							<!-- full-cover -->
							<img class="js_position-cover-full x-hidden" src="{$group['group_cover_full']}">
							<!-- full-cover -->
							
							<!-- cropped-cover -->
							<img class="js_position-cover-cropped js_lightbox" data-init-position="{$group['group_cover_position']}" data-id="{$group['group_cover_id']}" data-image="{$group['group_cover_full']}" data-context="album" src="{$group['group_cover']}" alt="{$group['group_title']}">
							<!-- cropped-cover -->
						{/if}

						{if $group['i_admin']}
							<!-- buttons -->
							<div class="profile-cover-buttons">
								<div class="dropdown">
									<div class="toggle" data-toggle="dropdown" role="button" aria-expanded="false">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M2.58078 19.0112L2.56078 19.0312C2.29078 18.4413 2.12078 17.7713 2.05078 17.0312C2.12078 17.7613 2.31078 18.4212 2.58078 19.0112Z" fill="currentColor"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z" fill="currentColor"/><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.19C2 17.28 2.19 18.23 2.56 19.03C3.42 20.93 5.26 22 7.81 22H16.19C19.83 22 22 19.83 22 16.19V13.9V7.81C22 4.17 19.83 2 16.19 2ZM20.37 12.5C19.59 11.83 18.33 11.83 17.55 12.5L13.39 16.07C12.61 16.74 11.35 16.74 10.57 16.07L10.23 15.79C9.52 15.17 8.39 15.11 7.59 15.65L3.85 18.16C3.63 17.6 3.5 16.95 3.5 16.19V7.81C3.5 4.99 4.99 3.5 7.81 3.5H16.19C19.01 3.5 20.5 4.99 20.5 7.81V12.61L20.37 12.5Z" fill="currentColor"/></svg> {__("Cover")}
									</div>
									<ul class="dropdown-menu dropdown-menu-right ele_create_menu" role="menu">
										<li>
											<a class="profile-cover-change">
												<div class="js_x-uploader" data-handle="cover-group" data-id="{$group['group_id']}">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M20.659 10a6 6 0 1 0 0 4H21v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v6h-.341zM5 6v3h2V6H5zm10 10a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm0-2a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path><path fill="currentColor" d="M21 6h-2V5H5v14h14v-1h2v2a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v2zM6 6h2v3H6V6zm9 10a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm0 2a6 6 0 1 1 0-12 6 6 0 0 1 0 12zm0-4a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"></path></svg> {__("Upload Photo")}
												</div>
											</a>
										</li>
										<li>
											<a class="action" data-toggle="modal" data-url="users/photos.php?filter=cover&type=group&id={$group['group_id']}">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" class="hover_path" d="M17.409 19C16.633 16.6012 15.1323 15.1147 13.1434 13.3979C15.0238 11.8971 17.4071 11 20 11V3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H6V1H8V5H4V12C9.22015 12 13.6618 14.4616 15.3127 19H17.409ZM18 1V5H10V3H16V1H18ZM16.5 10C15.6716 10 15 9.32843 15 8.5C15 7.67157 15.6716 7 16.5 7C17.3284 7 18 7.67157 18 8.5C18 9.32843 17.3284 10 16.5 10Z"></path><path fill="currentColor" d="M20 13C18.3221 13 16.7514 13.4592 15.4068 14.2587C16.5908 15.6438 17.5269 17.2471 18.1465 19H20V13ZM16.0037 19C14.0446 14.3021 9.4079 11 4 11V19H16.0037ZM4 9C7.82914 9 11.3232 10.4348 13.9738 12.7961C15.7047 11.6605 17.7752 11 20 11V3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H6V1H8V5H4V9ZM18 1V5H10V3H16V1H18ZM16.5 10C15.6716 10 15 9.32843 15 8.5C15 7.67157 15.6716 7 16.5 7C17.3284 7 18 7.67157 18 8.5C18 9.32843 17.3284 10 16.5 10Z"></path></svg> {__("Select Photo")}
											</a>
										</li>
									</ul>
								</div>
								<div class="profile-cover-position {if !$group['group_cover']}x-hidden{/if}">
									<input class="js_position-picture-val" type="hidden" name="position-picture-val">
									<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="js_init-position-picture" data-handle="group" data-id="{$group['group_id']}"><path fill="currentColor" d="M13,6V11H18V7.75L22.25,12L18,16.25V13H13V18H16.25L12,22.25L7.75,18H11V13H6V16.25L1.75,12L6,7.75V11H11V6H7.75L12,1.75L16.25,6H13Z"></path></svg>
								</div>
								<div class="profile-cover-position-buttons">
									<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="js_save-position-picture"><path fill="currentColor" d="M9 16.17L5.53 12.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41l4.18 4.18c.39.39 1.02.39 1.41 0L20.29 7.71c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L9 16.17z"></path></svg>
								</div>
								<div class="profile-cover-position-buttons">
									<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="js_cancel-position-picture"><path fill="currentColor" d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path></svg>
								</div>
								<div class="profile-cover-delete {if !$group['group_cover']}x-hidden{/if}">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="js_delete-cover" data-handle="cover-group" data-id="{$group['group_id']}"><path d="M21.0697 5.23C19.4597 5.07 17.8497 4.95 16.2297 4.86V4.85L16.0097 3.55C15.8597 2.63 15.6397 1.25 13.2997 1.25H10.6797C8.34967 1.25 8.12967 2.57 7.96967 3.54L7.75967 4.82C6.82967 4.88 5.89967 4.94 4.96967 5.03L2.92967 5.23C2.50967 5.27 2.20967 5.64 2.24967 6.05C2.28967 6.46 2.64967 6.76 3.06967 6.72L5.10967 6.52C10.3497 6 15.6297 6.2 20.9297 6.73C20.9597 6.73 20.9797 6.73 21.0097 6.73C21.3897 6.73 21.7197 6.44 21.7597 6.05C21.7897 5.64 21.4897 5.27 21.0697 5.23Z" fill="currentColor"/><path d="M19.2297 8.14C18.9897 7.89 18.6597 7.75 18.3197 7.75H5.67975C5.33975 7.75 4.99975 7.89 4.76975 8.14C4.53975 8.39 4.40975 8.73 4.42975 9.08L5.04975 19.34C5.15975 20.86 5.29975 22.76 8.78975 22.76H15.2097C18.6997 22.76 18.8398 20.87 18.9497 19.34L19.5697 9.09C19.5897 8.73 19.4597 8.39 19.2297 8.14ZM13.6597 17.75H10.3297C9.91975 17.75 9.57975 17.41 9.57975 17C9.57975 16.59 9.91975 16.25 10.3297 16.25H13.6597C14.0697 16.25 14.4097 16.59 14.4097 17C14.4097 17.41 14.0697 17.75 13.6597 17.75ZM14.4997 13.75H9.49975C9.08975 13.75 8.74975 13.41 8.74975 13C8.74975 12.59 9.08975 12.25 9.49975 12.25H14.4997C14.9097 12.25 15.2497 12.59 15.2497 13C15.2497 13.41 14.9097 13.75 14.4997 13.75Z" fill="currentColor"/></svg>
								</div>
							</div>

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
			
					<div class="p-3 profile-info-cont position-relative">
						<div class="text-center">
							<!-- profile-avatar -->
							<div class="profile-avatar-wrapper">
								<img {if $group['group_picture_id']} class="js_lightbox" data-id="{$group['group_picture_id']}" data-context="album" data-image="{$group['group_picture_full']}" {elseif !$group['group_picture_default']} class="js_lightbox-nodata" data-image="{$group['group_picture']}" {/if}  src="{$group['group_picture']}" alt="{$group['group_title']}">
								
								{if $group['i_admin']}
									<!-- buttons -->
									<div class="dropdown position-absolute">
										<div class="toggle" data-toggle="dropdown" role="button" aria-expanded="false">
											<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.0002 6C17.3902 6 16.8302 5.65 16.5502 5.11L15.8302 3.66C15.3702 2.75 14.1702 2 13.1502 2H10.8602C9.83017 2 8.63017 2.75 8.17017 3.66L7.45017 5.11C7.17017 5.65 6.61017 6 6.00017 6C3.83017 6 2.11017 7.83 2.25017 9.99L2.77017 18.25C2.89017 20.31 4.00017 22 6.76017 22H17.2402C20.0002 22 21.1002 20.31 21.2302 18.25L21.7502 9.99C21.8902 7.83 20.1702 6 18.0002 6ZM10.5002 7.25H13.5002C13.9102 7.25 14.2502 7.59 14.2502 8C14.2502 8.41 13.9102 8.75 13.5002 8.75H10.5002C10.0902 8.75 9.75017 8.41 9.75017 8C9.75017 7.59 10.0902 7.25 10.5002 7.25ZM12.0002 18.12C10.1402 18.12 8.62017 16.61 8.62017 14.74C8.62017 12.87 10.1302 11.36 12.0002 11.36C13.8702 11.36 15.3802 12.87 15.3802 14.74C15.3802 16.61 13.8602 18.12 12.0002 18.12Z" fill="currentColor"/></svg>
										</div>
										<ul class="dropdown-menu ele_create_menu" role="menu">
											<li>
												<a class="profile-avatar-change">
													<div class="js_x-uploader" data-handle="picture-group" data-id="{$group['group_id']}">
														<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M20.659 10a6 6 0 1 0 0 4H21v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v6h-.341zM5 6v3h2V6H5zm10 10a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm0-2a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path><path fill="currentColor" d="M21 6h-2V5H5v14h14v-1h2v2a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v2zM6 6h2v3H6V6zm9 10a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm0 2a6 6 0 1 1 0-12 6 6 0 0 1 0 12zm0-4a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"></path></svg> {__("Upload Photo")}
													</div>
												</a>
											</li>
											<li>
												<a class="action" data-toggle="modal" data-url="users/photos.php?filter=avatar&type=group&id={$group['group_id']}">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" class="hover_path" d="M17.409 19C16.633 16.6012 15.1323 15.1147 13.1434 13.3979C15.0238 11.8971 17.4071 11 20 11V3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H6V1H8V5H4V12C9.22015 12 13.6618 14.4616 15.3127 19H17.409ZM18 1V5H10V3H16V1H18ZM16.5 10C15.6716 10 15 9.32843 15 8.5C15 7.67157 15.6716 7 16.5 7C17.3284 7 18 7.67157 18 8.5C18 9.32843 17.3284 10 16.5 10Z"></path><path fill="currentColor" d="M20 13C18.3221 13 16.7514 13.4592 15.4068 14.2587C16.5908 15.6438 17.5269 17.2471 18.1465 19H20V13ZM16.0037 19C14.0446 14.3021 9.4079 11 4 11V19H16.0037ZM4 9C7.82914 9 11.3232 10.4348 13.9738 12.7961C15.7047 11.6605 17.7752 11 20 11V3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H6V1H8V5H4V9ZM18 1V5H10V3H16V1H18ZM16.5 10C15.6716 10 15 9.32843 15 8.5C15 7.67157 15.6716 7 16.5 7C17.3284 7 18 7.67157 18 8.5C18 9.32843 17.3284 10 16.5 10Z"></path></svg> {__("Select Photo")}
												</a>
											</li>
											<li class="{if $group['group_picture_default']}x-hidden{/if}">
												<a class="profile-avatar-crop">
													<div class="js_init-crop-picture" data-image="{$group['group_picture_full']}" data-handle="group" data-id="{$group['group_id']}">
														<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M19 17h3v2h-3v3h-2v-3H6a1 1 0 0 1-1-1V7H2V5h3V2h2v3h11a1 1 0 0 1 1 1v11z"></path><path fill="currentColor" d="M15 17v2H6a1 1 0 0 1-1-1V7H2V5h3V2h2v15h8zm2 5V7H9V5h9a1 1 0 0 1 1 1v11h3v2h-3v3h-2z"></path></svg> {__("Crop Photo")}
													</div>
												</a>
											</li>
											<li class="{if $group['group_picture_default']}x-hidden{/if}">
												<a class="profile-avatar-delete">
													<div class="js_delete-picture" data-handle="picture-group" data-id="{$group['group_id']}">
														<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M4 8h16v13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V8zm3-3V3a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v2h5v2H2V5h5zm2-1v1h6V4H9zm0 8v6h2v-6H9zm4 0v6h2v-6h-2z"></path><path fill="currentColor" d="M4 8h16v13a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V8zm2 2v10h12V10H6zm3 2h2v6H9v-6zm4 0h2v6h-2v-6zM7 5V3a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v2h5v2H2V5h5zm2-1v1h6V4H9z"></path></svg> {__("Delete Photo")}
													</div>
												</a>
											</li>
										</ul>
									</div>
									<!-- buttons -->
									<!-- loaders -->
									<div class="profile-avatar-change-loader rounded-circle">
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
								<h3>{$group['group_title']}</h3>
							</div>
							<!-- profile-name -->
							
							<!-- privacy -->
								{if $group['group_privacy'] == "public"}
									<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" opacity="0.7" class="align-text-top"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="3.6" y1="9" x2="20.4" y2="9"></line><line x1="3.6" y1="15" x2="20.4" y2="15"></line><path d="M11.5 3a17 17 0 0 0 0 18"></path><path d="M12.5 3a17 17 0 0 1 0 18"></path></svg> {__("Public Group")}
								{elseif $group['group_privacy'] == "closed"}
									<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" opacity="0.7" class="align-text-top"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="5" y="11" width="14" height="10" rx="2"></rect><circle cx="12" cy="16" r="1"></circle><path d="M8 11v-4a4 4 0 0 1 8 0v4"></path></svg> {__("Closed Group")}
								{elseif $group['group_privacy'] == "secret"}
									<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" opacity="0.7" class="align-text-top"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M12 3a12 12 0 0 0 8.5 3a12 12 0 0 1 -8.5 15a12 12 0 0 1 -8.5 -15a12 12 0 0 0 8.5 -3"></path><circle cx="12" cy="11" r="1"></circle><line x1="12" y1="12" x2="12" y2="14.5"></line></svg> {__("Secret Group")}
								{/if}
							<!-- privacy -->
							<span class="font-weight-bold ml5 mr5">•</span>
							<!-- members -->
								<a href="{$system['system_url']}/groups/{$group['group_name']}/members" class="body_color">{$group['group_members']} {__("members")}</a>
							<!-- members -->
							<span class="font-weight-bold ml5 mr5">•</span>
							<!-- posts -->
								{$group['posts_count']} {__("Posts")}
							<!-- posts -->
							<span class="font-weight-bold ml5 mr5">•</span>
							<!-- category -->
								{__($group['group_category_name'])}
							<!-- category -->
							
							{if $system['groups_reviews_enabled']}
								<!-- reviews -->
								<div>
									{$group['reviews_count']} {__("Reviews")}
									{if $group['group_rate']}
										<span class="badge badge-warning">{$group['group_rate']|number_format:1}</span>
									{/if}
								</div>
								<!-- reviews -->
							{/if}
					
							<!-- profile-buttons -->
							<div class="profile-buttons-wrapper mt25">
								{if $group['i_joined'] == "approved"}
									<button type="button" class="btn btn-sm btn-success btn-delete js_leave-group" data-id="{$group['group_id']}" data-privacy="{$group['group_privacy']}">
										<i class="fa fa-check mr5"></i>{__("Joined")}
									</button>
								{elseif $group['i_joined'] == "pending"}
									<button type="button" class="btn btn-sm btn-warning js_leave-group" data-id="{$group['group_id']}" data-privacy="{$group['group_privacy']}">
										<i class="fa fa-clock mr5"></i>{__("Pending")}
									</button>
								{else}
									<button type="button" class="btn btn-sm btn-success js_join-group" data-id="{$group['group_id']}" data-privacy="{if $group['i_admin']}public{else}{$group['group_privacy']}{/if}">
										<i class="fa fa-user-plus mr5"></i>{__("Join")}
									</button>
								{/if}
								
								{if $system['packages_enabled'] && $group['i_admin']}
									{if $group['group_boosted']}
										<button type="button" class="btn btn-sm btn-warning js_unboost-group" data-id="{$group['group_id']}">
											<i class="fa fa-bolt mr5"></i>{__("Unboost")}
										</button>
									{else}
										{if $user->_data['can_boost_groups']}
											<button type="button" class="btn btn-sm btn-warning js_boost-group" data-id="{$group['group_id']}">
												<i class="fa fa-bolt mr5"></i>{__("Boost")}
											</button>
										{else}
											<a href="{$system['system_url']}/packages" class="btn btn-sm btn-warning">
												<i class="fa fa-bolt mr5"></i>{__("Boost Group")}
											</a>
										{/if}
									{/if}
								{/if}
								
								<div class="d-inline-block dropdown">
									<button type="button" class="btn btn-secondary p-0 rounded-circle plr10" data-toggle="dropdown" data-display="static">
										<svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 0 24 24" width="20"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="currentColor" d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"></path></svg>
									</button>
									<ul class="dropdown-menu dropdown-menu-right ele_create_menu">
										<!-- share -->
										<li>
											<div class="dropdown-item pointer" data-toggle="modal" data-url="modules/share.php?node_type=group&node_username={$group['group_name']}">
												<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path fill="currentColor" d="M13.1202 17.0228L8.92129 14.7324C8.19135 15.5125 7.15261 16 6 16C3.79086 16 2 14.2091 2 12C2 9.79086 3.79086 8 6 8C7.15255 8 8.19125 8.48746 8.92118 9.26746L13.1202 6.97713C13.0417 6.66441 13 6.33707 13 6C13 3.79086 14.7909 2 17 2C19.2091 2 21 3.79086 21 6C21 8.20914 19.2091 10 17 10C15.8474 10 14.8087 9.51251 14.0787 8.73246L9.87977 11.0228C9.9583 11.3355 10 11.6629 10 12C10 12.3371 9.95831 12.6644 9.87981 12.9771L14.0788 15.2675C14.8087 14.4875 15.8474 14 17 14C19.2091 14 21 15.7909 21 18C21 20.2091 19.2091 22 17 22C14.7909 22 13 20.2091 13 18C13 17.6629 13.0417 17.3355 13.1202 17.0228ZM6 14C7.10457 14 8 13.1046 8 12C8 10.8954 7.10457 10 6 10C4.89543 10 4 10.8954 4 12C4 13.1046 4.89543 14 6 14ZM17 8C18.1046 8 19 7.10457 19 6C19 4.89543 18.1046 4 17 4C15.8954 4 15 4.89543 15 6C15 7.10457 15.8954 8 17 8ZM17 20C18.1046 20 19 19.1046 19 18C19 16.8954 18.1046 16 17 16C15.8954 16 15 16.8954 15 18C15 19.1046 15.8954 20 17 20Z"></path><path fill="currentColor" class="hover_path" d="M13.5759 17.2714L8.46576 14.484C7.83312 15.112 6.96187 15.5 6 15.5C4.067 15.5 2.5 13.933 2.5 12C2.5 10.067 4.067 8.5 6 8.5C6.96181 8.5 7.83301 8.88796 8.46564 9.51593L13.5759 6.72855C13.5262 6.49354 13.5 6.24983 13.5 6C13.5 4.067 15.067 2.5 17 2.5C18.933 2.5 20.5 4.067 20.5 6C20.5 7.933 18.933 9.5 17 9.5C16.0381 9.5 15.1669 9.11201 14.5343 8.48399L9.42404 11.2713C9.47382 11.5064 9.5 11.7501 9.5 12C9.5 12.2498 9.47383 12.4935 9.42408 12.7285L14.5343 15.516C15.167 14.888 16.0382 14.5 17 14.5C18.933 14.5 20.5 16.067 20.5 18C20.5 19.933 18.933 21.5 17 21.5C15.067 21.5 13.5 19.933 13.5 18C13.5 17.7502 13.5262 17.5064 13.5759 17.2714Z"></path></svg> {__("Share")}
											</div>
										</li>
										<!-- share -->
										{if $user->_logged_in && !$group['i_admin']}
											<!-- report -->
											<li>
												<div class="dropdown-item pointer" data-toggle="modal" data-url="data/report.php?do=create&handle=group&id={$group['group_id']}">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M3 3h9.382a1 1 0 0 1 .894.553L14 5h6a1 1 0 0 1 1 1v11a1 1 0 0 1-1 1h-6.382a1 1 0 0 1-.894-.553L12 16H5v6H3V3z"></path><path fill="currentColor" d="M5 16v6H3V3h9.382a1 1 0 0 1 .894.553L14 5h6a1 1 0 0 1 1 1v11a1 1 0 0 1-1 1h-6.382a1 1 0 0 1-.894-.553L12 16H5zM5 5v9h8.236l1 2H19V7h-6.236l-1-2H5z"></path></svg> {__("Report")}
												</div>
											</li>
											<!-- report -->
											<!-- manage -->
											{if $user->_is_admin}
												<li><div class="dropdown-divider"></div></li>
												<li>
													<a href="{$system['system_url']}/admincp/groups/edit_group/{$group['group_id']}">
														<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M9.243 19H21v2H3v-4.243l9.9-9.9 4.242 4.244L9.242 19zm5.07-13.556l2.122-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"></path><path fill="currentColor" d="M5 19h1.414l9.314-9.314-1.414-1.414L5 17.586V19zm16 2H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L9.243 19H21v2zM15.728 6.858l1.414 1.414 1.414-1.414-1.414-1.414-1.414 1.414z"></path></svg> {__("Edit in Admin Panel")}
													</a>
												</li>
											{elseif $user->_is_moderator}
												<li><div class="dropdown-divider"></div></li>
												<li>
													<a href="{$system['system_url']}/modcp/groups/edit_group/{$group['group_id']}">
														<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M9.243 19H21v2H3v-4.243l9.9-9.9 4.242 4.244L9.242 19zm5.07-13.556l2.122-2.122a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414l-2.122 2.121-4.242-4.242z"></path><path fill="currentColor" d="M5 19h1.414l9.314-9.314-1.414-1.414L5 17.586V19zm16 2H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L9.243 19H21v2zM15.728 6.858l1.414 1.414 1.414-1.414-1.414-1.414-1.414 1.414z"></path></svg> {__("Edit in Moderator Panel")}
													</a>
												</li>
											{/if}
											<!-- manage -->
										{/if}
									</ul>
								</div>
							</div>
							<!-- profile-buttons -->
						</div>
					
						{if $view == ""}
							<!-- subscribe -->
							{if $user->_logged_in && !$group['i_admin'] && $group['has_subscriptions_plans']}
								<div class="mt-3">
									<button class="btn btn-primary btn-mat btn-block" data-toggle="modal" data-url="monetization/controller.php?do=get_plans&node_id={$group['group_id']}&node_type=group" data-size="large">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M13.5476 3.25C15.3866 3.24999 16.8308 3.24998 17.9694 3.3786C19.1316 3.50988 20.074 3.78362 20.8574 4.40228C21.0919 4.58749 21.3093 4.79205 21.507 5.0138C22.1732 5.76101 22.4707 6.66669 22.6124 7.77785C22.6287 7.9057 22.6368 7.96963 22.6222 8.02578C22.5987 8.11553 22.5299 8.19375 22.4438 8.22835C22.39 8.25 22.3226 8.25 22.1878 8.25H1.81224H1.81223C1.67746 8.25 1.61007 8.25 1.55622 8.22835C1.47015 8.19375 1.40128 8.11553 1.37784 8.02578C1.36318 7.96963 1.37133 7.9057 1.38764 7.77785C1.52933 6.66669 1.82682 5.76101 2.49299 5.0138C2.69069 4.79205 2.90812 4.58749 3.14264 4.40228C3.92602 3.78362 4.86843 3.50988 6.03059 3.3786C7.16918 3.24998 8.61347 3.24999 10.4525 3.25H13.5476ZM22.75 12.0527C22.75 13.7768 22.75 15.1427 22.6124 16.2222C22.4707 17.3333 22.1732 18.239 21.507 18.9862C21.3093 19.2079 21.0919 19.4125 20.8574 19.5977C20.074 20.2164 19.1316 20.4901 17.9694 20.6214C16.8308 20.75 15.3866 20.75 13.5475 20.75H10.4525C8.61345 20.75 7.16917 20.75 6.03058 20.6214C4.86842 20.4901 3.926 20.2164 3.14263 19.5977C2.90811 19.4125 2.69068 19.2079 2.49298 18.9862C1.82681 18.239 1.52932 17.3333 1.38763 16.2222C1.24998 15.1427 1.24999 13.7767 1.25 12.0527V11.9473C1.25 11.3715 1.24999 10.8357 1.25512 10.3371C1.25795 10.0614 1.25937 9.92356 1.34704 9.83678C1.43472 9.75 1.57361 9.75 1.85139 9.75H22.1486C22.4264 9.75 22.5653 9.75 22.653 9.83678C22.7406 9.92356 22.7421 10.0614 22.7449 10.3371C22.75 10.8355 22.75 11.3712 22.75 11.9467V11.9468V11.947V11.9471V11.9472V12.0527ZM10.25 16C10.25 15.5858 10.5858 15.25 11 15.25H12.5C12.9142 15.25 13.25 15.5858 13.25 16C13.25 16.4142 12.9142 16.75 12.5 16.75H11C10.5858 16.75 10.25 16.4142 10.25 16ZM15.5 15.25C15.0858 15.25 14.75 15.5858 14.75 16C14.75 16.4142 15.0858 16.75 15.5 16.75H19C19.4142 16.75 19.75 16.4142 19.75 16C19.75 15.5858 19.4142 15.25 19 15.25H15.5Z" fill="currentColor"/></svg> {__("SUBSCRIBE FOR")} {if $group['group_monetization_discount_enabled']}{print_money($group['group_monetization_min_price'] * (1 - $group['group_monetization_discount_percent'] / 100))}{/if}{if $group['group_monetization_discount_enabled']}<span style="text-decoration: line-through;" class="ml5">{/if}{print_money($group['group_monetization_min_price'])}{if $group['group_monetization_discount_enabled']}</span>{/if}
									</button>
								</div>
							{/if}
							<!-- subscribe -->
						
							<!-- right panel -->
							<!-- panel [about] -->
								{if !is_empty($group['group_description'])}
									<hr class="mt25 mb20">
									<div class="js_readmore overflow-hidden">
										{$group['group_description']|nl2br}
									</div>
								{/if}
							<!-- panel [about] -->

							<!-- custom fields [basic] -->
							{if $custom_fields['basic']}
								<div class="valign ele_sidebar_widget_title px-0">
									<b>{__("Info")}</b>
								</div>
								<div class="profle-meta-wrapper mt-n1">
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
							{/if}
							<!-- custom fields [basic] -->
							<!-- right panel -->
						{/if}
					</div>
				</div>
				
				<!-- search -->
				<div class="ele_content p-3 mb15">
					<form action="{$system['system_url']}/groups/{$group['group_name']}/search" method="get">
						<div class="input-group align-items-center el_prof_search_bar">
							<input type="text" name="query" class="form-control" placeholder='{__("Search")}' {if $query}value="{$query}" {/if}>
							<button type="submit" class="btn p-2 rounded-circle border-0 shadow-none btn-primary">
								<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="currentColor" d="M15.5 14h-.79l-.28-.27c1.2-1.4 1.82-3.31 1.48-5.34-.47-2.78-2.79-5-5.59-5.34-4.23-.52-7.79 3.04-7.27 7.27.34 2.8 2.56 5.12 5.34 5.59 2.03.34 3.94-.28 5.34-1.48l.27.28v.79l4.25 4.25c.41.41 1.08.41 1.49 0 .41-.41.41-1.08 0-1.49L15.5 14zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
							</button>
						</div>
					</form>
				</div>
				<!-- search -->
				
				<!-- photos -->
				{if $group['photos']}
					<div class="ele_content p-0 mb15 panel-photos">
						<div class="valign ele_sidebar_widget_title">
							<b><a href="{$system['system_url']}/groups/{$group['group_name']}/photos" class="body_color">{__("Photos")}</a></b>
						</div>
						
						<div class="pb10 plr10">
							<div class="row no-gutters mx-0">
								{foreach $group['photos'] as $photo}
									{include file='__feeds_photo.tpl' _context="photos" _small=true}
								{/foreach}
							</div>
						</div>
					</div>
				{/if}
				<!-- photos -->
				
				<!-- subscribers -->
				{if $group['subscribers_count'] > 0}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b><a href="{$system['system_url']}/groups/{$group['group_name']}/subscribers" class="body_color">{__("Subscribers")}</a> <span class="badge badge-pill badge-info">{$group['subscribers_count']}</span></b>
						</div>
						<div class="row no-gutters">
							{foreach $group['subscribers'] as $_subscriber}
								<div class="col-3 col-lg-4">
									<div class="circled-user-box">
										<a class="user-box" href="{$system['system_url']}/{$_subscriber['user_name']}">
											<img src="{$_subscriber['user_picture']}" />
											<div class="name">{if $system['show_usernames_enabled']}{$_subscriber['user_name']}{else}{$_subscriber['user_firstname']} {$_subscriber['user_lastname']}{/if}</div>
										</a>
									</div>
								</div>
							{/foreach}
						</div>
					</div>
				{/if}
				<!-- subscribers -->
				
				<!-- invite friends -->
				{if $group['i_joined'] == "approved" && $group['invites']}
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b><a href="{$system['system_url']}/groups/{$group['group_name']}/invites" class="body_color">{__("Invite Friends")}</a></b>
						</div>
						<ul class="ele_side_users">
							{foreach $group['invites'] as $_user}
							{include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"]}
							{/foreach}
						</ul>
					</div>
				{/if}
				<!-- invite friends -->
			</div>
			
			<!-- chatbox -->
			{if $system['chat_enabled'] && $group['chatbox_enabled']}
				{include file='_chatbox.tpl' _node_type="group" _node=$group}
			{/if}
			<!-- chatbox -->
		</div>
		
		<div class="col-lg-7 ele_sett_membrs">
			{if $group['group_privacy'] == "closed" && $group['i_joined'] != "approved" && !$group['i_admin'] && !$user->_is_admin && !$user->_is_moderator}
			{else}
				<!-- profile-tabs -->
                <div class="ele_content content-tabs mt-0 mb15 p-0 border-0">
                    <ul class="ele_scroll">
						<li {if $view == ""}class="active"{/if}>
							<a href="{$system['system_url']}/groups/{$group['group_name']}">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.6601 10.44L20.6801 14.62C19.8401 18.23 18.1801 19.69 15.0601 19.39C14.5601 19.35 14.0201 19.26 13.4401 19.12L11.7601 18.72C7.59006 17.73 6.30006 15.67 7.28006 11.49L8.26006 7.30001C8.46006 6.45001 8.70006 5.71001 9.00006 5.10001C10.1701 2.68001 12.1601 2.03001 15.5001 2.82001L17.1701 3.21001C21.3601 4.19001 22.6401 6.26001 21.6601 10.44Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M15.06 19.39C14.44 19.81 13.66 20.16 12.71 20.47L11.13 20.99C7.15998 22.27 5.06997 21.2 3.77997 17.23L2.49997 13.28C1.21997 9.30998 2.27997 7.20998 6.24997 5.92998L7.82997 5.40998C8.23997 5.27998 8.62997 5.16998 8.99997 5.09998C8.69997 5.70998 8.45997 6.44998 8.25997 7.29998L7.27997 11.49C6.29997 15.67 7.58998 17.73 11.76 18.72L13.44 19.12C14.02 19.26 14.56 19.35 15.06 19.39Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M12.64 8.53003L17.49 9.76003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M11.66 12.4L14.56 13.14" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Timeline")}
							</a>
						</li>
						<li {if $view == "photos" || $view == "albums" || $view == "album"}class="active"{/if}>
							<a href="{$system['system_url']}/groups/{$group['group_name']}/photos">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9 22H15C20 22 22 20 22 15V9C22 4 20 2 15 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M9 10C10.1046 10 11 9.10457 11 8C11 6.89543 10.1046 6 9 6C7.89543 6 7 6.89543 7 8C7 9.10457 7.89543 10 9 10Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M2.67004 18.9501L7.60004 15.6401C8.39004 15.1101 9.53004 15.1701 10.24 15.7801L10.57 16.0701C11.35 16.7401 12.61 16.7401 13.39 16.0701L17.55 12.5001C18.33 11.8301 19.59 11.8301 20.37 12.5001L22 13.9001" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Photos")}
							</a>
						</li>
						{if $system['videos_enabled']}
							<li {if $view == "videos"}class="active"{/if}>
								<a href="{$system['system_url']}/groups/{$group['group_name']}/videos">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12.53 20.4201H6.21C3.05 20.4201 2 18.3201 2 16.2101V7.79008C2 4.63008 3.05 3.58008 6.21 3.58008H12.53C15.69 3.58008 16.74 4.63008 16.74 7.79008V16.2101C16.74 19.3701 15.68 20.4201 12.53 20.4201Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M19.52 17.0999L16.74 15.1499V8.83989L19.52 6.88989C20.88 5.93989 22 6.51989 22 8.18989V15.8099C22 17.4799 20.88 18.0599 19.52 17.0999Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M11.5 11C12.3284 11 13 10.3284 13 9.5C13 8.67157 12.3284 8 11.5 8C10.6716 8 10 8.67157 10 9.5C10 10.3284 10.6716 11 11.5 11Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Videos")}
								</a>
							</li>
						{/if}
						{if $system['reels_enabled']}
							<li {if $view == "reels"}class="active"{/if}>
								<a href="{$system['system_url']}/groups/{$group['group_name']}/reels">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M22 15V9C22 4 20 2 15 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22H15C20 22 22 20 22 15Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M2.52002 7.11011H21.48" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M8.52002 2.11011V6.97011" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.48 2.11011V6.52011" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M9.75 14.4501V13.2501C9.75 11.7101 10.84 11.0801 12.17 11.8501L13.21 12.4501L14.25 13.0501C15.58 13.8201 15.58 15.0801 14.25 15.8501L13.21 16.4501L12.17 17.0501C10.84 17.8201 9.75 17.1901 9.75 15.6501V14.4501V14.4501Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Reels")}
								</a>
							</li>
						{/if}
						{if $system['blogs_enabled']}
							<li {if $view == "blogs"}class="active"{/if}>
								<a href="{$system['system_url']}/groups/{$group['group_name']}/blogs">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18 15V9C18 6.17157 18 4.75736 17.1213 3.87868C16.2426 3 14.8284 3 12 3H8C5.17157 3 3.75736 3 2.87868 3.87868C2 4.75736 2 6.17157 2 9V15C2 17.8284 2 19.2426 2.87868 20.1213C3.75736 21 5.17157 21 8 21H20" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M6 8L14 8" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M6 12L14 12" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M6 16L10 16" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M18 8H19C20.4142 8 21.1213 8 21.5607 8.43934C22 8.87868 22 9.58579 22 11V19C22 20.1046 21.1046 21 20 21C18.8954 21 18 20.1046 18 19V8Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Blogs")}
								</a>
							</li>
						{/if}
						{if $system['market_enabled']}
							<li {if $view == "products"}class="active"{/if}>
								<a href="{$system['system_url']}/groups/{$group['group_name']}/products">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M3.00999 11.22V15.71C3.00999 20.2 4.80999 22 9.29999 22H14.69C19.18 22 20.98 20.2 20.98 15.71V11.22" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 12C13.83 12 15.18 10.51 15 8.68L14.34 2H9.67L9 8.68C8.82 10.51 10.17 12 12 12Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M18.31 12C20.33 12 21.81 10.36 21.61 8.35L21.33 5.6C20.97 3 19.97 2 17.35 2H14.3L15 9.01C15.17 10.66 16.66 12 18.31 12Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M5.64 12C7.29 12 8.78 10.66 8.94 9.01L9.16 6.8L9.64001 2H6.59C3.97001 2 2.97 3 2.61 5.6L2.34 8.35C2.14 10.36 3.62 12 5.64 12Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 17C10.33 17 9.5 17.83 9.5 19.5V22H14.5V19.5C14.5 17.83 13.67 17 12 17Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Store")}
								</a>
							</li>
						{/if}
						{if $system['groups_reviews_enabled']}
							<li {if $view == "reviews"}class="active"{/if}>
								<a href="{$system['system_url']}/groups/{$group['group_name']}/reviews">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M13.73 3.51001L15.49 7.03001C15.73 7.52002 16.37 7.99001 16.91 8.08001L20.1 8.61001C22.14 8.95001 22.62 10.43 21.15 11.89L18.67 14.37C18.25 14.79 18.02 15.6 18.15 16.18L18.86 19.25C19.42 21.68 18.13 22.62 15.98 21.35L12.99 19.58C12.45 19.26 11.56 19.26 11.01 19.58L8.01997 21.35C5.87997 22.62 4.57997 21.67 5.13997 19.25L5.84997 16.18C5.97997 15.6 5.74997 14.79 5.32997 14.37L2.84997 11.89C1.38997 10.43 1.85997 8.95001 3.89997 8.61001L7.08997 8.08001C7.61997 7.99001 8.25997 7.52002 8.49997 7.03001L10.26 3.51001C11.22 1.60001 12.78 1.60001 13.73 3.51001Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Reviews")}
								</a>
							</li>
						{/if}
						<li {if $view == "members" || $view == "invites"}class="active"{/if}>
							<a href="{$system['system_url']}/groups/{$group['group_name']}/members">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18 7.16C17.94 7.15 17.87 7.15 17.81 7.16C16.43 7.11 15.33 5.98 15.33 4.58C15.33 3.15 16.48 2 17.91 2C19.34 2 20.49 3.16 20.49 4.58C20.48 5.98 19.38 7.11 18 7.16Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M16.9699 14.44C18.3399 14.67 19.8499 14.43 20.9099 13.72C22.3199 12.78 22.3199 11.24 20.9099 10.3C19.8399 9.59004 18.3099 9.35003 16.9399 9.59003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M5.96998 7.16C6.02998 7.15 6.09998 7.15 6.15998 7.16C7.53998 7.11 8.63998 5.98 8.63998 4.58C8.63998 3.15 7.48998 2 6.05998 2C4.62998 2 3.47998 3.16 3.47998 4.58C3.48998 5.98 4.58998 7.11 5.96998 7.16Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M6.99994 14.44C5.62994 14.67 4.11994 14.43 3.05994 13.72C1.64994 12.78 1.64994 11.24 3.05994 10.3C4.12994 9.59004 5.65994 9.35003 7.02994 9.59003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M12 14.63C11.94 14.62 11.87 14.62 11.81 14.63C10.43 14.58 9.32996 13.45 9.32996 12.05C9.32996 10.62 10.48 9.46997 11.91 9.46997C13.34 9.46997 14.49 10.63 14.49 12.05C14.48 13.45 13.38 14.59 12 14.63Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M9.08997 17.78C7.67997 18.72 7.67997 20.26 9.08997 21.2C10.69 22.27 13.31 22.27 14.91 21.2C16.32 20.26 16.32 18.72 14.91 17.78C13.32 16.72 10.69 16.72 9.08997 17.78Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Members")}
							</a>
						</li>
						{if $group['i_admin']}
							<li {if $view == "settings"}class="active"{/if}>
								<a href="{$system['system_url']}/groups/{$group['group_name']}/settings">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 15C13.6569 15 15 13.6569 15 12C15 10.3431 13.6569 9 12 9C10.3431 9 9 10.3431 9 12C9 13.6569 10.3431 15 12 15Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M2 12.8799V11.1199C2 10.0799 2.85 9.21994 3.9 9.21994C5.71 9.21994 6.45 7.93994 5.54 6.36994C5.02 5.46994 5.33 4.29994 6.24 3.77994L7.97 2.78994C8.76 2.31994 9.78 2.59994 10.25 3.38994L10.36 3.57994C11.26 5.14994 12.74 5.14994 13.65 3.57994L13.76 3.38994C14.23 2.59994 15.25 2.31994 16.04 2.78994L17.77 3.77994C18.68 4.29994 18.99 5.46994 18.47 6.36994C17.56 7.93994 18.3 9.21994 20.11 9.21994C21.15 9.21994 22.01 10.0699 22.01 11.1199V12.8799C22.01 13.9199 21.16 14.7799 20.11 14.7799C18.3 14.7799 17.56 16.0599 18.47 17.6299C18.99 18.5399 18.68 19.6999 17.77 20.2199L16.04 21.2099C15.25 21.6799 14.23 21.3999 13.76 20.6099L13.65 20.4199C12.75 18.8499 11.27 18.8499 10.36 20.4199L10.25 20.6099C9.78 21.3999 8.76 21.6799 7.97 21.2099L6.24 20.2199C5.33 19.6999 5.02 18.5299 5.54 17.6299C6.45 16.0599 5.71 14.7799 3.9 14.7799C2.85 14.7799 2 13.9199 2 12.8799Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Settings")}
								</a>
							</li>
						{/if}
                    </ul>
					
					<!-- super admin alert -->
					{if $user->_data['user_group'] < 3 && ($group['group_privacy'] == "secret" || $group['group_privacy'] == "closed") && ($group['i_joined'] != "approved" && !$group['i_admin']) }
						<div class="alert alert-warning">
							<button type="button" class="close bold" data-dismiss="alert" aria-label="Close"><span>&times;</span></button>
							<div class="icon"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 15c-.55 0-1-.45-1-1v-4c0-.55.45-1 1-1s1 .45 1 1v4c0 .55-.45 1-1 1zm1-8h-2V7h2v2z"/></svg></div>
							<div class="text align-middle">
								{__("You can access this as your account is system admin account!")}
							</div>
						</div>
					{/if}
					<!-- super admin alert -->
                </div>
                <!-- profile-tabs -->
			{/if}
			
			
			<!-- view content -->
                {if $view == ""}
					{include file='_ads.tpl'}

					{if $get == "posts_group"}
						<!-- group requests -->
						{if $group['i_admin'] && $group['total_requests'] > 0}
							<div class="ele_content p-3 mb20 bold">
								<a href="{$system['system_url']}/groups/{$group['group_name']}/settings/requests">
									<span class="badge badge-secondary mr5 align-middle">{$group['total_requests']}</span>{if $group['total_requests'] == 1}{__("person")}{else}{__("persons")}{/if} {__("wants to join this group")}
								</a>
							</div>
						{/if}
						<!-- group requests -->

						<!-- group pending posts -->
						{if $group['pending_posts'] > 0}
							<div class="ele_content p-3 mb20 bold">
								<a href="?pending">
									{if $group['i_admin']}
										<span class="badge badge-secondary mr5 align-middle">{$group['pending_posts']}</span>{if $group['pending_posts'] == 1}{__("post")}{else}{__("posts")}{/if} {__("pending needs your approval")}
									{else}
										{__("You have")}<span class="badge badge-secondary mlr5 align-middle">{$group['pending_posts']}</span>{if $group['pending_posts'] == 1}{__("post")}{else}{__("posts")}{/if} {__("pending")}
									{/if}
								</a>
							</div>
						{/if}
						<!-- group pending posts -->

						<!-- publisher -->
						{if $group['i_joined'] == "approved" && ($group['group_publish_enabled'] OR (!$group['group_publish_enabled'] && $group['i_admin']))}
							{include file='_publisher.tpl' _handle="group" _id=$group['group_id'] _node_can_monetize_content=$group['can_monetize_content'] _node_monetization_enabled=$group['group_monetization_enabled'] _node_monetization_plans=$group['group_monetization_plans']}
						{/if}
						<!-- publisher -->

						<!-- pinned post -->
						{if $pinned_post}
							{include file='_pinned_post.tpl' post=$pinned_post _get="posts_group"}
						{/if}
						<!-- pinned post -->

						<!-- posts -->
						{include file='_posts.tpl' _get="posts_group" _id=$group['group_id']}
						<!-- posts -->
					{else}
						<!-- posts -->
						{include file='_posts.tpl' _get=$get _id=$group['group_id'] _title=__("Pending Posts")}
						<!-- posts -->
					{/if}

                    <!-- left panel -->
                
                {elseif $view == "photos"}
                    <!-- photos -->
					{if $group['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='group' node_id=$group['group_id'] price=$group['group_monetization_min_price'] discount_enabled=$group['group_monetization_discount_enabled'] discount_percent=$group['group_monetization_discount_percent']}
					{else}
					<div class="ele_content ele_page_content panel-photos">
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.9 13.98l2.1 2.53 3.1-3.99c.2-.26.6-.26.8.01l3.51 4.68c.25.33.01.8-.4.8H6.02c-.42 0-.65-.48-.39-.81L8.12 14c.19-.26.57-.27.78-.02z"></path></svg> {__("Photos")}</div>
							<div class="valign align-items-start">
								<div class="valign nav ele_switch_tabs m-0" role="tablist">
									<div><a href="{$system['system_url']}/groups/{$group['group_name']}/photos" class="active">{__("Photos")}</a></div>
									<div><a href="{$system['system_url']}/groups/{$group['group_name']}/albums">{__("Albums")}</a></div>
								</div>
							</div>
						</div>
						
						{if $group['photos']}
							<ul class="row no-gutters mx-0">
								{foreach $group['photos'] as $photo}
									{include file='__feeds_photo.tpl' _context="photos" _vsmall=true}
								{/foreach}
							</ul>
							<!-- see-more -->
							<div class="alert alert-info see-more js_see-more" data-get="photos" data-id="{$group['group_id']}" data-type='group'>
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V13.9L20.37 12.5C19.59 11.83 18.33 11.83 17.55 12.5L13.39 16.07C12.61 16.74 11.35 16.74 10.57 16.07L10.23 15.79C9.52 15.17 8.39 15.11 7.59 15.65L2.67 18.95L2.56 19.03C2.19 18.23 2 17.28 2 16.19V7.81C2 4.17 4.17 2 7.81 2H16.19C19.83 2 22 4.17 22 7.81Z" fill="currentColor"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z" fill="currentColor"/><path d="M21.9986 13.8986V16.1886C21.9986 19.8286 19.8286 21.9986 16.1886 21.9986H7.80859C5.25859 21.9986 3.41859 20.9286 2.55859 19.0286L2.66859 18.9486L7.58859 15.6486C8.38859 15.1086 9.51859 15.1686 10.2286 15.7886L10.5686 16.0686C11.3486 16.7386 12.6086 16.7386 13.3886 16.0686L17.5486 12.4986C18.3286 11.8286 19.5886 11.8286 20.3686 12.4986L21.9986 13.8986Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have photos")}
							</div>
						{/if}
					</div>
					{/if}
                    <!-- photos -->
                
                {elseif $view == "albums"}
                    <!-- albums -->
					{if $group['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='group' node_id=$group['group_id'] price=$group['group_monetization_min_price'] discount_enabled=$group['group_monetization_discount_enabled'] discount_percent=$group['group_monetization_discount_percent']}
					{else}
					<div class="ele_content ele_page_content">
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb0 justify-content-between">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.9 13.98l2.1 2.53 3.1-3.99c.2-.26.6-.26.8.01l3.51 4.68c.25.33.01.8-.4.8H6.02c-.42 0-.65-.48-.39-.81L8.12 14c.19-.26.57-.27.78-.02z"></path></svg> {__("Albums")}</div>
							<div class="valign align-items-start">
								<div class="valign nav ele_switch_tabs m-0" role="tablist">
									<div><a href="{$system['system_url']}/groups/{$group['group_name']}/photos">{__("Photos")}</a></div>
									<div><a href="{$system['system_url']}/groups/{$group['group_name']}/albums" class="active">{__("Albums")}</a></div>
								</div>
							</div>
						</div>

						{if $group['albums']}
							<ul class="row">
								{foreach $group['albums'] as $album}
								{include file='__feeds_album.tpl' _vsmall=true}
								{/foreach}
							</ul>
							{if count($group['albums']) >= $system['max_results_even']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="albums" data-id="{$group['group_id']}" data-type='group'>
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{/if}
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V13.9L20.37 12.5C19.59 11.83 18.33 11.83 17.55 12.5L13.39 16.07C12.61 16.74 11.35 16.74 10.57 16.07L10.23 15.79C9.52 15.17 8.39 15.11 7.59 15.65L2.67 18.95L2.56 19.03C2.19 18.23 2 17.28 2 16.19V7.81C2 4.17 4.17 2 7.81 2H16.19C19.83 2 22 4.17 22 7.81Z" fill="currentColor"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z" fill="currentColor"/><path d="M21.9986 13.8986V16.1886C21.9986 19.8286 19.8286 21.9986 16.1886 21.9986H7.80859C5.25859 21.9986 3.41859 20.9286 2.55859 19.0286L2.66859 18.9486L7.58859 15.6486C8.38859 15.1086 9.51859 15.1686 10.2286 15.7886L10.5686 16.0686C11.3486 16.7386 12.6086 16.7386 13.3886 16.0686L17.5486 12.4986C18.3286 11.8286 19.5886 11.8286 20.3686 12.4986L21.9986 13.8986Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have albums")}
							</div>
						{/if}
					</div>
					{/if}
                    <!-- albums -->
                
                {elseif $view == "album"}
				
                    <!-- albums -->
					{if $group['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='group' node_id=$group['group_id'] price=$group['group_monetization_min_price'] discount_enabled=$group['group_monetization_discount_enabled'] discount_percent=$group['group_monetization_discount_percent']}
					{else}
					<div class="ele_content ele_page_content panel-photos">
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb0 justify-content-between">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M21 19V5c0-1.1-.9-2-2-2H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2zM8.9 13.98l2.1 2.53 3.1-3.99c.2-.26.6-.26.8.01l3.51 4.68c.25.33.01.8-.4.8H6.02c-.42 0-.65-.48-.39-.81L8.12 14c.19-.26.57-.27.78-.02z"></path></svg> {__("Albums")}</div>
							<a href="{$system['system_url']}/groups/{$group['group_name']}/albums" class="btn btn-sm btn-mat btn-secondary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Back to Albums")}</a>
						</div>
						
						{include file='_album.tpl'}
					</div>
					{/if}
                    <!-- albums -->

                {elseif $view == "videos"}
				
                    <!-- videos -->
					{if $group['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='group' node_id=$group['group_id'] price=$group['group_monetization_min_price'] discount_enabled=$group['group_monetization_discount_enabled'] discount_percent=$group['group_monetization_discount_percent']}
					{else}
					<div class="ele_content ele_page_content panel-videos">
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17,10.5V7A1,1 0 0,0 16,6H4A1,1 0 0,0 3,7V17A1,1 0 0,0 4,18H16A1,1 0 0,0 17,17V13.5L21,17.5V6.5L17,10.5Z"></path></svg> {__("Videos")}
						</div>
						
						{if $group['videos']}
							<ul class="row no-gutters mx-0">
								{foreach $group['videos'] as $video}
									{include file='__feeds_video.tpl'}
								{/foreach}
							</ul>
							<!-- see-more -->
							<div class="alert alert-info see-more js_see-more" data-get="videos" data-id="{$group['group_id']}" data-type='group'>
								<span>{__("See More")}</span>
								<div class="loader loader_small x-hidden"></div>
							</div>
							<!-- see-more -->
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V16.19C22 19.83 19.83 22 16.19 22H7.81C4.17 22 2 19.83 2 16.19V7.81C2 7.3 2.04 6.81 2.13 6.36C2.64 3.61 4.67 2.01 7.77 2H16.23C19.33 2.01 21.36 3.61 21.87 6.36C21.96 6.81 22 7.3 22 7.81Z" fill="currentColor"/><path d="M22 7.81V7.86H2V7.81C2 7.3 2.04 6.81 2.13 6.36H7.77V2H9.27V6.36H14.73V2H16.23V6.36H21.87C21.96 6.81 22 7.3 22 7.81Z" fill="currentColor"/><path d="M14.4411 12.7208L12.3611 11.5208C11.5911 11.0808 10.8511 11.0208 10.2711 11.3508C9.69109 11.6808 9.37109 12.3608 9.37109 13.2408V15.6408C9.37109 16.5208 9.69109 17.2008 10.2711 17.5308C10.5211 17.6708 10.8011 17.7408 11.0911 17.7408C11.4911 17.7408 11.9211 17.6108 12.3611 17.3608L14.4411 16.1608C15.2111 15.7208 15.6311 15.1008 15.6311 14.4308C15.6311 13.7608 15.2011 13.1708 14.4411 12.7208Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have videos")}
							</div>
						{/if}
					</div>
					{/if}
                    <!-- videos -->

				{elseif $view == "reels"}
				
					<!-- reels -->
					{if $group['needs_subscription']}
						{include file='_need_subscription.tpl' node_type='group' node_id=$group['group_id'] price=$group['group_monetization_min_price'] discount_enabled=$group['group_monetization_discount_enabled'] discount_percent=$group['group_monetization_discount_percent'] node_type='group'}
					{else}
					<div class="col-12">
						<div class="ele_content ele_page_content panel-videos">
							<div class="valign ele_page_hdng border-0 pt20 pb5 mb15">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17,10.5V7A1,1 0 0,0 16,6H4A1,1 0 0,0 3,7V17A1,1 0 0,0 4,18H16A1,1 0 0,0 17,17V13.5L21,17.5V6.5L17,10.5Z"></path></svg> {__("Reels")}
							</div>
							
							{if $group['reels']}
								<ul class="row no-gutters mx-0">
									{foreach $group['reels'] as $video}
										{include file='__feeds_video.tpl'  _is_reel=true}
									{/foreach}
								</ul>
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more mt20" data-get="videos_reels" data-id="{$group['group_id']}" data-type='group'>
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{else}
								<div class="text-center empty_state">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V16.19C22 19.83 19.83 22 16.19 22H7.81C4.17 22 2 19.83 2 16.19V7.81C2 7.3 2.04 6.81 2.13 6.36C2.64 3.61 4.67 2.01 7.77 2H16.23C19.33 2.01 21.36 3.61 21.87 6.36C21.96 6.81 22 7.3 22 7.81Z" fill="currentColor"/><path d="M22 7.81V7.86H2V7.81C2 7.3 2.04 6.81 2.13 6.36H7.77V2H9.27V6.36H14.73V2H16.23V6.36H21.87C21.96 6.81 22 7.3 22 7.81Z" fill="currentColor"/><path d="M14.4411 12.7208L12.3611 11.5208C11.5911 11.0808 10.8511 11.0208 10.2711 11.3508C9.69109 11.6808 9.37109 12.3608 9.37109 13.2408V15.6408C9.37109 16.5208 9.69109 17.2008 10.2711 17.5308C10.5211 17.6708 10.8011 17.7408 11.0911 17.7408C11.4911 17.7408 11.9211 17.6108 12.3611 17.3608L14.4411 16.1608C15.2111 15.7208 15.6311 15.1008 15.6311 14.4308C15.6311 13.7608 15.2011 13.1708 14.4411 12.7208Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have reels")}
								</div>
							{/if}
						</div>
					</div>
					{/if}
					<!-- reels -->

				{elseif $view == "blogs"}
				
					<!-- blogs -->
					<div class="col-12">
						<div class="valign ele_page_hdng border-0 p-0 mb15">
							<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor"><path d="M160-120q-33 0-56.5-23.5T80-200v-640l67 67 66-67 67 67 67-67 66 67 67-67 67 67 66-67 67 67 67-67 66 67 67-67v640q0 33-23.5 56.5T800-120H160Zm0-80h280v-240H160v240Zm360 0h280v-80H520v80Zm0-160h280v-80H520v80ZM160-520h640v-120H160v120Z"/></svg> {__("Blogs")}
						</div>
						
						{if $group['needs_subscription']}
							{include file='_need_subscription.tpl' node_type='group' node_id=$group['group_id'] price=$group['group_monetization_min_price'] discount_enabled=$group['group_monetization_discount_enabled'] discount_percent=$group['group_monetization_discount_percent']}
						{else}
							<!-- search -->
							<div class="ele_content p-3 mb15">
								<form action="{$system['system_url']}/groups/{$group['group_name']}/search" method="get">
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
								<div class="alert alert-post see-more js_see-more" data-get="blogs_group" data-id="{$group['group_id']}">
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
							
						{if $group['needs_subscription']}
							{include file='_need_subscription.tpl' node_type='group' node_id=$group['group_id'] price=$group['group_monetization_min_price'] discount_enabled=$group['group_monetization_discount_enabled'] discount_percent=$group['group_monetization_discount_percent'] node_type='group'}
						{else}
							<!-- search -->
							<div class="ele_content p-3 mb15">
								<form action="{$system['system_url']}/groups/{$group['group_name']}/search" method="get">
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
								<div class="alert alert-info see-more js_see-more mt20" data-get="products_group" data-id="{$group['group_id']}">
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
					
				{elseif $view == "reviews"}
					<!-- reviews -->
					<div class="col-12">
						<div class="ele_content ele_page_content">
							<div class="valign ele_page_hdng border-0 pt20 pb5 mb15">
								<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 -960 960 960" width="16"><path fill="currentColor" d="M480-229 314-129q-11 7-23 6t-21-8q-9-7-14-17.5t-2-23.5l44-189-147-127q-10-9-12.5-20.5T140-531q4-11 12-18t22-9l194-17 75-178q5-12 15.5-18t21.5-6q11 0 21.5 6t15.5 18l75 178 194 17q14 2 22 9t12 18q4 11 1.5 22.5T809-488L662-361l44 189q3 13-2 23.5T690-131q-9 7-21 8t-23-6L480-229Z"/></svg> {__("Reviews")}
							</div>

							<div class="valign flex-wrap justify-content-between p-3 p-md-4 tag_page_rate">
								<div>
									<p class="mb-1 bold">{__("Rating")}</p>
									<div class="valign tag_page_rating">
										<h5>{$group['group_rate']|number_format:1}</h5>
										<span class="valign review-stars">
											{include file='__stars_rate.tpl' rate=$group['group_rate']}
										</span>
									</div>
									<small>{__("Based on")} {__($group['reviews_count'])} {__("Reviews")}</small>
								</div>
								{if !$group['i_admin']}
									<button type="button" class="btn btn-mat btn-primary" data-toggle="modal" data-url="modules/review.php?do=review&id={$group['group_id']}&type=group">{__("Add")} {__("Review")}</button>
								{/if}
							</div>

							{if $group['reviews_count'] > 0}
								<ul class="row review_row">
									{foreach $group['reviews'] as $_review}
										{include file='__feeds_review.tpl' _darker=true}
									{/foreach}
								</ul>
								{if $group['reviews_count'] >= $system['max_results_even']}
									<!-- see-more -->
									<div class="alert alert-info see-more mt0 mb20 js_see-more" data-get="reviews" data-id="{$group['group_id']}" data-type="group">
										<span>{__("See More")}</span>
										<div class="loader loader_small x-hidden"></div>
									</div>
									<!-- see-more -->
								{/if}
							{else}
								<div class="text-center empty_state">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M5.73937 16C5.84937 15.51 5.64937 14.81 5.29937 14.46L2.86937 12.03C2.10937 11.27 1.80937 10.46 2.02937 9.76C2.25937 9.06 2.96937 8.58 4.02937 8.4L7.14937 7.88C7.59937 7.8 8.14937 7.4 8.35937 6.99L10.0794 3.54C10.5794 2.55 11.2594 2 11.9994 2C12.7394 2 13.4194 2.55 13.9194 3.54L15.6394 6.99C15.7694 7.25 16.0394 7.5 16.3294 7.67L5.55937 18.44C5.41937 18.58 5.17937 18.45 5.21937 18.25L5.73937 16Z" fill="currentColor"/><path d="M18.7008 14.4599C18.3408 14.8199 18.1408 15.5099 18.2608 15.9999L18.9508 19.0099C19.2408 20.2599 19.0608 21.1999 18.4408 21.6499C18.1908 21.8299 17.8908 21.9199 17.5408 21.9199C17.0308 21.9199 16.4308 21.7299 15.7708 21.3399L12.8408 19.5999C12.3808 19.3299 11.6208 19.3299 11.1608 19.5999L8.23078 21.3399C7.12078 21.9899 6.17078 22.0999 5.56078 21.6499C5.33078 21.4799 5.16078 21.2499 5.05078 20.9499L17.2108 8.7899C17.6708 8.3299 18.3208 8.1199 18.9508 8.2299L19.9608 8.3999C21.0208 8.5799 21.7308 9.0599 21.9608 9.7599C22.1808 10.4599 21.8808 11.2699 21.1208 12.0299L18.7008 14.4599Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have reviews")}
								</div>
							{/if}
						</div>
					</div>
					<!-- reviews -->
                
                {elseif $view == "members"}
				
                    <!-- members -->
					<div class="ele_content ele_page_content">
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z"></path></svg> {$group['group_members']} {__("Members")}</div>
							<div class="valign align-items-start mt-3 mt-md-0 mw-100">
								<div class="valign nav ele_switch_tabs m-0" role="tablist">
									{if $group['i_joined'] == "approved"}
										<div><a href="{$system['system_url']}/groups/{$group['group_name']}/invites">{__("Invites")}</a></div>
									{/if}
									{if $group['has_subscriptions_plans']}
										<div><a href="{$system['system_url']}/groups/{$group['group_name']}/subscribers">{__("Subscribers")}</a></div>
									{/if}
								</div>
							</div>
						</div>
						{if $group['group_members'] > 0}
							<ul class="row">
								{foreach $group['members'] as $_user}
								{include file='__feeds_user.tpl' _tpl="box" _connection=$_user["connection"] _vsmall=true _darker=true}
								{/foreach}
							</ul>

							{if $group['group_members'] >= $system['max_results_even']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="group_members" data-id="{$group['group_id']}">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{/if}
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have members")}
							</div>
						{/if}
					</div>
                    <!-- members -->
				
				{elseif $view == "subscribers"}
					<!-- subscribers -->
					<div class="ele_content ele_page_content">
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z"></path></svg>{$group['subscribers_count']} {__("Subscribers")}</div>
						</div>
						{if $group['subscribers_count'] > 0}
							<ul class="row">
								{foreach $group['subscribers'] as $_user}
									{include file='__feeds_user.tpl' _tpl="box" _connection=$_user["connection"] _vsmall=true _darker=true}
								{/foreach}
							</ul>
							{if count($group['subscribers']) >= $system['max_results_even']}
								<!-- see-more -->
								<div class="alert alert-info see-more mt0 mb20 js_see-more" data-get="subscribers" data-uid="{$group['group_id']}" data-type="group">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{/if}
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have subscribers")}
							</div>
						{/if}
					</div>
					<!-- subscribers -->
                
                {elseif $view == "invites"}
				
                    <!-- invites -->
					<div class="ele_content ele_page_content">
						<div class="valign ele_page_hdng border-0 pt20 pb5 mb15 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
							<div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M16 17V19H2V17S2 13 9 13 16 17 16 17M12.5 7.5A3.5 3.5 0 1 0 9 11A3.5 3.5 0 0 0 12.5 7.5M15.94 13A5.32 5.32 0 0 1 18 17V19H22V17S22 13.37 15.94 13M15 4A3.39 3.39 0 0 0 13.07 4.59A5 5 0 0 1 13.07 10.41A3.39 3.39 0 0 0 15 11A3.5 3.5 0 0 0 15 4Z"></path></svg> {$group['group_members']} {__("Members")}</div>
							<div class="valign align-items-start mt-3 mt-md-0 mw-100">
								<div class="valign nav ele_switch_tabs m-0" role="tablist">
									<div><a href="{$system['system_url']}/groups/{$group['group_name']}/invites" class="active">{__("Invites")}</a></div>
								</div>
							</div>
						</div>
						{if $group['invites']}
							<ul class="row">
								{foreach $group['invites'] as $_user}
								{include file='__feeds_user.tpl' _tpl="box" _connection=$_user["connection"] _vsmall=true _darker=true}
								{/foreach}
							</ul>

							{if count($group['invites']) >= $system['max_results_even']}
								<!-- see-more -->
								<div class="alert alert-info see-more js_see-more" data-get="group_invites" data-id="{$group['group_id']}">
									<span>{__("See More")}</span>
									<div class="loader loader_small x-hidden"></div>
								</div>
								<!-- see-more -->
							{/if}
						{else}
							<div class="text-center empty_state">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{__("No friends to invite")}
							</div>
						{/if}
					</div>
                    <!-- invites -->
					
				{elseif $view == "search"}

					<!-- right panel -->
					<div class="col-lg-12">
						<!-- posts -->
						{include file='_posts.tpl' _get="posts_group" _id=$group['group_id'] _title=__("Search Results") _query=$query _filter=$filter}
						<!-- posts -->
					</div>
					<!-- right panel -->
                
                {elseif $view == "settings"}
					<div class="ele_content p-2 mb15">
						<h2 class="ele_page_title small my-2 mx-3">{__("Settings")}</h2>
						<ul class="side-nav">
							<li {if $sub_view == ""}class="active"{/if}>
								<a href="{$system['system_url']}/groups/{$group['group_name']}/settings">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.18C2 19.83 4.17 22 7.81 22H16.18C19.82 22 21.99 19.83 21.99 16.19V7.81C22 4.17 19.83 2 16.19 2ZM7.67 5.5C7.67 5.09 8.01 4.75 8.42 4.75C8.83 4.75 9.17 5.09 9.17 5.5V9.4C9.17 9.81 8.83 10.15 8.42 10.15C8.01 10.15 7.67 9.81 7.67 9.4V5.5ZM9.52282 16.4313C9.31938 16.5216 9.17 16.7132 9.17 16.9358V18.5C9.17 18.91 8.83 19.25 8.42 19.25C8.01 19.25 7.67 18.91 7.67 18.5V16.9358C7.67 16.7132 7.5206 16.5216 7.31723 16.4311C6.36275 16.0064 5.7 15.058 5.7 13.95C5.7 12.45 6.92 11.22 8.42 11.22C9.92 11.22 11.15 12.44 11.15 13.95C11.15 15.0582 10.4791 16.0066 9.52282 16.4313ZM16.33 18.5C16.33 18.91 15.99 19.25 15.58 19.25C15.17 19.25 14.83 18.91 14.83 18.5V14.6C14.83 14.19 15.17 13.85 15.58 13.85C15.99 13.85 16.33 14.19 16.33 14.6V18.5ZM15.58 12.77C14.08 12.77 12.85 11.55 12.85 10.04C12.85 8.93185 13.5209 7.98342 14.4772 7.55873C14.6806 7.46839 14.83 7.27681 14.83 7.05421V5.5C14.83 5.09 15.17 4.75 15.58 4.75C15.99 4.75 16.33 5.09 16.33 5.5V7.06421C16.33 7.28681 16.4794 7.47835 16.6828 7.56885C17.6372 7.9936 18.3 8.94195 18.3 10.05C18.3 11.55 17.08 12.77 15.58 12.77Z" fill="currentColor"/></svg> {__("Group Settings")}
								</a>
							</li>
							{if $group['group_privacy'] != "public"}
								<li {if $sub_view == "requests"}class="active"{/if}>
									<a href="{$system['system_url']}/groups/{$group['group_name']}/settings/requests">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.18C2 19.83 4.17 22 7.81 22H16.18C19.82 22 21.99 19.83 21.99 16.19V7.81C22 4.17 19.83 2 16.19 2ZM16 12.75H12.75V16C12.75 16.41 12.41 16.75 12 16.75C11.59 16.75 11.25 16.41 11.25 16V12.75H8C7.59 12.75 7.25 12.41 7.25 12C7.25 11.59 7.59 11.25 8 11.25H11.25V8C11.25 7.59 11.59 7.25 12 7.25C12.41 7.25 12.75 7.59 12.75 8V11.25H16C16.41 11.25 16.75 11.59 16.75 12C16.75 12.41 16.41 12.75 16 12.75Z" fill="currentColor"/></svg> {__("Join Requests")}
									</a>
								</li>
							{/if}
							<li {if $sub_view == "members"}class="active"{/if}>
								<a href="{$system['system_url']}/groups/{$group['group_name']}/settings/members">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.19C2 19 3.29 20.93 5.56 21.66C6.22 21.89 6.98 22 7.81 22H16.19C17.02 22 17.78 21.89 18.44 21.66C20.71 20.93 22 19 22 16.19V7.81C22 4.17 19.83 2 16.19 2ZM20.5 16.19C20.5 18.33 19.66 19.68 17.97 20.24C17 18.33 14.7 16.97 12 16.97C9.3 16.97 7.01 18.32 6.03 20.24H6.02C4.35 19.7 3.5 18.34 3.5 16.2V7.81C3.5 4.99 4.99 3.5 7.81 3.5H16.19C19.01 3.5 20.5 4.99 20.5 7.81V16.19Z" fill="currentColor"/><path d="M12.0019 8C10.0219 8 8.42188 9.6 8.42188 11.58C8.42188 13.56 10.0219 15.17 12.0019 15.17C13.9819 15.17 15.5819 13.56 15.5819 11.58C15.5819 9.6 13.9819 8 12.0019 8Z" fill="currentColor"/></svg> {__("Members")}
								</a>
							</li>
							{if $user->_data['can_monetize_content']}
								<li {if $sub_view == "monetization" && $show == "settings"}class="active" {/if}>
									<a href="#monetization-settings" data-toggle="collapse" {if $sub_view == "monetization"}aria-expanded="true" {/if}>
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17 4H7C4 4 2 5.5 2 9V12.56C2 12.93 2.38 13.16 2.71 13.01C3.69 12.56 4.82 12.39 6.01 12.6C8.64 13.07 10.57 15.51 10.5 18.18C10.49 18.6 10.43 19.01 10.32 19.41C10.24 19.72 10.49 20.01 10.81 20.01H17C20 20.01 22 18.51 22 15.01V9C22 5.5 20 4 17 4ZM12 14.5C10.62 14.5 9.5 13.38 9.5 12C9.5 10.62 10.62 9.5 12 9.5C13.38 9.5 14.5 10.62 14.5 12C14.5 13.38 13.38 14.5 12 14.5ZM19.25 14C19.25 14.41 18.91 14.75 18.5 14.75C18.09 14.75 17.75 14.41 17.75 14V10C17.75 9.59 18.09 9.25 18.5 9.25C18.91 9.25 19.25 9.59 19.25 10V14Z" fill="currentColor"></path><path d="M5 14C2.79 14 1 15.79 1 18C1 18.75 1.21 19.46 1.58 20.06C2.27 21.22 3.54 22 5 22C6.46 22 7.73 21.22 8.42 20.06C8.79 19.46 9 18.75 9 18C9 15.79 7.21 14 5 14ZM6.49 18.73H5.75V19.51C5.75 19.92 5.41 20.26 5 20.26C4.59 20.26 4.25 19.92 4.25 19.51V18.73H3.51C3.1 18.73 2.76 18.39 2.76 17.98C2.76 17.57 3.1 17.23 3.51 17.23H4.25V16.52C4.25 16.11 4.59 15.77 5 15.77C5.41 15.77 5.75 16.11 5.75 16.52V17.23H6.49C6.9 17.23 7.24 17.57 7.24 17.98C7.24 18.39 6.91 18.73 6.49 18.73Z" fill="currentColor"></path></svg> {__("Monetization")}
									</a>
									<div class='collapse {if $sub_view == "monetization"}show{/if}' id="monetization-settings">
										<ul>
											<li {if $sub_view == "monetization" && $show == "settings"}class="active" {/if}>
												<a href="{$system['system_url']}/groups/{$group['group_name']}/settings/monetization?show=settings">
													{__("Settings")}
												</a>
											</li>
											<li {if $sub_view == "monetization" && $show == "coupons"}class="active" {/if}>
												<a href="{$system['system_url']}/groups/{$group['group_name']}/settings/monetization?show=coupons">
													{__("Coupons")}
												</a>
											</li>
										</ul>
									</div>
								</li>
							{/if}
							{if $user->_data['user_id'] == $group['group_admin']}
								<li {if $sub_view == "delete"}class="active"{/if}>
									<a href="{$system['system_url']}/groups/{$group['group_name']}/settings/delete">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.18C2 19.83 4.17 22 7.81 22H16.18C19.82 22 21.99 19.83 21.99 16.19V7.81C22 4.17 19.83 2 16.19 2ZM15.76 15.76C15.7 16.61 15.63 17.67 13.71 17.67H10.29C8.38 17.67 8.3 16.61 8.24 15.76L7.93 11.8C7.91 11.54 8 11.29 8.17 11.1C8.34 10.91 8.59 10.81 8.84 10.81H15.16C15.41 10.81 15.66 10.92 15.83 11.1C16 11.29 16.09 11.54 16.07 11.79L15.76 15.76ZM16.8 9.82C16.78 9.82 16.76 9.82 16.74 9.82C15.7 9.72 14.75 9.65 13.84 9.61C12.62 9.55 11.4 9.53 10.17 9.58C9.57 9.61 8.96 9.65 8.36 9.71L7.27 9.82C7.25 9.82 7.22 9.82 7.2 9.82C6.85 9.82 6.55 9.56 6.52 9.2C6.48 8.83 6.76 8.49 7.13 8.46L8.22 8.35C8.65 8.31 9.07 8.28 9.5 8.26L9.58 7.79C9.66 7.29 9.81 6.33 11.31 6.33H12.7C14.21 6.33 14.36 7.32 14.43 7.8L14.51 8.28C15.26 8.32 16.03 8.38 16.87 8.46C17.25 8.5 17.52 8.83 17.49 9.21C17.45 9.56 17.15 9.82 16.8 9.82Z" fill="currentColor"/></svg> {__("Delete Group")}
									</a>
								</li>
							{/if}
						</ul>
					</div>

					<!-- edit -->
					<div class="ele_content p-4 mb15">
						{if $sub_view == ""}
							<h2 class="ele_page_title small mt-0 mb-3">{__("Group Settings")}</h2>
							<form class="js_ajax-forms" data-url="modules/create.php?type=group&do=edit&edit=settings&id={$group['group_id']}">
								<label class="ele_field">
									<input type="text" name="title" placeholder=" " value="{$group['group_title']}">
									<span>{__("Name Your Group")}</span>
								</label>
								
								<label class="ele_field">
									<textarea placeholder=" " name="description" rows="4">{$group['group_description']}</textarea>
									<span>{__("About")}</span>
								</label>
								
								<label class="ele_field">
									<input type="text" placeholder=" " name="username" id="username" value="{$group['group_name']}">
									<span>{__("Group Username")} ({$system['system_url']}/groups/)</span>
								</label>
								<span class="help-block">{__("Can only contain alphanumeric characters (A–Z, 0–9) and periods ('.')")}</span>
								
								<label class="ele_field">
									<select name="privacy">
										<option {if $group['group_privacy'] == "public"}selected{/if} value="public">{__("Public Group")}</option>
										<option {if $group['group_privacy'] == "closed"}selected{/if} value="closed">{__("Closed Group")}</option>
										<option {if $group['group_privacy'] == "secret"}selected{/if} value="secret">{__("Secret Group")}</option>
									</select>
									<span>{__("Select Privacy")}</span>
								</label>
								<span class="help-block">({__("Note: Change group privacy to public will approve any pending join requests")})</span>
								
								<label class="ele_field">
									<select name="category">
										{foreach $categories as $category}
											{include file='__categories.recursive_options.tpl' data_category=$group['group_category']}
										{/foreach}
									</select>
									<span>{__("Category")}</span>
								</label>
								
								<label class="ele_field">
									<select name="country">
										<option value="none">{__("Select Country")}</option>
										{foreach $countries as $country}
											<option value="{$country['country_id']}" {if $group['group_country'] == $country['country_id']}selected{/if}>{$country['country_name']}</option>
										{/foreach}
									</select>
									<span>{__("Country")}</span>
								</label>
								
								<label class="ele_field">
									<select name="language">
										<option value="none">{__("Select Language")}</option>
										{foreach $languages as $language}
											<option value="{$language['language_id']}" {if $group['group_language'] == $language['language_id']}selected{/if}>{$language['title']}</option>
										{/foreach}
									</select>
									<span>{__("Language")}</span>
								</label>
								
								<!-- custom fields -->
								{if $custom_fields['basic']}
								{include file='__custom_fields.tpl' _custom_fields=$custom_fields['basic'] _registration=false}
								{/if}
								<!-- custom fields -->
								
								<hr>
								
								{if $system['chat_enabled']}
									<div class="form-table-row">
										<div>
											<div class="form-control-label h6">{__("Chat Box")}</div>
											<div class="form-text d-none d-sm-block">{__("Enable chat box for this group")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="chatbox_enabled">
												<input type="checkbox" name="chatbox_enabled" id="chatbox_enabled" {if $group['chatbox_enabled']}checked{/if}>
												<span class="slider round"></span>
											</label>
										</div>
									</div>
								{/if}
								
								<div class="form-table-row">
									<div>
										<div class="form-control-label h6">{__("Members Can Publish Posts?")}</div>
										<div class="form-text d-none d-sm-block">{__("Members can publish posts or only group admins")}</div>
									</div>
									<div class="text-right">
										<label class="switch" for="group_publish_enabled">
											<input type="checkbox" name="group_publish_enabled" id="group_publish_enabled" {if $group['group_publish_enabled']}checked{/if}>
											<span class="slider round"></span>
										</label>
									</div>
								</div>

								<div class="form-table-row">
									<div>
										<div class="form-control-label h6">{__("Post Approval")}</div>
										<div class="form-text d-none d-sm-block">
											{__("All posts must be approved by a group admin")}<br>
											({__("Note: Disable it will approve any pending posts")})
										</div>
									</div>
									<div class="text-right">
										<label class="switch" for="group_publish_approval_enabled">
											<input type="checkbox" name="group_publish_approval_enabled" id="group_publish_approval_enabled" {if $group['group_publish_approval_enabled']}checked{/if}>
											<span class="slider round"></span>
										</label>
									</div>
								</div>
								
								<!-- error -->
								<div class="alert alert-danger mb0 x-hidden"></div>
								<!-- error -->
									
								<div class="text-center ele_sett_bott_btn">
									<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
								</div>
							</form>
						{elseif $sub_view == "requests"}
							<h2 class="ele_page_title small mt-0 mb-3">{__("Member Requests")}</h2>

							{if $group['requests']}
								<ul class="ele_side_users mx-n2">
									{foreach $group['requests'] as $_user}
									{include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"]}
									{/foreach}
								</ul>

								{if count($group['requests']) >= $system['max_results']}
									<!-- see-more -->
									<div class="alert alert-info see-more js_see-more" data-get="group_requests" data-id="{$group['group_id']}">
										<span>{__("See More")}</span>
										<div class="loader loader_small x-hidden"></div>
									</div>
									<!-- see-more -->
								{/if}
							{else}
								<div class="text-center empty_state">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{__("No Requests")}
								</div>
							{/if}

						{elseif $sub_view == "members"}
							<h2 class="ele_page_title small mt-0 mb-3">{__("Members")}</h2>

							<!-- admins -->
							<div class="heading-small">
								{__("Admins")} <span class="text-muted">({$group['group_admins_count']})</span>
							</div>
							
							{if $group['group_admins']}
								<ul class="ele_side_users mx-n2">
									{foreach $group['group_admins'] as $_user}
									{include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"]}
									{/foreach}
								</ul>

								{if $group['group_admins_count'] >= $system['max_results_even']}
									<!-- see-more -->
									<div class="alert alert-info see-more js_see-more" data-get="group_admins" data-id="{$group['group_id']}">
										<span>{__("See More")}</span>
										<div class="loader loader_small x-hidden"></div>
									</div>
									<!-- see-more -->
								{/if}
							{else}
								<div class="text-center empty_state">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have admins")}
								</div>
							{/if}
							<!-- admins -->

							<hr>

							<!-- members -->
							<div class="heading-small">
								{__("All Members")} <span class="text-muted">({$group['group_members']})</span>
							</div>
							{if $group['group_members'] > 0}
								<ul class="ele_side_users mx-n2">
									{foreach $group['members'] as $_user}
									{include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"]}
									{/foreach}
								</ul>

								{if $group['group_members'] >= $system['max_results_even']}
									<!-- see-more -->
									<div class="alert alert-info see-more js_see-more" data-get="group_members_manage" data-id="{$group['group_id']}">
										<span>{__("See More")}</span>
										<div class="loader loader_small x-hidden"></div>
									</div>
									<!-- see-more -->
								{/if}
							{else}
								<div class="text-center empty_state">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"/><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"/><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"/><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"/><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"/><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"/></svg>{$group['group_title']} {__("doesn't have members")}
								</div>
							{/if}
							<!-- members -->
							
						{elseif $sub_view == "monetization"}
							<h2 class="ele_page_title small mt-0 mb-3">{__("Monetization")} {if $show == "coupons"} &rsaquo; {__("Coupons")}{/if}</h2>
							
							{if $show == "coupons"}
								<button data-toggle="modal" data-url="monetization/controller.php?do=add_coupon&node_id={$group['group_id']}&node_type=group" class="btn btn-mat btn-primary">
									{__("Generate New Coupon")}
								</button>
							{/if}
							
							{if $show == "settings"}
								<div class="alert bg-light border p-3 mb-4">
									<div class="mb-2 mx-n1">
										<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17 4H7C4 4 2 5.5 2 9V12.56C2 12.93 2.38 13.16 2.71 13.01C3.69 12.56 4.82 12.39 6.01 12.6C8.64 13.07 10.57 15.51 10.5 18.18C10.49 18.6 10.43 19.01 10.32 19.41C10.24 19.72 10.49 20.01 10.81 20.01H17C20 20.01 22 18.51 22 15.01V9C22 5.5 20 4 17 4ZM12 14.5C10.62 14.5 9.5 13.38 9.5 12C9.5 10.62 10.62 9.5 12 9.5C13.38 9.5 14.5 10.62 14.5 12C14.5 13.38 13.38 14.5 12 14.5ZM19.25 14C19.25 14.41 18.91 14.75 18.5 14.75C18.09 14.75 17.75 14.41 17.75 14V10C17.75 9.59 18.09 9.25 18.5 9.25C18.91 9.25 19.25 9.59 19.25 10V14Z" fill="currentColor"></path><path d="M5 14C2.79 14 1 15.79 1 18C1 18.75 1.21 19.46 1.58 20.06C2.27 21.22 3.54 22 5 22C6.46 22 7.73 21.22 8.42 20.06C8.79 19.46 9 18.75 9 18C9 15.79 7.21 14 5 14ZM6.49 18.73H5.75V19.51C5.75 19.92 5.41 20.26 5 20.26C4.59 20.26 4.25 19.92 4.25 19.51V18.73H3.51C3.1 18.73 2.76 18.39 2.76 17.98C2.76 17.57 3.1 17.23 3.51 17.23H4.25V16.52C4.25 16.11 4.59 15.77 5 15.77C5.41 15.77 5.75 16.11 5.75 16.52V17.23H6.49C6.9 17.23 7.24 17.57 7.24 17.98C7.24 18.39 6.91 18.73 6.49 18.73Z" fill="currentColor"></path></svg>
									</div>
									<div class="text">
										{__("Now you can earn money from your content. Via paid posts or subscriptions plans.")}
										<br>
										{if $system['monetization_commission'] > 0}
											{__("There is commission")} <strong class="bold"><span class="badge badge-pill badge-warning">{$system['monetization_commission']}%</span></strong> {__("will be deducted")}.
											<br>
										{/if}
										{if $system['monetization_money_withdraw_enabled']}
											{__("You can")} <a class="alert-link" href="{$system['system_url']}/settings/monetization/payments" target="_blank">{__("withdraw your money")}</a>
										{/if}
										{if $system['monetization_money_transfer_enabled']}
											{if $system['monetization_money_withdraw_enabled']}{__("or")} {/if}
											{__("You can transfer your money to your")} <a class="alert-link" href="{$system['system_url']}/wallet" target="_blank">{__("wallet")}</a>
										{/if}
									</div>
								</div>
								
								<div class="alert alert-warning p-3">
									<div class="mb-2 mx-n1">
										<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM11.25 8C11.25 7.59 11.59 7.25 12 7.25C12.41 7.25 12.75 7.59 12.75 8V13C12.75 13.41 12.41 13.75 12 13.75C11.59 13.75 11.25 13.41 11.25 13V8ZM12.92 16.38C12.87 16.51 12.8 16.61 12.71 16.71C12.61 16.8 12.5 16.87 12.38 16.92C12.26 16.97 12.13 17 12 17C11.87 17 11.74 16.97 11.62 16.92C11.5 16.87 11.39 16.8 11.29 16.71C11.2 16.61 11.13 16.51 11.08 16.38C11.03 16.26 11 16.13 11 16C11 15.87 11.03 15.74 11.08 15.62C11.13 15.5 11.2 15.39 11.29 15.29C11.39 15.2 11.5 15.13 11.62 15.08C11.86 14.98 12.14 14.98 12.38 15.08C12.5 15.13 12.61 15.2 12.71 15.29C12.8 15.39 12.87 15.5 12.92 15.62C12.97 15.74 13 15.87 13 16C13 16.13 12.97 16.26 12.92 16.38Z" fill="currentColor"></path></svg>
									</div>
									<div class="text">
										{__("Only super admin can manage monetization and money goes to his monetization money balance")}.
									</div>
								</div>
							
								<hr>
							
								<div class="heading-small mb-1">
									{__("Monetization Settings")}
								</div>
							
								<form class="js_ajax-forms" data-url="modules/create.php?type=group&do=edit&edit=monetization&id={$group['group_id']}">
									<div class="form-table-row">
										<div>
											<div class="form-control-label h6">{__("Monetization")}</div>
											<div class="form-text d-none d-sm-block">{__("Enable or disable monetization for your content")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="group_monetization_enabled">
												<input type="checkbox" name="group_monetization_enabled" id="group_monetization_enabled" {if $group['group_monetization_enabled']}checked{/if}>
												<span class="slider round"></span>
											</label>
										</div>
									</div>
									
									<div class="form-table-row">
										<div>
											<div class="form-control-label h6">{__("Global Discount")}</div>
											<div class="form-text d-none d-sm-block">{__("Enable or disable global discount for subscriptions plans and paid posts")}</div>
										</div>
										<div class="text-right">
											<label class="switch" for="group_monetization_discount_enabled">
												<input type="checkbox" name="group_monetization_discount_enabled" id="group_monetization_discount_enabled" {if $group['group_monetization_discount_enabled']}checked{/if}>
												<span class="slider round"></span>
											</label>
										</div>
									</div>

									<div class="form-group form-row">
										<label class="col-md-4 form-control-label">
											{__("Discount Percent")}
										</label>
										<div class="col-md-8">
											<input type="number" min="1" max="99" class="form-control" name="group_monetization_discount_percent" value="{$group['group_monetization_discount_percent']}">
											<div class="form-text">
												{__("The discount percent to apply to all monetized content (min 1, max 99)")}
											</div>
										</div>
									</div>
									
									<hr>
									
									<div class="form-group">
										<label class="form-control-label">
											{__("Subscriptions Plans")}
										</label>
										
										<div data-toggle="modal" data-url="monetization/controller.php?do=add_plan&node_id={$group['group_id']}&node_type=group" class="btn btn-block btn-success btn-mat my-3">{__("Add new plan")} </div>

										<div class="payment-plans">
											{foreach $monetization_plans as $plan}
												<div class="payment-plan">
													<div class="text-xxlg">{__($plan['title'])}</div>
													<div class="text-xlg">{print_money($plan['price'])} / {if $plan['period_num'] != '1'}{$plan['period_num']}{/if} {__($plan['period']|ucfirst)}</div>
													{if {$plan['custom_description']}}
														<div>{$plan['custom_description']}</div>
													{/if}
													<div class="mt10">
														<span class="btn btn-mat btn-sm btn-danger mr10 js_monetization-deleter" data-id="{$plan['plan_id']}">{__("Delete")}</span>
														<span data-toggle="modal" data-url="monetization/controller.php?do=edit_plan&id={$plan['plan_id']}" class="btn btn-mat btn-sm btn-info">{__("Edit")}</span>
													</div>
												</div>
											{/foreach}
										</div>
									</div>
									
									<div class="text-center ele_sett_bott_btn">
										<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
									</div>
									
									<!-- success -->
										<div class="alert alert-success mb0 x-hidden"></div>
									<!-- success -->

									<!-- error -->
										<div class="alert alert-danger mb0 x-hidden"></div>
									<!-- error -->
								</form>
							
								<hr>
							
								<div class="heading-small mb-1">
									{__("Monetization Balance")}
								</div>
							
								<div class="row">
									<div class="col-md-6">
										<div class="p-3 ele_forum_stats members">
											<div class="d-flex justify-content-between">
												<h6>{__("Group Subscribers")}</h6>
												<svg width="36" height="36" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M9 2C6.38 2 4.25 4.13 4.25 6.75C4.25 9.32 6.26 11.4 8.88 11.49C8.96 11.48 9.04 11.48 9.1 11.49C9.12 11.49 9.13 11.49 9.15 11.49C9.16 11.49 9.16 11.49 9.17 11.49C11.73 11.4 13.74 9.32 13.75 6.75C13.75 4.13 11.62 2 9 2Z" fill="#FF6437"></path><path d="M14.0809 14.1489C11.2909 12.2889 6.74094 12.2889 3.93094 14.1489C2.66094 14.9989 1.96094 16.1489 1.96094 17.3789C1.96094 18.6089 2.66094 19.7489 3.92094 20.5889C5.32094 21.5289 7.16094 21.9989 9.00094 21.9989C10.8409 21.9989 12.6809 21.5289 14.0809 20.5889C15.3409 19.7389 16.0409 18.5989 16.0409 17.3589C16.0309 16.1289 15.3409 14.9889 14.0809 14.1489Z" fill="#FF6437"></path><path opacity="0.4" d="M19.9894 7.33815C20.1494 9.27815 18.7694 10.9781 16.8594 11.2081C16.8494 11.2081 16.8494 11.2081 16.8394 11.2081H16.8094C16.7494 11.2081 16.6894 11.2081 16.6394 11.2281C15.6694 11.2781 14.7794 10.9681 14.1094 10.3981C15.1394 9.47815 15.7294 8.09815 15.6094 6.59815C15.5394 5.78815 15.2594 5.04815 14.8394 4.41815C15.2194 4.22815 15.6594 4.10815 16.1094 4.06815C18.0694 3.89815 19.8194 5.35815 19.9894 7.33815Z" fill="#FF6437"></path><path d="M21.9883 16.5904C21.9083 17.5604 21.2883 18.4004 20.2483 18.9704C19.2483 19.5204 17.9883 19.7804 16.7383 19.7504C17.4583 19.1004 17.8783 18.2904 17.9583 17.4304C18.0583 16.1904 17.4683 15.0004 16.2883 14.0504C15.6183 13.5204 14.8383 13.1004 13.9883 12.7904C16.1983 12.1504 18.9783 12.5804 20.6883 13.9604C21.6083 14.7004 22.0783 15.6304 21.9883 16.5904Z" fill="#FF6437"></path></svg>
											</div>
											<p class="mb-0">{$subscribers_count}</p>
										</div>
									</div>
									<div class="col-md-6">
										<div class="p-3 ele_forum_stats replies">
											<div class="d-flex justify-content-between">
												<h6>{__("Monetization Money Balance")}</h6>
												<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19.3009 7.91949V13.0695C19.3009 16.1495 17.5409 17.4695 14.9009 17.4695H6.11093C5.66093 17.4695 5.23093 17.4295 4.83093 17.3395C4.58093 17.2995 4.34094 17.2295 4.12094 17.1495C2.62094 16.5895 1.71094 15.2895 1.71094 13.0695V7.91949C1.71094 4.83949 3.47093 3.51953 6.11093 3.51953H14.9009C17.1409 3.51953 18.7509 4.46953 19.1809 6.63953C19.2509 7.03953 19.3009 7.44949 19.3009 7.91949Z" fill="#10c442"></path><path d="M22.2981 10.9206V16.0706C22.2981 19.1506 20.5381 20.4706 17.8981 20.4706H9.10812C8.36812 20.4706 7.69813 20.3706 7.11813 20.1506C5.92813 19.7106 5.11812 18.8006 4.82812 17.3406C5.22813 17.4306 5.65812 17.4706 6.10812 17.4706H14.8981C17.5381 17.4706 19.2981 16.1506 19.2981 13.0706V7.92059C19.2981 7.45059 19.2581 7.03062 19.1781 6.64062C21.0781 7.04063 22.2981 8.38059 22.2981 10.9206Z" fill="#10c442"></path><path d="M10.4994 13.1394C11.9574 13.1394 13.1394 11.9574 13.1394 10.4994C13.1394 9.04136 11.9574 7.85938 10.4994 7.85938C9.04136 7.85938 7.85938 9.04136 7.85938 10.4994C7.85938 11.9574 9.04136 13.1394 10.4994 13.1394Z" fill="#10c442"></path><path d="M4.78125 8.25C4.37125 8.25 4.03125 8.59 4.03125 9V12C4.03125 12.41 4.37125 12.75 4.78125 12.75C5.19125 12.75 5.53125 12.41 5.53125 12V9C5.53125 8.59 5.20125 8.25 4.78125 8.25Z" fill="#10c442"></path><path d="M16.2109 8.25C15.8009 8.25 15.4609 8.59 15.4609 9V12C15.4609 12.41 15.8009 12.75 16.2109 12.75C16.6209 12.75 16.9609 12.41 16.9609 12V9C16.9609 8.59 16.6309 8.25 16.2109 8.25Z" fill="#10c442"></path></svg>
											</div>
											<p class="mb-0">{print_money($user->_data['user_monetization_balance'])}</p>
										</div>
									</div> 
								</div>
							{elseif $show == "coupons"}
								{if $coupons}
									<div class="table-responsive">
										<table class="table table-hover js_dataTable">
											<thead>
												<tr>
													<th>{__("Code")}</th>
													<th>{__("Discount")}</th>
													<th>{__("Created")}</th>
													<th>{__("Usage Details")}</th>
													<th>{__("One Time")}</th>
													<th>{__("Actions")}</th>
												</tr>
											</thead>
											<tbody>
												{foreach $coupons as $coupon}
													<tr>
														<td><span class="badge rounded-pill badge-lg badge-secondary">{$coupon['coupon_code']}</span></td>
														<td>
															<span class="badge rounded-pill badge-lg badge-primary">{$coupon['discount_percent']}%</span>
														</td>
														<td>{$coupon['created_date']|date_format:"%e %B %Y"}</td>
														<td>
															{if $coupon['usage_counter'] > 0}
																<span data-toggle="modal" data-url="monetization/controller.php?do=coupon_users&coupon_id={$coupon['coupon_id']}" class="pointer text-success">
																	<i class="fa fa-users mr5"></i> <span class="badge rounded-pill badge-lg badge-success">{$coupon['usage_counter']}</span> {__("Users")}
																</span>
															{else}
																{include file='__svg_icons.tpl' icon="cross" class="mr5" width="24px" height="24px"} <span class="text-muted">{__("No One")}</span>
															{/if}
														</td>
														<td>
															{if $coupon['is_onetime']}
																{include file='__svg_icons.tpl' icon="checked" width="24px" height="24px"}
															{else}
																{include file='__svg_icons.tpl' icon="cross" width="24px" height="24px"}
															{/if}
														</td>
														<td>
															<!-- delete -->
															<div class="d-inline-block" data-bs-toggle="tooltip" title='{__("Delete")}'>
																<button class="btn btn-sm btn-icon btn-rounded btn-danger js_monetization-coupon-deleter" data-id="{$coupon['coupon_id']}">
																	<i class="fa fa-trash-alt"></i>
																</button>
															</div>
															<!-- delete -->
															<!-- share -->
															<div class="d-inline-block" data-bs-toggle="tooltip" title='{__("Share")}'>
																<button data-toggle="modal" data-url="monetization/controller.php?do=share_coupon&coupon_id={$coupon['coupon_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
																	<i class="fa fa-link"></i>
																</button>
															</div>
															<!-- share -->
														</td>
													</tr>
												{/foreach}
											</tbody>
										</table>
									</div>
								{else}
									{include file='_no_data.tpl'}
								{/if}
							{/if}
						{elseif $sub_view == "delete"}
							<h2 class="ele_page_title small mt-0 mb-3">{__("Delete Group")}</h2>
							<div class="alert alert-warning">
								<div class="icon">
									<svg width="30" height="30" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M21.0802 8.58003V15.42C21.0802 16.54 20.4802 17.58 19.5102 18.15L13.5702 21.58C12.6002 22.14 11.4002 22.14 10.4202 21.58L4.48016 18.15C3.51016 17.59 2.91016 16.55 2.91016 15.42V8.58003C2.91016 7.46003 3.51016 6.41999 4.48016 5.84999L10.4202 2.42C11.3902 1.86 12.5902 1.86 13.5702 2.42L19.5102 5.84999C20.4802 6.41999 21.0802 7.45003 21.0802 8.58003Z" fill="currentColor"/><path d="M12 13.75C11.59 13.75 11.25 13.41 11.25 13V7.75C11.25 7.34 11.59 7 12 7C12.41 7 12.75 7.34 12.75 7.75V13C12.75 13.41 12.41 13.75 12 13.75Z" fill="currentColor"/><path d="M12 17.2499C11.87 17.2499 11.74 17.2198 11.62 17.1698C11.49 17.1198 11.39 17.0499 11.29 16.9599C11.2 16.8599 11.13 16.7499 11.07 16.6299C11.02 16.5099 11 16.3799 11 16.2499C11 15.9899 11.1 15.7298 11.29 15.5398C11.39 15.4498 11.49 15.3799 11.62 15.3299C11.99 15.1699 12.43 15.2598 12.71 15.5398C12.8 15.6398 12.87 15.7399 12.92 15.8699C12.97 15.9899 13 16.1199 13 16.2499C13 16.3799 12.97 16.5099 12.92 16.6299C12.87 16.7499 12.8 16.8599 12.71 16.9599C12.52 17.1499 12.27 17.2499 12 17.2499Z" fill="currentColor"/></svg>
								</div>
								<div class="text pt5">
									{__("Once you delete your group you will no longer can access it again")}
								</div>
							</div>

							<div class="text-center ele_sett_bott_btn">
								<button class="btn btn-danger btn-mat js_delete-group" data-id="{$group['group_id']}">{__("Delete Group")}</button>
							</div>
						{/if}
					</div>
					<!-- edit -->
                
                {/if}
			<!-- view content -->
		</div>
	</div>
</div>
<!-- page content -->

{include file='_footer.tpl'}