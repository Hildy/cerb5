<form action="{devblocks_url}{/devblocks_url}" method="post">
<input type="hidden" name="c" value="home">
<input type="hidden" name="a" value="doEditWorkspace">
<input type="hidden" name="workspace" value="{$workspace}">
<h1 style="color:rgb(0,150,0);">{$workspace}</h1>
<br>

<b>{'home.workspaces.rename'|devblocks_translate|capitalize}:</b><br>
<input type="text" name="rename_workspace" value="" size="35" style="width:100%;"><br>
<br>

<table width="100%">
	<tr>
		<td align="center"><b>{$translate->_('common.order')|capitalize}</b></td>
		<td><b>{'common.worklist'|devblocks_translate|capitalize}</b></td>
		<td align="center"><b>{$translate->_('common.remove')|capitalize}</b></td>
	</tr>
	
	{foreach from=$worklists item=worklist name=worklists key=worklist_id}
	{assign var=worklist_view value=$worklist->list_view}
	<tr>
		<td align="center">
			<input type="hidden" name="ids[]" value="{$worklist->id}">
			<input type="text" name="pos[]" size="2" maxlength="2" value="{counter name=worklistPos}">
		</td>
		<td>
			<input type="text" name="names[]" value="{$worklist_view->title|escape}" style="width:100%;">
		</td>
		<td align="center">
			<input type="checkbox" name="deletes[]" value="{$worklist->id}">
		</td>
	</tr>
	{/foreach}
</table>

<button type="submit"><span class="cerb-sprite sprite-check"></span> {$translate->_('common.save_changes')}</button>
<button type="button" onclick="genericPanel.dialog('close');"><span class="cerb-sprite sprite-delete"></span> {$translate->_('common.cancel')|capitalize}</button>
</form>
