<button data-toggle="modal" data-url="users/addresses.php?do=add" class="btn {if $_small}btn-secondary{else}btn-success{/if} btn-block btn-mat">
	<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 -960 960 960" width="24"><path fill="currentColor" d="M440-440H240q-17 0-28.5-11.5T200-480q0-17 11.5-28.5T240-520h200v-200q0-17 11.5-28.5T480-760q17 0 28.5 11.5T520-720v200h200q17 0 28.5 11.5T760-480q0 17-11.5 28.5T720-440H520v200q0 17-11.5 28.5T480-200q-17 0-28.5-11.5T440-240v-200Z"/></svg> {__("Add New")}
</button>
	
<div class="row">
	{foreach $addresses as $address}
		<div class="{if $_small}col-lg-12{else}col-lg-6{/if} mt-4">
			<div class="h-100 ele_content ele_ads_lists m-0 p-3">
				<div class="acomp">
					{$address['address_title']}
				</div>
				<div class="{if $_small}d-none{else}{/if}">{$address['address_details']}</div>
				<div class="{if $_small}d-none{else}{/if}">{$address['address_city']}</div>
				<div class="{if $_small}d-none{else}{/if}">{$address['address_country']}</div>
				<div>{$address['address_zip_code']}</div>
				<div>{$address['address_phone']}</div>
				<div class="d-flex align-items-center mt-3 ele_address_foot">
					<button type="button" class="btn btn-mat btn-primary" data-toggle="modal" data-url="users/addresses.php?do=edit&id={$address['address_id']}">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" d="M5 19h1.414l9.314-9.314-1.414-1.414L5 17.586V19zm16 2H3v-4.243L16.435 3.322a1 1 0 0 1 1.414 0l2.829 2.829a1 1 0 0 1 0 1.414L9.243 19H21v2zM15.728 6.858l1.414 1.414 1.414-1.414-1.414-1.414-1.414 1.414z"></path></svg> {__("Edit")}
					</button>
					<button type="button" class="btn btn-mat btn-secondary js_address-deleter" data-id="{$address['address_id']}" title="{__("Delete")}">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" d="M20 7v14a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V7H2V5h20v2h-2zM6 7v13h12V7H6zm1-5h10v2H7V2zm4 8h2v7h-2v-7z"></path></svg>
					</button>
				</div>
			</div>
		</div>
	{/foreach}
</div>