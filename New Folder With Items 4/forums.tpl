{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
	<div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Forums")}</h2>
				<p class="text-xlg">{__($system['system_description_forums'])}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 6.25V11.35C22 12.62 21.58 13.69 20.83 14.43C20.09 15.18 19.02 15.6 17.75 15.6V17.41C17.75 18.09 16.99 18.5 16.43 18.12L15.46 17.48C15.55 17.17 15.59 16.83 15.59 16.47V12.4C15.59 10.36 14.23 9 12.19 9H5.39999C5.25999 9 5.13 9.01002 5 9.02002V6.25C5 3.7 6.7 2 9.25 2H17.75C20.3 2 22 3.7 22 6.25Z" fill="currentColor"/><path d="M15.59 12.4V16.47C15.59 16.83 15.55 17.17 15.46 17.48C15.09 18.95 13.87 19.87 12.19 19.87H9.47L6.45 21.88C6 22.19 5.39999 21.86 5.39999 21.32V19.87C4.37999 19.87 3.53 19.53 2.94 18.94C2.34 18.34 2 17.49 2 16.47V12.4C2 10.5 3.18 9.19002 5 9.02002C5.13 9.01002 5.25999 9 5.39999 9H12.19C14.23 9 15.59 10.36 15.59 12.4Z" fill="currentColor"/></svg>
		</div>
	</div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative">
    <!-- content panel -->
	<div class="ele_content mb30">

		<!-- tabs -->
		<div class="text-center content-tabs">
			<ul>
				<li {if $view == ""}class="active"{/if}>
					<a href="{$system['system_url']}/forums"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9.02 2.84004L3.63 7.04004C2.73 7.74004 2 9.23004 2 10.36V17.77C2 20.09 3.89 21.99 6.21 21.99H17.79C20.11 21.99 22 20.09 22 17.78V10.5C22 9.29004 21.19 7.74004 20.2 7.05004L14.02 2.72004C12.62 1.74004 10.37 1.79004 9.02 2.84004Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 17.99V14.99" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Home")}</a>
				</li>
				{if $user->_logged_in}
					<li {if $view == "my-threads"}class="active"{/if}>
						<a href="{$system['system_url']}/forums/my-threads"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21 7V17C21 20 19.5 22 16 22H8C4.5 22 3 20 3 17V7C3 4 4.5 2 8 2H16C19.5 2 21 4 21 7Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.5 2V9.85999C15.5 10.3 14.98 10.52 14.66 10.23L12.34 8.09003C12.15 7.91003 11.85 7.91003 11.66 8.09003L9.34003 10.23C9.02003 10.52 8.5 10.3 8.5 9.85999V2H15.5Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M13.25 14H17.5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M9 18H17.5" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("My Threads")}</a>
					</li>
					<li {if $view == "my-replies"}class="active"{/if}>
						<a href="{$system['system_url']}/forums/my-replies"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M8.5 19H8C4 19 2 18 2 13V8C2 4 4 2 8 2H16C20 2 22 4 22 8V13C22 17 20 19 16 19H15.5C15.19 19 14.89 19.15 14.7 19.4L13.2 21.4C12.54 22.28 11.46 22.28 10.8 21.4L9.3 19.4C9.14 19.18 8.77 19 8.5 19Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M7 8H17" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M7 13H13" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("My Replies")}</a>
					</li>
				{/if}
				<li {if $view == "search"}class="active"{/if}>
					<a href="{$system['system_url']}/forums/search"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M11.5 21C16.7467 21 21 16.7467 21 11.5C21 6.25329 16.7467 2 11.5 2C6.25329 2 2 6.25329 2 11.5C2 16.7467 6.25329 21 11.5 21Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M22 22L20 20" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Search")}</a>
				</li>
			</ul>
		</div>
		<!-- tabs -->

		{if $view == ""}
			<!-- forums -->
			{foreach $forums as $forum}
				<div class="valign ele_page_hdng border-0 pt0 pb5 mb20 justify-content-between forum-category">
					<div>
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M21,6V8H3V6H21M3,18H12V16H3V18M3,13H21V11H3V13Z"></path></svg> <a href="{$system['system_url']}/forums/{$forum['forum_id']}/{$forum['title_url']}">{__($forum['forum_name'])}</a>
					</div>
					<div class="pointer">
						<svg xmlns="http://www.w3.org/2000/svg" class="nobg js_forum-toggle" viewBox="0 0 24 24" width="20" height="20" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 5.83l2.46 2.46c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L12.7 3.7c-.39-.39-1.02-.39-1.41 0L8.12 6.88c-.39.39-.39 1.02 0 1.41.39.39 1.02.39 1.41 0L12 5.83zm0 12.34l-2.46-2.46c-.39-.39-1.02-.39-1.41 0-.39.39-.39 1.02 0 1.41l3.17 3.18c.39.39 1.02.39 1.41 0l3.17-3.17c.39-.39.39-1.02 0-1.41-.39-.39-1.02-.39-1.41 0L12 18.17z"/></svg>
					</div>
				</div>

				{if $forum['childs']}
					<div class="js_forum-toggle-wrapper">
						{foreach $forum['childs'] as $_forum}
							<div class="mb-3 ele_forum_section">
								<h3><a href="{$system['system_url']}/forums/{$_forum['forum_id']}/{$_forum['title_url']}">{__($_forum['forum_name'])}</a></h3>
								<p>{__($_forum['forum_description'])}</p>
								<div class="mx-n2 stats">
									<div class="d-inline-flex align-items-center px-2">
										<svg width="17" height="17" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M14.9303 2.5V8.4C14.9303 8.84 14.4103 9.06 14.0903 8.77L12.3403 7.16C12.1503 6.98 11.8503 6.98 11.6603 7.16L9.91031 8.76C9.59031 9.06 9.07031 8.83 9.07031 8.4V2.5C9.07031 2.22 9.29031 2 9.57031 2H14.4303C14.7103 2 14.9303 2.22 14.9303 2.5Z" fill="currentColor"/><path d="M16.98 2.05891C16.69 2.01891 16.43 2.26891 16.43 2.55891V8.57891C16.43 9.33891 15.98 10.0289 15.28 10.3389C14.58 10.6389 13.77 10.5089 13.21 9.98891L12.34 9.18891C12.15 9.00891 11.86 9.00891 11.66 9.18891L10.79 9.98891C10.43 10.3289 9.96 10.4989 9.49 10.4989C9.23 10.4989 8.97 10.4489 8.72 10.3389C8.02 10.0289 7.57 9.33891 7.57 8.57891V2.55891C7.57 2.26891 7.31 2.01891 7.02 2.05891C4.22 2.40891 3 4.29891 3 6.99891V16.9989C3 19.9989 4.5 21.9989 8 21.9989H16C19.5 21.9989 21 19.9989 21 16.9989V6.99891C21 4.29891 19.78 2.40891 16.98 2.05891ZM17.5 18.7489H9C8.59 18.7489 8.25 18.4089 8.25 17.9989C8.25 17.5889 8.59 17.2489 9 17.2489H17.5C17.91 17.2489 18.25 17.5889 18.25 17.9989C18.25 18.4089 17.91 18.7489 17.5 18.7489ZM17.5 14.7489H13.25C12.84 14.7489 12.5 14.4089 12.5 13.9989C12.5 13.5889 12.84 13.2489 13.25 13.2489H17.5C17.91 13.2489 18.25 13.5889 18.25 13.9989C18.25 14.4089 17.91 14.7489 17.5 14.7489Z" fill="currentColor"/></svg>&nbsp;{$_forum['total_threads']} {__("Threads")}
									</div>
									<div class="d-inline-flex align-items-center px-2">
										<svg width="17" height="17" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M17 2H7C4.24 2 2 4.23 2 6.98V12.96V13.96C2 16.71 4.24 18.94 7 18.94H8.5C8.77 18.94 9.13 19.12 9.3 19.34L10.8 21.33C11.46 22.21 12.54 22.21 13.2 21.33L14.7 19.34C14.89 19.09 15.19 18.94 15.5 18.94H17C19.76 18.94 22 16.71 22 13.96V6.98C22 4.23 19.76 2 17 2ZM13 13.75H7C6.59 13.75 6.25 13.41 6.25 13C6.25 12.59 6.59 12.25 7 12.25H13C13.41 12.25 13.75 12.59 13.75 13C13.75 13.41 13.41 13.75 13 13.75ZM17 8.75H7C6.59 8.75 6.25 8.41 6.25 8C6.25 7.59 6.59 7.25 7 7.25H17C17.41 7.25 17.75 7.59 17.75 8C17.75 8.41 17.41 8.75 17 8.75Z" fill="currentColor"/></svg>&nbsp;{$_forum['total_replies']} {__("Replies")}
									</div>
								</div>
								{if $_forum['childs']}
									<div class="p-2 mt-2 d-inline-block sub_forum">
										<strong class="bold">{__("Sub-Forums")}:</strong>
										<div>
											<svg xmlns="http://www.w3.org/2000/svg" width="13" viewBox="0 0 19.987 15.735" opacity="0.5"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="3px" d="M16.324,19.324l4.663-5.329L16.324,8.665m4.663,5.329H10.994Q3,13.994,3,6" transform="translate(-2 -5)"/></svg>&nbsp;
											{foreach $_forum['childs'] as $__forum}
												<a href="{$system['system_url']}/forums/{$__forum['forum_id']}/{$_forum['title_url']}">{__($__forum['forum_name'])}</a>{if !$__forum@last}, {/if}
											{/foreach}
										</div>
									</div>
								{/if}
							</div>
						{/foreach}
					</div>
				{/if}
				<div class="page_divider mt30 mb-4 mx-n1"></div>
			{/foreach}
			<!-- forums -->

			<!-- forums meta -->
			{if $system['forums_online_enabled'] || $system['forums_statistics_enabled']}
				<!-- online users -->
				{if $system['forums_online_enabled']}
					<div class="bold forum-meta-head mb-2">
						{__("Who's online")}&nbsp;<span class="badge badge-secondary">{count($online_users)|number_format:0}</span>
					</div>
					<div class="forum-meta-conent">
						{foreach $online_users as $_user}
							<a href="{$system['system_url']}/{$_user['user_name']}">
								{if $system['show_usernames_enabled']}
									{$_user['user_name']}
								{else}
									{$_user['user_firstname']} {$_user['user_lastname']}
								{/if}
							</a>
							{if !$_user@last}, {/if}
						{/foreach}
					</div>
					<hr>
				{/if}
				<!-- online users -->
				<!-- statistics -->
				{if $system['forums_statistics_enabled']}
					<div class="bold forum-meta-head mb-2">
						{__("Forum Statistics")}
					</div>
					<div class="row">
						<div class="col-12 col-md-6 col-lg-4 mb15">
							<div class="h-100 p-4 ele_forum_stats members">
								<div class="d-flex justify-content-between">
									<h6>{__("Members")}</h6>
									<svg width="36" height="36" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M9 2C6.38 2 4.25 4.13 4.25 6.75C4.25 9.32 6.26 11.4 8.88 11.49C8.96 11.48 9.04 11.48 9.1 11.49C9.12 11.49 9.13 11.49 9.15 11.49C9.16 11.49 9.16 11.49 9.17 11.49C11.73 11.4 13.74 9.32 13.75 6.75C13.75 4.13 11.62 2 9 2Z" fill="#FF6437"/><path d="M14.0809 14.1489C11.2909 12.2889 6.74094 12.2889 3.93094 14.1489C2.66094 14.9989 1.96094 16.1489 1.96094 17.3789C1.96094 18.6089 2.66094 19.7489 3.92094 20.5889C5.32094 21.5289 7.16094 21.9989 9.00094 21.9989C10.8409 21.9989 12.6809 21.5289 14.0809 20.5889C15.3409 19.7389 16.0409 18.5989 16.0409 17.3589C16.0309 16.1289 15.3409 14.9889 14.0809 14.1489Z" fill="#FF6437"/><path opacity="0.4" d="M19.9894 7.33815C20.1494 9.27815 18.7694 10.9781 16.8594 11.2081C16.8494 11.2081 16.8494 11.2081 16.8394 11.2081H16.8094C16.7494 11.2081 16.6894 11.2081 16.6394 11.2281C15.6694 11.2781 14.7794 10.9681 14.1094 10.3981C15.1394 9.47815 15.7294 8.09815 15.6094 6.59815C15.5394 5.78815 15.2594 5.04815 14.8394 4.41815C15.2194 4.22815 15.6594 4.10815 16.1094 4.06815C18.0694 3.89815 19.8194 5.35815 19.9894 7.33815Z" fill="#FF6437"/><path d="M21.9883 16.5904C21.9083 17.5604 21.2883 18.4004 20.2483 18.9704C19.2483 19.5204 17.9883 19.7804 16.7383 19.7504C17.4583 19.1004 17.8783 18.2904 17.9583 17.4304C18.0583 16.1904 17.4683 15.0004 16.2883 14.0504C15.6183 13.5204 14.8383 13.1004 13.9883 12.7904C16.1983 12.1504 18.9783 12.5804 20.6883 13.9604C21.6083 14.7004 22.0783 15.6304 21.9883 16.5904Z" fill="#FF6437"/></svg>
								</div>
								<p class="mb-0">{$insights['users']|number_format:0}</p>
							</div>
						</div>
						<div class="col-12 col-md-6 col-lg-4 mb15">
							<div class="h-100 p-4 ele_forum_stats thread">
								<div class="d-flex justify-content-between">
									<h6>{__("Threads")}</h6>
									<svg width="36" height="36" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="d-block"><path opacity="0.4" d="M21 7V17C21 20 19.5 22 16 22H8C4.5 22 3 20 3 17V7C3 4 4.5 2 8 2H16C19.5 2 21 4 21 7Z" fill="#22beff"/><path d="M15.5 2V9.85999C15.5 10.3 14.98 10.52 14.66 10.23L12.34 8.09C12.15 7.91 11.85 7.91 11.66 8.09L9.34003 10.23C9.02003 10.53 8.5 10.3 8.5 9.85999V2H15.5Z" fill="#22beff"/><path d="M17.5 14.75H13.25C12.84 14.75 12.5 14.41 12.5 14C12.5 13.59 12.84 13.25 13.25 13.25H17.5C17.91 13.25 18.25 13.59 18.25 14C18.25 14.41 17.91 14.75 17.5 14.75Z" fill="#22beff"/><path d="M17.5 18.75H9C8.59 18.75 8.25 18.41 8.25 18C8.25 17.59 8.59 17.25 9 17.25H17.5C17.91 17.25 18.25 17.59 18.25 18C18.25 18.41 17.91 18.75 17.5 18.75Z" fill="#22beff"/></svg>
								</div>
								<p class="mb-0">{$insights['threads']|number_format:0}</p>
							</div>
						</div>
						<div class="col-12 col-md-6 col-lg-4 mb15">
							<div class="h-100 p-4 ele_forum_stats replies">
								<div class="d-flex justify-content-between">
									<h6>{__("Replies")}</h6>
									<svg width="36" height="36" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M2 12.97V6.99C2 4.23 4.24 2 7 2H17C19.76 2 22 4.23 22 6.99V13.97C22 16.72 19.76 18.95 17 18.95H15.5C15.19 18.95 14.89 19.1 14.7 19.35L13.2 21.34C12.54 22.22 11.46 22.22 10.8 21.34L9.3 19.35C9.14 19.13 8.78 18.95 8.5 18.95H7C4.24 18.95 2 16.72 2 13.97V12.97Z" fill="#10c442"/><path d="M17 8.75H7C6.59 8.75 6.25 8.41 6.25 8C6.25 7.59 6.59 7.25 7 7.25H17C17.41 7.25 17.75 7.59 17.75 8C17.75 8.41 17.41 8.75 17 8.75Z" fill="#10c442"/><path d="M13 13.75H7C6.59 13.75 6.25 13.41 6.25 13C6.25 12.59 6.59 12.25 7 12.25H13C13.41 12.25 13.75 12.59 13.75 13C13.75 13.41 13.41 13.75 13 13.75Z" fill="#10c442"/></svg>
								</div>
								<p class="mb-0">{$insights['replies']|number_format:0}</p>
							</div>
						</div>
					</div>
				{/if}
				<!-- statistics -->
			{/if}
			<!-- forums meta -->

		{elseif $view == "forum"}

			<!-- breadcrumb -->
			<ol class="d-inline-flex mb-0 breadcrumb forum-breadcrumb">
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/"><svg xmlns="http://www.w3.org/2000/svg" height="17" viewBox="0 0 24 24" width="17" fill="currentColor" class="mt-n1"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M10 19v-5h4v5c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-7h1.7c.46 0 .68-.57.33-.87L12.67 3.6c-.38-.34-.96-.34-1.34 0l-8.36 7.53c-.34.3-.13.87.33.87H5v7c0 .55.45 1 1 1h3c.55 0 1-.45 1-1z"/></svg></a></li>
				{if $forum['parents']}
					{foreach array_reverse($forum['parents']) as $parent}
						<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$parent['forum_id']}/{$parent['title_url']}">{__($parent['forum_name'])}</a></li>
					{/foreach}
				{/if}
				<li class="breadcrumb-item active">{__($forum['forum_name'])}</li>
			</ol>
			<!-- breadcrumb -->

			<!-- forum title & description -->
			<div class="forum-title mt20 mb30">
				<div class="valign ele_page_hdng border-0 p-0 mb5 justify-content-between align-items-start align-items-md-center flex-column flex-md-row">
					<h1 class="m-0 text-primary">{__($forum['forum_name'])}</h1>
					{if $forum['forum_section'] != '0'}
						<a href="{$system['system_url']}/forums/new-thread/{$forum['forum_id']}" class="btn btn-mat btn-sm btn-success my-2 my-md-0">{__("Write New Thread")}</a>
					{/if}
				</div>
				<p class="mb-0">{__($forum['forum_description']|nl2br)}</p>
			</div>
			<!-- forum title & description -->

			<!-- childs (forums|sub-forums) -->
			{if $forum['childs']}
				{foreach $forum['childs'] as $_forum}
					<div class="mb-3 ele_forum_section">
						<h3><a href="{$system['system_url']}/forums/{$_forum['forum_id']}/{$_forum['title_url']}">{__($_forum['forum_name'])}</a></h3>
						<p>{__($_forum['forum_description'])}</p>
						<div class="mx-n2 stats">
							<div class="d-inline-flex align-items-center px-2">
								<svg width="17" height="17" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M14.9303 2.5V8.4C14.9303 8.84 14.4103 9.06 14.0903 8.77L12.3403 7.16C12.1503 6.98 11.8503 6.98 11.6603 7.16L9.91031 8.76C9.59031 9.06 9.07031 8.83 9.07031 8.4V2.5C9.07031 2.22 9.29031 2 9.57031 2H14.4303C14.7103 2 14.9303 2.22 14.9303 2.5Z" fill="currentColor"/><path d="M16.98 2.05891C16.69 2.01891 16.43 2.26891 16.43 2.55891V8.57891C16.43 9.33891 15.98 10.0289 15.28 10.3389C14.58 10.6389 13.77 10.5089 13.21 9.98891L12.34 9.18891C12.15 9.00891 11.86 9.00891 11.66 9.18891L10.79 9.98891C10.43 10.3289 9.96 10.4989 9.49 10.4989C9.23 10.4989 8.97 10.4489 8.72 10.3389C8.02 10.0289 7.57 9.33891 7.57 8.57891V2.55891C7.57 2.26891 7.31 2.01891 7.02 2.05891C4.22 2.40891 3 4.29891 3 6.99891V16.9989C3 19.9989 4.5 21.9989 8 21.9989H16C19.5 21.9989 21 19.9989 21 16.9989V6.99891C21 4.29891 19.78 2.40891 16.98 2.05891ZM17.5 18.7489H9C8.59 18.7489 8.25 18.4089 8.25 17.9989C8.25 17.5889 8.59 17.2489 9 17.2489H17.5C17.91 17.2489 18.25 17.5889 18.25 17.9989C18.25 18.4089 17.91 18.7489 17.5 18.7489ZM17.5 14.7489H13.25C12.84 14.7489 12.5 14.4089 12.5 13.9989C12.5 13.5889 12.84 13.2489 13.25 13.2489H17.5C17.91 13.2489 18.25 13.5889 18.25 13.9989C18.25 14.4089 17.91 14.7489 17.5 14.7489Z" fill="currentColor"/></svg>&nbsp;{$_forum['total_threads']} {__("Threads")}
							</div>
							<div class="d-inline-flex align-items-center px-2">
								<svg width="17" height="17" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M17 2H7C4.24 2 2 4.23 2 6.98V12.96V13.96C2 16.71 4.24 18.94 7 18.94H8.5C8.77 18.94 9.13 19.12 9.3 19.34L10.8 21.33C11.46 22.21 12.54 22.21 13.2 21.33L14.7 19.34C14.89 19.09 15.19 18.94 15.5 18.94H17C19.76 18.94 22 16.71 22 13.96V6.98C22 4.23 19.76 2 17 2ZM13 13.75H7C6.59 13.75 6.25 13.41 6.25 13C6.25 12.59 6.59 12.25 7 12.25H13C13.41 12.25 13.75 12.59 13.75 13C13.75 13.41 13.41 13.75 13 13.75ZM17 8.75H7C6.59 8.75 6.25 8.41 6.25 8C6.25 7.59 6.59 7.25 7 7.25H17C17.41 7.25 17.75 7.59 17.75 8C17.75 8.41 17.41 8.75 17 8.75Z" fill="currentColor"/></svg>&nbsp;{$_forum['total_replies']} {__("Replies")}
							</div>
						</div>
						{if $_forum['childs']}
							<div class="p-2 mt-2 d-inline-block sub_forum">
								<strong class="bold">{__("Sub-Forums")}:</strong>
								<div>
									<svg xmlns="http://www.w3.org/2000/svg" width="13" viewBox="0 0 19.987 15.735" opacity="0.5"><path fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="3px" d="M16.324,19.324l4.663-5.329L16.324,8.665m4.663,5.329H10.994Q3,13.994,3,6" transform="translate(-2 -5)"/></svg>&nbsp;
									{foreach $_forum['childs'] as $__forum}
										<a href="{$system['system_url']}/forums/{$__forum['forum_id']}/{$_forum['title_url']}">{__($__forum['forum_name'])}</a>{if !$__forum@last}, {/if}
									{/foreach}
								</div>
							</div>
						{/if}
					</div>
				{/foreach}
				<div class="page_divider mt30 mb-4 mx-n1"></div>
			{/if}
			<!-- childs (forums|sub-forums) -->

			<!-- threads -->
			{if $forum['forum_section'] != '0'}
				{if $forum['threads']}
					<div class="mb15 overflow-hidden ele_forum_threads">
						<div class="d-none d-md-block p-3 text-light ele_forum_threads_head">
							<div class="row">
								<div class="col-12 col-md-9 bold">{__("Thread")}</div>
								<div class="col-md-1 text-right bold">{__("Replies")}</div>
								<div class="col-md-2 text-right bold">{__("Last Post")}</div> 
							</div>
						</div>
						{foreach $forum['threads'] as $thread}
							<div class="p-3 border-bottom">
								<div class="row">
									<div class="col-12 col-md-9">
										<div>
											<strong class="bold text-md"><a href="{$system['system_url']}/forums/thread/{$thread['thread_id']}/{$thread['title_url']}">{$thread['title']}</a></strong>
										</div>
										<div class="mb-2 mb-md-0 text-md">
											<small>
												<a href="{$system['system_url']}/{$thread['user_name']}" class="body_color">{$thread['user_fullname']}</a>
												<span class="font-weight-bold ml5 mr5">·</span>
												<span class="js_moment" data-time="{$thread['time']}">{$thread['time']}</span>
												<span class="font-weight-bold ml5 mr5">·</span>
												<span>{$thread['views']} {__("Views")}</span>
											</small>
										</div>
									</div>
									<div class="col-md-1 text-md-right">
										<span class="d-md-none">{__("Replies")}:</span> {$thread['replies']}
									</div>
									<div class="col-md-2 text-md-right">
										<span class="d-md-none">{__("Last Post")}:</span> <span class="js_moment" data-time="{$thread['last_reply']}">{$thread['last_reply']}</span>
									</div>
								</div>
							</div>
						{/foreach}
					</div>
					<div class="mb15">{$pager}</div>
				{else}
					<div class="text-center empty_state">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="d-block"><path opacity="0.4" d="M21 7V17C21 20 19.5 22 16 22H8C4.5 22 3 20 3 17V7C3 4 4.5 2 8 2H16C19.5 2 21 4 21 7Z" fill="currentColor"></path><path d="M15.5 2V9.85999C15.5 10.3 14.98 10.52 14.66 10.23L12.34 8.09C12.15 7.91 11.85 7.91 11.66 8.09L9.34003 10.23C9.02003 10.53 8.5 10.3 8.5 9.85999V2H15.5Z" fill="currentColor"></path><path d="M17.5 14.75H13.25C12.84 14.75 12.5 14.41 12.5 14C12.5 13.59 12.84 13.25 13.25 13.25H17.5C17.91 13.25 18.25 13.59 18.25 14C18.25 14.41 17.91 14.75 17.5 14.75Z" fill="currentColor"></path><path d="M17.5 18.75H9C8.59 18.75 8.25 18.41 8.25 18C8.25 17.59 8.59 17.25 9 17.25H17.5C17.91 17.25 18.25 17.59 18.25 18C18.25 18.41 17.91 18.75 17.5 18.75Z" fill="currentColor"></path></svg>{__("No Threads")}
					</div>
				{/if}
			{/if}
			<!-- threads -->

		{elseif $view == "thread"}
			
			<!-- breadcrumb -->
			<ol class="d-inline-flex mb-0 breadcrumb forum-breadcrumb">
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/"><svg xmlns="http://www.w3.org/2000/svg" height="17" viewBox="0 0 24 24" width="17" fill="currentColor" class="mt-n1"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M10 19v-5h4v5c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-7h1.7c.46 0 .68-.57.33-.87L12.67 3.6c-.38-.34-.96-.34-1.34 0l-8.36 7.53c-.34.3-.13.87.33.87H5v7c0 .55.45 1 1 1h3c.55 0 1-.45 1-1z"/></svg></a></li>
				{if $thread['forum']['parents']}
					{foreach array_reverse($thread['forum']['parents']) as $parent}
						<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$parent['forum_id']}/{$parent['title_url']}">{__($parent['forum_name'])}</a></li>
					{/foreach}
				{/if}
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$thread['forum']['forum_id']}/{$thread['forum']['title_url']}">{__($thread['forum']['forum_name'])}</a></li>
				<li class="breadcrumb-item active">{$thread['title']}</li>
			</ol>
			<!-- breadcrumb -->

			<!-- thread -->
			<div class="mt20 mb15 thread_title">
				<h1>{$thread['title']}</h1>
				<div class="d-block thread_title_user">
					<div class="d-table-cell align-middle">
						<a href="{$system['system_url']}/{$thread['user_name']}" class="d-block position-relative mr15 avatar">
							<img src="{$thread['user_picture']}" class="w-100 h-100 rounded-circle">
							{if $thread['user_group'] == 1}
								<span class="d-flex position-absolute rounded-circle admin" data-toggle="tooltip" data-placement="top" title='{__("Admin")}'>
									<svg width="13" height="13" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.1 9.2214C18.29 9.2214 17.55 7.9414 18.45 6.3714C18.97 5.4614 18.66 4.3014 17.75 3.7814L16.02 2.7914C15.23 2.3214 14.21 2.6014 13.74 3.3914L13.63 3.5814C12.73 5.1514 11.25 5.1514 10.34 3.5814L10.23 3.3914C9.78 2.6014 8.76 2.3214 7.97 2.7914L6.24 3.7814C5.33 4.3014 5.02 5.4714 5.54 6.3814C6.45 7.9414 5.71 9.2214 3.9 9.2214C2.86 9.2214 2 10.0714 2 11.1214V12.8814C2 13.9214 2.85 14.7814 3.9 14.7814C5.71 14.7814 6.45 16.0614 5.54 17.6314C5.02 18.5414 5.33 19.7014 6.24 20.2214L7.97 21.2114C8.76 21.6814 9.78 21.4014 10.25 20.6114L10.36 20.4214C11.26 18.8514 12.74 18.8514 13.65 20.4214L13.76 20.6114C14.23 21.4014 15.25 21.6814 16.04 21.2114L17.77 20.2214C18.68 19.7014 18.99 18.5314 18.47 17.6314C17.56 16.0614 18.3 14.7814 20.11 14.7814C21.15 14.7814 22.01 13.9314 22.01 12.8814V11.1214C22 10.0814 21.15 9.2214 20.1 9.2214ZM12 15.2514C10.21 15.2514 8.75 13.7914 8.75 12.0014C8.75 10.2114 10.21 8.7514 12 8.7514C13.79 8.7514 15.25 10.2114 15.25 12.0014C15.25 13.7914 13.79 15.2514 12 15.2514Z" fill="#fff"/></svg>
								</span>
							{elseif $thread['user_group'] == 2}
								<span class="d-flex position-absolute rounded-circle mod" data-toggle="tooltip" data-placement="top" title='{__("Moderator")}'>
									<svg width="13" height="13" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 15C15.7279 15 18.75 12.0899 18.75 8.5C18.75 4.91015 15.7279 2 12 2C8.27208 2 5.25 4.91015 5.25 8.5C5.25 12.0899 8.27208 15 12 15Z" fill="#fff"/><path d="M15.79 15.6091C16.12 15.4391 16.5 15.6891 16.5 16.0591V20.9091C16.5 21.8091 15.87 22.2491 15.09 21.8791L12.41 20.6091C12.18 20.5091 11.82 20.5091 11.59 20.6091L8.91 21.8791C8.13 22.2391 7.5 21.7991 7.5 20.8991L7.52 16.0591C7.52 15.6891 7.91 15.4491 8.23 15.6091C9.36 16.1791 10.64 16.4991 12 16.4991C13.36 16.4991 14.65 16.1791 15.79 15.6091Z" fill="#fff"/></svg>
								</span>
							{else}
								<span class="d-flex position-absolute rounded-circle" data-toggle="tooltip" data-placement="top" title='{__("Member")}'>
									<svg width="13" height="13" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 12C14.7614 12 17 9.76142 17 7C17 4.23858 14.7614 2 12 2C9.23858 2 7 4.23858 7 7C7 9.76142 9.23858 12 12 12Z" fill="#fff"/><path d="M12.0002 14.5C6.99016 14.5 2.91016 17.86 2.91016 22C2.91016 22.28 3.13016 22.5 3.41016 22.5H20.5902C20.8702 22.5 21.0902 22.28 21.0902 22C21.0902 17.86 17.0102 14.5 12.0002 14.5Z" fill="#fff"/></svg>
								</span>
							{/if}
						</a>
					</div>
					<div class="d-table-cell align-middle meta">
						<h6 class="mt-1 mb-0"><a href="{$system['system_url']}/{$thread['user_name']}" class="body_color">{$thread['user_fullname']}</a></h6>
						<div class="text-muted"><span class="js_moment" data-time="{$thread['time']}">{$thread['time']}</span></div>
					</div>
				</div>
				
				<div class="mt-4 text-justify text {if $thread['replies'] > 0 && $selected_page != 1}x-hidden{/if}">
					{$thread['parsed_text']}
				</div>
				
				<!-- buttons -->
				<div class="mt-3">
					<a href="{$system['system_url']}/forums/new-reply/{$thread['thread_id']}" class="btn btn-mat btn-primary">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M10 9V7.41c0-.89-1.08-1.34-1.71-.71L3.7 11.29c-.39.39-.39 1.02 0 1.41l4.59 4.59c.63.63 1.71.19 1.71-.7V14.9c5 0 8.5 1.6 11 5.1-1-5-4-10-11-11z"/></svg> {__("Post Reply")}
					</a>&nbsp;
					{if $thread['manage_thread']}
						<a href="{$system['system_url']}/forums/edit-thread/{$thread['thread_id']}" class="btn btn-secondary btn-mat" title='{__("Edit")}'>
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21 22H3C2.59 22 2.25 21.66 2.25 21.25C2.25 20.84 2.59 20.5 3 20.5H21C21.41 20.5 21.75 20.84 21.75 21.25C21.75 21.66 21.41 22 21 22Z" fill="currentColor"/><path d="M19.0206 3.48162C17.0806 1.54162 15.1806 1.49162 13.1906 3.48162L11.9806 4.69162C11.8806 4.79162 11.8406 4.95162 11.8806 5.09162C12.6406 7.74162 14.7606 9.86162 17.4106 10.6216C17.4506 10.6316 17.4906 10.6416 17.5306 10.6416C17.6406 10.6416 17.7406 10.6016 17.8206 10.5216L19.0206 9.31162C20.0106 8.33162 20.4906 7.38162 20.4906 6.42162C20.5006 5.43162 20.0206 4.47162 19.0206 3.48162Z" fill="currentColor"/><path d="M15.6103 11.5308C15.3203 11.3908 15.0403 11.2508 14.7703 11.0908C14.5503 10.9608 14.3403 10.8208 14.1303 10.6708C13.9603 10.5608 13.7603 10.4008 13.5703 10.2408C13.5503 10.2308 13.4803 10.1708 13.4003 10.0908C13.0703 9.81078 12.7003 9.45078 12.3703 9.05078C12.3403 9.03078 12.2903 8.96078 12.2203 8.87078C12.1203 8.75078 11.9503 8.55078 11.8003 8.32078C11.6803 8.17078 11.5403 7.95078 11.4103 7.73078C11.2503 7.46078 11.1103 7.19078 10.9703 6.91078C10.9491 6.86539 10.9286 6.82022 10.9088 6.77532C10.7612 6.442 10.3265 6.34455 10.0688 6.60231L4.34032 12.3308C4.21032 12.4608 4.09032 12.7108 4.06032 12.8808L3.52032 16.7108C3.42032 17.3908 3.61032 18.0308 4.03032 18.4608C4.39032 18.8108 4.89032 19.0008 5.43032 19.0008C5.55032 19.0008 5.67032 18.9908 5.79032 18.9708L9.63032 18.4308C9.81032 18.4008 10.0603 18.2808 10.1803 18.1508L15.9016 12.4295C16.1612 12.1699 16.0633 11.7245 15.7257 11.5804C15.6877 11.5642 15.6492 11.5476 15.6103 11.5308Z" fill="currentColor"/></svg>
						</a>&nbsp;
						<button class="btn btn-secondary btn-mat js_delete-forum" title='{__("Delete")}' data-handle="thread" data-id="{$thread['thread_id']}">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.0697 5.23C19.4597 5.07 17.8497 4.95 16.2297 4.86V4.85L16.0097 3.55C15.8597 2.63 15.6397 1.25 13.2997 1.25H10.6797C8.34967 1.25 8.12967 2.57 7.96967 3.54L7.75967 4.82C6.82967 4.88 5.89967 4.94 4.96967 5.03L2.92967 5.23C2.50967 5.27 2.20967 5.64 2.24967 6.05C2.28967 6.46 2.64967 6.76 3.06967 6.72L5.10967 6.52C10.3497 6 15.6297 6.2 20.9297 6.73C20.9597 6.73 20.9797 6.73 21.0097 6.73C21.3897 6.73 21.7197 6.44 21.7597 6.05C21.7897 5.64 21.4897 5.27 21.0697 5.23Z" fill="currentColor"/><path d="M19.2297 8.14C18.9897 7.89 18.6597 7.75 18.3197 7.75H5.67975C5.33975 7.75 4.99975 7.89 4.76975 8.14C4.53975 8.39 4.40975 8.73 4.42975 9.08L5.04975 19.34C5.15975 20.86 5.29975 22.76 8.78975 22.76H15.2097C18.6997 22.76 18.8398 20.87 18.9497 19.34L19.5697 9.09C19.5897 8.73 19.4597 8.39 19.2297 8.14ZM13.6597 17.75H10.3297C9.91975 17.75 9.57975 17.41 9.57975 17C9.57975 16.59 9.91975 16.25 10.3297 16.25H13.6597C14.0697 16.25 14.4097 16.59 14.4097 17C14.4097 17.41 14.0697 17.75 13.6597 17.75ZM14.4997 13.75H9.49975C9.08975 13.75 8.74975 13.41 8.74975 13C8.74975 12.59 9.08975 12.25 9.49975 12.25H14.4997C14.9097 12.25 15.2497 12.59 15.2497 13C15.2497 13.41 14.9097 13.75 14.4997 13.75Z" fill="currentColor"/></svg>
						</button>&nbsp;
					{else}
						<button class="btn btn-secondary btn-mat" title='{__("Report")}' data-toggle="modal" data-url="data/report.php?do=create&handle=forum_thread&id={$thread['thread_id']}">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M19.5099 5.85L13.5699 2.42C12.5999 1.86 11.3999 1.86 10.4199 2.42L4.48992 5.85C3.51992 6.41 2.91992 7.45 2.91992 8.58V15.42C2.91992 16.54 3.51992 17.58 4.48992 18.15L10.4299 21.58C11.3999 22.14 12.5999 22.14 13.5799 21.58L19.5199 18.15C20.4899 17.59 21.0899 16.55 21.0899 15.42V8.58C21.0799 7.45 20.4799 6.42 19.5099 5.85ZM11.2499 7.75C11.2499 7.34 11.5899 7 11.9999 7C12.4099 7 12.7499 7.34 12.7499 7.75V13C12.7499 13.41 12.4099 13.75 11.9999 13.75C11.5899 13.75 11.2499 13.41 11.2499 13V7.75ZM12.9199 16.63C12.8699 16.75 12.7999 16.86 12.7099 16.96C12.5199 17.15 12.2699 17.25 11.9999 17.25C11.8699 17.25 11.7399 17.22 11.6199 17.17C11.4899 17.12 11.3899 17.05 11.2899 16.96C11.1999 16.86 11.1299 16.75 11.0699 16.63C11.0199 16.51 10.9999 16.38 10.9999 16.25C10.9999 15.99 11.0999 15.73 11.2899 15.54C11.3899 15.45 11.4899 15.38 11.6199 15.33C11.9899 15.17 12.4299 15.26 12.7099 15.54C12.7999 15.64 12.8699 15.74 12.9199 15.87C12.9699 15.99 12.9999 16.12 12.9999 16.25C12.9999 16.38 12.9699 16.51 12.9199 16.63Z" fill="currentColor"/></svg>
						</button>
					{/if}
				</div>
				<!-- buttons -->
			</div>
			<!-- thread -->

			<!-- replies -->
			{if $thread['replies'] > 0}
				<div class="page_divider mt30 mb-4 mx-n1"></div>
				{foreach $thread['thread_replies'] as $reply}
					<div class="mb15 forum-thread" id="reply-{$reply['reply_id']}">
						<div class="row">
							<div class="col-12 col-sm-2 text-center">
								<div class="d-block thread_title_user">
									<div class="d-block align-middle">
										<a href="{$system['system_url']}/{$reply['user_name']}" class="d-block position-relative avatar">
											<img src="{$reply['user_picture']}" class="w-100 h-100 rounded-circle">
											{if $reply['user_group'] == 1}
												<span class="d-flex position-absolute rounded-circle admin" data-toggle="tooltip" data-placement="top" title='{__("Admin")}'>
													<svg width="13" height="13" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.1 9.2214C18.29 9.2214 17.55 7.9414 18.45 6.3714C18.97 5.4614 18.66 4.3014 17.75 3.7814L16.02 2.7914C15.23 2.3214 14.21 2.6014 13.74 3.3914L13.63 3.5814C12.73 5.1514 11.25 5.1514 10.34 3.5814L10.23 3.3914C9.78 2.6014 8.76 2.3214 7.97 2.7914L6.24 3.7814C5.33 4.3014 5.02 5.4714 5.54 6.3814C6.45 7.9414 5.71 9.2214 3.9 9.2214C2.86 9.2214 2 10.0714 2 11.1214V12.8814C2 13.9214 2.85 14.7814 3.9 14.7814C5.71 14.7814 6.45 16.0614 5.54 17.6314C5.02 18.5414 5.33 19.7014 6.24 20.2214L7.97 21.2114C8.76 21.6814 9.78 21.4014 10.25 20.6114L10.36 20.4214C11.26 18.8514 12.74 18.8514 13.65 20.4214L13.76 20.6114C14.23 21.4014 15.25 21.6814 16.04 21.2114L17.77 20.2214C18.68 19.7014 18.99 18.5314 18.47 17.6314C17.56 16.0614 18.3 14.7814 20.11 14.7814C21.15 14.7814 22.01 13.9314 22.01 12.8814V11.1214C22 10.0814 21.15 9.2214 20.1 9.2214ZM12 15.2514C10.21 15.2514 8.75 13.7914 8.75 12.0014C8.75 10.2114 10.21 8.7514 12 8.7514C13.79 8.7514 15.25 10.2114 15.25 12.0014C15.25 13.7914 13.79 15.2514 12 15.2514Z" fill="#fff"/></svg>
												</span>
											{elseif $reply['user_group'] == 2}
												<span class="d-flex position-absolute rounded-circle mod" data-toggle="tooltip" data-placement="top" title='{__("Moderator")}'>
													<svg width="13" height="13" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 15C15.7279 15 18.75 12.0899 18.75 8.5C18.75 4.91015 15.7279 2 12 2C8.27208 2 5.25 4.91015 5.25 8.5C5.25 12.0899 8.27208 15 12 15Z" fill="#fff"/><path d="M15.79 15.6091C16.12 15.4391 16.5 15.6891 16.5 16.0591V20.9091C16.5 21.8091 15.87 22.2491 15.09 21.8791L12.41 20.6091C12.18 20.5091 11.82 20.5091 11.59 20.6091L8.91 21.8791C8.13 22.2391 7.5 21.7991 7.5 20.8991L7.52 16.0591C7.52 15.6891 7.91 15.4491 8.23 15.6091C9.36 16.1791 10.64 16.4991 12 16.4991C13.36 16.4991 14.65 16.1791 15.79 15.6091Z" fill="#fff"/></svg>
												</span>
											{else}
												<span class="d-flex position-absolute rounded-circle" data-toggle="tooltip" data-placement="top" title='{__("Member")}'>
													<svg width="13" height="13" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 12C14.7614 12 17 9.76142 17 7C17 4.23858 14.7614 2 12 2C9.23858 2 7 4.23858 7 7C7 9.76142 9.23858 12 12 12Z" fill="#fff"/><path d="M12.0002 14.5C6.99016 14.5 2.91016 17.86 2.91016 22C2.91016 22.28 3.13016 22.5 3.41016 22.5H20.5902C20.8702 22.5 21.0902 22.28 21.0902 22C21.0902 17.86 17.0102 14.5 12.0002 14.5Z" fill="#fff"/></svg>
												</span>
											{/if}
										</a>
									</div>
									<div class="d-block align-middle meta">
										<h6 class="mt-1 mb-0"><a href="{$system['system_url']}/{$reply['user_name']}" class="body_color">{$reply['user_fullname']}</a></h6>
										<div class="text-muted"><span class="js_moment" data-time="{$reply['time']}">{$reply['time']}</span></div>
										<!-- buttons -->
										<div class="d-block mt-2">
											<a data-toggle="tooltip" data-placement="top" title='{__("Link")}' href="{$system['system_url']}/forums/thread/{$thread['thread_id']}/{$thread['title_url']}#reply-{$reply['reply_id']}" class="btn btn-sm btn-secondary btn-icon btn-rounded p-2">
												<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="18" viewBox="0 0 24 24" width="18" fill="currentColor"><g><rect fill="none" height="24" width="24"/></g><g><g><path d="M17,7h-3c-0.55,0-1,0.45-1,1s0.45,1,1,1h3c1.65,0,3,1.35,3,3s-1.35,3-3,3h-3c-0.55,0-1,0.45-1,1c0,0.55,0.45,1,1,1h3 c2.76,0,5-2.24,5-5S19.76,7,17,7z M8,12c0,0.55,0.45,1,1,1h6c0.55,0,1-0.45,1-1s-0.45-1-1-1H9C8.45,11,8,11.45,8,12z M10,15H7 c-1.65,0-3-1.35-3-3s1.35-3,3-3h3c0.55,0,1-0.45,1-1s-0.45-1-1-1H7c-2.76,0-5,2.24-5,5s2.24,5,5,5h3c0.55,0,1-0.45,1-1 C11,15.45,10.55,15,10,15z"/></g></g></svg>
											</a>
											{if $reply['manage_reply']}
												<a data-toggle="tooltip" data-placement="top" title='{__("Edit")}' href="{$system['system_url']}/forums/edit-reply/{$reply['reply_id']}" class="btn btn-sm btn-secondary btn-icon btn-rounded p-2">
													<svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M3 17.46v3.04c0 .28.22.5.5.5h3.04c.13 0 .26-.05.35-.15L17.81 9.94l-3.75-3.75L3.15 17.1c-.1.1-.15.22-.15.36zM20.71 7.04c.39-.39.39-1.02 0-1.41l-2.34-2.34c-.39-.39-1.02-.39-1.41 0l-1.83 1.83 3.75 3.75 1.83-1.83z"/></svg>
												</a>
												<button data-toggle="tooltip" data-placement="top" title='{__("Delete")}' class="btn btn-sm btn-secondary btn-icon btn-rounded p-2 js_delete-forum" data-handle="reply" data-id="{$reply['reply_id']}">
													<svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M6 19c0 1.1.9 2 2 2h8c1.1 0 2-.9 2-2V9c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v10zM18 4h-2.5l-.71-.71c-.18-.18-.44-.29-.7-.29H9.91c-.26 0-.52.11-.7.29L8.5 4H6c-.55 0-1 .45-1 1s.45 1 1 1h12c.55 0 1-.45 1-1s-.45-1-1-1z"/></svg>
												</button>
											{else}
												<button data-toggle="tooltip" data-placement="top" title='{__("Report")}' class="btn btn-sm btn-secondary btn-icon btn-rounded p-2" data-toggle="modal" data-url="data/report.php?do=create&handle=forum_reply&id={$reply['reply_id']}">
													<svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18" fill="currentColor"><path d="M4.47 21h15.06c1.54 0 2.5-1.67 1.73-3L13.73 4.99c-.77-1.33-2.69-1.33-3.46 0L2.74 18c-.77 1.33.19 3 1.73 3zM12 14c-.55 0-1-.45-1-1v-2c0-.55.45-1 1-1s1 .45 1 1v2c0 .55-.45 1-1 1zm1 4h-2v-2h2v2z"/></svg>
												</button>
											{/if}
										</div>
										<!-- buttons -->
									</div>
								</div>
							</div>
							
							<div class="col-12 col-sm-10">
								<div class="text">
									{$reply['parsed_text']}
								</div>
							</div>
						</div>
					</div>
				{/foreach}
				<div class="mb15">
					{$pager}
				</div>
			{/if}
			<!-- replies -->

		{elseif $view == "new-thread"}

			<!-- breadcrumb -->
			<ol class="d-inline-flex mb-0 breadcrumb forum-breadcrumb">
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/"><svg xmlns="http://www.w3.org/2000/svg" height="17" viewBox="0 0 24 24" width="17" fill="currentColor" class="mt-n1"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M10 19v-5h4v5c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-7h1.7c.46 0 .68-.57.33-.87L12.67 3.6c-.38-.34-.96-.34-1.34 0l-8.36 7.53c-.34.3-.13.87.33.87H5v7c0 .55.45 1 1 1h3c.55 0 1-.45 1-1z"></path></svg></a></li>
				{if $forum['parents']}
					{foreach array_reverse($forum['parents']) as $parent}
						<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$parent['forum_id']}/{$parent['title_url']}">{__($parent['forum_name'])}</a></li>
					{/foreach}
				{/if}
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$forum['forum_id']}/{$forum['title_url']}">{__($forum['forum_name'])}</a></li>
				<li class="breadcrumb-item active">{__("Write New Thread")}</li>
			</ol>
			<!-- breadcrumb -->

			<!-- new thread -->
			<div class="px-2 pb20 mt20">
				<div class="valign ele_page_hdng border-0 pb0"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M17,14H19V17H22V19H19V22H17V19H14V17H17V14M12,17V15H7V17H12M17,11H7V13H14.69C13.07,14.07 12,15.91 12,18C12,19.09 12.29,20.12 12.8,21H5C3.89,21 3,20.1 3,19V5C3,3.89 3.89,3 5,3H19A2,2 0 0,1 21,5V12.8C20.12,12.29 19.09,12 18,12L17,12.08V11M17,9V7H7V9H17Z"></path></svg> {__("Write New Thread")}
				</div>
				
				<form class="js_ajax-forms" data-url="forums/thread.php?do=create&id={$forum['forum_id']}">
					<label class="ele_field">
						<input type="text" name="title" placeholder=" ">
						<span>{__("Title")}</span>
					</label>
					
					<div class="form-group">
						<label class="form-control-label">
							{__("Content")}
						</label>
						<textarea name="text" class="form-control js_wysiwyg"></textarea>
					</div>

					<!-- error -->
					<div class="alert alert-danger mb0 x-hidden"></div>
					<!-- error -->
					
					<div class="text-center ele_sett_bott_btn">
						<a class="btn btn-mat" href="{$system['system_url']}/forums/{$forum['forum_id']}/{$forum['title_url']}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Publish")}</button>
					</div>
				</form>
			</div>
			<!-- new thread -->

		{elseif $view == "edit-thread"}

			<!-- breadcrumb -->
			<ol class="d-inline-flex mb-0 breadcrumb forum-breadcrumb">
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/"><svg xmlns="http://www.w3.org/2000/svg" height="17" viewBox="0 0 24 24" width="17" fill="currentColor" class="mt-n1"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M10 19v-5h4v5c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-7h1.7c.46 0 .68-.57.33-.87L12.67 3.6c-.38-.34-.96-.34-1.34 0l-8.36 7.53c-.34.3-.13.87.33.87H5v7c0 .55.45 1 1 1h3c.55 0 1-.45 1-1z"></path></svg></a></li>
				{if $thread['forum']['parents']}
					{foreach array_reverse($thread['forum']['parents']) as $parent}
						<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$parent['forum_id']}/{$parent['title_url']}">{__($parent['forum_name'])}</a></li>
					{/foreach}
				{/if}
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$thread['forum']['forum_id']}/{$thread['forum']['title_url']}">{__($thread['forum']['forum_name'])}</a></li>
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/thread/{$thread['thread_id']}/{$thread['title_url']}">{$thread['title']}</a></li>
				<li class="breadcrumb-item active">{__("Edit Thread")}</li>
			</ol>
			<!-- breadcrumb -->

			<!-- edit thread -->
			<div class="px-2 pb20 mt20">
				<div class="valign ele_page_hdng border-0 pb0"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20.71,7.04C21.1,6.65 21.1,6 20.71,5.63L18.37,3.29C18,2.9 17.35,2.9 16.96,3.29L15.12,5.12L18.87,8.87M3,17.25V21H6.75L17.81,9.93L14.06,6.18L3,17.25Z"></path></svg> {__("Edit Thread")}
				</div>

				<form class="js_ajax-forms" data-url="forums/thread.php?do=edit&id={$thread['thread_id']}">
					<label class="ele_field">
						<input type="text" name="title" placeholder=" " value="{$thread['title']}">
						<span>{__("Title")}</span>
					</label>
					
					<div class="form-group">
						<label class="form-control-label">
							{__("Content")}
						</label>
						<textarea name="text" class="form-control js_wysiwyg">{$thread['text']}</textarea>
					</div>

					<!-- error -->
					<div class="alert alert-danger mb0 x-hidden"></div>
					<!-- error -->

					<div class="text-center ele_sett_bott_btn">
						<a class="btn btn-mat" href="{$system['system_url']}/forums/thread/{$thread['thread_id']}/{$thread['title_url']}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Update")}</button>
					</div>
				</form>
			</div>
			<!-- edit thread -->

		{elseif $view == "new-reply"}

			<!-- breadcrumb -->
			<ol class="d-inline-flex mb-0 breadcrumb forum-breadcrumb">
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/"><svg xmlns="http://www.w3.org/2000/svg" height="17" viewBox="0 0 24 24" width="17" fill="currentColor" class="mt-n1"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M10 19v-5h4v5c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-7h1.7c.46 0 .68-.57.33-.87L12.67 3.6c-.38-.34-.96-.34-1.34 0l-8.36 7.53c-.34.3-.13.87.33.87H5v7c0 .55.45 1 1 1h3c.55 0 1-.45 1-1z"></path></svg></a></li>
				{if $thread['forum']['parents']}
					{foreach array_reverse($thread['forum']['parents']) as $parent}
						<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$parent['forum_id']}/{$parent['title_url']}">{__($parent['forum_name'])}</a></li>
					{/foreach}
				{/if}
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$thread['forum']['forum_id']}/{$thread['forum']['title_url']}">{__($thread['forum']['forum_name'])}</a></li>
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/thread/{$thread['thread_id']}/{$thread['title_url']}">{$thread['title']}</a></li>
				<li class="breadcrumb-item active">{__("Post Reply")}</li>
			</ol>
			<!-- breadcrumb -->

			<!-- new reply -->
			<div class="px-2 pb20 mt20">
				<div class="valign ele_page_hdng border-0 pb0"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M10 9V7.41c0-.89-1.08-1.34-1.71-.71L3.7 11.29c-.39.39-.39 1.02 0 1.41l4.59 4.59c.63.63 1.71.19 1.71-.7V14.9c5 0 8.5 1.6 11 5.1-1-5-4-10-11-11z"></path></svg> {__("Post Reply")}
				</div>
				<form class="js_ajax-forms" data-url="forums/reply.php?do=create&id={$thread['thread_id']}">
					<div class="form-group">
						<textarea name="text" class="form-control js_wysiwyg"></textarea>
					</div>

					<!-- error -->
					<div class="alert alert-danger mb0 x-hidden"></div>
					<!-- error -->
					
					<div class="text-center ele_sett_bott_btn">
						<a class="btn btn-mat" href="{$system['system_url']}/forums/thread/{$thread['thread_id']}/{$thread['title_url']}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Reply")}</button> 
					</div>
				</form>
			</div>
			<!-- new reply -->

		{elseif $view == "edit-reply"}

			<!-- breadcrumb -->
			<ol class="d-inline-flex mb-0 breadcrumb forum-breadcrumb">
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/"><svg xmlns="http://www.w3.org/2000/svg" height="17" viewBox="0 0 24 24" width="17" fill="currentColor" class="mt-n1"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M10 19v-5h4v5c0 .55.45 1 1 1h3c.55 0 1-.45 1-1v-7h1.7c.46 0 .68-.57.33-.87L12.67 3.6c-.38-.34-.96-.34-1.34 0l-8.36 7.53c-.34.3-.13.87.33.87H5v7c0 .55.45 1 1 1h3c.55 0 1-.45 1-1z"></path></svg></a></li>
				{if $reply['thread']['forum']['parents']}
					{foreach array_reverse($reply['thread']['forum']['parents']) as $parent}
						<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$parent['forum_id']}/{$parent['title_url']}">{__($parent['forum_name'])}</a></li>
					{/foreach}
				{/if}
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/{$reply['thread']['forum']['forum_id']}/{$reply['thread']['forum']['title_url']}">{__($reply['thread']['forum']['forum_name'])}</a></li>
				<li class="breadcrumb-item"><a href="{$system['system_url']}/forums/thread/{$reply['thread']['thread_id']}/{$reply['thread']['title_url']}">{$reply['thread']['title']}</a></li>
				<li class="breadcrumb-item active">{__("Edit Reply")}</li>
			</ol>
			<!-- breadcrumb -->

			<!-- new reply -->
			<div class="px-2 pb20 mt20">
				<div class="valign ele_page_hdng border-0 pb0"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20.71,7.04C21.1,6.65 21.1,6 20.71,5.63L18.37,3.29C18,2.9 17.35,2.9 16.96,3.29L15.12,5.12L18.87,8.87M3,17.25V21H6.75L17.81,9.93L14.06,6.18L3,17.25Z"></path></svg> {__("Edit Reply")}</div>

				<form class="js_ajax-forms" data-url="forums/reply.php?do=edit&id={$reply['reply_id']}">
					<div class="form-group">
						<textarea name="text" class="form-control js_wysiwyg">{$reply['text']}</textarea>
					</div>

					<!-- error -->
					<div class="alert alert-danger mb0 x-hidden"></div>
					<!-- error -->
					
					<div class="text-center ele_sett_bott_btn">
						<a class="btn btn-mat" href="{$system['system_url']}/forums/thread/{$reply['thread']['thread_id']}/{$reply['thread']['title_url']}"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Update")}</button> 
					</div>
				</form>
			</div>
			<!-- new reply -->

		{elseif $view == "my-threads"}

			<!-- threads -->
			{if $threads}
				{foreach $threads as $thread}
					<div class="mb15 p-3 forum-result">
						<div class="mb10">
							<strong class="title bold mb5 d-block"><a href="{$system['system_url']}/forums/thread/{$thread['thread_id']}/{$thread['title_url']}">{$thread['title']}</a></strong>
							<div class="mx-n2">
								<div class="d-inline-flex align-items-center px-2">
									<a href="{$system['system_url']}/forums/{$thread['forum']['forum_id']}/{$thread['forum']['title_url']}" class="d-inline-flex align-items-center body_color">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M12.6761 19.9589C12.9508 20.0228 12.976 20.3827 12.7084 20.4719L11.1284 20.9919C7.15839 22.2719 5.06839 21.2019 3.77839 17.2319L2.49839 13.2819C1.21839 9.31187 2.27839 7.21187 6.24839 5.93187L6.77238 5.75834C7.17525 5.62493 7.56731 6.02899 7.45292 6.43766C7.39622 6.64023 7.34167 6.85164 7.28839 7.07188L6.30839 11.2619C5.20839 15.9719 6.81839 18.5719 11.5284 19.6919L12.6761 19.9589Z" fill="currentColor"/><path d="M17.1702 3.20854L15.5002 2.81854C12.1602 2.02854 10.1702 2.67854 9.00018 5.09854C8.70018 5.70854 8.46018 6.44854 8.26018 7.29854L7.28018 11.4885C6.30018 15.6685 7.59018 17.7285 11.7602 18.7185L13.4402 19.1185C14.0202 19.2585 14.5602 19.3485 15.0602 19.3885C18.1802 19.6885 19.8402 18.2285 20.6802 14.6185L21.6602 10.4385C22.6402 6.25854 21.3602 4.18854 17.1702 3.20854ZM15.2902 13.3285C15.2002 13.6685 14.9002 13.8885 14.5602 13.8885C14.5002 13.8885 14.4402 13.8785 14.3702 13.8685L11.4602 13.1285C11.0602 13.0285 10.8202 12.6185 10.9202 12.2185C11.0202 11.8185 11.4302 11.5785 11.8302 11.6785L14.7402 12.4185C15.1502 12.5185 15.3902 12.9285 15.2902 13.3285ZM18.2202 9.94854C18.1302 10.2885 17.8302 10.5085 17.4902 10.5085C17.4302 10.5085 17.3702 10.4985 17.3002 10.4885L12.4502 9.25854C12.0502 9.15854 11.8102 8.74854 11.9102 8.34854C12.0102 7.94854 12.4202 7.70854 12.8202 7.80854L17.6702 9.03854C18.0802 9.12854 18.3202 9.53854 18.2202 9.94854Z" fill="currentColor"/></svg>&nbsp;{__($thread['forum']['forum_name'])}
									</a>
								</div>
								<div class="d-inline-flex align-items-center px-2">
									<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM16.35 15.57C16.21 15.81 15.96 15.94 15.7 15.94C15.57 15.94 15.44 15.91 15.32 15.83L12.22 13.98C11.45 13.52 10.88 12.51 10.88 11.62V7.52C10.88 7.11 11.22 6.77 11.63 6.77C12.04 6.77 12.38 7.11 12.38 7.52V11.62C12.38 11.98 12.68 12.51 12.99 12.69L16.09 14.54C16.45 14.75 16.57 15.21 16.35 15.57Z" fill="currentColor"/></svg>&nbsp;<span class="js_moment" data-time="{$thread['time']}">{$thread['time']}</span>
								</div>
								<div class="d-inline-flex align-items-center px-2 text-lowercase">
									<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M17 2H7C4.24 2 2 4.23 2 6.98V12.96V13.96C2 16.71 4.24 18.94 7 18.94H8.5C8.77 18.94 9.13 19.12 9.3 19.34L10.8 21.33C11.46 22.21 12.54 22.21 13.2 21.33L14.7 19.34C14.89 19.09 15.19 18.94 15.5 18.94H17C19.76 18.94 22 16.71 22 13.96V6.98C22 4.23 19.76 2 17 2ZM13 13.75H7C6.59 13.75 6.25 13.41 6.25 13C6.25 12.59 6.59 12.25 7 12.25H13C13.41 12.25 13.75 12.59 13.75 13C13.75 13.41 13.41 13.75 13 13.75ZM17 8.75H7C6.59 8.75 6.25 8.41 6.25 8C6.25 7.59 6.59 7.25 7 7.25H17C17.41 7.25 17.75 7.59 17.75 8C17.75 8.41 17.41 8.75 17 8.75Z" fill="currentColor"></path></svg>&nbsp;{$thread['replies']} {__("Replies")}
								</div>
								<div class="d-inline-flex align-items-center px-2 text-lowercase">
									<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M21.25 9.14969C18.94 5.51969 15.56 3.42969 12 3.42969C10.22 3.42969 8.49 3.94969 6.91 4.91969C5.33 5.89969 3.91 7.32969 2.75 9.14969C1.75 10.7197 1.75 13.2697 2.75 14.8397C5.06 18.4797 8.44 20.5597 12 20.5597C13.78 20.5597 15.51 20.0397 17.09 19.0697C18.67 18.0897 20.09 16.6597 21.25 14.8397C22.25 13.2797 22.25 10.7197 21.25 9.14969ZM12 16.0397C9.76 16.0397 7.96 14.2297 7.96 11.9997C7.96 9.76969 9.76 7.95969 12 7.95969C14.24 7.95969 16.04 9.76969 16.04 11.9997C16.04 14.2297 14.24 16.0397 12 16.0397Z" fill="currentColor"/><path d="M11.9984 9.14062C10.4284 9.14062 9.14844 10.4206 9.14844 12.0006C9.14844 13.5706 10.4284 14.8506 11.9984 14.8506C13.5684 14.8506 14.8584 13.5706 14.8584 12.0006C14.8584 10.4306 13.5684 9.14062 11.9984 9.14062Z" fill="currentColor"/></svg>&nbsp;{$thread['views']} {__("Views")}
								</div>
							</div>
						</div>
						
						<div class="ele_content snippet">
							{$thread['text_snippet']|truncate:300}
						</div>
					</div>
				{/foreach}
				<div class="mb15">
					{$pager}
				</div>
			{else}
				{include file='_no_data.tpl'}
			{/if}
			<!-- threads -->

		{elseif $view == "my-replies"}

			<!-- replies -->
			{if $replies}
				{foreach $replies as $reply}
					<div class="mb15 p-3 forum-result">
						<div class="mb10">
							<strong class="title bold mb5 d-block"><a href="{$system['system_url']}/forums/thread/{$reply['thread']['thread_id']}/{$reply['thread']['title_url']}">{$reply['thread']['title']}</a></strong>
							<div class="mx-n2">
								<div class="d-inline-flex align-items-center px-2">
									<a href="{$system['system_url']}/forums/{$reply['thread']['forum']['forum_id']}/{$reply['thread']['forum']['title_url']}" class="d-inline-flex align-items-center body_color">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M12.6761 19.9589C12.9508 20.0228 12.976 20.3827 12.7084 20.4719L11.1284 20.9919C7.15839 22.2719 5.06839 21.2019 3.77839 17.2319L2.49839 13.2819C1.21839 9.31187 2.27839 7.21187 6.24839 5.93187L6.77238 5.75834C7.17525 5.62493 7.56731 6.02899 7.45292 6.43766C7.39622 6.64023 7.34167 6.85164 7.28839 7.07188L6.30839 11.2619C5.20839 15.9719 6.81839 18.5719 11.5284 19.6919L12.6761 19.9589Z" fill="currentColor"/><path d="M17.1702 3.20854L15.5002 2.81854C12.1602 2.02854 10.1702 2.67854 9.00018 5.09854C8.70018 5.70854 8.46018 6.44854 8.26018 7.29854L7.28018 11.4885C6.30018 15.6685 7.59018 17.7285 11.7602 18.7185L13.4402 19.1185C14.0202 19.2585 14.5602 19.3485 15.0602 19.3885C18.1802 19.6885 19.8402 18.2285 20.6802 14.6185L21.6602 10.4385C22.6402 6.25854 21.3602 4.18854 17.1702 3.20854ZM15.2902 13.3285C15.2002 13.6685 14.9002 13.8885 14.5602 13.8885C14.5002 13.8885 14.4402 13.8785 14.3702 13.8685L11.4602 13.1285C11.0602 13.0285 10.8202 12.6185 10.9202 12.2185C11.0202 11.8185 11.4302 11.5785 11.8302 11.6785L14.7402 12.4185C15.1502 12.5185 15.3902 12.9285 15.2902 13.3285ZM18.2202 9.94854C18.1302 10.2885 17.8302 10.5085 17.4902 10.5085C17.4302 10.5085 17.3702 10.4985 17.3002 10.4885L12.4502 9.25854C12.0502 9.15854 11.8102 8.74854 11.9102 8.34854C12.0102 7.94854 12.4202 7.70854 12.8202 7.80854L17.6702 9.03854C18.0802 9.12854 18.3202 9.53854 18.2202 9.94854Z" fill="currentColor"/></svg>&nbsp;{__($reply['thread']['forum']['forum_name'])}
									</a>
								</div>
								<div class="d-inline-flex align-items-center px-2">
									<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM16.35 15.57C16.21 15.81 15.96 15.94 15.7 15.94C15.57 15.94 15.44 15.91 15.32 15.83L12.22 13.98C11.45 13.52 10.88 12.51 10.88 11.62V7.52C10.88 7.11 11.22 6.77 11.63 6.77C12.04 6.77 12.38 7.11 12.38 7.52V11.62C12.38 11.98 12.68 12.51 12.99 12.69L16.09 14.54C16.45 14.75 16.57 15.21 16.35 15.57Z" fill="currentColor"/></svg>&nbsp;<span class="js_moment" data-time="{$reply['time']}">{$reply['time']}</span>
								</div>
								<div class="d-inline-flex align-items-center px-2 text-lowercase">
									<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M17 2H7C4.24 2 2 4.23 2 6.98V12.96V13.96C2 16.71 4.24 18.94 7 18.94H8.5C8.77 18.94 9.13 19.12 9.3 19.34L10.8 21.33C11.46 22.21 12.54 22.21 13.2 21.33L14.7 19.34C14.89 19.09 15.19 18.94 15.5 18.94H17C19.76 18.94 22 16.71 22 13.96V6.98C22 4.23 19.76 2 17 2ZM13 13.75H7C6.59 13.75 6.25 13.41 6.25 13C6.25 12.59 6.59 12.25 7 12.25H13C13.41 12.25 13.75 12.59 13.75 13C13.75 13.41 13.41 13.75 13 13.75ZM17 8.75H7C6.59 8.75 6.25 8.41 6.25 8C6.25 7.59 6.59 7.25 7 7.25H17C17.41 7.25 17.75 7.59 17.75 8C17.75 8.41 17.41 8.75 17 8.75Z" fill="currentColor"></path></svg>&nbsp;{$reply['thread']['replies']} {__("Replies")}
								</div>
								<div class="d-inline-flex align-items-center px-2 text-lowercase">
									<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M21.25 9.14969C18.94 5.51969 15.56 3.42969 12 3.42969C10.22 3.42969 8.49 3.94969 6.91 4.91969C5.33 5.89969 3.91 7.32969 2.75 9.14969C1.75 10.7197 1.75 13.2697 2.75 14.8397C5.06 18.4797 8.44 20.5597 12 20.5597C13.78 20.5597 15.51 20.0397 17.09 19.0697C18.67 18.0897 20.09 16.6597 21.25 14.8397C22.25 13.2797 22.25 10.7197 21.25 9.14969ZM12 16.0397C9.76 16.0397 7.96 14.2297 7.96 11.9997C7.96 9.76969 9.76 7.95969 12 7.95969C14.24 7.95969 16.04 9.76969 16.04 11.9997C16.04 14.2297 14.24 16.0397 12 16.0397Z" fill="currentColor"/><path d="M11.9984 9.14062C10.4284 9.14062 9.14844 10.4206 9.14844 12.0006C9.14844 13.5706 10.4284 14.8506 11.9984 14.8506C13.5684 14.8506 14.8584 13.5706 14.8584 12.0006C14.8584 10.4306 13.5684 9.14062 11.9984 9.14062Z" fill="currentColor"/></svg>&nbsp;{$reply['thread']['views']} {__("Views")}
								</div>
							</div>
						</div>

						<div class="ele_content snippet">
							{$reply['text_snippet']|truncate:300}
						</div>
					</div>
				{/foreach}
				<div class="mb15">
					{$pager}
				</div>
			{else}
				{include file='_no_data.tpl'}
			{/if}
			<!-- replies -->

		{elseif $view == "search"}

			<!-- search -->
			<div class="ele_page_content">
				<form action="{$system['system_url']}/forums/search-results" method="get">
					<label class="ele_field">
						<input type="text" name="query" placeholder=" " required autofocus>
						<span>{__("Keyword(s)")}</span>
					</label>
					
					<label class="ele_field">
						<select name="type">
							<option value="threads">{__("Threads")}</option>
							<option value="replies">{__("Replies")}</option>
						</select>
						<span>{__("Search For")}</span>
					</label>
					
					<label class="ele_field">
						<select name="forum">
							<option value="all">{__("Search All Forums")}</option>
							{foreach $forums as $forum}
								{include file='admin.forums.recursive_options.tpl'}
							{/foreach}
						</select>
						<span>{__("Search in Forum(s)")}</span>
					</label>

					<div class="form-group mt-n3">
						<div class="checkbox checkbox-primary">
							<input type="checkbox" name="recursive" id="recursive"> 
							<label for="recursive">{__("Also search in child forums")}</label>
						</div>
					</div>

					<!-- error -->
					<div class="alert alert-danger mb0 x-hidden"></div>
					<!-- error -->
					
					<div class="text-center ele_sett_bott_btn">
						<button type="submit" class="btn btn-primary btn-mat">{__("Search")}</button> 
					</div>
				</form>
			</div>
			<!-- search -->

		{elseif $view == "search-results"}

			<!-- search title -->
			<div class="valign ele_page_hdng border-0 pb0">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M9.5,3A6.5,6.5 0 0,1 16,9.5C16,11.11 15.41,12.59 14.44,13.73L14.71,14H15.5L20.5,19L19,20.5L14,15.5V14.71L13.73,14.44C12.59,15.41 11.11,16 9.5,16A6.5,6.5 0 0,1 3,9.5A6.5,6.5 0 0,1 9.5,3M9.5,5C7,5 5,7 5,9.5C5,12 7,14 9.5,14C12,14 14,12 14,9.5C14,7 12,5 9.5,5Z"></path></svg> {__("Keyword(s)")}: <u>{htmlentities($query, ENT_QUOTES, 'utf-8')}</u>&nbsp;&nbsp;<span class="badge badge-lg badge-secondary mr5">{if $total}{$total}{else}0{/if}</span> {__("Results Found")}
			</div>
			<!-- search title -->

			<!-- search results -->
			{if $type == "threads"}
				<!-- threads -->
				{if $results}
					{foreach $results as $thread}
						<div class="mb15 p-3 forum-result">
							<div class="mb10">
								<strong class="title bold mb5 d-block"><a href="{$system['system_url']}/forums/thread/{$thread['thread_id']}/{$thread['title_url']}">{$thread['title']}</a></strong>
								<div class="mx-n2">
									<div class="d-inline-flex align-items-center px-2">
										<a href="{$system['system_url']}/{$thread['user_name']}" class="d-inline-flex align-items-center body_color">
											<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M22 12C22 6.49 17.51 2 12 2C6.49 2 2 6.49 2 12C2 14.9 3.25 17.51 5.23 19.34C5.23 19.35 5.23 19.35 5.22 19.36C5.32 19.46 5.44 19.54 5.54 19.63C5.6 19.68 5.65 19.73 5.71 19.77C5.89 19.92 6.09 20.06 6.28 20.2C6.35 20.25 6.41 20.29 6.48 20.34C6.67 20.47 6.87 20.59 7.08 20.7C7.15 20.74 7.23 20.79 7.3 20.83C7.5 20.94 7.71 21.04 7.93 21.13C8.01 21.17 8.09 21.21 8.17 21.24C8.39 21.33 8.61 21.41 8.83 21.48C8.91 21.51 8.99 21.54 9.07 21.56C9.31 21.63 9.55 21.69 9.79 21.75C9.86 21.77 9.93 21.79 10.01 21.8C10.29 21.86 10.57 21.9 10.86 21.93C10.9 21.93 10.94 21.94 10.98 21.95C11.32 21.98 11.66 22 12 22C12.34 22 12.68 21.98 13.01 21.95C13.05 21.95 13.09 21.94 13.13 21.93C13.42 21.9 13.7 21.86 13.98 21.8C14.05 21.79 14.12 21.76 14.2 21.75C14.44 21.69 14.69 21.64 14.92 21.56C15 21.53 15.08 21.5 15.16 21.48C15.38 21.4 15.61 21.33 15.82 21.24C15.9 21.21 15.98 21.17 16.06 21.13C16.27 21.04 16.48 20.94 16.69 20.83C16.77 20.79 16.84 20.74 16.91 20.7C17.11 20.58 17.31 20.47 17.51 20.34C17.58 20.3 17.64 20.25 17.71 20.2C17.91 20.06 18.1 19.92 18.28 19.77C18.34 19.72 18.39 19.67 18.45 19.63C18.56 19.54 18.67 19.45 18.77 19.36C18.77 19.35 18.77 19.35 18.76 19.34C20.75 17.51 22 14.9 22 12ZM16.94 16.97C14.23 15.15 9.79 15.15 7.06 16.97C6.62 17.26 6.26 17.6 5.96 17.97C4.44 16.43 3.5 14.32 3.5 12C3.5 7.31 7.31 3.5 12 3.5C16.69 3.5 20.5 7.31 20.5 12C20.5 14.32 19.56 16.43 18.04 17.97C17.75 17.6 17.38 17.26 16.94 16.97Z" fill="currentColor"/><path d="M12 6.92969C9.93 6.92969 8.25 8.60969 8.25 10.6797C8.25 12.7097 9.84 14.3597 11.95 14.4197C11.98 14.4197 12.02 14.4197 12.04 14.4197C12.06 14.4197 12.09 14.4197 12.11 14.4197C12.12 14.4197 12.13 14.4197 12.13 14.4197C14.15 14.3497 15.74 12.7097 15.75 10.6797C15.75 8.60969 14.07 6.92969 12 6.92969Z" fill="currentColor"/></svg>&nbsp;{$thread['user_fullname']}
										</a>
									</div>
									<div class="d-inline-flex align-items-center px-2">
										<a href="{$system['system_url']}/forums/{$thread['forum']['forum_id']}/{$thread['forum']['title_url']}" class="d-inline-flex align-items-center body_color">
											<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M12.6761 19.9589C12.9508 20.0228 12.976 20.3827 12.7084 20.4719L11.1284 20.9919C7.15839 22.2719 5.06839 21.2019 3.77839 17.2319L2.49839 13.2819C1.21839 9.31187 2.27839 7.21187 6.24839 5.93187L6.77238 5.75834C7.17525 5.62493 7.56731 6.02899 7.45292 6.43766C7.39622 6.64023 7.34167 6.85164 7.28839 7.07188L6.30839 11.2619C5.20839 15.9719 6.81839 18.5719 11.5284 19.6919L12.6761 19.9589Z" fill="currentColor"/><path d="M17.1702 3.20854L15.5002 2.81854C12.1602 2.02854 10.1702 2.67854 9.00018 5.09854C8.70018 5.70854 8.46018 6.44854 8.26018 7.29854L7.28018 11.4885C6.30018 15.6685 7.59018 17.7285 11.7602 18.7185L13.4402 19.1185C14.0202 19.2585 14.5602 19.3485 15.0602 19.3885C18.1802 19.6885 19.8402 18.2285 20.6802 14.6185L21.6602 10.4385C22.6402 6.25854 21.3602 4.18854 17.1702 3.20854ZM15.2902 13.3285C15.2002 13.6685 14.9002 13.8885 14.5602 13.8885C14.5002 13.8885 14.4402 13.8785 14.3702 13.8685L11.4602 13.1285C11.0602 13.0285 10.8202 12.6185 10.9202 12.2185C11.0202 11.8185 11.4302 11.5785 11.8302 11.6785L14.7402 12.4185C15.1502 12.5185 15.3902 12.9285 15.2902 13.3285ZM18.2202 9.94854C18.1302 10.2885 17.8302 10.5085 17.4902 10.5085C17.4302 10.5085 17.3702 10.4985 17.3002 10.4885L12.4502 9.25854C12.0502 9.15854 11.8102 8.74854 11.9102 8.34854C12.0102 7.94854 12.4202 7.70854 12.8202 7.80854L17.6702 9.03854C18.0802 9.12854 18.3202 9.53854 18.2202 9.94854Z" fill="currentColor"/></svg>&nbsp;{__($thread['forum']['forum_name'])}
										</a>
									</div>
									<div class="d-inline-flex align-items-center px-2">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM16.35 15.57C16.21 15.81 15.96 15.94 15.7 15.94C15.57 15.94 15.44 15.91 15.32 15.83L12.22 13.98C11.45 13.52 10.88 12.51 10.88 11.62V7.52C10.88 7.11 11.22 6.77 11.63 6.77C12.04 6.77 12.38 7.11 12.38 7.52V11.62C12.38 11.98 12.68 12.51 12.99 12.69L16.09 14.54C16.45 14.75 16.57 15.21 16.35 15.57Z" fill="currentColor"/></svg>&nbsp;<span class="js_moment" data-time="{$thread['time']}">{$thread['time']}</span>
									</div>
									<div class="d-inline-flex align-items-center px-2 text-lowercase">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M17 2H7C4.24 2 2 4.23 2 6.98V12.96V13.96C2 16.71 4.24 18.94 7 18.94H8.5C8.77 18.94 9.13 19.12 9.3 19.34L10.8 21.33C11.46 22.21 12.54 22.21 13.2 21.33L14.7 19.34C14.89 19.09 15.19 18.94 15.5 18.94H17C19.76 18.94 22 16.71 22 13.96V6.98C22 4.23 19.76 2 17 2ZM13 13.75H7C6.59 13.75 6.25 13.41 6.25 13C6.25 12.59 6.59 12.25 7 12.25H13C13.41 12.25 13.75 12.59 13.75 13C13.75 13.41 13.41 13.75 13 13.75ZM17 8.75H7C6.59 8.75 6.25 8.41 6.25 8C6.25 7.59 6.59 7.25 7 7.25H17C17.41 7.25 17.75 7.59 17.75 8C17.75 8.41 17.41 8.75 17 8.75Z" fill="currentColor"></path></svg>&nbsp;{$thread['replies']} {__("Replies")}
									</div>
									<div class="d-inline-flex align-items-center px-2 text-lowercase">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M21.25 9.14969C18.94 5.51969 15.56 3.42969 12 3.42969C10.22 3.42969 8.49 3.94969 6.91 4.91969C5.33 5.89969 3.91 7.32969 2.75 9.14969C1.75 10.7197 1.75 13.2697 2.75 14.8397C5.06 18.4797 8.44 20.5597 12 20.5597C13.78 20.5597 15.51 20.0397 17.09 19.0697C18.67 18.0897 20.09 16.6597 21.25 14.8397C22.25 13.2797 22.25 10.7197 21.25 9.14969ZM12 16.0397C9.76 16.0397 7.96 14.2297 7.96 11.9997C7.96 9.76969 9.76 7.95969 12 7.95969C14.24 7.95969 16.04 9.76969 16.04 11.9997C16.04 14.2297 14.24 16.0397 12 16.0397Z" fill="currentColor"/><path d="M11.9984 9.14062C10.4284 9.14062 9.14844 10.4206 9.14844 12.0006C9.14844 13.5706 10.4284 14.8506 11.9984 14.8506C13.5684 14.8506 14.8584 13.5706 14.8584 12.0006C14.8584 10.4306 13.5684 9.14062 11.9984 9.14062Z" fill="currentColor"/></svg>&nbsp;{$thread['views']} {__("Views")}
									</div>
								</div>
							</div>

							<div class="ele_content snippet">
								{$thread['text_snippet']|truncate:300}
							</div>
						</div>
					{/foreach}
					<div class="mb15">
						{$pager}
					</div>
				{else}
					{include file='_no_data.tpl'}
				{/if}
				<!-- threads -->
			{elseif $type == "replies"}
				<!-- replies -->
				{if $results}
					{foreach $results as $reply}
						<div class="mb15 p-3 forum-result">
							<div class="mb10">
								<strong class="title bold mb5 d-block"><a href="{$system['system_url']}/forums/thread/{$reply['thread']['thread_id']}/{$reply['thread']['title_url']}">{$reply['thread']['title']}</a></strong>
								<div class="mx-n2">
									<div class="d-inline-flex align-items-center px-2">
										<a href="{$system['system_url']}/{$reply['thread']['user_name']}" class="d-inline-flex align-items-center body_color">
											<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M22 12C22 6.49 17.51 2 12 2C6.49 2 2 6.49 2 12C2 14.9 3.25 17.51 5.23 19.34C5.23 19.35 5.23 19.35 5.22 19.36C5.32 19.46 5.44 19.54 5.54 19.63C5.6 19.68 5.65 19.73 5.71 19.77C5.89 19.92 6.09 20.06 6.28 20.2C6.35 20.25 6.41 20.29 6.48 20.34C6.67 20.47 6.87 20.59 7.08 20.7C7.15 20.74 7.23 20.79 7.3 20.83C7.5 20.94 7.71 21.04 7.93 21.13C8.01 21.17 8.09 21.21 8.17 21.24C8.39 21.33 8.61 21.41 8.83 21.48C8.91 21.51 8.99 21.54 9.07 21.56C9.31 21.63 9.55 21.69 9.79 21.75C9.86 21.77 9.93 21.79 10.01 21.8C10.29 21.86 10.57 21.9 10.86 21.93C10.9 21.93 10.94 21.94 10.98 21.95C11.32 21.98 11.66 22 12 22C12.34 22 12.68 21.98 13.01 21.95C13.05 21.95 13.09 21.94 13.13 21.93C13.42 21.9 13.7 21.86 13.98 21.8C14.05 21.79 14.12 21.76 14.2 21.75C14.44 21.69 14.69 21.64 14.92 21.56C15 21.53 15.08 21.5 15.16 21.48C15.38 21.4 15.61 21.33 15.82 21.24C15.9 21.21 15.98 21.17 16.06 21.13C16.27 21.04 16.48 20.94 16.69 20.83C16.77 20.79 16.84 20.74 16.91 20.7C17.11 20.58 17.31 20.47 17.51 20.34C17.58 20.3 17.64 20.25 17.71 20.2C17.91 20.06 18.1 19.92 18.28 19.77C18.34 19.72 18.39 19.67 18.45 19.63C18.56 19.54 18.67 19.45 18.77 19.36C18.77 19.35 18.77 19.35 18.76 19.34C20.75 17.51 22 14.9 22 12ZM16.94 16.97C14.23 15.15 9.79 15.15 7.06 16.97C6.62 17.26 6.26 17.6 5.96 17.97C4.44 16.43 3.5 14.32 3.5 12C3.5 7.31 7.31 3.5 12 3.5C16.69 3.5 20.5 7.31 20.5 12C20.5 14.32 19.56 16.43 18.04 17.97C17.75 17.6 17.38 17.26 16.94 16.97Z" fill="currentColor"/><path d="M12 6.92969C9.93 6.92969 8.25 8.60969 8.25 10.6797C8.25 12.7097 9.84 14.3597 11.95 14.4197C11.98 14.4197 12.02 14.4197 12.04 14.4197C12.06 14.4197 12.09 14.4197 12.11 14.4197C12.12 14.4197 12.13 14.4197 12.13 14.4197C14.15 14.3497 15.74 12.7097 15.75 10.6797C15.75 8.60969 14.07 6.92969 12 6.92969Z" fill="currentColor"/></svg>&nbsp;{$reply['thread']['user_fullname']}
										</a>
									</div>
									<div class="d-inline-flex align-items-center px-2">
										<a href="{$system['system_url']}/forums/{$reply['thread']['forum']['forum_id']}/{$reply['thread']['forum']['title_url']}" class="d-inline-flex align-items-center body_color">
											<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M12.6761 19.9589C12.9508 20.0228 12.976 20.3827 12.7084 20.4719L11.1284 20.9919C7.15839 22.2719 5.06839 21.2019 3.77839 17.2319L2.49839 13.2819C1.21839 9.31187 2.27839 7.21187 6.24839 5.93187L6.77238 5.75834C7.17525 5.62493 7.56731 6.02899 7.45292 6.43766C7.39622 6.64023 7.34167 6.85164 7.28839 7.07188L6.30839 11.2619C5.20839 15.9719 6.81839 18.5719 11.5284 19.6919L12.6761 19.9589Z" fill="currentColor"/><path d="M17.1702 3.20854L15.5002 2.81854C12.1602 2.02854 10.1702 2.67854 9.00018 5.09854C8.70018 5.70854 8.46018 6.44854 8.26018 7.29854L7.28018 11.4885C6.30018 15.6685 7.59018 17.7285 11.7602 18.7185L13.4402 19.1185C14.0202 19.2585 14.5602 19.3485 15.0602 19.3885C18.1802 19.6885 19.8402 18.2285 20.6802 14.6185L21.6602 10.4385C22.6402 6.25854 21.3602 4.18854 17.1702 3.20854ZM15.2902 13.3285C15.2002 13.6685 14.9002 13.8885 14.5602 13.8885C14.5002 13.8885 14.4402 13.8785 14.3702 13.8685L11.4602 13.1285C11.0602 13.0285 10.8202 12.6185 10.9202 12.2185C11.0202 11.8185 11.4302 11.5785 11.8302 11.6785L14.7402 12.4185C15.1502 12.5185 15.3902 12.9285 15.2902 13.3285ZM18.2202 9.94854C18.1302 10.2885 17.8302 10.5085 17.4902 10.5085C17.4302 10.5085 17.3702 10.4985 17.3002 10.4885L12.4502 9.25854C12.0502 9.15854 11.8102 8.74854 11.9102 8.34854C12.0102 7.94854 12.4202 7.70854 12.8202 7.80854L17.6702 9.03854C18.0802 9.12854 18.3202 9.53854 18.2202 9.94854Z" fill="currentColor"/></svg>&nbsp;{__($reply['thread']['forum']['forum_name'])}
										</a>
									</div>
									<div class="d-inline-flex align-items-center px-2">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M12 2C6.49 2 2 6.49 2 12C2 17.51 6.49 22 12 22C17.51 22 22 17.51 22 12C22 6.49 17.51 2 12 2ZM16.35 15.57C16.21 15.81 15.96 15.94 15.7 15.94C15.57 15.94 15.44 15.91 15.32 15.83L12.22 13.98C11.45 13.52 10.88 12.51 10.88 11.62V7.52C10.88 7.11 11.22 6.77 11.63 6.77C12.04 6.77 12.38 7.11 12.38 7.52V11.62C12.38 11.98 12.68 12.51 12.99 12.69L16.09 14.54C16.45 14.75 16.57 15.21 16.35 15.57Z" fill="currentColor"/></svg>&nbsp;<span class="js_moment" data-time="{$reply['thread']['time']}">{$reply['thread']['time']}</span>
									</div>
									<div class="d-inline-flex align-items-center px-2 text-lowercase">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M17 2H7C4.24 2 2 4.23 2 6.98V12.96V13.96C2 16.71 4.24 18.94 7 18.94H8.5C8.77 18.94 9.13 19.12 9.3 19.34L10.8 21.33C11.46 22.21 12.54 22.21 13.2 21.33L14.7 19.34C14.89 19.09 15.19 18.94 15.5 18.94H17C19.76 18.94 22 16.71 22 13.96V6.98C22 4.23 19.76 2 17 2ZM13 13.75H7C6.59 13.75 6.25 13.41 6.25 13C6.25 12.59 6.59 12.25 7 12.25H13C13.41 12.25 13.75 12.59 13.75 13C13.75 13.41 13.41 13.75 13 13.75ZM17 8.75H7C6.59 8.75 6.25 8.41 6.25 8C6.25 7.59 6.59 7.25 7 7.25H17C17.41 7.25 17.75 7.59 17.75 8C17.75 8.41 17.41 8.75 17 8.75Z" fill="currentColor"></path></svg>&nbsp;{$reply['thread']['replies']} {__("Replies")}
									</div>
									<div class="d-inline-flex align-items-center px-2 text-lowercase">
										<svg width="18" height="18" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" opacity="0.8"><path d="M21.25 9.14969C18.94 5.51969 15.56 3.42969 12 3.42969C10.22 3.42969 8.49 3.94969 6.91 4.91969C5.33 5.89969 3.91 7.32969 2.75 9.14969C1.75 10.7197 1.75 13.2697 2.75 14.8397C5.06 18.4797 8.44 20.5597 12 20.5597C13.78 20.5597 15.51 20.0397 17.09 19.0697C18.67 18.0897 20.09 16.6597 21.25 14.8397C22.25 13.2797 22.25 10.7197 21.25 9.14969ZM12 16.0397C9.76 16.0397 7.96 14.2297 7.96 11.9997C7.96 9.76969 9.76 7.95969 12 7.95969C14.24 7.95969 16.04 9.76969 16.04 11.9997C16.04 14.2297 14.24 16.0397 12 16.0397Z" fill="currentColor"/><path d="M11.9984 9.14062C10.4284 9.14062 9.14844 10.4206 9.14844 12.0006C9.14844 13.5706 10.4284 14.8506 11.9984 14.8506C13.5684 14.8506 14.8584 13.5706 14.8584 12.0006C14.8584 10.4306 13.5684 9.14062 11.9984 9.14062Z" fill="currentColor"/></svg>&nbsp;{$reply['thread']['views']} {__("Views")}
									</div>
								</div>
							</div>

							<div class="ele_content snippet">
								{$reply['text_snippet']|truncate:300}
							</div>
						</div>
					{/foreach}
					<div class="mb15">
						{$pager}
					</div>
				{else}
					{include file='_no_data.tpl'}
				{/if}
				<!-- replies -->
			{/if}
			<!-- search results -->

		{/if}
        <!-- content panel -->

    </div>
</div>
<!-- page content -->

{include file='_footer.tpl'}