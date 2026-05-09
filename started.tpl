{include file='_head.tpl'}
{include file='_header.tpl'}

<style>
	body, .main-wrapper {
		padding: 0 !important;
	}
	.main-header, .ele_sidebar_left {
		display: none;
	}
</style>

<!-- page content -->
<div class="valign h-100 w-100 ele_start_page">
	<div class="container">
		<div class="row">
			<div class="col-12 col-md-10 col-lg-8 my-5 mx-auto">
			
				<div class="ele_content card-register">
					<h4>{__("Getting Started")}</h4>
					<p class="mb-4">{__("This information will let us know more about you")}</p>

                    <!-- nav -->
                    <ul class="overflow-hidden nav nav-fill nav-started mb-5 js_wizard-steps">
                        <li class="nav-item">
                            <a class="nav-link position-relative active" href="#step-1">
                                <h4 class="mb5">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.9986 13.8986V16.1886C21.9986 19.8286 19.8286 21.9986 16.1886 21.9986H7.80859C5.25859 21.9986 3.41859 20.9286 2.55859 19.0286L2.66859 18.9486L7.58859 15.6486C8.38859 15.1086 9.51859 15.1686 10.2286 15.7886L10.5686 16.0686C11.3486 16.7386 12.6086 16.7386 13.3886 16.0686L17.5486 12.4986C18.3286 11.8286 19.5886 11.8286 20.3686 12.4986L21.9986 13.8986Z" fill="currentColor"/><path opacity="0.4" d="M20.97 8H18.03C16.76 8 16 7.24 16 5.97V3.03C16 2.63 16.08 2.29 16.22 2C16.21 2 16.2 2 16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.19C2 17.28 2.19 18.23 2.56 19.03L2.67 18.95L7.59 15.65C8.39 15.11 9.52 15.17 10.23 15.79L10.57 16.07C11.35 16.74 12.61 16.74 13.39 16.07L17.55 12.5C18.33 11.83 19.59 11.83 20.37 12.5L22 13.9V7.81C22 7.8 22 7.79 22 7.78C21.71 7.92 21.37 8 20.97 8Z" fill="currentColor"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z" fill="currentColor"/><path d="M20.97 1H18.03C16.76 1 16 1.76 16 3.03V5.97C16 7.24 16.76 8 18.03 8H20.97C22.24 8 23 7.24 23 5.97V3.03C23 1.76 22.24 1 20.97 1ZM21.91 4.93C21.81 5.03 21.66 5.1 21.5 5.11H20.09L20.1 6.5C20.09 6.67 20.03 6.81 19.91 6.93C19.81 7.03 19.66 7.1 19.5 7.1C19.17 7.1 18.9 6.83 18.9 6.5V5.1L17.5 5.11C17.17 5.11 16.9 4.83 16.9 4.5C16.9 4.17 17.17 3.9 17.5 3.9L18.9 3.91V2.51C18.9 2.18 19.17 1.9 19.5 1.9C19.83 1.9 20.1 2.18 20.1 2.51L20.09 3.9H21.5C21.83 3.9 22.1 4.17 22.1 4.5C22.09 4.67 22.02 4.81 21.91 4.93Z" fill="currentColor"/></svg>
								</h4>
                                <p class="mb0 bold">{__("Upload your photo")}</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link position-relative disabled" href="#step-2">
                                <h4 class="mb5">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M15.48 3H7.52C4.07 3 2 5.06 2 8.52V16.47C2 19.94 4.07 22 7.52 22H15.47C18.93 22 20.99 19.94 20.99 16.48V8.52C21 5.06 18.93 3 15.48 3Z" fill="currentColor"/><path d="M21.0195 2.97832C19.2295 1.17832 17.4795 1.13832 15.6395 2.97832L14.5095 4.09832C14.4095 4.19832 14.3795 4.33832 14.4195 4.46832C15.1195 6.91832 17.0795 8.87832 19.5295 9.57832C19.5595 9.58832 19.6095 9.58832 19.6395 9.58832C19.7395 9.58832 19.8395 9.54832 19.9095 9.47832L21.0195 8.35832C21.9295 7.44832 22.3795 6.57832 22.3795 5.68832C22.3795 4.78832 21.9295 3.89832 21.0195 2.97832Z" fill="currentColor"/><path d="M17.8591 10.4198C17.5891 10.2898 17.3291 10.1598 17.0891 10.0098C16.8891 9.88984 16.6891 9.75984 16.4991 9.61984C16.3391 9.51984 16.1591 9.36984 15.9791 9.21984C15.9591 9.20984 15.8991 9.15984 15.8191 9.07984C15.5091 8.82984 15.1791 8.48984 14.8691 8.11984C14.8491 8.09984 14.7891 8.03984 14.7391 7.94984C14.6391 7.83984 14.4891 7.64984 14.3591 7.43984C14.2491 7.29984 14.1191 7.09984 13.9991 6.88984C13.8491 6.63984 13.7191 6.38984 13.5991 6.12984C13.4691 5.84984 13.3691 5.58984 13.2791 5.33984L7.89912 10.7198C7.54912 11.0698 7.20912 11.7298 7.13912 12.2198L6.70912 15.1998C6.61912 15.8298 6.78912 16.4198 7.17912 16.8098C7.50912 17.1398 7.95912 17.3098 8.45912 17.3098C8.56912 17.3098 8.67912 17.2998 8.78912 17.2898L11.7591 16.8698C12.2491 16.7998 12.9091 16.4698 13.2591 16.1098L18.6391 10.7298C18.3891 10.6498 18.1391 10.5398 17.8591 10.4198Z" fill="currentColor"/></svg>
								</h4>
                                <p class="mb0 bold">{__("Update your info")}</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link position-relative disabled" href="#step-3">
                                <h4 class="mb5">
									<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"></path><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"></path><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"></path><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"></path><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"></path><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"></path></svg>
								</h4>
                                <p class="mb0 bold">
									{if $friends || $followers || $pages || $groups}
										{__("Manage Connections")}
									{else}
										{__("Add Friends")}
									{/if}
								</p>
                            </a>
                        </li>
                    </ul>
                    <!-- nav -->

                    <!-- tabs -->
                    <div class="js_wizard-content" id="step-1">
                        <div class="text-center">
                            <h3 class="mb5">{__("Welcome")} <span class="text-primary">{$user->_data['user_fullname']}</span></h3>
                            <p class="mb20">{__("Let's start with your photo")}</p>
                        </div>
                        
                        <!-- profile-avatar -->
                        <div class="position-relative">
                            <div class="profile-avatar-wrapper static started mx-auto my-5">
                                <img src="{$user->_data['user_picture']}" alt="">

                                <!-- buttons -->
								<div class="dropdown position-absolute">
									<div class="toggle text-center" data-toggle="dropdown" role="button" aria-expanded="false">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.0002 6C17.3902 6 16.8302 5.65 16.5502 5.11L15.8302 3.66C15.3702 2.75 14.1702 2 13.1502 2H10.8602C9.83017 2 8.63017 2.75 8.17017 3.66L7.45017 5.11C7.17017 5.65 6.61017 6 6.00017 6C3.83017 6 2.11017 7.83 2.25017 9.99L2.77017 18.25C2.89017 20.31 4.00017 22 6.76017 22H17.2402C20.0002 22 21.1002 20.31 21.2302 18.25L21.7502 9.99C21.8902 7.83 20.1702 6 18.0002 6ZM10.5002 7.25H13.5002C13.9102 7.25 14.2502 7.59 14.2502 8C14.2502 8.41 13.9102 8.75 13.5002 8.75H10.5002C10.0902 8.75 9.75017 8.41 9.75017 8C9.75017 7.59 10.0902 7.25 10.5002 7.25ZM12.0002 18.12C10.1402 18.12 8.62017 16.61 8.62017 14.74C8.62017 12.87 10.1302 11.36 12.0002 11.36C13.8702 11.36 15.3802 12.87 15.3802 14.74C15.3802 16.61 13.8602 18.12 12.0002 18.12Z" fill="currentColor"/></svg>
									</div>
									<ul class="dropdown-menu dropdown-menu-right ele_create_menu" role="menu">
										<li>
											<a class="profile-avatar-change">
												<div class="js_x-uploader" data-handle="picture-user">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M20.659 10a6 6 0 1 0 0 4H21v6a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v6h-.341zM5 6v3h2V6H5zm10 10a4 4 0 1 1 0-8 4 4 0 0 1 0 8zm0-2a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path><path fill="currentColor" d="M21 6h-2V5H5v14h14v-1h2v2a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v2zM6 6h2v3H6V6zm9 10a4 4 0 1 0 0-8 4 4 0 0 0 0 8zm0 2a6 6 0 1 1 0-12 6 6 0 0 1 0 12zm0-4a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"></path></svg> {__("Upload Photo")}
												</div>
											</a>
										</li>
										<li class="{if $user->_data['user_picture_default'] || !$user->_data['user_picture_id']}x-hidden{/if}">
											<a class="profile-avatar-crop">
												<div class="js_init-crop-picture" data-image="{$user->_data['user_picture_full']}" data-handle="user" data-id="{$user->_data['user_id']}">
													<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M19 17h3v2h-3v3h-2v-3H6a1 1 0 0 1-1-1V7H2V5h3V2h2v3h11a1 1 0 0 1 1 1v11z"></path><path fill="currentColor" d="M15 17v2H6a1 1 0 0 1-1-1V7H2V5h3V2h2v15h8zm2 5V7H9V5h9a1 1 0 0 1 1 1v11h3v2h-3v3h-2z"></path></svg> {__("Crop Photo")}
												</div>
											</a>
										</li>
										<li class="{if $user->_data['user_picture_default']}x-hidden{/if}">
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
                            </div>
                        </div>
                        <!-- profile-avatar -->

                        <!-- buttons -->
                        <div class="clearfix mt20 text-center">
                            <button id="activate-step-2" class="btn btn-primary btn-mat">{__("Next")}&nbsp;&nbsp;<svg xmlns="http://www.w3.org/2000/svg" class="mx-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="5" y1="12" x2="19" y2="12"></line><line x1="15" y1="16" x2="19" y2="12"></line><line x1="15" y1="8" x2="19" y2="12"></line></svg></button>
                        </div>
                        <!-- buttons -->
                    </div>

                    <div class="js_wizard-content x-hidden" id="step-2">
                        <div class="text-center">
                            <h3 class="mb5">{__("Update your info")}</h3>
                            <p class="mb20">{__("Share your information with our community")}</p>
                        </div>

                        <form class="js_ajax-forms" data-url="users/started.php?do=update">
                            <div class="heading-small mb-1">
                                {__("Location")}
                            </div>
							<label class="ele_field">
								<select name="country" id="country">
									<option value="none">{__("Select Country")}</option>
									{foreach $countries as $country}
										<option {if $user->_data['user_country'] == $country['country_id']}selected{/if} value="{$country['country_id']}">{$country['country_name']}</option>
									{/foreach}
								</select>
								<span>{__("Country")}</span>
							</label>
							
							{if $system['location_info_enabled']}
								<div class="row">
									<div class="col-md-6">
										<label class="ele_field">
											<input type="text" class="js_geocomplete" placeholder=" " name="city" id="city" value="{$user->_data['user_current_city']}">
											<span>{__("Current City")}</span>
										</label>
									</div>
									<div class="col-md-6">
										<label class="ele_field">
											<input type="text" class="js_geocomplete" placeholder=" " name="hometown" id="hometown" value="{$user->_data['user_hometown']}">
											<span>{__("Hometown")}</span>
										</label>
									</div>
								</div>
							{/if}

                            {if $system['work_info_enabled']}
                                <hr>

                                <div class="heading-small mb-1">
                                    {__("Work")}
                                </div>
								
								<label class="ele_field">
									<input type="text" placeholder=" " name="work_title" id="work_title" value="{$user->_data['user_work_title']}">
									<span>{__("Work Title")}</span>
								</label>
								
								<div class="row">
									<div class="col-md-6">
										<label class="ele_field">
											<input type="text" placeholder=" " name="work_place" id="work_place" value="{$user->_data['user_work_place']}">
											<span>{__("Work Place")}</span>
										</label>
									</div>
									<div class="col-md-6">
										<label class="ele_field">
											<input type="text" placeholder=" " name="work_url" id="work_url" value="{$user->_data['user_work_url']}">
											<span>{__("Work Website")}</span>
										</label>
									</div>
								</div>
                            {/if}
                            
                            {if $system['education_info_enabled']}
                                <hr>

                                <div class="heading-small mb-1">
                                    {__("Education")}
                                </div>
								
								<label class="ele_field">
									<input type="text" placeholder=" " name="edu_major" id="edu_major" value="{$user->_data['user_edu_major']}">
									<span>{__("Major")}</span>
								</label>
								
								<div class="row">
									<div class="col-md-6">
										<label class="ele_field">
											<input type="text" placeholder=" " name="edu_school" id="edu_school" value="{$user->_data['user_edu_school']}">
											<span>{__("School")}</span>
										</label>
									</div>
									<div class="col-md-6">
										<label class="ele_field">
											<input type="text" placeholder=" " name="edu_class" id="edu_class" value="{$user->_data['user_edu_class']}">
											<span>{__("Class")}</span>
										</label>
									</div>
								</div>
                            {/if}
                                
                            <!-- success -->
                            <div class="alert alert-success x-hidden"></div>
                            <!-- success -->

                            <!-- error -->
                            <div class="alert alert-danger x-hidden"></div>
                            <!-- error -->

                            <!-- buttons -->
                            <div class="mt20 d-flex justify-content-between">
								<button type="submit" class="btn btn-primary bg-success btn-mat"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M7 12l5 5l10 -10"></path><path d="M2 12l5 5m5 -5l5 -5"></path></svg> {__("Save Changes")}</button>&nbsp;&nbsp;
								<button type="button" class="btn btn-primary btn-mat" id="activate-step-3">{__("Next")}&nbsp;&nbsp;<svg xmlns="http://www.w3.org/2000/svg" class="mx-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><line x1="5" y1="12" x2="19" y2="12"></line><line x1="15" y1="16" x2="19" y2="12"></line><line x1="15" y1="8" x2="19" y2="12"></line></svg></button>
                            </div>
                            <!-- buttons -->
                        </form>
                    </div>

                    <div class="js_wizard-content x-hidden" id="step-3">
                        <div class="text-center">
                            <h3 class="mb5">
								{if $friends || $followers || $pages || $groups}
									{__("Manage Connections")}
								{else}
									{if $system['friends_enabled']}{__("Add Friends")}{else}{__("Add Followers")}{/if}
								{/if}
							</h3>
                            <p class="mb20">{__("Get latest activities from our popular users")}</p>
                        </div>
						<form class="js_ajax-forms" data-url="users/started.php?do=finish">
							{if $friends || $followers || $pages || $groups}
								<!-- friends -->
								{if $friends}
									<div class="heading-small mb-1">{if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}</div>
									<ul class="ele_side_users mx-n2">
										{foreach $friends as $_user}
											{include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"] _darker=true}
										{/foreach}
									</ul>
								{/if}
								<!-- friends -->
								<!-- followers -->
								{if $followers}
									<hr class="my-4">
									<div class="heading-small mb-1">{__("Followers")}</div>
									<ul class="ele_side_users mx-n2">
										{foreach $followers as $_user}
											{include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"] _darker=true}
										{/foreach}
									</ul>
								{/if}
								<!-- followers -->
								<!-- pages -->
								{if $pages}
									<hr class="my-4">
									<div class="heading-small mb-1">{__("Pages")}</div>
									<ul class="ele_side_users mx-n2">
										{foreach $pages as $_page}
											{include file='__feeds_page.tpl' _tpl="list" _darker=true}
										{/foreach}
									</ul>
								{/if}
								<!-- pages -->
								<!-- groups -->
								{if $groups}
									<hr class="my-4">
									<div class="heading-small mb-1">{__("Groups")}</div>
									<ul class="ele_side_users mx-n2">
										{foreach $groups as $_group}
											{include file='__feeds_group.tpl' _tpl="list" _darker=true}
										{/foreach}
									</ul>
								{/if}
								<!-- groups -->
							{else}
								<!-- new people -->
								{if $new_people}
									<ul class="ele_side_users mx-n2">
										{foreach $new_people as $_user}
											{include file='__feeds_user.tpl' _tpl="list" _connection="add" _darker=true}
										{/foreach}
									</ul>
								{/if}
								<!-- new people -->
							{/if}

						  <!-- success -->
						  <div class="alert alert-success x-hidden"></div>
						  <!-- success -->

						  <!-- error -->
						  <div class="alert alert-danger x-hidden"></div>
						  <!-- error -->
						  
						  <!-- buttons -->
							<div class="clearfix mt20 text-center">
								<button type="submit" class="btn btn-primary btn-mat"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M7 12l5 5l10 -10"></path><path d="M2 12l5 5m5 -5l5 -5"></path></svg> {__("Finish")}</button>
							</div>
							<!-- buttons -->
						</form>
                    </div>
                    <!-- tabs -->
				</div>
			</div>
        </div>
    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}

<script>
    $(function() {

        var wizard_steps = $('.js_wizard-steps li a');
        var wizard_content = $('.js_wizard-content');

        wizard_content.hide();

        wizard_steps.click(function(e) {
            e.preventDefault();
            var $target = $($(this).attr('href'));
            if (!$(this).hasClass('disabled')) {
                wizard_steps.removeClass('active');
                $(this).addClass('active');
                wizard_content.hide();
                $target.show();
            }
        });

        $('.js_wizard-steps li a.active').trigger('click');

        $('#activate-step-2').on('click', function(e) {
            $('.js_wizard-steps li:eq(1) a').removeClass('disabled');
            $('.js_wizard-steps li a[href="#step-2"]').trigger('click');
        });

        $('#activate-step-3').on('click', function(e) {
            $('.js_wizard-steps li:eq(2) a').removeClass('disabled');
            $('.js_wizard-steps li a[href="#step-3"]').trigger('click');
        });

    });
</script>