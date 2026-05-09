{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Search")}</h2>
				<p class="text-xlg">{__("Discover new people, create new connections and make new friends")}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill="currentColor" d="M14.5 10.75H8.5C8.09 10.75 7.75 10.41 7.75 10C7.75 9.59 8.09 9.25 8.5 9.25H14.5C14.91 9.25 15.25 9.59 15.25 10C15.25 10.41 14.91 10.75 14.5 10.75Z"/><path fill="currentColor" d="M11.5 13.75H8.5C8.09 13.75 7.75 13.41 7.75 13C7.75 12.59 8.09 12.25 8.5 12.25H11.5C11.91 12.25 12.25 12.59 12.25 13C12.25 13.41 11.91 13.75 11.5 13.75Z"/><path fill="currentColor" opacity="0.4" d="M11.5 21C16.7467 21 21 16.7467 21 11.5C21 6.25329 16.7467 2 11.5 2C6.25329 2 2 6.25329 2 11.5C2 16.7467 6.25329 21 11.5 21Z"/><path fill="currentColor" d="M21.3005 22.0001C21.1205 22.0001 20.9405 21.9301 20.8105 21.8001L18.9505 19.9401C18.6805 19.6701 18.6805 19.2301 18.9505 18.9501C19.2205 18.6801 19.6605 18.6801 19.9405 18.9501L21.8005 20.8101C22.0705 21.0801 22.0705 21.5201 21.8005 21.8001C21.6605 21.9301 21.4805 22.0001 21.3005 22.0001Z"/></svg>
		</div>
	</div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative mb20">
	<!-- search form -->
		<div class="ele_content p-5 mb30">
			<div class="ele_jobs_header">
				<form class="js_search-form w-100" {if $tab} data-filter="{$tab}" {/if}>
					<div class="valign ele_jobs_search">
						<input type="text" class="w-100" name="query" placeholder='{__("Search")}' {if $query} value="{$query}" {/if}>
						<button type="submit" name="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Search")}</button>
					</div>
				</form>
			</div>
			<!-- panel nav -->
			<div class="text-center content-tabs border-0 mb-0 p-0 mt-4 mb-n4">
				<ul>
					<li class='{if $tab == "" || $tab == "posts"}active{/if}'>
						<a href="{$system['system_url']}/search/{if $hashtag}hashtag/{/if}{if $query}{$query}/posts{/if}">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.6601 10.44L20.6801 14.62C19.8401 18.23 18.1801 19.69 15.0601 19.39C14.5601 19.35 14.0201 19.26 13.4401 19.12L11.7601 18.72C7.59006 17.73 6.30006 15.67 7.28006 11.49L8.26006 7.30001C8.46006 6.45001 8.70006 5.71001 9.00006 5.10001C10.1701 2.68001 12.1601 2.03001 15.5001 2.82001L17.1701 3.21001C21.3601 4.19001 22.6401 6.26001 21.6601 10.44Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M15.06 19.39C14.44 19.81 13.66 20.16 12.71 20.47L11.13 20.99C7.15998 22.27 5.06997 21.2 3.77997 17.23L2.49997 13.28C1.21997 9.30998 2.27997 7.20998 6.24997 5.92998L7.82997 5.40998C8.23997 5.27998 8.62997 5.16998 8.99997 5.09998C8.69997 5.70998 8.45997 6.44998 8.25997 7.29998L7.27997 11.49C6.29997 15.67 7.58998 17.73 11.76 18.72L13.44 19.12C14.02 19.26 14.56 19.35 15.06 19.39Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M12.64 8.53003L17.49 9.76003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M11.66 12.4L14.56 13.14" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Posts")}
						</a>
					</li>
					{if $system['blogs_enabled']}
						<li class='{if $tab == "blogs"}active{/if}'>
							<a href="{$system['system_url']}/search/{if $hashtag}hashtag/{/if}{if $query}{$query}/blogs{/if}">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21 7V17C21 20 19.5 22 16 22H8C4.5 22 3 20 3 17V7C3 4 4.5 2 8 2H16C19.5 2 21 4 21 7Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M14.5 4.5V6.5C14.5 7.6 15.4 8.5 16.5 8.5H18.5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M8 13H12" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M8 17H16" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Blogs")}
							</a>
						</li>
					{/if}
					<li class='{if $tab == "users"}active{/if}'>
						<a href="{$system['system_url']}/search/{if $query}{$query}/users{/if}">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9.16006 10.87C9.06006 10.86 8.94006 10.86 8.83006 10.87C6.45006 10.79 4.56006 8.84 4.56006 6.44C4.56006 3.99 6.54006 2 9.00006 2C11.4501 2 13.4401 3.99 13.4401 6.44C13.4301 8.84 11.5401 10.79 9.16006 10.87Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M16.41 4C18.35 4 19.91 5.57 19.91 7.5C19.91 9.39 18.41 10.93 16.54 11C16.46 10.99 16.37 10.99 16.28 11" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M4.15997 14.56C1.73997 16.18 1.73997 18.82 4.15997 20.43C6.90997 22.27 11.42 22.27 14.17 20.43C16.59 18.81 16.59 16.17 14.17 14.56C11.43 12.73 6.91997 12.73 4.15997 14.56Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M18.3401 20C19.0601 19.85 19.7401 19.56 20.3001 19.13C21.8601 17.96 21.8601 16.03 20.3001 14.86C19.7501 14.44 19.0801 14.16 18.3701 14" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Users")}
						</a>
					</li>
					{if $system['pages_enabled']}
						<li class='{if $tab == "pages"}active{/if}'>
							<a href="{$system['system_url']}/search/{if $query}{$query}/pages{/if}">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M5.15002 2V22" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M5.15002 4H16.35C19.05 4 19.65 5.5 17.75 7.4L16.55 8.6C15.75 9.4 15.75 10.7 16.55 11.4L17.75 12.6C19.65 14.5 18.95 16 16.35 16H5.15002" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Pages")}
							</a>
						</li>
					{/if}
					{if $system['groups_enabled']}
						<li class='{if $tab == "groups"}active{/if}'>
							<a href="{$system['system_url']}/search/{if $query}{$query}/groups{/if}">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18 7.16C17.94 7.15 17.87 7.15 17.81 7.16C16.43 7.11 15.33 5.98 15.33 4.58C15.33 3.15 16.48 2 17.91 2C19.34 2 20.49 3.16 20.49 4.58C20.48 5.98 19.38 7.11 18 7.16Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M16.9699 14.44C18.3399 14.67 19.8499 14.43 20.9099 13.72C22.3199 12.78 22.3199 11.24 20.9099 10.3C19.8399 9.59004 18.3099 9.35003 16.9399 9.59003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M5.96998 7.16C6.02998 7.15 6.09998 7.15 6.15998 7.16C7.53998 7.11 8.63998 5.98 8.63998 4.58C8.63998 3.15 7.48998 2 6.05998 2C4.62998 2 3.47998 3.16 3.47998 4.58C3.48998 5.98 4.58998 7.11 5.96998 7.16Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M6.99994 14.44C5.62994 14.67 4.11994 14.43 3.05994 13.72C1.64994 12.78 1.64994 11.24 3.05994 10.3C4.12994 9.59004 5.65994 9.35003 7.02994 9.59003" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M12 14.63C11.94 14.62 11.87 14.62 11.81 14.63C10.43 14.58 9.32996 13.45 9.32996 12.05C9.32996 10.62 10.48 9.46997 11.91 9.46997C13.34 9.46997 14.49 10.63 14.49 12.05C14.48 13.45 13.38 14.59 12 14.63Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M9.08997 17.78C7.67997 18.72 7.67997 20.26 9.08997 21.2C10.69 22.27 13.31 22.27 14.91 21.2C16.32 20.26 16.32 18.72 14.91 17.78C13.32 16.72 10.69 16.72 9.08997 17.78Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Groups")}
							</a>
						</li>
					{/if}
					{if $system['events_enabled']}
						<li class='{if $tab == "events"}active{/if}'>
							<a href="{$system['system_url']}/search/{if $query}{$query}/events{/if}">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 2V5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M16 2V5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M3.5 9.08997H20.5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M21 8.5V17C21 20 19.5 22 16 22H8C4.5 22 3 20 3 17V8.5C3 5.5 4.5 3.5 8 3.5H16C19.5 3.5 21 5.5 21 8.5Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path><path d="M11.9955 13.7H12.0045" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M8.29431 13.7H8.30329" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M8.29431 16.7H8.30329" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Events")}
							</a>
						</li>
					{/if}
				</ul>
			</div>
			<!-- panel nav -->
		</div>
	<!-- search form -->

	<div class="row">
		<!-- left panel -->
		<div class="col-lg-8 middlecol pb20">
			{if $results}
				{if $tab == "" || $tab == "posts"}
					<!-- posts -->
					<ul>
						{foreach $results as $post}
						{include file='__feeds_post.tpl'}
						{/foreach}
					</ul>
					<!-- posts -->
				{elseif $tab == "blogs"}
					<!-- blogs -->
					<ul>
						{foreach $results as $post}
						{include file='__feeds_post.tpl'}
						{/foreach}
					</ul>
					<!-- blogs -->
				{elseif $tab == "users"}
					<!-- users -->
					<div class="ele_content p-2">
						<ul class="ele_side_users">
							{foreach $results as $_user}
							{include file='__feeds_user.tpl' _tpl="list" _connection=$_user['connection']}
							{/foreach}
						</ul>
					</div>
					<!-- users -->
				{elseif $tab == "pages"}
					<!-- pages -->
					<div class="ele_content p-2">
						<ul class="ele_side_users ele_side_page">
							{foreach $results as $_page}
							{include file='__feeds_page.tpl' _tpl="list"}
							{/foreach}
						</ul>
					</div>
					<!-- pages -->
				{elseif $tab == "groups"}
					<!-- groups -->
					<div class="ele_content p-2">
						<ul class="ele_side_users ele_side_group">
							{foreach $results as $_group}
							{include file='__feeds_group.tpl' _tpl="list"}
							{/foreach}
						</ul>
					</div>
					<!-- groups -->
				{elseif $tab == "events"}
					<!-- events -->
					<div class="ele_content px-3 pt-3 pb-1">
						<ul class="valign ele_side_events height">
							{foreach $results as $_event}
							{include file='__feeds_event.tpl' _tpl="box"}
							{/foreach}
						</ul>
					</div>
					<!-- events -->
				{/if}

				{if count($results) >= $system['search_results']}
					<!-- see-more -->
					<div class="alert alert-post see-more mb20 js_see-more js_see-more-infinite" data-get="search_{$tab}" data-query="{$query}" {if $type}data-type="{$type}" {/if}>
						<span>{__("More Results")}</span>
						<div class="loader loader_small x-hidden"></div>
					</div>
					<!-- see-more -->
				{/if}
			{else}
				{include file='_no_data.tpl'}
			{/if}
		</div>
		<!-- left panel -->

		<!-- right panel -->
		<div class="col-lg-4 sidebar rightcol">
			{include file='_ads_campaigns.tpl'}
			{include file='_ads.tpl'}
			{include file='_widget.tpl'}
		</div>
		<!-- right panel -->
	</div>
</div>
<!-- page content -->

{include file='_footer.tpl'}