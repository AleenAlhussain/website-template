<div class="modal-header">
  <h6 class="modal-title">
    <i class="fa fa-share mr5"></i>{__("Share")}
  </h6>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<form class="js_ajax-forms" data-url="posts/share.php?do=publish&post_id={$post['post_id']}">
  <div class="modal-body">
	{if $photo}
      <div class="h6 text-center">
        {__("Photo link")}
      </div>

        <div class="input-group rounded overflow-hidden">
          <input type="text" disabled class="form-control rounded-0" value="{$system['system_url']}/photos/{$photo['photo_id']}">
          <button type="button" class="btn btn-secondary js_clipboard rounded-0" data-clipboard-text="{$system['system_url']}/photos/{$photo['photo_id']}" data-bs-toggle="tooltip" title='{__("Copy")}'>
            <i class="fas fa-copy"></i>
          </button>
        </div>

      {if $system['social_share_enabled']}
        <div class="post-social-share mt-4">
          {include file='__social_share.tpl' _link="{$system['system_url']}/photos/{$photo['photo_id']}"}
        </div>
      {/if}

      <div class="h6 text-center">
        {__("Post link")}
      </div>
    {/if}
	
      <div class="input-group rounded overflow-hidden">
        <input type="text" disabled class="form-control rounded-0" value="{$post['share_link']}">
        <div class="input-group-append">
          <button type="button" class="btn btn-secondary js_clipboard rounded-0" data-clipboard-text="{$post['share_link']}" data-toggle="tooltip" data-placement="top" title='{__("Copy")}'>
            <i class="fas fa-copy"></i>
          </button>
        </div>
      </div>

    {if $system['social_share_enabled']}
      <div class="post-social-share mt-4">
        {include file='__social_share.tpl' _link="{$post['share_link']}"}
      </div>
    {/if}

    <div class="h5 text-center">
      {__("Share to")}
    </div>

    <!-- share to options -->
    <div class="mb20 text-center">
      <!-- timeline -->
      <input class="x-hidden input-label" type="radio" name="share_to" id="share_to_timeline" value="timeline" checked="checked" />
      <label class="button-label small" for="share_to_timeline">
        <div class="icon">
          {include file='__svg_icons.tpl' icon="newsfeed" width="20px" height="20px"}
        </div>
        <div class="title">{__("Timeline")}</div>
      </label>
      <!-- timeline -->
      <!-- page -->
      {if $system['pages_enabled'] && $pages}
        <input class="x-hidden input-label" type="radio" name="share_to" id="share_to_page" value="page" />
        <label class="button-label small" for="share_to_page">
          <div class="icon">
            {include file='__svg_icons.tpl' icon="pages" width="20px" height="20px"}
          </div>
          <div class="title">{__("Page")}</div>
        </label>
      {/if}
      <!-- page -->
      <!-- group -->
      {if $system['groups_enabled'] && $groups}
        <input class="x-hidden input-label" type="radio" name="share_to" id="share_to_group" value="group" />
        <label class="button-label small" for="share_to_group">
          <div class="icon">
            {include file='__svg_icons.tpl' icon="groups" width="20px" height="20px"}
          </div>
          <div class="title">{__("Group")}</div>
        </label>
      {/if}
      <!-- group -->
      <!-- event -->
      {if $system['events_enabled'] && $events}
        <input class="x-hidden input-label" type="radio" name="share_to" id="share_to_event" value="event" />
        <label class="button-label small" for="share_to_event">
          <div class="icon">
            {include file='__svg_icons.tpl' icon="events" width="20px" height="20px"}
          </div>
          <div class="title">{__("Event")}</div>
        </label>
      {/if}
      <!-- event -->
    </div>
    <!-- share to options -->

    <div id="js_share-to-page" class="x-hidden">
      <div class="form-group">
        <label class="form-control-label">{__("Select Page")}</label>
        <select name="page" class="form-control">
          {foreach $pages as $page}
            <option value="{$page['page_id']}">{$page['page_title']}</option>
          {/foreach}
        </select>
      </div>
    </div>

    <div id="js_share-to-group" class="x-hidden">
      <div class="form-group">
        <label class="form-control-label">{__("Select Group")}</label>
        <select name="group" class="form-control">
          {foreach $groups as $group}
            <option value="{$group['group_id']}">{$group['group_title']}</option>
          {/foreach}
        </select>
      </div>
    </div>

    <div id="js_share-to-event" class="x-hidden">
      <div class="form-group">
        <label class="form-control-label">{__("Select Event")}</label>
        <select name="event" class="form-control">
          {foreach $events as $event}
            <option value="{$event['event_id']}">{$event['event_title']}</option>
          {/foreach}
        </select>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="form-group">
          <label class="form-control-label">{__("Message")}</label>
          <textarea name="message" rows="3" dir="auto" class="form-control"></textarea>
        </div>
      </div>
    </div>

    <!-- error -->
    <div class="alert alert-danger mb0 x-hidden"></div>
    <!-- error -->
  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary">{__("Share")}</button>
  </div>
</form>

<script>
  /* share post */
  $('input[type=radio][name=share_to]').on('change', function() {
    switch ($(this).val()) {
      case 'timeline':
        $('#js_share-to-page').hide();
        $('#js_share-to-group').hide();
        $('#js_share-to-event').hide();
        break;
      case 'page':
        $('#js_share-to-page').fadeIn();
        $('#js_share-to-group').hide();
        $('#js_share-to-event').hide();
        break;
      case 'group':
        $('#js_share-to-page').hide();
        $('#js_share-to-group').fadeIn();
        $('#js_share-to-event').hide();
        break;
      case 'event':
        $('#js_share-to-page').hide();
        $('#js_share-to-group').hide();
        $('#js_share-to-event').fadeIn();
        break;
    }
  });
</script>