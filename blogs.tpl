{include file='_head.tpl'}
{include file='_header.tpl'}

{if $view == ""}
    <!-- page header -->
    <div class="ele_content page-header">
        <div class="circle-1"></div>
        <div class="circle-3"></div>
		<div class="container">
			<div class="inner">
				<div class="inner_inner">
					<h2>{__("Blogs")}</h2>
					<p class="text-xlg">{__($system['system_description_blogs'])}</p>
					<a class="btn btn-mat" href="{$system['system_url']}/blogs/new"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("Create New Blog")}</a>
					<a href="{$system['system_url']}/my/blogs" class="btn btn-mat reverse">{__("My Articles")}</a>
				</div>
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M20.5 10.19H17.61C15.24 10.19 13.31 8.26 13.31 5.89V3C13.31 2.45 12.86 2 12.31 2H8.07C4.99 2 2.5 4 2.5 7.57V16.43C2.5 20 4.99 22 8.07 22H15.93C19.01 22 21.5 20 21.5 16.43V11.19C21.5 10.64 21.05 10.19 20.5 10.19Z" fill="currentColor"></path><path d="M15.7997 2.21048C15.3897 1.80048 14.6797 2.08048 14.6797 2.65048V6.14048C14.6797 7.60048 15.9197 8.81048 17.4297 8.81048C18.3797 8.82048 19.6997 8.82048 20.8297 8.82048C21.3997 8.82048 21.6997 8.15048 21.2997 7.75048C19.8597 6.30048 17.2797 3.69048 15.7997 2.21048Z" fill="currentColor"></path><path d="M13.5 13.75H7.5C7.09 13.75 6.75 13.41 6.75 13C6.75 12.59 7.09 12.25 7.5 12.25H13.5C13.91 12.25 14.25 12.59 14.25 13C14.25 13.41 13.91 13.75 13.5 13.75Z" fill="currentColor"></path><path d="M11.5 17.75H7.5C7.09 17.75 6.75 17.41 6.75 17C6.75 16.59 7.09 16.25 7.5 16.25H11.5C11.91 16.25 12.25 16.59 12.25 17C12.25 17.41 11.91 17.75 11.5 17.75Z" fill="currentColor"></path></svg>
			</div>
		</div>
    </div>
    <!-- page header -->
{/if}


<!-- page content -->
<div class="container position-relative">

	{if $view == ""}
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
				
				<form class="js_search-form w-100" data-filter="blogs">
					<div class="valign ele_jobs_search">
						<input type="text" class="w-100" name="query" placeholder='{__("Search for blogs")}'>
						<button type="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"></path></svg> {__("Search")}</button>
					</div>
				</form>
			</div>
		</div>
		
		<!-- content panel -->
		<div class="blogs-wrapper mb30">
			{if $blogs}
				<ul class="row">
					<!-- blogs -->
					{foreach $blogs as $blog}
						{include file='__feeds_blog.tpl' _tpl="featured" _iteration=$blog@iteration}
					{/foreach}
					<!-- blogs -->
				</ul>

				<!-- see-more -->
				<div class="alert alert-post see-more js_see-more" data-get="blogs" data-country="{if $selected_country}{$selected_country['country_id']}{else}all{/if}">
					<span>{__("More Blogs")}</span>
					<div class="loader loader_small x-hidden"></div>
				</div>
				<!-- see-more -->
			{else}
				{include file='_no_data.tpl'}
			{/if}
		</div>
		<!-- content panel -->
		
		<!-- Schema.org structured data for blogs listing page -->
  <script type="application/ld+json">
    {
      "@context": "https://schema.org",
      "@type": "CollectionPage",
      "name": "{__("Blogs")|escape:'html'}",
      "description": "{__($system['system_description_blogs'])|escape:'html'}",
      "url": "{$system['system_url']}/blogs",
      "publisher": {
        "@type": "Organization",
        "name": "{$system['system_title']|escape:'html'}",
        "url": "{$system['system_url']}"
      },
      "mainEntity": {
        "@type": "ItemList",
        "numberOfItems": "{if $blogs}{$blogs|count}{else}0{/if}",
        "itemListElement": [
          {if $blogs}
            {foreach $blogs as $blog name=blogList}
              {
                "@type": "ListItem",
                "position": {$smarty.foreach.blogList.iteration},
                "item": {
                  "@type": "BlogPosting",
                  "headline": "{$blog['blog']['title']|escape:'html'}",
                  "description": "{$blog['blog']['text']|strip_tags|truncate:150|escape:'html'}",
                  "image": "{if $blog['blog']['cover']}{$blog['blog']['parsed_cover']}{/if}",
                  "author": {
                    "@type": "Person",
                    "name": "{$blog['post_author_name']|escape:'html'}",
                    "url": "{$blog['post_author_url']}"
                  },
                  "datePublished": "{$blog['time']}",
                  "url": "{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}",
                  "articleSection": "{__($blog['blog']['category_name'])|escape:'html'}"
                }
                }{if !$smarty.foreach.blogList.last},{/if}
              {/foreach}
            {/if}
          ]
        }
      }
  </script>
  <!-- Schema.org structured data for blogs listing page -->
        
	{elseif $view == "category"}
		
		<h2 class="ele_page_title mb0">{__($category['category_name'])}</h2>
		<p class="ele_page_subtitle plr0">{if $category['category_description']}{__($category['category_description'])}{/if}</p>
			
		<!-- content panel -->
			<div class="row">
				<!-- left panel -->
				<div class="col-lg-8 middlecol mb20">
					{if $blogs}
						<ul>
							{foreach $blogs as $blog}
							{include file='__feeds_blog.tpl'}
							{/foreach}
						</ul>

						<!-- see-more -->
						<div class="alert alert-post see-more js_see-more" data-get="category_blogs" data-id="{$category['category_id']}" data-country="{if $selected_country}{$selected_country['country_id']}{else}all{/if}">
							<span>{__("More Blogs")}</span>
							<div class="loader loader_small x-hidden"></div>
						</div>
						<!-- see-more -->
					{else}
						{include file='_no_data.tpl'}
					{/if}
				</div>
				<!-- left panel -->

				<!-- right panel -->
				<div class="col-lg-4 sidebar rightcol">
					{if $blogs_categories}
						<!-- blogs categories -->
						<div class="ele_content p-0 mb15">
							<div class="valign ele_sidebar_widget_title">
								<b>{__("Sub-Categories")}</b>
							</div>
							<div class="valign ele_htag">
								{foreach $blogs_categories as $category}
									<a class="trending-item" href="{$system['system_url']}/blogs/category/{$category['category_id']}/{$category['category_url']}"> <div class="hash">{__($category['category_name'])}</div></a>
								{/foreach}
							</div>
						</div>
						<!-- blogs categories -->
					{/if}

					<!-- read more -->
					<div class="ele_content p-0 mb15">
						<div class="valign ele_sidebar_widget_title">
							<b>{__("Read More")}</b>
						</div>
						<div class="read_more_articles">
							{foreach $latest_blogs as $blog}
								<div class="valign justify-content-between read_more_articles_list">
									<div class="blog-content w-100">
										<div class="valign w-100 mw-100">
											<a href="{$blog['post_author_url']}" class="post-avatar"><div class="post-avatar-picture" style="background-image:url('{$blog['post_author_picture']}');"></div></a>
											<div class="post-meta">
												<div class="bold"><a class="truncate d-block" href="{$blog['post_author_url']}">{$blog['post_author_name']}</a></div>
											</div>
										</div>
										<h3><a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}">{$blog['blog']['title']}</a></h3>
										<div class="">
											<a class="category" href="{$system['system_url']}/blogs/category/{$blog['blog']['category_id']}/{$blog['blog']['category_url']}">{$blog['blog']['category_name']}</a> | 
											<span class="post-time">
												<span class="js_moment" data-time="{$blog['time']}">{$blog['time']}</span>
											</span>
										</div>
									</div>
									<div class="blog-image">
										<a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}"><img src="{$blog['blog']['parsed_cover']}"></a>
									</div>
								</div>
							{/foreach}
						</div>
					</div>
					<!-- read more -->
					
					{include file='_ads.tpl'}
					{include file='_widget.tpl'}
				</div>
				<!-- right panel -->
			</div>
		<!-- content panel -->
		
		<!-- Schema.org structured data for blog category page -->
            <script type="application/ld+json">
              {
                "@context": "https://schema.org",
                "@type": "CollectionPage",
                "name": "{__($category['category_name'])|escape:'html'}",
                "description": "{if $category['category_description']}{__($category['category_description'])|escape:'html'}{else}{__($category['category_name'])|escape:'html'} {__("blogs")|escape:'html'}{/if}",
                "url": "{$system['system_url']}/blogs/category/{$category['category_id']}/{$category['category_url']}",
                "publisher": {
                  "@type": "Organization",
                  "name": "{$system['system_title']|escape:'html'}",
                  "url": "{$system['system_url']}"
                },
                "mainEntity": {
                  "@type": "ItemList",
                  "numberOfItems": "{if $blogs}{$blogs|count}{else}0{/if}",
                  "itemListElement": [
                    {if $blogs}
                      {foreach $blogs as $blog name=categoryBlogList}
                        {
                          "@type": "ListItem",
                          "position": {$smarty.foreach.categoryBlogList.iteration},
                          "item": {
                            "@type": "BlogPosting",
                            "headline": "{$blog['blog']['title']|escape:'html'}",
                            "description": "{$blog['blog']['text']|strip_tags|truncate:150|escape:'html'}",
                            "image": "{if $blog['blog']['cover']}{$blog['blog']['parsed_cover']}{/if}",
                            "author": {
                              "@type": "Person",
                              "name": "{$blog['post_author_name']|escape:'html'}",
                              "url": "{$blog['post_author_url']}"
                            },
                            "datePublished": "{$blog['time']}",
                            "url": "{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}",
                            "articleSection": "{__($blog['blog']['category_name'])|escape:'html'}"
                          }
                          }{if !$smarty.foreach.categoryBlogList.last},{/if}
                        {/foreach}
                      {/if}
                    ]
                  }
                }
            </script>
            <!-- Schema.org structured data for blog category page -->
        
	{elseif $view == "blog"}

		<!-- content panel -->
			{if $blog['needs_payment']}
				<div class="blog-wrapper">
					<div class="ptb20 plr20">
						{include file='_need_payment.tpl' post_id=$blog['post_id'] price=$blog['post_price'] discounted_price=$blog['post_price_discounted'] paid_text=$blog['paid_text']}
					</div>
				</div>
            {elseif $blog['needs_subscription']}
				<div class="blog-wrapper">
					<div class="ptb20 plr20">
						{include file='_need_subscription.tpl' node_type=$blog['needs_subscription_type'] node_id=$blog['needs_subscription_id'] price=$blog['needs_subscription_price'] discount_enabled=$blog['needs_subscription_discount_enabled'] discount_percent=$blog['needs_subscription_discount_percent']}
					</div>
				</div>
            {elseif $blog['needs_pro_package']}
				<div class="blog-wrapper">
					<div class="ptb20 plr20">
						{include file='_need_pro_package.tpl' _manage = true}
					</div>
				</div>
			{elseif $blog['needs_age_verification']}
				<div class="blog-wrapper">
					<div class="ptb20 plr20">
						{include file='_need_age_verification.tpl'}
					</div>
				</div>
            {else}
			<div class="ele_content mb30 blog {if ($blog['is_pending']) OR ($blog['in_group'] && !$blog['group_approved']) OR ($blog['in_event'] && !$blog['event_approved'])}pending{/if}" data-id="{$blog['post_id']}">
				{if ($blog['is_pending']) OR ($blog['in_group'] && !$blog['group_approved']) OR ($blog['in_event'] && !$blog['event_approved'])}
					<div class="pending-icon">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="16" height="16"><path fill="currentColor" d="M12,2C6.5,2,2,6.5,2,12s4.5,10,10,10s10-4.5,10-10S17.5,2,12,2z M15.55,15.8l-4.08-2.51c-0.3-0.18-0.48-0.5-0.48-0.85 V7.75C11,7.34,11.34,7,11.75,7s0.75,0.34,0.75,0.75v4.45l3.84,2.31c0.36,0.22,0.48,0.69,0.26,1.05 C16.38,15.91,15.91,16.02,15.55,15.8z"></path></svg> {__("Pending Post")}
					</div>
                {/if}
				
				<div class="valign justify-content-between">
					<div class="dropdown">
						<button class="dropdown-toggle btn btn-sm btn-mat btn-secondary" data-toggle="dropdown" aria-expanded="false"><svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18"><path fill="currentColor" d="M18,16.08C17.24,16.08 16.56,16.38 16.04,16.85L8.91,12.7C8.96,12.47 9,12.24 9,12C9,11.76 8.96,11.53 8.91,11.3L15.96,7.19C16.5,7.69 17.21,8 18,8A3,3 0 0,0 21,5A3,3 0 0,0 18,2A3,3 0 0,0 15,5C15,5.24 15.04,5.47 15.09,5.7L8.04,9.81C7.5,9.31 6.79,9 6,9A3,3 0 0,0 3,12A3,3 0 0,0 6,15C6.79,15 7.5,14.69 8.04,14.19L15.16,18.34C15.11,18.55 15.08,18.77 15.08,19C15.08,20.61 16.39,21.91 18,21.91C19.61,21.91 20.92,20.61 20.92,19A2.92,2.92 0 0,0 18,16.08Z"></path></svg> Share</button>
						<ul class="dropdown-menu ele_create_menu" role="menu">
							<li>
								<a href="http://www.facebook.com/sharer.php?u={$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}" target="_blank">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M12 2C6.477 2 2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.879V14.89h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.989C18.343 21.129 22 16.99 22 12c0-5.523-4.477-10-10-10z"></path><path fill="currentColor" d="M13 19.938A8.001 8.001 0 0 0 12 4a8 8 0 0 0-1 15.938V14H9v-2h2v-1.654c0-1.337.14-1.822.4-2.311A2.726 2.726 0 0 1 12.536 6.9c.382-.205.857-.328 1.687-.381.329-.021.755.005 1.278.08v1.9H15c-.917 0-1.296.043-1.522.164a.727.727 0 0 0-.314.314c-.12.226-.164.45-.164 1.368V12h2.5l-.5 2h-2v5.938zM12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z"></path></svg> {__("Share to")} Facebook
								</a>
							</li>
							<li>
								<a href="https://twitter.com/intent/tweet?url={$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}" target="_blank">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M22.162 5.656a8.384 8.384 0 0 1-2.402.658A4.196 4.196 0 0 0 21.6 4c-.82.488-1.719.83-2.656 1.015a4.182 4.182 0 0 0-7.126 3.814 11.874 11.874 0 0 1-8.62-4.37 4.168 4.168 0 0 0-.566 2.103c0 1.45.738 2.731 1.86 3.481a4.168 4.168 0 0 1-1.894-.523v.052a4.185 4.185 0 0 0 3.355 4.101 4.21 4.21 0 0 1-1.89.072A4.185 4.185 0 0 0 7.97 16.65a8.394 8.394 0 0 1-6.191 1.732 11.83 11.83 0 0 0 6.41 1.88c7.693 0 11.9-6.373 11.9-11.9 0-.18-.005-.362-.013-.54a8.496 8.496 0 0 0 2.087-2.165z"></path><path fill="currentColor" d="M15.3 5.55a2.9 2.9 0 0 0-2.9 2.847l-.028 1.575a.6.6 0 0 1-.68.583l-1.561-.212c-2.054-.28-4.022-1.226-5.91-2.799-.598 3.31.57 5.603 3.383 7.372l1.747 1.098a.6.6 0 0 1 .034.993L7.793 18.17c.947.059 1.846.017 2.592-.131 4.718-.942 7.855-4.492 7.855-10.348 0-.478-1.012-2.141-2.94-2.141zm-4.9 2.81a4.9 4.9 0 0 1 8.385-3.355c.711-.005 1.316.175 2.669-.645-.335 1.64-.5 2.352-1.214 3.331 0 7.642-4.697 11.358-9.463 12.309-3.268.652-8.02-.419-9.382-1.841.694-.054 3.514-.357 5.144-1.55C5.16 15.7-.329 12.47 3.278 3.786c1.693 1.977 3.41 3.323 5.15 4.037 1.158.475 1.442.465 1.973.538z"></path></svg> {__("Share to")} Twitter
								</a>
							</li>
							<li>
								<a href="https://www.linkedin.com/shareArticle?mini=true&url={$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}" target="_blank">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M6.94 5a2 2 0 1 1-4-.002 2 2 0 0 1 4 .002zM7 8.48H3V21h4V8.48zm6.32 0H9.34V21h3.94v-6.57c0-3.66 4.77-4 4.77 0V21H22v-7.93c0-6.17-7.06-5.94-8.72-2.91l.04-1.68z"></path><path fill="currentColor" d="M12 9.55C12.917 8.613 14.111 8 15.5 8a5.5 5.5 0 0 1 5.5 5.5V21h-2v-7.5a3.5 3.5 0 0 0-7 0V21h-2V8.5h2v1.05zM5 6.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm-1 2h2V21H4V8.5z"></path></svg> {__("Share to")} Linkedin
								</a>
							</li>
							<li>
								<a href="https://api.whatsapp.com/send?text={$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}" target="_blank">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M2.004 22l1.352-4.968A9.954 9.954 0 0 1 2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10a9.954 9.954 0 0 1-5.03-1.355L2.004 22zM8.391 7.308a.961.961 0 0 0-.371.1 1.293 1.293 0 0 0-.294.228c-.12.113-.188.211-.261.306A2.729 2.729 0 0 0 6.9 9.62c.002.49.13.967.33 1.413.409.902 1.082 1.857 1.971 2.742.214.213.423.427.648.626a9.448 9.448 0 0 0 3.84 2.046l.569.087c.185.01.37-.004.556-.013a1.99 1.99 0 0 0 .833-.231c.166-.088.244-.132.383-.22 0 0 .043-.028.125-.09.135-.1.218-.171.33-.288.083-.086.155-.187.21-.302.078-.163.156-.474.188-.733.024-.198.017-.306.014-.373-.004-.107-.093-.218-.19-.265l-.582-.261s-.87-.379-1.401-.621a.498.498 0 0 0-.177-.041.482.482 0 0 0-.378.127v-.002c-.005 0-.072.057-.795.933a.35.35 0 0 1-.368.13 1.416 1.416 0 0 1-.191-.066c-.124-.052-.167-.072-.252-.109l-.005-.002a6.01 6.01 0 0 1-1.57-1c-.126-.11-.243-.23-.363-.346a6.296 6.296 0 0 1-1.02-1.268l-.059-.095a.923.923 0 0 1-.102-.205c-.038-.147.061-.265.061-.265s.243-.266.356-.41a4.38 4.38 0 0 0 .263-.373c.118-.19.155-.385.093-.536-.28-.684-.57-1.365-.868-2.041-.059-.134-.234-.23-.393-.249-.054-.006-.108-.012-.162-.016a3.385 3.385 0 0 0-.403.004z"></path><path fill="currentColor" d="M7.253 18.494l.724.423A7.953 7.953 0 0 0 12 20a8 8 0 1 0-8-8c0 1.436.377 2.813 1.084 4.024l.422.724-.653 2.401 2.4-.655zM2.004 22l1.352-4.968A9.954 9.954 0 0 1 2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10a9.954 9.954 0 0 1-5.03-1.355L2.004 22zM8.391 7.308c.134-.01.269-.01.403-.004.054.004.108.01.162.016.159.018.334.115.393.249.298.676.588 1.357.868 2.04.062.152.025.347-.093.537a4.38 4.38 0 0 1-.263.372c-.113.145-.356.411-.356.411s-.099.118-.061.265c.014.056.06.137.102.205l.059.095c.256.427.6.86 1.02 1.268.12.116.237.235.363.346.468.413.998.75 1.57 1l.005.002c.085.037.128.057.252.11.062.026.126.049.191.066a.35.35 0 0 0 .367-.13c.724-.877.79-.934.796-.934v.002a.482.482 0 0 1 .378-.127c.06.004.121.015.177.04.531.243 1.4.622 1.4.622l.582.261c.098.047.187.158.19.265.004.067.01.175-.013.373-.032.259-.11.57-.188.733a1.155 1.155 0 0 1-.21.302 2.378 2.378 0 0 1-.33.288 3.71 3.71 0 0 1-.125.09 5.024 5.024 0 0 1-.383.22 1.99 1.99 0 0 1-.833.23c-.185.01-.37.024-.556.014-.008 0-.568-.087-.568-.087a9.448 9.448 0 0 1-3.84-2.046c-.226-.199-.435-.413-.649-.626-.89-.885-1.562-1.84-1.97-2.742A3.47 3.47 0 0 1 6.9 9.62a2.729 2.729 0 0 1 .564-1.68c.073-.094.142-.192.261-.305.127-.12.207-.184.294-.228a.961.961 0 0 1 .371-.1z"></path></svg> {__("Share to")} WhatsApp
								</a>
							</li>
							<li>
								<a href="https://pinterest.com/pin/create/button/?url={$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}" target="_blank">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M13.37 2.094A10.003 10.003 0 0 0 8.002 21.17a7.757 7.757 0 0 1 .163-2.293c.185-.839 1.296-5.463 1.296-5.463a3.739 3.739 0 0 1-.324-1.577c0-1.485.857-2.593 1.923-2.593a1.334 1.334 0 0 1 1.342 1.508c0 .9-.578 2.262-.88 3.54a1.544 1.544 0 0 0 1.575 1.923c1.898 0 3.17-2.431 3.17-5.301 0-2.2-1.457-3.848-4.143-3.848a4.746 4.746 0 0 0-4.93 4.794 2.96 2.96 0 0 0 .648 1.97.48.48 0 0 1 .162.554c-.046.184-.162.623-.208.784a.354.354 0 0 1-.51.254c-1.384-.554-2.036-2.077-2.036-3.816 0-2.847 2.384-6.255 7.154-6.255 3.796 0 6.32 2.777 6.32 5.747 0 3.909-2.177 6.848-5.394 6.848a2.861 2.861 0 0 1-2.454-1.246s-.578 2.316-.692 2.754a8.026 8.026 0 0 1-1.019 2.131c.923.28 1.882.42 2.846.416a9.988 9.988 0 0 0 9.996-10.003 10.002 10.002 0 0 0-8.635-9.903z"></path><path fill="currentColor" d="M8.49 19.191c.024-.336.072-.671.144-1.001.063-.295.254-1.13.534-2.34l.007-.03.387-1.668c.079-.34.14-.604.181-.692a3.46 3.46 0 0 1-.284-1.423c0-1.337.756-2.373 1.736-2.373.36-.006.704.15.942.426.238.275.348.644.302.996 0 .453-.085.798-.453 2.035-.071.238-.12.404-.166.571-.051.188-.095.358-.132.522-.096.386-.008.797.237 1.106a1.2 1.2 0 0 0 1.006.456c1.492 0 2.6-1.985 2.6-4.548 0-1.97-1.29-3.274-3.432-3.274A3.878 3.878 0 0 0 9.2 9.1a4.13 4.13 0 0 0-1.195 2.961 2.553 2.553 0 0 0 .512 1.644c.181.14.25.383.175.59-.041.168-.14.552-.176.68a.41.41 0 0 1-.216.297.388.388 0 0 1-.355.002c-1.16-.479-1.796-1.778-1.796-3.44 0-2.985 2.491-5.584 6.192-5.584 3.135 0 5.481 2.329 5.481 5.14 0 3.532-1.932 6.104-4.69 6.104a2.508 2.508 0 0 1-2.046-.959l-.043.177-.207.852-.002.007c-.146.6-.248 1.017-.288 1.174-.106.355-.24.703-.4 1.04a8 8 0 1 0-1.656-.593zM12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10z"></path></svg> {__("Share to")} Pinterest
								</a>
							</li>
							<li>
								<a href="https://reddit.com/submit?url={$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}" target="_blank">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" class="hover_path" d="M12 22C6.477 22 2 17.523 2 12S6.477 2 12 2s10 4.477 10 10-4.477 10-10 10zm6.67-10a1.46 1.46 0 0 0-2.47-1 7.12 7.12 0 0 0-3.85-1.23L13 6.65l2.14.45a1 1 0 1 0 .13-.61L12.82 6a.31.31 0 0 0-.37.24l-.74 3.47a7.14 7.14 0 0 0-3.9 1.23 1.46 1.46 0 1 0-1.61 2.39 2.87 2.87 0 0 0 0 .44c0 2.24 2.61 4.06 5.83 4.06s5.83-1.82 5.83-4.06a2.87 2.87 0 0 0 0-.44 1.46 1.46 0 0 0 .81-1.33zm-10 1a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm5.81 2.75a3.84 3.84 0 0 1-2.47.77 3.84 3.84 0 0 1-2.47-.77.27.27 0 0 1 .38-.38A3.27 3.27 0 0 0 12 16a3.28 3.28 0 0 0 2.09-.61.28.28 0 1 1 .39.4v-.04zm-.18-1.71a1 1 0 1 1 1-1 1 1 0 0 1-1.01 1.04l.01-.04z"></path><path fill="currentColor" d="M11.102 7.815l.751-3.536a2 2 0 0 1 2.373-1.54l3.196.68a2 2 0 1 1-.416 1.956l-3.196-.68-.666 3.135c1.784.137 3.557.73 5.163 1.7a3.192 3.192 0 0 1 4.741 2.673v.021a3.192 3.192 0 0 1-1.207 2.55 2.855 2.855 0 0 1-.008.123c0 3.998-4.45 7.03-9.799 7.03-5.332 0-9.708-3.024-9.705-6.953a5.31 5.31 0 0 1-.01-.181 3.192 3.192 0 0 1 3.454-5.35 11.446 11.446 0 0 1 5.329-1.628zm9.286 5.526c.408-.203.664-.62.661-1.075a1.192 1.192 0 0 0-2.016-.806l-.585.56-.67-.455c-1.615-1.098-3.452-1.725-5.23-1.764h-1.006c-1.875.029-3.651.6-5.237 1.675l-.663.45-.584-.55a1.192 1.192 0 1 0-1.314 1.952l.633.29-.054.695c-.013.17-.013.339.003.584 0 2.71 3.356 5.03 7.708 5.03 4.371 0 7.799-2.336 7.802-5.106a3.31 3.31 0 0 0 0-.508l-.052-.672.604-.3zM7 13.5a1.5 1.5 0 1 1 3 0 1.5 1.5 0 0 1-3 0zm7 0a1.5 1.5 0 1 1 3 0 1.5 1.5 0 0 1-3 0zm-1.984 5.103c-1.397 0-2.767-.37-3.882-1.21a.424.424 0 0 1 .597-.597c.945.693 2.123.99 3.269.99s2.33-.275 3.284-.959a.439.439 0 0 1 .732.206.469.469 0 0 1-.119.423c-.684.797-2.484 1.147-3.881 1.147z"></path></svg> {__("Share to")} Reddit
								</a>
							</li>
						</ul>
					</div>
					<a class="blog-meta-counter unselectable" href="#blog-comments"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="18" height="18"><path fill="currentColor" d="M2 8.994A5.99 5.99 0 0 1 8 3h8c3.313 0 6 2.695 6 5.994V21H8c-3.313 0-6-2.695-6-5.994V8.994zM14 11v2h2v-2h-2zm-6 0v2h2v-2H8z"></path></svg> {$blog['comments']} {__("Comments")}</a>
				</div>
				
				<div class="text-center plr10 ele_read_blog_top">
					<a class="postCategory" href="{$system['system_url']}/blogs/category/{$blog['blog']['category_id']}/{$blog['blog']['category_url']}">{__($blog['blog']['category_name'])}</a>
					<h2>{$blog['blog']['title']}</h2>
					<div class="text-justify ele_read_blog_author">
						<a href="{$blog['post_author_url']}" class="post-avatar"><div class="post-avatar-picture" style="background-image:url('{$blog['post_author_picture']}');"></div></a>
						<div class="post-meta">
							<div class="bold">
								<span class="js_user-popover" data-type="{$blog['user_type']}" data-uid="{$blog['user_id']}">
									<a class="truncate d-block" href="{$blog['post_author_url']}">{$blog['post_author_name']}
									{if $blog['post_author_verified']}
										{if $blog['user_type'] == "user"}
											<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
										{else}
											<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified Page")}'><svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
										{/if}
									{/if}
									</a>
								</span>
							</div>
							<div class="post-time">
								<span class="js_moment" data-time="{$blog['time']}">{$blog['time']}</span>
								• <span class="views">{$blog['blog']['views']} {__("Views")}</span>
								{if $blog['for_subscriptions']}
									• <span class="">{__("Subscriptions")|upper}</span>
								{/if}
								{if $blog['is_paid']}
									• <span class="">{__("Paid")|upper}</span>
								{/if}
							</div>
						</div>
					</div>
					
					{if $blog['is_collaborative']}
						<div class="collaborative-users">
							<div class="collaborative-users__label">{__("Collaborated with")}</div>
							<span class="collaborative-users__list">
								{foreach $blog['collaborative_users'] as $user}
									<span class="js_user-popover collaborative-users__tag" data-type="user" data-uid="{$user['user_id']}">
										<a class="collaborative-users__link" href="{$system['system_url']}/{$user['user_name']}">
											<img class="collaborative-users__avatar" src="{$user['user_picture']}" width="24" height="24" alt="{$user['user_fullname']|escape:'html'}">
											<span class="collaborative-users__name">{$user['user_fullname']}</span>
										</a>
									</span>
								{/foreach}
							</span>
						</div>
					{/if}
					
					{if $blog['manage_post']}
						<div class="mb30">
							<a class="btn btn-sm btn-mat btn-success" href="{$system['system_url']}/blogs/edit/{$blog['post_id']}"> {__("Edit")}</a>
							<button class="btn btn-sm btn-mat btn-danger js_delete-blog" data-id="{$blog['post_id']}">{__("Delete")}</button>
						</div>
					{/if}
				</div>
				
				<!-- blog cover -->
				{if $blog['blog']['cover']}
					<div class="position-relative ele_read_blog_img">
						<img class="position-absolute h-100 w-100" src="{$blog['blog']['parsed_cover']}">
					</div>
				{/if}
				<!-- blog cover -->
				
				<div class="px-md-3 pt30">
					<div class="row mx-md-n4">
						<div class="col-lg-8 middlecol px-md-4 mb20">
							<!-- blog text -->
							<div class="blog-text text-with-list" dir="auto">
								{$blog['blog']['parsed_text']}
							</div>
							<!-- blog text -->
							
							<!-- blog tags -->
							{if $blog['blog']['parsed_tags']}
								<div class="blog-tags">
									<ul>
										{foreach $blog['blog']['parsed_tags'] as $tag}
											<li><a href="{$system['system_url']}/search/hashtag/{$tag}">#{__($tag)}</a></li>
										{/foreach}
									</ul>
								</div>
							{/if}
							<!-- blog tags -->
							
							<!-- blog references -->
							{if $blog['blog']['references']}
								<section class="blog-references-section" aria-labelledby="blog-references-title">
									<h3 id="blog-references-title" class="blog-references-heading">
										<i class="fas fa-book-open" aria-hidden="true"></i>
										{__("References")}
									</h3>
									<ol class="blog-references-list">
										{foreach $blog['blog']['references'] as $reference}
											<li class="blog-references-item">
												<a href="{$reference['link']}" class="blog-references-link" target="_blank" rel="noopener noreferrer">
													{$reference['title']}
													<span class="blog-references-external" title="{__('Open link')}"><i class="fas fa-external-link-alt" aria-hidden="true"></i></span>
												</a>
											</li>
										{/foreach}
									</ol>
								</section>
							{/if}
							<!-- blog references -->
							
							<!-- post actions -->
							{if $user->_logged_in}
								<hr class="mtb30">
								<div class="valign post-actions mx-md-n3">
									<div class="valign">
									<!-- reactions -->
									<div class="action-btn unselectable reactions-wrapper {if $blog['i_react']}js_unreact-post{/if}" data-reaction="{$blog['i_reaction']}">
										<!-- reaction-btn -->
										<div class="reaction-btn">
											{if !$blog['i_react']}
												<div class="reaction-btn-icon">
													<i class="fa fa-smile fa-fw"></i>
												</div>
												<span class="reaction-btn-name">{__("React")}</span>
											{else}
												<div class="reaction-btn-icon">
													<div class="inline-emoji no_animation">
														{include file='__reaction_emojis.tpl' _reaction=$blog['i_reaction']}
													</div>
												</div>
												<span class="reaction-btn-name" style="{$system['reactions'][$blog['i_reaction']]['color']}">{__($system['reactions'][$blog['i_reaction']]['title'])}</span>
											{/if}
										</div>
										<!-- reaction-btn -->

										<!-- reactions-container -->
										<div class="reactions-container">
											{foreach $system['reactions_enabled'] as $reaction}
												<div class="reactions_item reaction reaction-{$reaction@iteration} js_react-post" data-reaction="{$reaction['reaction']}" data-reaction-color="{$reaction['color']}" data-title="{__($reaction['title'])}">
													{include file='__reaction_emojis.tpl' _reaction=$reaction['reaction']}
												</div>
											{/foreach}
										</div>
										<!-- reactions-container -->
									</div>
									<!-- reactions -->

									<!-- comment -->
									<div class="valign action-btn js_comment {if $blog['comments_disabled']}x-hidden{/if}">
										<div class="stat-ico-bg"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17.98 10.79V14.79C17.98 15.05 17.97 15.3 17.94 15.54C17.71 18.24 16.12 19.58 13.19 19.58H12.79C12.54 19.58 12.3 19.7 12.15 19.9L10.95 21.5C10.42 22.21 9.56 22.21 9.03 21.5L7.82999 19.9C7.69999 19.73 7.41 19.58 7.19 19.58H6.79001C3.60001 19.58 2 18.79 2 14.79V10.79C2 7.86001 3.35001 6.27001 6.04001 6.04001C6.28001 6.01001 6.53001 6 6.79001 6H13.19C16.38 6 17.98 7.60001 17.98 10.79Z" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M21.98 6.79001V10.79C21.98 13.73 20.63 15.31 17.94 15.54C17.97 15.3 17.98 15.05 17.98 14.79V10.79C17.98 7.60001 16.38 6 13.19 6H6.79004C6.53004 6 6.28004 6.01001 6.04004 6.04001C6.27004 3.35001 7.86004 2 10.79 2H17.19C20.38 2 21.98 3.60001 21.98 6.79001Z" stroke="currentColor" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M13.4955 13.25H13.5045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M9.9955 13.25H10.0045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M6.4955 13.25H6.5045" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg></div><span>{__("Comment")}</span>
									</div>
									<!-- comment -->
									</div>

									<div class="valign">
									<!-- share -->
									{if $blog['privacy'] == "public"}
										<div class="valign action-btn" data-toggle="modal" data-url="posts/share.php?do=create&post_id={$blog['post_id']}" title='{__("Share")}'>
											<div class="stat-ico-bg"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.44 8.8999C20.04 9.2099 21.51 11.0599 21.51 15.1099V15.2399C21.51 19.7099 19.72 21.4999 15.25 21.4999H8.73998C4.26998 21.4999 2.47998 19.7099 2.47998 15.2399V15.1099C2.47998 11.0899 3.92998 9.2399 7.46998 8.9099" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 15.0001V3.62012" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.35 5.85L12 2.5L8.65002 5.85" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg></div>
										</div>
									{/if}
									<!-- share -->
									
									<!-- tips -->
									{if $user->_logged_in && $blog['author_id'] != $user->_data['user_id'] && $blog['tips_enabled']}
										<div class="valign action-btn" data-toggle="modal" data-url="#send-tip" data-options='{ "id": "{$blog['author_id']}"}' title='{__("Tip")}'>
											<div class="stat-ico-bg"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8 11.4C8 12.17 8.6 12.8 9.33 12.8H10.83C11.47 12.8 11.99 12.25 11.99 11.58C11.99 10.85 11.67 10.59 11.2 10.42L8.8 9.57995C8.32 9.40995 8 9.14995 8 8.41995C8 7.74995 8.52 7.19995 9.16 7.19995H10.66C11.4 7.20995 12 7.82995 12 8.59995" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M10 12.8501V13.5901" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M10 6.40991V7.18991" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M9.99 17.98C14.4028 17.98 17.98 14.4028 17.98 9.99C17.98 5.57724 14.4028 2 9.99 2C5.57724 2 2 5.57724 2 9.99C2 14.4028 5.57724 17.98 9.99 17.98Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path><path d="M12.98 19.88C13.88 21.15 15.35 21.98 17.03 21.98C19.76 21.98 21.98 19.76 21.98 17.03C21.98 15.37 21.16 13.9 19.91 13" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path></svg></div>
										</div>
									{/if}
									<!-- tips -->
									</div>
								</div>
							{/if}
							<!-- post actions -->
							
							<!-- post stats -->
							<div class="valign post-stats plr0">
								<!-- reactions stats -->
								<div class="valign">
								{if $blog['reactions_total_count'] > 0}
									<div data-toggle="modal" data-url="posts/who_reacts.php?post_id={$blog['post_id']}">
										<div class="reactions-stats">
											{foreach $blog['reactions'] as $reaction_type => $reaction_count}
												{if $reaction_count > 0}
													<div class="reactions-stats-item">
														<div class="inline-emoji no_animation">
															{include file='__reaction_emojis.tpl' _reaction=$reaction_type}
														</div>
													</div>
												{/if}
											{/foreach}
											<!-- reactions count -->
											<span>{$blog['reactions_total_count_formatted']}</span>
											<!-- reactions count -->
										</div>
									</div>
								{/if}
								</div>
								<!-- reactions stats -->
							</div>
							<!-- post stats -->
							
							<!-- post footer -->
							<div class="post-footer plr0" id="blog-comments">
								{if $user->_logged_in}
									<!-- comments -->
									{include file='__feeds_post.comments.tpl' post=$blog}
									<!-- comments -->
								{else}
									<div class="ptb10">
										<a href="{$system['system_url']}/signin">{__("Please log in to like, share and comment!")}</a>
									</div>
								{/if}
							</div>
                            <!-- post footer -->
							
							{include file='_ads.tpl' ads=$ads_footer}
						</div>
						
						<div class="col-lg-4 sidebar rightcol px-md-4 js_sticky-sidebar">
							<!-- read more -->
							<div class="mb15">
								<div class="valign ele_sidebar_widget_title plr0">
									<b>{__("Read More")}</b>
								</div>
								<div class="read_more_articles plr0">
									{foreach $latest_blogs as $blog}
										<div class="valign justify-content-between read_more_articles_list">
											<div class="blog-content w-100">
												<div class="valign w-100 mw-100">
													<a href="{$blog['post_author_url']}" class="post-avatar"><div class="post-avatar-picture" style="background-image:url('{$blog['post_author_picture']}');"></div></a>
													<div class="post-meta">
														<div class="bold"><a class="truncate d-block" href="{$blog['post_author_url']}">{$blog['post_author_name']}</a></div>
													</div>
												</div>
												<h3><a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}">{$blog['blog']['title']}</a></h3>
												<div class="">
													<a class="category" href="{$system['system_url']}/blogs/category/{$blog['blog']['category_id']}/{$blog['blog']['category_url']}">{$blog['blog']['category_name']}</a> | 
													<span class="post-time">
														<span class="js_moment" data-time="{$blog['time']}">{$blog['time']}</span>
													</span>
												</div>
											</div>
											<div class="blog-image">
												<a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}"><img src="{$blog['blog']['parsed_cover']}"></a>
											</div>
										</div>
									{/foreach}
								</div>
							</div>
							<!-- read more -->
							
							<hr>
							
							<!-- blogs categories -->
							<div class="mb15">
								<div class="valign ele_sidebar_widget_title plr0">
									<b>{__("Categories")}</b>
								</div>
								<div class="valign ele_htag plr0">
									{foreach $blogs_categories as $category}
										<a class="trending-item" href="{$system['system_url']}/blogs/category/{$category['category_id']}/{$category['category_url']}"> <div class="hash">{__($category['category_name'])}</div></a>
									{/foreach}
								</div>
							</div>
							<!-- blogs categories -->
							
							{include file='_ads.tpl'}
							{include file='_widget.tpl'}
						</div>
					</div>
				</div>
				
			</div>
			{/if}
		<!-- content panel -->
		
		<!-- Schema.org structured data for blog post -->
                  <script type="application/ld+json">
                    {
                      "@context": "https://schema.org",
                      "@type": "BlogPosting",
                      "headline": "{$blog['blog']['title']|escape:'html'}",
                      "description": "{$blog['blog']['text']|strip_tags|truncate:200|escape:'html'}",
                      "image": "{if $blog['blog']['cover']}{$blog['blog']['parsed_cover']}{/if}",
                      "author": {
                        "@type": "Person",
                        "name": "{$blog['post_author_name']|escape:'html'}",
                        "url": "{$blog['post_author_url']}"
                      },
                      "publisher": {
                        "@type": "Organization",
                        "name": "{$system['system_title']|escape:'html'}",
                        "url": "{$system['system_url']}"
                      },
                      "datePublished": "{$blog['time']}",
                      "dateModified": "{$blog['time']}",
                      "mainEntityOfPage": {
                        "@type": "WebPage",
                        "@id": "{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}"
                      },
                      "url": "{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}",
                      "articleSection": "{__($blog['blog']['category_name'])|escape:'html'}",
                      "keywords": "{if $blog['blog']['parsed_tags']}{foreach $blog['blog']['parsed_tags'] as $tag}{$tag|escape:'html'}{if !$tag@last}, {/if}{/foreach}{/if}",
                      "wordCount": "{$blog['blog']['text']|strip_tags|strlen}",
                      "commentCount": "{$blog['comments_count']}",
                      "interactionStatistic": [{
                          "@type": "InteractionCounter",
                          "interactionType": "https://schema.org/CommentAction",
                          "userInteractionCount": "{$blog['comments_count']}"
                        },
                        {
                          "@type": "InteractionCounter",
                          "interactionType": "https://schema.org/ViewAction",
                          "userInteractionCount": "{$blog['views_count']}"
                        }
                      ]
                    }
                  </script>
                  <!-- Schema.org structured data for blog post -->
        
	{elseif $view == "edit"}

		<!-- content panel -->
			<!-- content -->
			<div class="ele_new_blog">
				<div class="js_ajax-forms-html " data-url="posts/blog.php?do=edit&id={$blog['post_id']}">
					<div class="valign justify-content-between ele_new_blog_hdr">
						<div class="valign ele_page_hdng border-0 mb0 ptb0">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17,14H19V17H22V19H19V22H17V19H14V17H17V14M20,11V8H4V11H20M13,13V14.68C12.37,15.63 12,16.77 12,18C12,19.09 12.29,20.12 12.8,21H4A2,2 0 0,1 2,19V3L3.67,4.67L5.33,3L7,4.67L8.67,3L10.33,4.67L12,3L13.67,4.67L15.33,3L17,4.67L18.67,3L20.33,4.67L22,3V13.5C20.93,12.58 19.53,12 18,12C16.77,12 15.63,12.37 14.68,13H13M11,19V13H4V19H11Z"></path></svg> {__("Edit Blog")}
						</div>
						<div>
							<a class="btn btn-mat" href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
							<button type="button" class="btn btn-danger btn-mat js_delete-blog mr10" data-id="{$blog['post_id']}">{__("Delete Blog")}</button>
                            <button type="submit" class="btn btn-primary btn-mat">{__("Publish")}</button>
						</div>
					</div>
					
					<div class="ele_new_blog_main ele_scroll">
						<div class="container">
							<!-- error -->
							<div class="alert alert-danger x-hidden"></div>
							<!-- error -->
						</div>
						
						<div class="container-fluid">
							<div class="mb-5">
								<input name="title" class="ele_new_blog_title" placeholder='{__("Add")} {__("Title")}' value="{$blog['blog']['title']}"/>
							</div>
						</div>
						
						<div class="container">
							<textarea name="text" class="form-control js_wysiwyg">{$blog['blog']['text']}</textarea>
						</div>
					</div>
					
					<div class="ele_new_blog_side ele_scroll">
						<div class="form-group">
							<div class="form-control-label bold">{__("Cover")}</div>
							{if $blog['blog']['cover'] == ''}
								<div class="x-image">
									<button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
										<span>×</span>
									</button>
									<div class="x-image-loader">
										<div class="progress x-progress">
											<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
									<input type="hidden" class="js_x-uploader-input" name="cover" value="">
								</div>
							{else}
								<div class="x-image" style="background-image: url('{$system['system_uploads']}/{$blog['blog']['cover']}')">
									<button type="button" class="close js_x-image-remover" title='{__("Remove")}'>
										<span>×</span>
									</button>
									<div class="x-image-loader">
										<div class="progress x-progress">
											<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
									<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
									<input type="hidden" class="js_x-uploader-input" name="cover" value="{$blog['blog']['cover']}">
								</div>
							{/if}
						</div>
						
						<label class="ele_field">
							<select name="category">
								<option>{__("Select Category")}</option>
								{foreach $blogs_categories as $category}
									{include file='__categories.recursive_options.tpl' data_category=$blog['blog']['category_id']}
								{/foreach}
							</select>
							<span>{__("Category")}</span>
						</label>
						
						<div class="ele_field">
							<input placeholder=" " class="js_tagify" name="tags" value="{$blog['blog']['tags']}">
							<span>{__("Tags")}</span>
						</div>
						<div class="help-block">{__("Type a tag name and press Enter or Comma to add it")}</div>
						
						<!-- references -->
						<div id="blog-references-list">
							{foreach $blog['blog']['references'] as $key => $reference}
								<div class="auto-connect-node">
									<div class="row form-group">
										<label class="col-md-12 form-label">
											{__("Reference")}
										</label>
										<div class="col-md-12">
											<input type="text" class="form-control mb10" name="references[{$key}][title]" placeholder="{__('Title')}" value="{$reference['title']}">
											<input type="text" class="form-control mb10" name="references[{$key}][link]" placeholder="{__('Link')}" value="{$reference['link']}">
											<div class="form-text">
												{__("Add a reference title and link to cite your source")}
											</div>
										</div>
									</div>
								</div>
							{/foreach}
						</div>
						<!-- references -->

						<!-- add reference -->
						<div class="add-auto-connect-node js_add-blog-reference">
							<i class="fas fa-plus-circle mr5"></i>{__("Add reference")}
						</div>
						<!-- add reference -->
						
						{if ($user->_data['can_receive_tip'] && $blog['user_type'] != "page") || $user->_data['can_monetize_content']}
							<hr>
						{/if}

						<!-- enable tips -->
						{if $user->_data['can_receive_tip'] && $blog['user_type'] != "page"}
							<div class="form-table-row mb-4">
								<div>
									<div class="form-control-label h6">{__("Enable Tips")}</div>
									<div class="form-text d-none d-sm-block mt0">{__("Allow people to send you tips")}</div>
								</div>
								<div class="text-right">
									<label class="switch sm" for="tips_enabled">
										<input type="checkbox" name="tips_enabled" id="tips_enabled" {if $blog['tips_enabled']} checked{/if}>
										<span class="slider round"></span>
									</label>
								</div>
							</div>
						{/if}
						<!-- enable tips -->

						<!-- only for subscribers -->
						{if $user->_data['can_monetize_content']}
							<div class="form-table-row mb-4 {if $blog['is_paid']}disabled{/if}" id="subscribers-toggle-wrapper">
								<div>
									<div class="form-control-label h6">{__("Subscribers Only")}</div>
									<div class="form-text d-none d-sm-block mt0">{__("Share this post to")} {__("subscribers only")}</div>
								</div>
								<div class="text-right">
									<label class="switch sm" for="subscribers_only">
										<input type="checkbox" name="subscribers_only" id="subscribers_only" class="js_publisher-subscribers-toggle" {if $blog['for_subscriptions']} checked{/if} {if $blog['is_paid']}disabled{/if}>
										<span class="slider round"></span>
									</label>
								</div>
							</div>
						{/if}
						<!-- only for subscribers -->

						<!-- paid post -->
						{if $user->_data['can_monetize_content'] && $user->_data['user_monetization_enabled']}
							<div class="form-table-row mb-4 {if $blog['for_subscriptions']}disabled{/if}" id="paid-toggle-wrapper">
								<div>
									<div class="form-control-label h6">{__("Paid Post")}</div>
									<div class="form-text d-none d-sm-block mt0">{__("Set a price to your post")}</div>
								</div>
								<div class="text-right">
									<label class="switch sm" for="paid_post">
										<input type="checkbox" name="paid_post" id="paid_post" class="js_publisher-paid-toggle" {if $blog['is_paid']} checked{/if} {if $blog['for_subscriptions']}disabled{/if}>
										<span class="slider round"></span>
									</label>
								</div>
							</div>
							
							<div class="{if !$blog['post_price']}x-hidden{/if}" id="paid-price-wrapper">
								<div class="d-flex flex-column tag_page_rate ele_pub_paid_post">
									<div class="set_price">
										<label>{__('Price')} ({$system['system_currency']})</label>
										<input type="text" name="paid_post_price" placeholder="0.00" value="{$blog['post_price']}">
									</div>
									<div class="set_desc" id="paid-text-wrapper">
										<label>{__("Description")}</label>
										<textarea class="form-control" name="paid_post_text" rows="2" placeholder='{__("Paid Post Description")}'>{$blog['paid_text']}</textarea>
									</div>
								</div>
							</div>
						{/if}
						<!-- paid post -->
					</div>
				</div>
			</div>
			<!-- content -->
		<!-- content panel -->
		
		<!-- Schema.org structured data for blog edit page -->
          <script type="application/ld+json">
            {
              "@context": "https://schema.org",
              "@type": "WebPage",
              "name": "{__("Edit Blog")|escape:'html'}: {$blog['blog']['title']|escape:'html'}",
              "description": "{__("Edit blog post")|escape:'html'}: {$blog['blog']['title']|escape:'html'}",
              "url": "{$system['system_url']}/blogs/edit/{$blog['post_id']}",
              "publisher": {
                "@type": "Organization",
                "name": "{$system['system_title']|escape:'html'}",
                "url": "{$system['system_url']}"
              },
              "breadcrumb": {
                "@type": "BreadcrumbList",
                "itemListElement": [{
                    "@type": "ListItem",
                    "position": 1,
                    "name": "{$system['system_title']|escape:'html'}",
                    "item": "{$system['system_url']}"
                  },
                  {
                    "@type": "ListItem",
                    "position": 2,
                    "name": "{__("Blogs")|escape:'html'}",
                    "item": "{$system['system_url']}/blogs"
                  },
                  {
                    "@type": "ListItem",
                    "position": 3,
                    "name": "{$blog['blog']['title']|escape:'html'}",
                    "item": "{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}"
                  },
                  {
                    "@type": "ListItem",
                    "position": 4,
                    "name": "{__("Edit")|escape:'html'}",
                    "item": "{$system['system_url']}/blogs/edit/{$blog['post_id']}"
                  }
                ]
              },
              "mainEntity": {
                "@type": "BlogPosting",
                "headline": "{$blog['blog']['title']|escape:'html'}",
                "description": "{$blog['blog']['text']|strip_tags|truncate:200|escape:'html'}",
                "image": "{if $blog['blog']['cover']}{$blog['blog']['parsed_cover']}{/if}",
                "author": {
                  "@type": "Person",
                  "name": "{$blog['post_author_name']|escape:'html'}",
                  "url": "{$blog['post_author_url']}"
                },
                "datePublished": "{$blog['time']}",
                "dateModified": "{$blog['time']}",
                "url": "{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}"
              }
            }
          </script>
          <!-- Schema.org structured data for blog edit page -->
        
	{elseif $view == "new"}
            
		<!-- content panel -->
			<!-- content -->
			<div class="ele_new_blog">
				<div class="js_ajax-forms-html" data-url="posts/blog.php?do=create">
					<div class="valign justify-content-between ele_new_blog_hdr">
						<div class="valign ele_page_hdng border-0 mb0 ptb0">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17,14H19V17H22V19H19V22H17V19H14V17H17V14M20,11V8H4V11H20M13,13V14.68C12.37,15.63 12,16.77 12,18C12,19.09 12.29,20.12 12.8,21H4A2,2 0 0,1 2,19V3L3.67,4.67L5.33,3L7,4.67L8.67,3L10.33,4.67L12,3L13.67,4.67L15.33,3L17,4.67L18.67,3L20.33,4.67L22,3V13.5C20.93,12.58 19.53,12 18,12C16.77,12 15.63,12.37 14.68,13H13M11,19V13H4V19H11Z"></path></svg> {__("Write New Blog")}
						</div>
						<div>
							<a class="btn btn-mat" href="{$system['system_url']}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Back to homepage")}</a>
							<button type="submit" class="btn btn-primary btn-mat">{__("Publish")}</button>
						</div>
					</div>
					
					<div class="ele_new_blog_main ele_scroll">
						
						<div class="container">
							{if $system['paid_blogs_enabled']}
								<div class="alert alert-warning">
								  <div class="icon">
									<i class="fas fa-exclamation-triangle fa-lg"></i>
								  </div>
								  <div class="text">
									{__("This blog post will cost you")} <span class="badge rounded-pill bg-warning">{$system['paid_blogs_cost']} {$system['system_currency']}</span> {__("to publish. The cost will be deducted from your wallet balance")}
								  </div>
								</div>
							{/if}
			  
							<!-- error -->
							<div class="alert alert-danger x-hidden"></div>
							<!-- error -->
						</div>
						
						<div class="container-fluid">
							<div class="mb-5">
								<input name="title" class="ele_new_blog_title js_blog-title" placeholder='{__("Add")} {__("Title")}'/>
							</div>
						</div>
						
						<div class="container">
							<textarea name="text" class="form-control js_wysiwyg" id="blog-editor"></textarea>
						</div>
					</div>
					
					<div class="ele_new_blog_side ele_scroll">
						{if $system['ai_posts_enabled']}
							<button type="button" class="btn btn-mat btn-info btn-block mb-3" data-toggle="modal" data-size="large" data-url="ai/modal.php?handle=blog">
								<span class="text-gradient">{__("Generate with AI")}</span>
							</button>
						{/if}
						
						<div class="form-group">
							<div class="form-control-label bold">{__("Publish To")}</div>
							<!-- publish to options -->
							<div class="mx-n1">
								<!-- Timeline -->
								<input class="x-hidden input-label" type="radio" name="publish_to" id="publish_to_timeline" value="timeline" {if $share_to == "timeline"}checked="checked" {/if} />
								<label class="button-label p-3" for="publish_to_timeline">
									<div class="title m-0">{__("Timeline")}</div>
								</label>
								<!-- Timeline -->
								<!-- Page -->
								{if $system['pages_enabled'] && $pages}
									<input class="x-hidden input-label" type="radio" name="publish_to" id="publish_to_page" value="page" {if $share_to == "page"}checked="checked" {/if} />
									<label class="button-label p-3" for="publish_to_page">
										<div class="title m-0">{__("Page")}</div>
									</label>
								{/if}
								<!-- Page -->
								<!-- Group -->
								{if $system['groups_enabled'] && $groups}
									<input class="x-hidden input-label" type="radio" name="publish_to" id="publish_to_group" value="group" {if $share_to == "group"}checked="checked" {/if} />
									<label class="button-label p-3" for="publish_to_group">
										<div class="title m-0">{__("Group")}</div>
									</label>
								{/if}
								<!-- Group -->
								<!-- Event -->
								{if $system['events_enabled'] && $events}
									<input class="x-hidden input-label" type="radio" name="publish_to" id="publish_to_event" value="event" {if $share_to == "event"}checked="checked" {/if} />
									<label class="button-label p-3" for="publish_to_event">
										<div class="title m-0">{__("Event")}</div>
									</label>
								{/if}
								<!-- Event -->
							</div>
							<!-- publish to options -->
						</div>

						<div id="js_publish-to-page" {if $share_to != "page"}class="x-hidden" {/if}>
							<div class="form-group">
								<div class="form-control-label bold">{__("Select Page")}</div>
								<label class="ele_field mt-2">
									<select name="page_id">
										{foreach $pages as $page}
											<option value="{$page['page_id']}" {if $share_to_page_id == $page['page_id']}selected{/if}>{$page['page_title']}</option>
										{/foreach}
									</select>
									<span>{__("Select Page")}</span>
								</label>
							</div>
						</div>

						<div id="js_publish-to-group" {if $share_to != "group"}class="x-hidden" {/if}>
							<div class="form-group">
								<div class="form-control-label bold">{__("Select Group")}</div>
								<label class="ele_field mt-2">
									<select name="group_id">
										{foreach $groups as $group}
											<option value="{$group['group_id']}" {if $share_to_group_id == $group['group_id']}selected{/if}>{$group['group_title']}</option>
										{/foreach}
									</select>
									<span>{__("Select Group")}</span>
								</label>
							</div>
						</div>

						<div id="js_publish-to-event" {if $share_to != "event"}class="x-hidden" {/if}>
							<div class="form-group">
								<div class="form-control-label bold">{__("Select Event")}</div>
								<label class="ele_field mt-2">
									<select name="event_id">
										{foreach $events as $event}
											<option value="{$event['event_id']}" {if $share_to_event_id == $event['event_id']}selected{/if}>{$event['event_title']}</option>
										{/foreach}
									</select>
									<span>{__("Select Event")}</span>
								</label>
							</div>
						</div>
			  
						<div class="form-group">
							<div class="form-control-label bold">{__("Cover")}</div>
							<div class="x-image">
								<button type="button" class="close x-hidden js_x-image-remover" title='{__("Remove")}'>
									<span>×</span>
								</button>
								<div class="x-image-loader">
									<div class="progress x-progress">
										<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
								<i class="fa fa-camera fa-lg js_x-uploader" data-handle="x-image"></i>
								<input type="hidden" class="js_x-uploader-input" name="cover">
							</div>
						</div>
						
						<label class="ele_field">
							<select name="category">
								<option>{__("Select Category")}</option>
								{foreach $blogs_categories as $category}
									{include file='__categories.recursive_options.tpl'}
								{/foreach}
							</select>
							<span>{__("Category")}</span>
						</label>
						
						<div class="ele_field">
							<input placeholder=" " class="js_tagify" name="tags">
							<span>{__("Tags")}</span>
						</div>
						<div class="help-block">{__("Type a tag name and press Enter or Comma to add it")}</div>
						
						<!-- references -->
						<div id="blog-references-list"></div>
						<!-- references -->

						<!-- add reference -->
						<div class="add-auto-connect-node js_add-blog-reference">
							<i class="fas fa-plus-circle mr5"></i>{__("Add reference")}
						</div>
						<!-- add reference -->
						
						{if $user->_data['can_receive_tip'] || $user->_data['can_monetize_content']}
							<hr>
						{/if}

						<!-- enable tips -->
						{if $user->_data['can_receive_tip']}
							<div id="js_tips-enabled">
								<div {if $share_to == "page"}class="x-hidden" {/if}>
									<div class="form-table-row mb-4">
										<div>
											<div class="form-control-label h6">{__("Enable Tips")}</div>
											<div class="form-text d-none d-sm-block mt0">{__("Allow people to send you tips")}</div>
										</div>
										<div class="text-end">
											<label class="switch sm" for="tips_enabled">
												<input type="checkbox" name="tips_enabled" id="tips_enabled">
												<span class="slider round"></span>
											</label>
										</div>
									</div>
								</div>
							</div>
						{/if}
						<!-- enable tips -->

						<!-- only for subscribers -->
						{if $user->_data['can_monetize_content']}
							<div class="form-table-row mb-4" id="subscribers-toggle-wrapper">
								<div>
									<div class="form-control-label h6">{__("Subscribers Only")}</div>
									<div class="form-text d-none d-sm-block mt0">{__("Share this post to")} {__("subscribers only")}</div>
								</div>
								<div class="text-end">
									<label class="switch sm" for="subscribers_only">
										<input type="checkbox" name="subscribers_only" id="subscribers_only" class="js_publisher-subscribers-toggle">
										<span class="slider round"></span>
									</label>
								</div>
							</div>
						{/if}
						<!-- only for subscribers -->

						<!-- paid post -->
						{if $user->_data['can_monetize_content'] && $user->_data['user_monetization_enabled']}
							<div class="form-table-row mb-4" id="paid-toggle-wrapper">
								<div>
									<div class="form-control-label h6">{__("Paid Post")}</div>
									<div class="form-text d-none d-sm-block mt0">{__("Set a price to your post")}</div>
								</div>
								<div class="text-end">
									<label class="switch sm" for="paid_post">
										<input type="checkbox" name="paid_post" id="paid_post" class="js_publisher-paid-toggle">
										<span class="slider round"></span>
									</label>
								</div>
							</div>
							<div class="x-hidden" id="paid-price-wrapper">
								<div class="d-flex flex-column tag_page_rate ele_pub_paid_post">
									<div class="set_price">
										<label>{__('Price')} ({$system['system_currency']})</label>
										<input type="text" name="paid_post_price" placeholder="0.00">
									</div>
									<div class="set_desc x-hidden" id="paid-text-wrapper">
										<label>{__("Description")}</label>
										<textarea class="form-control" name="paid_post_text" rows="2" placeholder='{__("Paid Post Description")}'></textarea>
									</div>
								</div>
							</div>
						{/if}
						<!-- paid post -->
						
						<!-- collaborative post -->
						{if $user->_data['can_add_collaborative_posts']}
							<div class="form-table-row mb-4" id="collaborative-toggle-wrapper">
								<div>
									<div class="form-control-label h6">{__("Collaborative Post")}</div>
									<div class="form-text d-none d-sm-block mt0">{__("Share your post with others")}</div>
								</div>
								<div class="text-end">
									<label class="switch sm" for="collaborative_post">
										<input type="checkbox" name="collaborative_post" id="collaborative_post" class="js_publisher-collaborative-toggle">
										<span class="slider round"></span>
									</label>
								</div>
							</div>
							<div class="form-group x-hidden" id="collaborative-users-wrapper">
								<input type="text" class="js_tagify-ajax x-hidden" data-handle="collaborative_users" name="collaborative_users">
								<div class="form-text">
									{__("Enter the users to collaborate with")}
								</div>
							</div>
							<div class="form-group x-hidden" id="collaborative-percent-wrapper">
								<input type="number" min="0" max="100" class="form-control" name="collaborative_percent">
								<div class="form-text">
									{__("Enter the % of the revenue that you want to give to the collaborators (only for paid posts)")}
								</div>
							</div>
						{/if}
						<!-- collaborative post -->
					</div>
				</div>
			</div>
			<!-- content -->
		<!-- content panel -->
		
		<!-- Schema.org structured data for blog creation page -->
          <script type="application/ld+json">
            {
              "@context": "https://schema.org",
              "@type": "WebPage",
              "name": "{__("Create New Blog")|escape:'html'}",
              "description": "{__("Create and publish a new blog post")|escape:'html'}",
              "url": "{$system['system_url']}/blogs/new",
              "publisher": {
                "@type": "Organization",
                "name": "{$system['system_title']|escape:'html'}",
                "url": "{$system['system_url']}"
              },
              "breadcrumb": {
                "@type": "BreadcrumbList",
                "itemListElement": [{
                    "@type": "ListItem",
                    "position": 1,
                    "name": "{$system['system_title']|escape:'html'}",
                    "item": "{$system['system_url']}"
                  },
                  {
                    "@type": "ListItem",
                    "position": 2,
                    "name": "{__("Blogs")|escape:'html'}",
                    "item": "{$system['system_url']}/blogs"
                  },
                  {
                    "@type": "ListItem",
                    "position": 3,
                    "name": "{__("Create New Blog")|escape:'html'}",
                    "item": "{$system['system_url']}/blogs/new"
                  }
                ]
              }
            }
          </script>
          <!-- Schema.org structured data for blog creation page -->
        
	{/if}
</div>
<!-- page content -->

{include file='_footer.tpl'}

<script>
  /* share post */
  $('input[type=radio][name=publish_to]').on('change', function() {
    switch ($(this).val()) {
      case 'timeline':
        $('#js_publish-to-page').hide();
        $('#js_publish-to-group').hide();
        $('#js_publish-to-event').hide();
        $('#js_tips-enabled').fadeIn();
		$('#subscribers-toggle-wrapper').show();
		$('#collaborative-toggle-wrapper').show();
        break;
      case 'page':
        $('#js_publish-to-page').fadeIn();
        $('#js_publish-to-group').hide();
        $('#js_publish-to-event').hide();
        $('#js_tips-enabled').hide();
		$('#subscribers-toggle-wrapper').show();
		$('#collaborative-toggle-wrapper').hide();
        break;
      case 'group':
        $('#js_publish-to-page').hide();
        $('#js_publish-to-group').fadeIn();
        $('#js_publish-to-event').hide();
        $('#js_tips-enabled').fadeIn();
		$('#subscribers-toggle-wrapper').show();
		$('#collaborative-toggle-wrapper').show();
        break;
      case 'event':
        $('#js_publish-to-page').hide();
        $('#js_publish-to-group').hide();
        $('#js_publish-to-event').fadeIn();
        $('#js_tips-enabled').fadeIn();
		$('#subscribers-toggle-wrapper').hide();
		$('#collaborative-toggle-wrapper').show();
        break;
    }
  });
</script>