{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Marketplace")}</h2>
				<p class="text-xlg">{__($system['system_description_marketplace'])}</p>
				{if in_array($view, ['', 'search', 'category'])}
					<!-- add new product -->
					{if $system['market_enabled']}
						<button type="button" class="btn btn-mat" data-toggle="modal" data-url="posts/product.php?do=create">
							<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"></path></svg> {__("Create Product")}
						</button>
					{/if}
					<!-- add new product -->
				{/if}
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.4" d="M21.3709 11.3894V17.3794C21.3709 20.1394 19.1309 22.3794 16.3709 22.3794H7.63086C4.87086 22.3794 2.63086 20.1394 2.63086 17.3794V11.4594C3.39086 12.2794 4.47086 12.7494 5.64086 12.7494C6.90086 12.7494 8.11086 12.1194 8.87086 11.1094C9.55086 12.1194 10.7109 12.7494 12.0009 12.7494C13.2809 12.7494 14.4209 12.1494 15.1109 11.1494C15.8809 12.1394 17.0709 12.7494 18.3109 12.7494C19.5209 12.7494 20.6209 12.2594 21.3709 11.3894Z" fill="currentColor"></path> <path d="M14.9894 1.25H8.98936L8.24936 8.61C8.18936 9.29 8.28936 9.93 8.53936 10.51C9.11936 11.87 10.4794 12.75 11.9994 12.75C13.5394 12.75 14.8694 11.89 15.4694 10.52C15.6494 10.09 15.7594 9.59 15.7694 9.08V8.89L14.9894 1.25Z" fill="currentColor"></path> <path opacity="0.6" d="M22.3598 8.27L22.0698 5.5C21.6498 2.48 20.2798 1.25 17.3498 1.25H13.5098L14.2498 8.75C14.2598 8.85 14.2698 8.96 14.2698 9.15C14.3298 9.67 14.4898 10.15 14.7298 10.58C15.4498 11.9 16.8498 12.75 18.3098 12.75C19.6398 12.75 20.8398 12.16 21.5898 11.12C22.1898 10.32 22.4598 9.31 22.3598 8.27Z" fill="currentColor"></path> <path opacity="0.6" d="M6.58965 1.25C3.64965 1.25 2.28965 2.48 1.85965 5.53L1.58965 8.28C1.48965 9.35 1.77965 10.39 2.40965 11.2C3.16965 12.19 4.33965 12.75 5.63965 12.75C7.09965 12.75 8.49965 11.9 9.20965 10.6C9.46965 10.15 9.63965 9.63 9.68965 9.09L10.4697 1.26H6.58965V1.25Z" fill="currentColor"></path> <path d="M11.3491 16.6602C10.0791 16.7902 9.11914 17.8702 9.11914 19.1502V22.3802H14.8691V19.5002C14.8791 17.4102 13.6491 16.4202 11.3491 16.6602Z" fill="currentColor"></path> </svg>
		</div>
    </div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative mb20">
	{if in_array($view, ['', 'search', 'category'])}
	<div class="ele_content p-5 mb30">
		<div class="valign flex-wrap flex-md-nowrap ele_jobs_header">
			
			{if $user->_logged_in && $system['location_finder_enabled']}
				<!-- location filter -->
				<div class="dropdown">
					<button type="button" class="btn btn-mat" data-toggle="dropdown" data-display="static">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6211 8.45C19.5711 3.83 15.5411 1.75 12.0011 1.75C12.0011 1.75 12.0011 1.75 11.9911 1.75C8.46107 1.75 4.42107 3.82 3.37107 8.44C2.20107 13.6 5.36107 17.97 8.22107 20.72C9.28107 21.74 10.6411 22.25 12.0011 22.25C13.3611 22.25 14.7211 21.74 15.7711 20.72C18.6311 17.97 21.7911 13.61 20.6211 8.45ZM12.0011 13.46C10.2611 13.46 8.85107 12.05 8.85107 10.31C8.85107 8.57 10.2611 7.16 12.0011 7.16C13.7411 7.16 15.1511 8.57 15.1511 10.31C15.1511 12.05 13.7411 13.46 12.0011 13.46Z" fill="currentColor"/></svg> {__("Location")}
					</button>
					<div class="dropdown-menu ele_create_menu">
						<form class="ptb15 plr15" method="get" action="?">
							<div class="form-group">
								<label class="form-control-label">{__("Distance")}</label>
								<div>
									{if $location}
										<input type="hidden" name="location" value="{$location}">
									{/if}
									{if $sort}
										<input type="hidden" name="sort" value="{$sort}">
									{/if}
									<input type="range" class="custom-range" min="1" max="5000" name="distance" value="{if $distance}{$distance}{else}5000{/if}" oninput="this.form.distance_value.value=this.value">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text" id="basic-addon1">{if $system['system_distance'] == "mile"}{__("ML")}{else}{__("KM")}{/if}</span>
										</div>
										<input disabled type="number" class="form-control" min="1" max="5000" name="distance_value" value="{if $distance}{$distance}{else}5000{/if}" oninput="this.form.distance.value=this.value">
									</div>
								</div>
							</div>
							<button type="submit" class="btn btn-mat btn-block btn-primary">{__("Filter")}</button>
						</form>
					</div>
				</div>
				<!-- location filter -->
			{/if}
			
			<button type="button" class="btn btn-mat" onclick="$('.ele_jobs_nav').slideToggle();">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.6695 2H16.7695C14.5895 2 13.4395 3.15 13.4395 5.33V7.23C13.4395 9.41 14.5895 10.56 16.7695 10.56H18.6695C20.8495 10.56 21.9995 9.41 21.9995 7.23V5.33C21.9995 3.15 20.8495 2 18.6695 2Z" fill="currentColor"/><path d="M7.24 13.4297H5.34C3.15 13.4297 2 14.5797 2 16.7597V18.6597C2 20.8497 3.15 21.9997 5.33 21.9997H7.23C9.41 21.9997 10.56 20.8497 10.56 18.6697V16.7697C10.57 14.5797 9.42 13.4297 7.24 13.4297Z" fill="currentColor"/><path d="M6.29 10.58C8.6593 10.58 10.58 8.6593 10.58 6.29C10.58 3.9207 8.6593 2 6.29 2C3.9207 2 2 3.9207 2 6.29C2 8.6593 3.9207 10.58 6.29 10.58Z" fill="currentColor"/><path d="M17.7099 22.0019C20.0792 22.0019 21.9999 20.0812 21.9999 17.7119C21.9999 15.3426 20.0792 13.4219 17.7099 13.4219C15.3406 13.4219 13.4199 15.3426 13.4199 17.7119C13.4199 20.0812 15.3406 22.0019 17.7099 22.0019Z" fill="currentColor"/></svg> {__("Categories")}&nbsp;&nbsp;&nbsp;&nbsp;<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top"><path d="M6 12H18" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 18V6" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
			</button>
			<form class="js_search-form w-100" data-handle="market">
				<div class="valign ele_jobs_search">
					<input type="text" class="w-100" name="query" placeholder='{__("Search for products")}'>
					<input type="text" class="w-100 rounded-0" name="location" placeholder='{__("at location")}'>
					<button type="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Search")}</button>
				</div>
			</form>
		</div>
		
		<!-- categories -->
			<ul class="side-nav text-center ele_jobs_nav x-hidden">
				<div class="pt-5 w-100"></div>
				{if $view != "category"}
					<li class="d-inline-block active">
						<a href="{$system['system_url']}/market">
							{__("All")}
						</a>
					</li>
				{else}
					<li class="d-inline-block">
						{if $current_category['parent']}
							<a href="{$system['system_url']}/market/category/{$current_category['parent']['category_id']}/{$current_category['parent']['category_url']}">
								<i class="fas fa-arrow-alt-circle-left mr5"></i>{__($current_category['parent']['category_name'])}
							</a>
						{else}
							<a href="{$system['system_url']}/market">
								{if $current_category['sub_categories']}<i class="fas fa-arrow-alt-circle-left mr5"></i>{/if}{__("All")}
							</a>
						{/if}
					</li>
				{/if}
				{foreach $categories as $category}
					<li class="d-inline-block{if $view == 'category' && $current_category['category_id'] == $category['category_id']} active{/if}">
						<a href="{$system['system_url']}/market/category/{$category['category_id']}/{$category['category_url']}">
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
	{/if}
	
	<!-- tabs -->
	{if $system['market_shopping_cart_enabled'] && $user->_logged_in}
		<div class="valign ele_post_filters">
			<div class="ele_post_filters_nav not_filter valign ele_scroll">
				<a href="{$system['system_url']}/market" class='btn-mat filterby pointer {if $view == "" || $view == "search" || $view == "category"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path fill="currentColor" d="M201-120q-33 0-56.5-23.5T121-200v-318q-23-21-35.5-54t-.5-72l42-136q8-26 28.5-43t47.5-17h556q27 0 47 16.5t29 43.5l42 136q12 39-.5 71T841-518v318q0 33-23.5 56.5T761-120H201Zm368-440q27 0 41-18.5t11-41.5l-22-140h-78v148q0 21 14 36.5t34 15.5Zm-180 0q23 0 37.5-15.5T441-612v-148h-78l-22 140q-4 24 10.5 42t37.5 18Zm-178 0q18 0 31.5-13t16.5-33l22-154h-78l-40 134q-6 20 6.5 43t41.5 23Zm540 0q29 0 42-23t6-43l-42-134h-76l22 154q3 20 16.5 33t31.5 13Z"></path></svg>{__("Market")}
				</a>
			
				<a href="{$system['system_url']}/market/cart" class='btn-mat filterby pointer {if $view == "cart"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path fill="currentColor" d="M200-80q-33 0-56.5-23.5T120-160v-480q0-33 23.5-56.5T200-720h80q0-83 58.5-141.5T480-920q83 0 141.5 58.5T680-720h80q33 0 56.5 23.5T840-640v480q0 33-23.5 56.5T760-80H200Zm160-640h240q0-50-35-85t-85-35q-50 0-85 35t-35 85Zm119 320q74 0 134-49t59-110q0-17-11-29t-28-12q-14 0-25 9t-16 27q-11 38-43 61t-70 23q-38 0-70.5-23T366-564q-5-19-15-27.5t-24-8.5q-17 0-28.5 12T287-559q0 61 59 110t133 49Z"/></svg>{__("Shopping Cart")}
				</a>
				<a href="{$system['system_url']}/market/orders" class='btn-mat filterby pointer {if $view == "orders"}active{/if}'>
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path fill="currentColor" d="M320-280q17 0 28.5-11.5T360-320q0-17-11.5-28.5T320-360q-17 0-28.5 11.5T280-320q0 17 11.5 28.5T320-280Zm0-160q17 0 28.5-11.5T360-480q0-17-11.5-28.5T320-520q-17 0-28.5 11.5T280-480q0 17 11.5 28.5T320-440Zm0-160q17 0 28.5-11.5T360-640q0-17-11.5-28.5T320-680q-17 0-28.5 11.5T280-640q0 17 11.5 28.5T320-600Zm160 320h160q17 0 28.5-11.5T680-320q0-17-11.5-28.5T640-360H480q-17 0-28.5 11.5T440-320q0 17 11.5 28.5T480-280Zm0-160h160q17 0 28.5-11.5T680-480q0-17-11.5-28.5T640-520H480q-17 0-28.5 11.5T440-480q0 17 11.5 28.5T480-440Zm0-160h160q17 0 28.5-11.5T680-640q0-17-11.5-28.5T640-680H480q-17 0-28.5 11.5T440-640q0 17 11.5 28.5T480-600ZM200-120q-33 0-56.5-23.5T120-200v-560q0-33 23.5-56.5T200-840h560q33 0 56.5 23.5T840-760v560q0 33-23.5 56.5T760-120H200Z"/></svg>{__(Orders)}
				</a>
				{if $user->_data['can_sell_products']}
					<a href="{$system['system_url']}/market/sales" class='btn-mat filterby pointer {if $view == "sales"}active{/if}'>
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path fill="currentColor" d="M440-91v-366L120-642v321q0 22 10.5 40t29.5 29L440-91Zm80 0 280-161q19-11 29.5-29t10.5-40v-321L520-457v366Zm159-550 118-69-277-159q-19-11-40-11t-40 11l-79 45 318 183ZM480-526l119-68-317-184-120 69 318 183Z"/></svg>{__("Sales")}
					</a>
				{/if}
			</div>
		</div>
	{/if}
	<!-- tabs -->
	
	{if in_array($view, ['', 'search', 'category'])}
		{include file='_ads.tpl'}

		{if $view == "search"}
			<div class="mb20">
				<!-- results counter -->
				{$total} {__("results were found for the search for")} "<strong class="bold">{htmlentities($query, ENT_QUOTES, 'utf-8')}</strong>" {if $location} {__("at")} "<strong class="bold">{htmlentities($location, ENT_QUOTES, 'utf-8')}</strong>" {/if}
				<!-- results counter -->
			</div>
		{/if}

		{if $view == "" && $promoted_products}
			<div class="valign ele_page_hdng border-0 pt5 pb0 mb10">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" class="bg-warning text-dark"><path fill="currentColor" d="M12,8H4A2,2 0 0,0 2,10V14A2,2 0 0,0 4,16H5V20A1,1 0 0,0 6,21H8A1,1 0 0,0 9,20V16H12L17,20V4L12,8M21.5,12C21.5,13.71 20.54,15.26 19,16V8C20.53,8.75 21.5,10.3 21.5,12Z"></path></svg> {__("Promoted Products")}
			</div>

			<div class="row">
				{foreach $promoted_products as $post}
					{include file='__feeds_product.tpl' _boosted=true}
				{/foreach}
			</div>
			<hr class="mtb5 mb10">
		{/if}
			
		{if $rows}
			<div class="valign ele_page_hdng border-0 pt5 pb0 mb10 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
				<div>{__("Products")}</div>
				<div class="valign align-items-start mt-2 mt-md-0 mb-3 mb-md-0">
					<div class="valign nav ele_switch_tabs ele_products_tab m-0" role="tablist">
						<div><a class="btn {if !$sort || $sort == "latest"}active{else}{/if}" href="?{if $location}location={$location}&{/if}{if $distance}distance={$distance}{if $location}&{else}?{/if}{/if}sort=latest">{__("Latest")}</a></div>
						<div><a class="btn {if $sort == "price-high"}active{else}{/if}" href="?{if $location}location={$location}&{/if}{if $distance}distance={$distance}{if $location}&{else}?{/if}{/if}sort=price-high">{__("Price High")}</a></div>
						<div><a class="btn {if $sort == "price-low"}active{else}{/if}" href="?{if $location}location={$location}&{/if}{if $distance}distance={$distance}{if $location}&{else}?{/if}{/if}sort=price-low">{__("Price Low")}</a></div>
					</div>
				</div>
			</div>
			
			<div class="row">
				{foreach $rows as $post}
					{include file='__feeds_product.tpl'}
				{/foreach}
			</div>

			{$pager}
		{else}
			{include file='_no_data.tpl'}
		{/if}
	
	{elseif $view == "cart"}

		<div class="ele_content p-4 mt-4 mb-5">
			<h2 class="ele_page_title small mt-n1 mb-4">{__("Shopping Cart")}</h2>
			
			<div class="row">
				<!-- Addresses -->
				<div class="col-md-4">
					<div class="heading-small mb-1">
						{__("Your Addresses")}
					</div>

					{include file='_addresses.tpl' _small=true}
				</div>
				<!-- Addresses -->

				<!-- Shopping Cart -->
				<div class="col-md-8">
					<div class="heading-small mb-1">
						{__("Items")}
					</div>

					{if $cart['items']}
						<div class="row">
							{foreach $cart['items'] as $cart_item}
								<div class="col-6 col-lg-4">
									<div class="ele_content ele_ads_lists p-0 m-0 mb-4">
										<button type="button" class="btn btn-mat publisher-scraper-remover js_shopping-remove-from-cart" data-id="{$cart_item['product_post_id']}">
											<svg xmlns="http://www.w3.org/2000/svg" class="m-0 align-text-top" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M4 7l16 0" /><path d="M10 11l0 6" /><path d="M14 11l0 6" /><path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12" /><path d="M9 7v-3a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3" /></svg>
										</button>
										<a href="{$system['system_url']}/posts/{$post['post_id']}" class="product-image">
											{if $cart_item['post']['photos_num'] > 0}
												<img src="{$system['system_uploads']}/{$cart_item['post']['photos'][0]['source']}" class="w-100 h-100">
											{else}
												<img src="{$system['system_url']}/content/themes/{$system['theme']}/images/blank_product.png" class="w-100 h-100">
											{/if}
										</a>
										<div class="plr10 ptb10 product-info">
											<h2 class="truncate">
												<a href="{$system['system_url']}/posts/{$cart_item['post']['post_id']}" class="body_color">{$cart_item['post']['product']['name']}</a>
											</h2>
											<div class="truncate price">
												{if $cart_item['post']['product']['price'] > 0}
													{$cart_item['post']['product']['price_formatted']}
												{else}
													{__("Free")}
												{/if}
											</div>
											<div class="valign ele_post_prod_shead mtb5">
												{if $cart_item['post']['product']['is_digital']}
													<span>{__("Digital")}</span><span class="font-weight-bold ml5 mr5">·</span>
												{/if}
												{if $cart_item['post']['product']['status'] == "new"}
													<span>{__("New")}</span>
												{else}
													<span>{__("Used")}</span>
												{/if}
											</div>
											<div class="truncate ele_post_prod_shead">
												<div class="d-flex">
													<span class="">{__("Qty:")}</span>
													<select class="border-0 js_shopping-update-cart mx-2 btn-light shadow-none rounded" name="quantity" data-id="{$cart_item['product_post_id']}">
														{for $i=1; $i <= $cart_item['post']['product']['quantity']; $i++}
															<option value="{$i}" {if $i == $cart_item['quantity']}selected{/if}>{$i}</option>
														{/for}
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							{/foreach}
						</div>
					{else}
						<div class="text-center empty_state">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M16.1894 8.85844C15.7994 8.85844 15.4894 8.54844 15.4894 8.15844V6.87844C15.4894 5.89844 15.0694 4.95844 14.3494 4.29844C13.6094 3.62844 12.6594 3.31844 11.6594 3.40844C9.97937 3.56844 8.50938 5.27844 8.50938 7.05844V7.95844C8.50938 8.34844 8.19937 8.65844 7.80937 8.65844C7.41937 8.65844 7.10938 8.34844 7.10938 7.95844V7.05844C7.10938 4.55844 9.12938 2.24844 11.5194 2.01844C12.9094 1.88844 14.2494 2.32844 15.2794 3.26844C16.2994 4.18844 16.8794 5.50844 16.8794 6.87844V8.15844C16.8794 8.54844 16.5694 8.85844 16.1894 8.85844Z" fill="currentColor"/><path d="M19.9597 8.95813C19.1197 8.02813 17.7397 7.57812 15.7197 7.57812H8.27975C6.25975 7.57812 4.87975 8.02813 4.03975 8.95813C3.06975 10.0381 3.09975 11.4781 3.20975 12.4781L3.90975 18.0481C4.11975 19.9981 4.90975 21.9981 9.20975 21.9981H14.7897C19.0897 21.9981 19.8797 19.9981 20.0897 18.0581L20.7897 12.4681C20.8997 11.4781 20.9297 10.0381 19.9597 8.95813ZM11.9997 18.5781C9.90975 18.5781 8.20975 16.8781 8.20975 14.7881C8.20975 12.6981 9.90975 10.9981 11.9997 10.9981C14.0897 10.9981 15.7897 12.6981 15.7897 14.7881C15.7897 16.8781 14.0897 18.5781 11.9997 18.5781Z" fill="currentColor"/><path opacity="0.4" d="M12.0009 18.58C14.0941 18.58 15.7909 16.8832 15.7909 14.79C15.7909 12.6968 14.0941 11 12.0009 11C9.90778 11 8.21094 12.6968 8.21094 14.79C8.21094 16.8832 9.90778 18.58 12.0009 18.58Z" fill="currentColor"/><path d="M13.5991 15.3102L13.0691 14.7802L13.5691 14.2802C13.8591 13.9902 13.8591 13.5102 13.5691 13.2202C13.2791 12.9302 12.7991 12.9302 12.5091 13.2202L12.0091 13.7202L11.4791 13.1902C11.1891 12.9002 10.7091 12.9002 10.4191 13.1902C10.1291 13.4802 10.1291 13.9602 10.4191 14.2502L10.9491 14.7802L10.3991 15.3302C10.1091 15.6202 10.1091 16.1002 10.3991 16.3902C10.5491 16.5402 10.7391 16.6102 10.9291 16.6102C11.1191 16.6102 11.3091 16.5402 11.4591 16.3902L12.0091 15.8402L12.5391 16.3702C12.6891 16.5202 12.8791 16.5902 13.0691 16.5902C13.2591 16.5902 13.4491 16.5202 13.5991 16.3702C13.8891 16.0802 13.8891 15.6102 13.5991 15.3102Z" fill="currentColor"/></svg>
							{__("Your cart is empty.")}
						</div>
					{/if}

					<div class="heading-small mb-1">
						{__("Shipping Address")}
					</div>

					{if $addresses}
						{foreach $addresses as $address}
							<div class="ele_content ele_ads_lists p-3">
								<div class="custom-control custom-radio">
									<input class="custom-control-input js_shipping-address" type="radio" name="shipping_address" id="shipping_address-{$address['address_id']}" value="{$address['address_id']}">
									<label class="custom-control-label pointer" for="shipping_address-{$address['address_id']}">
										<strong class="bold">{$address['address_title']}</strong>
										({$address['address_details']}, {$address['address_city']} - {$address['address_country']}, {$address['address_zip_code']})
									</label>
								</div>
							</div>
						{/foreach}
						<!-- error -->
						<div class="alert alert-danger mt15 mb0 x-hidden" id="addresses-error">
							{__("Select a shipping address")}
						</div>
						<!-- error -->
					{else}
						<div class="alert alert-warning">
							{__("You have no addresses")}
						</div>
					{/if}

					<hr class="my-4">
					
					<div class="text-right">
						{__("Total Price")}
						<p>
							<span class="text-xxlg bold">
								{print_money($cart['total'])}
							</span>
						</p>
					</div>
					<div class="text-right">
						<button type="button" class="btn btn-primary btn-mat js_shopping-checkout" {if !$cart['items']}disabled{/if}>
							{__("Checkout")}
						</button>
					</div>
				</div>
				<!-- Shopping Cart -->
			</div>
		</div>

	{elseif $view == "orders"}

		<div class="d-flex align-items-center justify-content-between flex-wrap">
			<div class="my-4 d-flex align-items-center">
				<h2 class="ele_page_title small m-0">{__("Orders")}</h2>
				{if !$query}<span class="badge badge-pill badge-lg badge-success mx-2">{$orders_count}</span>{/if}
			</div>
			<!-- search -->
			<div class="my-4">
				<form action="{$system['system_url']}/market/orders" method="get">
					<input type="text" class="form-control rounded" name="query" placeholder='{__("Search")}'>
				</form>
			</div>
			<!-- search -->
		</div>
		
		{if $query}
			<div class="clearfix">
				{__("Orders")} {__("for")}: <span class="badge badge-pill badge-lg badge-secondary">{$query}</span>
			</div>
		{/if}

		{if $orders}
			<div class="js_orders-stream">
				{foreach $orders as $order}
					{include file='_order.tpl'}
				{/foreach}
			</div>

			<!-- see-more -->
			{if count($orders) >= $system['max_results']}
				<div class="alert alert-info see-more js_see-more" data-get="orders" data-target-stream=".js_orders-stream" {if $query}data-filter="{$query}" {/if}>
					<span>{__("See More")}</span>
					<div class="loader loader_small x-hidden"></div>
				</div>
			{/if}
			<!-- see-more -->
		{else}
			{include file='_no_data.tpl'}
		{/if}

	{elseif $view == "sales"}
	
		<div class="d-flex align-items-center justify-content-between flex-wrap">
			<div class="my-4 d-flex align-items-center">
				<h2 class="ele_page_title small m-0">{__("Sales Orders")}</h2>
			</div>
			<!-- search -->
			<div class="my-4">
				<form action="{$system['system_url']}/market/sales" method="get">
					<input type="text" class="form-control rounded" name="query" placeholder='{__("Search")}'>
				</form>
			</div>
			<!-- search -->
		</div>
		
		{if $query}
			<div class="clearfix">
				{__("Orders")} {__("for")}: <span class="badge badge-pill badge-lg badge-secondary">{$query}</span>
			</div>
		{/if}
		
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="h-100 p-4 ele_forum_stats thread">
					<div class="d-flex justify-content-between">
						<h6>{__("Total Orders")}</h6>
						<svg width="36" height="36" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M20.0984 6.93998C20.0984 7.47998 19.8084 7.96995 19.3484 8.21995L17.6084 9.15995L16.1284 9.94999L13.0584 11.61C12.7284 11.79 12.3684 11.88 11.9984 11.88C11.6284 11.88 11.2684 11.79 10.9384 11.61L4.64844 8.21995C4.18844 7.96995 3.89844 7.47998 3.89844 6.93998C3.89844 6.39998 4.18844 5.90995 4.64844 5.65995L6.61844 4.59996L8.18845 3.74998L10.9384 2.27C11.5984 1.91 12.3984 1.91 13.0584 2.27L19.3484 5.65995C19.8084 5.90995 20.0984 6.39998 20.0984 6.93998Z" fill="#22beff"/><path opacity="0.4" d="M9.89874 12.7884L4.04874 9.85842C3.59874 9.62842 3.07874 9.65842 2.64874 9.91842C2.21874 10.1784 1.96875 10.6385 1.96875 11.1385V16.6684C1.96875 17.6284 2.49873 18.4884 3.35873 18.9184L9.20874 21.8385C9.40874 21.9385 9.62875 21.9884 9.84875 21.9884C10.1088 21.9884 10.3688 21.9185 10.5988 21.7685C11.0288 21.5085 11.2787 21.0484 11.2787 20.5484V15.0185C11.2887 14.0785 10.7587 13.2184 9.89874 12.7884Z" fill="#22beff"/><path opacity="0.4" d="M22.0309 11.1497V16.6796C22.0309 17.6296 21.501 18.4896 20.641 18.9196L14.791 21.8496C14.591 21.9496 14.3709 21.9996 14.1509 21.9996C13.8909 21.9996 13.631 21.9297 13.391 21.7797C12.971 21.5197 12.7109 21.0596 12.7109 20.5596V15.0396C12.7109 14.0796 13.241 13.2196 14.101 12.7896L16.2509 11.7196L17.7509 10.9696L19.951 9.86964C20.401 9.63964 20.921 9.65964 21.351 9.92964C21.771 10.1896 22.0309 10.6497 22.0309 11.1497Z" fill="#22beff"/><path d="M17.6111 9.15997L16.1311 9.95001L6.62109 4.59998L8.1911 3.75L17.3711 8.92999C17.4711 8.98999 17.5511 9.06997 17.6111 9.15997Z" fill="#22beff"/><path d="M17.75 10.9688V13.2388C17.75 13.6488 17.41 13.9888 17 13.9888C16.59 13.9888 16.25 13.6488 16.25 13.2388V11.7188L17.75 10.9688Z" fill="#22beff"/></svg>
					</div>
					<p class="mb-0">{$orders_count}</p>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="h-100 p-4 ele_forum_stats thread">
					<div class="d-flex justify-content-between">
						<h6>{__("This Month Earnings")}</h6>
						<svg width="36" height="36" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.7502 3.56V2C16.7502 1.59 16.4102 1.25 16.0002 1.25C15.5902 1.25 15.2502 1.59 15.2502 2V3.5H8.75023V2C8.75023 1.59 8.41023 1.25 8.00023 1.25C7.59023 1.25 7.25023 1.59 7.25023 2V3.56C4.55023 3.81 3.24023 5.42 3.04023 7.81C3.02023 8.1 3.26023 8.34 3.54023 8.34H20.4602C20.7502 8.34 20.9902 8.09 20.9602 7.81C20.7602 5.42 19.4502 3.81 16.7502 3.56Z" fill="#22beff"/><path opacity="0.4" d="M20 9.83984C20.55 9.83984 21 10.2898 21 10.8398V16.9998C21 19.9998 19.5 21.9998 16 21.9998H8C4.5 21.9998 3 19.9998 3 16.9998V10.8398C3 10.2898 3.45 9.83984 4 9.83984H20Z" fill="#22beff"/><path d="M8.5 14.9989C8.24 14.9989 7.98 14.8889 7.79 14.7089C7.61 14.5189 7.5 14.2589 7.5 13.9989C7.5 13.7389 7.61 13.4789 7.79 13.2889C8.07 13.0089 8.51 12.9189 8.88 13.0789C9.01 13.1289 9.12 13.1989 9.21 13.2889C9.39 13.4789 9.5 13.7389 9.5 13.9989C9.5 14.2589 9.39 14.5189 9.21 14.7089C9.02 14.8889 8.76 14.9989 8.5 14.9989Z" fill="#22beff"/><path d="M12 14.9989C11.74 14.9989 11.48 14.8889 11.29 14.7089C11.11 14.5189 11 14.2589 11 13.9989C11 13.7389 11.11 13.4789 11.29 13.2889C11.38 13.1989 11.49 13.1289 11.62 13.0789C11.99 12.9189 12.43 13.0089 12.71 13.2889C12.89 13.4789 13 13.7389 13 13.9989C13 14.2589 12.89 14.5189 12.71 14.7089C12.66 14.7489 12.61 14.7889 12.56 14.8289C12.5 14.8689 12.44 14.8989 12.38 14.9189C12.32 14.9489 12.26 14.9689 12.2 14.9789C12.13 14.9889 12.07 14.9989 12 14.9989Z" fill="#22beff"/><path d="M15.5 15C15.24 15 14.98 14.89 14.79 14.71C14.61 14.52 14.5 14.26 14.5 14C14.5 13.74 14.61 13.48 14.79 13.29C14.89 13.2 14.99 13.13 15.12 13.08C15.3 13 15.5 12.98 15.7 13.02C15.76 13.03 15.82 13.05 15.88 13.08C15.94 13.1 16 13.13 16.06 13.17C16.11 13.21 16.16 13.25 16.21 13.29C16.39 13.48 16.5 13.74 16.5 14C16.5 14.26 16.39 14.52 16.21 14.71C16.16 14.75 16.11 14.79 16.06 14.83C16 14.87 15.94 14.9 15.88 14.92C15.82 14.95 15.76 14.97 15.7 14.98C15.63 14.99 15.56 15 15.5 15Z" fill="#22beff"/><path d="M8.5 18.5C8.37 18.5 8.24 18.47 8.12 18.42C7.99 18.37 7.89 18.3 7.79 18.21C7.61 18.02 7.5 17.76 7.5 17.5C7.5 17.24 7.61 16.98 7.79 16.79C7.89 16.7 7.99 16.63 8.12 16.58C8.3 16.5 8.5 16.48 8.7 16.52C8.76 16.53 8.82 16.55 8.88 16.58C8.94 16.6 9 16.63 9.06 16.67C9.11 16.71 9.16 16.75 9.21 16.79C9.39 16.98 9.5 17.24 9.5 17.5C9.5 17.76 9.39 18.02 9.21 18.21C9.16 18.25 9.11 18.3 9.06 18.33C9 18.37 8.94 18.4 8.88 18.42C8.82 18.45 8.76 18.47 8.7 18.48C8.63 18.49 8.57 18.5 8.5 18.5Z" fill="#22beff"/><path d="M12 18.4992C11.74 18.4992 11.48 18.3892 11.29 18.2092C11.11 18.0192 11 17.7592 11 17.4992C11 17.2392 11.11 16.9792 11.29 16.7892C11.66 16.4192 12.34 16.4192 12.71 16.7892C12.89 16.9792 13 17.2392 13 17.4992C13 17.7592 12.89 18.0192 12.71 18.2092C12.52 18.3892 12.26 18.4992 12 18.4992Z" fill="#22beff"/><path d="M15.5 18.4992C15.24 18.4992 14.98 18.3892 14.79 18.2092C14.61 18.0192 14.5 17.7592 14.5 17.4992C14.5 17.2392 14.61 16.9792 14.79 16.7892C15.16 16.4192 15.84 16.4192 16.21 16.7892C16.39 16.9792 16.5 17.2392 16.5 17.4992C16.5 17.7592 16.39 18.0192 16.21 18.2092C16.02 18.3892 15.76 18.4992 15.5 18.4992Z" fill="#22beff"/></svg>
					</div>
					<p class="mb-0">{print_money($monthly_sales)}</p>
				</div>
			</div>
			<div class="col-12 col-md-6 col-lg-4 mb-4">
				<div class="h-100 p-4 ele_forum_stats replies">
					<div class="d-flex justify-content-between">
						<h6>{__("Total Earnings")}</h6>
						<svg width="36" height="36" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M9.99 17.98C14.4028 17.98 17.98 14.4028 17.98 9.99C17.98 5.57724 14.4028 2 9.99 2C5.57724 2 2 5.57724 2 9.99C2 14.4028 5.57724 17.98 9.99 17.98Z" fill="#10c442"/><path d="M21.9681 15.9881C21.9681 19.2881 19.2881 21.9681 15.9881 21.9681C13.9481 21.9681 12.1581 20.9481 11.0781 19.3981C15.4381 18.9081 18.9081 15.4381 19.3981 11.0781C20.9481 12.1581 21.9681 13.9481 21.9681 15.9881Z" fill="#10c442"/><path d="M11.45 9.71016L9.05 8.87016C8.81 8.79016 8.76 8.77016 8.76 8.42016C8.76 8.16016 8.94 7.95016 9.17 7.95016H10.67C10.99 7.95016 11.25 8.24016 11.25 8.60016C11.25 9.01016 11.59 9.35016 12 9.35016C12.41 9.35016 12.75 9.01016 12.75 8.60016C12.75 7.45016 11.86 6.51016 10.75 6.46016V6.41016C10.75 6.00016 10.41 5.66016 10 5.66016C9.59 5.66016 9.25 5.99016 9.25 6.41016V6.46016H9.16C8.11 6.46016 7.25 7.34016 7.25 8.43016C7.25 9.38016 7.67 9.99016 8.54 10.2902L10.95 11.1302C11.19 11.2102 11.24 11.2302 11.24 11.5802C11.24 11.8402 11.06 12.0502 10.83 12.0502H9.33C9.01 12.0502 8.75 11.7602 8.75 11.4002C8.75 10.9902 8.41 10.6502 8 10.6502C7.59 10.6502 7.25 10.9902 7.25 11.4002C7.25 12.5502 8.14 13.4902 9.25 13.5402V13.6002C9.25 14.0102 9.59 14.3502 10 14.3502C10.41 14.3502 10.75 14.0102 10.75 13.6002V13.5502H10.84C11.89 13.5502 12.75 12.6702 12.75 11.5802C12.75 10.6302 12.32 10.0202 11.45 9.71016Z" fill="#10c442"/></svg>
					</div>
					<p class="mb-0">{print_money($user->_data['user_market_balance'])}</p>
				</div>
			</div>
		</div>

		{if $orders}
			<div class="js_orders-stream">
				{foreach $orders as $order}
					{include file='_order.tpl' sales = true}
				{/foreach}
			</div>

			<!-- see-more -->
			{if count($orders) >= $system['max_results']}
				<div class="alert alert-info see-more js_see-more" data-get="sales_orders" data-target-stream=".js_orders-stream" {if $query}data-filter="{$query}" {/if}>
					<span>{__("See More")}</span>
					<div class="loader loader_small x-hidden"></div>
				</div>
			{/if}
			<!-- see-more -->
		{else}
			{include file='_no_data.tpl'}
		{/if}
	{/if}
</div>
<!-- page content -->

{include file='_footer.tpl'}