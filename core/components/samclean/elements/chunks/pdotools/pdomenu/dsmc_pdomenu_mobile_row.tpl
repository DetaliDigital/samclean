{if $item['id'] in ['10','211','9','12','13']}
    <li class="nav-item">
        <a class="nav-link d-flex align-items-center" href="{$item['uri']}">
             <span class="svg-menu d-flex mr-3">
                 <i class="item-icon icon-{$item['menu_icontv']}"></i>
            </span>
            <span class="d-block">
            {$item['menutitle'] ?: $item['pagetitle']}
            </span>
        </a>
    </li>
{/if}