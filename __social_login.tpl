{if $system['facebook_login_enabled'] || $system['google_login_enabled'] || $system['twitter_login_enabled'] || $system['linkedin_login_enabled'] || $system['vkontakte_login_enabled'] || $system['wordpress_login_enabled'] || $system['sngine_login_enabled']}
	{if $_or_pos != 'bottom'}
		<div class="hr-heading mt5 mb10">
			<div class="hr-heading-text">
				{__("or")}
			</div>
		</div>
	{/if}
	{if $system['facebook_login_enabled']}
		<a href="{$system['system_url']}/connect/facebook" class="btn d-flex align-items-center justify-content-center mt-2">
			<svg enable-background="new 0 0 512 512" height="24" viewBox="0 0 512 512" width="24" xmlns="http://www.w3.org/2000/svg"><g><path d="m512 256c0 127.78-93.62 233.69-216 252.89v-178.89h59.65l11.35-74h-71v-48.02c0-20.25 9.92-39.98 41.72-39.98h32.28v-63s-29.3-5-57.31-5c-58.47 0-96.69 35.44-96.69 99.6v56.4h-65v74h65v178.89c-122.38-19.2-216-125.11-216-252.89 0-141.38 114.62-256 256-256s256 114.62 256 256z" fill="#1877f2"></path><path d="m355.65 330 11.35-74h-71v-48.021c0-20.245 9.918-39.979 41.719-39.979h32.281v-63s-29.296-5-57.305-5c-58.476 0-96.695 35.44-96.695 99.6v56.4h-65v74h65v178.889c13.034 2.045 26.392 3.111 40 3.111s26.966-1.066 40-3.111v-178.889z" fill="#fff"></path></g></svg>{__("Sign in with Facebook")}
		</a>
	{/if}
	{if $system['google_login_enabled']}
		<a href="{$system['system_url']}/connect/google" class="btn d-flex align-items-center justify-content-center mt-2">
			<svg width="24" height="24" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg"> <rect width="40" height="40" rx="20" fill="#F2F2F2"/> <g clip-path="url(#clip0_710_6221)"> <path d="M29.6 20.2273C29.6 19.5182 29.5364 18.8364 29.4182 18.1818H20V22.05H25.3818C25.15 23.3 24.4455 24.3591 23.3864 25.0682V27.5773H26.6182C28.5091 25.8364 29.6 23.2727 29.6 20.2273Z" fill="#4285F4"/> <path d="M20 30C22.7 30 24.9636 29.1045 26.6181 27.5773L23.3863 25.0682C22.4909 25.6682 21.3454 26.0227 20 26.0227C17.3954 26.0227 15.1909 24.2636 14.4045 21.9H11.0636V24.4909C12.7091 27.7591 16.0909 30 20 30Z" fill="#34A853"/> <path d="M14.4045 21.9C14.2045 21.3 14.0909 20.6591 14.0909 20C14.0909 19.3409 14.2045 18.7 14.4045 18.1V15.5091H11.0636C10.3864 16.8591 10 18.3864 10 20C10 21.6136 10.3864 23.1409 11.0636 24.4909L14.4045 21.9Z" fill="#FBBC04"/> <path d="M20 13.9773C21.4681 13.9773 22.7863 14.4818 23.8227 15.4727L26.6909 12.6045C24.9591 10.9909 22.6954 10 20 10C16.0909 10 12.7091 12.2409 11.0636 15.5091L14.4045 18.1C15.1909 15.7364 17.3954 13.9773 20 13.9773Z" fill="#E94235"/> </g> <defs> <clipPath id="clip0_710_6221"> <rect width="20" height="20" fill="white" transform="translate(10 10)"/> </clipPath> </defs> </svg>{__("Sign in with Google")}
		</a>
	{/if}
	{if $system['twitter_login_enabled']}
		<a href="{$system['system_url']}/connect/twitter" class="btn d-flex align-items-center justify-content-center mt-2">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 4l11.733 16h4.267l-11.733 -16z" /><path d="M4 20l6.768 -6.768m2.46 -2.46l6.772 -6.772" /></svg>{__("Sign in with X")}
		</a>
	{/if}
	{if $system['linkedin_login_enabled']}
		<a href="{$system['system_url']}/connect/linkedin" class="btn d-flex align-items-center justify-content-center mt-2">
			<svg height="24" viewBox="0 0 176 176" width="24" xmlns="http://www.w3.org/2000/svg"><g><g><rect id="background" fill="#0077b5" height="176" rx="24" width="176"></rect><g fill="#fff"><path d="m63.4 48a15 15 0 1 1 -15-15 15 15 0 0 1 15 15z"></path><path d="m60 73v66.27a3.71 3.71 0 0 1 -3.71 3.73h-15.81a3.71 3.71 0 0 1 -3.72-3.72v-66.28a3.72 3.72 0 0 1 3.72-3.72h15.81a3.72 3.72 0 0 1 3.71 3.72z"></path><path d="m142.64 107.5v32.08a3.41 3.41 0 0 1 -3.42 3.42h-17a3.41 3.41 0 0 1 -3.42-3.42v-31.09c0-4.64 1.36-20.32-12.13-20.32-10.45 0-12.58 10.73-13 15.55v35.86a3.42 3.42 0 0 1 -3.37 3.42h-16.42a3.41 3.41 0 0 1 -3.41-3.42v-66.87a3.41 3.41 0 0 1 3.41-3.42h16.42a3.42 3.42 0 0 1 3.42 3.42v5.78c3.88-5.82 9.63-10.31 21.9-10.31 27.18 0 27.02 25.38 27.02 39.32z"></path></g></g></g></svg>{__("Sign in with LinkedIn")}
		</a>
	{/if}
	{if $system['vkontakte_login_enabled']}
		<a href="{$system['system_url']}/connect/vkontakte" class="btn d-flex align-items-center justify-content-center mt-2">
			<svg height="24" viewBox="0 0 512 512" width="24" xmlns="http://www.w3.org/2000/svg"><g><path d="m0 245.333c0-115.651 0-173.477 35.928-209.405s93.754-35.928 209.405-35.928h21.333c115.651 0 173.477 0 209.405 35.928 35.929 35.928 35.929 93.754 35.929 209.405v21.333c0 115.651 0 173.477-35.929 209.405-35.927 35.929-93.753 35.929-209.404 35.929h-21.333c-115.651 0-173.477 0-209.405-35.928-35.929-35.928-35.929-93.754-35.929-209.405z" fill="#2787f5"></path><path clip-rule="evenodd" d="m138.676 160h-37.342c-10.669 0-12.803 5.022-12.803 10.558 0 9.889 12.66 58.933 58.946 123.798 30.858 44.298 74.333 68.31 113.894 68.31 23.737 0 26.673-5.333 26.673-14.52v-33.48c0-10.667 2.249-12.796 9.764-12.796 5.539 0 15.034 2.769 37.188 24.127 25.319 25.313 29.493 36.669 43.734 36.669h37.342c10.67 0 16.004-5.333 12.927-15.858-3.368-10.49-15.456-25.71-31.497-43.75-8.704-10.284-21.759-21.358-25.715-26.896-5.538-7.119-3.956-10.284 0-16.611 0 0 45.496-64.075 50.243-85.827 2.373-7.911 0-13.724-11.293-13.724h-37.342c-9.494 0-13.872 5.022-16.246 10.558 0 0-18.989 46.276-45.89 76.336-8.704 8.701-12.66 11.47-17.408 11.47-2.373 0-5.809-2.769-5.809-10.678v-73.962c0-9.493-2.755-13.724-10.669-13.724h-58.68c-5.933 0-9.502 4.405-9.502 8.581 0 8.998 13.451 11.074 14.837 36.387v54.978c0 12.053-2.178 14.239-6.925 14.239-12.659 0-43.453-46.483-61.716-99.672-3.577-10.337-7.167-14.513-16.711-14.513z" fill="#fff" fill-rule="evenodd"></path></g></svg>{__("Sign in with VK")}
		</a>
	{/if}
	{if $system['wordpress_login_enabled']}
		<a href="{$system['system_url']}/connect/wordpress" class="btn d-flex align-items-center justify-content-center mt-2">
			<svg viewBox="0 0 447.674 447.674" xmlns="http://www.w3.org/2000/svg" height="24" width="24"><g> <path style="fill:#00769D;" d="M134.289,138.16h-24.722l67.399,190.521l37.732-107.825l-29.254-82.696H159.36v-18.154h115.508 v18.154h-27.049l67.398,190.521l24.227-69.234c31.781-88.702-26.048-116.333-26.048-136.129s16.048-35.843,35.843-35.843 c1.071,0,2.111,0.058,3.13,0.153c-33.541-31.663-78.768-51.08-128.534-51.08c-65.027,0-122.306,33.146-155.884,83.458h66.336 v18.154L134.289,138.16L134.289,138.16z"></path> <path style="fill:#00769D;" d="M36.548,223.837c0,71.704,40.302,133.986,99.483,165.458l-84.52-238.919 C41.883,172.932,36.548,197.761,36.548,223.837z"></path> <path style="fill:#00769D;" d="M386.833,131.547c2.679,15.774,1.868,33.503-2.243,51.301h0.745l-2.832,8.092l0,0 c-1.678,5.843-3.791,11.82-6.191,17.693l-64.444,180.541c59.057-31.51,99.256-93.725,99.256-165.338 C411.124,190.279,402.29,158.788,386.833,131.547z"></path> <path style="fill:#00769D;" d="M166.075,402.033c18.195,5.894,37.603,9.091,57.762,9.091c19.228,0,37.777-2.902,55.239-8.285 l-54.784-154.862L166.075,402.033z"></path> <path style="fill:#00769D;" d="M382.113,65.56C339.836,23.283,283.625,0,223.836,0S107.837,23.283,65.56,65.56S0,164.047,0,223.837 c0,59.789,23.283,115.999,65.56,158.276s98.488,65.56,158.277,65.56s115.999-23.283,158.277-65.56 c42.277-42.277,65.56-98.488,65.56-158.276C447.673,164.047,424.39,107.837,382.113,65.56z M223.836,431.883 c-114.717,0-208.046-93.329-208.046-208.046S109.119,15.79,223.836,15.79s208.046,93.33,208.046,208.047 S338.554,431.883,223.836,431.883z"></path> </g></svg>{__("Sign in with WordPress")}
		</a>
	{/if}
	{if $system['sngine_login_enabled']}
		<a href="https://{$system['sngine_app_domain']}/api/oauth?app_id={$system['sngine_appid']}" class="btn d-flex align-items-center justify-content-center mt-2">
			<img src="{$system['system_uploads']}/{$system['sngine_app_icon']}" width="24" height="24" alt="{__({$system['sngine_app_name']})}">{__("Sign in with")} {$system['sngine_app_name']}
		</a>
	{/if}
	{if $_or_pos == 'bottom'}
		<div class="hr-heading mt20 mb20">
			<div class="hr-heading-text">
				{__("or")}
			</div>
		</div>
	{/if}
{/if}