{if count($files) >= 1}
    <div class="portfolio_block row">
        {foreach $files as $file}
            {if $file.tags == ''}
                <div class="portfolio_item col-md-6 col-lg-4 hover">
                    <div class="img">
                        <a href="{$file['url'] | phpthumbon : 'fltr=wmi|/img/water.png|C|90'}" class="fancy" data-fancybox="gallery1" rel="gal1"><img src="{$file['medium']}" alt="{$file['name']}"></a>
                    </div>
                </div>
            {/if}
        {/foreach}
    </div>
{/if}