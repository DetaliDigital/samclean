{extends 'template:Layout'}

{block 'main'}

    <section class="main">

        <section class="the_content_section">
            <div class="inner_section clearfix">


                {include 'page.header'}

                <div class="the_content_section_left">

                    {if 'content' | resource ?}
                    {'introtext' | resource}
                    {/if}

                    {'!ms2Gallery' | snippet : [
                    'tpl' => 'tpl.gallery.row.do'
                    'tags' => 'До'
                    'getTags' => 1
                    ]}

                    {'!ms2Gallery' | snippet : [
                    'tpl' => 'tpl.gallery.row.posle'
                    'tags' => 'После'
                    'getTags' => 1
                    ]}

                    {'!ms2Gallery' | snippet : [
                    'tpl' => 'tpl.gallery.row.no'
                    'getTags' => 1
                    ]}

                    {'content' | resource ?: 'introtext' | resource}

                    {include 'section_horizontal_form_block'}

                    {if $_modx->resource.section_bottom_id ?}
                        <div class="content_portfolio">
                            <h2>Портфолио</h2>

                            <div class="content_portfolio_inner">
                                <div class="content_portfolio_slider">

                                    {'!pdoResources' | snippet : [
                                    'parents' => 0,
                                    'resources' => $_modx->resource.section_bottom_id,
                                    'tpl' => 'tpl.portfolio.item.inside'
                                    'includeTVs' => 'cart_image',
                                    'tvPrefix' => ''
                                    ]
                                    }
                                </div>
                            </div>
                        </div><!--/content_portfolio-->
                    {/if}
                </div><!--/the_content_section_left-->

                <div class="the_content_section_right">

                    <div class="banners">
                        {'!BannerY' | snippet : [
                        'position' => 1,
                        'tpl' => 'byAd_right_bar'
                        ]}
                    </div>
                </div><!--/the_content_section_right-->
            </div>
        </section><!--/the_content_section-->
    </section><!--/main-->

    {include 'bottom_form_section_work'}

{/block}