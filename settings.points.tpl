<h2 class="ele_page_title small mt-n1 mb-4">{__("Points System")} {if $sub_view == "payments"} &rsaquo; {__("Payments")}{/if}</h2>
					
{if $sub_view == ""}
	<div class="alert bg-light border p-3 mb-4">
		<div class="mb-2 mx-n1">
			<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.9199 16.7486C21.5899 19.4086 19.4099 21.5886 16.7499 21.9186C15.1399 22.1186 13.6399 21.6786 12.4699 20.8186C11.7999 20.3286 11.9599 19.2886 12.7599 19.0486C15.7699 18.1386 18.1399 15.7586 19.0599 12.7486C19.2999 11.9586 20.3399 11.7986 20.8299 12.4586C21.6799 13.6386 22.1199 15.1386 21.9199 16.7486Z" fill="currentColor"></path><path d="M9.99 2C5.58 2 2 5.58 2 9.99C2 14.4 5.58 17.98 9.99 17.98C14.4 17.98 17.98 14.4 17.98 9.99C17.97 5.58 14.4 2 9.99 2ZM9.05 8.87L11.46 9.71C12.33 10.02 12.75 10.63 12.75 11.57C12.75 12.65 11.89 13.54 10.84 13.54H10.75V13.59C10.75 14 10.41 14.34 10 14.34C9.59 14.34 9.25 14 9.25 13.59V13.53C8.14 13.48 7.25 12.55 7.25 11.39C7.25 10.98 7.59 10.64 8 10.64C8.41 10.64 8.75 10.98 8.75 11.39C8.75 11.75 9.01 12.04 9.33 12.04H10.83C11.06 12.04 11.24 11.83 11.24 11.57C11.24 11.22 11.18 11.2 10.95 11.12L8.54 10.28C7.68 9.98 7.25 9.37 7.25 8.42C7.25 7.34 8.11 6.45 9.16 6.45H9.25V6.41C9.25 6 9.59 5.66 10 5.66C10.41 5.66 10.75 6 10.75 6.41V6.47C11.86 6.52 12.75 7.45 12.75 8.61C12.75 9.02 12.41 9.36 12 9.36C11.59 9.36 11.25 9.02 11.25 8.61C11.25 8.25 10.99 7.96 10.67 7.96H9.17C8.94 7.96 8.76 8.17 8.76 8.43C8.75 8.77 8.81 8.79 9.05 8.87Z" fill="currentColor"></path></svg>
		</div>
		<div class="text">
			{if $system['points_per_currency'] > 0}
				{__("Each")} <strong class="bold">{$system['points_per_currency']}</strong> {__("points equal")} <strong class="bold">{print_money("1")}</strong>.
				<br>
			{/if}
			{__("Your daily points limit is")} <strong><span class="badge badge-pill badge-success align-middle">{if $system['packages_enabled'] && $user->_data['user_subscribed']}{$system['points_limit_pro']}{else}{$system['points_limit_user']}{/if}</span></strong> {__("Points")}, {__("You have")} <strong><span class="badge badge-pill badge-warning align-middle">{$remaining_points}</span></strong> {__("remaining points")}
			<br>
			{__("Your daily points limit will be reset after 24 hours from your last valid earned action")}
			<br>
			{if $system['points_per_currency'] > 0 && $system['points_money_withdraw_enabled']}
				{__("You can withdraw your money")}
			{/if}
			{if $system['points_per_currency'] > 0 && $system['points_money_transfer_enabled']}
				{if $system['points_money_withdraw_enabled']}{__("or")} {/if}
				{__("You can transfer your money to your")} <a class="main" href="{$system['system_url']}/wallet" target="_blank">{__("wallet")}</a>
			{/if}
		</div>
	</div>

	<div class="row">
		{if $system['points_per_post'] > 0}
		<div class="col-md-6">
			<div class="ele_sett_point border py-4 px-3 text-center mb-4">
				<div class="stat position-relative">
					<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="20" viewBox="0 0 24 24" width="20" fill="currentColor"><g><rect fill="none" height="24" width="24"/><path d="M19,3H5C3.9,3,3,3.9,3,5v14c0,1.1,0.9,2,2,2h14c1.1,0,2-0.9,2-2V5C21,3.9,20.1,3,19,3z M13,17H8c-0.55,0-1-0.45-1-1 c0-0.55,0.45-1,1-1h5c0.55,0,1,0.45,1,1C14,16.55,13.55,17,13,17z M16,13H8c-0.55,0-1-0.45-1-1c0-0.55,0.45-1,1-1h8 c0.55,0,1,0.45,1,1C17,12.55,16.55,13,16,13z M16,9H8C7.45,9,7,8.55,7,8c0-0.55,0.45-1,1-1h8c0.55,0,1,0.45,1,1 C17,8.55,16.55,9,16,9z"/></g></svg>
					<span class="position-absolute rounded-circle bold d-block btn-primary">{$system['points_per_post']}</span>
				</div>
				{__("Points")} {__("For creating a new post")}
			</div>
		</div>
		{/if}
		{if $system['points_per_post_comment'] > 0}
		<div class="col-sm-6">
			<div class="ele_sett_point border py-4 px-3 text-center mb-4">
				<div class="stat position-relative">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"><path fill="currentColor" d="M9,22A1,1 0 0,1 8,21V18H4A2,2 0 0,1 2,16V4C2,2.89 2.9,2 4,2H20A2,2 0 0,1 22,4V16A2,2 0 0,1 20,18H13.9L10.2,21.71C10,21.9 9.75,22 9.5,22V22H9Z"></path></svg>
					<span class="position-absolute rounded-circle bold d-block btn-primary">{$system['points_per_post_comment']}</span>
				</div>
				{__("Points")} {__("For any comment on your post")}
			</div>
		</div>
		{/if}
		{if $system['points_per_post_reaction'] > 0}
		<div class="col-sm-6">
			<div class="ele_sett_point border py-4 px-3 text-center mb-4">
				<div class="stat position-relative">
					<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="20" viewBox="0 0 24 24" width="20" fill="currentColor"><g><rect fill="none" height="24" width="24"/><rect fill="none" height="24" width="24"/></g><g><g/><path d="M11.99,2C6.47,2,2,6.48,2,12c0,5.52,4.47,10,9.99,10C17.52,22,22,17.52,22,12C22,6.48,17.52,2,11.99,2z M8.5,8 C9.33,8,10,8.67,10,9.5S9.33,11,8.5,11S7,10.33,7,9.5S7.67,8,8.5,8z M16.71,14.72C15.8,16.67,14.04,18,12,18s-3.8-1.33-4.71-3.28 C7.13,14.39,7.37,14,7.74,14h8.52C16.63,14,16.87,14.39,16.71,14.72z M15.5,11c-0.83,0-1.5-0.67-1.5-1.5S14.67,8,15.5,8 S17,8.67,17,9.5S16.33,11,15.5,11z"/></g></svg>
					<span class="position-absolute rounded-circle bold d-block btn-primary">{$system['points_per_post_reaction']}</span>
				</div>
				{__("Points")} {__("For any reaction on your post")}
			</div>
		</div>
		{/if}
		{if $system['points_per_comment'] > 0}
		<div class="col-md-6">
			<div class="ele_sett_point border py-4 px-3 text-center mb-4">
				<div class="stat position-relative">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24"><path fill="currentColor" d="M9,22A1,1 0 0,1 8,21V18H4A2,2 0 0,1 2,16V4C2,2.89 2.9,2 4,2H20A2,2 0 0,1 22,4V16A2,2 0 0,1 20,18H13.9L10.2,21.71C10,21.9 9.75,22 9.5,22V22H9Z"></path></svg>
					<span class="position-absolute rounded-circle bold d-block btn-primary">{$system['points_per_comment']}</span>
				</div>
				{__("Points")} {__("For commenting any post")}
			</div>
		</div>
		{/if}
		{if $system['points_per_reaction'] > 0}
		<div class="col-md-6">
			<div class="ele_sett_point border py-4 px-3 text-center mb-4">
				<div class="stat position-relative">
					<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="20" viewBox="0 0 24 24" width="20" fill="currentColor"><g><rect fill="none" height="24" width="24"/><rect fill="none" height="24" width="24"/></g><g><g/><path d="M11.99,2C6.47,2,2,6.48,2,12c0,5.52,4.47,10,9.99,10C17.52,22,22,17.52,22,12C22,6.48,17.52,2,11.99,2z M8.5,8 C9.33,8,10,8.67,10,9.5S9.33,11,8.5,11S7,10.33,7,9.5S7.67,8,8.5,8z M16.71,14.72C15.8,16.67,14.04,18,12,18s-3.8-1.33-4.71-3.28 C7.13,14.39,7.37,14,7.74,14h8.52C16.63,14,16.87,14.39,16.71,14.72z M15.5,11c-0.83,0-1.5-0.67-1.5-1.5S14.67,8,15.5,8 S17,8.67,17,9.5S16.33,11,15.5,11z"/></g></svg>
					<span class="position-absolute rounded-circle bold d-block btn-primary">{$system['points_per_reaction']}</span>
				</div>
				{__("Points")} {__("For reacting on any post")}
			</div>
		</div>
		{/if}
		{if $system['points_per_post_view'] > 0}
		<div class="col-md-6">
			<div class="ele_sett_point border py-4 px-3 text-center mb-4">
				<div class="stat position-relative">
					<svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 0 24 24" width="20" fill="currentColor"><path d="M12 16q1.875 0 3.188-1.312Q16.5 13.375 16.5 11.5q0-1.875-1.312-3.188Q13.875 7 12 7q-1.875 0-3.188 1.312Q7.5 9.625 7.5 11.5q0 1.875 1.312 3.188Q10.125 16 12 16Zm0-1.8q-1.125 0-1.912-.788Q9.3 12.625 9.3 11.5t.788-1.913Q10.875 8.8 12 8.8t1.913.787q.787.788.787 1.913t-.787 1.912q-.788.788-1.913.788Zm0 4.8q-3.475 0-6.35-1.837Q2.775 15.325 1.3 12.2q-.075-.125-.1-.313-.025-.187-.025-.387t.025-.388q.025-.187.1-.312 1.475-3.125 4.35-4.962Q8.525 4 12 4q3.475 0 6.35 1.838 2.875 1.837 4.35 4.962.075.125.1.312.025.188.025.388t-.025.387q-.025.188-.1.313-1.475 3.125-4.35 4.963Q15.475 19 12 19Z"/></svg>
					<span class="position-absolute rounded-circle bold d-block btn-primary">{$system['points_per_post_view']}</span>
				</div>
				{__("Points")} {__("For each post view")}
			</div>
		</div>
		{/if}
		{if $system['points_per_follow'] > 0}
		<div class="col-md-6">
			<div class="ele_sett_point border py-4 px-3 text-center mb-4">
				<div class="stat position-relative">
					<svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 0 24 24" width="20" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M15 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm-9-2V8c0-.55-.45-1-1-1s-1 .45-1 1v2H2c-.55 0-1 .45-1 1s.45 1 1 1h2v2c0 .55.45 1 1 1s1-.45 1-1v-2h2c.55 0 1-.45 1-1s-.45-1-1-1H6zm9 4c-2.67 0-8 1.34-8 4v1c0 .55.45 1 1 1h14c.55 0 1-.45 1-1v-1c0-2.66-5.33-4-8-4z"/></svg>
					<span class="position-absolute rounded-circle bold d-block btn-primary">{$system['points_per_follow']}</span>
				</div>
				{__("Points")} {__("For each follower you got")}
			</div>
		</div>
		{/if}
		{if $system['points_per_referred'] > 0}
		<div class="col-md-6">
			<div class="ele_sett_point border py-4 px-3 text-center mb-4">
				<div class="stat position-relative">
					<svg xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24" height="20" viewBox="0 0 24 24" width="20" fill="currentColor"><rect fill="none" height="24" width="24"/><g><path d="M12,12.75c1.63,0,3.07,0.39,4.24,0.9c1.08,0.48,1.76,1.56,1.76,2.73L18,17c0,0.55-0.45,1-1,1H7c-0.55,0-1-0.45-1-1l0-0.61 c0-1.18,0.68-2.26,1.76-2.73C8.93,13.14,10.37,12.75,12,12.75z M4,13c1.1,0,2-0.9,2-2c0-1.1-0.9-2-2-2s-2,0.9-2,2 C2,12.1,2.9,13,4,13z M5.13,14.1C4.76,14.04,4.39,14,4,14c-0.99,0-1.93,0.21-2.78,0.58C0.48,14.9,0,15.62,0,16.43L0,17 c0,0.55,0.45,1,1,1l3.5,0v-1.61C4.5,15.56,4.73,14.78,5.13,14.1z M20,13c1.1,0,2-0.9,2-2c0-1.1-0.9-2-2-2s-2,0.9-2,2 C18,12.1,18.9,13,20,13z M24,16.43c0-0.81-0.48-1.53-1.22-1.85C21.93,14.21,20.99,14,20,14c-0.39,0-0.76,0.04-1.13,0.1 c0.4,0.68,0.63,1.46,0.63,2.29V18l3.5,0c0.55,0,1-0.45,1-1L24,16.43z M12,6c1.66,0,3,1.34,3,3c0,1.66-1.34,3-3,3s-3-1.34-3-3 C9,7.34,10.34,6,12,6z"/></g></svg>
					<span class="position-absolute rounded-circle bold d-block btn-primary">{$system['points_per_referred']}</span>
				</div>
				{__("Points")} {__("For referring user")}
			</div>
		</div>
		{/if}
	</div>
	
	<hr class="mt-n1 mb0">

	<div class="row">
		<!-- points balance -->
		<div class="{if $system['points_per_currency'] > 0}col-md-6{else}col-md-12{/if}">
			<div class="heading-small mt20 mb-1">
				{__("Your Points Balance")}
			</div>
			<div class="p-3 ele_forum_stats thread">
				<div class="d-flex justify-content-between">
					<h6>{__("Points")}</h6>
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.9199 16.7486C21.5899 19.4086 19.4099 21.5886 16.7499 21.9186C15.1399 22.1186 13.6399 21.6786 12.4699 20.8186C11.7999 20.3286 11.9599 19.2886 12.7599 19.0486C15.7699 18.1386 18.1399 15.7586 19.0599 12.7486C19.2999 11.9586 20.3399 11.7986 20.8299 12.4586C21.6799 13.6386 22.1199 15.1386 21.9199 16.7486Z" fill="#22beff"></path><path d="M9.99 2C5.58 2 2 5.58 2 9.99C2 14.4 5.58 17.98 9.99 17.98C14.4 17.98 17.98 14.4 17.98 9.99C17.97 5.58 14.4 2 9.99 2ZM9.05 8.87L11.46 9.71C12.33 10.02 12.75 10.63 12.75 11.57C12.75 12.65 11.89 13.54 10.84 13.54H10.75V13.59C10.75 14 10.41 14.34 10 14.34C9.59 14.34 9.25 14 9.25 13.59V13.53C8.14 13.48 7.25 12.55 7.25 11.39C7.25 10.98 7.59 10.64 8 10.64C8.41 10.64 8.75 10.98 8.75 11.39C8.75 11.75 9.01 12.04 9.33 12.04H10.83C11.06 12.04 11.24 11.83 11.24 11.57C11.24 11.22 11.18 11.2 10.95 11.12L8.54 10.28C7.68 9.98 7.25 9.37 7.25 8.42C7.25 7.34 8.11 6.45 9.16 6.45H9.25V6.41C9.25 6 9.59 5.66 10 5.66C10.41 5.66 10.75 6 10.75 6.41V6.47C11.86 6.52 12.75 7.45 12.75 8.61C12.75 9.02 12.41 9.36 12 9.36C11.59 9.36 11.25 9.02 11.25 8.61C11.25 8.25 10.99 7.96 10.67 7.96H9.17C8.94 7.96 8.76 8.17 8.76 8.43C8.75 8.77 8.81 8.79 9.05 8.87Z" fill="#22beff"></path></svg>
				</div>
				<p class="mb-0">{$user->_data['user_points']}</p>
			</div>
		</div>
		<!-- points balance -->

		{if $system['points_per_currency']}
			<!-- money balance -->
			<div class="col-md-6">
				<div class="heading-small mt20 mb-1">
					{__("Your Money Balance")}
				</div>
				<div class="p-3 ele_forum_stats replies">
					<div class="d-flex justify-content-between">
						<h6>{__("Balance")}</h6>
						<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19.3009 7.91949V13.0695C19.3009 16.1495 17.5409 17.4695 14.9009 17.4695H6.11093C5.66093 17.4695 5.23093 17.4295 4.83093 17.3395C4.58093 17.2995 4.34094 17.2295 4.12094 17.1495C2.62094 16.5895 1.71094 15.2895 1.71094 13.0695V7.91949C1.71094 4.83949 3.47093 3.51953 6.11093 3.51953H14.9009C17.1409 3.51953 18.7509 4.46953 19.1809 6.63953C19.2509 7.03953 19.3009 7.44949 19.3009 7.91949Z" fill="#10c442"></path><path d="M22.2981 10.9206V16.0706C22.2981 19.1506 20.5381 20.4706 17.8981 20.4706H9.10812C8.36812 20.4706 7.69813 20.3706 7.11813 20.1506C5.92813 19.7106 5.11812 18.8006 4.82812 17.3406C5.22813 17.4306 5.65812 17.4706 6.10812 17.4706H14.8981C17.5381 17.4706 19.2981 16.1506 19.2981 13.0706V7.92059C19.2981 7.45059 19.2581 7.03062 19.1781 6.64062C21.0781 7.04063 22.2981 8.38059 22.2981 10.9206Z" fill="#10c442"></path><path d="M10.4994 13.1394C11.9574 13.1394 13.1394 11.9574 13.1394 10.4994C13.1394 9.04136 11.9574 7.85938 10.4994 7.85938C9.04136 7.85938 7.85938 9.04136 7.85938 10.4994C7.85938 11.9574 9.04136 13.1394 10.4994 13.1394Z" fill="#10c442"></path><path d="M4.78125 8.25C4.37125 8.25 4.03125 8.59 4.03125 9V12C4.03125 12.41 4.37125 12.75 4.78125 12.75C5.19125 12.75 5.53125 12.41 5.53125 12V9C5.53125 8.59 5.20125 8.25 4.78125 8.25Z" fill="#10c442"></path><path d="M16.2109 8.25C15.8009 8.25 15.4609 8.59 15.4609 9V12C15.4609 12.41 15.8009 12.75 16.2109 12.75C16.6209 12.75 16.9609 12.41 16.9609 12V9C16.9609 8.59 16.6309 8.25 16.2109 8.25Z" fill="#10c442"></path></svg>
					</div>
					<p class="mb-0">{print_money(((1/$system['points_per_currency'])*$user->_data['user_points']))}</p>
				</div>
			</div>
			<!-- money balance -->
		{/if}
	</div>
	
	
	
	
	
	<!-- points transactions -->
    <div class="mtb20">
      <div class="section-title mt10 mb20">
        {__("Points Transactions")}
      </div>
      {if $transactions}
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover js_dataTable">
            <thead>
              <tr>
                <th>{__("ID")}</th>
                <th>{__("Points")}</th>
                <th>{__("From / To")}</th>
                <th>{__("Time")}</th>
              </tr>
            </thead>
            <tbody>
              {foreach $transactions as $transaction}
                <tr>
                  <td>{$transaction@iteration}</td>
				  <td>
					{if $transaction['is_added']}
						<span class="badge rounded-pill badge-lg bg-success text-white">
							{$transaction['points']}
						</span>
                    {else}
						<span class="badge rounded-pill badge-lg bg-danger text-white">
							-{$transaction['points']}
						</span>
                    {/if}
                  </td>
                  <td>
                    {if $transaction['node_type'] == "post"}
                      {__("Added Post")}
                    {elseif $transaction['node_type'] == "post_view"}
                      {__("Post View")}
                    {elseif $transaction['node_type'] == "post_comment"}
                      {__("Received Comment")}
                    {elseif $transaction['node_type'] == "post_reaction"}
                      {__("Received Reaction")}
                    {elseif $transaction['node_type'] == "comment"}
                      {__("Added Comment")}
                    {elseif $transaction['node_type'] == "posts_reactions"}
                      {__("Added Post Reaction")}
                    {elseif $transaction['node_type'] == "posts_photos_reactions"}
                      {__("Added Post Photo Reaction")}
                    {elseif $transaction['node_type'] == "posts_comments_reactions"}
                      {__("Added Comment Reaction")}
                    {elseif $transaction['node_type'] == "follow"}
                      {__("Followed")}
                    {elseif $transaction['node_type'] == "referred"}
                      {__("Referred User")}
                    {elseif $transaction['node_type'] == "gift"}
                      {if $transaction['is_added']}
                        {__("Received Gift")}
                      {else}
                        {__("Sent Gift")}
                      {/if}
                    {/if}
                  </td>
                  <td><span class="js_moment" data-time="{$transaction['time']}">{$transaction['time']}</span></td>
                </tr>
              {/foreach}
            </tbody>
          </table>
        </div>
      {else}
        {include file='_no_transactions.tpl'}
      {/if}
    </div>
    <!-- points transactions -->
	
	
	
	
	
	
	
	
	
	
	
	
	
	
{elseif $sub_view == "payments"}
	<div class="heading-small mb-1">
		{__("Withdrawal Request")}
	</div>
	<form class="js_ajax-forms" data-url="users/withdraw.php?type=points">
		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Your Balance")}
			</label>
			<div class="col-md-9">
				<h6>
					<span class="badge badge-lg badge-info">
						{print_money(((1/$system['points_per_currency'])*$user->_data['user_points']))}
					</span>
				</h6>
			</div>
		</div>

		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Amount")} ({$system['system_currency']})
			</label>
			<div class="col-md-9">
				<input type="number" class="form-control" name="amount">
				<span class="form-text">
					{__("The minimum withdrawal request amount is")} {print_money($system['points_min_withdrawal'])}
				</span>
			</div>
		</div>

		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Payment Method")}
			</label>
			<div class="col-md-9">
				{if in_array("paypal", $system['points_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_paypal" value="paypal" class="custom-control-input">
						<label class="custom-control-label" for="method_paypal">{__("PayPal")}</label>
					</div>
				{/if}
				{if in_array("skrill", $system['points_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_skrill" value="skrill" class="custom-control-input">
						<label class="custom-control-label" for="method_skrill">{__("Skrill")}</label>
					</div>
				{/if}
				{if in_array("bank", $system['points_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_bank" value="bank" class="custom-control-input">
						<label class="custom-control-label" for="method_bank">{__("Bank Transfer")}</label>
					</div>
				{/if}
				{if in_array("custom", $system['points_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_custom" value="custom" class="custom-control-input">
						<label class="custom-control-label" for="method_custom">{__($system['points_payment_method_custom'])}</label>
					</div>
				{/if}
			</div>
		</div>

		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Transfer To")}
			</label>
			<div class="col-md-9">
				<input type="text" class="form-control" name="method_value">
			</div>
		</div>

		<div class="form-group form-row">
			<div class="col-md-9 offset-md-3">
				<button type="submit" class="btn btn-primary btn-mat">{__("Make a withdrawal")}</button>
			</div>
		</div>

		<!-- success -->
		<div class="alert alert-success mb0 x-hidden"></div>
		<!-- success -->

		<!-- error -->
		<div class="alert alert-danger mb0 x-hidden"></div>
		<!-- error -->
	</form>

	<hr class="my-4">

	<div class="heading-small mb-1">
		{__("Withdrawal History")}
	</div>
	{if $payments}
		<div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="bold border-top-0">{__("ID")}</th>
						<th class="bold border-top-0">{__("Amount")}</th>
						<th class="bold border-top-0">{__("Method")}</th>
						<th class="bold border-top-0">{__("Transfer To")}</th>
						<th class="bold border-top-0">{__("Time")}</th>
						<th class="bold border-top-0">{__("Status")}</th>
					</tr>
				</thead>
				<tbody>
					{foreach $payments as $payment}
						<tr>
							<td>{$payment@iteration}</td>
							<td>{print_money($payment['amount'])}</td>
							<td>
								{if $payment['method'] == "custom"}
									{$system['points_payment_method_custom']}
								{else}
									{$payment['method']|ucfirst}
								{/if}
							</td>
							<td>{$payment['method_value']}</td>
							<td>
								<span class="js_moment" data-time="{$payment['time']}">{$payment['time']}</span>
							</td>
							<td>
								{if $payment['status'] == '0'}
									<span class="badge badge-pill badge-lg badge-warning">{__("Pending")}</span>
								{elseif $payment['status'] == '1'}
									<span class="badge badge-pill badge-lg badge-success">{__("Approved")}</span>
								{else}
									<span class="badge badge-pill badge-lg badge-danger">{__("Declined")}</span>
								{/if}
							</td>
						</tr>
					{/foreach}
				</tbody>
			</table>
		</div>
	{else}
		{include file='_no_transactions.tpl'}
	{/if}
{/if}