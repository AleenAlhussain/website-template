{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
	<div class="circle-1"></div>
	<div class="circle-3"></div>
	<div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Developers")}</h2>
				<p class="text-xlg">{__("Explore the developer tools we offer")}</p>
				{if $view == "apps"}
					<a class="btn btn-mat" href="{$system['system_url']}/developers/new"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("Create New App")}</a>
				{/if}
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/><path d="M7.99945 14.7514C7.80945 14.7514 7.61945 14.6815 7.46945 14.5315L5.46945 12.5315C5.17945 12.2415 5.17945 11.7614 5.46945 11.4714L7.46945 9.47141C7.75945 9.18141 8.23945 9.18141 8.52945 9.47141C8.81945 9.76141 8.81945 10.2415 8.52945 10.5315L7.05945 12.0014L8.52945 13.4714C8.81945 13.7614 8.81945 14.2415 8.52945 14.5315C8.37945 14.6815 8.18945 14.7514 7.99945 14.7514Z" fill="currentColor"/><path d="M15.9995 14.7514C15.8095 14.7514 15.6195 14.6815 15.4695 14.5315C15.1795 14.2415 15.1795 13.7614 15.4695 13.4714L16.9395 12.0014L15.4695 10.5315C15.1795 10.2415 15.1795 9.76141 15.4695 9.47141C15.7595 9.18141 16.2395 9.18141 16.5295 9.47141L18.5295 11.4714C18.8195 11.7614 18.8195 12.2415 18.5295 12.5315L16.5295 14.5315C16.3795 14.6815 16.1895 14.7514 15.9995 14.7514Z" fill="currentColor"/><path d="M11.0001 15.0806C10.9001 15.0806 10.8001 15.0606 10.7101 15.0206C10.3301 14.8606 10.1501 14.4206 10.3201 14.0306L12.3201 9.36053C12.4801 8.98053 12.9201 8.80051 13.3001 8.97051C13.6801 9.13051 13.8601 9.57056 13.6901 9.96056L11.6901 14.6305C11.5701 14.9105 11.2901 15.0806 11.0001 15.0806Z" fill="currentColor"/></svg>
		</div>
	</div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative">
	
	<div class="ele_content mb30">
		<!-- tabs -->
		<div class="text-center content-tabs">
			<ul>
				{if $system['developers_apps_enabled']}
					<li {if $view == ""}class="active" {/if}>
						<a href="{$system['system_url']}/developers"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M3.5 18V7C3.5 3 4.5 2 8.5 2H15.5C19.5 2 20.5 3 20.5 7V17C20.5 17.14 20.5 17.28 20.49 17.42" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M6.35 15H20.5V18.5C20.5 20.43 18.93 22 17 22H7C5.07 22 3.5 20.43 3.5 18.5V17.85C3.5 16.28 4.78 15 6.35 15Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M8 7H16" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M8 10.5H13" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Documentation")}</a>
					</li>
				{/if}
				{if $user->_logged_in && $system['developers_apps_enabled']}
					<li {if $view == "apps" || $view == "new" || $view == "edit"}class="active" {/if}>
						<a href="{$system['system_url']}/developers/apps"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M6.89001 9C7.87001 9.49 8.71001 10.23 9.32001 11.15C9.67001 11.67 9.67001 12.34 9.32001 12.86C8.71001 13.77 7.87001 14.51 6.89001 15" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M13 15H17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M9 22H15C20 22 22 20 22 15V9C22 4 20 2 15 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("My Apps")}</a>
					</li>
				{/if}
				{if $system['developers_share_enabled']}
					<li {if $view == "share"}class="active" {/if}>
						<a  href="{$system['system_url']}/developers/share"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.44 8.8999C20.04 9.2099 21.51 11.0599 21.51 15.1099V15.2399C21.51 19.7099 19.72 21.4999 15.25 21.4999H8.73998C4.26998 21.4999 2.47998 19.7099 2.47998 15.2399V15.1099C2.47998 11.0899 3.92998 9.2399 7.46998 8.9099" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 15.0001V3.62012" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.35 5.85L12 2.5L8.65002 5.85" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Share Plugin")}</a>
					</li>
				{/if}
			</ul>
		</div>
		<!-- tabs -->
		
		{if $view == ""}

			<!-- docs -->
			<div class="plr10" style="font-size: 1.1em;">
				<p>
					<h6>{__("API Version")} <span class="badge badge-light">1.1</span></h6>
				</p>
				<p>
					{__("This documentation explain how to register, configure, and develop your app so you can successfully use our APIs")}
				</p>

				<h5 class="mt30 mb20">{__("Create App")}</h5>
				<p>
					{__("In order for your app to access our APIs, you must register your app using the")} <a href="{$system['system_url']}/developers/apps">{__("App Dashboard")}</a>. {__("Registration creates an App ID that lets us know who you are, helps us distinguish your app from other apps")}.
				</p>
				<ol>
					<li class="mb20">
						{__("You will need to create a new App")} 
						<a class="btn btn-sm btn-mat btn-primary ml10" href="{$system['system_url']}/developers/new">{__("Create New App")}</a>
					</li>
					<li class="mb20">
						{__("Once you created your App you will get your")} <span class="badge badge-primary">app_id</span> {__("and")} <span class="badge badge-primary">app_secret</span>
					</li>
				</ol>

				<h5 class="mt30 mb20">{__("Log in With")}</h5>
				<p>
					{__("Log in With system is a fast and convenient way for people to create accounts and log into your app. Our Log in With system enables two scenarios, authentication and asking for permissions to access people's data. You can use Login With system simply for authentication or for both authentication and data access")}.
				</p>
				<ol>
					<li class="mb20">
						{__("Starting the OAuth login process, You need to use a link for your app like this")}:
						<pre class="mtb10">&lt;a href="{$system['system_url']}/api/oauth?app_id=YOUR_APP_ID"&gt;Log in With {__($system['system_title'])}&lt;/a&gt;</pre>
						<p style="font-size: 15px;">
						   {__("The user will be redirect to Log in With page like this")}
						</p>
						<div class="text-center">
							<img class="img-fluid" width="600" src="{$system['system_url']}/content/themes/{$system['theme']}/images/screenshots/login_with.png">
						</div>
					</li>
					<li class="mb20">
						{__("Once the user accpeted your app, the user will be redirected to your App Redirect URL with")} <span class="badge badge-info">auth_key</span> {__("like this")}:
						<pre class="mtb10">https://mydomain.com/my_redirect_url.php?auth_key=AUTH_KEY</pre>
						{__("This")} <span class="badge badge-info">auth_key</span> {__("valid only for one time usage, so once you used it you will not be able to use it again and generate new code you will need to redirect the user to the log in with link again")}.
					</li>
				</ol>

				<h5 class="mt30 mb20">{__("Access Token")}</h5>
				<p>
					{__("Once you get the user approval of your app Log in With window and returned with the")} <span class="badge badge-info">auth_key</span> {__("which means that now you are ready to retrive data from our APIs and to start this process you will need to authorize your app and get the")} <span class="badge badge-danger">access_token</span> {__("and you can follow our steps to learn how to get it")}.
				</p>
                        <ol>
                            <li class="mb20">
                                {__("To get an access token, make an HTTP GET request to the following endpoint like this")}:
                                <pre class="mtb10">
&lt;?php

$app_id = "YOUR_APP_ID"; // your app id
$app_secret = "YOUR_APP_SECRET"; // your app secret
$auth_key = $_GET['auth_key']; // the returned auth key from previous step

// Prepare the POST data
$postData = [
  'app_id' => $app_id,
  'app_secret' => $app_secret,
  'auth_key' => $auth_key
];

// Initialize cURL
$ch = curl_init('{$system['system_url']}/api/authorize');

// Set cURL options for POST
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($postData));

// Execute request
$response = curl_exec($ch);

// Check for cURL errors
if (curl_errno($ch)) {
  die('cURL error: ' . curl_error($ch));
}

curl_close($ch);

// Decode the JSON response
$json = json_decode($response, true);

// Use the access token if available
if (!empty($json['access_token'])) {
  $access_token = $json['access_token']; // your access token
}
?&gt;
</pre>
                            {__("This")} <span class="badge badge-danger">access_token</span> {__("valid only for only one 1 hour, so once it got invalid you will need to genarte new one by redirect the user to the log in with link again")}.
                            </li>
                        </ol>

				<h5 class="mt30 mb20">{__("APIs")}</h5>
				<p>
					{__("Once you get your")} <span class="badge badge-danger">access_token</span> {__("Now you can retrieve informations from our system via HTTP GET requests which supports the following parameters")}
				</p>
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover">
						<thead>
							<tr>
								<th>{__("Endpoint")}</th>
								<th>{__("Description")}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>api/<span class="badge badge-warning">get_user_info</span></td>
								<td>
									<p>
										{__("get user info")}
									</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<p>{__("You can retrive user info like this")}</p>
                        <pre>if(!empty($json['access_token'])) {
   $access_token = $json['access_token']; // your access token
   $get = file_get_contents("{$system['system_url']}/api/get_user_info?access_token=$access_token");
}</pre>
				<p>{__("The result will be")}:</p>
                        <pre>{
    "user_info": {
        "user_id": "",
        "user_name": "",
        "user_email": "",
        "user_firstname": "",
        "user_lastname": "",
        "user_gender": "",
        "user_birthdate": "",
        "user_picture": "",
        "user_cover": "",
        "user_registered": "",
        "user_verified": "",
        "user_relationship": "",
        "user_biography": "",
        "user_website": ""
    }
}</pre>
			</div>
			<!-- docs -->

		{elseif $view == "apps"}
                
			<!-- apps -->
			<div class="card-body">
				{if $apps}
					<div class="table-responsive">
						<table class="table table-striped table-bordered table-hover js_dataTable">
							<thead>
								<tr>
									<th>{__("ID")}</th>
									<th>{__("App Name")}</th>
									<th>{__("App ID")}</th>
									<th>{__("App Secret")}</th>
									<th>{__("Created")}</th>
									<th>{__("Actions")}</th>
								</tr>
							</thead>
							<tbody>
								{foreach $apps as $app}
									<tr>
										<td>{$app@iteration}</td>
										<td>
											<a target="_blank" href="{$system['system_url']}/developers/edit/{$app['app_auth_id']}">
												<img class="tbl-image" src="{$system['system_uploads']}/{$app['app_icon']}">
												{$app['app_name']}
											</a>
										</td>
										<td>{$app['app_auth_id']}</td>
										<td>{$app['app_auth_secret']}</td>
										<td>
											<span class="js_moment" data-time="{$app['app_date']}">{$app['app_date']}</span>
										</td>
										<td>
											<a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/developers/edit/{$app['app_auth_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
												<i class="fa fa-pencil-alt"></i>
											</a>
											<button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-icon btn-rounded btn-danger js_developers-delete-app" data-id="{$app['app_auth_id']}">
												<i class="fas fa-trash"></i>
											</button>
										</td>
									</tr>
								{/foreach}
							</tbody>
						</table>
					</div>
				{else}
					{include file='_no_data.tpl'}
				{/if}
			</div>
			<!-- apps -->

		{elseif $view == "new"}

			<!-- new app -->
			<div class="valign ele_page_hdng border-0 pt0 pb5 plr10 mb0">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M2,2H11V11H2V2M17.5,2C20,2 22,4 22,6.5C22,9 20,11 17.5,11C15,11 13,9 13,6.5C13,4 15,2 17.5,2M6.5,14L11,22H2L6.5,14M19,17H22V19H19V22H17V19H14V17H17V14H19V17Z"></path></svg> {__("Create New App")}
			</div>

			<form class="js_ajax-forms" data-url="developers/app.php?do=create">
				<div class="card-body">
					<div class="row">
						<div class="col-12 col-md-8 col-lg-7 mx-md-auto">
							<label class="ele_field">
								<input type="text" name="app_name" placeholder=" ">
								<span>{__("App Name")}</span>
							</label>
							<span class="help-block">{__("Your App Name")}</span>
							
							<label class="ele_field">
								<input type="text" name="app_domain" placeholder=" ">
								<span>{__("App Domain")}</span>
							</label>
							<span class="help-block">{__("Your App domain (example: www.domain.com)")}</span>
							
							<label class="ele_field">
								<input type="text" name="app_redirect_url" placeholder=" ">
								<span>{__("Redirect URL")}</span>
							</label>
							<span class="help-block">{__("Your App Redirect URL (example: https://www.domain.com/test.php)")}</span>
							
							<label class="ele_field">
								<textarea placeholder=" " name="app_description" rows="5"></textarea>
								<span>{__("App Description")}</span>
							</label>
							<span class="help-block">{__("Set a description for your App (maximum 200 characters)")}</span>
							
							<label class="ele_field">
								<select name="app_category" id="app_category">
									<option>{__("Select Category")}</option>
									{foreach $categories as $category}
										{include file='__categories.recursive_options.tpl'}
									{/foreach}
								</select>
								<span>{__("Category")}</span>
							</label>
							<span class="help-block">{__("Select a category for your App")}</span>
							
							<div class="form-group">
								<label class="form-control-label bold" for="app_icon">{__("App Icon (1024 x 1024)")}</label>
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
									<input type="hidden" class="js_x-uploader-input" name="app_icon">
								</div>
								<span class="form-text">
									{__("App Icon (1024 x 1024), supported formats (JPG, PNG)")}
								</span>
							</div>

							<!-- error -->
							<div class="alert alert-danger mb0 x-hidden"></div>
							<!-- error -->
						</div>
					</div>
					<div class="text-center ele_sett_bott_btn">
						<a class="btn btn-mat" href="{$system['system_url']}/developers/apps"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Create")}</button>
					</div>
				</div>
			</form>
			<!-- new app -->

		{elseif $view == "edit"}

			<!-- edit app -->
			<div class="valign ele_page_hdng border-0 pt0 pb5 plr10 mb0">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M2,6V8H14V6H2M2,10V12H14V10H2M20.04,10.13C19.9,10.13 19.76,10.19 19.65,10.3L18.65,11.3L20.7,13.35L21.7,12.35C21.92,12.14 21.92,11.79 21.7,11.58L20.42,10.3C20.31,10.19 20.18,10.13 20.04,10.13M18.07,11.88L12,17.94V20H14.06L20.12,13.93L18.07,11.88M2,14V16H10V14H2Z"></path></svg> {__("Edit App")}
			</div>
			
			<form class="js_ajax-forms" data-url="developers/app.php?do=edit&id={$app['app_auth_id']}">
				<div class="card-body">
					<div class="row">
						<div class="col-12 col-md-8 col-lg-7 mx-md-auto">
							<label class="ele_field">
								<input disabled type="text" placeholder=" " name="app_auth_id" value="{$app['app_auth_id']}">
								<span>{__("App ID")}</span>
							</label>
							
							<label class="ele_field">
								<input disabled type="text" placeholder=" " name="app_auth_secret" value="{$app['app_auth_secret']}">
								<span>{__("App Secret")}</span>
							</label>

							<label class="ele_field">
								<input type="text" name="app_name" placeholder=" " value="{$app['app_name']}">
								<span>{__("App Name")}</span>
							</label>
							<span class="help-block">{__("Your App Name")}</span>
							
							<label class="ele_field">
								<input type="text" name="app_domain" placeholder=" " value="{$app['app_domain']}">
								<span>{__("App Domain")}</span>
							</label>
							<span class="help-block">{__("Your App domain (example: www.domain.com)")}</span>
							
							<label class="ele_field">
								<input type="text" name="app_redirect_url" placeholder=" " value="{$app['app_redirect_url']}">
								<span>{__("Redirect URL")}</span>
							</label>
							<span class="help-block">{__("Your App Redirect URL (example: https://www.domain.com/test.php)")}</span>
							
							<label class="ele_field">
								<textarea placeholder=" " name="app_description" rows="5">{$app['app_description']}</textarea>
								<span>{__("App Description")}</span>
							</label>
							<span class="help-block">{__("Set a description for your App (maximum 200 characters)")}</span>
							
							<label class="ele_field">
								<select name="app_category" id="app_category">
									<option>{__("Select Category")}</option>
									{foreach $categories as $category}
										{include file='__categories.recursive_options.tpl' data_category=$app['app_category_id']}
									{/foreach}
								</select>
								<span>{__("Category")}</span>
							</label>
							<span class="help-block">{__("Select a category for your App")}</span>
							
							<div class="form-group">
								<label class="form-control-label bold" for="app_icon">{__("App Icon (1024 x 1024)")}</label>

								{if $app['app_icon'] == ''}
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
										<input type="hidden" class="js_x-uploader-input" name="app_icon">
									</div>
								{else}
									<div class="x-image" style="background-image: url('{$system['system_uploads']}/{$app['app_icon']}')">
										<button type="button" class="close js_x-image-remover" title='{__("Remove")}'>
											<span>×</span>
										</button>
										<div class="x-image-loader">
											<div class="progress x-progress">
												<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
											</div>
										</div>
										<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
										<input type="hidden" class="js_x-uploader-input" name="app_icon" value="{$app['app_icon']}">
									</div>
								{/if}
								<span class="form-text">
									{__("App Icon (1024 x 1024), supported formats (JPG, PNG)")}
								</span>
							</div>

							<!-- success -->
							<div class="alert alert-success mb0 x-hidden"></div>
							<!-- success -->

							<!-- error -->
							<div class="alert alert-danger mb0 x-hidden"></div>
							<!-- error -->
						</div>
					</div>
					
					<div class="text-center ele_sett_bott_btn">
						<a class="btn btn-mat" href="{$system['system_url']}/developers/apps"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
					</div>
				</div>
			</form>
			<!-- edit app -->

		{elseif $view == "share"}

			<!-- share plugin -->
			<div class="plr10 page-content pb20">
				<h6>
					{__("Add the following code in your site, inside the head tag")}:
				</h6>
                        <pre>&lt;script&gt;
    function SocialShare(url) {
        window.open('{$system['system_url']}/share?url=' + url, '', 'height=600,width=800');
    }
&lt;/script&gt;</pre>
				<h6>
					{__("Then place the share button after changing the URL you want to share to your page HTML")}:
				</h6>
				<pre>&lt;button onclick="SocialShare('http://yoursite.com/')"&gt;Share&lt;/button&gt;</pre>
				<h6>
					{__("Example")}: <button class="btn btn-sm btn-mat btn-primary" onclick="SocialShare(site_path)" >{__("Share")}</button>
				</h6>
				<script>
					function SocialShare(url) {
						window.open(site_path + '/share?url=' + url, '', 'height=600,width=800');
					}
				</script>
			</div>
			<!-- share plugin -->

		{/if}
	</div>
	
</div>
<!-- page content -->

{include file='_footer.tpl'}