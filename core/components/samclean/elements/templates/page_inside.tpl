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
    {if $_modx->resource.section_clients_migx != '' && $_modx->resource.section_clients_title != ''}
        <section class="clients_section">
            <div class="inner_section clearfix">

                <div class="clients_section_text">
                    <h2>{$_modx->resource.section_clients_title}</h2>

                    {$_modx->resource.section_clients_intro}

                    {if $_modx->resource.section_clients_link_price ?}
                        <a class="orange_ref" href="{$_modx->resource.section_clients_link_price | url}">Прайс-лист</a>
                    {/if}

                    {if $_modx->resource.section_clients_link_more ?}
                        <!--/<a class="orange_ref" href="{$_modx->resource.section_clients_link_more | url}">Узнать больше</a>-->
                    {/if}

                    <a class="fancy button" href="#call_popup">Заявка на сотрудничество</a>
                </div>

                <div class="clients_section_img">
                    <img src="{$_modx->resource.section_clients_image | phpthumbon : "w=600&q=70&f=jpg"}" alt="" />
                </div>

                {set $rows = json_decode($_modx->resource.section_clients_migx, true)}

                <div class="clients_slider">
                    {foreach $rows as $row}
                        <div class="clients_slider_item">
                            <img class="max-width-70 lazy" data-lazy="{$row.image | phpthumbon : "q=100&f=jpg"}" src="{$row.image | phpthumbon : "q=100&f=jpg"}"  alt="{$row.title}" />
                        </div>
                    {/foreach}
                </div>
            </div>
        </section><!--/clients_section-->
    {/if}
{/block}