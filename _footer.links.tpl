<!-- footer links -->
<div class="container">
	<div class="row footer {if $page == 'index' && !$user->_logged_in}border-top-0{/if} {if $page == 'reset'}border-top-0{/if}">
		<div class="col-sm-6 dropdown">
			<span class="mr5">&copy; {date('Y')} {__($system['system_title'])}</span>&nbsp;•&nbsp;
			<!-- language -->
			<a href="#" class="language-dropdown body_color" data-toggle="dropdown">
                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24"><path fill="currentColor" d="M17.9,17.39C17.64,16.59 16.89,16 16,16H15V13A1,1 0 0,0 14,12H8V10H10A1,1 0 0,0 11,9V7H13A2,2 0 0,0 15,5V4.59C17.93,5.77 20,8.64 20,12C20,14.08 19.2,15.97 17.9,17.39M11,19.93C7.05,19.44 4,16.08 4,12C4,11.38 4.08,10.78 4.21,10.21L9,15V16A2,2 0 0,0 11,18M12,2A10,10 0 0,0 2,12A10,10 0 0,0 12,22A10,10 0 0,0 22,12A10,10 0 0,0 12,2Z"></path></svg> <span>{$system['language']['title']}</span>
            </a>
            <div class="dropdown-menu">
				<div class="js_scroller">
					{foreach $system['languages'] as $language}
						<a class="dropdown-item" href="?lang={$language['code']}">{$language['title']}</a>
					{/foreach}
				</div>
			</div>
            <!-- language -->
		</div>

		<div class="col-sm-6 links">
			{if $static_pages}
				{foreach $static_pages as $static_page}
					{if $static_page['page_in_footer']}
						<a class="body_color" href="{$static_page['url']}">
							{__($static_page['page_title'])}
						</a>&nbsp;•&nbsp;
					{/if}
				{/foreach}
			{/if}
			{if $system['contact_enabled']}
				<a class="body_color" href="{$system['system_url']}/contacts">
					{__("Contact Us")}
				</a>&nbsp;•&nbsp;
			{/if}
			{if $system['support_center_enabled']}
				<a class="body_color" href="{$system['system_url']}/support">
					{__("Support Center")}
				</a>&nbsp;•&nbsp;
			  {/if}
			{if $system['directory_enabled']}
				<a class="body_color" href="{$system['system_url']}/directory">
					{__("Directory")}
				</a>
			{/if}
		</div>
	</div>
</div>
<!-- footer links -->