{extends 'template:Layout'}

{block 'main'}

    <section class="main">

        <section class="the_content_section">
            <div class="inner_section clearfix">


                {include 'page.header'}

                <div class="the_content_section_left">

                    {$_modx->resource.introtext}


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

                    {include 'section_horizontal_form_block'}
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

{/block}