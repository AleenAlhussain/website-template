{if $sub_view == ""}
	<div class="ele_affs_page py-4">
		<div class="row align-items-md-center">
			<div class="col-md-7">
				<h2 class="ele_page_title">{__("Affiliates System")} {if $sub_view == "payments"} &rsaquo; {__("Payments")}{/if}</h2>
				<h3>
					{__("Earn up to")} 
					{if $system['affiliate_type'] == "registration"}
						{print_money($system['affiliates_per_user'])} ({__("Level 1")})
						  {if $system['affiliates_levels'] >= 2}
							, {print_money($system['affiliates_per_user_2'])} ({__("Level 2")})
						  {/if}
						  {if $system['affiliates_levels'] >= 3}
							, {print_money($system['affiliates_per_user_3'])} ({__("Level 3")})
						  {/if}
						  {if $system['affiliates_levels'] >= 4}
							, {print_money($system['affiliates_per_user_4'])} ({__("Level 4")})
						  {/if}
						  {if $system['affiliates_levels'] >= 5}
							, {print_money($system['affiliates_per_user_5'])} ({__("Level 5")})
						  {/if}
						  {if $system['affiliates_levels'] >= 6}
							, {print_money($system['affiliates_per_user_6'])} ({__("Level 6")})
						  {/if}
						  {if $system['affiliates_levels'] >= 7}
							, {print_money($system['affiliates_per_user_7'])} ({__("Level 7")})
						  {/if}
						  {if $system['affiliates_levels'] >= 8}
							, {print_money($system['affiliates_per_user_8'])} ({__("Level 8")})
						  {/if}
						  {if $system['affiliates_levels'] >= 9}
							, {print_money($system['affiliates_per_user_9'])} ({__("Level 9")})
						  {/if}
						  {if $system['affiliates_levels'] >= 10}
							, {print_money($system['affiliates_per_user_10'])} ({__("Level 10")})
						  {/if}
						{__("For each user you will refer")}.
					{else}
						{if $system['affiliate_payment_type'] == "fixed"}
							{print_money($system['affiliates_per_user'])} ({__("Level 1")})
							{if $system['affiliates_levels'] >= 2}
							  , {print_money($system['affiliates_per_user_2'])} ({__("Level 2")})
							{/if}
							{if $system['affiliates_levels'] >= 3}
							  ,{print_money($system['affiliates_per_user_3'])} ({__("Level 3")})
							{/if}
							{if $system['affiliates_levels'] >= 4}
							  , {print_money($system['affiliates_per_user_4'])} ({__("Level 4")})
							{/if}
							{if $system['affiliates_levels'] >= 5}
							  , {print_money($system['affiliates_per_user_5'])} ({__("Level 5")})
							{/if}
							{if $system['affiliates_levels'] >= 6}
							  , {print_money($system['affiliates_per_user_6'])} ({__("Level 6")})
							{/if}
							{if $system['affiliates_levels'] >= 7}
							  , {print_money($system['affiliates_per_user_7'])} ({__("Level 7")})
							{/if}
							{if $system['affiliates_levels'] >= 8}
							  , {print_money($system['affiliates_per_user_8'])} ({__("Level 8")})
							{/if}
							{if $system['affiliates_levels'] >= 9}
							  , {print_money($system['affiliates_per_user_9'])} ({__("Level 9")})
							{/if}
							{if $system['affiliates_levels'] >= 10}
							  , {print_money($system['affiliates_per_user_10'])} ({__("Level 10")})
							{/if}
							{__("For each user you will refer")}.
						{else}
							{$system['affiliates_percentage']}% ({__("Level 1")})
							{if $system['affiliates_levels'] >= 2}
							  , {$system['affiliates_percentage_2']}% ({__("Level 2")})
							{/if}
							{if $system['affiliates_levels'] >= 3}
							  , {$system['affiliates_percentage_3']}% ({__("Level 3")})
							{/if}
							{if $system['affiliates_levels'] >= 4}
							  , {$system['affiliates_percentage_4']}% ({__("Level 4")})
							{/if}
							{if $system['affiliates_levels'] >= 5}
							  , {$system['affiliates_percentage_5']}% ({__("Level 5")})
							{/if}
							{if $system['affiliates_levels'] >= 6}
							  , {$system['affiliates_percentage_6']}% ({__("Level 6")})
							{/if}
							{if $system['affiliates_levels'] >= 7}
							  , {$system['affiliates_percentage_7']}% ({__("Level 7")})
							{/if}
							{if $system['affiliates_levels'] >= 8}
							  , {$system['affiliates_percentage_8']}% ({__("Level 8")})
							{/if}
							{if $system['affiliates_levels'] >= 9}
							  , {$system['affiliates_percentage_9']}% ({__("Level 9")})
							{/if}
							{if $system['affiliates_levels'] >= 10}
							  , {$system['affiliates_percentage_10']}% ({__("Level 10")})
							{/if}
							{__("From the package or monetized content price of your refered user")}.
						{/if}
					{/if}
				</h3>
				<h4 class="m-0">
					{if $system['affiliate_type'] == "registration"}
						{__("You will be paid when")} {__("new user registered")}
					{else}
						{__("You will be paid when")} {__("new user registered & bought a package or monetized content")}
					{/if}
				</h4>
			</div>
			<div class="col-md-3 offset-md-2">
				<img src="{$system['system_url']}/content/themes/{$system['theme']}/images/affs.svg" class="w-100">
			</div>
		</div>
	</div>
	
	<hr class="my-4">
	
	<div class="row">
		<div class="col-md-6">
			<div class="heading-small mb-1">
				{__("Your affiliate link is")}
			</div>
			<div class="input-group mb-4">
				<input type="text" disabled class="form-control" value="{$system['system_url']}/?ref={$user->_data['user_name']}">
				<div class="input-group-append">
					<button class="btn btn-info py-2 px-3  js_clipboard" data-clipboard-text="{$system['system_url']}/?ref={$user->_data['user_name']}" data-toggle="tooltip" data-placement="top" title='{__("Copy")}'>
						<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="20" height="20" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="8" y="8" width="12" height="12" rx="2"></rect><path d="M16 8v-2a2 2 0 0 0 -2 -2h-8a2 2 0 0 0 -2 2v8a2 2 0 0 0 2 2h2"></path></svg>
					</button>
				</div>
			</div>
			
			<div class="heading-small mb-1">
				{__("Share")}
			</div>
			<div class="d-flex align-items-center p-0 mb-4 mx-n1 flex-wrap">
				<a href="http://www.facebook.com/sharer.php?u={$system['system_url']}/?ref={$user->_data['user_name']}" class="btn btn-rounded p-0 m-1" target="_blank">
					<svg height="37" viewBox="0 0 176 176" width="37" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient x1="50%" x2="50%" y1="97.0782153%" y2="0%" id="facebook_grad"><stop offset="0%" stop-color="#0062E0"></stop><stop offset="100%" stop-color="#19AFFF"></stop></linearGradient></defs><g><g><path d="m144.52 173a532.59 532.59 0 0 1 -113 0 32.07 32.07 0 0 1 -28.52-28.48 532.59 532.59 0 0 1 0-113 32.07 32.07 0 0 1 28.48-28.52 532.59 532.59 0 0 1 113 0 32.07 32.07 0 0 1 28.52 28.48 532.59 532.59 0 0 1 0 113 32.07 32.07 0 0 1 -28.48 28.52z" fill="url(#facebook_grad)"></path><path d="m115.88 77.58-1.77 15.33a2.87 2.87 0 0 1 -2.82 2.57h-16l-.08 45.45a2.05 2.05 0 0 1 -2 2.07h-16.21a2 2 0 0 1 -2-2.08v-45.44h-12a2.87 2.87 0 0 1 -2.84-2.9l-.06-15.33a2.88 2.88 0 0 1 2.84-2.92h12.06v-14.8c0-17.18 10.2-26.53 25.16-26.53h12.26a2.88 2.88 0 0 1 2.85 2.92v12.9a2.88 2.88 0 0 1 -2.85 2.92h-7.52c-8.13 0-9.71 4-9.71 9.78v12.81h17.87a2.88 2.88 0 0 1 2.82 3.25z" fill="#fff"></path></g></g></svg>
				</a>
				<a href="https://twitter.com/intent/tweet?url={$system['system_url']}/?ref={$user->_data['user_name']}" class="btn btn-rounded p-0 m-1" target="_blank">
					<svg height="37" viewBox="0 0 176 176" width="37" xmlns="http://www.w3.org/2000/svg"><g><g><path d="m144.52 173a532.59 532.59 0 0 1 -113 0 32.07 32.07 0 0 1 -28.52-28.48 532.59 532.59 0 0 1 0-113 32.07 32.07 0 0 1 28.48-28.52 532.59 532.59 0 0 1 113 0 32.07 32.07 0 0 1 28.52 28.48 532.59 532.59 0 0 1 0 113 32.07 32.07 0 0 1 -28.48 28.52z" fill="#1d9bf0"></path><path d="m144.79 55.71a47.15 47.15 0 0 1 -9.43 10.35 4 4 0 0 0 -1.51 3.14v.37a66.11 66.11 0 0 1 -4.26 23 67.31 67.31 0 0 1 -12.53 21 61.37 61.37 0 0 1 -27.06 17.86 68 68 0 0 1 -21.34 3.32 65.13 65.13 0 0 1 -32.66-8.82 1.87 1.87 0 0 1 -.89-2.08 1.81 1.81 0 0 1 1.77-1.36h2.74a43.74 43.74 0 0 0 24.47-7.49 23.78 23.78 0 0 1 -18.78-16.12 1.24 1.24 0 0 1 1.41-1.6 21.59 21.59 0 0 0 4 .38h.5a23.78 23.78 0 0 1 -13.85-21.88 1.25 1.25 0 0 1 1.85-1.08 21 21 0 0 0 5.4 2.1 23.75 23.75 0 0 1 -3.85-28.8 1.24 1.24 0 0 1 2-.17 62.17 62.17 0 0 0 42.77 22.82h.09a.92.92 0 0 0 .65-.3.87.87 0 0 0 .21-.67 25.61 25.61 0 0 1 .56-8.68 22.56 22.56 0 0 1 3-7 23 23 0 0 1 12.54-9.6 25.33 25.33 0 0 1 7.51-1.16 23.69 23.69 0 0 1 15.69 5.92 3.09 3.09 0 0 0 2 .78 3 3 0 0 0 .72-.1 43.66 43.66 0 0 0 11.59-4.79 1.25 1.25 0 0 1 1.82 1.45 23.66 23.66 0 0 1 -6.24 9.94 43.9 43.9 0 0 0 7.58-2.56 1.24 1.24 0 0 1 1.53 1.83z" fill="#fff"></path></g></g></svg>
				</a>
				<a href="https://vk.com/share.php?url={$system['system_url']}/?ref={$user->_data['user_name']}" class="btn btn-rounded p-0 m-1" target="_blank">
					<svg height="37" viewBox="0 0 176 176" width="37" xmlns="http://www.w3.org/2000/svg"><g><g><path d="m144.52 173a532.59 532.59 0 0 1 -113 0 32.07 32.07 0 0 1 -28.52-28.48 532.59 532.59 0 0 1 0-113 32.07 32.07 0 0 1 28.48-28.52 532.59 532.59 0 0 1 113 0 32.07 32.07 0 0 1 28.52 28.48 532.59 532.59 0 0 1 0 113 32.07 32.07 0 0 1 -28.48 28.52z" fill="#07F"></path><path d="m138.72 119.44c-2.56.36-15.08 0-15.73 0a12.3 12.3 0 0 1 -8.69-3.44c-2.64-2.54-5-5.34-7.58-8a21 21 0 0 0 -2.47-2.23c-2.06-1.59-4.1-1.23-5.07 1.2a47.26 47.26 0 0 0 -1.58 8.03c-.17 2.46-1.73 4-4.49 4.17-1.71.09-3.42.12-5.11.08a39 39 0 0 1 -17.69-4.37 48.18 48.18 0 0 1 -15.13-13.23c-6.67-8.52-12-17.88-16.76-27.53-.25-.48-5.13-10.86-5.25-11.35-.44-1.64 0-3.21 1.35-3.75.86-.33 16.94 0 17.21 0a5.63 5.63 0 0 1 5.4 3.88 83.8 83.8 0 0 0 12.08 21.18 11.6 11.6 0 0 0 2.45 2.24c1.31.89 2.55.58 3.09-.93a26.36 26.36 0 0 0 1.12-6.45c.09-4.34 0-7.2-.24-11.53-.16-2.78-1.14-5.22-5.24-6-1.26-.22-1.37-1.26-.56-2.3 1.69-2.16 4-2.5 6.59-2.63 3.86-.22 7.72-.07 11.58 0h.84a23.91 23.91 0 0 1 5 .51 4.6 4.6 0 0 1 3.67 4.1 16.15 16.15 0 0 1 .25 3.32c-.1 4.74-.33 9.47-.38 14.21a24.35 24.35 0 0 0 .51 5.59c.55 2.52 2.28 3.15 4 1.33a63.12 63.12 0 0 0 6.11-7.54 76.3 76.3 0 0 0 8-15.55c1.12-2.81 2-3.43 5-3.43h17.06a10.12 10.12 0 0 1 3 .4 2.59 2.59 0 0 1 1.79 3.35c-.84 3.74-2.86 6.93-5 10-3.47 4.92-7.13 9.71-10.68 14.55a19.92 19.92 0 0 0 -1.23 2c-1.34 2.41-1.24 3.76.7 5.77 3.1 3.18 6.41 6.17 9.4 9.45a55.18 55.18 0 0 1 5.92 7.69c2.19 3.39.84 6.63-3.24 7.21z" fill="#fff"></path></g></g></svg>
				</a>
				<a href="https://www.linkedin.com/shareArticle?mini=true&url={$system['system_url']}/?ref%3D{$user->_data['user_name']}" class="btn btn-rounded p-0 m-1" target="_blank">
					<svg height="37" viewBox="0 0 176 176" width="37" xmlns="http://www.w3.org/2000/svg"><g><g><path d="m144.52 173a532.59 532.59 0 0 1 -113 0 32.07 32.07 0 0 1 -28.52-28.48 532.59 532.59 0 0 1 0-113 32.07 32.07 0 0 1 28.48-28.52 532.59 532.59 0 0 1 113 0 32.07 32.07 0 0 1 28.52 28.48 532.59 532.59 0 0 1 0 113 32.07 32.07 0 0 1 -28.48 28.52z" fill="#0b66c3"></path><g fill="#fff"><path d="m63.4 48a15 15 0 1 1 -15-15 15 15 0 0 1 15 15z"></path><path d="m60 73v66.27a3.71 3.71 0 0 1 -3.71 3.73h-15.81a3.71 3.71 0 0 1 -3.72-3.72v-66.28a3.72 3.72 0 0 1 3.72-3.72h15.81a3.72 3.72 0 0 1 3.71 3.72z"></path><path d="m142.64 107.5v32.08a3.41 3.41 0 0 1 -3.42 3.42h-17a3.41 3.41 0 0 1 -3.42-3.42v-31.09c0-4.64 1.36-20.32-12.13-20.32-10.45 0-12.58 10.73-13 15.55v35.86a3.42 3.42 0 0 1 -3.37 3.42h-16.42a3.41 3.41 0 0 1 -3.41-3.42v-66.87a3.41 3.41 0 0 1 3.41-3.42h16.42a3.42 3.42 0 0 1 3.42 3.42v5.78c3.88-5.82 9.63-10.31 21.9-10.31 27.18 0 27.02 25.38 27.02 39.32z"></path></g></g></g></svg>
				</a>
				<a href="https://api.whatsapp.com/send?text={$system['system_url']}/?ref%3D{$user->_data['user_name']}" class="btn btn-rounded p-0 m-1" target="_blank">
					<svg height="37" viewBox="0 0 176 176" width="37" xmlns="http://www.w3.org/2000/svg"><g id="Layer_2" data-name="Layer 2"><g id="_08.whatsapp" data-name="08.whatsapp"><path id="background" d="m144.52 173a532.59 532.59 0 0 1 -113 0 32.07 32.07 0 0 1 -28.52-28.48 532.59 532.59 0 0 1 0-113 32.07 32.07 0 0 1 28.48-28.52 532.59 532.59 0 0 1 113 0 32.07 32.07 0 0 1 28.52 28.48 532.59 532.59 0 0 1 0 113 32.07 32.07 0 0 1 -28.48 28.52z" fill="#29a71a"/><g id="icon" fill="#fff"><path d="m126.8 49.2a54.57 54.57 0 0 0 -87.42 63.13l-5.79 28.11a2.08 2.08 0 0 0 .33 1.63 2.11 2.11 0 0 0 2.24.87l27.55-6.53a54.56 54.56 0 0 0 63.09-87.21zm-8.59 68.56a42.74 42.74 0 0 1 -49.22 8l-3.84-1.9-16.89 4 .05-.21 3.5-17-1.88-3.71a42.72 42.72 0 0 1 7.86-49.59 42.73 42.73 0 0 1 60.42 0 2.28 2.28 0 0 0 .22.22 42.72 42.72 0 0 1 -.22 60.19z"/><path d="m116.71 105.29c-2.07 3.26-5.34 7.25-9.45 8.24-7.2 1.74-18.25.06-32-12.76l-.17-.15c-12.09-11.21-15.23-20.54-14.47-27.94.42-4.2 3.92-8 6.87-10.48a3.93 3.93 0 0 1 6.15 1.41l4.45 10a3.91 3.91 0 0 1 -.49 4l-2.25 2.92a3.87 3.87 0 0 0 -.35 4.32c1.26 2.21 4.28 5.46 7.63 8.47 3.76 3.4 7.93 6.51 10.57 7.57a3.82 3.82 0 0 0 4.19-.88l2.61-2.63a4 4 0 0 1 3.9-1l10.57 3a4 4 0 0 1 2.24 5.91z"/></g></g></g></svg>
				</a>
				<a href="https://reddit.com/submit?url={$system['system_url']}/?ref={$user->_data['user_name']}" class="btn btn-rounded p-0 m-1" target="_blank">
					<svg height="37" viewBox="0 0 176 176" width="37" xmlns="http://www.w3.org/2000/svg"><g id="Layer_2" data-name="Layer 2"><g id="_17.reddit" data-name="17.reddit"><path id="background" d="m144.52 173a532.59 532.59 0 0 1 -113 0 32.07 32.07 0 0 1 -28.52-28.48 532.59 532.59 0 0 1 0-113 32.07 32.07 0 0 1 28.48-28.52 532.59 532.59 0 0 1 113 0 32.07 32.07 0 0 1 28.52 28.48 532.59 532.59 0 0 1 0 113 32.07 32.07 0 0 1 -28.48 28.52z" fill="#ff4500"/><path id="icon" d="m130.74 75.66a12.27 12.27 0 0 0 -8.74 3.74c-8.28-5.81-19.43-9.55-31.79-10l6.42-29.36 20.37 4.71a9.16 9.16 0 0 0 9.12 9.25 9.34 9.34 0 1 0 -8.18-13.5l-22.58-5.11a2.17 2.17 0 0 0 -2.56 1.67l-7 32.37c-12.26.52-23.3 4.25-31.6 10.07a12.22 12.22 0 0 0 -8.9-3.84c-12.89 0-17.11 17.55-5.31 23.55a27.21 27.21 0 0 0 -.6 5.81c0 19.72 21.88 35.69 48.76 35.69s48.85-15.97 48.85-35.71a22.89 22.89 0 0 0 -.72-5.91c11.57-6 7.31-23.44-5.51-23.45zm-72.07 24.8a9.15 9.15 0 1 1 9.2 9.22 9.23 9.23 0 0 1 -9.2-9.22zm49.68 22c-8.44 8.56-32.25 8.56-40.69 0a2.22 2.22 0 1 1 3.06-3.22c6.44 6.7 27.82 6.82 34.55 0a2.23 2.23 0 0 1 3.08 3.22zm-.19-12.75a9.28 9.28 0 1 1 9.21-9.22 9.17 9.17 0 0 1 -9.21 9.21z" fill="#fff"/></g></g></svg>
				</a>
				<a href="https://www.tumblr.com/share/link?url={$system['system_url']}/?ref={$user->_data['user_name']}" class="btn btn-rounded p-0 m-1" target="_blank">
					<svg height="37" viewBox="0 0 176 176" width="37" xmlns="http://www.w3.org/2000/svg"><g id="Layer_2" data-name="Layer 2"><g id="_11.tumblr" data-name="11.tumblr"><path id="background" d="m144.52 173a532.59 532.59 0 0 1 -113 0 32.07 32.07 0 0 1 -28.52-28.48 532.59 532.59 0 0 1 0-113 32.07 32.07 0 0 1 28.48-28.52 532.59 532.59 0 0 1 113 0 32.07 32.07 0 0 1 28.52 28.48 532.59 532.59 0 0 1 0 113 32.07 32.07 0 0 1 -28.48 28.52z" fill="#001935"/><path id="icon" d="m114 120.48a13 13 0 0 1 -9.47 3.75c-6.2 0-9-3.75-9-9.3v-31.45h20v-19h-20v-31.48h-15.1a42.54 42.54 0 0 1 -24.28 31.61v18.87h14.73v36.21c0 5 4.74 23.31 28.89 23.31 14.2 0 20.08-9.14 20.08-9.14z" fill="#fff"/></g></g></svg>
				</a>
			</div>
		</div>
		<div class="col-md-6">
			<div class="heading-small mb-1">
				{__("Your Affiliate Balance")}
			</div>
			<div class="p-3 ele_forum_stats replies">
				<div class="d-flex justify-content-between">
					<h6>{__("Balance")}</h6>
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19.3009 7.91949V13.0695C19.3009 16.1495 17.5409 17.4695 14.9009 17.4695H6.11093C5.66093 17.4695 5.23093 17.4295 4.83093 17.3395C4.58093 17.2995 4.34094 17.2295 4.12094 17.1495C2.62094 16.5895 1.71094 15.2895 1.71094 13.0695V7.91949C1.71094 4.83949 3.47093 3.51953 6.11093 3.51953H14.9009C17.1409 3.51953 18.7509 4.46953 19.1809 6.63953C19.2509 7.03953 19.3009 7.44949 19.3009 7.91949Z" fill="#10c442"/><path d="M22.2981 10.9206V16.0706C22.2981 19.1506 20.5381 20.4706 17.8981 20.4706H9.10812C8.36812 20.4706 7.69813 20.3706 7.11813 20.1506C5.92813 19.7106 5.11812 18.8006 4.82812 17.3406C5.22813 17.4306 5.65812 17.4706 6.10812 17.4706H14.8981C17.5381 17.4706 19.2981 16.1506 19.2981 13.0706V7.92059C19.2981 7.45059 19.2581 7.03062 19.1781 6.64062C21.0781 7.04063 22.2981 8.38059 22.2981 10.9206Z" fill="#10c442"/><path d="M10.4994 13.1394C11.9574 13.1394 13.1394 11.9574 13.1394 10.4994C13.1394 9.04136 11.9574 7.85938 10.4994 7.85938C9.04136 7.85938 7.85938 9.04136 7.85938 10.4994C7.85938 11.9574 9.04136 13.1394 10.4994 13.1394Z" fill="#10c442"/><path d="M4.78125 8.25C4.37125 8.25 4.03125 8.59 4.03125 9V12C4.03125 12.41 4.37125 12.75 4.78125 12.75C5.19125 12.75 5.53125 12.41 5.53125 12V9C5.53125 8.59 5.20125 8.25 4.78125 8.25Z" fill="#10c442"/><path d="M16.2109 8.25C15.8009 8.25 15.4609 8.59 15.4609 9V12C15.4609 12.41 15.8009 12.75 16.2109 12.75C16.6209 12.75 16.9609 12.41 16.9609 12V9C16.9609 8.59 16.6309 8.25 16.2109 8.25Z" fill="#10c442"/></svg>
				</div>
				<p class="mb-0">{print_money($user->_data['user_affiliate_balance'])}</p>
			</div>
			<div class="form-text">
				{if $system['affiliates_money_withdraw_enabled']}
					{__("You can withdraw your money")}
				{/if}
				{if $system['affiliates_money_transfer_enabled']}
					{if $system['affiliates_money_withdraw_enabled']}{__("or")} {/if}
					{__("You can transfer your money to your")} <a class="main" href="{$system['system_url']}/wallet" target="_blank">{__("wallet")}.</a>
				{/if}
			</div>
		</div>
	</div>

	<hr class="my-4">
	
	<div class="heading-small mb-1">
		{__("Affiliates")}
	</div>
	{if count($affiliates) > 0}
		<ul class="ele_side_users mx-n2">
			{foreach $affiliates as $_user}
			{include file='__feeds_user.tpl' _tpl="list" _connection=$_user["connection"]}
			{/foreach}
		</ul>
	{else}
		<div class="text-center empty_state">
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"></path><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"></path><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"></path><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"></path><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"></path><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"></path></svg>{__("No affiliates")}
		</div>
	{/if}

	<!-- see-more -->
	{if count($affiliates) >= $system['max_results']}
		<div class="alert alert-info see-more js_see-more" data-uid="{$user->_data['user_id']}" data-get="affiliates">
			<span>{__("See More")}</span>
			<div class="loader loader_small x-hidden"></div>
		</div>
	{/if}
	<!-- see-more -->
{elseif $sub_view == "payments"}
	<h2 class="ele_page_title small mt-n1 mb-4">{__("Affiliates System")}</h2>
	
	<div class="heading-small mb-1">
		{__("Withdrawal Request")}
	</div>
	<form class="js_ajax-forms" data-url="users/withdraw.php?type=affiliates">
		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Your Balance")}
			</label>
			<div class="col-md-9">
				<h6>
					<span class="badge badge-lg badge-info">
						{print_money($user->_data['user_affiliate_balance'])}
					</span>
				</h6>
			</div>
		</div>

		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Amount")} ({$system['system_currency']})
			</label>
			<div class="col-md-9">
				<input type="number" class="form-control" name="amount">
				<span class="form-text">
					{__("The minimum withdrawal request amount is")} {print_money($system['affiliates_min_withdrawal'])}
				</span>
			</div>
		</div>

		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Payment Method")}
			</label>
			<div class="col-md-9">
				{if in_array("paypal", $system['affiliate_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_paypal" value="paypal" class="custom-control-input">
						<label class="custom-control-label" for="method_paypal">{__("PayPal")}</label>
					</div>
				{/if}
				{if in_array("skrill", $system['affiliate_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_skrill" value="skrill" class="custom-control-input">
						<label class="custom-control-label" for="method_skrill">{__("Skrill")}</label>
					</div>
				{/if}
				{if in_array("bank", $system['affiliate_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_bank" value="bank" class="custom-control-input">
						<label class="custom-control-label" for="method_bank">{__("Bank Transfer")}</label>
					</div>
				{/if}
				{if in_array("custom", $system['affiliate_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_custom" value="custom" class="custom-control-input">
						<label class="custom-control-label" for="method_custom">{__($system['affiliate_payment_method_custom'])}</label>
					</div>
				{/if}
			</div>
		</div>

		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Transfer To")}
			</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="method_value">
			</div>
		</div>

		<div class="form-group form-row">
			<div class="col-md-9 offset-md-3">
				<button type="submit" class="btn btn-primary btn-mat">{__("Make a withdrawal")}</button>
			</div>
		</div>

		<!-- success -->
		<div class="alert alert-success mb0 x-hidden"></div>
		<!-- success -->

		<!-- error -->
		<div class="alert alert-danger mb0 x-hidden"></div>
		<!-- error -->
	</form>

	<hr class="my-4">

	<div class="heading-small mb-1">
		{__("Withdrawal History")}
	</div>
	{if $payments}
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="bold border-top-0">{__("ID")}</th>
						<th class="bold border-top-0">{__("Amount")}</th>
						<th class="bold border-top-0">{__("Method")}</th>
						<th class="bold border-top-0">{__("Transfer To")}</th>
						<th class="bold border-top-0">{__("Time")}</th>
						<th class="bold border-top-0">{__("Status")}</th>
					</tr>
				</thead>
				<tbody>
					{foreach $payments as $payment}
						<tr>
							<td>{$payment@iteration}</td>
							<td>{print_money($payment['amount'])}</td>
							<td>
								{if $payment['method'] == "custom"}
									{$system['affiliate_payment_method_custom']}
								{else}
									{$payment['method']|ucfirst}
								{/if}
							</td>
							<td>{$payment['method_value']}</td>
							<td>
								<span class="js_moment" data-time="{$payment['time']}">{$payment['time']}</span>
							</td>
							<td>
								{if $payment['status'] == '0'}
									<span class="badge badge-pill badge-lg badge-warning">{__("Pending")}</span>
								{elseif $payment['status'] == '1'}
									<span class="badge badge-pill badge-lg badge-success">{__("Approved")}</span>
								{else}
									<span class="badge badge-pill badge-lg badge-danger">{__("Declined")}</span>
								{/if}
							</td>
						</tr>
					{/foreach}
				</tbody>
			</table>
		</div>
	{else}
		{include file='_no_transactions.tpl'}
	{/if}
{/if}