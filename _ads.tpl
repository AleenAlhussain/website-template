{if $_master}
	{if $_ads && !in_array($page, ["messages", "settings", "admin"])}
	    <div class="container mtb20">
	    	<!-- ads -->
	        {foreach $_ads as $ads_unit}
	            <div class="mw-100">
	                {$ads_unit['code']}
	            </div>
	        {/foreach}
	        <!-- ads -->
	    </div>
	{/if}
{else}
	{if $ads}
		<!-- ads -->
		{foreach $ads as $ads_unit}
			<div class="mw-100 mb15">
			    {$ads_unit['code']}
			</div>
		{/foreach}
		<!-- ads -->
	{/if}
{/if}