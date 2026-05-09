{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Watch")}</h2>
				<p class="text-xlg">{__($system['system_description_watch'])}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.4" d="M21.3709 11.3894V17.3794C21.3709 20.1394 19.1309 22.3794 16.3709 22.3794H7.63086C4.87086 22.3794 2.63086 20.1394 2.63086 17.3794V11.4594C3.39086 12.2794 4.47086 12.7494 5.64086 12.7494C6.90086 12.7494 8.11086 12.1194 8.87086 11.1094C9.55086 12.1194 10.7109 12.7494 12.0009 12.7494C13.2809 12.7494 14.4209 12.1494 15.1109 11.1494C15.8809 12.1394 17.0709 12.7494 18.3109 12.7494C19.5209 12.7494 20.6209 12.2594 21.3709 11.3894Z" fill="currentColor"></path> <path d="M14.9894 1.25H8.98936L8.24936 8.61C8.18936 9.29 8.28936 9.93 8.53936 10.51C9.11936 11.87 10.4794 12.75 11.9994 12.75C13.5394 12.75 14.8694 11.89 15.4694 10.52C15.6494 10.09 15.7594 9.59 15.7694 9.08V8.89L14.9894 1.25Z" fill="currentColor"></path> <path opacity="0.6" d="M22.3598 8.27L22.0698 5.5C21.6498 2.48 20.2798 1.25 17.3498 1.25H13.5098L14.2498 8.75C14.2598 8.85 14.2698 8.96 14.2698 9.15C14.3298 9.67 14.4898 10.15 14.7298 10.58C15.4498 11.9 16.8498 12.75 18.3098 12.75C19.6398 12.75 20.8398 12.16 21.5898 11.12C22.1898 10.32 22.4598 9.31 22.3598 8.27Z" fill="currentColor"></path> <path opacity="0.6" d="M6.58965 1.25C3.64965 1.25 2.28965 2.48 1.85965 5.53L1.58965 8.28C1.48965 9.35 1.77965 10.39 2.40965 11.2C3.16965 12.19 4.33965 12.75 5.63965 12.75C7.09965 12.75 8.49965 11.9 9.20965 10.6C9.46965 10.15 9.63965 9.63 9.68965 9.09L10.4697 1.26H6.58965V1.25Z" fill="currentColor"></path> <path d="M11.3491 16.6602C10.0791 16.7902 9.11914 17.8702 9.11914 19.1502V22.3802H14.8691V19.5002C14.8791 17.4102 13.6491 16.4202 11.3491 16.6602Z" fill="currentColor"></path> </svg>
		</div>
    </div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative">
	<div class="ele_content p-5 mb30">
		<div class="valign flex-wrap flex-md-nowrap ele_jobs_header">
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
							<a class="dropdown-item" href="?country=all">{__("All Countries")}</a>
							{foreach $countries as $country}
								<a class="dropdown-item" href="?country={$country['country_name_native']}">
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
			
			<form class="js_search-form w-100" data-filter="posts" data-type="video">
				<div class="valign ele_jobs_search">
					<input type="text" class="w-100" name="query" placeholder='{__("Search for videos")}'>
					<button type="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Search")}</button>
				</div>
			</form>
		</div>
		
		<!-- categories -->
			<ul class="side-nav text-center ele_jobs_nav x-hidden">
				<div class="pt-5 w-100"></div>
				{if $view != "category"}
					<li class="d-inline-block active">
						<a href="{$system['system_url']}/watch">
							{__("All")}
						</a>
					</li>
				{else}
					<li class="d-inline-block">
						{if $current_category['parent']}
							<a href="{$system['system_url']}/watch/category/{$current_category['parent']['category_id']}/{$current_category['parent']['category_url']}">
								<i class="fas fa-arrow-alt-circle-left mr5"></i>{__($current_category['parent']['category_name'])}
							</a>
						{else}
							<a href="{$system['system_url']}/watch">
								{if $current_category['sub_categories']}<i class="fas fa-arrow-alt-circle-left mr5"></i>{/if}{__("All")}
							</a>
						{/if}
					</li>
				{/if}
				{foreach $categories as $category}
					<li class="d-inline-block{if $view == 'category' && $current_category['category_id'] == $category['category_id']} active{/if}">
						<a href="{$system['system_url']}/watch/category/{$category['category_id']}/{$category['category_url']}">
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

    <!-- content panel -->
    <div>
        <!-- videos posts -->
        {include file='_posts.tpl' _get="discover" _filter="video" _category=$current_category['category_id'] _load_more="watch" _title=__("Watch") _no_filter=true}
        <!-- videos posts -->
    </div>
    <!-- content panel -->
</div>
<!-- page content -->

{include file='_footer.tpl'}