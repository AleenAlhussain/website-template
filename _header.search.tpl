<div class="search-wrapper">
	<button type="button" class="ele_toggle_search"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M19 11H7.83l4.88-4.88c.39-.39.39-1.03 0-1.42-.39-.39-1.02-.39-1.41 0l-6.59 6.59c-.39.39-.39 1.02 0 1.41l6.59 6.59c.39.39 1.02.39 1.41 0 .39-.39.39-1.02 0-1.41L7.83 13H19c.55 0 1-.45 1-1s-.45-1-1-1z"></path></svg></button>
    <form>
        <input id="search-input" type="search" class="form-control" placeholder='{__("Search")}' autocomplete="off">
		<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="currentColor" d="M15.5 14h-.79l-.28-.27c1.2-1.4 1.82-3.31 1.48-5.34-.47-2.78-2.79-5-5.59-5.34-4.23-.52-7.79 3.04-7.27 7.27.34 2.8 2.56 5.12 5.34 5.59 2.03.34 3.94-.28 5.34-1.48l.27.28v.79l4.25 4.25c.41.41 1.08.41 1.49 0 .41-.41.41-1.08 0-1.49L15.5 14zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
    </form>
	<div id="search-results" class="dropdown-menu dropdown-widget dropdown-search ele_header_sarch_dropdown js_dropdown-keepopen">
		<div class="ele_header_search_body ele_scroll">
			<div class="dropdown-widget-header">
				<span class="title">{__("Search Results")}</span>
			</div>
			<div class="dropdown-widget-body custom-scrollbar">
				<div class="loader loader_small ptb10"></div>
			</div>
			<a class="dropdown-widget-footer" id="search-results-all" href="{$system['system_url']}/search/">{__("See All Results")}</a>
		</div>
	</div>
	{if $user->_logged_in && $user->_data['search_log']}
		<div id="search-history" class="dropdown-menu dropdown-widget dropdown-search ele_header_sarch_dropdown js_dropdown-keepopen">
			<div class="ele_header_search_body ele_scroll">
				<div class="valign dropdown-widget-header">
					<span class="title">{__("Recent Searches")}</span>
					<span class="btn js_clear-searches" title='{__("Clear")}' data-toggle="tooltip"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M4 6h16l-1.58 14.22A2 2 0 0 1 16.432 22H7.568a2 2 0 0 1-1.988-1.78L4 6z"/><path d="M7.345 3.147A2 2 0 0 1 9.154 2h5.692a2 2 0 0 1 1.81 1.147L18 6H6l1.345-2.853z"/><path d="M2 6h20"/><path d="M10 11v5"/><path d="M14 11v5"/></svg></span>
				</div>
				<div class="dropdown-widget-body custom-scrollbar">
					{include file='ajax.search.tpl' results=$user->_data['search_log']}
				</div>
				<a class="dropdown-widget-footer" id="search-results-all" href="{$system['system_url']}/search/">{__("Advanced Search")}</a>
			</div>
		</div>
	{/if}
</div>