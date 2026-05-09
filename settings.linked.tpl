<h2 class="ele_page_title small mt-n1 mb-4">{__("Linked Accounts")}</h2>
					
<div class="mb-n4">
	{if $system['facebook_login_enabled']}
		<div class="form-table-row">
			<div class="avatar">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="40" height="40"><path fill="#4267b2" d="M12 2C6.477 2 2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.879V14.89h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.989C18.343 21.129 22 16.99 22 12c0-5.523-4.477-10-10-10z"></path></svg>
			</div>
			<div>
				<div class="form-control-label h6 mb5">{__("Facebook")}</div>
				<div class="form-text d-none d-sm-block">
					{if $user->_data['facebook_connected']}
						{__("Your account is connected to")} {__("Facebook")}
					{else}
						{__("Connect your account to")} {__("Facebook")}
					{/if}
				</div>
			</div>
			<div class="text-right">
				{if $user->_data['facebook_connected']}
					<a class="btn btn-sm btn-danger btn-mat" href="{$system['system_url']}/revoke/facebook">{__("Disconnect")}</a>
				{else}
					<a class="btn btn-sm btn-primary btn-mat" href="{$system['system_url']}/connect/facebook">{__("Connect")}</a>
				{/if}
			</div>
		</div>
	{/if}

	{if $system['google_login_enabled']}
		<div class="form-table-row">
			<div class="avatar">
				<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512" xml:space="preserve" width="40" height="40"> <path style="fill:#FBBB00;" d="M113.47,309.408L95.648,375.94l-65.139,1.378C11.042,341.211,0,299.9,0,256 c0-42.451,10.324-82.483,28.624-117.732h0.014l57.992,10.632l25.404,57.644c-5.317,15.501-8.215,32.141-8.215,49.456 C103.821,274.792,107.225,292.797,113.47,309.408z"/> <path style="fill:#518EF8;" d="M507.527,208.176C510.467,223.662,512,239.655,512,256c0,18.328-1.927,36.206-5.598,53.451 c-12.462,58.683-45.025,109.925-90.134,146.187l-0.014-0.014l-73.044-3.727l-10.338-64.535 c29.932-17.554,53.324-45.025,65.646-77.911h-136.89V208.176h138.887L507.527,208.176L507.527,208.176z"/> <path style="fill:#28B446;" d="M416.253,455.624l0.014,0.014C372.396,490.901,316.666,512,256,512 c-97.491,0-182.252-54.491-225.491-134.681l82.961-67.91c21.619,57.698,77.278,98.771,142.53,98.771 c28.047,0,54.323-7.582,76.87-20.818L416.253,455.624z"/> <path style="fill:#F14336;" d="M419.404,58.936l-82.933,67.896c-23.335-14.586-50.919-23.012-80.471-23.012 c-66.729,0-123.429,42.957-143.965,102.724l-83.397-68.276h-0.014C71.23,56.123,157.06,0,256,0 C318.115,0,375.068,22.126,419.404,58.936z"/></svg>
			</div>
			<div>
				<div class="form-control-label h6 mb5">{__("Google")}</div>
				<div class="form-text d-none d-sm-block">
					{if $user->_data['google_connected']}
						{__("Your account is connected to")} {__("Google")}
					{else}
						{__("Connect your account to")} {__("Google")}
					{/if}
				</div>
			</div>
			<div class="text-right">
				{if $user->_data['google_connected']}
					<a class="btn btn-sm btn-danger btn-mat" href="{$system['system_url']}/revoke/google">{__("Disconnect")}</a>
				{else}
					<a class="btn btn-sm btn-primary btn-mat" href="{$system['system_url']}/connect/google">{__("Connect")}</a>
				{/if}
			</div>
		</div>
	{/if}

	{if $system['twitter_login_enabled']}
		<div class="form-table-row">
			<div class="avatar">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="40" height="40"><path fill="#1da1f2" d="M22.162 5.656a8.384 8.384 0 0 1-2.402.658A4.196 4.196 0 0 0 21.6 4c-.82.488-1.719.83-2.656 1.015a4.182 4.182 0 0 0-7.126 3.814 11.874 11.874 0 0 1-8.62-4.37 4.168 4.168 0 0 0-.566 2.103c0 1.45.738 2.731 1.86 3.481a4.168 4.168 0 0 1-1.894-.523v.052a4.185 4.185 0 0 0 3.355 4.101 4.21 4.21 0 0 1-1.89.072A4.185 4.185 0 0 0 7.97 16.65a8.394 8.394 0 0 1-6.191 1.732 11.83 11.83 0 0 0 6.41 1.88c7.693 0 11.9-6.373 11.9-11.9 0-.18-.005-.362-.013-.54a8.496 8.496 0 0 0 2.087-2.165z"></path></svg>
			</div>
			<div>
				<div class="form-control-label h6 mb5">{__("Twitter")}</div>
				<div class="form-text d-none d-sm-block">
					{if $user->_data['twitter_connected']}
						{__("Your account is connected to")} {__("Twitter")}
					{else}
						{__("Connect your account to")} {__("Twitter")}
					{/if}
				</div>
			</div>
			<div class="text-right">
				{if $user->_data['twitter_connected']}
					<a class="btn btn-sm btn-danger btn-mat" href="{$system['system_url']}/revoke/twitter">{__("Disconnect")}</a>
				{else}
					<a class="btn btn-sm btn-primary btn-mat" href="{$system['system_url']}/connect/twitter">{__("Connect")}</a>
				{/if}
			</div>
		</div>
	{/if}

	{if $system['linkedin_login_enabled']}
		<div class="form-table-row">
			<div class="avatar">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="40" height="40"><path fill="#0076b6" d="M6.94 5a2 2 0 1 1-4-.002 2 2 0 0 1 4 .002zM7 8.48H3V21h4V8.48zm6.32 0H9.34V21h3.94v-6.57c0-3.66 4.77-4 4.77 0V21H22v-7.93c0-6.17-7.06-5.94-8.72-2.91l.04-1.68z"></path></svg>
			</div>
			<div>
				<div class="form-control-label h6 mb5">{__("Linkedin")}</div>
				<div class="form-text d-none d-sm-block">
					{if $user->_data['linkedin_connected']}
						{__("Your account is connected to")} {__("Linkedin")}
					{else}
						{__("Connect your account to")} {__("Linkedin")}
					{/if}
				</div>
			</div>
			<div class="text-right">
				{if $user->_data['linkedin_connected']}
					<a class="btn btn-sm btn-danger btn-mat" href="{$system['system_url']}/revoke/linkedin">{__("Disconnect")}</a>
				{else}
					<a class="btn btn-sm btn-primary btn-mat" href="{$system['system_url']}/connect/linkedin">{__("Connect")}</a>
				{/if}
			</div>
		</div>
	{/if}

	{if $system['vkontakte_login_enabled']}
		<div class="form-table-row">
			<div class="avatar">
				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="40" height="40"><path fill="#4a76a8" d="M15.07 2H8.93C3.33 2 2 3.33 2 8.93V15.07C2 20.67 3.33 22 8.93 22H15.07C20.67 22 22 20.67 22 15.07V8.93C22 3.33 20.67 2 15.07 2M18.15 16.27H16.69C16.14 16.27 15.97 15.82 15 14.83C14.12 14 13.74 13.88 13.53 13.88C13.24 13.88 13.15 13.96 13.15 14.38V15.69C13.15 16.04 13.04 16.26 12.11 16.26C10.57 16.26 8.86 15.32 7.66 13.59C5.85 11.05 5.36 9.13 5.36 8.75C5.36 8.54 5.43 8.34 5.85 8.34H7.32C7.69 8.34 7.83 8.5 7.97 8.9C8.69 11 9.89 12.8 10.38 12.8C10.57 12.8 10.65 12.71 10.65 12.25V10.1C10.6 9.12 10.07 9.03 10.07 8.68C10.07 8.5 10.21 8.34 10.44 8.34H12.73C13.04 8.34 13.15 8.5 13.15 8.88V11.77C13.15 12.08 13.28 12.19 13.38 12.19C13.56 12.19 13.72 12.08 14.05 11.74C15.1 10.57 15.85 8.76 15.85 8.76C15.95 8.55 16.11 8.35 16.5 8.35H17.93C18.37 8.35 18.47 8.58 18.37 8.89C18.19 9.74 16.41 12.25 16.43 12.25C16.27 12.5 16.21 12.61 16.43 12.9C16.58 13.11 17.09 13.55 17.43 13.94C18.05 14.65 18.53 15.24 18.66 15.65C18.77 16.06 18.57 16.27 18.15 16.27Z"></path></svg>
			</div>
			<div>
				<div class="form-control-label h6 mb5">{__("Vkontakte")}</div>
				<div class="form-text d-none d-sm-block">
					{if $user->_data['vkontakte_connected']}
						{__("Your account is connected to")} {__("Vkontakte")}
					{else}
						{__("Connect your account to")} {__("Vkontakte")}
					{/if}
				</div>
			</div>
			<div class="text-right">
				{if $user->_data['vkontakte_connected']}
					<a class="btn btn-sm btn-danger btn-mat" href="{$system['system_url']}/revoke/vkontakte">{__("Disconnect")}</a>
				{else}
					<a class="btn btn-sm btn-primary btn-mat" href="{$system['system_url']}/connect/vkontakte">{__("Connect")}</a>
				{/if}
			</div>
		</div>
	{/if}
	
	{if $system['wordpress_login_enabled']}
		<div class="form-table-row">
			<div class="avatar">
				<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 24 24"><path fill="#21759b" d="M19.891 7.788a8.966 8.966 0 0 1 1.099 4.313 8.986 8.986 0 0 1-4.47 7.771l2.746-7.939c.513-1.282.684-2.309.684-3.219a7.165 7.165 0 0 0-.059-.926m-6.651.087a14.14 14.14 0 0 0 1.026-.088c.485-.063.428-.775-.056-.749 0 0-1.463.112-2.4.112-.887 0-2.375-.125-2.375-.125-.487-.024-.55.713-.061.738 0 0 .449.052.938.075l1.399 3.838-1.975 5.899-3.274-9.724a17.006 17.006 0 0 0 1.028-.083c.487-.063.43-.775-.055-.747 0 0-1.455.115-2.395.115-.167 0-.365-.007-.575-.013C6.093 4.726 8.862 3.113 12 3.113c2.341 0 4.471.894 6.071 2.36-.038-.002-.076-.008-.117-.008-.883 0-1.51.77-1.51 1.596 0 .741.427 1.369.883 2.108.343.601.742 1.37.742 2.481 0 .763-.295 1.662-.685 2.899l-.896 2.987-3.25-9.675.002.014zM12 21.087a8.983 8.983 0 0 1-2.54-.364l2.697-7.838 2.763 7.572c.021.044.042.085.065.124a9.016 9.016 0 0 1-2.985.508m-8.99-8.988a8.94 8.94 0 0 1 .778-3.658l4.287 11.749a8.993 8.993 0 0 1-5.065-8.091m8.99-10c-5.513 0-10 4.487-10 10s4.487 10 10 10 10-4.487 10-10-4.487-10-10-10"></path></svg>
			</div>
			<div>
				<div class="form-control-label h6 mb5">{__("Wordpress")}</div>
				<div class="form-text d-none d-sm-block">
					{if $user->_data['wordpress_connected']}
						{__("Your account is connected to")} {__("wordpress")}
					{else}
						{__("Connect your account to")} {__("wordpress")}
					{/if}
				</div>
			</div>
			<div class="text-right">
				{if $user->_data['wordpress_connected']}
					<a class="btn btn-sm btn-danger btn-mat" href="{$system['system_url']}/revoke/wordpress">{__("Disconnect")}</a>
				{else}
					<a class="btn btn-sm btn-primary btn-mat" href="{$system['system_url']}/connect/wordpress">{__("Connect")}</a>
				{/if}
			</div>
		</div>
	{/if}
	
	{if $system['sngine_login_enabled']}
		<div class="form-table-row">
			<div class="avatar">
				<img src="{$system['system_uploads']}/{$system['sngine_app_icon']}" width="40" height="40" alt="{__({$system['sngine_app_name']})}">
			</div>
			<div>
				<div class="form-control-label h6 mb5">{__({$system['sngine_app_name']})}</div>
				<div class="form-text d-none d-sm-block">
					{if $user->_data['sngine_connected']}
						{__("Your account is connected to")} {__({$system['sngine_app_name']})}
					{else}
						{__("Connect your account to")} {__({$system['sngine_app_name']})}
					{/if}
				</div>
			</div>
			<div class="text-right">
				{if $user->_data['sngine_connected']}
					<a class="btn btn-sm btn-danger btn-mat" href="{$system['system_url']}/revoke/sngine">{__("Disconnect")}</a>
				{else}
					<a class="btn btn-sm btn-primary btn-mat" href="https://{$system['sngine_app_domain']}/api/oauth?app_id={$system['sngine_appid']}">{__("Connect")}</a>
				{/if}
			</div>
		</div>
	{/if}
</div>