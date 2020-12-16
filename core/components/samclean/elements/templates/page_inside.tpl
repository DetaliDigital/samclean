{extends 'template:Layout'}

{block 'main'}

    <section class="main">

        <section class="the_content_section">
            <div class="inner_section clearfix">

                {include 'page.header'}

                
                    {include 'service_top_block'}
              

                <div class="the_content_section_left" itemprop="mainContentOfPage">

                    {include 'section_top_slider'}
                    {include "introtext"}
                    {include 'section_top_hobnail'}
                    
                    {$_modx->resource.content}

                    {if $_modx->user.id > 0}
                    {'!infoBlock' | snippet : [
                    'id' => 1
                    ]}
                    {/if}

                    {* {include 'section_price'} *}
                    {include 'content_portfolio'}
                    {include 'advantages_block'}


                    {*

                    {include 'how_we_work_block'}



                    {$_modx->resource.section_bottom_lead}

                    <br/>

                    {include 'section_horizontal_form_block'}

                    *}

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