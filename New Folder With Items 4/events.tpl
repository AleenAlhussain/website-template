{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Events")}</h2>
				<p class="text-xlg">{__($system['system_description_events'])}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M16.7502 3.56V2C16.7502 1.59 16.4102 1.25 16.0002 1.25C15.5902 1.25 15.2502 1.59 15.2502 2V3.5H8.75022V2C8.75022 1.59 8.41022 1.25 8.00022 1.25C7.59022 1.25 7.25022 1.59 7.25022 2V3.56C4.55022 3.81 3.24023 5.42 3.04023 7.81C3.02023 8.1 3.26023 8.34 3.54023 8.34H20.4602C20.7502 8.34 20.9902 8.09 20.9602 7.81C20.7602 5.42 19.4502 3.81 16.7502 3.56Z" fill="currentColor"></path> <path opacity="0.4" d="M20 9.83984C20.55 9.83984 21 10.2898 21 10.8398V16.9998C21 19.9998 19.5 21.9998 16 21.9998H8C4.5 21.9998 3 19.9998 3 16.9998V10.8398C3 10.2898 3.45 9.83984 4 9.83984H20Z" fill="currentColor"></path> <path d="M8.5 14.9989C8.37 14.9989 8.24 14.9689 8.12 14.9189C8 14.8689 7.89001 14.7989 7.79001 14.7089C7.70001 14.6089 7.62999 14.4989 7.57999 14.3789C7.52999 14.2589 7.5 14.1289 7.5 13.9989C7.5 13.8689 7.52999 13.7389 7.57999 13.6189C7.62999 13.4989 7.70001 13.3889 7.79001 13.2889C7.89001 13.1989 8 13.1289 8.12 13.0789C8.36 12.9789 8.64 12.9789 8.88 13.0789C9 13.1289 9.10999 13.1989 9.20999 13.2889C9.29999 13.3889 9.37001 13.4989 9.42001 13.6189C9.47001 13.7389 9.5 13.8689 9.5 13.9989C9.5 14.1289 9.47001 14.2589 9.42001 14.3789C9.37001 14.4989 9.29999 14.6089 9.20999 14.7089C9.10999 14.7989 9 14.8689 8.88 14.9189C8.76 14.9689 8.63 14.9989 8.5 14.9989Z" fill="currentColor"></path> <path d="M12 14.9986C11.87 14.9986 11.74 14.9686 11.62 14.9186C11.5 14.8686 11.39 14.7986 11.29 14.7086C11.11 14.5186 11 14.2586 11 13.9986C11 13.7386 11.11 13.4786 11.29 13.2886C11.39 13.1986 11.5 13.1286 11.62 13.0786C11.86 12.9686 12.14 12.9686 12.38 13.0786C12.5 13.1286 12.61 13.1986 12.71 13.2886C12.89 13.4786 13 13.7386 13 13.9986C13 14.2586 12.89 14.5186 12.71 14.7086C12.61 14.7986 12.5 14.8686 12.38 14.9186C12.26 14.9686 12.13 14.9986 12 14.9986Z" fill="currentColor"></path> <path d="M8.5 18.4989C8.37 18.4989 8.24 18.4689 8.12 18.4189C8 18.3689 7.89001 18.2989 7.79001 18.2089C7.61001 18.0189 7.5 17.7589 7.5 17.4989C7.5 17.2389 7.61001 16.9789 7.79001 16.7889C7.89001 16.6989 8 16.6289 8.12 16.5789C8.36 16.4789 8.64 16.4789 8.88 16.5789C9 16.6289 9.10999 16.6989 9.20999 16.7889C9.38999 16.9789 9.5 17.2389 9.5 17.4989C9.5 17.7589 9.38999 18.0189 9.20999 18.2089C9.10999 18.2989 9 18.3689 8.88 18.4189C8.76 18.4689 8.63 18.4989 8.5 18.4989Z" fill="currentColor"></path> </svg>
		</div>
    </div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative mb20">
	<div class="ele_content p-5 mb30">
		<div class="valign flex-wrap flex-3-wide ele_jobs_header">
			<!-- type filter (in person or online) -->
			<div class="dropdown">
				<button type="button" class="btn btn-mat countries-filter" data-toggle="dropdown" data-display="static" aria-expanded="false">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6009 4.10156V6.30156C20.6009 7.10156 20.1009 8.10156 19.6009 8.60156L15.3009 12.4016C14.7009 12.9016 14.3009 13.9016 14.3009 14.7016V19.0016C14.3009 19.6016 13.9009 20.4016 13.4009 20.7016L12.0009 21.6016C10.7009 22.4016 8.90086 21.5016 8.90086 19.9016V14.6016C8.90086 13.9016 8.50086 13.0016 8.10086 12.5016L7.63086 12.0116C7.32086 11.6816 7.26086 11.1816 7.51086 10.7916L12.6309 2.57156C12.8109 2.28156 13.1309 2.10156 13.4809 2.10156H18.6009C19.7009 2.10156 20.6009 3.00156 20.6009 4.10156Z" fill="currentColor"></path><path d="M10.3504 3.63156L6.80039 9.32156C6.46039 9.87156 5.68039 9.95156 5.23039 9.48156L4.30039 8.50156C3.80039 8.00156 3.40039 7.10156 3.40039 6.50156V4.20156C3.40039 3.00156 4.30039 2.10156 5.40039 2.10156H9.50039C10.2804 2.10156 10.7604 2.96156 10.3504 3.63156Z" fill="currentColor"></path></svg>
					{if $selected_type}
						{if $selected_type == "all"}
							{__("All Types")}
						{/if}
						{if $selected_type == "in_person"}
							{__("In Person")}
						{/if}
						{if $selected_type == "online"}
							{__("Online")}
						{/if}
					{else}
						{__("All Types")}
					{/if}
				</button>
				<div class="dropdown-menu ele_create_menu countries-dropdown">
					<a class="dropdown-item" href="?type=all{if $selected_country}&country={$selected_country['country_name']}{/if}{if $selected_language}&language={$selected_language['code']}{/if}">
						{__("All")}
					</a>
					<a class="dropdown-item" href="?type=in_person{if $selected_country}&country={$selected_country['country_name']}{/if}{if $selected_language}&language={$selected_language['code']}{/if}">
						{__("In Person")}
					</a>
					<a class="dropdown-item" href="?type=online{if $selected_country}&country={$selected_country['country_name']}{/if}{if $selected_language}&language={$selected_language['code']}{/if}">
						{__("Online")}
					</a>
				</div>
			</div>
			<!-- type filter (in person or online) -->
			
			<!-- location filter -->
			{if $system['events_location_filter_enabled']}
				<div class="dropdown">
					<button type="button" class="btn btn-mat countries-filter" data-toggle="dropdown" data-display="static" aria-expanded="false">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6211 8.45C19.5711 3.83 15.5411 1.75 12.0011 1.75C12.0011 1.75 12.0011 1.75 11.9911 1.75C8.46107 1.75 4.42107 3.82 3.37107 8.44C2.20107 13.6 5.36107 17.97 8.22107 20.72C9.28107 21.74 10.6411 22.25 12.0011 22.25C13.3611 22.25 14.7211 21.74 15.7711 20.72C18.6311 17.97 21.7911 13.61 20.6211 8.45ZM12.0011 13.46C10.2611 13.46 8.85107 12.05 8.85107 10.31C8.85107 8.57 10.2611 7.16 12.0011 7.16C13.7411 7.16 15.1511 8.57 15.1511 10.31C15.1511 12.05 13.7411 13.46 12.0011 13.46Z" fill="currentColor"></path></svg>
						{if $selected_country}
							{$selected_country['country_name']}
						{else}
							{__("All Countries")}
						{/if}
					</button>
					<div class="dropdown-menu ele_create_menu countries-dropdown">
						<div class="js_scroller">
							<a class="dropdown-item" href="?country=all{if $selected_type}&type={$selected_type}{/if}{if $selected_language}&language={$selected_language['code']}{/if}">
								{__("All Countries")}
							</a>
							{foreach $countries as $country}
								<a class="dropdown-item" href="?country={$country['country_name_native']}{if $selected_type}&type={$selected_type}{/if}{if $selected_language}&language={$selected_language['code']}{/if}">
									{$country['country_name']}
								</a>
							{/foreach}
						</div>
					</div>
				</div>
			{/if}
			<!-- location filter -->
			
			<!-- language filter -->
			<div class="dropdown">
				<button type="button" class="btn btn-mat countries-filter" data-toggle="dropdown" data-display="static" aria-expanded="false">
					<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor"><path d="m467.15-71.87 182.48-491h100.5l182.48 491h-96.2l-39.17-111.96h-195.2L562.87-71.87h-95.72ZM156.17-189.72l-63.89-63.89 200.57-200.56q-37.39-37.87-66.49-82.99-29.1-45.12-52.14-99.97h97.87q18.08 35.17 37.84 62.98 19.77 27.8 46.81 56.08 32.52-33.47 66.94-90.94 34.43-57.47 51.71-108.12H30.43v-91h280v-80h91v80h280v91H568.78q-21.48 70.8-63.83 146.56-42.36 75.77-84.8 118.16l84.52 86.28-34.06 94.2-114.35-117.11-200.09 199.32Zm474.22-75.11h138.26l-69.13-197.78-69.13 197.78Z"/></svg>
					{if $selected_language}
						<span>{$selected_language['title']}</span>
					{else}
						<span>{__("All Languages")}</span>
					{/if}
				</button>
				<div class="dropdown-menu ele_create_menu countries-dropdown">
					<div class="js_scroller">
						<a class="dropdown-item" href="?language=all{if $selected_type}&type={$selected_type}{/if}{if $selected_country}&country={$selected_country['country_name']}{/if}">
							{__("All Languages")}
						</a>
						{foreach $languages as $language}
							<a class="dropdown-item" href="?language={$language['code']}{if $selected_type}&type={$selected_type}{/if}{if $selected_country}&country={$selected_country['country_name']}{/if}">
								{$language['title']}
							</a>
						{/foreach}
					</div>
				</div>
			</div>
			<!-- language filter -->
			
			{if $view == "" || $view == "category"}
				<button type="button" class="btn btn-mat" onclick="$('.ele_jobs_nav').slideToggle();">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.6695 2H16.7695C14.5895 2 13.4395 3.15 13.4395 5.33V7.23C13.4395 9.41 14.5895 10.56 16.7695 10.56H18.6695C20.8495 10.56 21.9995 9.41 21.9995 7.23V5.33C21.9995 3.15 20.8495 2 18.6695 2Z" fill="currentColor"/><path d="M7.24 13.4297H5.34C3.15 13.4297 2 14.5797 2 16.7597V18.6597C2 20.8497 3.15 21.9997 5.33 21.9997H7.23C9.41 21.9997 10.56 20.8497 10.56 18.6697V16.7697C10.57 14.5797 9.42 13.4297 7.24 13.4297Z" fill="currentColor"/><path d="M6.29 10.58C8.6593 10.58 10.58 8.6593 10.58 6.29C10.58 3.9207 8.6593 2 6.29 2C3.9207 2 2 3.9207 2 6.29C2 8.6593 3.9207 10.58 6.29 10.58Z" fill="currentColor"/><path d="M17.7099 22.0019C20.0792 22.0019 21.9999 20.0812 21.9999 17.7119C21.9999 15.3426 20.0792 13.4219 17.7099 13.4219C15.3406 13.4219 13.4199 15.3426 13.4199 17.7119C13.4199 20.0812 15.3406 22.0019 17.7099 22.0019Z" fill="currentColor"/></svg> {__("Categories")}&nbsp;&nbsp;&nbsp;&nbsp;<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top"><path d="M6 12H18" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 18V6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
				</button>
			{/if}
			
			<form class="js_search-form w-100" data-filter="events">
				<div class="valign ele_jobs_search">
					<input type="text" class="w-100" name="query" placeholder='{__("Search for events")}'>
					<button type="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Search")}</button>
				</div>
			</form>
		</div>
		
		{if $view == "" || $view == "category"}
		<!-- categories -->
			<ul class="side-nav text-center ele_jobs_nav x-hidden">
				<div class="pt-5 w-100"></div>
				{if $view != "category"}
					<li class="d-inline-block active">
						<a href="{$system['system_url']}/events">
							{__("All")}
						</a>
					</li>
                {else}
					<li class="d-inline-block">
						{if $current_category['parent']}
							<a href="{$system['system_url']}/events/category/{$current_category['parent']['category_id']}/{$current_category['parent']['category_url']}">
								<i class="fas fa-arrow-alt-circle-left mr5"></i>{__($current_category['parent']['category_name'])}
							</a>
						{else}
							<a href="{$system['system_url']}/events">
								{if $current_category['sub_categories']}<i class="fas fa-arrow-alt-circle-left mr5"></i>{/if}{__("All")}
							</a>
						{/if}
					</li>
				{/if}
                {foreach $categories as $category}
					<li class="d-inline-block {if $view == "category" && $current_category['category_id'] == $category['category_id']} active{/if}">
						<a href="{$system['system_url']}/events/category/{$category['category_id']}/{$category['category_url']}">
							{__($category['category_name'])}
							{if $category['sub_categories']}
								&nbsp;<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM14.79 12.53L11.26 16.06C11.11 16.21 10.92 16.28 10.73 16.28C10.54 16.28 10.35 16.21 10.2 16.06C9.91 15.77 9.91 15.29 10.2 15L13.2 12L10.2 9C9.91 8.71 9.91 8.23 10.2 7.94C10.49 7.65 10.97 7.65 11.26 7.94L14.79 11.47C15.09 11.76 15.09 12.24 14.79 12.53Z" fill="currentColor"/></svg>
							{/if}
						</a>
					</li>
                {/foreach}
			</ul>
		<!-- categories -->
		{/if}
	</div>
	
	<!-- content panel -->
	{if $view == "" && $promoted_events}
        <div class="posts-filter">
			<span>{__("Promoted Events")}</span>
        </div>
        <ul class="row mb20">
			{foreach $promoted_events as $_event}
				{include file='__feeds_event.tpl' _tpl='mainevent'}
			{/foreach}
        </ul>
	{/if}
	  
	<!-- tabs -->
	<div class="valign ele_post_filters">
		<div class="ele_post_filters_nav not_filter valign ele_scroll">
			<a href="{$system['system_url']}/events" class='btn-mat filterby pointer {if $view == "" || $view == "category"}active{/if}'>
				<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M16 13h-3c-.55 0-1 .45-1 1v3c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-3c0-.55-.45-1-1-1zm0-10v1H8V3c0-.55-.45-1-1-1s-1 .45-1 1v1H5c-1.11 0-1.99.9-1.99 2L3 20c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2h-1V3c0-.55-.45-1-1-1s-1 .45-1 1zm2 17H6c-.55 0-1-.45-1-1V9h14v10c0 .55-.45 1-1 1z"/></svg>{__("Discover")}
			</a>
			{if $user->_logged_in}
				<a href="{$system['system_url']}/events/going" class='btn-mat filterby pointer {if $view == "going"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M16 10.53c-.29-.29-.77-.29-1.06 0l-4.35 4.35L9 13.29c-.29-.29-.77-.29-1.06 0-.29.29-.29.77 0 1.06l1.94 1.94c.39.39 1.02.39 1.41 0l4.7-4.7c.3-.29.3-.77.01-1.06zM19 3h-1V2c0-.55-.45-1-1-1s-1 .45-1 1v1H8V2c0-.55-.45-1-1-1s-1 .45-1 1v1H5c-1.11 0-1.99.9-1.99 2L3 19c0 1.1.89 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-1 16H6c-.55 0-1-.45-1-1V8h14v10c0 .55-.45 1-1 1z"/></svg>{__("Going")}
				</a>
				<a href="{$system['system_url']}/events/interested" class='btn-mat filterby pointer {if $view == "interested"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><g><path d="M0,0h24v24H0V0z" fill="none"/><path d="M0,0h24v24H0V0z" fill="none"/></g><path d="M12,17.27l4.15,2.51c0.76,0.46,1.69-0.22,1.49-1.08l-1.1-4.72l3.67-3.18c0.67-0.58,0.31-1.68-0.57-1.75l-4.83-0.41 l-1.89-4.46c-0.34-0.81-1.5-0.81-1.84,0L9.19,8.63L4.36,9.04c-0.88,0.07-1.24,1.17-0.57,1.75l3.67,3.18l-1.1,4.72 c-0.2,0.86,0.73,1.54,1.49,1.08L12,17.27z"/></svg>{__("Interested")}
				</a>
				<a href="{$system['system_url']}/events/invited" class='btn-mat filterby pointer {if $view == "invited"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm-.4 4.25l-7.07 4.42c-.32.2-.74.2-1.06 0L4.4 8.25c-.25-.16-.4-.43-.4-.72 0-.67.73-1.07 1.3-.72L12 11l6.7-4.19c.57-.35 1.3.05 1.3.72 0 .29-.15.56-.4.72z"/></svg>{__("Invited")}
				</a>
				<a href="{$system['system_url']}/events/manage" class='btn-mat filterby pointer {if $view == "manage"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M19 3h-1V2c0-.55-.45-1-1-1s-1 .45-1 1v1H8V2c0-.55-.45-1-1-1s-1 .45-1 1v1H5c-1.11 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2V5c0-1.1-.9-2-2-2zm-7 3c1.66 0 3 1.34 3 3s-1.34 3-3 3-3-1.34-3-3 1.34-3 3-3zm6 12H6v-1c0-2 4-3.1 6-3.1s6 1.1 6 3.1v1z"/></svg>{__("My Events")}
				</a>
			{/if}
		</div>
	</div>
	<!-- tabs -->

	<!-- content -->
	<div>
		{if $events}
			<ul class="row">
				{if $view == "manage"}
					{if $system['events_enabled']}
						<div class="col-md-6 col-lg-6 mb20">
							<a class="h-100 w-100 d-flex align-items-center justify-content-center flex-column pointer ele_create_state" data-toggle="modal" data-url="modules/add.php?type=event">
								<svg width="60" height="60" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="d-block mb15" opacity="0.8"><path d="M16.7502 3.56V2C16.7502 1.59 16.4102 1.25 16.0002 1.25C15.5902 1.25 15.2502 1.59 15.2502 2V3.5H8.75024V2C8.75024 1.59 8.41024 1.25 8.00024 1.25C7.59024 1.25 7.25024 1.59 7.25024 2V3.56C4.55024 3.81 3.24023 5.42 3.04023 7.81C3.02023 8.1 3.26023 8.34 3.54023 8.34H20.4602C20.7502 8.34 20.9902 8.09 20.9602 7.81C20.7602 5.42 19.4502 3.81 16.7502 3.56Z" fill="currentColor"/><path opacity="0.4" d="M21 10.8381V12.5781C21 13.1881 20.46 13.6581 19.86 13.5581C19.58 13.5181 19.29 13.4881 19 13.4881C15.97 13.4881 13.5 15.9581 13.5 18.9881C13.5 19.4481 13.68 20.0882 13.87 20.6682C14.09 21.3182 13.61 21.9881 12.92 21.9881H8C4.5 21.9881 3 19.9881 3 16.9881V10.8281C3 10.2781 3.45 9.82812 4 9.82812H20C20.55 9.83812 21 10.2881 21 10.8381Z" fill="currentColor"/><path d="M8.5 15.0009C8.24 15.0009 7.98 14.8909 7.79 14.7109C7.61 14.5209 7.5 14.2609 7.5 14.0009C7.5 13.7409 7.61 13.4809 7.79 13.2909C8.02 13.0609 8.37 12.9509 8.7 13.0209C8.76 13.0309 8.82 13.0509 8.88 13.0809C8.94 13.1009 9 13.1309 9.06 13.1709C9.11 13.2109 9.16 13.2509 9.21 13.2909C9.39 13.4809 9.5 13.7409 9.5 14.0009C9.5 14.2609 9.39 14.5209 9.21 14.7109C9.16 14.7509 9.11 14.7909 9.06 14.8309C9 14.8709 8.94 14.9009 8.88 14.9209C8.82 14.9509 8.76 14.9709 8.7 14.9809C8.63 14.9909 8.56 15.0009 8.5 15.0009Z" fill="currentColor"/><path d="M12 14.9992C11.74 14.9992 11.48 14.8892 11.29 14.7092C11.11 14.5192 11 14.2592 11 13.9992C11 13.7392 11.11 13.4792 11.29 13.2892C11.67 12.9192 12.34 12.9192 12.71 13.2892C12.89 13.4792 13 13.7392 13 13.9992C13 14.2592 12.89 14.5192 12.71 14.7092C12.52 14.8892 12.26 14.9992 12 14.9992Z" fill="currentColor"/><path d="M8.5 18.4989C8.24 18.4989 7.98 18.3889 7.79 18.2089C7.61 18.0189 7.5 17.7589 7.5 17.4989C7.5 17.2389 7.61 16.9789 7.79 16.7889C7.89 16.6989 7.99 16.6289 8.12 16.5789C8.49 16.4189 8.93 16.5089 9.21 16.7889C9.39 16.9789 9.5 17.2389 9.5 17.4989C9.5 17.7589 9.39 18.0189 9.21 18.2089C9.02 18.3889 8.76 18.4989 8.5 18.4989Z" fill="currentColor"/><path d="M21.83 16.17C20.27 14.61 17.73 14.61 16.17 16.17C14.61 17.73 14.61 20.27 16.17 21.83C17.73 23.39 20.27 23.39 21.83 21.83C23.39 20.27 23.39 17.73 21.83 16.17ZM21.07 19.56C20.94 19.7 20.75 19.78 20.54 19.78H19.8V20.56C19.8 20.77 19.72 20.95 19.58 21.09C19.44 21.23 19.26 21.31 19.05 21.31C18.64 21.31 18.3 20.97 18.3 20.56V19.78H17.55C17.14 19.78 16.8 19.45 16.8 19.03C16.8 18.62 17.14 18.28 17.55 18.28H18.3V17.57C18.3 17.16 18.63 16.82 19.05 16.82C19.46 16.82 19.8 17.16 19.8 17.57V18.28H20.54C20.96 18.28 21.29 18.62 21.29 19.03C21.29 19.24 21.21 19.43 21.07 19.56Z" fill="currentColor"/></svg>{__("Create Event")}
							</a>
						</div>
					{/if}
				{/if}
				
				{foreach $events as $_event}
					{include file='__feeds_event.tpl' _tpl='mainevent'}
				{/foreach}
			</ul>

			<!-- see-more -->
			{if count($events) >= $system['events_results']}
				<div class="alert alert-post see-more js_see-more" data-get="{$get}" {if $view == "category"}data-id="{$current_category['category_id']}" {/if} {if $view == "going" || $view == "interested" || $view == "invited" || $view == "manage"}data-uid="{$user->_data['user_id']}" {/if} data-country="{if $selected_country}{$selected_country['country_id']}{else}all{/if}">
					<span>{__("See More")}</span>
					<div class="loader loader_small x-hidden"></div>
				</div>
			{/if}
			<!-- see-more -->
		{else}
			{include file='_no_data.tpl'}
			{if $system['events_enabled']}
				<div class="text-center mb-5 mt-n5">
					<button data-toggle="modal" data-url="modules/add.php?type=event" class="btn btn-mat btn-sm btn-primary"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"></path></svg> {__("Create Event")}</button>
				</div>
			{/if}
		{/if}
	</div>
	<!-- content -->

	<!-- content panel -->
</div>
<!-- page content -->

{include file='_footer.tpl'}