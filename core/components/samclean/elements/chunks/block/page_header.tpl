<div class="breadcrumbs_block">
    <div class="inner_section" itemprop="breadcrumb">

        {'pdoCrumbs' | snippet : [
        'tplWrapper' => '@INLINE <ul class="breadcrumbs">{$output}</ul>',
        'tpl' => '@INLINE <li><a href="{$link}"><span>{$menutitle}</span></a></li>'
        'tplCurrent' => '@INLINE <li><span>{$menutitle}</span></li>'
        'showHome' => 1,
        'where' => [
        'searchable' => 1
        ]
        ]}

    </div>
</div><!--/breadcrumbs_block-->


{if $_modx->resource.longtitle == ''}
    <h1>{$_modx->resource.pagetitle}</h1>
{else}
    <h1>{$_modx->resource.longtitle}</h1>
{/if}
