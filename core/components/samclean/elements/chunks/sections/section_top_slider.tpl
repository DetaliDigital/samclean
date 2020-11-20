{if $_modx->resource.section_top_slider && $_modx->resource.section_hero_title == '' && $_modx->resource.section_hero_price == ''}
{set $rows = json_decode($_modx->resource.section_top_slider, true)}

<div class="content_slider">

    {foreach $rows as $row}

    <div class="content_slider_item">
        <div class="img"><img src="{$row.image}" alt="" /></div>

        <div class="caption">
            <p class="title">{$row.title}</p>

            {$row.intro}

        </div>
    </div>

    {/foreach}

</div><!--/content_slider-->
{/if}