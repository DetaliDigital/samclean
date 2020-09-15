{extends 'template:Layout'}

{block 'main'}
    <section class="main">

        <section class="the_content_section">
            <div class="inner_section clearfix">

                {include 'page.header'}

                <div class="the_content_section_left">

                    {if $_modx->resource.introtext ?}

                        <br/>

                        {$_modx->resource.introtext}

                        <br/>

                    {/if}

                    <ul class="list--none catalog--list catalog-list-ver1">
                        {'!pdoPage' | snippet : [
                        'tpl' => 'tpl.content.row',
                        'includeTVs' => 'list_catalog_content,list_catalog_img',
                        'tvPrefix' => ''
                        ]}
                    </ul>
                    <br/>

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