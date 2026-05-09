<h2 class="ele_page_title small mt-n1 mb-4">
	{__("Monetization")}
	{if $sub_view == "coupons"} &rsaquo; {__("Coupons")}{/if}
	{if $sub_view == "payments"} &rsaquo; {__("Payments")}{/if}
	{if $sub_view == "earnings"} &rsaquo; {__("Earnings")}{/if}
</h2>

{if $sub_view == "coupons"}
	<button data-toggle="modal" data-url="monetization/controller.php?do=add_coupon&node_id={$user->_data['user_id']}&node_type=profile" class="btn btn-mat btn-primary">
        {__("Generate New Coupon")}
	</button>
{/if}

{if $sub_view == ""}
	<div class="alert bg-light border p-3 mb-4">
		<div class="mb-2 mx-n1">
			<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M11.9392 2.21178L9.52922 7.82178H7.11922C6.71922 7.82178 6.32922 7.85178 5.94922 7.93178L6.94922 5.53178L6.98922 5.44178L7.04922 5.28178C7.07922 5.21178 7.09922 5.15178 7.12922 5.10178C8.28922 2.41178 9.58922 1.57178 11.9392 2.21178Z" fill="currentColor"/><path d="M18.7311 8.08953L18.7111 8.07953C18.1111 7.90953 17.5011 7.81953 16.8811 7.81953H10.6211L12.8711 2.58953L12.9011 2.51953C13.0411 2.56953 13.1911 2.63953 13.3411 2.68953L15.5511 3.61953C16.7811 4.12953 17.6411 4.65953 18.1711 5.29953C18.2611 5.41953 18.3411 5.52953 18.4211 5.65953C18.5111 5.79953 18.5811 5.93953 18.6211 6.08953C18.6611 6.17953 18.6911 6.25953 18.7111 6.34953C18.8611 6.85953 18.8711 7.43953 18.7311 8.08953Z" fill="currentColor"/><path d="M12.5195 17.6581H12.7695C13.0695 17.6581 13.3195 17.3881 13.3195 17.0581C13.3195 16.6381 13.1995 16.5781 12.9395 16.4781L12.5195 16.3281V17.6581Z" fill="currentColor"/><path d="M18.2883 9.52031C17.8383 9.39031 17.3683 9.32031 16.8783 9.32031H7.11828C6.43828 9.32031 5.79828 9.45031 5.19828 9.71031C3.45828 10.4603 2.23828 12.1903 2.23828 14.2003V16.1503C2.23828 16.3903 2.25828 16.6203 2.28828 16.8603C2.50828 20.0403 4.20828 21.7403 7.38828 21.9503C7.61828 21.9803 7.84828 22.0003 8.09828 22.0003H15.8983C19.5983 22.0003 21.5483 20.2403 21.7383 16.7403C21.7483 16.5503 21.7583 16.3503 21.7583 16.1503V14.2003C21.7583 11.9903 20.2883 10.1303 18.2883 9.52031ZM13.2783 15.5003C13.7383 15.6603 14.3583 16.0003 14.3583 17.0603C14.3583 17.9703 13.6483 18.7003 12.7683 18.7003H12.5183V18.9203C12.5183 19.2103 12.2883 19.4403 11.9983 19.4403C11.7083 19.4403 11.4783 19.2103 11.4783 18.9203V18.7003H11.3883C10.4283 18.7003 9.63828 17.8903 9.63828 16.8903C9.63828 16.6003 9.86828 16.3703 10.1583 16.3703C10.4483 16.3703 10.6783 16.6003 10.6783 16.8903C10.6783 17.3103 10.9983 17.6603 11.3883 17.6603H11.4783V15.9703L10.7183 15.7003C10.2583 15.5403 9.63828 15.2003 9.63828 14.1403C9.63828 13.2303 10.3483 12.5003 11.2283 12.5003H11.4783V12.2803C11.4783 11.9903 11.7083 11.7603 11.9983 11.7603C12.2883 11.7603 12.5183 11.9903 12.5183 12.2803V12.5003H12.6083C13.5683 12.5003 14.3583 13.3103 14.3583 14.3103C14.3583 14.6003 14.1283 14.8303 13.8383 14.8303C13.5483 14.8303 13.3183 14.6003 13.3183 14.3103C13.3183 13.8903 12.9983 13.5403 12.6083 13.5403H12.5183V15.2303L13.2783 15.5003Z" fill="currentColor"/><path d="M10.6797 14.1391C10.6797 14.5591 10.7997 14.6191 11.0597 14.7191L11.4797 14.8691V13.5391H11.2297C10.9197 13.5391 10.6797 13.8091 10.6797 14.1391Z" fill="currentColor"/></svg>
		</div>
		<div class="text">
			{__("Now you can earn money via paid posts, paid chat, paid audio/video calls or subscriptions plans.")}
			<br>
			{if $system['monetization_commission'] > 0}
				{__("There is commission")} <strong class="bold"><span class="badge badge-pill badge-warning">{$system['monetization_commission']}%</span></strong> {__("will be deducted")}.
				<br>
			{/if}
			{if $system['monetization_money_withdraw_enabled']}
				{__("You can")} <a class="main" href="{$system['system_url']}/settings/monetization/payments" target="_blank">{__("withdraw your money")}</a>
			{/if}
			{if $system['monetization_money_transfer_enabled']}
				{if $system['monetization_money_withdraw_enabled']}{__("or")} {/if}
				{__("You can transfer your money to your")} <a class="main" href="{$system['system_url']}/wallet" target="_blank">{__("wallet")}</a>
			{/if}
		</div>
	</div>
	
	{if $system['verification_for_monetization'] && !$user->_data['user_verified']}
		<div class="alert alert-danger">
			<strong class="bold">{__("Account Verification Required")}</strong><br>
			{__("To enable monetization your account must be verified")} <a href="{$system['system_url']}/settings/verification">{__("Verify Now")}</a>
		</div>
    {/if}
	
	<div class="heading-small mb-1">
		{__("Monetization Settings")}
	</div>

	<form class="js_ajax-forms" data-url="users/settings.php?edit=monetization">
        <div class="form-table-row">
			<div>
				<div class="form-control-label h6">{__("Monetization")}</div>
				<div class="form-text d-none d-sm-block">{__("Enable or disable monetization for your content")}</div>
			</div>
			<div class="text-right">
				<label class="switch" for="user_monetization_enabled">
					<input type="checkbox" name="user_monetization_enabled" id="user_monetization_enabled" {if $user->_data['user_monetization_enabled']}checked{/if}>
					<span class="slider round"></span>
				</label>
			</div>
        </div>

		<div class="form-table-row">
			<div>
				<div class="form-control-label h6">{__("Global Discount")}</div>
				<div class="form-text d-none d-sm-block">{__("Enable or disable global discount for subscriptions plans and paid posts")}</div>
			</div>
			<div class="text-right">
				<label class="switch" for="user_monetization_discount_enabled">
					<input type="checkbox" name="user_monetization_discount_enabled" id="user_monetization_discount_enabled" {if $user->_data['user_monetization_discount_enabled']}checked{/if}>
					<span class="slider round"></span>
				</label>
			</div>
        </div>

        <div class="form-group form-row">
			<label class="col-md-4 form-control-label">
				{__("Discount Percent")}
			</label>
			<div class="col-md-8">
				<input type="number" min="1" max="99" class="form-control" name="user_monetization_discount_percent" value="{$user->_data['user_monetization_discount_percent']}">
				<div class="form-text">
					{__("The discount percent to apply to all monetized content (min 1, max 99)")}
				</div>
			</div>
        </div>
		
		<hr class="my-4">
		
		<div class="heading-small mb-1">
			{__("Paid Chat")}
        </div>
		
		<div class="form-group form-row">
            <label class="col-md-4 form-control-label">
				{__("Chat Message")} ({$system['system_currency']})
            </label>
            <div class="col-md-8">
				<input type="text" class="form-control" name="user_monetization_chat_price" value="{$user->_data['user_monetization_chat_price']}">
				<div class="form-text">
					{__("The price you want to charge for each message sent by the user (0 for free)")}
				</div>
            </div>
		</div>

		<div class="form-group form-row">
            <label class="col-md-4 form-control-label">
              {__("Audio/Video Call")} ({$system['system_currency']})
            </label>
            <div class="col-md-8">
				<input type="text" class="form-control" name="user_monetization_call_price" value="{$user->_data['user_monetization_call_price']}">
				<div class="form-text">
					{__("The price you want to charge for each audio/video call by the user (0 for free)")}
				</div>
            </div>
		</div>
		
		<div class="text-center ele_sett_bott_btn">
			<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
		</div>

        <!-- success -->
        <div class="alert alert-success mb0 x-hidden"></div>
        <!-- success -->

        <!-- error -->
        <div class="alert alert-danger mb0 x-hidden"></div>
		<!-- error -->

        <div class="form-group">
			<label class="form-control-label">
				{__("Subscriptions Plans")}
			</label>
			
			<div data-toggle="modal" data-url="monetization/controller.php?do=add_plan&node_id={$user->_data['user_id']}&node_type=profile" class="btn btn-block btn-success btn-mat my-3">{__("Add new plan")} </div>

            <div class="payment-plans">
				{foreach $monetization_plans as $plan}
					<div class="payment-plan">
						<div class="text-xxlg">{__($plan['title'])}</div>
						<div class="text-xlg">{print_money($plan['price'])} / {if $plan['period_num'] != '1'}{$plan['period_num']}{/if} {__($plan['period']|ucfirst)}</div>
						{if {$plan['custom_description']}}
							<div>{$plan['custom_description']}</div>
						{/if}
						<div class="mt10">
							<span class="btn btn-mat btn-sm btn-danger mr10 js_monetization-deleter" data-id="{$plan['plan_id']}">{__("Delete")}</span>
							<span data-toggle="modal" data-url="monetization/controller.php?do=edit_plan&id={$plan['plan_id']}" class="btn btn-mat btn-sm btn-info">{__("Edit")}</span>
						</div>
					</div>
				{/foreach}
            </div>
        </div>
	</form>

    <hr class="my-4">
	
	<div class="heading-small mb-1">
		{__("Monetization Balance")}
	</div>
	
	<div class="row">
		<!-- subscribers -->
		<div class="col-md-6">
			<div class="p-3 ele_forum_stats thread">
				<div class="d-flex justify-content-between">
					<h6>{__("Profile Subscribers")}</h6>
					<svg width="36" height="36" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M9 2C6.38 2 4.25 4.13 4.25 6.75C4.25 9.32 6.26 11.4 8.88 11.49C8.96 11.48 9.04 11.48 9.1 11.49C9.12 11.49 9.13 11.49 9.15 11.49C9.16 11.49 9.16 11.49 9.17 11.49C11.73 11.4 13.74 9.32 13.75 6.75C13.75 4.13 11.62 2 9 2Z" fill="#22beff"></path><path d="M14.0809 14.1489C11.2909 12.2889 6.74094 12.2889 3.93094 14.1489C2.66094 14.9989 1.96094 16.1489 1.96094 17.3789C1.96094 18.6089 2.66094 19.7489 3.92094 20.5889C5.32094 21.5289 7.16094 21.9989 9.00094 21.9989C10.8409 21.9989 12.6809 21.5289 14.0809 20.5889C15.3409 19.7389 16.0409 18.5989 16.0409 17.3589C16.0309 16.1289 15.3409 14.9889 14.0809 14.1489Z" fill="#22beff"></path><path opacity="0.4" d="M19.9894 7.33815C20.1494 9.27815 18.7694 10.9781 16.8594 11.2081C16.8494 11.2081 16.8494 11.2081 16.8394 11.2081H16.8094C16.7494 11.2081 16.6894 11.2081 16.6394 11.2281C15.6694 11.2781 14.7794 10.9681 14.1094 10.3981C15.1394 9.47815 15.7294 8.09815 15.6094 6.59815C15.5394 5.78815 15.2594 5.04815 14.8394 4.41815C15.2194 4.22815 15.6594 4.10815 16.1094 4.06815C18.0694 3.89815 19.8194 5.35815 19.9894 7.33815Z" fill="#22beff"></path><path d="M21.9883 16.5904C21.9083 17.5604 21.2883 18.4004 20.2483 18.9704C19.2483 19.5204 17.9883 19.7804 16.7383 19.7504C17.4583 19.1004 17.8783 18.2904 17.9583 17.4304C18.0583 16.1904 17.4683 15.0004 16.2883 14.0504C15.6183 13.5204 14.8383 13.1004 13.9883 12.7904C16.1983 12.1504 18.9783 12.5804 20.6883 13.9604C21.6083 14.7004 22.0783 15.6304 21.9883 16.5904Z" fill="#22beff"></path></svg>
				</div>
				<p class="mb-0">{$subscribers_count}</p>
			</div>
		</div>
		<!-- subscribers -->

		<!-- money balance -->
		<div class="col-md-6">
			<div class="p-3 ele_forum_stats replies">
				<div class="d-flex justify-content-between">
					<h6>{__("Monetization Money Balance")}</h6>
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19.3009 7.91949V13.0695C19.3009 16.1495 17.5409 17.4695 14.9009 17.4695H6.11093C5.66093 17.4695 5.23093 17.4295 4.83093 17.3395C4.58093 17.2995 4.34094 17.2295 4.12094 17.1495C2.62094 16.5895 1.71094 15.2895 1.71094 13.0695V7.91949C1.71094 4.83949 3.47093 3.51953 6.11093 3.51953H14.9009C17.1409 3.51953 18.7509 4.46953 19.1809 6.63953C19.2509 7.03953 19.3009 7.44949 19.3009 7.91949Z" fill="#10c442"></path><path d="M22.2981 10.9206V16.0706C22.2981 19.1506 20.5381 20.4706 17.8981 20.4706H9.10812C8.36812 20.4706 7.69813 20.3706 7.11813 20.1506C5.92813 19.7106 5.11812 18.8006 4.82812 17.3406C5.22813 17.4306 5.65812 17.4706 6.10812 17.4706H14.8981C17.5381 17.4706 19.2981 16.1506 19.2981 13.0706V7.92059C19.2981 7.45059 19.2581 7.03062 19.1781 6.64062C21.0781 7.04063 22.2981 8.38059 22.2981 10.9206Z" fill="#10c442"></path><path d="M10.4994 13.1394C11.9574 13.1394 13.1394 11.9574 13.1394 10.4994C13.1394 9.04136 11.9574 7.85938 10.4994 7.85938C9.04136 7.85938 7.85938 9.04136 7.85938 10.4994C7.85938 11.9574 9.04136 13.1394 10.4994 13.1394Z" fill="#10c442"></path><path d="M4.78125 8.25C4.37125 8.25 4.03125 8.59 4.03125 9V12C4.03125 12.41 4.37125 12.75 4.78125 12.75C5.19125 12.75 5.53125 12.41 5.53125 12V9C5.53125 8.59 5.20125 8.25 4.78125 8.25Z" fill="#10c442"></path><path d="M16.2109 8.25C15.8009 8.25 15.4609 8.59 15.4609 9V12C15.4609 12.41 15.8009 12.75 16.2109 12.75C16.6209 12.75 16.9609 12.41 16.9609 12V9C16.9609 8.59 16.6309 8.25 16.2109 8.25Z" fill="#10c442"></path></svg>
				</div>
				<p class="mb-0">{print_money($user->_data['user_monetization_balance'])}</p>
			</div>
		</div>
		<!-- money balance -->
	</div>

{elseif $sub_view == "coupons"}

    {if $coupons}
		<div class="table-responsive mt-4">
			<table class="table table-hover js_dataTable">
				<thead>
					<tr>
						<th>{__("Code")}</th>
						<th>{__("Discount")}</th>
						<th>{__("Created")}</th>
						<th>{__("Usage Details")}</th>
						<th>{__("One Time")}</th>
						<th>{__("Actions")}</th>
					</tr>
				</thead>
				<tbody>
					{foreach $coupons as $coupon}
						<tr>
							<td><span class="badge rounded-pill badge-lg badge-secondary">{$coupon['coupon_code']}</span></td>
							<td>
								<span class="badge rounded-pill badge-lg badge-primary">{$coupon['discount_percent']}%</span>
							</td>
							<td>{$coupon['created_date']|date_format:"%e %B %Y"}</td>
							<td>
								{if $coupon['usage_counter'] > 0}
									<span data-toggle="modal" data-url="monetization/controller.php?do=coupon_users&coupon_id={$coupon['coupon_id']}" class="pointer text-success">
										<i class="fa fa-users mr5"></i> <span class="badge rounded-pill badge-lg badge-success">{$coupon['usage_counter']}</span> {__("Users")}
									</span>
								{else}
									{include file='__svg_icons.tpl' icon="cross" class="mr5" width="24px" height="24px"} <span class="text-muted">{__("No One")}</span>
								{/if}
							</td>
							<td>
								{if $coupon['is_onetime']}
									{include file='__svg_icons.tpl' icon="checked" width="24px" height="24px"}
								{else}
									{include file='__svg_icons.tpl' icon="cross" width="24px" height="24px"}
								{/if}
							</td>
							<td>
								<!-- delete -->
								<div class="d-inline-block" data-bs-toggle="tooltip" title='{__("Delete")}'>
									<button class="btn btn-sm btn-icon btn-rounded btn-danger js_monetization-coupon-deleter" data-id="{$coupon['coupon_id']}">
										<i class="fa fa-trash-alt"></i>
									</button>
								</div>
								<!-- delete -->
								<!-- share -->
								<div class="d-inline-block" data-bs-toggle="tooltip" title='{__("Share")}'>
									<button data-toggle="modal" data-url="monetization/controller.php?do=share_coupon&coupon_id={$coupon['coupon_id']}" class="btn btn-sm btn-icon btn-rounded btn-primary">
										<i class="fa fa-link"></i>
									</button>
								</div>
								<!-- share -->
							</td>
						</tr>
					{/foreach}
				</tbody>
			</table>
		</div>
    {else}
		{include file='_no_data.tpl'}
    {/if}

{elseif $sub_view == "payments"}
    <div class="heading-small mb-1">
		{__("Withdrawal Request")}
	</div>

	<form class="js_ajax-forms" data-url="users/withdraw.php?type=monetization">
        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Your Balance")}
          </label>
          <div class="col-md-9">
            <h6>
              <span class="badge badge-lg badge-info">
                {print_money($user->_data['user_monetization_balance'])}
              </span>
            </h6>
          </div>
        </div>

        <div class="form-group form-row">
          <label class="col-md-3 form-control-label">
            {__("Amount")} ({$system['system_currency']})
          </label>
          <div class="col-md-9">
            <input type="text" class="form-control" name="amount">
            <span class="form-text">
              {__("The minimum withdrawal request amount is")} {print_money($system['monetization_min_withdrawal'])}
            </span>
          </div>
        </div>

        <div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Payment Method")}
			</label>
			<div class="col-md-9">
				{if in_array("paypal", $system['monetization_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_paypal" value="paypal" class="custom-control-input">
						<label class="custom-control-label" for="method_paypal">{__("PayPal")}</label>
					</div>
				{/if}
				{if in_array("skrill", $system['monetization_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_skrill" value="skrill" class="custom-control-input">
						<label class="custom-control-label" for="method_skrill">{__("Skrill")}</label>
					</div>
				{/if}
				{if in_array("bank", $system['monetization_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_bank" value="bank" class="custom-control-input">
						<label class="custom-control-label" for="method_bank">{__("Bank Transfer")}</label>
					</div>
				{/if}
				{if in_array("custom", $system['monetization_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_custom" value="custom" class="custom-control-input">
						<label class="custom-control-label" for="method_custom">{__($system['monetization_payment_method_custom'])}</label>
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
									{$system['monetization_payment_method_custom']}
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

{elseif $sub_view == "earnings"}
	<div class="row">
		<!-- subscribers -->
		<div class="col-md-6">
			<div class="p-3 ele_forum_stats thread mb-4">
				<div class="d-flex justify-content-between">
					<h6>{__("Total Earnings")}</h6>
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19.3009 7.91949V13.0695C19.3009 16.1495 17.5409 17.4695 14.9009 17.4695H6.11093C5.66093 17.4695 5.23093 17.4295 4.83093 17.3395C4.58093 17.2995 4.34094 17.2295 4.12094 17.1495C2.62094 16.5895 1.71094 15.2895 1.71094 13.0695V7.91949C1.71094 4.83949 3.47093 3.51953 6.11093 3.51953H14.9009C17.1409 3.51953 18.7509 4.46953 19.1809 6.63953C19.2509 7.03953 19.3009 7.44949 19.3009 7.91949Z" fill="#22beff"></path><path d="M22.2981 10.9206V16.0706C22.2981 19.1506 20.5381 20.4706 17.8981 20.4706H9.10812C8.36812 20.4706 7.69813 20.3706 7.11813 20.1506C5.92813 19.7106 5.11812 18.8006 4.82812 17.3406C5.22813 17.4306 5.65812 17.4706 6.10812 17.4706H14.8981C17.5381 17.4706 19.2981 16.1506 19.2981 13.0706V7.92059C19.2981 7.45059 19.2581 7.03062 19.1781 6.64062C21.0781 7.04063 22.2981 8.38059 22.2981 10.9206Z" fill="#22beff"></path><path d="M10.4994 13.1394C11.9574 13.1394 13.1394 11.9574 13.1394 10.4994C13.1394 9.04136 11.9574 7.85938 10.4994 7.85938C9.04136 7.85938 7.85938 9.04136 7.85938 10.4994C7.85938 11.9574 9.04136 13.1394 10.4994 13.1394Z" fill="#22beff"></path><path d="M4.78125 8.25C4.37125 8.25 4.03125 8.59 4.03125 9V12C4.03125 12.41 4.37125 12.75 4.78125 12.75C5.19125 12.75 5.53125 12.41 5.53125 12V9C5.53125 8.59 5.20125 8.25 4.78125 8.25Z" fill="#22beff"></path><path d="M16.2109 8.25C15.8009 8.25 15.4609 8.59 15.4609 9V12C15.4609 12.41 15.8009 12.75 16.2109 12.75C16.6209 12.75 16.9609 12.41 16.9609 12V9C16.9609 8.59 16.6309 8.25 16.2109 8.25Z" fill="#22beff"></path></svg>
				</div>
				<p class="mb-0">{print_money($total_earnings)}</p>
			</div>
		</div>
		<!-- subscribers -->

		<!-- money balance -->
		<div class="col-md-6">
			<div class="p-3 ele_forum_stats replies mb-4">
				<div class="d-flex justify-content-between">
					<h6>{__("This Month Earnings")}</h6>
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19.3009 7.91949V13.0695C19.3009 16.1495 17.5409 17.4695 14.9009 17.4695H6.11093C5.66093 17.4695 5.23093 17.4295 4.83093 17.3395C4.58093 17.2995 4.34094 17.2295 4.12094 17.1495C2.62094 16.5895 1.71094 15.2895 1.71094 13.0695V7.91949C1.71094 4.83949 3.47093 3.51953 6.11093 3.51953H14.9009C17.1409 3.51953 18.7509 4.46953 19.1809 6.63953C19.2509 7.03953 19.3009 7.44949 19.3009 7.91949Z" fill="#10c442"></path><path d="M22.2981 10.9206V16.0706C22.2981 19.1506 20.5381 20.4706 17.8981 20.4706H9.10812C8.36812 20.4706 7.69813 20.3706 7.11813 20.1506C5.92813 19.7106 5.11812 18.8006 4.82812 17.3406C5.22813 17.4306 5.65812 17.4706 6.10812 17.4706H14.8981C17.5381 17.4706 19.2981 16.1506 19.2981 13.0706V7.92059C19.2981 7.45059 19.2581 7.03062 19.1781 6.64062C21.0781 7.04063 22.2981 8.38059 22.2981 10.9206Z" fill="#10c442"></path><path d="M10.4994 13.1394C11.9574 13.1394 13.1394 11.9574 13.1394 10.4994C13.1394 9.04136 11.9574 7.85938 10.4994 7.85938C9.04136 7.85938 7.85938 9.04136 7.85938 10.4994C7.85938 11.9574 9.04136 13.1394 10.4994 13.1394Z" fill="#10c442"></path><path d="M4.78125 8.25C4.37125 8.25 4.03125 8.59 4.03125 9V12C4.03125 12.41 4.37125 12.75 4.78125 12.75C5.19125 12.75 5.53125 12.41 5.53125 12V9C5.53125 8.59 5.20125 8.25 4.78125 8.25Z" fill="#10c442"></path><path d="M16.2109 8.25C15.8009 8.25 15.4609 8.59 15.4609 9V12C15.4609 12.41 15.8009 12.75 16.2109 12.75C16.6209 12.75 16.9609 12.41 16.9609 12V9C16.9609 8.59 16.6309 8.25 16.2109 8.25Z" fill="#10c442"></path></svg>
				</div>
				<p class="mb-0">{print_money($this_month_earnings)}</p>
			</div>
		</div>
		<!-- money balance -->
	</div>
	
	<div class="heading-small mb-1">
		{__("History")}
	</div>
	
	{if $earnings}
        <div class="table-responsive">
			<table class="table table-hover">
				<thead>
					<tr>
						<th class="bold border-top-0">{__("ID")}</th>
						<th class="bold border-top-0">{__("User")}</th>
						<th class="bold border-top-0">{__("Total")}</th>
						<th class="bold border-top-0">{__("Commission")}</th>
						<th class="bold border-top-0">{__("Earning")}</th>
						<th class="bold border-top-0">{__("Time")}</th>
					</tr>
				</thead>
				<tbody>
					{foreach $earnings as $earning}
						<tr>
							<td>{$earning@iteration}</td>
							<td>
								<a href="{$system['system_url']}/{$earning['user_name']}">
									<img src="{$earning['user_picture']}" class="rounded-circle align-middle" width="30" height="30"> {$earning['user_fullname']}
								</a>
							</td>
							<td>{print_money($earning['price'])}</td>
							<td>{print_money($earning['commission'])}</td>
							<td>{print_money($earning['earning'])}</td>
							<td>
								<span class="js_moment" data-time="{$earning['time']}">{$earning['time']}</span>
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