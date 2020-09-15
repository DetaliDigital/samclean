{extends 'template:Layout'}

    {block 'main'}
    <section class="main">

        <section class="the_content_section">
            <div class="inner_section clearfix">

                {include 'page.header'}

                <div class="the_content_section_left">



                    {$_modx->resource.content}

                    <br/>

                </div>


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
