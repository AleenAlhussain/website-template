{foreach $announcements as $announcement}
	<div class="ele_content ele_announcement {$announcement['type']} text-with-list mb30">
		{if $user->_logged_in}
			<button type="button" class="close float-right js_announcment-remover" data-id="{$announcement['announcement_id']}"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" opacity=".45" d="M18.3 5.71c-.39-.39-1.02-.39-1.41 0L12 10.59 7.11 5.7c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41L10.59 12 5.7 16.89c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 13.41l4.89 4.89c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L13.41 12l4.89-4.89c.38-.38.38-1.02 0-1.4z"></path></svg></button>
		{/if}
		<h3 class="title">
			<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24">
				<path d="M0 0h24v24H0V0z" fill="none"/>
				<path class="success" fill="#4CAF50" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/>
				<path class="warning" fill="#FAA500" d="M2.73 21h18.53c.77 0 1.25-.83.87-1.5l-9.27-16c-.39-.67-1.35-.67-1.73 0l-9.27 16c-.38.67.1 1.5.87 1.5zM13 18h-2v-2h2v2zm-1-4c-.55 0-1-.45-1-1v-2c0-.55.45-1 1-1s1 .45 1 1v2c0 .55-.45 1-1 1z"/>
				<path class="danger" fill="#EF4C5D" d="M15.32 3H8.68c-.26 0-.52.11-.7.29L3.29 7.98c-.18.18-.29.44-.29.7v6.63c0 .27.11.52.29.71l4.68 4.68c.19.19.45.3.71.3h6.63c.27 0 .52-.11.71-.29l4.68-4.68c.19-.19.29-.44.29-.71V8.68c0-.27-.11-.52-.29-.71l-4.68-4.68c-.18-.18-.44-.29-.7-.29zM12 17.3c-.72 0-1.3-.58-1.3-1.3s.58-1.3 1.3-1.3 1.3.58 1.3 1.3-.58 1.3-1.3 1.3zm0-4.3c-.55 0-1-.45-1-1V8c0-.55.45-1 1-1s1 .45 1 1v4c0 .55-.45 1-1 1z"/>
				<path class="info" fill="#3698FD" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 15c-.55 0-1-.45-1-1v-4c0-.55.45-1 1-1s1 .45 1 1v4c0 .55-.45 1-1 1zm1-8h-2V7h2v2z"/>
			</svg>
			{if $announcement['title']}{$announcement['title']}{/if}
		</h3>
		{$announcement['code']}
	</div>
{/foreach}