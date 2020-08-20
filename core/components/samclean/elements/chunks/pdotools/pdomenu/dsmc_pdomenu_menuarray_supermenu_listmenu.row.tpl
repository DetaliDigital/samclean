{if $item['children'] ?}
    <li class="nav-item">
        <a href="{$item['uri']}" class="nav-link">
            <span class="svg-icon">
                <i class="item-icon icon-{$item['menu_icontv']}"></i>
            </span>
            {$item['menutitle'] ?: $item['pagetitle']}</a>
        <ul class="dropdown-menu list-menu">
            {foreach $item['children'] as $children}
                {set $children['level'] = $item['level'] + 1}
                {$_modx->getChunk('dsmc.pdoMenu.menuArray.supermenu_listmenu.row' , ['item' => $children])}
            {/foreach}
        </ul>
    </li>
{else}
    <li class="nav-item">
        <a href="{$item['uri']}" class="nav-link">
            {$item['menutitle'] ?: $item['pagetitle']}</a>
    </li>
{/if}