<div class="{if $_vsmall}col-sm-6 col-md-6 col-lg-4{else}col-sm-6 col-md-4 col-lg-3{/if}">
	<div class="album-card">
		{if $album['cover']['blur']}<div class="x-blured">{/if}
			<a class="album-cover" href="{$system['system_url']}/{$album['path']}/album/{$album['album_id']}" style="background-image:url({$album['cover']['source']});">
			</a>
		{if $album['cover']['blur']}</div>{/if}
		<div class="album-details">
			<div class="truncate bold"><a href="{$system['system_url']}/{$album['path']}/album/{$album['album_id']}">{__($album['title'])}</a></div>
			<div>
				{$album['photos_count']} {__("photos")}
				<div class="float-right">
					{if $album['privacy'] == "me"}
						<svg xmlns="http://www.w3.org/2000/svg" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Only Me")}' width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="5" y="11" width="14" height="10" rx="2"></rect><circle cx="12" cy="16" r="1"></circle><path d="M8 11v-4a4 4 0 0 1 8 0v4"></path></svg>
					{elseif $album['privacy'] == "friends"}
						<svg xmlns="http://www.w3.org/2000/svg" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}' width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="9" cy="7" r="4"></circle><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path><path d="M21 21v-2a4 4 0 0 0 -3 -3.85"></path></svg>
					{elseif $album['privacy'] == "public"}
						<svg xmlns="http://www.w3.org/2000/svg" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Public")}' width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="3.6" y1="9" x2="20.4" y2="9"></line><line x1="3.6" y1="15" x2="20.4" y2="15"></line><path d="M11.5 3a17 17 0 0 0 0 18"></path><path d="M12.5 3a17 17 0 0 1 0 18"></path></svg>
					{elseif $album['privacy'] == "custom"}
						<svg xmlns="http://www.w3.org/2000/svg" data-toggle="tooltip" data-placement="top" title='{__("Shared with")} {__("Custom People")}' width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M10.325 4.317c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 1.065 2.572c1.756 .426 1.756 2.924 0 3.35a1.724 1.724 0 0 0 -1.066 2.573c.94 1.543 -.826 3.31 -2.37 2.37a1.724 1.724 0 0 0 -2.572 1.065c-.426 1.756 -2.924 1.756 -3.35 0a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065z"></path><circle cx="12" cy="12" r="3"></circle></svg>
					{/if}
				</div>
			</div>
		</div>
	</div>
</div>