{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Jobs")}</h2>
				<p class="text-xlg">{__($system['system_description_jobs'])}</p>
				{if $system['jobs_enabled']}
					<button type="button" class="btn btn-mat" data-toggle="modal" data-url="posts/job.php?do=create">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"></path></svg> {__("Create Job")}
					</button>
				{/if}
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.091 6.97953C20.241 6.03953 18.821 5.56953 16.761 5.56953H16.521V5.52953C16.521 3.84953 16.521 1.76953 12.761 1.76953H11.241C7.48101 1.76953 7.48101 3.85953 7.48101 5.52953V5.57953H7.24101C5.17101 5.57953 3.76101 6.04953 2.91101 6.98953C1.92101 8.08953 1.95101 9.56953 2.05101 10.5795L2.06101 10.6495L2.16101 11.6995C2.17101 11.7095 2.19101 11.7295 2.21101 11.7395C2.54101 11.9595 2.88101 12.1795 3.24101 12.3795C3.38101 12.4695 3.53101 12.5495 3.68101 12.6295C5.39101 13.5695 7.27101 14.1995 9.18101 14.5095C9.27101 15.4495 9.68101 16.5495 11.871 16.5495C14.061 16.5495 14.491 15.4595 14.561 14.4895C16.601 14.1595 18.571 13.4495 20.351 12.4095C20.411 12.3795 20.451 12.3495 20.501 12.3195C20.961 12.0595 21.391 11.7795 21.811 11.4695C21.831 11.4595 21.851 11.4395 21.861 11.4195L21.901 11.0595L21.951 10.5895C21.961 10.5295 21.961 10.4795 21.971 10.4095C22.051 9.39953 22.031 8.01953 21.091 6.97953ZM13.091 13.8295C13.091 14.8895 13.091 15.0495 11.861 15.0495C10.631 15.0495 10.631 14.8595 10.631 13.8395V12.5795H13.091V13.8295ZM8.91101 5.56953V5.52953C8.91101 3.82953 8.91101 3.19953 11.241 3.19953H12.761C15.091 3.19953 15.091 3.83953 15.091 5.52953V5.57953H8.91101V5.56953Z" fill="currentColor"></path><path opacity="0.4" d="M20.5002 12.2984C20.4502 12.3284 20.4002 12.3584 20.3502 12.3884C18.5702 13.4284 16.6002 14.1284 14.5602 14.4684C14.4802 15.4284 14.0602 16.5284 11.8702 16.5284C9.68016 16.5284 9.26016 15.4384 9.18016 14.4884C7.27016 14.1884 5.39016 13.5584 3.68016 12.6084C3.53016 12.5284 3.38016 12.4484 3.24016 12.3584C2.88016 12.1584 2.54016 11.9384 2.21016 11.7184C2.19016 11.7084 2.17016 11.6884 2.16016 11.6784L2.77016 18.1884C2.98016 20.1784 3.80016 22.2284 8.20016 22.2284H15.8202C20.2202 22.2284 21.0402 20.1784 21.2502 18.1784L21.8802 11.3984C21.8702 11.4184 21.8502 11.4384 21.8302 11.4484C21.4002 11.7584 20.9602 12.0484 20.5002 12.2984Z" fill="currentColor"></path></svg>
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
						{elseif $sort == "salary-high"}
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6009 4.10156V6.30156C20.6009 7.10156 20.1009 8.10156 19.6009 8.60156L15.3009 12.4016C14.7009 12.9016 14.3009 13.9016 14.3009 14.7016V19.0016C14.3009 19.6016 13.9009 20.4016 13.4009 20.7016L12.0009 21.6016C10.7009 22.4016 8.90086 21.5016 8.90086 19.9016V14.6016C8.90086 13.9016 8.50086 13.0016 8.10086 12.5016L7.63086 12.0116C7.32086 11.6816 7.26086 11.1816 7.51086 10.7916L12.6309 2.57156C12.8109 2.28156 13.1309 2.10156 13.4809 2.10156H18.6009C19.7009 2.10156 20.6009 3.00156 20.6009 4.10156Z" fill="currentColor"/><path d="M10.3504 3.63156L6.80039 9.32156C6.46039 9.87156 5.68039 9.95156 5.23039 9.48156L4.30039 8.50156C3.80039 8.00156 3.40039 7.10156 3.40039 6.50156V4.20156C3.40039 3.00156 4.30039 2.10156 5.40039 2.10156H9.50039C10.2804 2.10156 10.7604 2.96156 10.3504 3.63156Z" fill="currentColor"/></svg> {__("Salary High")}
						{elseif $sort == "salary-low"}
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6009 4.10156V6.30156C20.6009 7.10156 20.1009 8.10156 19.6009 8.60156L15.3009 12.4016C14.7009 12.9016 14.3009 13.9016 14.3009 14.7016V19.0016C14.3009 19.6016 13.9009 20.4016 13.4009 20.7016L12.0009 21.6016C10.7009 22.4016 8.90086 21.5016 8.90086 19.9016V14.6016C8.90086 13.9016 8.50086 13.0016 8.10086 12.5016L7.63086 12.0116C7.32086 11.6816 7.26086 11.1816 7.51086 10.7916L12.6309 2.57156C12.8109 2.28156 13.1309 2.10156 13.4809 2.10156H18.6009C19.7009 2.10156 20.6009 3.00156 20.6009 4.10156Z" fill="currentColor"/><path d="M10.3504 3.63156L6.80039 9.32156C6.46039 9.87156 5.68039 9.95156 5.23039 9.48156L4.30039 8.50156C3.80039 8.00156 3.40039 7.10156 3.40039 6.50156V4.20156C3.40039 3.00156 4.30039 2.10156 5.40039 2.10156H9.50039C10.2804 2.10156 10.7604 2.96156 10.3504 3.63156Z" fill="currentColor"/></svg> {__("Salary Low")}
						{/if}
					</button>
					<div class="dropdown-menu ele_create_menu">
						<a href="?{if $selected_country}country={$selected_country['country_name']}&{/if}{if $distance}distance={$distance}&{/if}sort=latest" class="dropdown-item">{__("Latest")}</a>
						<a href="?{if $selected_country}country={$selected_country['country_name']}&{/if}{if $distance}distance={$distance}&{/if}sort=salary-high" class="dropdown-item">{__("Salary High")}</a>
						<a href="?{if $selected_country}country={$selected_country['country_name']}&{/if}{if $distance}distance={$distance}&{/if}sort=salary-low" class="dropdown-item">{__("Salary Low")}</a>
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
								<a class="dropdown-item" href="?country={$country['country_name_native']}{if $distance}&distance={$distance}{/if}{if $sort}&sort={$sort}{/if}">
									{$country['country_name']}
								</a>
							{/foreach}
						</div>
					</div>
				</div>
			{/if}
			<!-- location filter -->
			
			<button type="button" class="btn btn-mat" onclick="$('.ele_jobs_nav').slideToggle();">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.6695 2H16.7695C14.5895 2 13.4395 3.15 13.4395 5.33V7.23C13.4395 9.41 14.5895 10.56 16.7695 10.56H18.6695C20.8495 10.56 21.9995 9.41 21.9995 7.23V5.33C21.9995 3.15 20.8495 2 18.6695 2Z" fill="currentColor"/><path d="M7.24 13.4297H5.34C3.15 13.4297 2 14.5797 2 16.7597V18.6597C2 20.8497 3.15 21.9997 5.33 21.9997H7.23C9.41 21.9997 10.56 20.8497 10.56 18.6697V16.7697C10.57 14.5797 9.42 13.4297 7.24 13.4297Z" fill="currentColor"/><path d="M6.29 10.58C8.6593 10.58 10.58 8.6593 10.58 6.29C10.58 3.9207 8.6593 2 6.29 2C3.9207 2 2 3.9207 2 6.29C2 8.6593 3.9207 10.58 6.29 10.58Z" fill="currentColor"/><path d="M17.7099 22.0019C20.0792 22.0019 21.9999 20.0812 21.9999 17.7119C21.9999 15.3426 20.0792 13.4219 17.7099 13.4219C15.3406 13.4219 13.4199 15.3426 13.4199 17.7119C13.4199 20.0812 15.3406 22.0019 17.7099 22.0019Z" fill="currentColor"/></svg> {__("Categories")}&nbsp;&nbsp;&nbsp;&nbsp;<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top"><path d="M6 12H18" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 18V6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
			</button>
			<form class="js_search-form w-100" data-handle="jobs">
				<div class="valign ele_jobs_search">
					<input type="text" class="w-100" name="query" placeholder='{__("Search for jobs")}'>
					<button type="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Search")}</button>
				</div>
			</form>
		</div>
		
		<!-- categories -->
			<ul class="side-nav text-center ele_jobs_nav x-hidden">
				<div class="pt-5 w-100"></div>
				{if $view != "category"}
					<li class="d-inline-block active">
						<a href="{$system['system_url']}/jobs">
							{__("All")}
						</a>
					</li>
				{else}
					<li class="d-inline-block">
						{if $current_category['parent']}
							<a href="{$system['system_url']}/jobs/category/{$current_category['parent']['category_id']}/{$current_category['parent']['category_url']}">
								<i class="fas fa-arrow-alt-circle-left mr5"></i>{__($current_category['parent']['category_name'])}
							</a>
						{else}
							<a href="{$system['system_url']}/jobs">
								{if $current_category['sub_categories']}<i class="fas fa-arrow-alt-circle-left mr5"></i>{/if}{__("All")}
							</a>
						{/if}
					</li>
				{/if}
				{foreach $categories as $category}
					<li class="d-inline-block{if $view == 'category' && $current_category['category_id'] == $category['category_id']} active{/if}">
						<a href="{$system['system_url']}/jobs/category/{$category['category_id']}/{$category['category_url']}">
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

	{if $view == "" && $promoted_jobs}
		<div class="valign ele_page_hdng border-0 pt5 pb0 mb10">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" class="bg-warning text-dark"><path fill="currentColor" d="M12,8H4A2,2 0 0,0 2,10V14A2,2 0 0,0 4,16H5V20A1,1 0 0,0 6,21H8A1,1 0 0,0 9,20V16H12L17,20V4L12,8M21.5,12C21.5,13.71 20.54,15.26 19,16V8C20.53,8.75 21.5,10.3 21.5,12Z"></path></svg> {__("Promoted Jobs")}
		</div>

		<div class="row">
			{foreach $promoted_jobs as $post}
				{include file='__feeds_job.tpl' _boosted=true}
			{/foreach}
		</div>
		<hr class="mt5 mb25">
	{/if}
			
	{if $rows}
		<div class="row">
			{foreach $rows as $post}
				{include file='__feeds_job.tpl'}
			{/foreach}
		</div>
		{$pager}
	{else}
		{include file='_no_data.tpl'}
	{/if}
</div>
<!-- page content -->

{include file='_footer.tpl'}