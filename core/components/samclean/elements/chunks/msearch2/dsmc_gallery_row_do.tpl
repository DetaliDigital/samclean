{if count($files) >= 1}
    <h4>До</h4>
    <div class="portfolio_block row">
        {foreach $files as $file}
            {if $file.tags == 'До'}
                <div class="portfolio_item hover col-md-6 col-lg-4">
                    <div class="img">
                        <a href="{$file['url'] | phpthumbon : 'fltr=wmi|/img/water.png|C|90'}" class="fancy" data-fancybox="gallery1" rel="gal1"><img src="{$file['medium']}" alt="{$file['name']}"></a>
                    </div>
                </div>
            {/if}
        {/foreach}
    </div>
{/if}