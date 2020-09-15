{set $tv_top = 17 | resource: 'position_menu_top'}
{set $tv_main = 17 | resource: 'position_menu_main'}

<header>
    <div class="header_top">
        <div class="inner_section clearfix">


        </div>
    </div><!--/header_top-->

    {*
    <div class="inner_header inner_section clearfix">

        <div class="logo">
            <a href="{$_modx->config.base_url}">
                <img src="{$_modx->config.assets_url}/template/img/logo.png" alt=""/>
                <span>
									<b><i>Sam</i>Clean</b>
								    {$_modx->config.name}
								</span>
            </a>
        </div>

        <nav class="header_top_menu">
            {'pdoMenu' | snippet : [
            'parents' => 0,
            'resources' => $tv_top
            ]}
        </nav>

        [[-
        <div class="mobile_search_toggler"></div>
        ]]

        <div class="header_search clearfix">
            [[-
            <form>
                <input type="submit" name="submit1" value=" ">

                <input type="text" name="search_query" placeholder="Искать на сайте">
            </form>

            <div class="header_search_result_block">
                <div class="header_search_result_item">
                    <div class="img"><img src="{$_modx->config.assets_url}/template/img/sr1.png" alt=""/></div>

                    <div class="text">
                        <p class="title">
                            <a href="#">
                                Конфеты Roshen Jollies
                            </a>
                        </p>

                        <p class="price">399 Р</p>
                    </div>
                </div>

                <div class="header_search_result_item">
                    <div class="img"><img src="{$_modx->config.assets_url}/template/img/sr1.png" alt=""/></div>

                    <div class="text">
                        <p class="title">
                            <a href="#">
                                Конфеты Roshen Jollies
                            </a>
                        </p>

                        <p class="price">399 Р</p>
                    </div>
                </div>

                <div class="header_search_result_item">
                    <div class="img"><img src="{$_modx->config.assets_url}/template/img/sr1.png" alt=""/></div>

                    <div class="text">
                        <p class="title">
                            <a href="#">
                                Конфеты Roshen Jollies
                            </a>
                        </p>

                        <p class="price">399 Р</p>
                    </div>
                </div>

                <div class="header_search_result_bottom">
                    <a href="#">Смотреть все результаты</a>
                </div>
            </div><!--/header_search_result_block-->]]
        </div><!--/header_search-->

        <div class="header_right clearfix">
            <p class="phone"><a
                        href="tel:{$_modx->config.phone | preg_replace:'/[^0-9.+]|/': ''}"><span>{$_modx->config.phone}</span></a>

            </p>

            <a href="#callback_popup" rel="nofollow" class="callback_button"><span>Заказать звонок</span></a>
        </div>

    </div><!--/inner_header-->
    *}

    <div class="container">
        <div class="row align-items-center px-0 py-4">
            <div class="col-3">
                <div class="box box-brand logo mb-0 d-flex">
                    <a href="{$_modx->config.base_url}">
                        <div class="d-flex">
                        <img src="{$_modx->config.assets_url}/template/img/logo.png" alt=""/>
                            <div class="box-brand-text d-flex flex-column">
                                <b class="box-brand-title"><span class="text-success-light">Sam</span>Clean</b>
                                <span class="box-brand-name">
                                {$_modx->config.name}
                                    </span>
                            </div>
                        </div>
                      </a>
                </div>
            </div>

            <div class="col-5">
                {'!pdoMenu' | snippet : [
                'parents' => 0,
                'resources' => $tv_top
                'outerClass' => 'nav',
                'rowClass' => 'nav-item',
                'tpl' => 'dsmc.pdoMenu.row.inside'
                ]}
            </div>
            <div class="col-4">
                <div class="d-flex align-items-center justify-content-between">
                    <div class="box box-phone d-flex flex-column">
                        <a href="#" class="box-phone-link">+7 (812) 309-16-91</a>
                        <a href="#" class="box-phone-link">+7 (812) 309-16-91</a>
                    </div>
                    <div>
                        <a href="#callback_popup" rel="nofollow" class="btn btn-green-light btn-pills"><span>Заказать звонок</span></a>
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


                    {*
                    <li class="nav-item dropdown-toggle-mega">
                        <a class="nav-link" href="#">
                            <span class="svg-icon">
                            <i class="item-icon icon-divan"></i>
                            </span>
                            Химчистка мебели</a>
                        <div class="dropdown-menu megamenu">
                            <div class="row px-4 px-lg-5 py-lg-5 ">
                                <div class="col-10">
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="dropdown-menu-title">Диваны</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Диваны из кожи</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Диваны из
                                                        экокожи</a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-3.html">Диваны из флока
                                                    </a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-4.html">Диваны из замши
                                                    </a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Односпальные
                                                        диваны</a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">2-спальных
                                                        диваны</a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-3.html">1,5-спальных
                                                        диваны
                                                    </a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-4.html">Угловых диваны
                                                    </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-3">
                                            <div class="dropdown-menu-title">Кресела</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Кожаных кресел</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Офисных кресел</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-3">
                                            <div class="dropdown-menu-title">Мягкие стулья</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Офисных стульев</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Офисных кресел</a>
                                                </li>
                                            </ul>
                                            <div class="dropdown-menu-title">Кресела</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Кожаных кресел</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Офисных кресел</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-3">
                                            <div class="dropdown-menu-title">Кресела</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Чистка от мочи</a>
                                                    <span class="text-intro">детская, собачья кошачья</span>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">От продуктивных
                                                        пятен</a>
                                                    <span class="text-intro">вино, масло, колы</span>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">От постельных
                                                        клопов</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">От строительной
                                                        пыли</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">От плесени</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="row">
                                        <div class="col-12">
                                            <ul class="megamenu-list list-unstyled megamenu-list-lg">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Диваны из кожи</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Диваны из
                                                        экокожи</a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-3.html">Диваны из флока
                                                    </a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-4.html">Диваны из замши
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown-toggle-mega">
                        <a class="nav-link" href="#">
                            <span class="svg-icon">
                            <i class="item-icon icon-divan"></i>
                            </span>
                            Ковровые покрытия</a>
                        <div class="dropdown-menu megamenu">
                            <div class="row px-4 px-lg-5 py-lg-5 ">
                                <div class="col-10">
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="dropdown-menu-title">Диваны 1</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Диваны из кожи</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Диваны из
                                                        экокожи 1</a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-3.html">Диваны из флока
                                                    </a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-4.html">Диваны из замши
                                                    </a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Односпальные
                                                        диваны</a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">2-спальных
                                                        диваны</a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-3.html">1,5-спальных
                                                        диваны
                                                    </a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-4.html">Угловых диваны
                                                    </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-3">
                                            <div class="dropdown-menu-title">Кресела</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Кожаных кресел</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Офисных кресел</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-3">
                                            <div class="dropdown-menu-title">Мягкие стулья</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Офисных стульев</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Офисных кресел</a>
                                                </li>
                                            </ul>
                                            <div class="dropdown-menu-title">Кресела</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Кожаных кресел</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Офисных кресел</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-3">
                                            <div class="dropdown-menu-title">Кресела</div>
                                            <ul class="megamenu-list list-unstyled">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Чистка от мочи</a>
                                                    <span class="text-intro">детская, собачья кошачья</span>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">От продуктивных
                                                        пятен</a>
                                                    <span class="text-intro">вино, масло, колы</span>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">От постельных
                                                        клопов</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">От строительной
                                                        пыли</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">От плесени</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-2">
                                    <div class="row">
                                        <div class="col-12">
                                            <ul class="megamenu-list list-unstyled megamenu-list-lg">
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index.html">Диваны из кожи</a>
                                                </li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-2.html">Диваны из
                                                        экокожи</a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-3.html">Диваны из флока
                                                    </a></li>
                                                <li class="megamenu-list-item">
                                                    <a class="megamenu-list-link" href="index-4.html">Диваны из замши
                                                    </a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item dropdown-toggle-list">
                        <a class="nav-link" href="#">
                            <span class="svg-icon">
                            <i class="item-icon icon-divan"></i>
                            </span>
                            Чистка матрасов</a>
                                <ul class="dropdown-menu list-menu">
                                    <li class="nav-item dropdown-toggle-list">
                                        <a href="nav-link" class="nav-link">Химчистка диванов</a>
                                        <ul class="dropdown-menu list-menu">
                                            <li class="nav-item">
                                                <a href="nav-link" class="nav-link">Химчистка кресел</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="nav-link" class="nav-link">Химчистка
                                                    мягких стульев</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="nav-item dropdown-toggle-list">
                                        <a href="nav-link" class="nav-link">Химчистка кресел</a>
                                        <ul class="dropdown-menu list-menu">
                                            <li class="nav-item">
                                                <a href="nav-link" class="nav-link">Химчистка кресел</a>
                                            </li>
                                            <li class="nav-item">
                                                <a href="nav-link" class="nav-link">Химчистка
                                                    мягких стульев</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a href="nav-link" class="nav-link">Химчистка
                                            мягких стульев</a>
                                    </li>
                                </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span class="svg-icon">
                            <i class="item-icon icon-divan"></i>
                            </span>
                            Мытьё окон</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span class="svg-icon">
                            <i class="item-icon icon-divan"></i>
                            </span>
                            Мойка витрин</a>
                    </li>*}
                </ul>
            </nav>
        </div><!--/header_menu_block-->
    </div>


</header>