{include file='_head.tpl'}
{include file='_header.tpl'}

<!-- page header -->
<div class="ele_content page-header">
    <div class="circle-1"></div>
    <div class="circle-3"></div>
    <div class="container">
		<div class="inner">
			<div class="inner_inner">
				<h2>{__("Merits")}</h2>
				<p class="text-xlg">{__("Ranking")}</p>
			</div>
			<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M1.25 12C1.25 17.9371 6.06294 22.75 12 22.75C17.9371 22.75 22.75 17.9371 22.75 12C22.75 6.06294 17.9371 1.25 12 1.25C6.06294 1.25 1.25 6.06294 1.25 12Z" fill="currentColor"/><path d="M11.9986 6.25C12.5598 6.25 13.0018 6.67388 13.2841 7.24584L14.2265 9.14629C14.2551 9.20511 14.3228 9.28793 14.4246 9.3637C14.5264 9.43938 14.626 9.48114 14.6915 9.49215L16.3975 9.77793C17.0137 9.88148 17.5302 10.1835 17.6979 10.7095C17.8655 11.2351 17.62 11.7812 17.1769 12.2251L17.1764 12.2256L15.8511 13.5618C15.7986 13.6148 15.7397 13.7146 15.7028 13.8446C15.6662 13.9737 15.6629 14.0912 15.6796 14.1672L15.6798 14.1683L16.059 15.8213C16.2162 16.5093 16.1641 17.1916 15.6789 17.5482C15.192 17.9061 14.5266 17.7475 13.9221 17.3875L12.3229 16.433C12.2558 16.3929 12.1405 16.3604 12.0013 16.3604C11.8631 16.3604 11.7453 16.3924 11.6738 16.4341L11.6728 16.4346L10.0768 17.3873C9.473 17.7485 8.80845 17.9044 8.3215 17.5461C7.8366 17.1894 7.78186 16.5084 7.93962 15.821L8.31872 14.1683L8.31895 14.1672C8.33557 14.0912 8.33232 13.9737 8.29566 13.8446C8.25876 13.7146 8.19992 13.6148 8.14739 13.5618L6.82111 12.2246C6.38082 11.7807 6.13616 11.235 6.30236 10.7102C6.46905 10.1839 6.98455 9.88152 7.60118 9.7779L9.30574 9.49236L9.30628 9.49226C9.36877 9.48142 9.46693 9.44014 9.56843 9.36426C9.67012 9.28823 9.73804 9.20523 9.76667 9.14629L9.76811 9.14336L10.7093 7.24534L10.7097 7.24459C10.9946 6.67311 11.438 6.25 11.9986 6.25Z" fill="currentColor"/></svg>
		</div>
    </div>
</div>
<!-- page header -->

<!-- page content -->
<div class="container position-relative mb20">
	<!-- content -->
	<div class="ele_content p-4">
		<form method="get" class="row align-items-center">
            <div class="col-lg-3 col-md-6 mb-4">
				<label class="ele_field m-0">
					<select class="" name="category" id="category">
						<option value="all">{__("All")}</option>
						{foreach $merits_categories as $category}
							{include file='__categories.recursive_options.tpl' data_category=$config['category']}
						{/foreach}
					</select>
					<span>{__("Category")}</span>
				</label>
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
				<!-- start date picker -->
				<label class="ele_field m-0">
					<input type="date" class="" name="start_date" placeholder=" " value="{$config['start_date']}" />
					<span>{__("From")}</span>
				</label>
				<!-- start date picker -->
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
				<!-- end date picker -->
				<label class="ele_field m-0">
					<input type="date" class="" name="end_date" placeholder=" " value="{$config['end_date']}" />
					<span>{__("To")}</span>
				</label>
              <!-- end date picker -->
            </div>
            <div class="col-lg-3 col-md-6 mb-4">
				<button type="submit" class="btn btn-mat w-100 btn-primary">{__("Filter")}</button>
            </div>
		</form>
		{if $merits_ranking_users}
            <div class="table-responsive">
				<table class="table table-striped table-hover m-0">
					<thead>
						<tr>
							<th>{__("Rank")}</th>
							<th>{__("User")}</th>
							<th>{__("Amount")}</th>
						</tr>
					</thead>
					<tbody>
						{foreach $merits_ranking_users as $_user}
							<tr>
								<td>{$_user@iteration}</td>
								<td>
									<a target="_blank" href="{$system['system_url']}/{$_user['user_name']}">
										<img class="tbl-image" src="{$_user['user_picture']}">
										{if $system['show_usernames_enabled']}{$_user['user_name']}{else}{$_user['user_firstname']} {$_user['user_lastname']}{/if}
									</a>
								</td>
								<td>{$_user['count']}</td>
							</tr>
						{/foreach}
					</tbody>
				</table>
            </div>
		{else}
			<div class="text-center empty_state">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.5 10.9V4.1C21.5 2.6 20.86 2 19.27 2H15.23C13.64 2 13 2.6 13 4.1V10.9C13 12.4 13.64 13 15.23 13H19.27C20.86 13 21.5 12.4 21.5 10.9Z" fill="currentColor"/><path d="M11 13.1V19.9C11 21.4 10.36 22 8.77 22H4.73C3.14 22 2.5 21.4 2.5 19.9V13.1C2.5 11.6 3.14 11 4.73 11H8.77C10.36 11 11 11.6 11 13.1Z" fill="currentColor"/><path opacity="0.4" d="M21.5 19.9V17.1C21.5 15.6 20.86 15 19.27 15H15.23C13.64 15 13 15.6 13 17.1V19.9C13 21.4 13.64 22 15.23 22H19.27C20.86 22 21.5 21.4 21.5 19.9Z" fill="currentColor"/><path opacity="0.4" d="M11 6.9V4.1C11 2.6 10.36 2 8.77 2H4.73C3.14 2 2.5 2.6 2.5 4.1V6.9C2.5 8.4 3.14 9 4.73 9H8.77C10.36 9 11 8.4 11 6.9Z" fill="currentColor"/></svg> {__("No people available")}
			</div>
		{/if}
	</div>
	<!-- content -->
</div>
<!-- page content -->

{include file='_footer.tpl'}