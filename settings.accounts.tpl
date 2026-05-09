<h2 class="ele_page_title small mt-n1 mb-4">{__("Connected Accounts")}</h2>

{if $user->_data['user_id'] == $user->_data['user_master_account']}
	<div class="mb-4">
		<button type="button" class="btn btn-mat btn-primary" data-toggle="modal" data-url="#account-connector">{__("Connect Account")}</button>
	</div>
{/if}

{if count($user->_data['connected_accounts']) > 1}
    {if $user->_data['user_id'] == $user->_data['user_master_account']}
		<ul class="ele_side_users mx-n2">
			{foreach $user->_data['connected_accounts'] as $_user}
				{if $_user['user_id'] != $user->_data['user_id']}
					{include file='__feeds_user.tpl' _tpl="list" _connection="connected_account_remove"}
				{/if}
			{/foreach}
		</ul>
    {else}
		<div class="alert alert-info">{__("You are connected to this account")}</div>
		<ul class="ele_side_users mx-n2">
			{foreach $user->_data['connected_accounts'] as $_user}
				{if $_user['user_id'] == $user->_data['user_master_account']}
					{include file='__feeds_user.tpl' _tpl="list" _connection="connected_account_revoke"}
				{/if}
			{/foreach}
		</ul>
    {/if}
{else}
	{include file='_no_data.tpl'}
{/if}