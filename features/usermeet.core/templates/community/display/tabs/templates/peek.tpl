<h1>Edit Template</h1>

<form action="{devblocks_url}{/devblocks_url}" method="POST" id="formPortalTemplatePeek" name="formPortalTemplatePeek" onsubmit="return false;">
<input type="hidden" name="c" value="community">
<input type="hidden" name="a" value="saveTemplatePeek">
<input type="hidden" name="id" value="{$template->id}">
<input type="hidden" name="view_id" value="{$view_id}">
<input type="hidden" name="do_delete" value="0">

<b>{$template->path|escape}:</b><br>
<textarea name="content" wrap="off" style="height:300px;width:98%;">{$template->content|escape}</textarea><br>
<br>

{if $active_worker->is_superuser}
	<button type="button" onclick="genericPanel.dialog('close');genericAjaxPost('formPortalTemplatePeek', 'view{$view_id}', '');"><span class="cerb-sprite sprite-check"></span> {$translate->_('common.save_changes')}</button>
	{if !$disabled}
		{if $active_worker->is_superuser}<button type="button" onclick="if(confirm('Are you sure you want to revert this template to the default?')){literal}{{/literal}this.form.do_delete.value='1';genericPanel.dialog('close');genericAjaxPost('formPortalTemplatePeek', 'view{$view_id}', '');{literal}}{/literal}"><span class="cerb-sprite sprite-refresh"></span> {$translate->_('Revert')|capitalize}</button>{/if}
	{/if}
{else}
	<div class="error">{$translate->_('error.core.no_acl.edit')}</div>	
{/if}
<button type="button" onclick="genericPanel.dialog('close');"><span class="cerb-sprite sprite-delete"></span> {$translate->_('common.cancel')|capitalize}</button>

<br>
</form>
