<!-- posts-filter -->
{if !$_no_filter}
	<h2 class="ele_page_title">{if $_title}{$_title}{else}{/if}</h2>
	{if $user->_logged_in && !$_filter && !$_query}
		<div class="valign ele_post_filters js_posts-filter" data-value="all">
			<div class="ele_post_filters_nav valign ele_scroll">
				<div class="btn-mat filterby pointer active" data-title='{__("All")}' data-value="all">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M19 22H5a3 3 0 0 1-3-3V3a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v12h4v4a3 3 0 0 1-3 3zm-1-5v2a1 1 0 0 0 2 0v-2h-2zm-2 3V4H4v15a1 1 0 0 0 1 1h11zM6 7h8v2H6V7zm0 4h8v2H6v-2zm0 4h5v2H6v-2z" fill="currentColor"></path></svg> {__("All")}
				</div>
				<div class="btn-mat filterby pointer" data-title='{__("Text")}' data-value="">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24"><path d="M16,17 L16,19 L2,19 L2,17 L16,17 Z M22,13 L22,15 L2,15 L2,13 L22,13 Z M16,9 L16,11 L2,11 L2,9 L16,9 Z M22,5 L22,7 L2,7 L2,5 L22,5 Z" fill="currentColor"></path></svg> {__("Text")}
				</div>
				<div class="btn-mat filterby pointer" data-title='{__("Links")}' data-value="link">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M18.364 15.536L16.95 14.12l1.414-1.414a5 5 0 1 0-7.071-7.071L9.879 7.05 8.464 5.636 9.88 4.222a7 7 0 0 1 9.9 9.9l-1.415 1.414zm-2.828 2.828l-1.415 1.414a7 7 0 0 1-9.9-9.9l1.415-1.414L7.05 9.88l-1.414 1.414a5 5 0 1 0 7.071 7.071l1.414-1.414 1.415 1.414zm-.708-10.607l1.415 1.415-7.071 7.07-1.415-1.414 7.071-7.07z"/></svg> {__("Links")}
				</div>
				<div class="btn-mat filterby pointer" data-title='{__("Media")}' data-value="media">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M20 13c-1.678 0-3.249.46-4.593 1.259A14.984 14.984 0 0 1 18.147 19H20v-6zm-3.996 6C14.044 14.302 9.408 11 4 11v8h12.004zM4 9c3.83 0 7.323 1.435 9.974 3.796A10.949 10.949 0 0 1 20 11V3h1.008c.548 0 .992.445.992.993v16.014a1 1 0 0 1-.992.993H2.992A.993.993 0 0 1 2 20.007V3.993A1 1 0 0 1 2.992 3H6V1h2v4H4v4zm14-8v4h-8V3h6V1h2zm-1.5 9a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z"/></svg> {__("Media")}
				</div>
				{if $system['live_enabled'] && $_get != "posts_page" && $_get != "posts_group" && $_get != "posts_event"}
					<div class="btn-mat filterby pointer" data-title='{__("Live")}' data-value="live">
						<svg width="24" height="24" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" fill="currentColor"><path fill-rule="evenodd" clip-rule="evenodd" d="M7.6727 3.66836C7.85585 4.03988 7.70315 4.48953 7.33163 4.67268C4.61229 6.01327 2.75 8.79333 2.75 12C2.75 15.2066 4.61229 17.9867 7.33163 19.3273C7.70315 19.5104 7.85585 19.9601 7.6727 20.3316C7.48954 20.7031 7.03989 20.8558 6.66837 20.6727C3.46083 19.0914 1.25 15.8043 1.25 12C1.25 8.19571 3.46083 4.90855 6.66837 3.32729C7.03989 3.14413 7.48954 3.29683 7.6727 3.66836ZM16.3273 3.66836C16.5105 3.29683 16.9601 3.14413 17.3316 3.32729C20.5392 4.90855 22.75 8.19571 22.75 12C22.75 15.8043 20.5392 19.0914 17.3316 20.6727C16.9601 20.8558 16.5105 20.7031 16.3273 20.3316C16.1441 19.9601 16.2969 19.5104 16.6684 19.3273C19.3877 17.9867 21.25 15.2066 21.25 12C21.25 8.79333 19.3877 6.01327 16.6684 4.67268C16.2969 4.48953 16.1441 4.03988 16.3273 3.66836ZM8.59913 7.54948C8.84794 7.88064 8.78118 8.3508 8.45002 8.5996C7.41628 9.37627 6.75 10.6102 6.75 12C6.75 13.3898 7.41628 14.6237 8.45002 15.4004C8.78118 15.6492 8.84794 16.1193 8.59913 16.4505C8.35033 16.7817 7.88017 16.8484 7.54901 16.5996C6.1544 15.5518 5.25 13.8814 5.25 12C5.25 10.1186 6.1544 8.44816 7.54901 7.40036C7.88017 7.15156 8.35033 7.21832 8.59913 7.54948ZM15.4009 7.54948C15.6497 7.21832 16.1198 7.15156 16.451 7.40036C17.8456 8.44816 18.75 10.1186 18.75 12C18.75 13.8814 17.8456 15.5518 16.451 16.5996C16.1198 16.8484 15.6497 16.7817 15.4009 16.4505C15.1521 16.1193 15.2188 15.6492 15.55 15.4004C16.5837 14.6237 17.25 13.3898 17.25 12C17.25 10.6102 16.5837 9.37627 15.55 8.5996C15.2188 8.3508 15.1521 7.88064 15.4009 7.54948ZM10.75 12C10.75 11.3096 11.3096 10.75 12 10.75C12.6904 10.75 13.25 11.3096 13.25 12C13.25 12.6903 12.6904 13.25 12 13.25C11.3096 13.25 10.75 12.6903 10.75 12ZM12 9.24998C10.4812 9.24998 9.25 10.4812 9.25 12C9.25 13.5188 10.4812 14.75 12 14.75C13.5188 14.75 14.75 13.5188 14.75 12C14.75 10.4812 13.5188 9.24998 12 9.24998Z"/></svg> {__("Live")}
					</div>
				{/if}
				<div class="btn-mat filterby pointer" data-title='{__("Photos")}' data-value="photos">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M4.828 21l-.02.02-.021-.02H2.992A.993.993 0 0 1 2 20.007V3.993A1 1 0 0 1 2.992 3h18.016c.548 0 .992.445.992.993v16.014a1 1 0 0 1-.992.993H4.828zM20 15V5H4v14L14 9l6 6zm0 2.828l-6-6L6.828 19H20v-1.172zM8 11a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"/></svg> {__("Photos")}
				</div>
				{if $system['geolocation_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Maps")}' data-value="map">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M2 5l7-3 6 3 6.303-2.701a.5.5 0 0 1 .697.46V19l-7 3-6-3-6.303 2.701a.5.5 0 0 1-.697-.46V5zm14 14.395l4-1.714V5.033l-4 1.714v12.648zm-2-.131V6.736l-4-2v12.528l4 2zm-6-2.011V4.605L4 6.319v12.648l4-1.714z"/></svg> {__("Maps")}
					</div>
				{/if}
				{if $system['blogs_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Blogs")}' data-value="article">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M20 22H4a1 1 0 0 1-1-1V3a1 1 0 0 1 1-1h16a1 1 0 0 1 1 1v18a1 1 0 0 1-1 1zm-1-2V4H5v16h14zM7 6h4v4H7V6zm0 6h10v2H7v-2zm0 4h10v2H7v-2zm6-9h4v2h-4V7z"/></svg> {__("Blogs")}
					</div>
				{/if}
				{if $system['market_enabled'] && $_get != "posts_page" && $_get != "posts_group" && $_get != "posts_event"}
					<div class="btn-mat filterby pointer" data-title='{__("Products")}' data-value="product">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M7 8V6a5 5 0 1 1 10 0v2h3a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1h3zm0 2H5v10h14V10h-2v2h-2v-2H9v2H7v-2zm2-2h6V6a3 3 0 0 0-6 0v2z"/></svg> {__("Products")}
					</div>
				{/if}
				{if $system['funding_enabled'] && $_get != "posts_page" && $_get != "posts_group" && $_get != "posts_event"}
					<div class="btn-mat filterby pointer" data-title='{__("Funding")}' data-value="product">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M5 9a1 1 0 0 1 1 1 6.97 6.97 0 0 1 4.33 1.5h2.17c1.332 0 2.53.579 3.353 1.499L19 13a5 5 0 0 1 4.516 2.851C21.151 18.972 17.322 21 13 21c-2.79 0-5.15-.603-7.06-1.658A.998.998 0 0 1 5 20H2a1 1 0 0 1-1-1v-9a1 1 0 0 1 1-1h3zm1.001 3L6 17.021l.045.033C7.84 18.314 10.178 19 13 19c3.004 0 5.799-1.156 7.835-3.13l.133-.133-.12-.1a2.994 2.994 0 0 0-1.643-.63L19 15l-2.112-.001c.073.322.112.657.112 1.001v1H8v-2l6.79-.001-.034-.078a2.501 2.501 0 0 0-2.092-1.416L12.5 13.5H9.57A4.985 4.985 0 0 0 6.002 12zM4 11H3v7h1v-7zm9.646-7.425L14 3.93l.354-.354a2.5 2.5 0 1 1 3.535 3.536L14 11l-3.89-3.89a2.5 2.5 0 1 1 3.536-3.535zm-2.12 1.415a.5.5 0 0 0-.06.637l.058.069L14 8.17l2.476-2.474a.5.5 0 0 0 .058-.638l-.058-.07a.5.5 0 0 0-.638-.057l-.07.058-1.769 1.768-1.767-1.77-.068-.056a.5.5 0 0 0-.638.058z"/></svg> {__("Funding")}
					</div>
				{/if}
				{if $system['offers_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Offers")}' data-value="offer">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M2 9.5V4a1 1 0 0 1 1-1h18a1 1 0 0 1 1 1v5.5a2.5 2.5 0 1 0 0 5V20a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-5.5a2.5 2.5 0 1 0 0-5zM14 5H4v2.968a4.5 4.5 0 0 1 0 8.064V19h10V5zm2 0v14h4v-2.968a4.5 4.5 0 0 1 0-8.064V5h-4z"/></svg> {__("Offers")}
					</div>
				{/if}
				{if $system['jobs_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Jobs")}' data-value="job">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M7 5V2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v3h4a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h4zM4 16v3h16v-3H4zm0-2h16V7H4v7zM9 3v2h6V3H9zm2 8h2v2h-2v-2z"/></svg> {__("Jobs")}
					</div>
				{/if}
				{if $system['courses_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Courses")}' data-value="course">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path d="M21 4H7C5.89543 4 5 4.89543 5 6C5 7.10457 5.89543 8 7 8H21V21C21 21.5523 20.5523 22 20 22H7C4.79086 22 3 20.2091 3 18V6C3 3.79086 4.79086 2 7 2H20C20.5523 2 21 2.44772 21 3V4ZM5 18C5 19.1046 5.89543 20 7 20H19V10H7C6.27143 10 5.58835 9.80521 5 9.46487V18ZM20 7H7C6.44772 7 6 6.55228 6 6C6 5.44772 6.44772 5 7 5H20V7Z"/></svg> {__("Courses")}
					</div>
				{/if}
				{if $system['polls_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Polls")}' data-value="poll">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M2 13h6v8H2v-8zm14-5h6v13h-6V8zM9 3h6v18H9V3zM4 15v4h2v-4H4zm7-10v14h2V5h-2zm7 5v9h2v-9h-2z"/></svg> {__("Polls")}
					</div>
				{/if}
				{if $system['reels_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Reels")}' data-value="reel">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path d="M5.99807 7L8.30747 3H11.9981L9.68867 7H5.99807ZM11.9981 7L14.3075 3H17.9981L15.6887 7H11.9981ZM17.9981 7L20.3075 3H21.0082C21.556 3 22 3.44495 22 3.9934V20.0066C22 20.5552 21.5447 21 21.0082 21H2.9918C2.44405 21 2 20.5551 2 20.0066V3.9934C2 3.44476 2.45531 3 2.9918 3H5.99807L4 6.46076V19H20V7H17.9981Z"/></svg> {__("Reels")}
					</div>
				{/if}
				{if $system['videos_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Videos")}' data-value="video">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M17 9.2l5.213-3.65a.5.5 0 0 1 .787.41v12.08a.5.5 0 0 1-.787.41L17 14.8V19a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V5a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v4.2zm0 3.159l4 2.8V8.84l-4 2.8v.718zM3 6v12h12V6H3zm2 2h2v2H5V8z"/></svg> {__("Videos")}
					</div>
				{/if}
				{if $system['audio_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Audios")}' data-value="audio">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M20 3v14a4 4 0 1 1-2-3.465V5H9v12a4 4 0 1 1-2-3.465V3h13zM5 19a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm11 0a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/></svg> {__("Audios")}
					</div>
				{/if}
				{if $system['file_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Files")}' data-value="file">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24" fill="currentColor"><path fill="none" d="M0 0h24v24H0z"/><path d="M21 8v12.993A1 1 0 0 1 20.007 22H3.993A.993.993 0 0 1 3 21.008V2.992C3 2.455 3.449 2 4.002 2h10.995L21 8zm-2 1h-5V4H5v16h14V9z"/></svg> {__("Files")}
					</div>
				{/if}
				{if $system['merits_enabled']}
					<div class="btn-mat filterby pointer" data-title='{__("Merits")}' data-value="merit">
						<svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor"><path d="m354-287 126-76 126 77-33-144 111-96-146-13-58-136-58 135-146 13 111 97-33 143ZM233-120l65-281L80-590l288-25 112-265 112 265 288 25-218 189 65 281-247-149-247 149Zm247-350Z"/></svg> {__("Merits")}
					</div>
				{/if}
			</div>
		</div>
	{elseif $_filter == "article"}
		<div class="valign ele_page_titlemulti mb15">
			<h2 class="ele_page_title mb0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M20.5 10.19H17.61C15.24 10.19 13.31 8.26 13.31 5.89V3C13.31 2.45 12.86 2 12.31 2H8.07C4.99 2 2.5 4 2.5 7.57V16.43C2.5 20 4.99 22 8.07 22H15.93C19.01 22 21.5 20 21.5 16.43V11.19C21.5 10.64 21.05 10.19 20.5 10.19Z" fill="currentColor"></path><path d="M15.7997 2.21048C15.3897 1.80048 14.6797 2.08048 14.6797 2.65048V6.14048C14.6797 7.60048 15.9197 8.81048 17.4297 8.81048C18.3797 8.82048 19.6997 8.82048 20.8297 8.82048C21.3997 8.82048 21.6997 8.15048 21.2997 7.75048C19.8597 6.30048 17.2797 3.69048 15.7997 2.21048Z" fill="currentColor"></path><path d="M13.5 13.75H7.5C7.09 13.75 6.75 13.41 6.75 13C6.75 12.59 7.09 12.25 7.5 12.25H13.5C13.91 12.25 14.25 12.59 14.25 13C14.25 13.41 13.91 13.75 13.5 13.75Z" fill="currentColor"></path><path d="M11.5 17.75H7.5C7.09 17.75 6.75 17.41 6.75 17C6.75 16.59 7.09 16.25 7.5 16.25H11.5C11.91 16.25 12.25 16.59 12.25 17C12.25 17.41 11.91 17.75 11.5 17.75Z" fill="currentColor"></path></svg> {__("My Blogs")}</h2>
			{if $system['blogs_enabled']}
				<a href="{$system['system_url']}/blogs/new" class="btn btn-mat btn-primary"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("Create Blog")}</a>
			{/if}
		</div>
	{elseif $_filter == "product" && !$_query}
		<div class="valign ele_page_titlemulti mb15">
			<h2 class="ele_page_title mb0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.4" d="M21.3709 11.3894V17.3794C21.3709 20.1394 19.1309 22.3794 16.3709 22.3794H7.63086C4.87086 22.3794 2.63086 20.1394 2.63086 17.3794V11.4594C3.39086 12.2794 4.47086 12.7494 5.64086 12.7494C6.90086 12.7494 8.11086 12.1194 8.87086 11.1094C9.55086 12.1194 10.7109 12.7494 12.0009 12.7494C13.2809 12.7494 14.4209 12.1494 15.1109 11.1494C15.8809 12.1394 17.0709 12.7494 18.3109 12.7494C19.5209 12.7494 20.6209 12.2594 21.3709 11.3894Z" fill="currentColor"></path> <path d="M14.9894 1.25H8.98936L8.24936 8.61C8.18936 9.29 8.28936 9.93 8.53936 10.51C9.11936 11.87 10.4794 12.75 11.9994 12.75C13.5394 12.75 14.8694 11.89 15.4694 10.52C15.6494 10.09 15.7594 9.59 15.7694 9.08V8.89L14.9894 1.25Z" fill="currentColor"></path> <path opacity="0.6" d="M22.3598 8.27L22.0698 5.5C21.6498 2.48 20.2798 1.25 17.3498 1.25H13.5098L14.2498 8.75C14.2598 8.85 14.2698 8.96 14.2698 9.15C14.3298 9.67 14.4898 10.15 14.7298 10.58C15.4498 11.9 16.8498 12.75 18.3098 12.75C19.6398 12.75 20.8398 12.16 21.5898 11.12C22.1898 10.32 22.4598 9.31 22.3598 8.27Z" fill="currentColor"></path> <path opacity="0.6" d="M6.58965 1.25C3.64965 1.25 2.28965 2.48 1.85965 5.53L1.58965 8.28C1.48965 9.35 1.77965 10.39 2.40965 11.2C3.16965 12.19 4.33965 12.75 5.63965 12.75C7.09965 12.75 8.49965 11.9 9.20965 10.6C9.46965 10.15 9.63965 9.63 9.68965 9.09L10.4697 1.26H6.58965V1.25Z" fill="currentColor"></path> <path d="M11.3491 16.6602C10.0791 16.7902 9.11914 17.8702 9.11914 19.1502V22.3802H14.8691V19.5002C14.8791 17.4102 13.6491 16.4202 11.3491 16.6602Z" fill="currentColor"></path> </svg> {__("My Products")}</h2>
			{if $system['market_enabled'] && !in_array($_get, ['posts_page', 'posts_group', 'posts_event'])}
				<button type="button" class="btn btn-mat btn-primary" data-toggle="modal" data-url="posts/product.php?do=create"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("Create Product")}</button>
			{/if}
		</div>
	{elseif $_filter == "funding"}
		<div class="valign ele_page_titlemulti mb15">
			<h2 class="ele_page_title mb0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="currentColor"/><path d="M12.3296 17.0014C12.1496 17.0614 11.8396 17.0614 11.6596 17.0014C10.0996 16.4714 6.59961 14.2414 6.59961 10.4614C6.59961 8.7914 7.93961 7.44141 9.59961 7.44141C10.5796 7.44141 11.4496 7.9114 11.9996 8.6514C12.5396 7.9214 13.4196 7.44141 14.3996 7.44141C16.0596 7.44141 17.3996 8.7914 17.3996 10.4614C17.3996 14.2414 13.8996 16.4714 12.3296 17.0014Z" fill="currentColor"/></svg> {__("My Funding")}</h2>
			{if $system['funding_enabled'] && !in_array($_get, ['posts_page', 'posts_group', 'posts_event'])}
				<button type="button" class="btn btn-mat btn-primary" data-toggle="modal" data-url="posts/funding.php?do=create"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("Create Funding")}</button>
			{/if}
		</div>
	{elseif $_filter == "offer"}
		<div class="valign ele_page_titlemulti mb15">
			<h2 class="ele_page_title mb0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M3.9889 14.6584L2.46891 13.1385C1.84891 12.5185 1.84891 11.4985 2.46891 10.8785L3.9889 9.35843C4.2489 9.09843 4.4589 8.58843 4.4589 8.22843V6.07846C4.4589 5.19846 5.1789 4.47843 6.0589 4.47843H8.2089C8.5689 4.47843 9.0789 4.26846 9.3389 4.00846L10.8589 2.48844C11.4789 1.86844 12.4989 1.86844 13.1189 2.48844L14.6389 4.00846C14.8989 4.26846 15.4089 4.47843 15.7689 4.47843H17.9189C18.7989 4.47843 19.5189 5.19846 19.5189 6.07846V8.22843C19.5189 8.58843 19.7289 9.09843 19.9889 9.35843L21.5089 10.8785C22.1289 11.4985 22.1289 12.5185 21.5089 13.1385L19.9889 14.6584C19.7289 14.9184 19.5189 15.4284 19.5189 15.7884V17.9384C19.5189 18.8184 18.7989 19.5384 17.9189 19.5384H15.7689C15.4089 19.5384 14.8989 19.7485 14.6389 20.0085L13.1189 21.5285C12.4989 22.1485 11.4789 22.1485 10.8589 21.5285L9.3389 20.0085C9.0789 19.7485 8.5689 19.5384 8.2089 19.5384H6.0589C5.1789 19.5384 4.4589 18.8184 4.4589 17.9384V15.7884C4.4589 15.4184 4.2489 14.9084 3.9889 14.6584Z" fill="currentColor"></path><path d="M14.9983 16C14.4383 16 13.9883 15.55 13.9883 15C13.9883 14.45 14.4383 14 14.9883 14C15.5383 14 15.9883 14.45 15.9883 15C15.9883 15.55 15.5483 16 14.9983 16Z" fill="currentColor"></path><path d="M9.01001 10C8.45001 10 8 9.55 8 9C8 8.45 8.45 8 9 8C9.55 8 10 8.45 10 9C10 9.55 9.56001 10 9.01001 10Z" fill="currentColor"></path><path d="M9.00141 15.7514C8.81141 15.7514 8.62141 15.6815 8.47141 15.5315C8.18141 15.2415 8.18141 14.7614 8.47141 14.4714L14.4714 8.47141C14.7614 8.18141 15.2414 8.18141 15.5314 8.47141C15.8214 8.76141 15.8214 9.24146 15.5314 9.53146L9.5314 15.5315C9.3814 15.6815 9.1914 15.7514 9.00141 15.7514Z" fill="currentColor"></path></svg> {__("My Offers")}</h2>
			{if $system['offers_enabled'] && !in_array($_get, ['posts_page', 'posts_group', 'posts_event'])}
				<button type="button" class="btn btn-mat btn-primary" data-toggle="modal" data-url="posts/offer.php?do=create"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("Create Offer")}</button>
			{/if}
		</div>
	{elseif $_filter == "job"}
		<div class="valign ele_page_titlemulti mb15">
			<h2 class="ele_page_title mb0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.091 6.97953C20.241 6.03953 18.821 5.56953 16.761 5.56953H16.521V5.52953C16.521 3.84953 16.521 1.76953 12.761 1.76953H11.241C7.48101 1.76953 7.48101 3.85953 7.48101 5.52953V5.57953H7.24101C5.17101 5.57953 3.76101 6.04953 2.91101 6.98953C1.92101 8.08953 1.95101 9.56953 2.05101 10.5795L2.06101 10.6495L2.16101 11.6995C2.17101 11.7095 2.19101 11.7295 2.21101 11.7395C2.54101 11.9595 2.88101 12.1795 3.24101 12.3795C3.38101 12.4695 3.53101 12.5495 3.68101 12.6295C5.39101 13.5695 7.27101 14.1995 9.18101 14.5095C9.27101 15.4495 9.68101 16.5495 11.871 16.5495C14.061 16.5495 14.491 15.4595 14.561 14.4895C16.601 14.1595 18.571 13.4495 20.351 12.4095C20.411 12.3795 20.451 12.3495 20.501 12.3195C20.961 12.0595 21.391 11.7795 21.811 11.4695C21.831 11.4595 21.851 11.4395 21.861 11.4195L21.901 11.0595L21.951 10.5895C21.961 10.5295 21.961 10.4795 21.971 10.4095C22.051 9.39953 22.031 8.01953 21.091 6.97953ZM13.091 13.8295C13.091 14.8895 13.091 15.0495 11.861 15.0495C10.631 15.0495 10.631 14.8595 10.631 13.8395V12.5795H13.091V13.8295ZM8.91101 5.56953V5.52953C8.91101 3.82953 8.91101 3.19953 11.241 3.19953H12.761C15.091 3.19953 15.091 3.83953 15.091 5.52953V5.57953H8.91101V5.56953Z" fill="currentColor"></path><path opacity="0.4" d="M20.5002 12.2984C20.4502 12.3284 20.4002 12.3584 20.3502 12.3884C18.5702 13.4284 16.6002 14.1284 14.5602 14.4684C14.4802 15.4284 14.0602 16.5284 11.8702 16.5284C9.68016 16.5284 9.26016 15.4384 9.18016 14.4884C7.27016 14.1884 5.39016 13.5584 3.68016 12.6084C3.53016 12.5284 3.38016 12.4484 3.24016 12.3584C2.88016 12.1584 2.54016 11.9384 2.21016 11.7184C2.19016 11.7084 2.17016 11.6884 2.16016 11.6784L2.77016 18.1884C2.98016 20.1784 3.80016 22.2284 8.20016 22.2284H15.8202C20.2202 22.2284 21.0402 20.1784 21.2502 18.1784L21.8802 11.3984C21.8702 11.4184 21.8502 11.4384 21.8302 11.4484C21.4002 11.7584 20.9602 12.0484 20.5002 12.2984Z" fill="currentColor"></path></svg> {__("My Jobs")}</h2>
			{if $system['jobs_enabled'] && !in_array($_get, ['posts_page', 'posts_group', 'posts_event'])}
				<button type="button" class="btn btn-mat btn-primary" data-toggle="modal" data-url="posts/job.php?do=create"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("Create Job")}</button>
			{/if}
		</div>
	{elseif $_filter == "course"}
		<div class="valign ele_page_titlemulti mb15">
			<h2 class="ele_page_title mb0"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" fill-rule="evenodd" clip-rule="evenodd" d="M12.5564 1.25H11.4436H11.4436C9.60583 1.24999 8.15019 1.24997 7.01098 1.40314C5.83856 1.56076 4.88961 1.89288 4.14124 2.64124C3.39288 3.38961 3.06076 4.33856 2.90314 5.51098C2.74997 6.65019 2.74998 8.10582 2.75 9.94357V19.3327C2.74741 19.3882 2.74609 19.4439 2.74609 19.5C2.74609 21.4192 4.2832 23 6.2099 23H20.24C20.2401 23 20.2401 23 20.2402 23C20.2445 23 20.2487 23 20.2529 22.9999C20.267 22.9997 20.2811 22.9993 20.2951 22.9985C20.8219 22.97 21.2402 22.5339 21.2402 22C21.2402 21.4477 20.7925 21 20.2402 21C19.4118 21 18.7402 20.3284 18.7402 19.5C18.7402 18.6716 19.4118 18 20.2402 18C20.7117 18 21.1069 17.6738 21.2125 17.2348C21.2368 17.1609 21.25 17.082 21.25 17V9.94359C21.25 8.10585 21.25 6.65018 21.0969 5.51098C20.9392 4.33856 20.6071 3.38961 19.8588 2.64124C19.1104 1.89288 18.1614 1.56076 16.989 1.40314C15.8498 1.24997 14.3942 1.24999 12.5564 1.25H12.5564ZM17.0771 18H6.2099C5.41516 18 4.74609 18.6578 4.74609 19.5C4.74609 20.3422 5.41516 21 6.2099 21H17.0771C16.8611 20.5454 16.7402 20.0368 16.7402 19.5C16.7402 18.9632 16.8611 18.4546 17.0771 18Z" fill="currentColor"/><path fill-rule="evenodd" clip-rule="evenodd" d="M15.75 7C15.75 7.41421 15.4142 7.75 15 7.75H9C8.58579 7.75 8.25 7.41421 8.25 7C8.25 6.58579 8.58579 6.25 9 6.25L15 6.25C15.4142 6.25 15.75 6.58579 15.75 7Z" fill="currentColor"/><path fill-rule="evenodd" clip-rule="evenodd" d="M12.75 11C12.75 11.4142 12.4142 11.75 12 11.75H9C8.58579 11.75 8.25 11.4142 8.25 11C8.25 10.5858 8.58579 10.25 9 10.25H12C12.4142 10.25 12.75 10.5858 12.75 11Z" fill="currentColor"/></svg> {__("My Courses")}</h2>
			{if $system['courses_enabled'] && !in_array($_get, ['posts_page', 'posts_group', 'posts_event'])}
				<button type="button" class="btn btn-mat btn-primary" data-toggle="modal" data-url="posts/course.php?do=create"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" fill="currentColor"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm4 11h-3v3c0 .55-.45 1-1 1s-1-.45-1-1v-3H8c-.55 0-1-.45-1-1s.45-1 1-1h3V8c0-.55.45-1 1-1s1 .45 1 1v3h3c.55 0 1 .45 1 1s-.45 1-1 1z"/></svg> {__("Create Course")}</button>
			{/if}
		</div>
	{/if}

	<!-- newsfeed location filter -->
	{if $system['newsfeed_location_filter_enabled'] && in_array($page, ['index', 'group', 'event']) && !in_array($view, ['scheduled', 'boosted_posts']) && !$_filter}
		<div class="mb10">
			<a href="#" data-toggle="dropdown" class="countries-filter">
				<i class="fa fa-globe fa-fw"></i>
				{if $selected_country}
					<span>{$selected_country['country_name']}</span>
				{else}
					<span>{__("All Countries")}</span>
				{/if}
			</a>
			<div class="dropdown-menu countries-dropdown">
				<div class="js_scroller">
					<a class="dropdown-item" href="?country=all">
						{__("All Countries")}
					</a>
					{foreach $countries as $country}
						<a class="dropdown-item" href="?country={$country['country_name_native']}">
							{$country['country_name']}
						</a>
					{/foreach}
				</div>
			</div>
		</div>
	{/if}
	<!-- newsfeed location filter -->
{/if}
<!-- posts-filter -->

<!-- posts-loader -->
<div class="x-hidden js_posts_loader">
	<div class="post ele_post_skel"><div class="valign"><div class="skel skel_avatar"></div><div><div class="skel skel_noti_name"></div><div class="skel skel_noti_time"></div></div></div><div class="valign ele_post_skel_foot"><div class="valign"><div class="skel skel_action"></div><div class="skel skel_action"></div></div><div><div class="skel skel_action"></div></div></div></div>
</div>
<!-- posts-loader -->

<!-- posts staging -->
<button class="btn btn-primary rounded-pill posts-staging-btn js_view-staging-posts">
	{__("View")} <span>0</span> {__("New Posts")}
</button>

<div class="js_posts_stream_staging" style="display: none;"></div>
<!-- posts staging -->

<!-- posts stream -->
<div class="js_posts_stream" data-get="{$_get}" data-filter="{if $_filter}{$_filter}{else}all{/if}" {if $_category}data-category="{$_category}" {/if} data-country="{if $selected_country}{$selected_country['country_id']}{else}all{/if}" {if $_id}data-id="{$_id}" {/if} {if $_query}data-query="{$_query}" {/if}>
	{if $posts}
		<ul>
			<!-- posts -->
			{foreach $posts as $post}
				{include file='__feeds_post.tpl' _get=$_get}
			{/foreach}
			<!-- posts -->
		</ul>

		<!-- see-more -->
		<div class="alert alert-post see-more mb20 js_see-more js_see-more-infinite" data-get="{if $_load_more}{$_load_more}{else}{$_get}{/if}" data-filter="{if $_filter}{$_filter}{else}all{/if}" {if $_category}data-category="{$_category}" {/if} data-country="{if $selected_country}{$selected_country['country_id']}{else}all{/if}" {if $_id}data-id="{$_id}" {/if} {if $_query}data-query="{$_query}" {/if}>
			<span>{__("More Stories")}</span>
			<div class="loader loader_small x-hidden"></div>
		</div>
		<!-- see-more -->
	{else}
		<div class="js_posts_stream" data-get="{$_get}" data-filter="{if $_filter}{$_filter}{else}all{/if}" {if $_category}data-category="{$_category}" {/if} data-country="{if $selected_country}{$selected_country['country_id']}{else}all{/if}" {if $_id}data-id="{$_id}" {/if}>
			{include file='_no_data.tpl'}
		</div>
	{/if}
</div>
<!-- posts stream -->