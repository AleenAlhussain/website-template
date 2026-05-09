{if $_tpl != "list"}
    <li class="col-md-6 col-lg-4">
        <div class="text-center ele_games_list p-3 mb20">
            <div class="img">
                <a href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">
                    <img alt="{$_game['title']}" src="{$_game['thumbnail']}" class="rounded-circle" />
                </a>
            </div>
            <div class="mt10">
                <a class="h6 mb5 text-body d-inline-block truncate" href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">{$_game['title']}</a>
                {if $_game['played']}
                    <div class="mb15">
                        <svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="16" fill="currentColor" class="align-text-top"><path d="M0 0h24v24H0V0z" fill="none"/><path d="M11.99 2C6.47 2 2 6.48 2 12s4.47 10 9.99 10C17.52 22 22 17.52 22 12S17.52 2 11.99 2zM12 20c-4.42 0-8-3.58-8-8s3.58-8 8-8 8 3.58 8 8-3.58 8-8 8zm-.22-13h-.06c-.4 0-.72.32-.72.72v4.72c0 .35.18.68.49.86l4.15 2.49c.34.2.78.1.98-.24.21-.34.1-.79-.25-.99l-3.87-2.3V7.72c0-.4-.32-.72-.72-.72z"/></svg>&nbsp;{__("Played")} <span class="js_moment" data-time="{$_game['last_played_time']}">{$_game['last_played_time']}</span>
                    </div>
                {/if}
            </div>
            <div class="mt-1">
                <a class="btn btn-mat btn-sm btn-primary" href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">{__("Play")}</a>
            </div>
        </div>
    </li>
{elseif $_tpl == "list"}
    <li class="feeds-item">
        <div class="data-container">
            <a class="data-avatar" href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">
                <img src="{$_game['thumbnail']}" alt="{$_game['title']}">
            </a>
            <div class="data-content">
                <div class="float-right">
                    <a class="btn btn-primary" href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">{__("Play")}</a>
                </div>
                <div>
                    <span class="name">
                        <a href="{$system['system_url']}/games/{$_game['game_id']}/{$_game['title_url']}">{$_game['title']}</a>
                    </span>
                </div>
            </div>
        </div>
    </li>
{/if}