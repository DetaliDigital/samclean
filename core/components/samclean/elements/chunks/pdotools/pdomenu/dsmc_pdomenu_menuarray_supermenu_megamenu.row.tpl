{if $item['children'] ?}
<div class="col-3">
    <div class="dropdown-menu-title">
        {if $item['searchable'] == 0}
        {$item['menutitle'] ?: $item['pagetitle']}
        {else}
        <a class="" href="{$item['uri']}">{$item['menutitle'] ?: $item['pagetitle']}</a>
        {/if}
    </div>
    <ul class="megamenu-list list-unstyled">
        {foreach $item['children'] as $children}
            {set $children['level'] = $item['level'] + 1}
            {$_modx->getChunk('dsmc.pdoMenu.menuArray.supermenu_list_item.row' , ['item' => $children])}
        {/foreach}
    </ul>
</div>
{/if}