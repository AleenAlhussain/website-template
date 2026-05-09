{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Pages")}</h2>
				<p class="text-xlg">{__($system['system_description_pages'])}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M5.15039 22C4.74039 22 4.40039 21.66 4.40039 21.25V2.75C4.40039 2.34 4.74039 2 5.15039 2C5.56039 2 5.90039 2.34 5.90039 2.75V21.25C5.90039 21.66 5.56039 22 5.15039 22Z" fill="currentColor"></path> <path opacity="0.4" d="M18.0195 12.3294L16.7995 11.1094C16.5095 10.8594 16.3395 10.4894 16.3295 10.0794C16.3095 9.62938 16.4895 9.17938 16.8195 8.84938L18.0195 7.64937C19.0595 6.60938 19.4495 5.60938 19.1195 4.81938C18.7995 4.03938 17.8095 3.60938 16.3495 3.60938H5.14953C4.93953 3.61937 4.76953 3.78938 4.76953 3.99938V15.9994C4.76953 16.2094 4.93953 16.3794 5.14953 16.3794H16.3495C17.7895 16.3794 18.7595 15.9394 19.0895 15.1494C19.4195 14.3494 19.0395 13.3594 18.0195 12.3294Z" fill="currentColor"></path> </svg>
		</div>
    </div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative mb20">
	<div class="ele_content p-5 mb30">
		<div class="valign flex-wrap {if $system['pages_location_filter_enabled']}flex-3-wide{else}flex-md-nowrap{/if} ele_jobs_header">
			<!-- location filter -->
			{if $system['pages_location_filter_enabled']}
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
							<a class="dropdown-item" href="?country=all{if $selected_language}&language={$selected_language['code']}{/if}">
								{__("All Countries")}
							</a>
							{foreach $countries as $country}
								<a class="dropdown-item" href="?country={$country['country_name_native']}{if $selected_language}&language={$selected_language['code']}{/if}">
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
						<a class="dropdown-item" href="?language=all{if $selected_country}&country={$selected_country['country_name']}{/if}">
							{__("All Languages")}
						</a>
						{foreach $languages as $language}
							<a class="dropdown-item" href="?language={$language['code']}{if $selected_country}&country={$selected_country['country_name']}{/if}">
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
			<form class="js_search-form w-100" data-filter="pages">
				<div class="valign ele_jobs_search">
					<input type="text" class="w-100" name="query" placeholder='{__("Search for pages")}'>
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
						<a href="{$system['system_url']}/pages">
							{__("All")}
						</a>
					</li>
                {else}
					<li class="d-inline-block">
						{if $current_category['parent']}
							<a href="{$system['system_url']}/pages/category/{$current_category['parent']['category_id']}/{$current_category['parent']['category_url']}">
								<i class="fas fa-arrow-alt-circle-left mr5"></i>{__($current_category['parent']['category_name'])}
							</a>
						{else}
							<a href="{$system['system_url']}/pages">
								{if $current_category['sub_categories']}<i class="fas fa-arrow-alt-circle-left mr5"></i>{/if}{__("All")}
							</a>
						{/if}
					</li>
                {/if}
                {foreach $categories as $category}
					<li class="d-inline-block{if $view == 'category' && $current_category['category_id'] == $category['category_id']} active{/if}">
						<a href="{$system['system_url']}/pages/category/{$category['category_id']}/{$category['category_url']}">
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
	{if $view == "" && $promoted_pages}
        <div class="posts-filter">
			<span>{__("Promoted Pages")}</span>
        </div>
		<div class="ele_content p-0 px-3 my-4">
			<ul class="row m-0 w-100 d-block">
				{foreach $promoted_pages as $_page}
					{include file='__feeds_page.tpl' _tpl='mainpage'}
				{/foreach}
			</ul>
		</div>
	{/if}
	  
	<!-- tabs -->
	<div class="valign ele_post_filters">
		<div class="ele_post_filters_nav not_filter valign ele_scroll">
			<a href="{$system['system_url']}/pages" class='btn-mat filterby pointer {if $view == "" || $view == "category"}active{/if}'>
				<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 10.9c-.61 0-1.1.49-1.1 1.1s.49 1.1 1.1 1.1c.61 0 1.1-.49 1.1-1.1s-.49-1.1-1.1-1.1zM12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm2.19 12.19L6 18l3.81-8.19L18 6l-3.81 8.19z"></path></svg>{__("Discover")}
			</a>
			{if $user->_logged_in}
				<a href="{$system['system_url']}/pages/liked" class='btn-mat filterby pointer {if $view == "liked"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0zm0 0h24v24H0V0z" fill="none"/><path d="M13.12 2.06L7.58 7.6c-.37.37-.58.88-.58 1.41V19c0 1.1.9 2 2 2h9c.8 0 1.52-.48 1.84-1.21l3.26-7.61C23.94 10.2 22.49 8 20.34 8h-5.65l.95-4.58c.1-.5-.05-1.01-.41-1.37-.59-.58-1.53-.58-2.11.01zM3 21c1.1 0 2-.9 2-2v-8c0-1.1-.9-2-2-2s-2 .9-2 2v8c0 1.1.9 2 2 2z"/></svg>{__("Liked Pages")}
				</a>
				<a href="{$system['system_url']}/pages/manage" class='btn-mat filterby pointer {if $view == "manage"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M14.4 6l-.24-1.2c-.09-.46-.5-.8-.98-.8H6c-.55 0-1 .45-1 1v15c0 .55.45 1 1 1s1-.45 1-1v-6h5.6l.24 1.2c.09.47.5.8.98.8H19c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1h-4.6z"/></svg>{__("My Pages")}
				</a>
			{/if}
		</div>
	</div>
	<!-- tabs -->

	<!-- content -->
	<div class="mb30">
		{if $pages}
			<div class="ele_content p-0 px-3 mt-4">
				{if $view == "manage"}
					{if $system['pages_enabled']}
						<div class="pt-3">
							<a class="h-100 w-100 d-flex align-items-center justify-content-center flex-column pointer ele_create_state py-3" data-toggle="modal" data-url="modules/add.php?type=page">
								<svg width="50" height="50" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="d-block mb15" opacity="0.8"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM16 12.75H12.75V16C12.75 16.41 12.41 16.75 12 16.75C11.59 16.75 11.25 16.41 11.25 16V12.75H8C7.59 12.75 7.25 12.41 7.25 12C7.25 11.59 7.59 11.25 8 11.25H11.25V8C11.25 7.59 11.59 7.25 12 7.25C12.41 7.25 12.75 7.59 12.75 8V11.25H16C16.41 11.25 16.75 11.59 16.75 12C16.75 12.41 16.41 12.75 16 12.75Z" fill="currentColor"/></svg>{__("Create Page")}
							</a>
						</div>
					{/if}
				{/if}
				
				<ul class="row m-0 w-100 d-block">
					{foreach $pages as $_page}
						{include file='__feeds_page.tpl' _tpl='mainpage'}
					{/foreach}
				</ul>
			</div>

			<!-- see-more -->
			{if count($pages) >= $system['pages_results']}
				<div class="alert alert-post see-more js_see-more" data-get="{$get}" {if $view == "category"}data-id="{$current_category['category_id']}" {/if} {if $view == "liked" || $view == "manage"}data-uid="{$user->_data['user_id']}" {/if} data-country="{if $selected_country}{$selected_country['country_id']}{else}all{/if}">
					<span>{__("See More")}</span>
					<div class="loader loader_small x-hidden"></div>
				</div>
			{/if}
			<!-- see-more -->
		{else}
			{include file='_no_data.tpl'}
			{if $system['pages_enabled']}
				<div class="text-center mb-5 mt-n5">
					<button data-toggle="modal" data-url="modules/add.php?type=page" class="btn btn-mat btn-sm btn-primary"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"></path></svg> {__("Create Page")}</button>
				</div>
			{/if}
		{/if}
	</div>
	<!-- content -->

	<!-- content panel -->
</div>
<!-- page content -->

{include file='_footer.tpl'}