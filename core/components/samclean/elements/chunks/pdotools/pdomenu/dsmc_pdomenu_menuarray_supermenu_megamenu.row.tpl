{if $item['children'] ?}
<div class="col-3">
    <div class="dropdown-menu-title">{$item['menutitle'] ?: $item['pagetitle']}</div>
    <ul class="megamenu-list list-unstyled">
        {foreach $item['children'] as $children}
            {set $children['level'] = $item['level'] + 1}
            {$_modx->getChunk('dsmc.pdoMenu.menuArray.supermenu_list_item.row' , ['item' => $children])}
        {/foreach}
    </ul>
</div>
{/if}