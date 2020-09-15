{set $minifycss = '!modxMinify' | snippet : [
'group' => 'css'
]}

{set $tv_template_description = 17 | resource: 'template_description'}
{set $val_parrent = $_modx->resource.parent}

<head>
    {if $_modx->resource.seo_title != ''}
        <title>{$_modx->resource.seo_title}</title>
    {else}
        <title>{$_modx->resource.pagetitle}</title>
    {/if}
    <meta charset="{$_modx->config.charset}">
    <base href="{$_modx->config.site_url}">
    {if $_modx->resource.seo_description != ''}
        <meta name="description" content="{$_modx->resource.seo_description}">
    {else}
        {set $rows = json_decode($tv_template_description, true)}
        {foreach $rows as $row}
            {if $row.key_category == $val_parrent}
                <meta name="description" content="{$row.templetes_description}">
            {/if}
        {/foreach}
    {/if}

    <meta name="viewport" content="width=device-width">
    <meta name="yandex-verification" content="002ab86786ff9e81">
    <meta name="yandex-verification" content="10c67d28e375050b">
    <meta name="yandex-verification" content="778abb63185cba1e">
    <link href="favicon.png" rel="shortcut icon" type="image/x-icon">
    <link href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/template/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="{$minifycss}">
    <link rel="stylesheet" href="assets/template/css/codyhouse.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css" integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    {'!ga_head' | snippet}
    {'!jivosite' | snippet}
</head>