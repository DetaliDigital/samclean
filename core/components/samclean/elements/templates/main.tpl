{extends 'template:Layout'}

{block 'main'}


    <div class="header_placeholder"></div>

    {if $_modx->resource.banner ?}
    <section class="main">
        {set $rows = json_decode($_modx->resource.banner, true)}
        <section class="top_banner_section">
            <div class="inner_section clearfix">
                <div class="top_banner_column 23 top_banner_slider">
                    {foreach $rows as $row}
                        <div class="top_banner_item">
                            <img src="{$row.img}"></div>
                    {/foreach}
                </div>
                <div class="top_banner_column 13">
                    {'!BannerY' | snippet : [
                    'position' => 2,
                    'tpl' => 'tpl.banner.main_right'
                    ]}
                </div>
            </div>
        </section><!--/top_banner_section-->
        {/if}


        {if $_modx->resource.section_advantages ?}
            {set $rows = json_decode($_modx->resource.section_advantages, true)}

            <section class="advantages_section">
                <div class="inner_section">
                    <div class="advantages_block">
                        {foreach $rows as $row}
                            <div class="advantages_item">
                                <div class="img"><img src="{$row.image | phpthumbon : "w=42&h=42&q=70"}" class="lazy" alt="" /></div>
                                <div class="text">
                                    <p>{$row.title}</p>
                                </div>
                            </div>
                        {/foreach}

                    </div><!--/advantages_block-->
                </div>
            </section><!--/advantages_section-->
        {/if}


        {if $_modx->resource.section_middle_banner_title or $_modx->resource.section_middle_banner_сontent ?}
            <section class="middle_banner_section" {if 'standard' | mobiledetect or 'tablet' | mobiledetect} style="background('{$_modx->resource.section_middle_banner_background | phpthumbon : "w=1792&q=70"}')" {/if}>
                <div class="inner_section clearfix">
                    <div class="middle_banner">
                        <div class="middle_banner_content">
                            <h1>{$_modx->resource.section_middle_banner_title}</h1>
                            {$_modx->resource.section_middle_banner_сontent}

                            <a href="#call_popup" class="fancy button reveal_text"><span>Заказать чистку</span></a>
                        </div>
                    </div>

                </div>
            </section><!--/middle_banner_section-->
        {/if}


        {if $_modx->resource.section_popular_migx ?}
            <section class="popular_section">
                <div class="inner_section clearfix">

                    <h2>{$_modx->resource.section_popular_title}</h2>

                    {$_modx->resource.section_popular_intro}

                </div>

                {set $rows = json_decode($_modx->resource.section_popular_migx, true)}

                <div class="popular_slider_wrap">
                    <div class="popular_slider clearfix">

                        {foreach $rows as $row}

                            <div class="popular_slider_item">
                                <div class="img"><img src="{$row.image | phpthumbon : "w=298&h=391&q=70"}" class="lazy" alt="" /></div>

                                <div class="caption">
                                    <p class="title">{$row.title}</p>

                                    <p class="price">
                                        {$row.price}
                                    </p>
                                </div>

                                <a href="{$row.link}" class="ref"></a>

                            </div>

                        {/foreach}

                    </div><!--/popular_slider-->
                </div>

            </section><!--/popular_section-->
        {/if}

            {'faq_section' | chunk}

        <section class="how_we_work_section">
            <div class="inner_section clearfix">

                <div class="how_we_work_section_left">
                    {if $_modx->resource.section_how_we_work_title_left ?}
                        <h2>{$_modx->resource.section_how_we_work_title_left}</h2>
                    {/if}

                    <ol class="how_we_work_block">
                        {set $rows = json_decode($_modx->resource.section_how_we_work_migx, true)}
                        {set $idx = 1}
                        {foreach $rows as $row}
                            <li class="how_we_work_item">
                                <span class="number">{$idx++}</span>
                                <div class="text">
                                    <p class="title">
                                        {$row.title}
                                    </p>
                                    {if $row.buttom == 1}
                                        <a href="#call_popup" class="fancy button mini_button leave_request_button">Оставить заявку</a>
                                    {/if}
                                </div>
                            </li>
                        {/foreach}
                    </ol><!--/how_we_work_block-->
                </div>

                <div class="how_we_work_section_right right_text">
                    {if $_modx->resource.section_how_we_work_title_right ?}
                        <h2>{$_modx->resource.section_how_we_work_title_right}</h2>
                    {/if}

                    {if $_modx->resource.section_how_we_work_introtext ?}
                        <p>
                            {$_modx->resource.section_how_we_work_introtext}
                        </p>
                    {/if}
                    <!--/ {if $_modx->resource.section_how_we_work_link_company ?}
	                             <a href="{$_modx->resource.section_how_we_work_link_company}">О компании</a>
	                             {/if} -->
                </div>

                <img src="assets/template/img/vc.png" alt="" />
            </div>
        </section><!--/how_we_work_section-->

        <section class="main_portfolio_section">
            <div class="inner_section clearfix">

                {'!ms2Gallery' | snippet : [
                'tpl' => 'tpl.gallery.main.row'
                ]}

                <article>

                    {if $_modx->resource.section_gallery_title ?}
                        <h3>{$_modx->resource.section_gallery_title}</h3>
                    {/if}

                    {if $_modx->resource.section_gallery_intro ?}
                        <p>
                            {$_modx->resource.section_gallery_intro}
                        </p>
                    {/if}
                </article>

            </div>

        </section><!--/main_portfolio_section-->

        <section class="main_prices_section">
            <div class="inner_section clearfix">

                {if $_modx->resource.section_main_price_title ?}
                    <h2>{$_modx->resource.section_main_price_title}</h2>
                {/if}

                {if $_modx->resource.section_main_price_introtext ?}
                    <p>
                        {$_modx->resource.section_main_price_introtext}
                    </p>
                {/if}

                {set $rows = json_decode($_modx->resource.section_main_price_migx, true)}

                <div class="main_prices_block">

                    {foreach $rows as $row}
                        <div class="main_prices_column">
                            <div class="main_prices_head">
                                <div class="img"><img src="{$row.image}" alt="" /></div>

                                {if $row.title ?}
                                    <p class="title">{$row.title}</p>
                                {/if}
                            </div>
                            {set $childRowsitems = $row.item | fromJSON}
                            {set $childRowsgroups = $row.group | fromJSON}
                            <div class="main_prices_column_wrap">
                                <div class="main_prices_item_group">
                                    {foreach $childRowsgroups as $chrow}
                                        <div class="main_prices_item">
                                            <p class="title">{$chrow.title}</p>
                                            <p class="price">{$chrow.price}</p>
                                        </div>
                                    {/foreach}
                                </div>
                                {foreach $childRowsitems as $chrow}
                                    <div class="main_prices_item">
                                        <p class="title">{$chrow.title}
                                        </p>
                                        <p class="price">{$chrow.price}</p>
                                    </div>
                                {/foreach}
                            </div>
                        </div><!--/main_prices_column-->
                    {/foreach}

                </div><!--/main_prices_block-->
            </div>
        </section><!--/main_prices_section-->


        {if $_modx->resource.section_clients_migx ?}
            <section class="clients_section">
                <div class="inner_section clearfix">

                    <div class="clients_section_text">
                        <h2>{$_modx->resource.section_clients_title}</h2>

                        {$_modx->resource.section_clients_intro}

                        {if $_modx->resource.section_clients_link_price ?}
                            <a class="orange_ref" href="{$_modx->resource.section_clients_link_price | url}">Прайс-лист</a>
                        {/if}

                        {if $_modx->resource.section_clients_link_more ?}
                            <a class="orange_ref" href="{$_modx->resource.section_clients_link_more | url}">Узнать больше</a>
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

        {include 'bottom_form_section'}

    </section><!--/main-->
{/block}