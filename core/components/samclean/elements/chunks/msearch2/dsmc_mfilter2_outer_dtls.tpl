<div class="row msearch2" id="mse2_mfilter">
    <div class="col-12">
    <form action="{$_modx->makeUrl($_modx->resource.id)}" method="post" id="mse2_filters">
        {if $filters != 'Нечего фильтровать'}
            {$filters}
        {/if}
    </form>
    </div>
    <div class="portfolio_block row mx-0 my-4" id="mse2_results">
        {$results}
    </div>
    <div class="mse2_pagination">
        {'page.nav' | placeholder}
    </div>
</div>