<h2 class="ele_page_title small mt-n1 mb-4">{__("Invitations")}</h2>
					
<div class="alert bg-light border p-3 mb-4">
	<div class="mb-2 mx-n1">
		<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M16.19 2H7.81C4.17 2 2 4.17 2 7.81V16.18C2 19.83 4.17 22 7.81 22H16.18C19.82 22 21.99 19.83 21.99 16.19V7.81C22 4.17 19.83 2 16.19 2ZM8.18 16.77C8.16 16.77 8.13 16.77 8.11 16.77C7.14 16.68 6.23 16.23 5.55 15.51C3.95 13.83 3.95 11.1 5.55 9.42L7.74 7.12C8.52 6.3 9.57 5.84 10.69 5.84C11.81 5.84 12.86 6.29 13.64 7.12C15.24 8.8 15.24 11.53 13.64 13.21L12.55 14.36C12.26 14.66 11.79 14.67 11.49 14.39C11.19 14.1 11.18 13.63 11.46 13.33L12.55 12.18C13.61 11.07 13.61 9.26 12.55 8.16C11.56 7.12 9.82 7.12 8.82 8.16L6.63 10.46C5.57 11.57 5.57 13.38 6.63 14.48C7.06 14.94 7.64 15.22 8.25 15.28C8.66 15.32 8.96 15.69 8.92 16.1C8.89 16.48 8.56 16.77 8.18 16.77ZM18.45 14.59L16.26 16.89C15.48 17.71 14.43 18.17 13.31 18.17C12.19 18.17 11.14 17.72 10.36 16.89C8.76 15.21 8.76 12.48 10.36 10.8L11.45 9.65C11.74 9.35 12.21 9.34 12.51 9.62C12.81 9.91 12.82 10.38 12.54 10.68L11.45 11.83C10.39 12.94 10.39 14.75 11.45 15.85C12.44 16.89 14.18 16.9 15.18 15.85L17.37 13.55C18.43 12.44 18.43 10.63 17.37 9.53C16.94 9.07 16.36 8.79 15.75 8.73C15.34 8.69 15.04 8.32 15.08 7.91C15.12 7.5 15.48 7.19 15.9 7.24C16.87 7.34 17.78 7.78 18.46 8.5C20.05 10.17 20.05 12.91 18.45 14.59Z" fill="currentColor"></path></svg>
	</div>
	<div class="text">
		<strong class="bold">{__("Invitations System")}</strong><br>
		<p>{__("You have")} <strong><span class="badge badge-pill badge-danger align-middle">{if $system['invitation_user_limit'] == 0}{__("Unlimited")}{else}{$system['invitation_user_limit']}{/if}</span></strong> {__("invitations")} {if $system['invitation_user_limit'] != 0}{__("every")} {__($system['invitation_expire_period']|ucfirst)}{/if}</p>
		<button data-toggle="modal" data-url="users/invitations.php?do=generate" class="btn btn-sm btn-mat btn-success">{__("Generate New Code")}</button>
	</div>
</div>

<div class="form-row">
	<div class="col-md-4 mb-3">
		<div class="h-100 p-4 ele_forum_stats replies">
			<div class="d-flex justify-content-between">
				<h6>{__("Available Invitations")}</h6>
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"><path fill="#10c442" d="M10.59,13.41C11,13.8 11,14.44 10.59,14.83C10.2,15.22 9.56,15.22 9.17,14.83C7.22,12.88 7.22,9.71 9.17,7.76V7.76L12.71,4.22C14.66,2.27 17.83,2.27 19.78,4.22C21.73,6.17 21.73,9.34 19.78,11.29L18.29,12.78C18.3,11.96 18.17,11.14 17.89,10.36L18.36,9.88C19.54,8.71 19.54,6.81 18.36,5.64C17.19,4.46 15.29,4.46 14.12,5.64L10.59,9.17C9.41,10.34 9.41,12.24 10.59,13.41M13.41,9.17C13.8,8.78 14.44,8.78 14.83,9.17C16.78,11.12 16.78,14.29 14.83,16.24V16.24L11.29,19.78C9.34,21.73 6.17,21.73 4.22,19.78C2.27,17.83 2.27,14.66 4.22,12.71L5.71,11.22C5.7,12.04 5.83,12.86 6.11,13.65L5.64,14.12C4.46,15.29 4.46,17.19 5.64,18.36C6.81,19.54 8.71,19.54 9.88,18.36L13.41,14.83C14.59,13.66 14.59,11.76 13.41,10.59C13,10.2 13,9.56 13.41,9.17Z"></path></svg>
			</div>
			<p class="mb-0">{if $system['invitation_user_limit'] == 0}<i class="fas fa-infinity"></i>{else}{$invitation_codes_stats['available']}{/if}</p>
		</div>
	</div>
	<div class="col-md-4 mb-3">
		<div class="h-100 p-4 ele_forum_stats thread">
			<div class="d-flex justify-content-between">
				<h6>{__("Generated Invitations")}</h6>
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"><path fill="#22beff" d="M10.6 13.4A1 1 0 0 1 9.2 14.8A4.8 4.8 0 0 1 9.2 7.8L12.7 4.2A5.1 5.1 0 0 1 19.8 4.2A5.1 5.1 0 0 1 19.8 11.3L18.3 12.8A6.4 6.4 0 0 0 17.9 10.4L18.4 9.9A3.2 3.2 0 0 0 18.4 5.6A3.2 3.2 0 0 0 14.1 5.6L10.6 9.2A2.9 2.9 0 0 0 10.6 13.4M23 18V20H20V23H18V20H15V18H18V15H20V18M16.2 13.7A4.8 4.8 0 0 0 14.8 9.2A1 1 0 0 0 13.4 10.6A2.9 2.9 0 0 1 13.4 14.8L9.9 18.4A3.2 3.2 0 0 1 5.6 18.4A3.2 3.2 0 0 1 5.6 14.1L6.1 13.7A7.3 7.3 0 0 1 5.7 11.2L4.2 12.7A5.1 5.1 0 0 0 4.2 19.8A5.1 5.1 0 0 0 11.3 19.8L13.1 18A6 6 0 0 1 16.2 13.7Z"></path></svg>
			</div>
			<p class="mb-0">{$invitation_codes_stats['generated']}</p>
		</div>
	</div>
	<div class="col-md-4 mb-3">
		<div class="h-100 p-4 ele_forum_stats members">
			<div class="d-flex justify-content-between">
				<h6>{__("Used Invitations")}</h6>
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"><path fill="#FF6437" d="M10.6 13.4A1 1 0 0 1 9.2 14.8A4.8 4.8 0 0 1 9.2 7.8L12.7 4.2A5.1 5.1 0 0 1 19.8 4.2A5.1 5.1 0 0 1 19.8 11.3L18.3 12.8A6.4 6.4 0 0 0 17.9 10.4L18.4 9.9A3.2 3.2 0 0 0 18.4 5.6A3.2 3.2 0 0 0 14.1 5.6L10.6 9.2A2.9 2.9 0 0 0 10.6 13.4M23 18V20H15V18M16.2 13.7A4.8 4.8 0 0 0 14.8 9.2A1 1 0 0 0 13.4 10.6A2.9 2.9 0 0 1 13.4 14.8L9.9 18.4A3.2 3.2 0 0 1 5.6 18.4A3.2 3.2 0 0 1 5.6 14.1L6.1 13.7A7.3 7.3 0 0 1 5.7 11.2L4.2 12.7A5.1 5.1 0 0 0 4.2 19.8A5.1 5.1 0 0 0 11.3 19.8L13.1 18A6 6 0 0 1 16.2 13.7Z"></path></svg>
			</div>
			<p class="mb-0">{$invitation_codes_stats['used']}</p>
		</div>
	</div>
</div>

<hr>

<div class="heading-small mb-1">
	{__("Your Invitations Codes")}
</div>

{if $invitation_codes}
	<div class="table-responsive">
		<table class="table table-hover js_dataTable">
			<thead>
				<tr>
					<th class="bold border-top-0">{__("Invitation Code")}</th>
					<th class="bold border-top-0">{__("Created")}</th>
					<th class="bold border-top-0">{__("Used")}</th>
					<th class="bold border-top-0">{__("Used By")}</th>
					<th class="bold border-top-0">{__("Actions")}</th>
				</tr>
			</thead>
			<tbody>
				{foreach $invitation_codes as $invitation_code}
					<tr>
						<td><span class="badge badge-pill badge-lg badge-secondary">{$invitation_code['code']}</span></td>
						<td>{$invitation_code['created_date']|date_format:"%e %B %Y"}</td>
						<td>
							{if $invitation_code['used']}
								{__("Yes")}
							{else}
								{__("No")}
							{/if}
						</td>
						<td>
							{if $invitation_code['used']}
								<a target="_blank" href="{$system['system_url']}/{$invitation_code['user_name']}">
									<img class="tbl-image" src="{$invitation_code['user_picture']}">
									{$invitation_code['user_firstname']} {$invitation_code['user_lastname']}
								</a>
							{/if}
						</td>
						<td>
							{if !$invitation_code['used']}
								<button data-toggle="modal" data-url="users/invitations.php?do=share&code={$invitation_code['code']}{if $system['affiliates_enabled']}&ref={$user->_data['user_name']}{/if}" class="btn btn-sm btn-icon btn-rounded p-1 btn-secondary" title='{__("Share")}'>
									<svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M18 16.08c-.76 0-1.44.3-1.96.77L8.91 12.7c.05-.23.09-.46.09-.7s-.04-.47-.09-.7l7.05-4.11c.54.5 1.25.81 2.04.81 1.66 0 3-1.34 3-3s-1.34-3-3-3-3 1.34-3 3c0 .24.04.47.09.7L8.04 9.81C7.5 9.31 6.79 9 6 9c-1.66 0-3 1.34-3 3s1.34 3 3 3c.79 0 1.5-.31 2.04-.81l7.12 4.16c-.05.21-.08.43-.08.65 0 1.61 1.31 2.92 2.92 2.92s2.92-1.31 2.92-2.92-1.31-2.92-2.92-2.92z"/></svg>
								</button>
							{/if}
						</td>
					</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
{else}
	{include file='_no_data.tpl'}
{/if}