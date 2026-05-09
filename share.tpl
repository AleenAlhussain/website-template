{include file='_head.tpl'}
{include file='_header.tpl'}

<style>
	.main-wrapper {
		padding-right: 90px;
		padding-left: 0;
	}
	.ele_sidebar_left {
		display: none;
	}
	@media (max-width: 1200px) {
	.main-wrapper {
		padding: 0;
	}
	}
</style>

<!-- page content -->
<div class="container mt20">
	{if $user->_data['can_publish_posts']}
        <!-- share to options -->
        <div class="ele_content mb-4">
			<div class="h5 text-center">
				{__("Share to")}
			</div>
			<div class="mb20 text-center">
				<!-- timeline -->
				<input class="x-hidden input-label" type="radio" name="share_to" id="share_to_timeline" value="timeline" checked="checked" />
				<label class="button-label small" for="share_to_timeline">
					<div class="icon">
						<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="text-link"><path opacity="0.4" d="M20.5 10.19H17.61C15.24 10.19 13.31 8.26 13.31 5.89V3C13.31 2.45 12.86 2 12.31 2H8.07C4.99 2 2.5 4 2.5 7.57V16.43C2.5 20 4.99 22 8.07 22H15.93C19.01 22 21.5 20 21.5 16.43V11.19C21.5 10.64 21.05 10.19 20.5 10.19Z" fill="currentColor"></path><path d="M15.7997 2.21048C15.3897 1.80048 14.6797 2.08048 14.6797 2.65048V6.14048C14.6797 7.60048 15.9197 8.81048 17.4297 8.81048C18.3797 8.82048 19.6997 8.82048 20.8297 8.82048C21.3997 8.82048 21.6997 8.15048 21.2997 7.75048C19.8597 6.30048 17.2797 3.69048 15.7997 2.21048Z" fill="currentColor"></path><path d="M13.5 13.75H7.5C7.09 13.75 6.75 13.41 6.75 13C6.75 12.59 7.09 12.25 7.5 12.25H13.5C13.91 12.25 14.25 12.59 14.25 13C14.25 13.41 13.91 13.75 13.5 13.75Z" fill="currentColor"></path><path d="M11.5 17.75H7.5C7.09 17.75 6.75 17.41 6.75 17C6.75 16.59 7.09 16.25 7.5 16.25H11.5C11.91 16.25 12.25 16.59 12.25 17C12.25 17.41 11.91 17.75 11.5 17.75Z" fill="currentColor"></path></svg>
					</div>
					<div class="title">{__("Timeline")}</div>
				</label>
				<!-- timeline -->
				<!-- page -->
				{if $system['pages_enabled'] && $pages}
					<input class="x-hidden input-label" type="radio" name="share_to" id="share_to_page" value="page" />
					<label class="button-label small" for="share_to_page">
						<div class="icon">
							<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="text-link"> <path d="M5.15039 22C4.74039 22 4.40039 21.66 4.40039 21.25V2.75C4.40039 2.34 4.74039 2 5.15039 2C5.56039 2 5.90039 2.34 5.90039 2.75V21.25C5.90039 21.66 5.56039 22 5.15039 22Z" fill="currentColor"></path> <path opacity="0.4" d="M18.0195 12.3294L16.7995 11.1094C16.5095 10.8594 16.3395 10.4894 16.3295 10.0794C16.3095 9.62938 16.4895 9.17938 16.8195 8.84938L18.0195 7.64937C19.0595 6.60938 19.4495 5.60938 19.1195 4.81938C18.7995 4.03938 17.8095 3.60938 16.3495 3.60938H5.14953C4.93953 3.61937 4.76953 3.78938 4.76953 3.99938V15.9994C4.76953 16.2094 4.93953 16.3794 5.14953 16.3794H16.3495C17.7895 16.3794 18.7595 15.9394 19.0895 15.1494C19.4195 14.3494 19.0395 13.3594 18.0195 12.3294Z" fill="currentColor"></path> </svg>
						</div>
						<div class="title">{__("Page")}</div>
					</label>
				{/if}
				<!-- page -->
				<!-- group -->
				{if $system['groups_enabled'] && $groups}
					<input class="x-hidden input-label" type="radio" name="share_to" id="share_to_group" value="group" />
					<label class="button-label small" for="share_to_group">
						<div class="icon">
							<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="text-link"><path opacity="0.4" d="M17.5291 7.77C17.4591 7.76 17.3891 7.76 17.3191 7.77C15.7691 7.72 14.5391 6.45 14.5391 4.89C14.5391 3.3 15.8291 2 17.4291 2C19.0191 2 20.3191 3.29 20.3191 4.89C20.3091 6.45 19.0791 7.72 17.5291 7.77Z" fill="currentColor"></path><path opacity="0.4" d="M20.7916 14.7004C19.6716 15.4504 18.1016 15.7304 16.6516 15.5404C17.0316 14.7204 17.2316 13.8104 17.2416 12.8504C17.2416 11.8504 17.0216 10.9004 16.6016 10.0704C18.0816 9.8704 19.6516 10.1504 20.7816 10.9004C22.3616 11.9404 22.3616 13.6504 20.7916 14.7004Z" fill="currentColor"></path><path opacity="0.4" d="M6.43843 7.77C6.50843 7.76 6.57844 7.76 6.64844 7.77C8.19844 7.72 9.42844 6.45 9.42844 4.89C9.42844 3.3 8.13844 2 6.53844 2C4.94844 2 3.64844 3.29 3.64844 4.89C3.65844 6.45 4.88843 7.72 6.43843 7.77Z" fill="currentColor"></path><path opacity="0.4" d="M6.55109 12.8506C6.55109 13.8206 6.76109 14.7406 7.14109 15.5706C5.73109 15.7206 4.26109 15.4206 3.18109 14.7106C1.60109 13.6606 1.60109 11.9506 3.18109 10.9006C4.25109 10.1806 5.76109 9.89059 7.18109 10.0506C6.77109 10.8906 6.55109 11.8406 6.55109 12.8506Z" fill="currentColor"></path><path d="M12.1208 15.87C12.0408 15.86 11.9508 15.86 11.8608 15.87C10.0208 15.81 8.55078 14.3 8.55078 12.44C8.55078 10.54 10.0808 9 11.9908 9C13.8908 9 15.4308 10.54 15.4308 12.44C15.4308 14.3 13.9708 15.81 12.1208 15.87Z" fill="currentColor"></path><path d="M8.87078 17.9406C7.36078 18.9506 7.36078 20.6106 8.87078 21.6106C10.5908 22.7606 13.4108 22.7606 15.1308 21.6106C16.6408 20.6006 16.6408 18.9406 15.1308 17.9406C13.4208 16.7906 10.6008 16.7906 8.87078 17.9406Z" fill="currentColor"></path></svg>
						</div>
						<div class="title">{__("Group")}</div>
					</label>
				{/if}
				<!-- group -->
				<!-- event -->
				{if $system['events_enabled'] && $events}
					<input class="x-hidden input-label" type="radio" name="share_to" id="share_to_event" value="event" />
					<label class="button-label small" for="share_to_event">
						<div class="icon">
							<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="text-link"> <path d="M16.7502 3.56V2C16.7502 1.59 16.4102 1.25 16.0002 1.25C15.5902 1.25 15.2502 1.59 15.2502 2V3.5H8.75022V2C8.75022 1.59 8.41022 1.25 8.00022 1.25C7.59022 1.25 7.25022 1.59 7.25022 2V3.56C4.55022 3.81 3.24023 5.42 3.04023 7.81C3.02023 8.1 3.26023 8.34 3.54023 8.34H20.4602C20.7502 8.34 20.9902 8.09 20.9602 7.81C20.7602 5.42 19.4502 3.81 16.7502 3.56Z" fill="currentColor"></path> <path opacity="0.4" d="M20 9.83984C20.55 9.83984 21 10.2898 21 10.8398V16.9998C21 19.9998 19.5 21.9998 16 21.9998H8C4.5 21.9998 3 19.9998 3 16.9998V10.8398C3 10.2898 3.45 9.83984 4 9.83984H20Z" fill="currentColor"></path> <path d="M8.5 14.9989C8.37 14.9989 8.24 14.9689 8.12 14.9189C8 14.8689 7.89001 14.7989 7.79001 14.7089C7.70001 14.6089 7.62999 14.4989 7.57999 14.3789C7.52999 14.2589 7.5 14.1289 7.5 13.9989C7.5 13.8689 7.52999 13.7389 7.57999 13.6189C7.62999 13.4989 7.70001 13.3889 7.79001 13.2889C7.89001 13.1989 8 13.1289 8.12 13.0789C8.36 12.9789 8.64 12.9789 8.88 13.0789C9 13.1289 9.10999 13.1989 9.20999 13.2889C9.29999 13.3889 9.37001 13.4989 9.42001 13.6189C9.47001 13.7389 9.5 13.8689 9.5 13.9989C9.5 14.1289 9.47001 14.2589 9.42001 14.3789C9.37001 14.4989 9.29999 14.6089 9.20999 14.7089C9.10999 14.7989 9 14.8689 8.88 14.9189C8.76 14.9689 8.63 14.9989 8.5 14.9989Z" fill="currentColor"></path> <path d="M12 14.9986C11.87 14.9986 11.74 14.9686 11.62 14.9186C11.5 14.8686 11.39 14.7986 11.29 14.7086C11.11 14.5186 11 14.2586 11 13.9986C11 13.7386 11.11 13.4786 11.29 13.2886C11.39 13.1986 11.5 13.1286 11.62 13.0786C11.86 12.9686 12.14 12.9686 12.38 13.0786C12.5 13.1286 12.61 13.1986 12.71 13.2886C12.89 13.4786 13 13.7386 13 13.9986C13 14.2586 12.89 14.5186 12.71 14.7086C12.61 14.7986 12.5 14.8686 12.38 14.9186C12.26 14.9686 12.13 14.9986 12 14.9986Z" fill="currentColor"></path> <path d="M8.5 18.4989C8.37 18.4989 8.24 18.4689 8.12 18.4189C8 18.3689 7.89001 18.2989 7.79001 18.2089C7.61001 18.0189 7.5 17.7589 7.5 17.4989C7.5 17.2389 7.61001 16.9789 7.79001 16.7889C7.89001 16.6989 8 16.6289 8.12 16.5789C8.36 16.4789 8.64 16.4789 8.88 16.5789C9 16.6289 9.10999 16.6989 9.20999 16.7889C9.38999 16.9789 9.5 17.2389 9.5 17.4989C9.5 17.7589 9.38999 18.0189 9.20999 18.2089C9.10999 18.2989 9 18.3689 8.88 18.4189C8.76 18.4689 8.63 18.4989 8.5 18.4989Z" fill="currentColor"></path> </svg>
						</div>
						<div class="title">{__("Event")}</div>
					</label>
				{/if}
				<!-- event -->
			</div>

            <!-- share to page -->
            <div id="js_share-to-page" class="mb-4 x-hidden">
				<label class="ele_field">
					<select name="page">
						{foreach $pages as $page}
							<option value="{$page['page_name']}">{$page['page_title']}</option>
						{/foreach}
					</select>
					<span>{__("Select Page")}</span>
				</label>
				
				<div class="text-center">
					<button type="submit" class="btn btn-primary btn-mat js_select-share-page">{__("Select")}</button>
				</div>
            </div>
            <!-- share to page -->

            <!-- share to group -->
            <div id="js_share-to-group" class="mb-4 x-hidden">
				<label class="ele_field">
					<select name="group">
						{foreach $groups as $group}
							<option value="{$group['group_name']}">{$group['group_title']}</option>
						{/foreach}
					</select>
					<span>{__("Select Group")}</span>
				</label>
				
				<div class="text-center">
					<button type="submit" class="btn btn-primary btn-mat js_select-share-group">{__("Select")}</button>
				</div>
            </div>
            <!-- share to group -->

            <!-- share to event -->
            <div id="js_share-to-event" class="mb-4 x-hidden">
				<label class="ele_field">
					<select name="event">
						{foreach $events as $event}
							<option value="{$event['event_id']}">{$event['event_title']}</option>
						{/foreach}
					</select>
					<span>{__("Select Event")}</span>
				</label>
				
				<div class="text-center">
					<button type="submit" class="btn btn-primary btn-mat js_select-share-event">{__("Select")}</button>
				</div>
            </div>
            <!-- share to event -->
        </div>
        <!-- share to options -->

        <!-- publisher -->
        <div id="js_share-to-timeline">
			{include file='_publisher.tpl' _handle="me" _node_can_monetize_content=$user->_data['can_monetize_content'] _node_monetization_enabled=$user->_data['user_monetization_enabled'] _node_monetization_plans=$user->_data['user_monetization_plans'] _privacy=true}
        </div>
        <!-- publisher -->
	{else}
        <div class="ele_content">
            <div class="text-center">
				<div class="h5">{__("Permission Denied")}</div>
				<div class="text-muted">{__("You are not allowed to publish posts")}</div>
            </div>
        </div>
	{/if}
</div>
<!-- page content -->

{include file='_footer.tpl'}

<script>
  // handle share
  /* share to options */
  $('input[type=radio][name=share_to]').on('change', function() {
    switch ($(this).val()) {
      case 'timeline':
        $('#js_share-to-timeline').fadeIn();
        $('#js_share-to-page').hide();
        $('#js_share-to-group').hide();
        $('#js_share-to-event').hide();
        break;
      case 'page':
        $('#js_share-to-timeline').hide();
        $('#js_share-to-page').fadeIn();
        $('#js_share-to-group').hide();
        $('#js_share-to-event').hide();
        break;
      case 'group':
        $('#js_share-to-timeline').hide();
        $('#js_share-to-page').hide();
        $('#js_share-to-group').fadeIn();
        $('#js_share-to-event').hide();
        break;
      case 'event':
        $('#js_share-to-timeline').hide();
        $('#js_share-to-page').hide();
        $('#js_share-to-group').hide();
        $('#js_share-to-event').fadeIn();
        break;
    }
  });
  /* select share to */
  $('.js_select-share-page').on('click', function() {
    var page = $('select[name=page]').val();
    if (page) {
      window.location.href = '{$system['system_url']}/pages/' + page + '?url=' + encodeURIComponent('{$url}') + '#publisher-box';
    }
  });

  $('.js_select-share-group').on('click', function() {
    var group = $('select[name=group]').val();
    if (group) {
      window.location.href = '{$system['system_url']}/groups/' + group + '?url=' + encodeURIComponent('{$url}') + '#publisher-box';
    }
  });

  $('.js_select-share-event').on('click', function() {
    var event = $('select[name=event]').val();
    if (event) {
      window.location.href = '{$system['system_url']}/events/' + event + '?url=' + encodeURIComponent('{$url}') + '#publisher-box';
    }
  });
</script>