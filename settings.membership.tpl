<h2 class="ele_page_title small mt-n1 mb-4">{__("Membership")}</h2>
					
<div class="alert bg-light border p-3 mb-4">
	<div class="mb-2 mx-n1">
		<svg width="34" height="34" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18 3H6C3.79 3 2 4.78 2 6.97V17.03C2 19.22 3.79 21 6 21H18C20.21 21 22 19.22 22 17.03V6.97C22 4.78 20.21 3 18 3ZM8.5 7.17C9.77 7.17 10.81 8.21 10.81 9.48C10.81 10.75 9.77 11.79 8.5 11.79C7.23 11.79 6.19 10.75 6.19 9.48C6.19 8.21 7.23 7.17 8.5 7.17ZM12.37 16.66C12.28 16.76 12.14 16.82 12 16.82H5C4.86 16.82 4.72 16.76 4.63 16.66C4.54 16.56 4.49 16.42 4.5 16.28C4.67 14.6 6.01 13.27 7.69 13.11C8.22 13.06 8.77 13.06 9.3 13.11C10.98 13.27 12.33 14.6 12.49 16.28C12.51 16.42 12.46 16.56 12.37 16.66ZM19 16.75H17C16.59 16.75 16.25 16.41 16.25 16C16.25 15.59 16.59 15.25 17 15.25H19C19.41 15.25 19.75 15.59 19.75 16C19.75 16.41 19.41 16.75 19 16.75ZM19 12.75H15C14.59 12.75 14.25 12.41 14.25 12C14.25 11.59 14.59 11.25 15 11.25H19C19.41 11.25 19.75 11.59 19.75 12C19.75 12.41 19.41 12.75 19 12.75ZM19 8.75H14C13.59 8.75 13.25 8.41 13.25 8C13.25 7.59 13.59 7.25 14 7.25H19C19.41 7.25 19.75 7.59 19.75 8C19.75 8.41 19.41 8.75 19 8.75Z" fill="currentColor"></path></svg>
	</div>
	<div class="text">
		<strong class="bold">{__("Membership")}</strong><br>
		{__("Choose the Plan That's Right for You")}, {__("Check the package from")} <a class="main" href="{$system['system_url']}/packages">{__("Here")}</a>
	</div>
</div>


{if $user->_data['user_subscribed']}
	<div class="heading-small mb-1">
		{__("Package Details")}
	</div>

	<div class="form-group form-row">
		<label class="col-md-3 form-control-label">
			{__("Package")}
		</label>
		<div class="col-md-9">
			<p class="form-control-plaintext border-0 pt-0">
				{$user->_data['package_name']} ({print_money($user->_data['price'])} 
				{if $user->_data['period'] == "life"}{__("Life Time")}{else}{__("per")} {if $user->_data['period_num'] != '1'}{$user->_data['period_num']}{/if} {__($user->_data['period']|ucfirst)}{/if})
			</p>
		</div>
	</div>
	<div class="form-group form-row">
		<label class="col-md-3 form-control-label">
			{__("Subscription Date")}
		</label>
		<div class="col-md-9">
			<p class="form-control-plaintext border-0 pt-0">
				{$user->_data['user_subscription_date']|date_format:"%e/%m/%Y"}
			</p>
		</div>
	</div>
	<div class="form-group form-row">
		<label class="col-md-3 form-control-label">
			{__("Expiration Date")}
		</label>
		<div class="col-md-9">
			<p class="form-control-plaintext border-0 pt-0">
				{if $user->_data['period'] == "life"}
					{__("Life Time")}
				{else}
					{$user->_data['subscription_end']|date_format:"%e/%m/%Y"} ({if $user->_data['subscription_timeleft'] > 0}{__("Remaining")} {$user->_data['subscription_timeleft']} {__("Days")}{else}{__("Expired")}{/if})
				{/if}
			</p>
		</div>
	</div>
	<div class="form-group form-row">
		<label class="col-md-3 form-control-label">
			{__("Boosted Posts")}
		</label>
		<div class="col-md-9">
			<p class="form-control-plaintext border-0 pt-0">
				{$user->_data['user_boosted_posts']}/{$user->_data['boost_posts']} (<a href="{$system['system_url']}/boosted/posts">{__("Manage")}</a>)
			</p>
			
			<div class="progress progress-bar-success mb5">
				<div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="{if $user->_data['boost_posts'] == 0}0{else}{($user->_data['user_boosted_posts']/$user->_data['boost_posts'])*100}{/if}" aria-valuemin="0" aria-valuemax="100" style="width: {if $user->_data['boost_posts'] == 0}0{else}{($user->_data['user_boosted_posts']/$user->_data['boost_posts'])*100}{/if}%"></div>
			</div>
		</div>
	</div>
	
	<div class="form-group form-row">
		<label class="col-md-3 form-control-label">
			{__("Boosted Pages")}
		</label>
		<div class="col-md-9">
			<p class="form-control-plaintext border-0 pt-0">
				{$user->_data['user_boosted_pages']}/{$user->_data['boost_pages']} (<a href="{$system['system_url']}/boosted/pages">{__("Manage")}</a>)
			</p>
			
			<div class="progress progress-bar-success mb5">
				<div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="{if $user->_data['boost_pages'] == 0}0{else}{($user->_data['user_boosted_pages']/$user->_data['boost_pages'])*100}{/if}" aria-valuemin="0" aria-valuemax="100" style="width: {if $user->_data['boost_pages'] == 0}0{else}{($user->_data['user_boosted_pages']/$user->_data['boost_pages'])*100}{/if}%"></div>
			</div>
		</div>
	</div>
	
	<div class="form-group form-row">
        <label class="col-md-3 form-control-label">
			{__("Boosted Groups")}
        </label>
        <div class="col-md-9">
			<p class="form-control-plaintext border-0 pt-0">
				{$user->_data['user_boosted_groups']}/{$user->_data['boost_groups']} (<a href="{$system['system_url']}/boosted/groups">{__("Manage")}</a>)
			</p>
			<div class="progress progress-bar-success mb5">
				<div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="{if $user->_data['boost_groups'] == 0}0{else}{($user->_data['user_boosted_groups']/$user->_data['boost_groups'])*100}{/if}" aria-valuemin="0" aria-valuemax="100" style="width: {if $user->_data['boost_groups'] == 0}0{else}{($user->_data['user_boosted_groups']/$user->_data['boost_groups'])*100}{/if}%"></div>
			</div>
        </div>
	</div>
	  
	<div class="form-group form-row">
        <label class="col-md-3 form-control-label">
			{__("Boosted Events")}
        </label>
        <div class="col-md-9">
			<p class="form-control-plaintext border-0 pt-0">
				{$user->_data['user_boosted_events']}/{$user->_data['boost_events']} (<a href="{$system['system_url']}/boosted/events">{__("Manage")}</a>)
			</p>
			<div class="progress progress-bar-success mb5">
				<div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="{if $user->_data['boost_events'] == 0}0{else}{($user->_data['user_boosted_events']/$user->_data['boost_events'])*100}{/if}" aria-valuemin="0" aria-valuemax="100" style="width: {if $user->_data['boost_events'] == 0}0{else}{($user->_data['user_boosted_events']/$user->_data['boost_events'])*100}{/if}%"></div>
			</div>
        </div>
	</div>
	
	{if !$user->_data['can_pick_categories']}
        <div class="form-group form-row">
			<div class="col-md-9 offset-md-3">
				<button type="button" class="btn btn-danger btn-mat js_unsubscribe-package">{__("Unsubscribe")}</button>
			</div>
        </div>
	{/if}
	  
	{if $user->_data['can_pick_categories']}
		<form class="js_ajax-forms" data-url="users/settings.php?edit=membership">
			{if $user->_data['allowed_videos_categories'] > 0}
				<div class="row form-group">
					<label class="col-md-3 form-control-label">{__("Videos Categories")}</label>
					<div class="col-md-9">
						<input type="text" class="js_tagify-ajax" data-handle="video_categories" name="package_videos_categories" value='{$user->_data['user_package_videos_categories']}'>
						<div class="form-text">
							{__("You can select")} {$user->_data['allowed_videos_categories']} {__("categories")}
						</div>
					</div>
				</div>
			{/if}

			{if $user->_data['allowed_blogs_categories'] > 0}
				<div class="row form-group">
					<label class="col-md-3 form-control-label">{__("Blogs Categories")}</label>
					<div class="col-md-9">
						<input type="text" class="js_tagify-ajax" data-handle="blogs_categories" name="package_blogs_categories" value='{$user->_data['user_package_blogs_categories']}'>
						<div class="form-text">
							{__("You can select")} {$user->_data['allowed_blogs_categories']} {__("categories")}
						</div>
					</div>
				</div>
			{/if}

			<div class="row">
				<div class="col-md-9 offset-md-3">
					<button type="submit" class="btn btn-primary btn-mat">{__("Save Changes")}</button>
					<button type="button" class="btn btn-danger btn-mat js_unsubscribe-package ml10">{__("Unsubscribe")}</button>
				</div>
			</div>

			<!-- success -->
			<div class="alert alert-success mt15 mb0 x-hidden"></div>
			<!-- success -->

			<!-- error -->
			<div class="alert alert-danger mt15 mb0 x-hidden"></div>
			<!-- error -->
		</form>
	{/if}

	<hr>
	<div class="heading-small mb-1">
		{__("Upgrade Package")}
	</div>
	<div>
		<a href="{$system['system_url']}/packages" class="btn btn-mat btn-success"><i class="fa fa-rocket mr10"></i>{__("Upgrade Package")}</a>
	</div>
{else}
	<div class="heading-small mb-1">
		{__("Upgrade to Pro")}
	</div>
	<div>
		<a href="{$system['system_url']}/packages" class="btn btn-mat btn-success"><i class="fa fa-rocket mr10"></i>{__("Upgrade to Pro")}</a>
	</div>
{/if}

<hr>

<div class="heading-small mb-1">
    {__("History")}
</div>
  
{if $packages_payments}
	<div class="table-responsive">
		<table class="table table-hover">
			<thead>
				<tr>
					<th class="bold border-top-0">{__("ID")}</th>
					<th class="bold border-top-0">{__("Package")}</th>
					<th class="bold border-top-0">{__("Amount")}</th>
					<th class="bold border-top-0">{__("Date")}</th>
				</tr>
			</thead>
			<tbody>
				{foreach $packages_payments as $package_payment}
					<tr>
						<td>{$package_payment@iteration}</td>
						<td>{$package_payment['package_name']}</td>
						<td>{print_money($package_payment['package_price'])}</td>
						<td>{__($package_payment['payment_date'])}</td>
					</tr>
				{/foreach}
			</tbody>
		</table>
	</div>
{else}
	{include file='_no_transactions.tpl'}
{/if}