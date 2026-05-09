<div class="comment-replace">
    <div class="comment-text js_readmore{if $_comment['image'] != ""} comm_img_present{/if}" dir="auto">{$_comment['text']}</div>
    <div class="comment-text-plain x-hidden">{$_comment['text_plain']}</div>
    {if $_comment['image'] != ""}
        <span class="text-link comment-img-box js_lightbox-nodata{if $_comment['text'] == ""} comm_no_text{/if}" data-image="{$system['system_uploads']}/{$_comment['image']}">
            <img alt="" class="img-fluid" src="{$system['system_uploads']}/{$_comment['image']}">
        </span>
    {/if}
    {if $_comment['voice_note'] != ""}
        <audio class="js_audio" id="audio-{$_comment['comment_id']}" controls preload="auto" style="width: 100%; min-width: 200px;">
            <source src="{$system['system_uploads']}/{$_comment['voice_note']}" type="audio/mpeg">
            <source src="{$system['system_uploads']}/{$_comment['voice_note']}" type="audio/mp3">
            {__("Your browser does not support HTML5 audio")}
        </audio>
    {/if}
</div>
