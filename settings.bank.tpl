<h2 class="ele_page_title small mt-n1 mb-4">{__("Bank Transfers")}</h2>
					
<div class="heading-small mb-1">
	{__("Transactions History")}
</div>
{if $transfers}
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="bold border-top-0">{__("ID")}</th>
					<th class="bold border-top-0">{__("Type")}</th>
					<th class="bold border-top-0">{__("Time")}</th>
					<th class="bold border-top-0">{__("Status")}</th>
				</tr>
			</thead>
			<tbody>
				{foreach $transfers as $transfer}
					<tr>
						<td>{$transfer@iteration}</td>
						<td>
							{if $transfer['handle'] == "packages"}
								{__($transfer['package_name'])} {__("Package")} = <strong class="bold">{print_money($transfer['package_price'])}</strong>
							{elseif $transfer['handle'] == "wallet"}
								{__("Add Wallet Balance")} = <strong class="bold">{print_money($transfer['price'])}</strong>
							{elseif $transfer['handle'] == "donate"}
								{__("Funding Donation")} = <strong class="bold">{print_money($transfer['price'])}</strong>
							{elseif $transfer['handle'] == "subscribe"}
								{__("Subscribe")} = <strong class="bold">{print_money($transfer['price'])}</strong>
							{elseif $transfer['handle'] == "paid_post"}
								{__("Paid Post")} = <strong class="bold">{print_money($transfer['price'])}</strong>
							{elseif $transfer['handle'] == "movies"}
								{__("Movies")} = <strong class="bold">{print_money($transfer['price'])}</strong>
							{/if}
						</td>
						<td>
							<span class="js_moment" data-time="{$transfer['time']}">{$transfer['time']}</span>
						</td>
						<td>
							{if $transfer['status'] == '0'}
								<span class="badge badge-pill badge-lg badge-warning">{__("Pending")}</span>
							{elseif $transfer['status'] == '1'}
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