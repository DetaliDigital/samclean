{if $item['children'] ?}
{else}
<li class="megamenu-list-item">
            <a class="megamenu-list-link" href="{$item['uri']}">{$item['menutitle'] ?: $item['pagetitle']}</a>
            {if $item['description'] ?}
                <span class="text-intro">{$item['description']}</span>
            {/if}
</li>
{/if}