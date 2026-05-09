{include file='_head.tpl'}
{include file='_header.tpl'}

{if $view == ""}
    <!-- page header -->
    <div class="page-header">
        <div class="circle-1"></div>
        <div class="circle-3"></div>
		<div class="container">
			<div class="inner">
				<div class="inner_inner">
					<h2>{__("Funding")}</h2>
					<p class="text-xlg">{__($system['system_description_funding'])}</p>
				</div>
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M9.99 17.98C14.4028 17.98 17.98 14.4028 17.98 9.99C17.98 5.57724 14.4028 2 9.99 2C5.57724 2 2 5.57724 2 9.99C2 14.4028 5.57724 17.98 9.99 17.98Z" fill="currentColor"/><path d="M21.9701 15.9901C21.9701 19.2901 19.2901 21.9701 15.9901 21.9701C13.9501 21.9701 12.1601 20.9501 11.0801 19.4001C15.4401 18.9101 18.9101 15.4401 19.4001 11.0801C20.9501 12.1601 21.9701 13.9501 21.9701 15.9901Z" fill="currentColor"/><path d="M11.45 9.71016L9.05 8.87016C8.81 8.79016 8.76 8.77016 8.76 8.42016C8.76 8.16016 8.94 7.95016 9.17 7.95016H10.67C10.99 7.95016 11.25 8.24016 11.25 8.60016C11.25 9.01016 11.59 9.35016 12 9.35016C12.41 9.35016 12.75 9.01016 12.75 8.60016C12.75 7.45016 11.86 6.51016 10.75 6.46016V6.41016C10.75 6.00016 10.41 5.66016 10 5.66016C9.59 5.66016 9.25 5.99016 9.25 6.41016V6.46016H9.16C8.11 6.46016 7.25 7.34016 7.25 8.43016C7.25 9.38016 7.67 9.99016 8.54 10.2902L10.95 11.1302C11.19 11.2102 11.24 11.2302 11.24 11.5802C11.24 11.8402 11.06 12.0502 10.83 12.0502H9.33C9.01 12.0502 8.75 11.7602 8.75 11.4002C8.75 10.9902 8.41 10.6502 8 10.6502C7.59 10.6502 7.25 10.9902 7.25 11.4002C7.25 12.5502 8.14 13.4902 9.25 13.5402V13.6002C9.25 14.0102 9.59 14.3502 10 14.3502C10.41 14.3502 10.75 14.0102 10.75 13.6002V13.5502H10.84C11.89 13.5502 12.75 12.6702 12.75 11.5802C12.75 10.6302 12.32 10.0202 11.45 9.71016Z" fill="currentColor"/></svg>
			</div>
		</div>
    </div>
    <!-- page header -->
{/if}


<!-- page content -->
<div class="container position-relative">
	<div class="ele_content p-5 mb30">
		<div class="valign flex-wrap flex-md-nowrap ele_jobs_header">
			<!-- location filter -->
			{if $system['newsfeed_location_filter_enabled']}
				<div class="dropdown w-100">
					<button type="button" class="btn btn-mat countries-filter w-100 m-0" data-toggle="dropdown" data-display="static" aria-expanded="false">
						<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M20.6009 4.10156V6.30156C20.6009 7.10156 20.1009 8.10156 19.6009 8.60156L15.3009 12.4016C14.7009 12.9016 14.3009 13.9016 14.3009 14.7016V19.0016C14.3009 19.6016 13.9009 20.4016 13.4009 20.7016L12.0009 21.6016C10.7009 22.4016 8.90086 21.5016 8.90086 19.9016V14.6016C8.90086 13.9016 8.50086 13.0016 8.10086 12.5016L7.63086 12.0116C7.32086 11.6816 7.26086 11.1816 7.51086 10.7916L12.6309 2.57156C12.8109 2.28156 13.1309 2.10156 13.4809 2.10156H18.6009C19.7009 2.10156 20.6009 3.00156 20.6009 4.10156Z" fill="currentColor"></path><path d="M10.3504 3.63156L6.80039 9.32156C6.46039 9.87156 5.68039 9.95156 5.23039 9.48156L4.30039 8.50156C3.80039 8.00156 3.40039 7.10156 3.40039 6.50156V4.20156C3.40039 3.00156 4.30039 2.10156 5.40039 2.10156H9.50039C10.2804 2.10156 10.7604 2.96156 10.3504 3.63156Z" fill="currentColor"></path></svg>
						{if $selected_country}
							{$selected_country['country_name']}
						{else}
							{__("All Countries")}
						{/if}
					</button>
					<div class="dropdown-menu ele_create_menu countries-dropdown w-100">
						<div class="js_scroller">
							<a class="dropdown-item" href="?country=all">{__("All Countries")}</a>
							{foreach $countries as $country}
								<a class="dropdown-item" href="?country={$country['country_name_native']}">
									{$country['country_name']}
								</a>
							{/foreach}
						</div>
					</div>
				</div>
			{/if}
			<!-- location filter -->
		</div>
	</div>
	
	<!-- content panel -->
	<div class="blogs-wrapper mb30">
		{if $funding_requests}
			<div class="row">
				<!-- fundings -->
				{foreach $funding_requests as $funding}
				{include file='__feeds_funding.tpl'}
				{/foreach}
				<!-- fundings -->
			</div>

			<!-- see-more -->
			<div class="alert alert-post see-more js_see-more" data-get="fundings" data-country="{if $selected_country}{$selected_country['country_id']}{else}all{/if}">
				<span>{__("More Funding")}</span>
				<div class="loader loader_small x-hidden"></div>
			</div>
			<!-- see-more -->
		{else}
			{include file='_no_data.tpl'}
		{/if}
	</div>
	<!-- content panel -->

</div>
<!-- page content -->

{include file='_footer.tpl'}