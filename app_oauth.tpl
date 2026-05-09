<style>
.main-wrapper {
    padding: 0 !important;
}
.main-header {
    margin-bottom: 0 !important;
}
.ele_toggle_sidebar, .main-header .search-wrapper, .ele_navbar_top_right > .dropdown:not(.user-menu), .ele_header_shadow, .ele_create_dropup, .chat-sidebar, .ele_hdr_user_dropdown hr, .ele_hdr_user_submenu, .ele_hdr_user_dropdown > .dropdown-item:not(.oauth-hide) {
	display: none !important;
}
</style>
{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<div class="container">
	<div class="valign h-100">
		<div class="ele_content card-ouath text-center plr30 pt30">
			<img alt="{$app['app_name']}" src="{$system['system_uploads']}/{$app['app_icon']}" class="app-icon" />
			
			<div class="app-info mt20 mb30">
				<a href="{$app['app_domain']}" target="_blank" rel="nofollow">{$app['app_name']} <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M13 11L21.2 2.80005" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/><path d="M22 6.8V2H17.2" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/><path d="M11 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22H15C20 22 22 20 22 15V13" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/></svg></a> {__("Will receive your")}:<div class="mt5">{__("Name")}, {__("Email Address")} & {__("Profile Picture")}</div>
			</div>
			
			<p class="pb20 mb10">{$app['app_description']}</p>

			<div class="pt30 pb25">
				<button type="button" class="btn btn-block btn-mat btn-primary mb15 js_developers-oauth-app" data-id="{$app['app_auth_id']}">
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Continue as")} {$user->_data['user_fullname']}
				</button>
				<a href="{$system['system_url']}" class="btn btn-block btn-mat btn-secondary">{__("Cancel")}</a>
			</div>
		</div>
	</div>
</div>
<!-- page content -->

{include file='_footer.tpl'}