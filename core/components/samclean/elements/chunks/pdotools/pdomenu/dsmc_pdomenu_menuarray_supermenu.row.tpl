{if $item['id'] in ['10','211','9','12','13']}
    {if $item['children'] ?}
        {if $item['menu_type'] != 'super'}
            <li class="nav-item dropdown-toggle-list">
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
            <span class="svg-icon">
                <i class="item-icon icon-{$item['menu_icontv']}"></i>
            </span>
                    {$item['menutitle'] ?: $item['pagetitle']}</a>
                <div class="dropdown-menu megamenu">
                    <div class="row px-4 px-lg-5 py-lg-5 ">
                        <div class="col-10">
                            <div class="row">
                                {foreach $item['children'] as $children}
                                    {set $children['level'] = $item['level'] + 1}
                                    {$_modx->getChunk('dsmc.pdoMenu.menuArray.supermenu_megamenu.row' , ['item' => $children])}
                                {/foreach}
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="row">
                                <div class="col-12">
                                    <ul class="megamenu-list list-unstyled megamenu-list-lg">
                                        {foreach $item['children'] as $children}
                                            {set $children['level'] = $item['level'] + 1}
                                            {$_modx->getChunk('dsmc.pdoMenu.menuArray.supermenu_list_item.row' , ['item' => $children])}
                                        {/foreach}
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
            </li>
        {/if}
    {else}
        <li class="nav-item">
            <a href="{$item['uri']}" class="nav-link">
            <span class="svg-icon">
                <i class="item-icon icon-{$item['menu_icontv']}"></i>
            </span>
                {$item['menutitle'] ?: $item['pagetitle']}</a>
        </li>
    {/if}
{/if}