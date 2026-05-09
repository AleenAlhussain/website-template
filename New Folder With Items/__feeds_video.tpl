<div class="col-6 col-md-4 col-lg-3">
    <a class="pg_video" href="{$system['system_url']}/{if $_is_reel}reels{else}posts{/if}/{$video['post_id']}">
    	<video>
			{if empty($video['source_240p']) && empty($video['source_360p']) && empty($video['source_480p']) && empty($video['source_720p']) && empty($video['source_1080p']) && empty($video['source_1440p']) && empty($video['source_2160p'])}
				<source src="{$system['system_uploads']}/{$video['source']}" type="video/mp4">
			{/if}
			{if $video['source_240p']}
				<source src="{$system['system_uploads']}/{$video['source_240p']}" type="video/mp4" label="240p" res="240">
			{/if}
			{if $video['source_360p']}
				<source src="{$system['system_uploads']}/{$video['source_360p']}" type="video/mp4" label="360p" res="360">
			{/if}
			{if $video['source_480p']}
				<source src="{$system['system_uploads']}/{$video['source_480p']}" type="video/mp4" label="480p" res="480">
			{/if}
			{if $video['source_720p']}
				<source src="{$system['system_uploads']}/{$video['source_720p']}" type="video/mp4" label="720p" res="720">
			{/if}
			{if $video['source_1080p']}
				<source src="{$system['system_uploads']}/{$video['source_1080p']}" type="video/mp4" label="1080p" res="1080">
			{/if}
			{if $video['source_1440p']}
				<source src="{$system['system_uploads']}/{$video['source_1440p']}" type="video/mp4" label="1440p" res="1440">
			{/if}
			{if $video['source_2160p']}
				<source src="{$system['system_uploads']}/{$video['source_2160p']}" type="video/mp4" label="2160p" res="2160">
			{/if}
		</video>
        <div class="play-button"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-2 13.5v-7c0-.41.47-.65.8-.4l4.67 3.5c.27.2.27.6 0 .8l-4.67 3.5c-.33.25-.8.01-.8-.4z"></path></svg></div>
    </a>
</div>