<div class="modal-header">
  <h6 class="modal-title">
    {include file='__svg_icons.tpl' icon="share" class="main-icon mr10" width="24px" height="24px"}
    {__("Share")}
  </h6>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
<div class="modal-body">

    <div class="input-group rounded overflow-hidden">
      <input type="text" disabled class="form-control rounded-0" value="{$share_link}">
      <button type="button" class="btn btn-secondary js_clipboard rounded-0" data-clipboard-text="{$share_link}" data-bs-toggle="tooltip" title='{__("Copy")}'>
        <i class="fas fa-copy"></i>
      </button>
    </div>

  {if $system['social_share_enabled']}
    <div class="post-social-share border-bottom-0 p-0 m-0 mt-4">
      {include file='__social_share.tpl' _link=$share_link}
    </div>
  {/if}

</div>