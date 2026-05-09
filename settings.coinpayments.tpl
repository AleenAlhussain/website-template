<h2 class="ele_page_title small mt-n1 mb-4">{__("CoinPayments Transactions")}</h2>

<div class="heading-small mb-1">
	{__("Transactions History")}
</div>
{if $coinpayments_transactions}
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="bold border-top-0">{__("ID")}</th>
					<th class="bold border-top-0">{__("Product")}</th>
					<th class="bold border-top-0">{__("Amount")}</th>
					<th class="bold border-top-0">{__("Created")}</th>
					<th class="bold border-top-0">{__("Updated")}</th>
					<th class="bold border-top-0">{__("Status")}</th>
					<th class="bold border-top-0">{__("Status Message")}</th>
				</tr>
			</thead>
			<tbody>
				{foreach $coinpayments_transactions as $transaction}
					<tr>
						<td>{$transaction@iteration}</td>
						<td>{$transaction['product']}</td>
						<td>{print_money($transaction['amount'])}</td>
						<td>
							<span class="js_moment" data-time="{$transaction['created_at']}">{$transaction['created_at']}</span>
						</td>
						<td>
							<span class="js_moment" data-time="{$transaction['last_update']}">{$transaction['last_update']}</span>
						</td>
						<td>
							{if $transaction['status'] == '-1'}
								<span class="badge badge-pill badge-lg badge-danger">{__("Error")}</span>
							{elseif $transaction['status'] == '0'}
								<span class="badge badge-pill badge-lg badge-info">{__("Processing")}</span>
							{elseif $transaction['status'] == '1'}
								<span class="badge badge-pill badge-lg badge-warning">{__("Pending")}</span>
							{elseif $transaction['status'] == '2'}
								<span class="badge badge-pill badge-lg badge-success">{__("Complete")}</span>
							{/if}
						</td>
						<td>
							{if $transaction['status'] == '-1'}
								{__("Error while processing your payment")}
							{else}
								{$transaction['status_message']}
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