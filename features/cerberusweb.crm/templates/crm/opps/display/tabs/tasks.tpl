{if $active_worker->hasPriv('core.tasks.actions.create')}
<form action="{devblocks_url}{/devblocks_url}" style="margin-bottom:5px;">
	<button type="button" onclick="genericAjaxPanel('c=tasks&a=showTaskPeek&id=0&view_id={$view->id}&link_namespace=cerberusweb.tasks.opp&link_object_id={$opp->id}',null,false,'500');"><span class="cerb-sprite sprite-add"></span> {'tasks.add'|devblocks_translate}</button>
</form>
{/if}

<div id="viewopp_tasks">{$view->render()}</div>
