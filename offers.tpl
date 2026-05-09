{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Offers")}</h2>
				<p class="text-xlg">{__($system['system_description_offers'])}</p>
				{if $system['offers_enabled']}
					<button type="button" class="btn btn-mat" data-toggle="modal" data-url="posts/offer.php?do=create">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"></path></svg> {__("Create Offer")}
					</button>
				{/if}
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M3.9889 14.6584L2.46891 13.1385C1.84891 12.5185 1.84891 11.4985 2.46891 10.8785L3.9889 9.35843C4.2489 9.09843 4.4589 8.58843 4.4589 8.22843V6.07846C4.4589 5.19846 5.1789 4.47843 6.0589 4.47843H8.2089C8.5689 4.47843 9.0789 4.26846 9.3389 4.00846L10.8589 2.48844C11.4789 1.86844 12.4989 1.86844 13.1189 2.48844L14.6389 4.00846C14.8989 4.26846 15.4089 4.47843 15.7689 4.47843H17.9189C18.7989 4.47843 19.5189 5.19846 19.5189 6.07846V8.22843C19.5189 8.58843 19.7289 9.09843 19.9889 9.35843L21.5089 10.8785C22.1289 11.4985 22.1289 12.5185 21.5089 13.1385L19.9889 14.6584C19.7289 14.9184 19.5189 15.4284 19.5189 15.7884V17.9384C19.5189 18.8184 18.7989 19.5384 17.9189 19.5384H15.7689C15.4089 19.5384 14.8989 19.7485 14.6389 20.0085L13.1189 21.5285C12.4989 22.1485 11.4789 22.1485 10.8589 21.5285L9.3389 20.0085C9.0789 19.7485 8.5689 19.5384 8.2089 19.5384H6.0589C5.1789 19.5384 4.4589 18.8184 4.4589 17.9384V15.7884C4.4589 15.4184 4.2489 14.9084 3.9889 14.6584Z" fill="currentColor"></path><path d="M14.9983 16C14.4383 16 13.9883 15.55 13.9883 15C13.9883 14.45 14.4383 14 14.9883 14C15.5383 14 15.9883 14.45 15.9883 15C15.9883 15.55 15.5483 16 14.9983 16Z" fill="currentColor"></path><path d="M9.01001 10C8.45001 10 8 9.55 8 9C8 8.45 8.45 8 9 8C9.55 8 10 8.45 10 9C10 9.55 9.56001 10 9.01001 10Z" fill="currentColor"></path><path d="M9.00141 15.7514C8.81141 15.7514 8.62141 15.6815 8.47141 15.5315C8.18141 15.2415 8.18141 14.7614 8.47141 14.4714L14.4714 8.47141C14.7614 8.18141 15.2414 8.18141 15.5314 8.47141C15.8214 8.76141 15.8214 9.24146 15.5314 9.53146L9.5314 15.5315C9.3814 15.6815 9.1914 15.7514 9.00141 15.7514Z" fill="currentColor"></path></svg>
		</div>
    </div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative mb20">
	<div class="ele_content p-5 mb30">
		<div class="valign flex-wrap {if $user->_logged_in && $system['location_finder_enabled']}flex-3-wide{else}flex-md-nowrap{/if} ele_jobs_header">
		
			<!-- sort -->
				<div class="dropdown">
					<button type="button" class="btn btn-mat" data-toggle="dropdown" data-display="static">
						{if !$sort || $sort == "latest"}
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6009 4.10156V6.30156C20.6009 7.10156 20.1009 8.10156 19.6009 8.60156L15.3009 12.4016C14.7009 12.9016 14.3009 13.9016 14.3009 14.7016V19.0016C14.3009 19.6016 13.9009 20.4016 13.4009 20.7016L12.0009 21.6016C10.7009 22.4016 8.90086 21.5016 8.90086 19.9016V14.6016C8.90086 13.9016 8.50086 13.0016 8.10086 12.5016L7.63086 12.0116C7.32086 11.6816 7.26086 11.1816 7.51086 10.7916L12.6309 2.57156C12.8109 2.28156 13.1309 2.10156 13.4809 2.10156H18.6009C19.7009 2.10156 20.6009 3.00156 20.6009 4.10156Z" fill="currentColor"/><path d="M10.3504 3.63156L6.80039 9.32156C6.46039 9.87156 5.68039 9.95156 5.23039 9.48156L4.30039 8.50156C3.80039 8.00156 3.40039 7.10156 3.40039 6.50156V4.20156C3.40039 3.00156 4.30039 2.10156 5.40039 2.10156H9.50039C10.2804 2.10156 10.7604 2.96156 10.3504 3.63156Z" fill="currentColor"/></svg> {__("Latest")}
						{elseif $sort == "expire-soon"}
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6009 4.10156V6.30156C20.6009 7.10156 20.1009 8.10156 19.6009 8.60156L15.3009 12.4016C14.7009 12.9016 14.3009 13.9016 14.3009 14.7016V19.0016C14.3009 19.6016 13.9009 20.4016 13.4009 20.7016L12.0009 21.6016C10.7009 22.4016 8.90086 21.5016 8.90086 19.9016V14.6016C8.90086 13.9016 8.50086 13.0016 8.10086 12.5016L7.63086 12.0116C7.32086 11.6816 7.26086 11.1816 7.51086 10.7916L12.6309 2.57156C12.8109 2.28156 13.1309 2.10156 13.4809 2.10156H18.6009C19.7009 2.10156 20.6009 3.00156 20.6009 4.10156Z" fill="currentColor"/><path d="M10.3504 3.63156L6.80039 9.32156C6.46039 9.87156 5.68039 9.95156 5.23039 9.48156L4.30039 8.50156C3.80039 8.00156 3.40039 7.10156 3.40039 6.50156V4.20156C3.40039 3.00156 4.30039 2.10156 5.40039 2.10156H9.50039C10.2804 2.10156 10.7604 2.96156 10.3504 3.63156Z" fill="currentColor"/></svg> {__("Expire Soon")}
						{elseif $sort == "expire-latest"}
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6009 4.10156V6.30156C20.6009 7.10156 20.1009 8.10156 19.6009 8.60156L15.3009 12.4016C14.7009 12.9016 14.3009 13.9016 14.3009 14.7016V19.0016C14.3009 19.6016 13.9009 20.4016 13.4009 20.7016L12.0009 21.6016C10.7009 22.4016 8.90086 21.5016 8.90086 19.9016V14.6016C8.90086 13.9016 8.50086 13.0016 8.10086 12.5016L7.63086 12.0116C7.32086 11.6816 7.26086 11.1816 7.51086 10.7916L12.6309 2.57156C12.8109 2.28156 13.1309 2.10156 13.4809 2.10156H18.6009C19.7009 2.10156 20.6009 3.00156 20.6009 4.10156Z" fill="currentColor"/><path d="M10.3504 3.63156L6.80039 9.32156C6.46039 9.87156 5.68039 9.95156 5.23039 9.48156L4.30039 8.50156C3.80039 8.00156 3.40039 7.10156 3.40039 6.50156V4.20156C3.40039 3.00156 4.30039 2.10156 5.40039 2.10156H9.50039C10.2804 2.10156 10.7604 2.96156 10.3504 3.63156Z" fill="currentColor"/></svg> {__("Expire Latest")}
						{/if}
					</button>
					<div class="dropdown-menu ele_create_menu">
						<a href="?{if $selected_country}country={$selected_country['country_name']}&{/if}{if $distance}distance={$distance}&{/if}sort=latest" class="dropdown-item">{__("Latest")}</a>
						<a href="?{if $selected_country}country={$selected_country['country_name']}&{/if}{if $distance}distance={$distance}&{/if}sort=expire-soon" class="dropdown-item">{__("Expire Soon")}</a>
						<a href="?{if $selected_country}country={$selected_country['country_name']}&{/if}{if $distance}distance={$distance}&{/if}sort=expire-latest" class="dropdown-item">{__("Expire Latest")}</a>
					</div>
				</div>
			<!-- sort -->
			{if $user->_logged_in && $system['location_finder_enabled']}
				<!-- location filter -->
					<div class="dropdown">
						<button type="button" class="btn btn-mat" data-toggle="dropdown" data-display="static">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6211 8.45C19.5711 3.83 15.5411 1.75 12.0011 1.75C12.0011 1.75 12.0011 1.75 11.9911 1.75C8.46107 1.75 4.42107 3.82 3.37107 8.44C2.20107 13.6 5.36107 17.97 8.22107 20.72C9.28107 21.74 10.6411 22.25 12.0011 22.25C13.3611 22.25 14.7211 21.74 15.7711 20.72C18.6311 17.97 21.7911 13.61 20.6211 8.45ZM12.0011 13.46C10.2611 13.46 8.85107 12.05 8.85107 10.31C8.85107 8.57 10.2611 7.16 12.0011 7.16C13.7411 7.16 15.1511 8.57 15.1511 10.31C15.1511 12.05 13.7411 13.46 12.0011 13.46Z" fill="currentColor"/></svg> {__("Distance")}
						</button>
						<div class="dropdown-menu ele_create_menu">
							<form class="ptb15 plr15" method="get" action="?">
								<div class="form-group">
									<label class="form-control-label">{__("Distance")}</label>
									<div>
										{if $selected_country}
											<input type="hidden" name="country" value="{$selected_country['country_name']}">
										{/if}
										<input type="range" class="custom-range" min="1" max="5000" name="distance" value="{if $distance}{$distance}{else}5000{/if}" oninput="this.form.distance_value.value=this.value">
										<div class="input-group">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1">{if $system['system_distance'] == "mile"}{__("ML")}{else}{__("KM")}{/if}</span>
											</div>
											<input disabled type="number" class="form-control" min="1" max="5000" name="distance_value" value="{if $distance}{$distance}{else}5000{/if}" oninput="this.form.distance.value=this.value">
										</div>
										{if $sort}
											<input type="hidden" name="sort" value="{$sort}">
										{/if}
									</div>
								</div>
								<button type="submit" class="btn btn-mat btn-block btn-primary">{__("Filter")}</button>
							</form>
						</div>
					</div>
				<!-- location filter -->
			{/if}
			
			<!-- location filter -->
			{if $system['newsfeed_location_filter_enabled']}
				<div class="dropdown">
					<button type="button" class="btn btn-mat countries-filter" data-toggle="dropdown" data-display="static" aria-expanded="false">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6009 4.10156V6.30156C20.6009 7.10156 20.1009 8.10156 19.6009 8.60156L15.3009 12.4016C14.7009 12.9016 14.3009 13.9016 14.3009 14.7016V19.0016C14.3009 19.6016 13.9009 20.4016 13.4009 20.7016L12.0009 21.6016C10.7009 22.4016 8.90086 21.5016 8.90086 19.9016V14.6016C8.90086 13.9016 8.50086 13.0016 8.10086 12.5016L7.63086 12.0116C7.32086 11.6816 7.26086 11.1816 7.51086 10.7916L12.6309 2.57156C12.8109 2.28156 13.1309 2.10156 13.4809 2.10156H18.6009C19.7009 2.10156 20.6009 3.00156 20.6009 4.10156Z" fill="currentColor"></path><path d="M10.3504 3.63156L6.80039 9.32156C6.46039 9.87156 5.68039 9.95156 5.23039 9.48156L4.30039 8.50156C3.80039 8.00156 3.40039 7.10156 3.40039 6.50156V4.20156C3.40039 3.00156 4.30039 2.10156 5.40039 2.10156H9.50039C10.2804 2.10156 10.7604 2.96156 10.3504 3.63156Z" fill="currentColor"></path></svg>
						{if $selected_country}
							{$selected_country['country_name']}
						{else}
							{__("All Countries")}
						{/if}
					</button>
					<div class="dropdown-menu ele_create_menu countries-dropdown">
						<div class="js_scroller">
							<a class="dropdown-item" href="?{if $distance}distance={$distance}{if $sort}&{/if}{/if}{if $sort}sort={$sort}{/if}">{__("All Countries")}</a>
							{foreach $countries as $country}
								<a class="dropdown-item" href="?country={$country['country_name_native']}{if $distance}&distance={$distance}{/if}{if $sort}&sort={$sort}{/if}">{$country['country_name']}</a>
							{/foreach}
						</div>
					</div>
				</div>
			{/if}	
			<!-- location filter -->
			
			<button type="button" class="btn btn-mat" onclick="$('.ele_jobs_nav').slideToggle();">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.6695 2H16.7695C14.5895 2 13.4395 3.15 13.4395 5.33V7.23C13.4395 9.41 14.5895 10.56 16.7695 10.56H18.6695C20.8495 10.56 21.9995 9.41 21.9995 7.23V5.33C21.9995 3.15 20.8495 2 18.6695 2Z" fill="currentColor"/><path d="M7.24 13.4297H5.34C3.15 13.4297 2 14.5797 2 16.7597V18.6597C2 20.8497 3.15 21.9997 5.33 21.9997H7.23C9.41 21.9997 10.56 20.8497 10.56 18.6697V16.7697C10.57 14.5797 9.42 13.4297 7.24 13.4297Z" fill="currentColor"/><path d="M6.29 10.58C8.6593 10.58 10.58 8.6593 10.58 6.29C10.58 3.9207 8.6593 2 6.29 2C3.9207 2 2 3.9207 2 6.29C2 8.6593 3.9207 10.58 6.29 10.58Z" fill="currentColor"/><path d="M17.7099 22.0019C20.0792 22.0019 21.9999 20.0812 21.9999 17.7119C21.9999 15.3426 20.0792 13.4219 17.7099 13.4219C15.3406 13.4219 13.4199 15.3426 13.4199 17.7119C13.4199 20.0812 15.3406 22.0019 17.7099 22.0019Z" fill="currentColor"/></svg> {__("Categories")}&nbsp;&nbsp;&nbsp;&nbsp;<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top"><path d="M6 12H18" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 18V6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
			</button>
			<form class="js_search-form w-100" data-handle="offers">
				<div class="valign ele_jobs_search">
					<input type="text" class="w-100" name="query" placeholder='{__("Search for offers")}'>
					<button type="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Search")}</button>
				</div>
			</form>
		</div>
		
		<!-- categories -->
			<ul class="side-nav text-center ele_jobs_nav x-hidden">
				<div class="pt-5 w-100"></div>
				{if $view != "category"}
					<li class="d-inline-block active">
						<a href="{$system['system_url']}/offers">
							{__("All")}
						</a>
					</li>
				{else}
					<li class="d-inline-block">
						{if $current_category['parent']}
							<a href="{$system['system_url']}/offers/category/{$current_category['parent']['category_id']}/{$current_category['parent']['category_url']}">
								<i class="fas fa-arrow-alt-circle-left mr5"></i>{__($current_category['parent']['category_name'])}
							</a>
						{else}
							<a href="{$system['system_url']}/offers">
								{if $current_category['sub_categories']}<i class="fas fa-arrow-alt-circle-left mr5"></i>{/if}{__("All")}
							</a>
						{/if}
					</li>
				{/if}
				{foreach $categories as $category}
					<li class="d-inline-block{if $view == 'category' && $current_category['category_id'] == $category['category_id']} active{/if}">
						<a href="{$system['system_url']}/offers/category/{$category['category_id']}/{$category['category_url']}">
							{__($category['category_name'])}
							{if $category['sub_categories']}
								&nbsp;<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM14.79 12.53L11.26 16.06C11.11 16.21 10.92 16.28 10.73 16.28C10.54 16.28 10.35 16.21 10.2 16.06C9.91 15.77 9.91 15.29 10.2 15L13.2 12L10.2 9C9.91 8.71 9.91 8.23 10.2 7.94C10.49 7.65 10.97 7.65 11.26 7.94L14.79 11.47C15.09 11.76 15.09 12.24 14.79 12.53Z" fill="currentColor"/></svg>
							{/if}
						</a>
					</li>
				{/foreach}
			</ul>
		<!-- categories -->
	</div>
	
	{include file='_ads.tpl'}
	
	{if $view == "search"}
		<div class="mb20">
			<!-- results counter -->
			{$total} {__("results were found for the search for")} "<strong class="bold">{htmlentities($query, ENT_QUOTES, 'utf-8')}</strong>"
			<!-- results counter -->
		</div>
	{/if}

	{if $view == "" && $promoted_offers}
		<div class="valign ele_page_hdng border-0 pt5 pb0 mb10">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" class="bg-warning text-dark"><path fill="currentColor" d="M12,8H4A2,2 0 0,0 2,10V14A2,2 0 0,0 4,16H5V20A1,1 0 0,0 6,21H8A1,1 0 0,0 9,20V16H12L17,20V4L12,8M21.5,12C21.5,13.71 20.54,15.26 19,16V8C20.53,8.75 21.5,10.3 21.5,12Z"></path></svg> {__("Promoted Offers")}
		</div>

		<div class="row">
			{foreach $promoted_offers as $post}
				<div class="col-md-6 col-lg-4">
					<div class="post mb20 plr15 ptb15 ele_job boosted ele_offer">
						{if $post['needs_subscription']}
							<a href="{$system['system_url']}/posts/{$post['post_id']}">
								<div class="ptb20 plr20">
									{include file='_need_subscription.tpl'}
								</div>
							</a>
						{else}
							<div class="boosted-icon m-0 mb15">{__("Promoted")}</div>
							<div class="valign justify-content-between mb15">
								<a href="{$system['system_url']}/posts/{$post['post_id']}">
									<img src="{$system['system_uploads']}/{$post['offer']['thumbnail']}" class="w-100 avatar">
								</a>
							</div>
							<h4 class="truncate"><a href="{$system['system_url']}/posts/{$post['post_id']}" class="body_color">{$post['offer']['meta_title']}</a></h4>
							<p class="mb15">{$post['text']|truncate:80}</p>
							{if $post['offer']['end_date']}
								<div class="job_info mt5">
									<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M11.795 21h-6.795a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v4"></path><circle cx="18" cy="18" r="4"></circle><path d="M15 3v4"></path><path d="M7 3v4"></path><path d="M3 11h16"></path><path d="M18 16.496v1.504l1 1"></path></svg>&nbsp;&nbsp;{__("Expires")}: {$post['offer']['end_date']|date_format:$system['system_date_format']}
								</div>
							{/if}
							{if $post['offer']['price']}
								<div class="job_info mt5">
									<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 9m0 2a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2v6a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2z" /><path d="M14 14m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /><path d="M17 9v-2a2 2 0 0 0 -2 -2h-10a2 2 0 0 0 -2 2v6a2 2 0 0 0 2 2h2" /></svg>&nbsp;&nbsp;{__("From")} <strong class="bold">{print_money($post['offer']['price'])}</strong>
								</div>
							{/if}
						{/if}
					</div>
				</div>
			{/foreach}
		</div>
	{/if}
            
	{if $rows}
		<div class="row">
			{foreach $rows as $post}
				<div class="col-md-6 col-lg-4">
					<div class="post mb20 plr15 ptb15 ele_job ele_offer">
						{if $post['needs_subscription']}
							<a href="{$system['system_url']}/posts/{$post['post_id']}">
								<div class="ptb20 plr20">
									{include file='_need_subscription.tpl'}
								</div>
							</a>
						{else}
							<div class="valign justify-content-between mb15">
								<a href="{$system['system_url']}/posts/{$post['post_id']}">
									<img src="{$system['system_uploads']}/{$post['offer']['thumbnail']}" class="w-100 avatar">
								</a>
							</div>
							<h4 class="truncate"><a href="{$system['system_url']}/posts/{$post['post_id']}" class="body_color">{$post['offer']['meta_title']}</a></h4>
							<p class="mb15">{$post['text']|truncate:80}</p>
							{if $post['offer']['end_date']}
								<div class="job_info mt5">
									<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M11.795 21h-6.795a2 2 0 0 1 -2 -2v-12a2 2 0 0 1 2 -2h12a2 2 0 0 1 2 2v4"></path><circle cx="18" cy="18" r="4"></circle><path d="M15 3v4"></path><path d="M7 3v4"></path><path d="M3 11h16"></path><path d="M18 16.496v1.504l1 1"></path></svg>&nbsp;&nbsp;{__("Expires")}: {$post['offer']['end_date']|date_format:$system['system_date_format']}
								</div>
							{/if}
							{if $post['offer']['price']}
								<div class="job_info mt5">
									<svg xmlns="http://www.w3.org/2000/svg" class="align-text-top" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M7 9m0 2a2 2 0 0 1 2 -2h10a2 2 0 0 1 2 2v6a2 2 0 0 1 -2 2h-10a2 2 0 0 1 -2 -2z" /><path d="M14 14m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0" /><path d="M17 9v-2a2 2 0 0 0 -2 -2h-10a2 2 0 0 0 -2 2v6a2 2 0 0 0 2 2h2" /></svg>&nbsp;&nbsp;{__("From")} <strong class="bold">{print_money($post['offer']['price'])}</strong>
								</div>
							{/if}
						{/if}
					</div>
				</div>
			{/foreach}
		</div>

		{$pager}
	{else}
		{include file='_no_data.tpl'}
	{/if}
</div>
<!-- page content -->

{include file='_footer.tpl'}