{extends 'template:Layout'}

{block 'main'}
    <section class="main">

        <section class="the_content_section">
            <div class="inner_section clearfix">

                {include 'page.header'}

                {'!mFilter2' | snippet : [
                'tpl' => 'tpl.portfolio.item',
                'element' => 'ms2GalleryResources',
                'typeOfJoin' => 'left',
                'includeThumbs' => 'medium',
                'limit' => 16,
                'includeOriginal' => 1,
                'parents' => 'id' | resource,
                'filters' =>  'tv|tags',
                'sortby' => ['publishedon' => 'DESC'],
                'tplOuter' => 'tpl.mFilter2.outer.dtls',
                'tplFilter.outer.default' => 'tpl.mFilter2.filter.outer.dtls',
                'tplFilter.row.default' => 'tpl.mFilter2.filter.checkbox.dtls',
                'tplPageWrapper' => '@INLINE
                <div class="pagination"><ul class="pagination">{$prev}{$pages}{$next}</ul></div>',
                'tplPagePrev' => '@INLINE <li class="control"><a href="{$href}"><i class="fas fa-angle-left"></i></a></li>',
                'tplPageNext' => '@INLINE <li class="control"><a href="{$href}"><i class="fas fa-angle-right"></i></a></li>'
                'tplPagePrevEmpty' => '@INLINE <li class="disabled"><span><i class="fas fa-angle-left"></i></span></li>',
                'tplPageNextEmpty' => '@INLINE <li class="disabled"><span><i class="fas fa-angle-right"></i></span></li>'
                ]}
            </div>
        </section><!--/the_content_section-->
    </section>
{/block}