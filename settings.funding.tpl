<h2 class="ele_page_title small mt-n1 mb-4">{__("Funding System")}</h2>

{if $system['funding_money_withdraw_enabled']}
	<div class="heading-small mb-1">
		{__("Withdrawal Request")}
	</div>
	<form class="js_ajax-forms" data-url="users/withdraw.php?type=funding">
		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Your Balance")}
			</label>
			<div class="col-md-9">
				<h6>
					<span class="badge badge-lg badge-info">
						{print_money($user->_data['user_funding_balance'])}
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
					{__("The minimum withdrawal request amount is")} {print_money($system['funding_min_withdrawal'])}
				</span>
			</div>
		</div>

		<div class="form-group form-row">
			<label class="col-md-3 form-control-label">
				{__("Payment Method")}
			</label>
			<div class="col-md-9">
				{if in_array("paypal", $system['funding_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_paypal" value="paypal" class="custom-control-input">
						<label class="custom-control-label" for="method_paypal">{__("PayPal")}</label>
					</div>
				{/if}
				{if in_array("skrill", $system['funding_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_skrill" value="skrill" class="custom-control-input">
						<label class="custom-control-label" for="method_skrill">{__("Skrill")}</label>
					</div>
				{/if}
				{if in_array("bank", $system['funding_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_bank" value="bank" class="custom-control-input">
						<label class="custom-control-label" for="method_bank">{__("Bank Transfer")}</label>
					</div>
				{/if}
				{if in_array("custom", $system['funding_payment_method_array'])}
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" name="method" id="method_custom" value="custom" class="custom-control-input">
						<label class="custom-control-label" for="method_custom">{__($system['funding_payment_method_custom'])}</label>
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
									{$system['affiliate_payment_method_custom']}
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
{else}
	<div class="row">
		<!-- money balance -->
		<div class="col-sm-6">
			<div class="heading-small mb-1">
				{__("Your Funding Balance")}
			</div>
			<div class="p-3 ele_forum_stats replies">
				<div class="d-flex justify-content-between">
					<h6>{__("Balance")}</h6>
					<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M19.3009 7.91949V13.0695C19.3009 16.1495 17.5409 17.4695 14.9009 17.4695H6.11093C5.66093 17.4695 5.23093 17.4295 4.83093 17.3395C4.58093 17.2995 4.34094 17.2295 4.12094 17.1495C2.62094 16.5895 1.71094 15.2895 1.71094 13.0695V7.91949C1.71094 4.83949 3.47093 3.51953 6.11093 3.51953H14.9009C17.1409 3.51953 18.7509 4.46953 19.1809 6.63953C19.2509 7.03953 19.3009 7.44949 19.3009 7.91949Z" fill="#10c442"></path><path d="M22.2981 10.9206V16.0706C22.2981 19.1506 20.5381 20.4706 17.8981 20.4706H9.10812C8.36812 20.4706 7.69813 20.3706 7.11813 20.1506C5.92813 19.7106 5.11812 18.8006 4.82812 17.3406C5.22813 17.4306 5.65812 17.4706 6.10812 17.4706H14.8981C17.5381 17.4706 19.2981 16.1506 19.2981 13.0706V7.92059C19.2981 7.45059 19.2581 7.03062 19.1781 6.64062C21.0781 7.04063 22.2981 8.38059 22.2981 10.9206Z" fill="#10c442"></path><path d="M10.4994 13.1394C11.9574 13.1394 13.1394 11.9574 13.1394 10.4994C13.1394 9.04136 11.9574 7.85938 10.4994 7.85938C9.04136 7.85938 7.85938 9.04136 7.85938 10.4994C7.85938 11.9574 9.04136 13.1394 10.4994 13.1394Z" fill="#10c442"></path><path d="M4.78125 8.25C4.37125 8.25 4.03125 8.59 4.03125 9V12C4.03125 12.41 4.37125 12.75 4.78125 12.75C5.19125 12.75 5.53125 12.41 5.53125 12V9C5.53125 8.59 5.20125 8.25 4.78125 8.25Z" fill="#10c442"></path><path d="M16.2109 8.25C15.8009 8.25 15.4609 8.59 15.4609 9V12C15.4609 12.41 15.8009 12.75 16.2109 12.75C16.6209 12.75 16.9609 12.41 16.9609 12V9C16.9609 8.59 16.6309 8.25 16.2109 8.25Z" fill="#10c442"></path></svg>
				</div>
				<p class="mb-0">{print_money($user->_data['user_funding_balance'])}</p>
			</div>
		</div>
		<!-- money balance -->
	</div>
{/if}