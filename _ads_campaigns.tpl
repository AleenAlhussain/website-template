{if $ads_campaigns}
	<!-- ads campaigns -->
	{foreach $ads_campaigns as $campaign}
		<div class="ele_content mb15 {if $campaign['ads_type'] == "post"}bg-transparent{/if}">
		    <div class="valign ele_sidebar_widget_title px-0 pt-0">
		        <b>{__("Sponsored")}</b>
				
				{if $user->_logged_in && $user->_data['user_id'] != $campaign['campaign_user_id']}
					<span class="pointer lh-1" data-toggle="modal" data-url="data/report.php?do=create&handle=ads_campaign&id={$campaign['campaign_id']}">
						<svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 -960 960 960" width="20" fill="currentColor"><path d="M480-280q17 0 28.5-11.5T520-320q0-17-11.5-28.5T480-360q-17 0-28.5 11.5T440-320q0 17 11.5 28.5T480-280Zm0-160q17 0 28.5-11.5T520-480v-160q0-17-11.5-28.5T480-680q-17 0-28.5 11.5T440-640v160q0 17 11.5 28.5T480-440ZM363-120q-16 0-30.5-6T307-143L143-307q-11-11-17-25.5t-6-30.5v-234q0-16 6-30.5t17-25.5l164-164q11-11 25.5-17t30.5-6h234q16 0 30.5 6t25.5 17l164 164q11 11 17 25.5t6 30.5v234q0 16-6 30.5T817-307L653-143q-11 11-25.5 17t-30.5 6H363Z"></path></svg>
					</span>
				{/if}
		    </div>
		    <div class="pb-3 {if $campaign['campaign_bidding'] == 'click'}js_ads-click-campaign{/if}" data-id="{$campaign['campaign_id']}">
				{if $campaign['ads_type'] == "post"}
					{include file='__feeds_post.tpl' post=$campaign['ads_post'] standalone=true}
				{else}
					<a class="embed-responsive embed-responsive-16by9" href="{$campaign['ads_url']}" target="_blank">
						{if $campaign['ads_image']}
							<img class="img-fluid embed-responsive-item rounded-lg" src="{$system['system_uploads']}/{$campaign['ads_image']}">
						{else}
							<video class="img-fluid d-block bg-dark rounded-lg" src="{$system['system_uploads']}/{$campaign['ads_video']}" autoplay muted loop></video>
						{/if}
					</a>
					{if $campaign['ads_title'] || $campaign['ads_description']}
						<div class="mt-3">
							<p class="ads-title pt-0 bold">
								<a href="{$campaign['ads_url']}" target="_blank">{$campaign['ads_title']}</a>
							</p>
							<p class="ads-descrition m-0">
								{$campaign['ads_description']|truncate:200}
							</p>
						</div>
					{/if}
				{/if}
		    </div>
		</div>
	{/foreach}
	<!-- ads campaigns -->
{/if}