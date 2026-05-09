<!-- need payment -->
<div class="position-relative" {if $paid_image} style="background-image: url('{$system['system_uploads']}/{$paid_image}');background-size: cover;background-position: center;border-radius: 12px;" {/if}>
	<div class="position-relative py-5 px-4 ele_paid_post" {if $paid_image} style="background: rgba(0, 0, 0, 0.5);border-radius: 12px;" {/if}>
		<div class="position-relative d-flex align-items-center justify-content-center flex-column py-4 {if $paid_image}text-white{/if}">
			<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><path d="M12 2c-.218 0 -.432 .002 -.642 .005l-.616 .017l-.299 .013l-.579 .034l-.553 .046c-4.785 .464 -6.732 2.411 -7.196 7.196l-.046 .553l-.034 .579c-.005 .098 -.01 .198 -.013 .299l-.017 .616l-.004 .318l-.001 .324c0 .218 .002 .432 .005 .642l.017 .616l.013 .299l.034 .579l.046 .553c.464 4.785 2.411 6.732 7.196 7.196l.553 .046l.579 .034c.098 .005 .198 .01 .299 .013l.616 .017l.642 .005l.642 -.005l.616 -.017l.299 -.013l.579 -.034l.553 -.046c4.785 -.464 6.732 -2.411 7.196 -7.196l.046 -.553l.034 -.579c.005 -.098 .01 -.198 .013 -.299l.017 -.616l.005 -.642l-.005 -.642l-.017 -.616l-.013 -.299l-.034 -.579l-.046 -.553c-.464 -4.785 -2.411 -6.732 -7.196 -7.196l-.553 -.046l-.579 -.034a28.058 28.058 0 0 0 -.299 -.013l-.616 -.017l-.318 -.004l-.324 -.001zm0 4a3 3 0 0 1 2.995 2.824l.005 .176v1a2 2 0 0 1 1.995 1.85l.005 .15v3a2 2 0 0 1 -1.85 1.995l-.15 .005h-6a2 2 0 0 1 -1.995 -1.85l-.005 -.15v-3a2 2 0 0 1 1.85 -1.995l.15 -.005v-1a3 3 0 0 1 3 -3zm3 6h-6v3h6v-3zm-3 -4a1 1 0 0 0 -.993 .883l-.007 .117v1h2v-1a1 1 0 0 0 -1 -1z" fill="currentColor" stroke-width="0" /></svg>
			
			<h5>{__("PAID POST")}</h5>

			{if $paid_text}
				<p>{$paid_text}</p>
			{/if}
			
			{if $discounted_price}
				<button class="btn btn-mat btn-primary mt-4 {if !$user->_logged_in}js_login{/if}" {if $user->_logged_in}data-toggle="modal" data-url="#payment" data-options='{ "handle": "paid_post", "paid_post": "true", "id": {$post_id}, "price": {$discounted_price}, "vat": "{get_payment_vat_value($discounted_price)}", "fees": "{get_payment_fees_value($discounted_price)}", "total": "{get_payment_total_value($discounted_price)}", "total_printed": "{get_payment_total_value($discounted_price, true)}" }' {/if}>
					{__("PAY TO UNLOCK")} {print_money($discounted_price)}<span style="text-decoration: line-through;" class="ml5">{print_money($price)}</span>
				</button>
			{else}
				<button class="btn btn-mat btn-primary mt-4 {if !$user->_logged_in}js_login{/if}" {if $user->_logged_in}data-toggle="modal" data-url="#payment" data-options='{ "handle": "paid_post", "paid_post": "true", "id": {$post_id}, "price": {$price}, "vat": "{get_payment_vat_value($price)}", "fees": "{get_payment_fees_value($price)}", "total": "{get_payment_total_value($price)}", "total_printed": "{get_payment_total_value($price, true)}" }' {/if}>
					{__("PAY TO UNLOCK")} {print_money($price)}
				</button>
			{/if}
		</div>
	</div>
</div>
<!-- need payment -->