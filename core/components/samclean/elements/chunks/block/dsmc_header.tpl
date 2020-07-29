{set $tv_top = 17 | resource: 'position_menu_top'}
{set $tv_main = 17 | resource: 'position_menu_main'}


<header>
    <div class="header_top">
        <div class="inner_section clearfix">


        </div>
    </div><!--/header_top-->

    <div class="inner_header inner_section clearfix">

        <div class="logo">
            <a href="{$_modx->config.base_url}">
                <img src="{$_modx->config.assets_url}/template/img/logo.png" alt="" />
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

        [[-<div class="mobile_search_toggler"></div>]]

        <div class="header_search clearfix">
            [[-<form>
                <input type="submit" name="submit1" value=" ">

                <input type="text" name="search_query" placeholder="Искать на сайте">
            </form>

            <div class="header_search_result_block">
                <div class="header_search_result_item">
                    <div class="img"><img src="{$_modx->config.assets_url}/template/img/sr1.png" alt="" /></div>

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
                    <div class="img"><img src="{$_modx->config.assets_url}/template/img/sr1.png" alt="" /></div>

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
                    <div class="img"><img src="{$_modx->config.assets_url}/template/img/sr1.png" alt="" /></div>

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
            <p class="phone"><a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9.+]|/': ''}">{$_modx->config.phone}</a>

            </p>

            <a href="#callback_popup" rel="nofollow" class="callback_button"><span>Заказать звонок</span></a>
        </div>

    </div><!--/inner_header-->

    <div class="header_menu_block">
        <div class="header_menu_wrap inner_section clearfix">
            <nav class="header_menu clearfix">
                {'pdoMenu' | snippet : [
                'parents' => 0,
                'includeTVs' => 'menu_icontv',
                'tvPrefix' => '',
                'resources' => $tv_main,
                'tpl' => '@INLINE <li {$classes}><a href="{$link}" {$attributes}><b><i class="item-icon icon-{$menu_icontv}"></i></b><span>{$menutitle}</span></a>{$wrapper}</li>',
                ]}
        </div><!--/header_menu_block-->
    </div>


</header>