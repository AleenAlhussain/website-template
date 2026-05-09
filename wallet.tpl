{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
	<div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Wallet")}</h2>
				<p class="text-xlg">{__("Send and Transfer Money")}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 12V17C22 20 20 22 17 22H7C4 22 2 20 2 17V12C2 9.28 3.64 7.38 6.19 7.06C6.45 7.02 6.72 7 7 7H17C17.26 7 17.51 7.00999 17.75 7.04999C20.33 7.34999 22 9.26 22 12Z" fill="currentColor"/><path d="M17.7495 7.05C17.5095 7.01 17.2595 7.00001 16.9995 7.00001H6.99945C6.71945 7.00001 6.44945 7.02001 6.18945 7.06001C6.32945 6.78001 6.52945 6.52001 6.76945 6.28001L10.0195 3.02C11.3895 1.66 13.6095 1.66 14.9795 3.02L16.7295 4.79002C17.3695 5.42002 17.7095 6.22 17.7495 7.05Z" fill="currentColor"/><path d="M22 12.5H19C17.9 12.5 17 13.4 17 14.5C17 15.6 17.9 16.5 19 16.5H22" fill="currentColor"/></svg>
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
                        <a href="{$system['system_url']}/wallet">
							<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M13 11.1499H7" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M2 11.1501V6.53009C2 4.49009 3.65 2.84009 5.69 2.84009H11.31C13.35 2.84009 15 4.11009 15 6.15009" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M17.48 12.1999C16.98 12.6799 16.74 13.4199 16.94 14.1799C17.19 15.1099 18.11 15.6999 19.07 15.6999H20V17.1499C20 19.3599 18.21 21.1499 16 21.1499H6C3.79 21.1499 2 19.3599 2 17.1499V10.1499C2 7.9399 3.79 6.1499 6 6.1499H16C18.2 6.1499 20 7.9499 20 10.1499V11.5999H18.92C18.36 11.5999 17.85 11.8199 17.48 12.1999Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M22 12.6201V14.6801C22 15.2401 21.5399 15.7001 20.9699 15.7001H19.0399C17.9599 15.7001 16.97 14.9101 16.88 13.8301C16.82 13.2001 17.0599 12.6101 17.4799 12.2001C17.8499 11.8201 18.36 11.6001 18.92 11.6001H20.9699C21.5399 11.6001 22 12.0601 22 12.6201Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Wallet")}
						</a>
                    </li>
                    {if $system['wallet_withdrawal_enabled']}
                        <li {if $view == "payments"}class="active"{/if}>
                            <a href="{$system['system_url']}/wallet/payments">
								<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M19.3 7.91998V13.07C19.3 16.15 17.54 17.47 14.9 17.47H6.10995C5.65995 17.47 5.22996 17.43 4.82996 17.34C4.57996 17.3 4.33996 17.23 4.11996 17.15C2.61996 16.59 1.70996 15.29 1.70996 13.07V7.91998C1.70996 4.83998 3.46995 3.52002 6.10995 3.52002H14.9C17.14 3.52002 18.75 4.47001 19.18 6.64001C19.25 7.04001 19.3 7.44998 19.3 7.91998Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M22.3011 10.9201V16.0701C22.3011 19.1501 20.5411 20.4701 17.9011 20.4701H9.11105C8.37105 20.4701 7.70106 20.3701 7.12106 20.1501C5.93106 19.7101 5.12105 18.8001 4.83105 17.3401C5.23105 17.4301 5.66105 17.4701 6.11105 17.4701H14.9011C17.5411 17.4701 19.3011 16.1501 19.3011 13.0701V7.9201C19.3011 7.4501 19.2611 7.03014 19.1811 6.64014C21.0811 7.04014 22.3011 8.38011 22.3011 10.9201Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M10.4984 13.1399C11.9564 13.1399 13.1384 11.9579 13.1384 10.4999C13.1384 9.04185 11.9564 7.85986 10.4984 7.85986C9.04038 7.85986 7.8584 9.04185 7.8584 10.4999C7.8584 11.9579 9.04038 13.1399 10.4984 13.1399Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M4.78003 8.30005V12.7001" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M16.2217 8.30029V12.7003" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/></svg> {__("Payments")}
							</a>
                        </li>
                    {/if}
                </ul>
            </div>
            <!-- tabs -->

            {if $view == ""}

                <!-- wallet -->
                <div class="mt20">
                    <div class="">
                        {if $wallet_transfer_amount}
                            <div class="alert alert-success mb20">
                                <svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
                                {__("Your")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_transfer_amount)}</span> {__("transfer transaction successfuly sent")}
                            </div>
                        {/if}
                        {if $wallet_replenish_amount}
                            <div class="alert alert-success mb20">
                                <svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
                                {__("Congratulation! Your wallet credit replenished successfully with")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_replenish_amount)}</span>
                            </div>
                        {/if}
                        {if $wallet_withdraw_affiliates_amount}
                            <div class="alert alert-success mb20">
                                <svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
                                {__("Congratulation! Your wallet credit replenished successfully with")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_withdraw_affiliates_amount)}</span> {__("from your affiliates credit")}
                            </div>
                        {/if}
                        {if $wallet_withdraw_points_amount}
                            <div class="alert alert-success mb20">
                                <svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
                                {__("Congratulation! Your wallet credit replenished successfully with")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_withdraw_points_amount)}</span> {__("from your points credit")}
                            </div>
                        {/if}
						{if $wallet_withdraw_market_amount}
							<div class="alert alert-success mb20">
								<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
								{__("Congratulation! Your wallet credit replenished successfully with")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_withdraw_market_amount)}</span> {__("from your market credit")}
							</div>
						{/if}
                        {if $wallet_withdraw_funding_amount}
                            <div class="alert alert-success mb20">
                                <svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
                                {__("Congratulation! Your wallet credit replenished successfully with")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_withdraw_funding_amount)}</span> {__("from your funding credit")}
                            </div>
                        {/if}
						{if $wallet_withdraw_monetization_amount}
							<div class="alert alert-success mb20">
								<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
								{__("Congratulation! Your wallet credit replenished successfully with")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_withdraw_monetization_amount)}</span> {__("from your monetization credit")}
							</div>
						{/if}
                        {if $wallet_package_payment_amount}
                            <div class="alert alert-success mb20">
                                <svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
                                {__("Your")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_package_payment_amount)}</span> {__("payment transaction successfuly done")}
                            </div>
                        {/if}
						{if $wallet_monetization_payment_amount}
							<div class="alert alert-success mb20">
								<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
								{__("Your")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_monetization_payment_amount)}</span> {__("payment transaction successfuly done")}
							</div>
						{/if}
						{if $wallet_paid_post_amount}
							<div class="alert alert-success mb20">
								<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
								{__("Your")} <span class="badge badge-pill badge-lg badge-light">{print_money($wallet_paid_post_amount)}</span> {__("payment transaction successfuly done")}
							</div>
						{/if}
						{if $wallet_donate_amount}
							<div class="alert alert-success mb20">
								<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
								{__("Your")} <span class="badge rounded-pill badge-lg bg-light">{print_money($wallet_donate_amount)}</span> {__("payment transaction successfuly done")}
							</div>
						{/if}
						{if $wallet_marketplace_amount}
							<div class="alert alert-success mb20">
								<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg>
								{__("Your")} <span class="badge rounded-pill badge-lg bg-light">{print_money($wallet_marketplace_amount)}</span> {__("payment transaction successfuly done")}
							</div>
						{/if}

						<!-- credit -->
						<div class="heading-small mb-1">
							{__("Your Credit")}
						</div>
						
						<div class="valign justify-content-between ele_wallet_balance">
							<h5 class="m-0">
								{print_money($user->_data['user_wallet_balance'])}
							</h5>
							{if $system['wallet_transfer_enabled']}
								<button class="btn btn-mat" data-toggle="modal" data-url="#wallet-transfer">
									<svg width="40" height="40" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="d-block mx-auto mt-0 mb-3"><path opacity="0.4" d="M17 7.75C16.81 7.75 16.62 7.68 16.47 7.53C16.18 7.24 16.18 6.76 16.47 6.47L18.52 4.42C16.76 2.92 14.49 2 12 2C6.48 2 2 6.48 2 12C2 17.52 6.48 22 12 22C17.52 22 22 17.52 22 12C22 9.51 21.08 7.24 19.58 5.48L17.53 7.53C17.38 7.68 17.19 7.75 17 7.75Z" fill="currentColor"/><path d="M13.75 11.82L12.75 11.47V9.25H12.83C13.34 9.25 13.75 9.7 13.75 10.25C13.75 10.66 14.09 11 14.5 11C14.91 11 15.25 10.66 15.25 10.25C15.25 8.87 14.17 7.75 12.83 7.75H12.75V7.5C12.75 7.09 12.41 6.75 12 6.75C11.59 6.75 11.25 7.09 11.25 7.5V7.75H10.95C9.74001 7.75 8.75 8.77 8.75 10.03C8.75 11.49 9.6 11.96 10.25 12.19L11.25 12.54V14.76H11.17C10.66 14.76 10.25 14.31 10.25 13.76C10.25 13.35 9.91 13.01 9.5 13.01C9.09 13.01 8.75 13.35 8.75 13.76C8.75 15.14 9.83001 16.26 11.17 16.26H11.25V16.51C11.25 16.92 11.59 17.26 12 17.26C12.41 17.26 12.75 16.92 12.75 16.51V16.26H13.05C14.26 16.26 15.25 15.24 15.25 13.98C15.25 12.51 14.4 12.04 13.75 11.82ZM10.74 10.76C10.4 10.64 10.25 10.57 10.25 10.02C10.25 9.59 10.57 9.24 10.95 9.24H11.25V10.93L10.74 10.76ZM13.05 14.75H12.75V13.06L13.26 13.24C13.6 13.36 13.75 13.43 13.75 13.98C13.75 14.4 13.43 14.75 13.05 14.75Z" fill="currentColor"/><path d="M22.6883 1.70828C22.6083 1.52828 22.4683 1.37829 22.2783 1.29829C22.1883 1.25829 22.0883 1.23828 21.9883 1.23828H17.9883C17.5783 1.23828 17.2383 1.57828 17.2383 1.98828C17.2383 2.39828 17.5783 2.73828 17.9883 2.73828H20.1783L18.5083 4.40829C18.8883 4.73829 19.2383 5.08828 19.5683 5.46828L21.2383 3.79829V5.99828C21.2383 6.40828 21.5783 6.74828 21.9883 6.74828C22.3983 6.74828 22.7383 6.40828 22.7383 5.99828V1.99828C22.7483 1.89828 22.7283 1.80828 22.6883 1.70828Z" fill="currentColor"/></svg> {__("Send Money")}
								</button>
							{/if}
						</div>
						<!-- credit -->

						<!-- send & recieve money -->
						<div class="row">
							<div class="col-md-6 col-lg-3">
								<button class="btn btn-mat border bg-light btn-block mt-4 ele_wallet_opts" data-toggle="modal" data-url="#wallet-replenish">
									<svg width="25" height="24" viewBox="0 0 25 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path d="M8.25864 21.2453C8.90561 20.5983 9.27728 19.7724 9.37364 18.9189C9.50441 17.7833 9.12586 16.6063 8.25864 15.7391C7.74244 15.2229 7.10923 14.8788 6.44161 14.7205C5.16831 14.397 3.75736 14.7342 2.75248 15.7391C2.05733 16.4343 1.67878 17.3221 1.6306 18.2375C1.59619 18.6298 1.6306 19.0359 1.73385 19.4282C1.89215 20.0959 2.23628 20.7291 2.75248 21.2453C4.27356 22.7663 6.73756 22.7663 8.25864 21.2453ZM6.96469 17.7764C7.36389 17.7764 7.69426 18.1068 7.69426 18.506C7.68738 18.912 7.36389 19.2355 6.95781 19.2424L6.23513 19.2355L6.24201 19.9307C6.23513 20.3368 5.91164 20.6602 5.50556 20.6671C5.09948 20.6602 4.776 20.3367 4.76911 19.9307L4.776 19.2355L4.05331 19.2424C3.64723 19.2355 3.32375 18.912 3.31686 18.506C3.32375 18.3064 3.40634 18.1274 3.53711 17.9966C3.66788 17.8659 3.84683 17.7833 4.04643 17.7764L4.776 17.7764L4.776 17.0193C4.776 16.8128 4.85859 16.6339 4.98936 16.5031C5.12013 16.3723 5.29908 16.2897 5.50556 16.2897C5.90476 16.2897 6.23513 16.6201 6.23513 17.0193L6.23513 17.7764L6.96469 17.7764Z" fill="#4caf50"/> <path d="M15.0952 3.84548V7.54425H13.6352V3.84548C13.6352 3.58267 13.4016 3.45613 13.2458 3.45613C13.1972 3.45613 13.1485 3.46587 13.0998 3.48533L5.38108 6.39568C4.8652 6.59035 4.53426 7.07703 4.53426 7.63185V8.284C3.6485 8.94589 3.07422 10.0068 3.07422 11.2041V7.63185C3.07422 6.47355 3.78477 5.44179 4.8652 5.03298L12.5937 2.1129C12.8078 2.03503 13.0317 1.99609 13.2458 1.99609C14.2192 1.99609 15.0952 2.78452 15.0952 3.84548Z" fill="#4caf50"/> <path d="M21.5691 14.1156V15.0889C21.5691 15.3518 21.3647 15.5659 21.0921 15.5756H19.671C19.1551 15.5756 18.6879 15.196 18.649 14.6899C18.6198 14.3881 18.7366 14.1059 18.9313 13.9112C19.1065 13.7262 19.3498 13.6289 19.6126 13.6289H21.0824C21.3647 13.6386 21.5691 13.8528 21.5691 14.1156Z" fill="#4caf50"/> <path d="M19.6019 12.6044H20.5947C21.1301 12.6044 21.5681 12.1664 21.5681 11.6311V11.2028C21.5681 9.18795 19.9231 7.54297 17.9082 7.54297H6.73405C5.9067 7.54297 5.14748 7.81551 4.53426 8.28272C3.6485 8.94461 3.07422 10.0056 3.07422 11.2028V12.9354C3.07422 13.3053 3.46356 13.5389 3.81397 13.4221C4.35905 13.2371 4.93334 13.1398 5.50762 13.1398C8.4569 13.1398 10.8611 15.544 10.8611 18.4933C10.8611 19.1941 10.6762 19.963 10.3842 20.6444C10.2284 20.9948 10.4718 21.4134 10.8514 21.4134H17.9082C19.9231 21.4134 21.5681 19.7684 21.5681 17.7535V17.5686C21.5681 17.0332 21.1301 16.5952 20.5947 16.5952H19.7479C18.8135 16.5952 17.918 16.0209 17.6746 15.1157C17.4799 14.376 17.7136 13.6557 18.2002 13.1885C18.5604 12.8186 19.0568 12.6044 19.6019 12.6044ZM14.2679 12.4098H9.40106C9.00198 12.4098 8.67104 12.0788 8.67104 11.6797C8.67104 11.2807 9.00198 10.9497 9.40106 10.9497H14.2679C14.6669 10.9497 14.9979 11.2807 14.9979 11.6797C14.9979 12.0788 14.6669 12.4098 14.2679 12.4098Z" fill="#4caf50"/> </svg> {__("Add Funds")}
								</button>
							</div>
							{if $system['affiliates_enabled'] && $system['affiliates_money_transfer_enabled']}
								<div class="col-md-6 col-lg-3">
									<button class="btn btn-mat border bg-light btn-block mt-4 ele_wallet_opts" data-toggle="modal" data-url="#wallet-withdraw-affiliates">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 2C9.38 2 7.25 4.13 7.25 6.75C7.25 9.32 9.26 11.4 11.88 11.49C11.96 11.48 12.04 11.48 12.1 11.49C12.12 11.49 12.13 11.49 12.15 11.49C12.16 11.49 12.16 11.49 12.17 11.49C14.73 11.4 16.74 9.32 16.75 6.75C16.75 4.13 14.62 2 12 2Z" fill="#e91e63"></path><path d="M17.0809 14.1489C14.2909 12.2889 9.74094 12.2889 6.93094 14.1489C5.66094 14.9989 4.96094 16.1489 4.96094 17.3789C4.96094 18.6089 5.66094 19.7489 6.92094 20.5889C8.32094 21.5289 10.1609 21.9989 12.0009 21.9989C13.8409 21.9989 15.6809 21.5289 17.0809 20.5889C18.3409 19.7389 19.0409 18.5989 19.0409 17.3589C19.0309 16.1289 18.3409 14.9889 17.0809 14.1489ZM14.0009 18.1289H12.7509V19.3789C12.7509 19.7889 12.4109 20.1289 12.0009 20.1289C11.5909 20.1289 11.2509 19.7889 11.2509 19.3789V18.1289H10.0009C9.59094 18.1289 9.25094 17.7889 9.25094 17.3789C9.25094 16.9689 9.59094 16.6289 10.0009 16.6289H11.2509V15.3789C11.2509 14.9689 11.5909 14.6289 12.0009 14.6289C12.4109 14.6289 12.7509 14.9689 12.7509 15.3789V16.6289H14.0009C14.4109 16.6289 14.7509 16.9689 14.7509 17.3789C14.7509 17.7889 14.4109 18.1289 14.0009 18.1289Z" fill="#e91e63"></path></svg> {__("Affiliates Credit")}
									</button>
								</div>
							{/if}
							{if $system['points_enabled'] && $system['points_per_currency'] > 0 && $system['points_money_transfer_enabled']}
								<div class="col-md-6 col-lg-3">
									<button class="btn btn-mat border bg-light btn-block mt-4 ele_wallet_opts" data-toggle="modal" data-url="#wallet-withdraw-points">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.9199 16.7486C21.5899 19.4086 19.4099 21.5886 16.7499 21.9186C15.1399 22.1186 13.6399 21.6786 12.4699 20.8186C11.7999 20.3286 11.9599 19.2886 12.7599 19.0486C15.7699 18.1386 18.1399 15.7586 19.0599 12.7486C19.2999 11.9586 20.3399 11.7986 20.8299 12.4586C21.6799 13.6386 22.1199 15.1386 21.9199 16.7486Z" fill="#3f51b5"></path><path d="M9.99 2C5.58 2 2 5.58 2 9.99C2 14.4 5.58 17.98 9.99 17.98C14.4 17.98 17.98 14.4 17.98 9.99C17.97 5.58 14.4 2 9.99 2ZM9.05 8.87L11.46 9.71C12.33 10.02 12.75 10.63 12.75 11.57C12.75 12.65 11.89 13.54 10.84 13.54H10.75V13.59C10.75 14 10.41 14.34 10 14.34C9.59 14.34 9.25 14 9.25 13.59V13.53C8.14 13.48 7.25 12.55 7.25 11.39C7.25 10.98 7.59 10.64 8 10.64C8.41 10.64 8.75 10.98 8.75 11.39C8.75 11.75 9.01 12.04 9.33 12.04H10.83C11.06 12.04 11.24 11.83 11.24 11.57C11.24 11.22 11.18 11.2 10.95 11.12L8.54 10.28C7.68 9.98 7.25 9.37 7.25 8.42C7.25 7.34 8.11 6.45 9.16 6.45H9.25V6.41C9.25 6 9.59 5.66 10 5.66C10.41 5.66 10.75 6 10.75 6.41V6.47C11.86 6.52 12.75 7.45 12.75 8.61C12.75 9.02 12.41 9.36 12 9.36C11.59 9.36 11.25 9.02 11.25 8.61C11.25 8.25 10.99 7.96 10.67 7.96H9.17C8.94 7.96 8.76 8.17 8.76 8.43C8.75 8.77 8.81 8.79 9.05 8.87Z" fill="#3f51b5"></path></svg> {__("Points Credit")}
									</button>
								</div>
							{/if}
							{if $user->_data['can_sell_products'] && $system['market_money_transfer_enabled'] && $system['market_shopping_cart_enabled']}
								<div class="col-md-6 col-lg-3">
									<button class="btn btn-mat border bg-light btn-block mt-4 ele_wallet_opts" data-toggle="modal" data-url="#wallet-withdraw-market">
										<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path fill="#9c27b0" d="M201-120q-33 0-56.5-23.5T121-200v-318q-23-21-35.5-54t-.5-72l42-136q8-26 28.5-43t47.5-17h556q27 0 47 16.5t29 43.5l42 136q12 39-.5 71T841-518v318q0 33-23.5 56.5T761-120H201Zm368-440q27 0 41-18.5t11-41.5l-22-140h-78v148q0 21 14 36.5t34 15.5Zm-180 0q23 0 37.5-15.5T441-612v-148h-78l-22 140q-4 24 10.5 42t37.5 18Zm-178 0q18 0 31.5-13t16.5-33l22-154h-78l-40 134q-6 20 6.5 43t41.5 23Zm540 0q29 0 42-23t6-43l-42-134h-76l22 154q3 20 16.5 33t31.5 13Z"></path></svg> {__("Marketplace Credit")}
									</button>
								</div>
							{/if}
							{if $user->_data['can_raise_funding'] && $system['funding_money_transfer_enabled']}
								<div class="col-md-6 col-lg-3">
									<button class="btn btn-mat border bg-light btn-block mt-4 ele_wallet_opts" data-toggle="modal" data-url="#wallet-withdraw-funding">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17 3.5H7C4 3.5 2 5 2 8.5V15.5C2 19 4 20.5 7 20.5H17C20 20.5 22 19 22 15.5V8.5C22 5 20 3.5 17 3.5ZM6.25 14.5C6.25 14.91 5.91 15.25 5.5 15.25C5.09 15.25 4.75 14.91 4.75 14.5V9.5C4.75 9.09 5.09 8.75 5.5 8.75C5.91 8.75 6.25 9.09 6.25 9.5V14.5ZM12 15C10.34 15 9 13.66 9 12C9 10.34 10.34 9 12 9C13.66 9 15 10.34 15 12C15 13.66 13.66 15 12 15ZM19.25 14.5C19.25 14.91 18.91 15.25 18.5 15.25C18.09 15.25 17.75 14.91 17.75 14.5V9.5C17.75 9.09 18.09 8.75 18.5 8.75C18.91 8.75 19.25 9.09 19.25 9.5V14.5Z" fill="#EF8E19"/></svg> {__("Funding Credit")}
									</button>
								</div>
							{/if}
							{if $user->_data['can_monetize_content'] && $system['monetization_money_transfer_enabled']}
								<div class="col-md-6 col-lg-3">
									<button class="btn btn-mat border bg-light btn-block mt-4 ele_wallet_opts" data-toggle="modal" data-url="#wallet-withdraw-monetization">
										<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M17 4H7C4 4 2 5.5 2 9V12.56C2 12.93 2.38 13.16 2.71 13.01C3.69 12.56 4.82 12.39 6.01 12.6C8.64 13.07 10.57 15.51 10.5 18.18C10.49 18.6 10.43 19.01 10.32 19.41C10.24 19.72 10.49 20.01 10.81 20.01H17C20 20.01 22 18.51 22 15.01V9C22 5.5 20 4 17 4ZM12 14.5C10.62 14.5 9.5 13.38 9.5 12C9.5 10.62 10.62 9.5 12 9.5C13.38 9.5 14.5 10.62 14.5 12C14.5 13.38 13.38 14.5 12 14.5ZM19.25 14C19.25 14.41 18.91 14.75 18.5 14.75C18.09 14.75 17.75 14.41 17.75 14V10C17.75 9.59 18.09 9.25 18.5 9.25C18.91 9.25 19.25 9.59 19.25 10V14Z" fill="#4caf50"></path><path d="M5 14C2.79 14 1 15.79 1 18C1 18.75 1.21 19.46 1.58 20.06C2.27 21.22 3.54 22 5 22C6.46 22 7.73 21.22 8.42 20.06C8.79 19.46 9 18.75 9 18C9 15.79 7.21 14 5 14ZM6.49 18.73H5.75V19.51C5.75 19.92 5.41 20.26 5 20.26C4.59 20.26 4.25 19.92 4.25 19.51V18.73H3.51C3.1 18.73 2.76 18.39 2.76 17.98C2.76 17.57 3.1 17.23 3.51 17.23H4.25V16.52C4.25 16.11 4.59 15.77 5 15.77C5.41 15.77 5.75 16.11 5.75 16.52V17.23H6.49C6.9 17.23 7.24 17.57 7.24 17.98C7.24 18.39 6.91 18.73 6.49 18.73Z" fill="#4caf50"></path></svg> {__("Monetization Credit")}
									</button>
								</div>
							{/if}
						</div>
						<!-- send & recieve money -->
						
						<hr class="my-4">

						<!-- wallet transactions -->
						<div class="heading-small mb-1 pt-0">
							{__("Wallet Transactions")}
						</div>

						{if $transactions}
							<div class="table-responsive">
								<table class="table table-striped table-bordered table-hover js_dataTable">
									<thead>
										<tr>
											<th>{__("ID")}</th>
											<th>{__("Amount")}</th>
											<th>{__("From / To")}</th>
											<th>{__("Time")}</th>
										</tr>
									</thead>
									<tbody>
										{foreach $transactions as $transaction}
											<tr>
												<td>{$transaction['transaction_id']}</td>
												<td>
													{if $transaction['type'] == "out"}
														<span class="badge badge-pill badge-lg badge-danger mr5"><i class="far fa-arrow-alt-circle-down"></i></span>
														<strong class="text-danger">{if $transaction['amount']}{print_money($transaction['amount'])}{/if}</strong>
													{else}
														<span class="badge badge-pill badge-lg badge-success mr5"><i class="far fa-arrow-alt-circle-up"></i></span>
														<strong class="text-success">{if $transaction['amount']}{print_money($transaction['amount'])}{/if}</strong>
													{/if}
												</td>
												<td>
													{if $transaction['type'] == "out"}
														<span class="badge badge-pill badge-lg badge-danger mr10">{__("To")}</span>
													{else}
														<span class="badge badge-pill badge-lg badge-success mr10">{__("From")}</span>
													{/if}
													{if $transaction['node_type'] == "user" || $transaction['node_type'] == "tip"}
														{if $transaction['node_type'] == "tip"}
															<span class="badge badge-pill badge-lg badge-light mr10">{__("Tip")}</span>
														{/if}
														<a target="_blank" href="{$system['system_url']}/{$transaction['user_name']}">
															<img class="tbl-image" src="{$transaction['user_picture']}" style="float: none;">
															{if $system['show_usernames_enabled']}
																{$transaction['user_name']}
															{else}
																{$transaction['user_firstname']} {$transaction['user_lastname']}
															{/if}
														</a>
													{elseif $transaction['node_type'] == "recharge"}
														{__("Add Funds")}
													{elseif $transaction['node_type'] == "withdraw_wallet"}
														{__("Wallet Withdrawal")}
													{elseif $transaction['node_type'] == "withdraw_affiliates"}
														{__("Affiliates Credit")}
													{elseif $transaction['node_type'] == "withdraw_points"}
														{__("Points Credit")}
													{elseif $transaction['node_type'] == "withdraw_market"}
														{__("Market Credit")}
													{elseif $transaction['node_type'] == "withdraw_funding"}
														{__("Funding Credit")}
													{elseif $transaction['node_type'] == "withdraw_monetization"}
														{__("Monetization Credit")}
													{elseif $transaction['node_type'] == "package_payment"}
														{__("Buy Pro Package")}
													{elseif $transaction['node_type'] == "subscribe_profile" || $transaction['node_type'] == "subscribe_user"}
														{__("Subscribe to Profile")}
													{elseif $transaction['node_type'] == "subscribe_page"}
														{__("Subscribe to Page")}
													{elseif $transaction['node_type'] == "subscribe_group"}
														{__("Subscribe to Group")}
													{elseif $transaction['node_type'] == "paid_post"}
														{__("Paid Post")}
													{elseif $transaction['node_type'] == "donate"}
														{__("Donate")}
													{elseif $transaction['node_type'] == "market" || $transaction['node_type'] == "market_payment"}
														{__("Market Purchase")}
													{elseif $transaction['node_type'] == "paid_chat_message"}
														{__("Paid Chat Message")}
													{elseif $transaction['node_type'] == "paid_call"}
														{__("Paid Call")}
													{elseif $transaction['node_type'] == "blogs_module_payment"}
														{__("Paid Blogs")}
													{elseif $transaction['node_type'] == "products_module_payment"}
														{__("Paid Products")}
													{elseif $transaction['node_type'] == "funding_module_payment"}
														{__("Paid Funding")}
													{elseif $transaction['node_type'] == "offers_module_payment"}
														{__("Paid Offers")}
													{elseif $transaction['node_type'] == "jobs_module_payment"}
														{__("Paid Jobs")}
													{elseif $transaction['node_type'] == "courses_module_payment"}
														{__("Paid Courses")}
													{elseif $transaction['node_type'] == "ai_credits_payment"}
														{__("AI Credits Payment")}
													{/if}
												</td>
												<td><span class="js_moment" data-time="{$transaction['date']}">{$transaction['date']}</span></td>
											</tr>
										{/foreach}
									</tbody>
								</table>
							</div>
						{else}
							{include file='_no_transactions.tpl'}
						{/if}

						<!-- wallet transactions -->
                    </div>
                </div>
                <!-- wallet -->

            {elseif $view == "payments"}

                <!-- payments -->
				<div class="heading-small mb-1">
					{__("Withdrawal Request")}
				</div>

				<form class="js_ajax-forms" data-url="users/withdraw.php?type=wallet">
					<div class="form-group form-row">
						<label class="col-md-3 form-control-label">
							{__("Your Balance")}
						</label>
						<div class="col-md-9">
							<h6>
								<span class="badge badge-lg badge-info">
									{print_money($user->_data['user_wallet_balance'])}
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
								{__("The minimum withdrawal request amount is")} {print_money($system['wallet_min_withdrawal'])}
							</span>
						</div>
					</div>

					<div class="form-group form-row">
						<label class="col-md-3 form-control-label">
							{__("Payment Method")}
						</label>
						<div class="col-md-9">
							{if in_array("paypal", $system['wallet_payment_method_array'])}
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" name="method" id="method_paypal" value="paypal" class="custom-control-input">
									<label class="custom-control-label" for="method_paypal">{__("PayPal")}</label>
								</div>
							{/if}
							{if in_array("skrill", $system['wallet_payment_method_array'])}
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" name="method" id="method_skrill" value="skrill" class="custom-control-input">
									<label class="custom-control-label" for="method_skrill">{__("Skrill")}</label>
								</div>
							{/if}
							{if in_array("bank", $system['wallet_payment_method_array'])}
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" name="method" id="method_bank" value="bank" class="custom-control-input">
									<label class="custom-control-label" for="method_bank">{__("Bank Transfer")}</label>
								</div>
							{/if}
							{if in_array("custom", $system['wallet_payment_method_array'])}
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" name="method" id="method_custom" value="custom" class="custom-control-input">
									<label class="custom-control-label" for="method_custom">{__($system['wallet_payment_method_custom'])}</label>
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
				
				<div class="heading-small mb-1 pt-0">
					{__("Withdrawal History")}
				</div>
				
				{if $payments}
					<div class="table-responsive mt20">
						<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<th>{__("ID")}</th>
									<th>{__("Amount")}</th>
									<th>{__("Method")}</th>
									<th>{__("Transfer To")}</th>
									<th>{__("Time")}</th>
									<th>{__("Status")}</th>
								</tr>
							</thead>
							<tbody>
								{foreach $payments as $payment}
									<tr>
										<td>{$payment@iteration}</td>
										<td>{print_money($payment['amount'])}</td>
										<td>
											{if $payment['method'] == "custom"}
												{$system['wallet_payment_method_custom']}
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
                <!-- payments -->
            {/if}
        </div>
	<!-- content panel -->
</div>
<!-- page content -->

{include file='_footer.tpl'}