<div class="dropdown-menu-banner d-flex align-items-end">
{foreach $items as $item}
    <a href="{$item.url | url}">
        <img class="img-fluid d-block" src="{$item.image}">
    </a>
{/foreach}
</div>