<div class="modal-header">
  <h6 class="modal-title">
    <i class="fa fa-users mr10" style="color: #2b53a4;"></i>{__("Create New Group")}
  </h6>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<form class="js_ajax-forms" data-url="modules/create.php?type=group&do=create">
  <div class="modal-body">
    <div class="form-group">
      <label class="form-control-label" for="title">{__("Name Your Group")}</label>
      <input type="text" class="form-control" name="title" id="title">
    </div>
    <div class="form-group">
      <label class="form-control-label" for="username">{__("Group Username")}</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text d-none d-sm-block">{$system['system_url']}/groups/</span>
        </div>
        <input type="text" class="form-control" name="username" id="username">
      </div>
      <span class="form-text">
        {__("Can only contain alphanumeric characters (A–Z, 0–9) and periods ('.')")}
      </span>
    </div>
    <div class="form-group">
      <label class="form-control-label" for="privacy">{__("Select Privacy")}</label>
      <select class="form-control" name="privacy">
        <option value="public">{__("Public Group")}</option>
        <option value="closed">{__("Closed Group")}</option>
        <option value="secret">{__("Secret Group")}</option>
      </select>
    </div>
    <div class="form-group">
      <label class="form-control-label" for="category">{__("Category")}</label>
      <select class="form-control" name="category" id="category">
        <option>{__("Select Category")}</option>
        {foreach $categories as $category}
          {include file='__categories.recursive_options.tpl'}
        {/foreach}
      </select>
    </div>
	<div class="form-group">
      <label class="form-control-label" for="country">{__("Country")}</label>
      <select class="form-control" name="country">
        <option value="none">{__("Select Country")}</option>
        {foreach $countries as $country}
          <option value="{$country['country_id']}">{$country['country_name']}</option>
        {/foreach}
      </select>
    </div>
	<!-- language -->
    <div class="form-group">
      <label class="form-control-label" for="language">{__("Language")}</label>
      <select class="form-control" name="language">
        <option value="none">{__("Select Language")}</option>
        {foreach $languages as $language}
          <option value="{$language['language_id']}">{$language['title']}</option>
        {/foreach}
      </select>
    </div>
    <!-- language -->
    <div class="form-group">
      <label class="form-control-label" for="description">{__("About")}</label>
      <textarea class="form-control" name="description"></textarea>
    </div>
    <!-- custom fields -->
    {if $custom_fields}
      {include file='__custom_fields.tpl' _custom_fields=$custom_fields _registration=true}
    {/if}
    <!-- custom fields -->
	<!-- post -->
    <div class="form-table-row">
      <div>
        <div class="form-label h6 mb5">{__("Create Post")}</div>
        <div class="form-text d-none d-sm-block">
          {__("Create a post after creating the group")}<br>
          <small class="text-muted">{__("Post will be public and only works with public/closed  ")}</small>
        </div>
      </div>
      <div class="text-end">
        <label class="switch" for="create_post">
          <input type="checkbox" name="create_post" id="create_post">
          <span class="slider round"></span>
        </label>
      </div>
    </div>
    <!-- post -->
    <!-- error -->
    <div class="alert alert-danger mb0 mt10 x-hidden"></div>
    <!-- error -->
  </div>
  <div class="modal-footer">
    <button type="submit" class="btn btn-primary">{__("Create")}</button>
  </div>
</form>