{if !empty($visit)}
<div id="tourHeaderMenu"></div>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="headerMenu">
	<tr>
		{assign var=rows value=0}
		{foreach from=$page_manifests item=m}
			{if !empty($m->params.menutitle)}
				{math assign=rows equation="x+1" x=$rows}
				<td width="1%" nowrap="nowrap" style="padding-left:10px;padding-right:10px;border-right:1px solid rgb(100,135,213);" {*[TODO]Sloppy*}{if $page->id==$m->id || ($page->id=='core.page.display'&&$m->id=='core.page.tickets')}id="headerMenuSelected"{/if}><a href="{devblocks_url}c={$m->params.uri}{/devblocks_url}">{$translate->_($m->params.menutitle)|lower}</a></td>
			{/if}
		{/foreach}
		<td width="{math equation="100-x" x=$rows}%" style="height:2em;"></td>
	</tr>
</table>
{/if}