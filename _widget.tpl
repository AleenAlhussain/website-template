{if $widgets}
	<!-- Widgets -->
	{foreach $widgets as $widget}
		{if $widget['target_audience'] == 'all' || ($widget['target_audience'] == 'visitors' && !$user->_logged_in) || ($widget['target_audience'] == 'members' && $user->_logged_in)}
			<div class="ele_content mb15">
				<div class="valign ele_sidebar_widget_title px-0 pt-0">
					<b>{__({$widget['title']})}</b>
				</div>

				<div class="pb-3">{$widget['code']}</div>
			</div>
		{/if}
	{/foreach}
	<!-- Widgets -->
{/if}