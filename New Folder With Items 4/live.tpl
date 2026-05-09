{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page content -->
<style>
	body, .main-wrapper {
		padding-left: 0 !important;padding-right: 0 !important;
	}
	.main-header {
		margin-bottom: 0;
	}
</style>

<div class="live-stream-wrapper">
	<!-- live stream video -->
	<div class="live-stream-video">

		<!-- live counter -->
		<div class="position-absolute text-center plr10 bold live-counter">
			<span class="status offline" id=js_live-counter-status>{__("Offline")}</span>
			<span class="number"><span id="js_live-counter-number">0</span></span>
		</div>
		<!-- live counter -->

		<!-- live recording -->
		{if $system['save_live_enabled']}
			<div class="position-absolute text-center plr10 bold live-recording" id="js_live-recording">
				<span>
					<svg xmlns="http://www.w3.org/2000/svg" height="18" viewBox="0 0 24 24" width="18" class="align-text-top" fill="currentColor"><path d="M17 10.5V7c0-.55-.45-1-1-1H4c-.55 0-1 .45-1 1v10c0 .55.45 1 1 1h12c.55 0 1-.45 1-1v-3.5l2.29 2.29c.63.63 1.71.18 1.71-.71V8.91c0-.89-1.08-1.34-1.71-.71L17 10.5z"/></svg> <span>{__("Recording")}</span>
				</span>
			</div>
		{/if}
		<!-- live recording -->

		<!-- live video -->
		<div class="live-video-player" id="js_live-video"></div>
		<!-- live video -->
	</div>
	<!-- live stream video -->
	
	<div class="position-absolute w-100 ptb30 ele_live_foot">
		<div class="container">
			<!-- live comments -->
				<div class="live-comments x-hidden" id="live-comments">
					<ul class="js_scroller" data-slimScroll-height="100%"></ul>
				</div>
			<!-- live comments -->
			
			<!-- live status -->
			<div class="text-center ptb10 plr15 live-status" id="js_live-status">
				<div class="mb5">
					<svg width="34" height="34" viewBox="0 0 24 24" fill="currentColor" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M13 3.25H7C3.58 3.25 2.25 4.58 2.25 8V16C2.25 18.3 3.5 20.75 7 20.75H13C16.42 20.75 17.75 19.42 17.75 16V8C17.75 4.58 16.42 3.25 13 3.25Z"/><path d="M11.5011 11.3811C12.5394 11.3811 13.3811 10.5394 13.3811 9.50109C13.3811 8.4628 12.5394 7.62109 11.5011 7.62109C10.4628 7.62109 9.62109 8.4628 9.62109 9.50109C9.62109 10.5394 10.4628 11.3811 11.5011 11.3811Z"/><path d="M21.6505 6.17157C21.2405 5.96157 20.3805 5.72157 19.2105 6.54157L17.7305 7.58157C17.7405 7.72157 17.7505 7.85157 17.7505 8.00157V16.0016C17.7505 16.1516 17.7305 16.2816 17.7305 16.4216L19.2105 17.4616C19.8305 17.9016 20.3705 18.0416 20.8005 18.0416C21.1705 18.0416 21.4605 17.9416 21.6505 17.8416C22.0605 17.6316 22.7505 17.0616 22.7505 15.6316V8.38157C22.7505 6.95157 22.0605 6.38157 21.6505 6.17157Z"/></svg>
				</div>
				{__("Getting the Camera and Mic permissions")}<span class="spinner-grow spinner-grow-sm ml10"></span>
			</div>
			<!-- live status -->
		</div>

		<hr class="mtb30">
		
		<div class="container">
			<div class="valign ele_live_foot_btns">
				<!-- live stream buttons -->
				<div class="live-stream-buttons" id="js_live-stream-buttons">
					<!-- camera selection -->
					<span class="dropdown" id="camera-select-menu">
						<div class="btn btn-md btn-icon btn-rounded btn-secondary mr10" data-toggle="dropdown">
							<i class="fa-solid fa-camera-rotate fa-fw"></i>
						</div>
						<ul class="dropdown-menu">
						</ul>
					</span>
					<!-- camera selection -->
					<button class="btn btn-icon btn-rounded btn-secondary mr10 d-none d-sm-none d-md-inline js_mute-mic" id="mic-btn" disabled>
						<i class="fas fa-microphone fa-fw"></i>
					</button>
					<button class="btn btn-icon btn-rounded btn-secondary mr10 d-none d-sm-none d-md-inline js_mute-cam" id="cam-btn" disabled>
						<i class="fas fa-video fa-fw"></i>
					</button>
					<!-- share/unshare screen -->
					<button class="btn btn-icon btn-rounded btn-secondary mr10 d-none d-sm-none d-md-inline js_share-screen" id="screen-btn" disabled>
						<i class="fas fa-desktop fa-fw"></i>
					</button>
					<!-- share/unshare screen -->
					<button class="btn btn-icon btn-rounded btn-secondary mr10 js_mute-comments" id="comments-btn" disabled>
						<i class="fas fa-comments fa-fw"></i>
					</button>
				</div>
				<!-- live stream buttons -->
				<button class="btn btn-mat btn-block btn-danger m-0 x-hidden" id="js_live-end">{__("End")}</button>
				<button class="btn btn-mat btn-block btn-primary m-0 x-hidden" id="js_live-start" {if $page_id} data-node-id={$page_id} data-node='page' {/if}{if $group_id} data-node-id={$group_id} data-node='group' {/if}{if $event_id} data-node-id={$event_id} data-node='event' {/if}>{__("Go Live")}</button>
				
				{if !$page_id && $user->_data['can_receive_tip']}
					<div class="live-stream-tips-wrapper ml10 x-hidden" id="js_live-tips">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="tips_enabled" id="tips_enabled">
							<label class="custom-control-label" for="tips_enabled">
								<span>{__("Enable Tips")}</span>
							</label>
						</div>
					</div>
				{/if}
				{if $can_be_for_subscriptions}
					<div class="live-stream-tips-wrapper ml10 x-hidden" id="js_live-subscriptions">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="for_subscriptions" id="for_subscriptions">
							<label class="custom-control-label" for="for_subscriptions">
								<span>{__("Subscribers Only")}</span>
							</label>
						</div>
					</div>
				{/if}
				{if $can_be_paid}
					<div class="live-stream-tips-wrapper ml10 x-hidden" id="js_live-paid">
						<div class="custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="is_paid" id="is_paid">
							<label class="custom-control-label" for="is_paid">
								<span>{__("Paid Live")}</span>
							</label>
						</div>
						<input id="js_live-paid-price" name="post-price" class="x-hidden form-control position-absolute" type="text" placeholder='{__("Price")}'>
					</div>
				{/if}
			</div>
		</div>
	</div>
</div>
<!-- page content -->

{include file='_footer.tpl'}