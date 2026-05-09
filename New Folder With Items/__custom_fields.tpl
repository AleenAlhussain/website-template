{if $_registration}
	{foreach $_custom_fields as $custom_field}
		<label class="ele_field">
			{if $custom_field['type'] == "textbox"}
                <input name="fld_{$custom_field['field_id']}" type="text" placeholder=" " {if $custom_field['mandatory'] && !$_search}required{/if}>
            {elseif $custom_field['type'] == "textarea"}
                <textarea name="fld_{$custom_field['field_id']}" placeholder=" " {if $custom_field['mandatory'] && !$_search}required{/if}></textarea>
            {elseif $custom_field['type'] == "selectbox"}
                <select name="fld_{$custom_field['field_id']}" {if $custom_field['mandatory'] && !$_search}required{/if}>
					{if $_search}
                        <option selected value="any">{__("Any")}</option>
                    {else}
                        <option selected value="none">{__("Select")} {__($custom_field['label'])}</option>
                    {/if}
                    {foreach $custom_field['options'] as $id => $value}
                        <option value="{$id}">{__($value|trim)}</option>
                    {/foreach}
                </select>
            {elseif $custom_field['type'] == "multipleselectbox"}
                <select name="fld_{$custom_field['field_id']}[]" multiple {if $custom_field['mandatory'] && !$_search}required{/if}>
                    {foreach $custom_field['options'] as $id => $value}
                        <option value="{$id}">{__($value|trim)}</option>
                    {/foreach}
                </select>
            {/if}
			<span>{__($custom_field['label'])} {if $custom_field['mandatory'] && !$_search}*{/if}</span>
		</label>
		{if $custom_field['description'] && !$_search}
			<span class="help-block">{__($custom_field['description'])}</span>
		{/if}
    {/foreach}
{else}
	{foreach $_custom_fields as $custom_field}
		<label class="ele_field">
			{if $custom_field['type'] == "textbox"}
                <input type="text" name="fld_{$custom_field['field_id']}" placeholder=" " value="{$custom_field['value']}" {if $custom_field['mandatory']}required{/if}>
            {elseif $custom_field['type'] == "textarea"}
                <textarea name="fld_{$custom_field['field_id']}" placeholder=" " {if $custom_field['mandatory']}required{/if}>{$custom_field['value']}</textarea>
            {elseif $custom_field['type'] == "selectbox"}
                <select name="fld_{$custom_field['field_id']}" {if $custom_field['mandatory']}required{/if}>
                    <option {if $custom_field['value'] == ""}selected{/if} value="none">{__("Select")} {__($custom_field['label'])}</option>
                    {foreach $custom_field['options'] as $id => $value}
                        <option {if $custom_field['value'] == $value}selected{/if} value="{$id}">{__($value|trim)}</option>
                    {/foreach}
                </select>
            {elseif $custom_field['type'] == "multipleselectbox"}
                <select name="fld_{$custom_field['field_id']}[]" multiple {if $custom_field['mandatory']}required{/if}>
                    {foreach $custom_field['options'] as $id => $value}
                        <option {if isset($custom_field['value']) && in_array($id, $custom_field['value'])}selected{/if} value="{$id}">{__($value|trim)}</option>
                    {/foreach}
                </select>
            {/if}
			<span>{__($custom_field['label'])} {if $custom_field['mandatory']}*{/if}</span>
		</label>
		{if $custom_field['description']}
			<span class="help-block">{__($custom_field['description'])}</span>
		{/if}
	{/foreach}
{/if}