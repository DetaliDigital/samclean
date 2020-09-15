{set $tv_top = 17 | resource: 'position_menu_top'}
{set $tv_main = 17 | resource: 'position_menu_main'}


<header>
    <div class="header_top">
        <div class="inner_section clearfix">

        </div>
    </div><!--/header_top-->

    <div class="container">
        <div class="row align-items-center px-0 py-4">
            <div class="col-10 col-md-6 col-lg-3 col-xl-3">
                <div class="box box-brand mb-0 d-flex align-items-center">
                    <a href="{$_modx->config.base_url}">
                        <div class="d-flex align-items-center">
                            <div class = "box-brand-toggler d-flex align-itemns-center d-xl-none">
                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-list" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M2.5 11.5A.5.5 0 0 1 3 11h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 7h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4A.5.5 0 0 1 3 3h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                                </svg>
                            </div>
                            <img class="mr-3 img-fluid d-md-block d-none" src="{$_modx->config.assets_url}/template/img/logo.png" alt=""/>
                            <div class="box-brand-text d-flex flex-column">
                                <b class="box-brand-title">
                                    <span class="text-success-light">Sam</span>Clean</b>
                                    <span class="box-brand-name">
                                        {$_modx->config.name}
                                    </span>
                            </div>
                        </div>
                    </a>
                </div>
            </div>

            <div class="col-5 col-lg-6 col-xl-5 d-none d-lg-block">
                {'!pdoMenu' | snippet : [
                'parents' => 0,
                'resources' => $tv_top
                'outerClass' => 'nav',
                'rowClass' => 'nav-item',
                'tpl' => 'dsmc.pdoMenu.row.inside'
                ]}
            </div>
            <div class="col-2 col-md-6 col-lg-3 col-xl-4">
                <div class="d-flex align-items-center justify-content-xl-between justify-content-end">
                    <div class="box box-phone d-flex flex-column">
                        <a href="#" class="box-phone-link"><span class="box-phone-icon d-md-none"><i class="fas fa-mobile"></i></span><span class="d-none d-md-block">{'phone' | option}</span></a>
                        <a href="#" class="box-phone-link d-md-block d-none">{'phone_mobile' | option}</a>
                    </div>
                    <div>
                        <a href="#callback_popup" rel="nofollow" class="btn btn-green-light btn-pills d-none d-xl-block"><span>Заказать звонок</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {set $menu = 'pdoMenuArray' | snippet : [
    'parents' => '-3'
    'includeTVs' => 'menu_icontv,menu_type',
    'tvPrefix' => '',
    'sortby' => [
    'menuindex' => 'ASC'
    ],
    'showHidden' => 0,
    'return' => 'tree'
    ]}


    <div class="header_menu_block">
        <div class="header_menu_wrap inner_section clearfix">
            <nav class="navbar navbar-expand-lg clearfix">

                <ul class="navbar-slider navbar-nav mr-auto">

                    {foreach $menu as $item}
                        {set $item['level'] = 1}
                        {$_modx->getChunk('dsmc.pdoMenu.menuArray.supermenu.row' , ['item' => $item])}
                    {/foreach}

                </ul>
            </nav>
        </div><!--/header_menu_block-->
    </div>


</header>