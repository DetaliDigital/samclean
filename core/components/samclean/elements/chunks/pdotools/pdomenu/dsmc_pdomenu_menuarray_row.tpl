{if $item['children'] ?}
<div class="col-lg-3 col-md-6 pb-4">
    <div class="collapse">
        <a href="#" class="footer-title block-toggler">{$item['menutitle'] ?: $item['pagetitle']}
        <span class="block-toggler-icon"></span>
        </a>
        <ul class="nav">
        {foreach $item['children'] as $children}
            {set $children['level'] = $item['level'] + 1}
            {$_modx->getChunk('dsmc.pdoMenu.menuArray.submenu_item.row' , ['item' => $children])}
        {/foreach}
        </ul>
    </div>
</div>
{/if}