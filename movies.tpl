{include file='_head.tpl'}
{include file='_header.tpl'}

{if $view != "movie"}
<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Movies")}</h2>
				<p class="text-xlg">{__($system['system_description_movies'])}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M7.81 2H16.19C16.25 2 16.31 2 16.36 2.01C16.9 2.01 17.4 2.07 17.86 2.18C20.02 2.65 21.42 4.09 21.85 6.28C21.95 6.75 22 7.25 22 7.78V16.28C21.99 16.81 21.94 17.31 21.84 17.78C21.4 19.93 20 21.35 17.86 21.82C17.4 21.93 16.9 21.99 16.36 21.99C16.31 22 16.25 22 16.19 22H7.81C7.3 22 6.81 21.96 6.36 21.87C4.1 21.45 2.62 20 2.16 17.78C2.05 17.31 2 16.81 2 16.28V7.77C2 7.24 2.05 6.74 2.15 6.28C2.59 4.02 4.08 2.55 6.36 2.13C6.81 2.04 7.3 2 7.81 2Z"/><path d="M7.86 11.25H16.36V2.01C16.9 2.01 17.4 2.07 17.86 2.18V6.28H21.85C21.95 6.75 22 7.25 22 7.78H17.86V11.25H22V12.75H17.86V16.28H22C21.99 16.81 21.94 17.31 21.84 17.78H17.86V21.82C17.4 21.93 16.9 21.99 16.36 21.99V12.75H7.86V22H7.81C7.3 22 6.81 21.96 6.36 21.87V17.76C6.32 17.77 6.28 17.78 6.24 17.78H2.16C2.05 17.31 2 16.81 2 16.28H6.24C6.28 16.28 6.32 16.3 6.36 16.31V12.75H2V11.25H6.36V7.78H2V7.77C2 7.24 2.05 6.74 2.15 6.28H6.33C6.34 6.28 6.35 6.29 6.36 6.29V2.13C6.81 2.04 7.3 2 7.81 2H7.86V11.25Z"/></svg>
		</div>
    </div>
</div>
<!-- page header -->
{/if}

<!-- page content -->
<div class="{if $view != 'movie'}container position-relative mb20{else} {/if}">
	{if $view != "movie"}
		<div class="ele_content p-5 mb30">
			<div class="valign flex-wrap flex-md-nowrap ele_jobs_header">
				<button type="button" class="btn btn-mat" onclick="$('.ele_jobs_nav').slideToggle();">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.6695 2H16.7695C14.5895 2 13.4395 3.15 13.4395 5.33V7.23C13.4395 9.41 14.5895 10.56 16.7695 10.56H18.6695C20.8495 10.56 21.9995 9.41 21.9995 7.23V5.33C21.9995 3.15 20.8495 2 18.6695 2Z" fill="currentColor"/><path d="M7.24 13.4297H5.34C3.15 13.4297 2 14.5797 2 16.7597V18.6597C2 20.8497 3.15 21.9997 5.33 21.9997H7.23C9.41 21.9997 10.56 20.8497 10.56 18.6697V16.7697C10.57 14.5797 9.42 13.4297 7.24 13.4297Z" fill="currentColor"/><path d="M6.29 10.58C8.6593 10.58 10.58 8.6593 10.58 6.29C10.58 3.9207 8.6593 2 6.29 2C3.9207 2 2 3.9207 2 6.29C2 8.6593 3.9207 10.58 6.29 10.58Z" fill="currentColor"/><path d="M17.7099 22.0019C20.0792 22.0019 21.9999 20.0812 21.9999 17.7119C21.9999 15.3426 20.0792 13.4219 17.7099 13.4219C15.3406 13.4219 13.4199 15.3426 13.4199 17.7119C13.4199 20.0812 15.3406 22.0019 17.7099 22.0019Z" fill="currentColor"/></svg> {__("Genres")}&nbsp;&nbsp;&nbsp;&nbsp;<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top"><path d="M6 12H18" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 18V6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
				</button>
				<form class="js_search-form w-100" data-handle="movies">
					<div class="valign ele_jobs_search">
						<input type="text" class="w-100" name="query" placeholder='{__("Search for movies")}'>
						<button type="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Search")}</button>
					</div>
				</form>
			</div>
			
			<!-- genres -->
				<ul class="side-nav text-center ele_jobs_nav x-hidden">
					<div class="pt-5 w-100"></div>
					<li class='d-inline-block{if $view == "" || $view == "search"} active{/if}'>
						<a href="{$system['system_url']}/movies">
							{__("All")}
						</a>
					</li>
					{foreach $genres as $_genre}
						<li class="d-inline-block{if $view == 'genre' && $genre['genre_id'] == $_genre['genre_id']} active{/if}">
							<a href="{$system['system_url']}/movies/genre/{$_genre['genre_id']}/{$_genre['genre_url']}">
								{__($_genre['genre_name'])}
							</a>
						</li>
					{/foreach}
				</ul>
			<!-- genres -->
		</div>
	{/if}
	
	{include file='_ads.tpl'}
	
	{if $view == "movie"}
		<style>
			.ele_create_dropup {
				display: none;
			}
		</style>
		<div class="ele_watch_movie" id="ele_hdr_rgb">
			<div class="w-100 h-100 position-relative ele_watch_movie_cont">
				<div class="position-absolute h-100 movie_poster">
					<img src="{$movie['poster']}" alt="{$movie['title']}" class="w-100 h-100" data-adaptive-background>
					<div class="position-absolute h-100 w-100 movie_poster_shadow"></div>
				</div>
				<div class="row h-100">
					<div class="h-100 col-md-6 ele_movie_col-6">
						<div class="h-100 ele_movie_scroll">
							<div class="d-flex flex-column ele_movie_details">
								<div>
									<p class="ele_wm_hdr">
										{if $movie['release_year']}
											{$movie['release_year']}
										{/if}
										{if $movie['genres_list']}
											{if $movie['release_year']}&nbsp;·&nbsp;{/if}
											{foreach $movie['genres_list'] as $_genre}
												<a href="{$system['system_url']}/movies/genre/{$_genre['genre_id']}/{$_genre['genre_url']}">{__($_genre['genre_name'])}</a>
												{if !$_genre@last}/{/if}
											{/foreach}
										{/if}
										{if $movie['duration']}
											{if $movie['genres_list']}&nbsp;·&nbsp;{/if}
											{$movie['duration']} {__("minutes")}
										{/if}
									</p>
									<h1 class="ele_wm_title">{$movie['title']}</h1>
									<p class="ele_wm_about">{$movie['description']}</p>
									<ul class="list-unstyled ele_wm_details">
										{if {$movie['stars']}}
											<li>
												<span>{__("Stars")}</span>
												<span>
													{foreach explode(',', $movie['stars']) as $_star}
														{$_star}{if !$_star@last}, {/if}
													{/foreach}
												</span>
											</li>
										{/if}
										{if $movie['imdb_url']}
											<li>
												<span>{__("IMDB")}</span>
												<span><a href="{$movie['imdb_url']}" target="_blank">{$movie['imdb_url']}</a></span>
											</li>
										{/if}
										<li>
											<span>{__("Views")}</span>
											<span>{$movie['views']}</span>
										</li>
									</ul>
									<div class="mt-5">
										<button class="btn btn-mat ele_wm_play" data-toggle="modal" data-target="#watchMovieBox"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" d="M19.376 12.416L8.777 19.482A.5.5 0 0 1 8 19.066V4.934a.5.5 0 0 1 .777-.416l10.599 7.066a.5.5 0 0 1 0 .832z"></path></svg>Play</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="modal ele_wm_box" id="watchMovieBox">
			<div class="modal-dialog">
				<div class="modal-content">
					<button class="btn btn-mat position-absolute p-0 btn_goback_movie" data-dismiss="modal" aria-label="Close"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M19 11H7.83l4.88-4.88c.39-.39.39-1.03 0-1.42-.39-.39-1.02-.39-1.41 0l-6.59 6.59c-.39.39-.39 1.02 0 1.41l6.59 6.59c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L7.83 13H19c.55 0 1-.45 1-1s-.45-1-1-1z"></path></svg></button>
					{if $movie['can_watch']}
					{if $movie['source_type'] == "youtube"}
						<div class="h-100 w-100 watch_player_movie">
							{if $system['smart_yt_player']}
								<div class="youtube-player js_youtube-player p-0 h-100" data-id="{get_youtube_id($movie['source'], false)}">
									<img src="https://i.ytimg.com/vi/{get_youtube_id($movie['source'], false)}/hqdefault.jpg">
									<div class="play"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="currentColor" d="M10,15L15.19,12L10,9V15M21.56,7.17C21.69,7.64 21.78,8.27 21.84,9.07C21.91,9.87 21.94,10.56 21.94,11.16L22,12C22,14.19 21.84,15.8 21.56,16.83C21.31,17.73 20.73,18.31 19.83,18.56C19.36,18.69 18.5,18.78 17.18,18.84C15.88,18.91 14.69,18.94 13.59,18.94L12,19C7.81,19 5.2,18.84 4.17,18.56C3.27,18.31 2.69,17.73 2.44,16.83C2.31,16.36 2.22,15.73 2.16,14.93C2.09,14.13 2.06,13.44 2.06,12.84L2,12C2,9.81 2.16,8.2 2.44,7.17C2.69,6.27 3.27,5.69 4.17,5.44C4.64,5.31 5.5,5.22 6.82,5.16C8.12,5.09 9.31,5.06 10.41,5.06L12,5C16.19,5 18.8,5.16 19.83,5.44C20.73,5.69 21.31,6.27 21.56,7.17Z" /></svg></div>
								</div>
							{else}
								{if $system['disable_yt_player']}
								  <div class="plyr__video-embed js_video-plyr-youtube" data-plyr-provider="youtube" data-plyr-embed-id="{get_youtube_id($movie['source'], false)}"></div>
								{else}
									<iframe width="560" height="315" src="https://www.youtube.com/embed/{get_youtube_id($movie['source'], false)}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
								{/if}
							{/if}
						</div>
					{elseif $movie['source_type'] == "vimeo"}
						<div class="h-100 w-100 watch_player_movie">
							<iframe width="560" height="315" src="https://player.vimeo.com/video/{get_vimeo_id($movie['source'])}" frameborder="0" allow="autoplay; fullscreen" allowfullscreen referrerpolicy='strict-origin-when-cross-origin'></iframe>
						</div>
					{elseif $movie['source_type'] == "link"}
						<div class="h-100 w-100 watch_player_movie">
							<video class="js_video-plyr" id="video-{$movie['movie_id']}" playsinline controls preload="false">
								<source src="{$movie['source']}" type="video/mp4">
								<source src="{$movie['source']}" type="video/webm">
							</video>
						</div>
					{elseif $movie['source_type'] == "uploaded"}
						<div class="h-100 w-100 watch_player_movie">
							<video class="js_video-plyr" id="video-{$movie['movie_id']}" playsinline controls preload="false">
								<source src="{$system['system_uploads']}/{$movie['source']}" type="video/mp4">
								<source src="{$system['system_uploads']}/{$movie['source']}" type="video/webm">
							</video>
						</div>
					{/if}
					{else}
						<!-- need payment -->
						<div class="d-flex flex-column align-items-center justify-content-center h-100">
							<div class="text-center empty_state text-white p-0">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.3" d="M9.42172 2.16141L3.92172 4.2214C2.87172 4.6114 2.01172 5.8614 2.01172 6.9814V15.0814C2.01172 15.8914 2.54173 16.9614 3.19173 17.4414L8.69173 21.5514C9.66173 22.2814 11.2517 22.2814 12.2217 21.5514L17.7217 17.4414C18.3717 16.9514 18.9017 15.8914 18.9017 15.0814V6.9814C18.9017 5.8614 18.0417 4.6114 16.9917 4.2214L11.4917 2.16141C10.9217 1.95141 9.99172 1.95141 9.42172 2.16141Z" fill="#00bcd4"/><path d="M19.2601 6.76172H12.4102C12.2102 6.76172 12.0201 6.77173 11.8401 6.77173C10.1201 6.87173 9.66016 7.50173 9.66016 9.46173V9.85173C9.66016 10.2659 9.99594 10.6017 10.4102 10.6017H21.2502C21.6644 10.6017 22.0002 10.2659 22.0002 9.85173V9.46173C22.0002 7.30173 21.4501 6.76172 19.2601 6.76172Z" fill="#00bcd4"/><path d="M10.4219 11.6992C10.0077 11.6992 9.67188 12.035 9.67188 12.4492V14.5392C9.67188 16.6992 10.2219 17.2492 12.4119 17.2492H19.2619C21.4119 17.2492 21.9819 16.7292 22.0019 14.6592V12.4492C22.0019 12.035 21.6661 11.6992 21.2519 11.6992H10.4219ZM13.2719 15.4692H12.0219C11.7219 15.4692 11.4819 15.2292 11.4819 14.9292C11.4819 14.6292 11.7219 14.3892 12.0219 14.3892H13.2719C13.5719 14.3892 13.8119 14.6292 13.8119 14.9292C13.8119 15.2292 13.5719 15.4692 13.2719 15.4692ZM17.3219 15.4692H14.8319C14.5319 15.4692 14.2919 15.2292 14.2919 14.9292C14.2919 14.6292 14.5319 14.3892 14.8319 14.3892H17.3219C17.6219 14.3892 17.8619 14.6292 17.8619 14.9292C17.8719 15.2292 17.6219 15.4692 17.3219 15.4692Z" fill="#00bcd4"/></svg>
								{__("PAID CONTENT")}
							</div>
							<div class="text-center mt-5">
								<button class="btn btn-mat btn-primary" data-toggle="modal" data-url="#payment" data-options='{ "handle": "movies", "id": {$movie['movie_id']}, "price": {$movie['price']}, "vat": "{get_payment_vat_value($movie['price'])}", "fees": "{get_payment_fees_value($movie['price'])}", "total": "{get_payment_total_value($movie['price'])}", "total_printed": "{get_payment_total_value($movie['price'], true)}" }'>
									{__("PAY")} {print_money($movie['price'])} {__("TO WATCH FOR")} {$movie['available_for']} {__("DAYS")}
								</button>
							</div>
						</div>
						<!-- need payment -->
					{/if}
				</div>
			</div>
		</div>
	{else}

		{if $view == "search"}
			<div class="mb20">
				<!-- results counter -->
				{$total} {__("results were found for the search for")} "<strong class="bold">{htmlentities($query, ENT_QUOTES, 'utf-8')}</strong>"
				<!-- results counter -->
			</div>
		{/if}

		{if $movies}
			<ul class="row">
				{foreach $movies as $_movie}
					<div class="col-xl-3 col-lg-4 col-md-4 col-sm-4 col-6 movies-film-wrapper-lmore">
						<div class="mb20 movie-card">
							<a href="{$system['system_url']}/movie/{$_movie['movie_id']}/{$_movie['movie_url']}" class="position-relative d-block body_color movie-card-top">
								<div class="position-relative movie-picture">
									<img src="{$_movie['poster']}" alt="{$_movie['title']}" class="w-100 h-100 position-absolute rounded">
									{if $_movie['is_paid']}
										<span class="badge rounded-pill bg-dark text-white position-absolute m-2 py-1 px-2">{__("Paid")}</span>
									{/if}
								</div>
								<div class="movie-card-bottom">
									<h3 class="truncate bold movie-title">{$_movie['title']} {if $_movie['release_year']}({$_movie['release_year']}){else}{/if}</h3>
									<div class="truncate movie-tags">
										{if $_movie['genres_list'][0]}
											{__($_movie['genres_list'][0]['genre_name'])}
										{/if}
										{if $_movie['genres_list'][1]}
											, {__($_movie['genres_list'][1]['genre_name'])}
										{/if}
									</div>
								</div>
							</a>
						</div>
					</div>
				{/foreach}
			</ul>

			{$pager}
		{else}
			{include file='_no_data.tpl'}
		{/if}

	{/if}
</div>
<!-- page content -->

{include file='_footer.tpl'}