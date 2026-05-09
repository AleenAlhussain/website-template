<div class="ele_content p-0 mt-2 mb-4">
	<div type="button" class="px-4 py-3" data-toggle="collapse" data-target=".order_collapse-{$order['order_id']}" aria-expanded="false">
		<div class="row">
			<div class="col-md-4 my-2">
				<div><strong class="bold">{__("Order")} #</strong></div>
				{$order['order_hash']}
			</div>

			<div class="col-md-3 my-2">
				<div><strong class="bold">{__("Order Placed")}</strong></div>
				{$order['insert_time']}
			</div>

			<div class="col-md-3 my-2">
				<div><strong class="bold">{__("Status")}:</strong></div>
				{if $order['status'] == "canceled"}
					<span class="badge badge-lg badge-danger">{__($order['status'])|ucfirst}</span>
				{elseif $order['status'] == "delivered"}
					<span class="badge badge-lg badge-success">{__($order['status'])|ucfirst}</span>
				{else}
					<span class="badge badge-lg badge-info">{__($order['status'])|ucfirst}</span>
				{/if}
			</div>

			<div class="col-md-2 my-2 text-md-right">
				<button class="btn btn-mat btn-secondary btn-block">{__("View")}</button>
			</div>
		</div>
	</div>

	<div class="collapse order_collapse-{$order['order_id']}">
		<hr class="m-0">
		<div class="p-4">
			{if $order['status'] == "shipped"}
				<div class="alert alert-warning">
					<div class="text">
						{__("This order has been shipped and will be marked as delivered automatically after")} <span class="badge bg-light text-primary">{$order['automatic_delivery_days']}</span> {__("days")} ({__("Max")} {$system['market_delivery_days']} {__("days")})
					</div>
				</div>
			{/if}
	
			<div class="row">
				<div class="col-md-4 mb30">
					{if !$for_admin}
						<!-- update order -->
						{if $sales}
							{if $order['status'] != "delivered" && $order['status'] != "canceled"}
								<button class="btn btn-mat btn-primary btn-block mb-2" data-toggle="modal" data-url="users/orders.php?do=edit&id={$order['order_id']}">
									{__("UPDATE")}
								</button>
							{/if}
						{else}
							{if $order['status'] != "delivered" && $order['status'] != "canceled"}
								<button class="btn btn-mat btn-primary btn-block mb-2" data-toggle="modal" data-url="users/orders.php?do=edit&id={$order['order_id']}">
									{__("UPDATE")}
								</button>
							{/if}
						{/if}
						<!-- update order -->

						<!-- invoice -->
						<button class="btn btn-mat btn-secondary btn-block mb-4 js_shopping-download-invoice" data-id="{$order['order_id']}">
							{__("INVOICE")}
						</button>
						<!-- invoice -->
					{/if}
					
					<!-- Payments -->
					<div class="heading-small mb-1">
						{__("Payments")}
					</div>

					<div class="d-flex align-items-center justify-content-between mb5 bold">
						<span>{if $sales}{__("Subtotal")}{else}{__("Total")}{/if}:</span>
						<span class="{if $sales}{else}text-xlg bold{/if}">
							{print_money($order['sub_total'])}
						</span>
					</div>
					{if $sales}
						{if $order['total_commission'] > 0}
							<div class="d-flex align-items-center justify-content-between mb5 bold">
								<span>{__("Commission")}:</span>
								<span>
									- {print_money($order['total_commission'])}
								</span>
							</div>
						{/if}
            
						<div class="d-flex align-items-center justify-content-between mb-4 pb-1 bold">
							<span>{__("Total")}:</span>
							<span class="text-xlg bold">
								{print_money($order['final_price'])}
							</span>
						</div>
					{/if}
					<!-- Payments -->
					
					<!-- Tracking Details -->
					<hr class="my-4">
					<div class="heading-small mb-1">
						{if $order['is_digital']}
							{__("Download Details")}
						{else}
							{__("Tracking Details")}
						{/if}
					</div>
					<div class="mb-4 pb-1">
						{if $order['is_digital']}
							<div>
								<div><strong class="bold">{__("Download Link")}:</strong></div>
								{if $order['items'][0]['post']['product']['product_file_source']}
									<div>
										<a class="btn btn-md btn-outline-primary" href="{$system['system_uploads']}/{$order['items'][0]['post']['product']['product_file_source']}" target="_blank">{__("Download")}</a>
									</div>
								{else}
									<div>
										<a class="btn btn-md btn-outline-primary" href="{$order['items'][0]['post']['product']['product_download_url']}" target="_blank">{__("Download")}</a>
									</div>
								{/if}
							</div>
						{else}
							<div class="mb20">
								<div><strong class="bold">{__("Tracking Link")}:</strong></div>
								<div>
									{if $order['tracking_link']}<a href="{$order['tracking_link']}" target="_blank">{$order['tracking_link']}</a>{else}{__("N/A")}{/if}
								</div>
							</div>

							<div class="">
								<div><strong class="bold">{__("Tracking Number")}:</strong></div>
								<div>
									{if $order['tracking_number']}{$order['tracking_number']}{else}{__("N/A")}{/if}
								</div>
							</div>
						{/if}
					</div>
					<hr class="my-4">
					<!-- Tracking Details -->

					<!-- Shipping Addresses -->
					<div class="heading-small mb-1">
						{__("Shipping Addresses")}
					</div>
					<div class="ele_content ele_ads_lists m-0 px-3 pb-3 pt-2">
						<div class="acomp">{$order['buyer_fullname']}</div>
						<div>{$order['address_details']}</div>
						<div>{$order['address_city']}</div>
						<div>{$order['address_country']}</div>
						<div>{$order['address_zip_code']}</div>
						<div>{$order['address_phone']}</div>
					</div>
					<!-- Shipping Addresses -->
				</div>

				<div class="col-md-8">
					<!-- Order Items -->
					<div class="heading-small mb-1">
						{__("Items")}
					</div>
					<div class="row">
						{foreach $order['items'] as $order_item}
							<div class="col-6 col-lg-4">
								<div class="ele_content ele_ads_lists p-0 m-0 mb-4">
									<a href="{$system['system_url']}/posts/{$order_item['post']['post_id']}" class="product-image">
										{if $order_item['post']['photos_num'] > 0}
											<img src="{$system['system_uploads']}/{$order_item['post']['photos'][0]['source']}" class="w-100 h-100">
										{else}
											<img src="{$system['system_url']}/content/themes/{$system['theme']}/images/blank_product.png" class="w-100 h-100">
										{/if}
									</a>
									<div class="plr10 ptb10 product-info">
										<h2 class="truncate">
											<a href="{$system['system_url']}/posts/{$order_item['post']['post_id']}" class="body_color">{$order_item['post']['product']['name']}</a>
										</h2>
										<div class="truncate price">
											{if $order_item['post']['product']['price'] > 0}
												{$order_item['post']['product']['price_formatted']}
											{else}
												{__("Free")}
											{/if}
										</div>
										<div class="truncate ele_post_prod_shead">
											<div class="d-flex">
												<span class="">{__("Qty:")} {$order_item['quantity']}</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						{/foreach}
					</div>
					<!-- Order Items -->
				</div>
			</div>
		</div>
	</div>
</div>