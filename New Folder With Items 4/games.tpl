{include file='_head.tpl'}
{include file='_header.tpl'}

{if $view == "" || $view == "genre"}
<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Games")}</h2>
				<p class="text-xlg">{__($system['system_description_games'])}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M10.1309 15.0099L9.10094 13.9799L10.0909 12.9899C10.3809 12.6999 10.3809 12.2199 10.0909 11.9299C9.80094 11.6399 9.32094 11.6399 9.03094 11.9299L8.04094 12.9199L7.08094 11.9599C6.79094 11.6699 6.31094 11.6699 6.02094 11.9599C5.73094 12.2499 5.73094 12.7299 6.02094 13.0199L6.98094 13.9799L5.99094 14.9699C5.70094 15.2599 5.70094 15.7399 5.99094 16.0299C6.14094 16.1799 6.33094 16.2499 6.52094 16.2499C6.71094 16.2499 6.90094 16.1799 7.05094 16.0299L8.04094 15.0399L9.07094 16.0699C9.22094 16.2199 9.41094 16.2899 9.60094 16.2899C9.79094 16.2899 9.98094 16.2199 10.1309 16.0699C10.4209 15.7799 10.4209 15.2999 10.1309 15.0099Z" fill="currentColor"/><path d="M13.5393 15C12.9893 15 12.5293 14.55 12.5293 14C12.5293 13.45 12.9693 13 13.5193 13H13.5393C14.0893 13 14.5393 13.45 14.5393 14C14.5393 14.55 14.0993 15 13.5393 15Z" fill="currentColor"/><path d="M17.4807 15C16.9307 15 16.4707 14.55 16.4707 14C16.4707 13.45 16.9107 13 17.4607 13H17.4807C18.0307 13 18.4807 13.45 18.4807 14C18.4807 14.55 18.0407 15 17.4807 15Z" fill="currentColor"/><path d="M15.5 16.97C14.95 16.97 14.5 16.53 14.5 15.98V15.96C14.5 15.41 14.95 14.96 15.5 14.96C16.05 14.96 16.5 15.41 16.5 15.96C16.5 16.51 16.06 16.97 15.5 16.97Z" fill="currentColor"/><path d="M15.5 13.03C14.95 13.03 14.5 12.59 14.5 12.04V12.02C14.5 11.47 14.95 11.02 15.5 11.02C16.05 11.02 16.5 11.47 16.5 12.02C16.5 12.57 16.06 13.03 15.5 13.03Z" fill="currentColor"/><path opacity="0.4" d="M22 11.07V16.65C22 19.6 19.6 22 16.65 22H7.35C4.4 22 2 19.6 2 16.65V11.07C2 8.11997 4.4 5.71997 7.35 5.71997H16.65C19.6 5.71997 22 8.11997 22 11.07Z" fill="currentColor"/><path d="M13.6394 2.71L13.6294 3.65C13.6194 4.53 12.8894 5.26 11.9994 5.26C11.8494 5.26 11.7594 5.36 11.7594 5.49C11.7594 5.62 11.8594 5.72 11.9894 5.72H10.3794C10.3694 5.65 10.3594 5.57 10.3594 5.49C10.3594 4.59 11.0894 3.86 11.9794 3.86C12.1294 3.86 12.2294 3.76 12.2294 3.63L12.2394 2.69C12.2494 2.31 12.5594 2 12.9394 2H12.9494C13.3394 2 13.6394 2.32 13.6394 2.71Z" fill="currentColor"/></svg>
		</div>
    </div>
</div>
<!-- page header -->
{/if}

<!-- page content -->
<div class="container position-relative mb20">
	{if $view == "" || $view == "genre"}
	<div class="ele_content p-5 mb30">
		<div class="valign flex-wrap flex-md-nowrap ele_jobs_header">
			<button type="button" class="btn btn-block btn-mat" onclick="$('.ele_jobs_nav').slideToggle();">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.6695 2H16.7695C14.5895 2 13.4395 3.15 13.4395 5.33V7.23C13.4395 9.41 14.5895 10.56 16.7695 10.56H18.6695C20.8495 10.56 21.9995 9.41 21.9995 7.23V5.33C21.9995 3.15 20.8495 2 18.6695 2Z" fill="currentColor"/><path d="M7.24 13.4297H5.34C3.15 13.4297 2 14.5797 2 16.7597V18.6597C2 20.8497 3.15 21.9997 5.33 21.9997H7.23C9.41 21.9997 10.56 20.8497 10.56 18.6697V16.7697C10.57 14.5797 9.42 13.4297 7.24 13.4297Z" fill="currentColor"/><path d="M6.29 10.58C8.6593 10.58 10.58 8.6593 10.58 6.29C10.58 3.9207 8.6593 2 6.29 2C3.9207 2 2 3.9207 2 6.29C2 8.6593 3.9207 10.58 6.29 10.58Z" fill="currentColor"/><path d="M17.7099 22.0019C20.0792 22.0019 21.9999 20.0812 21.9999 17.7119C21.9999 15.3426 20.0792 13.4219 17.7099 13.4219C15.3406 13.4219 13.4199 15.3426 13.4199 17.7119C13.4199 20.0812 15.3406 22.0019 17.7099 22.0019Z" fill="currentColor"/></svg> {__("Categories")}&nbsp;&nbsp;&nbsp;&nbsp;<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top"><path d="M6 12H18" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 18V6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
			</button>
		</div>
		
		<!-- categories -->
			<ul class="side-nav text-center ele_jobs_nav x-hidden">
				<div class="pt-5 w-100"></div>
				<li class="d-inline-block {if $view == "" || $view == "search"}active{/if}">
					<a href="{$system['system_url']}/games">
						{__("All")}
					</a>
                </li>
                {foreach $genres as $_genre}
					<li class="d-inline-block {if $view == "genre" && $genre['genre_id'] == $_genre['genre_id']}active {/if} ">
						<a href="{$system['system_url']}/games/genre/{$_genre['genre_id']}/{$_genre['genre_url']}">
							{__($_genre['genre_name'])}
						</a>
					</li>
                {/foreach}
			</ul>
		<!-- categories -->
	</div>
	{/if}
	

	{if $view == "game"}

		<!-- content panel -->
		<div class="post">
			<div class="pin-icon">
				<a href="{$system['system_url']}/games">
					<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor"><path d="M20 11H6.83l2.88-2.88c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L3.71 11.3c-.39.39-.39 1.02 0 1.41L8.3 17.3c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L6.83 13H20c.55 0 1-.45 1-1s-.45-1-1-1z"/></svg> {__("Go Back")}
				</a>
            </div>
			<div class="valign post-header align-items-center">
				<div class="valign align-items-center">
					<div class="post-avatar">
						<div class="post-avatar-picture" style="background-image:url({$game['thumbnail']});"></div>
					</div>
					<div class="post-meta">
						<div class="title p-0">
							<div class="post-author text-xlg">{$game['title']}</div>
						</div>
					</div>
				</div>
				
				<!-- full screen button -->
				<button class="btn btn-sm btn-light js_game-fullscreen">
                    <i class="fa fa-expand"></i><span class="d-none d-lg-inline ml5">{__("Full Screen")}</span>
				</button>
				<!-- full screen button -->
			</div>
		</div>
		
		<div class="embed-responsive embed-responsive-16by9">
			<iframe frameborder="0" src="{$game['source']}" id="game-area"></iframe>
		</div>
		<!-- content panel -->

	{else}

		<!-- tabs -->
		<div class="valign ele_post_filters">
			<div class="ele_post_filters_nav not_filter valign ele_scroll">
				<a href="{$system['system_url']}/games" class='btn-mat filterby pointer {if $view == "" || $view == "genre"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><g><rect fill="none" height="24" width="24"/><rect fill="none" height="24" width="24"/></g><g><g><g><path d="M17.09,11h4.86c-0.16-1.61-0.71-3.11-1.54-4.4C18.68,7.43,17.42,9.05,17.09,11z"/></g><g><path d="M6.91,11C6.58,9.05,5.32,7.43,3.59,6.6C2.76,7.89,2.21,9.39,2.05,11H6.91z"/></g><g><path d="M15.07,11c0.32-2.59,1.88-4.79,4.06-6c-1.6-1.63-3.74-2.71-6.13-2.95V11H15.07z"/></g><g><path d="M8.93,11H11V2.05C8.61,2.29,6.46,3.37,4.87,5C7.05,6.21,8.61,8.41,8.93,11z"/></g><g><path d="M15.07,13H13v8.95c2.39-0.24,4.54-1.32,6.13-2.95C16.95,17.79,15.39,15.59,15.07,13z"/></g><g><path d="M3.59,17.4c1.72-0.83,2.99-2.46,3.32-4.4H2.05C2.21,14.61,2.76,16.11,3.59,17.4z"/></g><g><path d="M17.09,13c0.33,1.95,1.59,3.57,3.32,4.4c0.83-1.29,1.38-2.79,1.54-4.4H17.09z"/></g><g><path d="M8.93,13c-0.32,2.59-1.88,4.79-4.06,6c1.6,1.63,3.74,2.71,6.13,2.95V13H8.93z"/></g></g></g></svg>{__("Discover")}
				</a>
				{if $user->_logged_in}
					<a href="{$system['system_url']}/games/played" class='btn-mat filterby pointer {if $view != "" && $view != "genre"}active{/if}'>
						<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><g><rect fill="none" height="24" width="24"/><rect fill="none" height="24" width="24"/></g><g><g><path d="M21.58,16.09l-1.09-7.66C20.21,6.46,18.52,5,16.53,5H7.47C5.48,5,3.79,6.46,3.51,8.43l-1.09,7.66 C2.2,17.63,3.39,19,4.94,19h0c0.68,0,1.32-0.27,1.8-0.75L9,16h6l2.25,2.25c0.48,0.48,1.13,0.75,1.8,0.75h0 C20.61,19,21.8,17.63,21.58,16.09z M11,11H9v2H8v-2H6v-1h2V8h1v2h2V11z M15,10c-0.55,0-1-0.45-1-1c0-0.55,0.45-1,1-1s1,0.45,1,1 C16,9.55,15.55,10,15,10z M17,13c-0.55,0-1-0.45-1-1c0-0.55,0.45-1,1-1s1,0.45,1,1C18,12.55,17.55,13,17,13z"/></g></g></svg>{__("Your Games")}
					</a>
				{/if}
			</div>
		</div>
		<!-- tabs -->

		<!-- content -->
		<div class="ele_content mb30">
			{if $games}
				<ul class="row">
					{foreach $games as $_game}
						{include file='__feeds_game.tpl' _tpl='box'}
					{/foreach}
				</ul>

				<!-- see-more -->
				{if count($games) >= $system['games_results']}
					<div class="alert alert-post see-more js_see-more" data-get="{$get}" {if $view == "genre"}data-id="{$genre['genre_id']}" {/if} {if $view == "played"}data-uid="{$user->_data['user_id']}" {/if}>
						<span>{__("See More")}</span>
						<div class="loader loader_small x-hidden"></div>
					</div>
				{/if}
				<!-- see-more -->
			{else}
				{include file='_no_data.tpl'}
			{/if}
		</div>
		<!-- content -->

	{/if}

</div>
<!-- page content -->

{include file='_footer.tpl'}