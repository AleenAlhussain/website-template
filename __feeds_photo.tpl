<div class="{if $_small}col-4{else if $_vsmall}col-6 col-md-4 col-lg-3{else}col-6 col-md-4 col-lg-2{/if} {if $photo['blur']}x-blured{/if}">
    <a class="pg_photo {if !$_small}large{/if} js_lightbox" href="{$system['system_url']}/photos/{$photo['photo_id']}" data-id="{$photo['photo_id']}" data-image="{$system['system_uploads']}/{$photo['source']}" data-context="{$_context}" style="background-image:url({$system['system_uploads']}/{$photo['source']});">
    	{if !$_small && ($_manage || $photo['manage'])}
			<button type="button" class="btn btn-mat publisher-scraper-remover js_delete-photo" data-id="{$photo['photo_id']}" data-toggle="tooltip" data-placement="top" title='{__("Delete")}'><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="18" y1="6" x2="6" y2="18" /><line x1="6" y1="6" x2="18" y2="18" /></svg></button>
			{if $_can_pin}
				<!-- pin -->
					<div class="pg_photo-pin-btn {if $photo['pinned']}js_unpin-photo pinned{else}js_pin-photo{/if}" data-id="{$photo['photo_id']}" data-bs-toggle="tooltip" title='{__("Pin")}'>
						<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M15 4.5l-4 4l-4 1.5l-1.5 1.5l7 7l1.5 -1.5l1.5 -4l4 -4" /><path d="M9 15l-4.5 4.5" /><path d="M14.5 4l5.5 5.5" /></svg>
					</div>
				<!-- pin -->
			{/if}
        {/if}
    </a>
</div>