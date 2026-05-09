<div class="ele_content p-0 mb15">
	<div class="valign ele_sidebar_widget_title">
		<b>{__("Latest Blogs")}</b>
		<a class="bold" href="{$system['system_url']}/blogs">{__("See All")}</a>
	</div>
	<div id="blogs-carousel" class="carousel slide ele_side_bloglist" data-ride="carousel">
		<div class="carousel-inner">
			{foreach $latest_blogs as $index => $blog}
				<div class="carousel-item {if $index == 0}active{/if}">
					<div class="valign justify-content-between read_more_articles_list p-0 border-0">
						<div class="blog-content w-100">
							<div class="valign w-100 mw-100">
								<a href="{$blog['post_author_url']}" class="post-avatar"><div class="post-avatar-picture" style="background-image:url('{$blog['post_author_picture']}');"></div></a>
								<div class="post-meta">
									<div class="bold"><a class="truncate d-block" href="{$blog['post_author_url']}">{$blog['post_author_name']}</a></div>
								</div>
							</div>
							<h3><a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}">{$blog['blog']['title']}</a></h3>
							<div class="">
								<span class="post-time">
									<span class="js_moment" data-time="{$blog['time']}">{$blog['time']}</span>
								</span>
							</div>
						</div>
						<div class="blog-image">
							<a href="{$system['system_url']}/blogs/{$blog['post_id']}/{$blog['blog']['title_url']}"><img src="{$blog['blog']['parsed_cover']}"></a>
						</div>
					</div>
				</div>
			{/foreach}
		</div>
		
		<div class="valign foot">
			<button class="carousel-control-prev btn btn-secondary" type="button" data-target="#blogs-carousel" data-slide="prev">
				<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor"><path d="m432-480 156 156q11 11 11 28t-11 28q-11 11-28 11t-28-11L348-452q-6-6-8.5-13t-2.5-15q0-8 2.5-15t8.5-13l184-184q11-11 28-11t28 11q11 11 11 28t-11 28L432-480Z"/></svg>
			</button>
			<button class="carousel-control-next btn btn-secondary" type="button" data-target="#blogs-carousel" data-slide="next">
				<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor"><path d="M504-480 348-636q-11-11-11-28t11-28q11-11 28-11t28 11l184 184q6 6 8.5 13t2.5 15q0 8-2.5 15t-8.5 13L404-268q-11 11-28 11t-28-11q-11-11-11-28t11-28l156-156Z"/></svg>
			</button>
		</div>
	</div>
</div>