{if $_modx->resource.section_hero_title && $_modx->resource.section_hero_price}

<div class="service_top_block" itemscope itemtype="http://schema.org/Product">
    <div class="img">
        <img src="{$_modx->resource.section_hero_img}" alt="" />
    </div>

    <div class="caption">
        <div class="caption_content">
            {if $_modx->resource.section_hero_title}
            <p class="title" itemprop="name">
                {$_modx->resource.section_hero_title}
            </p>
            {/if}

            {if $_modx->resource.section_hero_price}
            <span itemprop="offers" itemscope itemtype="http://schema.org/Offer"> <p class="price">цена от <span itemprop="price">{$_modx->resource.section_hero_price}</span> <span itemprop="priceCurrency" content="RUB">рублей</span></p> </span>
            {/if}

            {if $_modx->resource.section_hero_introtext}
            <div class="caption_description" itemprop="description">
                <p>
                    {$_modx->resource.section_hero_introtext}
                </p>

                <a href="#">Читать дальше</a>
            </div>
            {/if}

            {set $rows = json_decode($_modx->resource.section_hero_advantage, true)}

            <ul class="ul_check horizontal_ul">
                {foreach $rows as $row}
                <li>{$row.name}</li>
                {/foreach}
            </ul>

        </div>
    </div><!--/caption-->

    {'!mvtForms2' | snippet : ['form'=>'hero']}

</div><!--/service_top_block-->
{/if}