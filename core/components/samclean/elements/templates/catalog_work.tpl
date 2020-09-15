{extends 'template:Layout'}

{block 'main'}
    <section class="main">

        <section class="the_content_section">
            <div class="inner_section clearfix">

                {include 'page.header'}

                [[-{include 'portfolio_tags'}]]

                {'!mFilter2' | snippet : [
                'tpl' => 'tpl.portfolio.item',
                'element' => 'ms2GalleryResources',
                'typeOfJoin' => 'left',
                'includeThumbs' => 'medium'
                'includeOriginal' => 1,
                'parents' => $_modx->resource.id,
                'filters' =>  'tv|tags',
                'sortby' => ['publishedon' => 'DESC'],
                'tplOuter' => 'tpl.mFilter2.outer.dtls',
                'tplFilter.outer.default' => 'tpl.mFilter2.filter.outer.dtls'
                'tplFilter.row.default' => 'tpl.mFilter2.filter.checkbox.dtls'
                'ajaxMode' => 'scroll',
                ]}
            </div>
        </section><!--/the_content_section-->
    </section>
{/block}