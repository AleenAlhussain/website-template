{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Support Center")}</h2>
				<p class="text-xlg">{__("Fast Track Your Issue to Our Experts")}</p>
				{if !$user->_is_admin && !$user->_is_moderator}
					<a type="button" class="btn btn-mat" href="{$system['system_url']}/support/tickets/new">
						<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"></path><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"></path></svg> {__("Create Ticket")}
					</a>
				{/if}
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M17 18.4297H13L8.54999 21.3897C7.88999 21.8297 7 21.3597 7 20.5597V18.4297C4 18.4297 2 16.4297 2 13.4297V7.42969C2 4.42969 4 2.42969 7 2.42969H17C20 2.42969 22 4.42969 22 7.42969V13.4297C22 16.4297 20 18.4297 17 18.4297Z" fill="currentColor"/><path d="M11.9998 12.1094C11.5898 12.1094 11.2498 11.7694 11.2498 11.3594V11.1494C11.2498 9.98941 12.0998 9.4194 12.4198 9.1994C12.7898 8.9494 12.9098 8.77941 12.9098 8.51941C12.9098 8.01941 12.4998 7.60938 11.9998 7.60938C11.4998 7.60938 11.0898 8.01941 11.0898 8.51941C11.0898 8.92941 10.7498 9.26941 10.3398 9.26941C9.92984 9.26941 9.58984 8.92941 9.58984 8.51941C9.58984 7.18941 10.6698 6.10938 11.9998 6.10938C13.3298 6.10938 14.4098 7.18941 14.4098 8.51941C14.4098 9.65941 13.5698 10.2294 13.2598 10.4394C12.8698 10.6994 12.7498 10.8694 12.7498 11.1494V11.3594C12.7498 11.7794 12.4098 12.1094 11.9998 12.1094Z" fill="currentColor"/><path d="M12 14.6016C11.58 14.6016 11.25 14.2616 11.25 13.8516C11.25 13.4416 11.59 13.1016 12 13.1016C12.41 13.1016 12.75 13.4416 12.75 13.8516C12.75 14.2616 12.42 14.6016 12 14.6016Z" fill="currentColor"/></svg>
		</div>
    </div>
</div>

<!-- page header -->

<!-- page content -->
<div class="container position-relative mb20">
	{if $view == "" || $view == "tickets" || $view == "find"}
		<div class="ele_content p-5 mb30">
			<div class="valign flex-wrap flex-md-nowrap ele_jobs_header">
				<form class="w-100" action="{$system['system_url']}/support/tickets/find" method="get">
					<div class="valign ele_jobs_search">
						<input type="text" class="w-100" name="query" placeholder='{__("Search by Subject or TicketID")}'>
						<button type="submit" class="btn btn-mat"><svg width="24" height="24" stroke-width="1.5" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M15.5 15.5L19 19" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/><path d="M5 11C5 14.3137 7.68629 17 11 17C12.6597 17 14.1621 16.3261 15.2483 15.237C16.3308 14.1517 17 12.654 17 11C17 7.68629 14.3137 5 11 5C7.68629 5 5 7.68629 5 11Z" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Search")}</button>
					</div>
				</form>
			</div>
		</div>
	{/if}
	
	{if $view == "ticket"}
	{else}
		<div class="valign ele_post_filters">
			<div class="ele_post_filters_nav not_filter valign ele_scroll">
				<a href="{$system['system_url']}/support/tickets" class='btn-mat filterby pointer {if $view == "" || $view == "tickets" && !$status && !$unassigned}active{/if}'>
					{__("All")} ({$tickets_stats['total']})
				</a>
				{if $user->_is_admin}
					<a href="{$system['system_url']}/support/tickets?unassigned=true" class='btn-mat filterby pointer {if $unassigned}active{/if}'>
						{__("Unassigned")} ({$tickets_stats['unassigned']})
					</a>
				{/if}
				<a href="{$system['system_url']}/support/tickets?status=in_progress" class='btn-mat filterby pointer {if $status == "in_progress"}active{/if}'>
					{__("In Progress")} ({$tickets_stats['in_progress']})
				</a>
				<a href="{$system['system_url']}/support/tickets?status=opened" class='btn-mat filterby pointer {if $status == "opened"}active{/if}'>
					{__("Open")} ({$tickets_stats['opened']})
				</a>
				<a href="{$system['system_url']}/support/tickets?status=pending" class='btn-mat filterby pointer {if $status == "pending"}active{/if}'>
					{__("Pending")} ({$tickets_stats['pending']})
				</a>
				<a href="{$system['system_url']}/support/tickets?status=solved" class='btn-mat filterby pointer {if $status == "solved"}active{/if}'>
					{__("Solved")} ({$tickets_stats['solved']})
				</a>
				<a href="{$system['system_url']}/support/tickets?status=closed" class='btn-mat filterby pointer {if $status == "closed"}active{/if}'>
					{__("Closed")} ({$tickets_stats['closed']})
				</a>
			</div>
		</div>
	{/if}

	<div class="ele_content mb30">
		<!-- content panel -->
		{if $view == "" || $view == "tickets" || $view == "find"}
			<div class="heading-small mb-1">
				{__("Tickets")} {if $view == "find"} &rsaquo; {__("Search")}{/if}
			</div>
			
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="bold border-top-0">{__("ID")}</th>
							<th class="bold border-top-0">{__("Requester")}</th>
							<th class="bold border-top-0">{__("Subject")}</th>
							<th class="bold border-top-0">{__("Agent")}</th>
							<th class="bold border-top-0">{__("Status")}</th>
							<th class="bold border-top-0">{__("Last Update")}</th>
						</tr>
					</thead>
					<tbody>
						{if $tickets}
							{foreach $tickets as $ticket}
								<tr>
									<td>{$ticket['ticket_id']}</td>
									<td>
										<a target="_blank" href="{$system['system_url']}/{$ticket['requester_username']}">
											<img class="tbl-image" src="{$ticket['requester_picture']}">
											{$ticket['requester_fullname']}
										</a>
									</td>
									<td>
										<a href="{$system['system_url']}/support/tickets/{$ticket['ticket_id']}" title="{$ticket['subject']}">{$ticket['subject']|truncate:30}</a>
									</td>
									<td>
										{if $ticket['agent_id']}
											{if $user->_is_admin || $user->_is_moderator}
												<a target="_blank" href="{$system['system_url']}/{$ticket['agent_username']}">
													<img class="tbl-image" src="{$ticket['agent_picture']}">
													{$ticket['agent_fullname']}
												</a>
											{else}
												{__("Support Agent")}
											{/if}
										{else}
											{__("Unassigned")}
										{/if}
									</td>
									<td>
										{if $ticket['status'] == "opened"}
											<span class="badge badge-lg bg-primary text-white">{__("Opened")}</span>
										{elseif $ticket['status'] == "in_progress"}
											<span class="badge badge-lg bg-info text-white">{__("In Progress")}</span>
										{elseif $ticket['status'] == "pending"}
											<span class="badge badge-lg bg-warning">{__("Pending")}</span>
										{elseif $ticket['status'] == "solved"}
											<span class="badge badge-lg bg-success text-white">{__("Solved")}</span>
										{elseif $ticket['status'] == "closed"}
											<span class="badge badge-lg bg-danger text-white">{__("Closed")}</span>
										{/if}
									</td>
									<td>
										<span class="js_moment" data-time="{$ticket['updated_at']}">{$ticket['updated_at']}</span>
									</td>
								</tr>
							{/foreach}
						{else}
							<tr>
								<td colspan="6" class="text-center">
									{__("No data to show")}
								</td>
							</tr>
						{/if}
					</tbody>
				</table>
			</div>

		{elseif $view == "ticket"}
			<div class="row">
				<div class="col-lg-4">
					<div class="mb15 forum-thread">
						<div class="valign ele_sidebar_widget_title px-0 pt-0">
							<b>{__("Ticket Details")}</b>
						</div>

						<!-- requester -->
						<div>
							<div class="heading-small mb-1">
								{__("Requester")}
							</div>
							<div>
								<a target="_blank" href="{$system['system_url']}/{$ticket['requester_username']}">
									<img class="tbl-image" src="{$ticket['requester_picture']}">
									{$ticket['requester_fullname']}
								</a>
							</div>
						</div>
						<!-- requester -->
						
						<hr>
						
						<!-- agent -->
						<div>
							<div class="heading-small mb-1">
								{__("Agent")}
							</div>
							<div>
								{if $ticket['agent_id']}
									{if $user->_is_admin || $user->_is_moderator}
										<a target="_blank" href="{$system['system_url']}/{$ticket['agent_username']}">
											<img class="tbl-image" src="{$ticket['agent_picture']}">
											{$ticket['agent_fullname']}
										</a>
									{else}
										{__("Support Agent")}
									{/if}
								{else}
									{__("Unassigned")}
								{/if}
							</div>
						</div>
						<!-- agent -->
						
						<hr>
						
						<!-- status -->
						<div>
							<div class="heading-small mb-1">
								{__("Status")}
							</div>
							<div>
								{if $ticket['status'] == "opened"}
									<span class="badge badge-lg bg-primary text-white">{__("Opened")}</span>
								{elseif $ticket['status'] == "in_progress"}
									<span class="badge badge-lg bg-info text-white">{__("In Progress")}</span>
								{elseif $ticket['status'] == "pending"}
									<span class="badge badge-lg bg-warning">{__("Pending")}</span>
								{elseif $ticket['status'] == "solved"}
									<span class="badge badge-lg bg-success text-white">{__("Solved")}</span>
								{elseif $ticket['status'] == "closed"}
									<span class="badge badge-lg bg-danger text-white">{__("Closed")}</span>
								{/if}
							</div>
						</div>
						<!-- status -->
						
						<hr>
						
						<!-- last update -->
						<div>
							<div class="heading-small mb-1">
								{__("Last Update")}
							</div>
							<div>
								<span class="js_moment" data-time="{$ticket['updated_at']}">{$ticket['updated_at']}</span>
							</div>
						</div>
						<!-- last update -->
						
						<hr>
						
						<!-- created at -->
						<div>
							<div class="heading-small mb-1">
								{__("Created At")}
							</div>
							<div>
								<span class="js_moment" data-time="{$ticket['created_at']}">{$ticket['created_at']}</span>
							</div>
						</div>
						<!-- created at -->

						{if $user->_is_admin || $user->_is_moderator}
							<hr>
							<button class="btn btn-mat w-100 btn-dark" data-toggle="modal" data-url="support/ticket.php?do=update&ticket_id={$ticket['ticket_id']}">
								{__("Update")}
							</button>
						{/if}
					</div>
				</div>
				
				<div class="col-lg-8">
					<!-- ticket -->
					<div class="mb15 thread_title">
						<h1>{$ticket['subject']}</h1>
						<div class="d-block thread_title_user">
							<div class="d-table-cell align-middle">
								<a href="{$system['system_url']}/{$ticket['requester_username']}" class="d-block position-relative mr15 avatar">
									<img src="{$ticket['requester_picture']}" class="w-100 h-100 rounded-circle">
									<span class="d-flex position-absolute rounded-circle" data-toggle="tooltip" data-placement="top" title='{__("Member")}'>
										<svg width="13" height="13" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 12C14.7614 12 17 9.76142 17 7C17 4.23858 14.7614 2 12 2C9.23858 2 7 4.23858 7 7C7 9.76142 9.23858 12 12 12Z" fill="#fff"/><path d="M12.0002 14.5C6.99016 14.5 2.91016 17.86 2.91016 22C2.91016 22.28 3.13016 22.5 3.41016 22.5H20.5902C20.8702 22.5 21.0902 22.28 21.0902 22C21.0902 17.86 17.0102 14.5 12.0002 14.5Z" fill="#fff"/></svg>
									</span>
								</a>
							</div>
							<div class="d-table-cell align-middle meta">
								<h6 class="mt-1 mb-0"><a href="{$system['system_url']}/{$ticket['requester_username']}" class="body_color">{$ticket['requester_fullname']}</a></h6>
								<div class="text-muted"><span class="js_moment" data-time="{$ticket['created_at']}">{$ticket['created_at']}</span></div>
							</div>
						</div>
						
						<div class="mt-4 text-justify text">
							{$ticket['parsed_text']}
						</div>
					</div>
					<!-- ticket -->
					
					<!-- replies -->
					{if $ticket['replies']}
						<div class="page_divider mt30 mb-4 mx-n1"></div>
						{foreach $ticket['replies'] as $reply}
							<div class="mb15 forum-thread">
								<div class="row">
									<div class="col-12 col-sm-2 text-center">
										<div class="d-block thread_title_user">
											<div class="d-block align-middle">
												{if $user->_is_admin || $user->_is_moderator}
												<a href="{$system['system_url']}/{$reply['user_name']}" class="d-block position-relative avatar">
												{else}
												<a class="d-block position-relative avatar">
												{/if}
													<img src="{$reply['user_picture']}" class="w-100 h-100 rounded-circle">
													{if $user->_is_admin || $user->_is_moderator}
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
													{/if}
												</a>
											</div>
											<div class="d-block align-middle meta">
												<h6 class="mt-1 mb-0">
													{if $user->_is_admin || $user->_is_moderator}
														<a href="{$system['system_url']}/{$reply['user_name']}" class="body_color">{$reply['user_fullname']}</a>
													{else}
														<a class="body_color">{$reply['user_fullname']}</a>
													{/if}
												</h6>
												<div class="text-muted"><span class="js_moment" data-time="{$reply['created_at']}">{$reply['created_at']}</span></div>
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
					{/if}
					<!-- replies -->
					
					<!-- reply form -->
					<div class="page_divider mt30 mb-4 mx-n1"></div>
					<div class="pb20">
						<div class="heading-small mb-1">
							{__("Post Reply")}
						</div>

						<form class="js_ajax-forms-html" data-url="support/ticket.php?do=reply&id={$ticket['ticket_id']}">
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
								<button type="submit" class="btn btn-primary btn-mat">{__("Submit")}</button>
							</div>
						</form>
					</div>
					<!-- reply form -->
				</div>
			</div>
			
		{elseif $view == "new"}
			<div class="px-2 pb20">
				<div class="heading-small mb-1">
					{__("Create New Ticket")}
				</div>
				
				<form class="js_ajax-forms-html" data-url="support/ticket.php?do=create">
					<label class="ele_field">
						<input type="text" name="subject" placeholder=" ">
						<span>{__("Subject")}</span>
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
						<a class="btn btn-mat" href="{$system['system_url']}/support"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24"><path fill="currentColor" d="M20,11V13H8L13.5,18.5L12.08,19.92L4.16,12L12.08,4.08L13.5,5.5L8,11H20Z"></path></svg> {__("Go Back")}</a>
						<button type="submit" class="btn btn-primary btn-mat">{__("Submit")}</button>
					</div>
				</form>
			</div>
		{/if}
		<!-- content panel -->
	</div>
</div>
<!-- page content -->

{include file='_footer.tpl'}