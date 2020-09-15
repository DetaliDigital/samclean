{extends 'template:Layout'}

{block 'main'}
    <section class="main">
        <section class="the_content_section">
            <div class="inner_section clearfix">

                {include 'page.header'}

                <div class="contacts_page">
                    <div class="contacts_block">

                        {set $rows = json_decode($_modx->resource.section_contacts_migx, true)}

                        {foreach $rows as $row}

                            {if $row.value != ''}
                                <div class="contacts_block_item">
                                    <div class="img"><img src="{$row.image}" alt="{$row.label}" /></div>

                                    <div class="text">
                                        <p class="title">{$row.label}</p>

                                        {if $row.type == 1}

                                            <p class="phone">
                                                <a href="tel:+{$row.value | preg_replace:'/[^0-9]|/': ''}">{$row.value}</a>
                                            </p>

                                        {/if}

                                        {if $row.type == 2}

                                            <p>{$row.value}</p>

                                        {/if}

                                        {if $row.type == 3}

                                            <p class="mail">
                                                <a href="mailto:{$row.value}">{$row.value}</a>
                                            </p>

                                        {/if}

                                    </div>
                                </div>
                            {/if}

                        {/foreach}

                        <a href="#" class="button mini_button contacts_order_call">Заказать звонок</a>

                        {'!mvtForms2' | snippet : ['form'=>'contact']}

                    </div><!--/contacts_block-->

                    {set $rows = json_decode($_modx->resource.yandex_map, true)}
                    {set $i = 1}

                    {foreach $rows as $row first=$first}
                        {set $coords = $row.address | split : ','}
                        {if $first}
                            <div class="map" id="map" data-map-coords1="{$coords[0]}" data-map-coords2="{$coords[1]}"></div>
                        {/if}
                    {/foreach}

                    <div class="map_pin_list" style="width:0px;height:0px;overflow:hidden;padding:0;margin:0;opacity:0;">

                        {foreach $rows as $row}
                            {set $coords = $row.address | split : ','}
                            <button data-pin-coords1="{$coords[0]}" data-pin-coords2="{$coords[1]}">{$i++}</button>
                        {/foreach}
                    </div>

                </div><!--/contacts_page-->


            </div>
        </section><!--/the_content_section-->
    </section><!--/main-->
{/block}