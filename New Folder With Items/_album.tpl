<!-- album buttons -->
{if $album['manage_album'] && $album['can_delete']}
    <div class="text-center">
        <button type="button" class="btn btn-sm btn-outline-primary rounded-pill ml5 mb5" data-toggle="modal" data-url="albums/modal.php?do=edit_title&id={$album['album_id']}">
            <i class="fa fa-pencil-alt mr5"></i>{__("Edit Album")}
        </button>
        {if $system['photos_enabled']}
            <button type="button" class="btn btn-sm btn-outline-primary rounded-pill ml5 mb5" data-toggle="modal" data-url="albums/modal.php?do=add_photos&id={$album['album_id']}">
                <i class="fa fa-plus-circle mr5"></i>{__("Add Photos")}
            </button>
        {/if}
        <button type="button" class="btn btn-sm btn-outline-danger rounded-pill ml5 mb5 js_delete-album" data-id="{$album['album_id']}">
            <i class="fa fa-trash-alt mr5"></i>{__("Delete Album")}
        </button>
    </div>
{/if}
<!-- album buttons -->

<hr>

<!-- album title & meta -->
<div class="album-title">
    {__($album['title'])}
</div>
<div class="album-meta">
    {if $album['privacy'] == "me"}
        {__("Shared with")} <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><rect x="5" y="11" width="14" height="10" rx="2"></rect><circle cx="12" cy="16" r="1"></circle><path d="M8 11v-4a4 4 0 0 1 8 0v4"></path></svg> {__("Only Me")}
    {elseif $album['privacy'] == "friends"}
        {__("Shared with")} <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="9" cy="7" r="4"></circle><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path><path d="M21 21v-2a4 4 0 0 0 -3 -3.85"></path></svg> {if $system['friends_enabled']}{__("Friends")}{else}{__("Followers")}{/if}
    {elseif $album['privacy'] == "public"}
        {__("Shared with")} <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><circle cx="12" cy="12" r="9"></circle><line x1="3.6" y1="9" x2="20.4" y2="9"></line><line x1="3.6" y1="15" x2="20.4" y2="15"></line><path d="M11.5 3a17 17 0 0 0 0 18"></path><path d="M12.5 3a17 17 0 0 1 0 18"></path></svg> {__("Public")}
    {elseif $album['privacy'] == "custom"}
        {__("Shared with")} <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"></path><path d="M10.325 4.317c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 1.065 2.572c1.756 .426 1.756 2.924 0 3.35a1.724 1.724 0 0 0 -1.066 2.573c.94 1.543 -.826 3.31 -2.37 2.37a1.724 1.724 0 0 0 -2.572 1.065c-.426 1.756 -2.924 1.756 -3.35 0a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065z"></path><circle cx="12" cy="12" r="3"></circle></svg> {__("Custom People")}
    {/if}
</div>
<!-- album title & meta -->

<!-- photos -->
{if count($album['photos']) > 0}
    <ul class="row no-gutters mx-0">
        {foreach $album['photos'] as $photo}
        {include file='__feeds_photo.tpl' _context="album" _manage=$album['manage_album']}
        {/foreach}
    </ul>
    {if count($album['photos']) >= $system['max_results_even']}
        <!-- see-more -->
        <div class="alert alert-info see-more mt20 js_see-more" data-get="photos" data-id="{$album['album_id']}" data-type='album'>
            <span>{__("See More")}</span>
            <div class="loader loader_small x-hidden"></div>
        </div>
        <!-- see-more -->
    {/if}
{else}
	<div class="text-center empty_state">
		<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path opacity="0.4" d="M22 7.81V13.9L20.37 12.5C19.59 11.83 18.33 11.83 17.55 12.5L13.39 16.07C12.61 16.74 11.35 16.74 10.57 16.07L10.23 15.79C9.52 15.17 8.39 15.11 7.59 15.65L2.67 18.95L2.56 19.03C2.19 18.23 2 17.28 2 16.19V7.81C2 4.17 4.17 2 7.81 2H16.19C19.83 2 22 4.17 22 7.81Z" fill="currentColor"/><path d="M9.00109 10.3811C10.3155 10.3811 11.3811 9.31553 11.3811 8.00109C11.3811 6.68666 10.3155 5.62109 9.00109 5.62109C7.68666 5.62109 6.62109 6.68666 6.62109 8.00109C6.62109 9.31553 7.68666 10.3811 9.00109 10.3811Z" fill="currentColor"/><path d="M21.9986 13.8986V16.1886C21.9986 19.8286 19.8286 21.9986 16.1886 21.9986H7.80859C5.25859 21.9986 3.41859 20.9286 2.55859 19.0286L2.66859 18.9486L7.58859 15.6486C8.38859 15.1086 9.51859 15.1686 10.2286 15.7886L10.5686 16.0686C11.3486 16.7386 12.6086 16.7386 13.3886 16.0686L17.5486 12.4986C18.3286 11.8286 19.5886 11.8286 20.3686 12.4986L21.9986 13.8986Z" fill="currentColor"/></svg>{__("This album is empty")}
	</div>
{/if}
<!-- photos -->