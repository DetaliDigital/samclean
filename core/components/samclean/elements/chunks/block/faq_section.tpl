<section class="faq_section">
    <div class="inner_section clearfix">

        {if $_modx->resource.section_faq_title ?}
        <h2>{$_modx->resource.section_faq_title}</h2>
        {/if}

        {set $rows = json_decode($_modx->resource.section_faq_migx, true)}

        <div class="faq_section_left">
            <div class="faq_block">

                {foreach $rows as $row}
                    <div class="faq_item">
                        <div class="faq_item_head">
                            <a href="#" class="title">
                                <span>{$row.title}</span>

                                <i class="close"></i>
                            </a>
                        </div>

                        <div class="faq_item_content">
                            {$row.content}
                        </div>
                    </div>
                {/foreach}

            </div><!--/faq_block-->
        </div>

        <div class="faq_section_right">
            {'mvtForms2' | snippet : ['form' => 'faq']}
        </div>

    </div>
</section>