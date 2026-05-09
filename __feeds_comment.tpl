<li>
    <div class="comment {if $_is_reply}reply{/if}" data-id="{$_comment['comment_id']}" id="comment_{$_comment['comment_id']}">
        <!-- comment avatar -->
        <div class="comment-avatar">
            <a class="comment-avatar-picture" href="{$_comment['author_url']}" style="background-image:url({$_comment['author_picture']});"></a>
        </div>
        <!-- comment avatar -->

        <!-- comment body -->
        <div class="comment-data">
            <!-- comment menu -->
            {if $user->_logged_in}
                <div class="comment-btn dropdown">
					<svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24" class="dropdown-toggle-icon" data-toggle="dropdown" data-display="static" fill="currentColor"><path d="M24 24H0V0h24v24z" fill="none" opacity=".87"/><path d="M6 10c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm12 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm-6 0c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/></svg>
                    <ul class="dropdown-menu dropdown-menu-right ele_create_menu">
                        {if !$_comment['edit_comment'] && !$_comment['delete_comment'] }
                            <li>
								<div class="dropdown-item pointer" data-toggle="modal" data-url="data/report.php?do=create&handle=comment&id={$_comment['comment_id']}">{__("Report")}</div>
							</li>
                        {elseif !$_comment['edit_comment'] && $_comment['delete_comment']}
                            <li><div class="dropdown-item pointer js_delete-comment">{__("Delete Comment")}</div></li>
                        {else}
                            <li><div class="dropdown-item pointer js_edit-comment">{__("Edit Comment")}</div></li>
                            <li><div class="dropdown-item pointer js_delete-comment">{__("Delete Comment")}</div></li>
                        {/if}
                    </ul>
                </div>
            {/if}
            <!-- comment menu -->

            <!-- comment author & text  -->
            <div class="comment-inner-wrapper js_notifier-flasher">
                <div class="comment-inner">
                    <!-- author -->
                    <div class="comment-author">
                        <span class="js_user-popover" data-type="{$_comment['user_type']}" data-uid="{$_comment['user_id']}">
							<a href="{$_comment['author_url']}">{$_comment['author_name']}</a>
                        </span>
                        {if $_comment['author_verified']}
							<span class="verified-color" data-toggle="tooltip" data-placement="top" title='{__("Verified User")}'><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" enable-background="new 0 0 24 24" viewBox="0 0 24 24"><path fill="currentColor" d="M23,12l-2.44-2.79l0.34-3.69l-3.61-0.82L15.4,1.5L12,2.96L8.6,1.5L6.71,4.69L3.1,5.5L3.44,9.2L1,12l2.44,2.79l-0.34,3.7 l3.61,0.82L8.6,22.5l3.4-1.47l3.4,1.46l1.89-3.19l3.61-0.82l-0.34-3.69L23,12z M9.38,16.01L7,13.61c-0.39-0.39-0.39-1.02,0-1.41 l0.07-0.07c0.39-0.39,1.03-0.39,1.42,0l1.61,1.62l5.15-5.16c0.39-0.39,1.03-0.39,1.42,0l0.07,0.07c0.39,0.39,0.39,1.02,0,1.41 l-5.92,5.94C10.41,16.4,9.78,16.4,9.38,16.01z"></path></svg></span>
                        {/if}
						{if $_comment['user_subscribed']}
							<span class="pro-badge" data-toggle="tooltip" data-placement="top" title="{__($_comment['package_name'])} {__('Member')}"><svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path d="M0 0h24v24H0z" fill="none"></path><path fill="currentColor" d="M12 2.02c-5.51 0-9.98 4.47-9.98 9.98s4.47 9.98 9.98 9.98 9.98-4.47 9.98-9.98S17.51 2.02 12 2.02zm-.52 15.86v-4.14H8.82c-.37 0-.62-.4-.44-.73l3.68-7.17c.23-.47.94-.3.94.23v4.19h2.54c.37 0 .61.39.45.72l-3.56 7.12c-.24.48-.95.31-.95-.22z"></path></svg> PRO</span>
						{/if}
                    </div>
                    <!-- author -->

                    <!-- text -->
                    {include file='__feeds_comment.text.tpl'}
                    <!-- text -->
                </div>
            </div>
            <!-- comment author & text  -->

            <!-- comment actions & time  -->
            <ul class="valign comment-actions">
                <!-- reactions -->
                <li>
                    <div class="pointer unselectable reactions-wrapper {if $_comment['i_react']}js_unreact-comment{/if}" data-reaction="{$_comment['i_reaction']}">
                        <!-- reaction-btn -->
                        <div class="reaction-btn">
                            {if !$_comment['i_react']}
                                <div class="reaction-btn-icon d-none">
                                    <i class="fa fa-smile fa-fw"></i>
                                </div>
                                <span class="reaction-btn-name text-link">{__("React")}</span>
                            {else}
                                <div class="reaction-btn-icon d-none">
                                    <div class="inline-emoji no_animation">
                                        {include file='__reaction_emojis.tpl' _reaction=$_comment['i_reaction']}
                                    </div>
                                </div>
								<span class="reaction-btn-name text-link" style="color: {$system['reactions'][$_comment['i_reaction']]['color']};">{__($system['reactions'][$_comment['i_reaction']]['title'])}</span>
                            {/if}
                        </div>
                        <!-- reaction-btn -->

                        <!-- reactions-container -->
                        <div class="reactions-container">
                            {foreach $system['reactions_enabled'] as $reaction}
								<div class="reactions_item reaction reaction-{$reaction@iteration} js_react-comment" data-reaction="{$reaction['reaction']}" data-reaction-color="{$reaction['color']}" data-title="{__($reaction['title'])}">
                                    {include file='__reaction_emojis.tpl' _reaction=$reaction['reaction']}
                                </div>
                            {/foreach}
                        </div>
                        <!-- reactions-container -->
                    </div>
                </li>
                <!-- reactions -->

                <!-- comment -->
                <li>
                    <span class="text-link js_reply {if $_comment['comments_disabled']}x-hidden{/if}" data-username="{if $user->_data['user_name'] != $_comment['author_user_name']}{$_comment['author_user_name']}{/if}">
                        {__("Reply")}
                    </span>
                </li>
                <!-- comment -->

                <!-- time  -->
                <li>
                    <small class="text-muted js_moment" data-time="{$_comment['time']}">{$_comment['time']}</small>
                </li>
                <!-- time  -->

                <!-- reactions stats -->
                {if $_comment['reactions_total_count'] > 0}
                    <li class="">
                        <div data-toggle="modal" data-url="posts/who_reacts.php?comment_id={$_comment['comment_id']}">
                            <div class="reactions-stats">
                                {foreach $_comment['reactions'] as $reaction_type => $reaction_count}
                                    {if $reaction_count > 0}
                                        <div class="reactions-stats-item">
                                            <div class="inline-emoji no_animation">
                                                {include file='__reaction_emojis.tpl' _reaction=$reaction_type}
                                            </div>
                                        </div>
                                    {/if}
                                {/foreach}
                                <!-- reactions count -->
                                <span>
                                    {$_comment['reactions_total_count_formatted']}
                                </span>
                                <!-- reactions count -->
                            </div>
                        </div>
                    </li>
                {/if}
                <!-- reactions stats -->
            </ul>
            <!-- comment actions & time  -->

            <!-- comment replies  -->
            {if !$_is_reply}
                {if !$standalone && $_comment['replies'] > 0}
                    <div class="view-more-replies js_replies-toggle">
                        <span class="text-link">
                            <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M7 7.56c0-.94-1.14-1.42-1.81-.75L.71 11.29c-.39.39-.39 1.02 0 1.41l4.48 4.48c.67.68 1.81.2 1.81-.74 0-.28-.11-.55-.31-.75L3 12l3.69-3.69c.2-.2.31-.47.31-.75zM13 9V7.41c0-.89-1.08-1.34-1.71-.71L6.7 11.29c-.39.39-.39 1.02 0 1.41l4.59 4.59c.63.63 1.71.18 1.71-.71V14.9c5 0 8.5 1.6 11 5.1-1-5-4-10-11-11z"></path></svg> {$_comment['replies']} {__("Replies")}
                        </span>
                    </div>
                {/if}
                <div class="comment-replies {if !$standalone}x-hidden{/if}">
                    <!-- previous replies -->
                    {if $_comment['replies'] >= $system['min_results']}
                        <div class="pb10 text-center js_see-more" data-get="comment_replies" data-id="{$_comment['comment_id']}" data-remove="true">
                            <span class="text-link">
                                <i class="fa fa-comment"></i>
                                {__("View previous replies")}
                            </span>
                            <div class="loader loader_small x-hidden"></div>
                        </div>
                    {/if}
                    <!-- previous replies -->

                    <!-- replies -->
                    <ul class="js_replies">
                        {if $_comment['replies'] > 0}
                            {foreach $_comment['comment_replies'] as $reply}
                            {include file='__feeds_comment.tpl' _comment=$reply _is_reply=true}
                            {/foreach}
                        {/if}
                    </ul>
                    <!-- replies -->

                    <!-- post a reply -->
                    {if $user->_logged_in}
                        <div class="x-hidden js_reply-form">
                            <div class="x-form comment-form">
                                <textarea dir="auto" class="js_autosize js_mentions js_post-reply" rows="1" placeholder='{__("Write a Reply")}'></textarea>
                                <ul class="valign x-form-tools">
                                    {if $system['comments_photos_enabled']}
                                        <li class="x-form-tools-attach">
											<svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="js_x-uploader" data-handle="comment"><path d="M9 22H15C20 22 22 20 22 15V9C22 4 20 2 15 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M9 10C10.1046 10 11 9.10457 11 8C11 6.89543 10.1046 6 9 6C7.89543 6 7 6.89543 7 8C7 9.10457 7.89543 10 9 10Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M2.67004 18.9501L7.60004 15.6401C8.39004 15.1101 9.53004 15.1701 10.24 15.7801L10.57 16.0701C11.35 16.7401 12.61 16.7401 13.39 16.0701L17.55 12.5001C18.33 11.8301 19.59 11.8301 20.37 12.5001L22 13.9001" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>
                                        </li>
                                    {/if}
                                    {if $system['voice_notes_comments_enabled']}
                                        <li class="x-form-tools-voice js_comment-voice-notes-toggle">
                                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M12 15.5C14.21 15.5 16 13.71 16 11.5V6C16 3.79 14.21 2 12 2C9.79 2 8 3.79 8 6V11.5C8 13.71 9.79 15.5 12 15.5Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M4.3501 9.6499V11.3499C4.3501 15.5699 7.7801 18.9999 12.0001 18.9999C16.2201 18.9999 19.6501 15.5699 19.6501 11.3499V9.6499" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M10.6101 6.43012C11.5101 6.10012 12.4901 6.10012 13.3901 6.43012" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M11.2 8.55007C11.73 8.41007 12.28 8.41007 12.81 8.55007" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M12 19V22" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/></svg>
                                        </li>
                                    {/if}
                                    <li class="x-form-tools-emoji js_emoji-menu-toggle">
                                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M9 22H15C20 22 22 20 22 15V9C22 4 20 2 15 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/><path d="M15.5 9.75C16.3284 9.75 17 9.07843 17 8.25C17 7.42157 16.3284 6.75 15.5 6.75C14.6716 6.75 14 7.42157 14 8.25C14 9.07843 14.6716 9.75 15.5 9.75Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M8.5 9.75C9.32843 9.75 10 9.07843 10 8.25C10 7.42157 9.32843 6.75 8.5 6.75C7.67157 6.75 7 7.42157 7 8.25C7 9.07843 7.67157 9.75 8.5 9.75Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/><path d="M8.4 13.3H15.6C16.1 13.3 16.5 13.7 16.5 14.2C16.5 16.69 14.49 18.7 12 18.7C9.51 18.7 7.5 16.69 7.5 14.2C7.5 13.7 7.9 13.3 8.4 13.3Z" stroke="currentColor" stroke-width="2" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"/></svg>
                                    </li>
									<li class="x-form-tools-post js_post-reply d-inline-block d-lg-none">
                                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M18.0693 8.50867L9.50929 4.22867C3.75929 1.34867 1.39929 3.70867 4.27929 9.45867L5.14929 11.1987C5.39929 11.7087 5.39929 12.2987 5.14929 12.8087L4.27929 14.5387C1.39929 20.2887 3.74929 22.6487 9.50929 19.7687L18.0693 15.4887C21.9093 13.5687 21.9093 10.4287 18.0693 8.50867ZM14.8393 12.7487H9.43929C9.02929 12.7487 8.68929 12.4087 8.68929 11.9987C8.68929 11.5887 9.02929 11.2487 9.43929 11.2487H14.8393C15.2493 11.2487 15.5893 11.5887 15.5893 11.9987C15.5893 12.4087 15.2493 12.7487 14.8393 12.7487Z" fill="currentColor"/></svg>
                                    </li>
                                </ul>
                            </div>
                            <div class="comment-voice-notes">
                                <div class="voice-recording-wrapper" data-handle="comment">
                                    <!-- processing message -->
                                    <div class="x-hidden js_voice-processing-message">
                                        <svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"></path><path fill="#ef4c5d" d="M8 18c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm4 4c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1s-1 .45-1 1v18c0 .55.45 1 1 1zm-8-8c.55 0 1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1v2c0 .55.45 1 1 1zm12 4c.55 0 1-.45 1-1V7c0-.55-.45-1-1-1s-1 .45-1 1v10c0 .55.45 1 1 1zm3-7v2c0 .55.45 1 1 1s1-.45 1-1v-2c0-.55-.45-1-1-1s-1 .45-1 1z"></path></svg> {__("Processing")} {__("Voice Notes")}<span class="loading-dots"></span>
                                    </div>
                                    <!-- processing message -->

                                    <!-- success message -->
                                    <div class="x-hidden js_voice-success-message">
                                        <svg xmlns="http://www.w3.org/2000/svg" height="22" viewBox="0 0 24 24" width="22"><path d="M0 0h24v24H0V0z" fill="none"/><path fill="#1bc3bb" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zM9.29 16.29L5.7 12.7c-.39-.39-.39-1.02 0-1.41.39-.39 1.02-.39 1.41 0L10 14.17l6.88-6.88c.39-.39 1.02-.39 1.41 0 .39.39.39 1.02 0 1.41l-7.59 7.59c-.38.39-1.02.39-1.41 0z"/></svg> {__("Voice note recorded successfully")}
                                        <div class="float-right">
											<button type="button" class="btn btn-mat btn-voice-clear js_voice-remove">{__("Clear")}</button>
                                        </div>
                                    </div>
                                    <!-- success message -->

                                    <!-- start recording -->
                                    <div class="btn btn-mat btn-voice-start js_voice-start">
                                        <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M12 14c1.66 0 3-1.34 3-3V5c0-1.66-1.34-3-3-3S9 3.34 9 5v6c0 1.66 1.34 3 3 3zm5.91-3c-.49 0-.9.36-.98.85C16.52 14.2 14.47 16 12 16s-4.52-1.8-4.93-4.15c-.08-.49-.49-.85-.98-.85-.61 0-1.09.54-1 1.14.49 3 2.89 5.35 5.91 5.78V20c0 .55.45 1 1 1s1-.45 1-1v-2.08c3.02-.43 5.42-2.78 5.91-5.78.1-.6-.39-1.14-1-1.14z"></path></svg> {__("Record")} {__("Voice Notes")}
                                    </div>
                                    <!-- start recording -->

                                    <!-- stop recording -->
                                    <div class="btn btn-mat btn-voice-stop js_voice-stop" style="display: none">
                                        <svg xmlns="http://www.w3.org/2000/svg" height="24" viewBox="0 0 24 24" width="24"><path fill="currentColor" d="M8 6h8c1.1 0 2 .9 2 2v8c0 1.1-.9 2-2 2H8c-1.1 0-2-.9-2-2V8c0-1.1.9-2 2-2z"></path></svg> {__("Recording")} <span class="js_voice-timer">00:00</span>
                                    </div>
                                    <!-- stop recording -->
                                </div>
                            </div>
                            <div class="comment-attachments attachments clearfix x-hidden">
                                <ul>
                                    <li class="loading">
                                        <div class="progress x-progress"><div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div></div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    {/if}
                    <!-- post a reply -->
                </div>
            {/if}
            <!-- comment replies  -->
        </div>
        <!-- comment body -->
    </div>
</li>