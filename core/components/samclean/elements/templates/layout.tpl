{set $menu = 'pdoMenuArray' | snippet : [
'parents' => '-3'
'includeTVs' => 'menu_icontv,menu_type',
'tvPrefix' => '',
'sortby' => [
'menuindex' => 'ASC'
],
'showHidden' => 0,
'return' => 'tree',
'cache' => 1,
'cacheTime' => '86400',
'cache_key' => 'pdomenu/pdotools'
]}

{set $minifyjs = '!modxMinify' | snippet : [
'group' => 'js'
]}

<!DOCTYPE html>
<html lang="ru">

{include 'head'}

<body>

{include 'section_callback_popup'}

<div class="page_container inner_page_container" id="top">
    <div class="mobile_menu_toggler"></div>

    {set $tv_top = 17 | resource: 'position_menu_top'}
    {set $tv_main = 17 | resource: 'position_menu_main'}

    <!-- Start Header -->
    <header>
        <div class="header_top">
            <div class="inner_section clearfix">

            </div>
        </div><!--/header_top-->
        <div class="box-menu-toggler align-itemns-center d-xl-none d-inline-flex flex-column">
            <svg class="ham hamRotate ham1" viewBox="0 0 100 100" width="50">
                <path class="line top"
                      d="m 30,33 h 40 c 0,0 9.044436,-0.654587 9.044436,-8.508902 0,-7.854315 -8.024349,-11.958003 -14.89975,-10.85914 -6.875401,1.098863 -13.637059,4.171617 -13.637059,16.368042 v 40"/>
                <path class="line middle" d="m 30,50 h 40"/>
                <path class="line bottom"
                      d="m 30,67 h 40 c 12.796276,0 15.357889,-11.717785 15.357889,-26.851538 0,-15.133752 -4.786586,-27.274118 -16.667516,-27.274118 -11.88093,0 -18.499247,6.994427 -18.435284,17.125656 l 0.252538,40"/>
            </svg>
            <div class="">меню</div>
        </div>
        <div class="container">
            <div class="row align-items-center px-0 py-4">
                <div class="col-10 col-md-6 col-lg-3 col-xl-3">
                    <div class="box box-brand mb-0 d-flex align-items-center">
                        <a href="{'base_url' | option}">
                            <div class=" d-flex align-items-center">
                                <img class="mr-3 img-fluid d-md-block d-none"
                                     src="{$_modx->config.assets_url}/template/img/logo.png" alt=""/>
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
                    'outerClass' => 'nav nav-service',
                    'rowClass' => 'nav-item',
                    'tpl' => 'dsmc.pdoMenu.row.inside'
                    ]}
                </div>
                <div class="col-2 col-md-6 col-lg-3 col-xl-4">
                    <div class="d-flex align-items-center justify-content-xl-between justify-content-end">
                        <div class="box box-phone d-flex flex-column">
                            <a href="tel:{'phone' | option | preg_replace:'/[^0-9.+]|/': ''}"
                               class="box-phone-link d-md-block d-none">
                                <span class="box-phone-icon d-md-none"><i class="fas fa-mobile"></i></span>
                                <span class="d-none d-md-block">{'phone' | option}</span>
                            </a>
                            <a href="tel:{'phone_mobile' | option | preg_replace:'/[^0-9.+]|/': ''}"
                               class="box-phone-link">
                                <span class="box-phone-icon d-md-none"><i class="fas fa-mobile"></i></span>
                                <span class="d-none d-md-block">{'phone_mobile' | option}</span>
                            </a>
                        </div>
                        <div>
                            <a href="#callback_popup" rel="nofollow"
                               class="btn btn-green-light btn-pills d-none d-xl-block callback_button"><span>Заказать звонок</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="header_menu_block {'id' | resource != 1 ? 'd-none d-xl-block' : ''}">
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
    <!-- End Header -->

    <div class="header_placeholder"></div>

    {block 'main'}
    <section class="main">
        {/block}

    </section><!--/main-->

    <!-- Start Footer -->

    {set $tv_services = 17 | resource: 'position_menu_services'}
    {set $tv_footer_menu = 17 | resource: 'position_footer_menu'}


    <footer class="footer">
        <div class="footer-block py-5">
            <div class="container">
                <div class="row px-3 px-lg-0">


                    {foreach $menu as $item}
                        {set $item['level'] = 1}
                        {$_modx->getChunk('dsmc.pdoMenu.menuArray.row' , ['item' => $item])}
                    {/foreach}
                    <div class="col-lg-3 col-md-6">
                        <div class="collapse">
                            <a href="#" class="footer-title block-toggler">О компании
                                <span class="block-toggler-icon"></span>
                            </a>
                            <ul class="nav flex-column">
                                <li class="nav-item">
                                    <a href="{3 | url}" class="nav-link">Наши работы</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{177 | url}" class="nav-link">Цены</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{178 | url}" class="nav-link">Условия</a>
                                </li>
                                <li class="nav-item">
                                    <a href="{8 | url}" class="nav-link">Контакты</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 mt-4 col-md-6">
                        <ul class="nav nav-resources flex-column">
                            <li class="nav-item">
                                <a href="{12 | url}" class="nav-link">Мытье окон</a>
                            </li>
                            <li class="nav-item">
                                <a href="{13 | url}" class="nav-link">Мойка витрин</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-block py-5 bg-gray">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 py-2 mb-4 md-lb-0 d-flex flex-column flex-md-grid justify-content-md-start align-items-md-start align-items-center">
                        <div class="footer_logo">
                            <a href="/">
                                <img src="/assets/template/img/logo_footer1.png"
                                     data-src="/assets//template/img/logo_footer1.png" class=""
                                     alt=""><span><b><i>Sam</i>Clean</b></span>
                            </a>
                        </div>
                        <p class="py-1">© 2020 samclean.ru, Все права защищены</p>
                        <a href="policy/" class="policy py-1" rel="nofollow"><span>Политика конфидициальности</span></a>
                    </div>
                    <div class="col-lg-9 col-md-12 mx-5 mx-md-0">
                        <div class="row">
                            <div class="col-lg-4 col-md-4">
                                <p class="phone flex flex column flex-wrap">
                                    <a href="tel:+78123091691" class="d-block" rel="nofollow">+7 (812) 309-16-91</a>
                                    <a href="tel:+78123091691" class="d-block" rel="nofollow">+7 (812) 309-16-91</a>
                                </p>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <p class="mail">
                                    <a href="mailto:info@samclean.ru" rel="nofollow"><span>info@samclean.ru</span></a>
                                </p>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <p class="adress">
                                    пр. Энгельса 136, к. 1</p>
                            </div>
                            <div class="col-lg-8 col-md-12 d-flex flex-column flex-md-row align-items-start">
                                <a href="https://yandex.ru/maps/org/samklin/201...50079&z=14" rel="nofollow"
                                   class="btn btn-social my-2 ml-md-0 mr-md-2 mx-0">
                                    <span class="text-danger">Я</span>ндекс<span class="text-warning">Отзывы</span></a>
                                <a href="https://vk.com/samclean" rel="nofollow"
                                   class="btn btn-social my-2 mx-md-2 mx-0">
                                <span class="btn-inner--icon">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-vk"></use>
                                    </svg>
                                </span>
                                    Мы в контакте</a>
                                <a href="https://www.youtube.com/channel/UCSztG...xYbEx6zJtw" rel="nofollow"
                                   class="btn btn-social my-2 mr-md-0 ml-md-2 mx-0">
                                <span class="btn-inner--icon">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-youtube"></use>
                                    </svg>
                                </span>
                                    Youtube</a>
                            </div>
                            <div class="col-lg-4 col-md-12 mt-4 mt-lg-0 d-flex align-items-center">
                                <p class="note py-0">
                                    <a href="#">Разработка сайта - <img src="assets/template/img/dsmc_logo.png" alt=""></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    {include 'popup_form'}

    <!--End Footer-->

</div><!--/container-->

<div class="popup thanks_popup" id="thanks_popup">
    <div class="the_form">
        <p class="form_title">Спасибо. Мы свяжемся с Вами в ближайшее время.</p>
    </div>
</div><!--/thanks_popup-->

    <div class="modal modal-left fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="box box-navigation box-navigation-mainmenu p-4">
                    <ul class="navbar-nav nav flex-column mr-auto">
                        {foreach $menu as $item}
                            {set $item['level'] = 1}
                            {$_modx->getChunk('dsmc.pdoMenu.mobile.row' , ['item' => $item])}
                        {/foreach}
                    </ul>
                </div>
                <div class="box box-navigation box-navigation-service p-4">
                </div>
                <div class="box box-navigation p-4">
                    <div class="d-block">
                        <div class="box box-phone d-flex">
                            <div class="box box-icon">
                                <span class="box-phone-icon box-phone-link"><i class="fas fa-mobile"></i></span>
                            </div>
                            <div class="flex flex-column ml-3">
                                <a href="tel:{'phone' | option | preg_replace:'/[^0-9.+]|/': ''}"
                                   class="box-phone-link d-block">
                                    {'phone' | option}
                                </a>
                                <a href="tel:{'phone_mobile' | option | preg_replace:'/[^0-9.+]|/': ''}"
                                   class="box-phone-link d-block">
                                    {'phone_mobile' | option}
                                </a>
                            </div>
                        </div>
                        <div class="d-block">
                            <a href="#callback_popup" rel="nofollow"
                               class="btn btn-green-light btn-pills d-block text-center mt-4"><span>Заказать звонок</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

{include 'mobile_left_bar'}

<script src="{$minifyjs}"></script>

{if $_modx->resource.id == 8 }
    <script type="text/javascript" src="https://api-maps.yandex.ru/2.1/?lang=ru_RU"></script>
{/if}

{$_modx->regClientScript("/assets/components/mvtforms2/js/web/mvtforms2.dsmc.js")}
{$_modx->regClientScript("/assets/template/js/codyhouse.js")}
{$_modx->regClientScript("/assets/template/js/jquery.mobile.custom.min.js")}

{'!ym' | snippet}

<script>
    function injectSvgSprite(path) {
        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function (e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }

    injectSvgSprite('{'assets_url' | option}/template/icons/svg-sprite.svg');
</script>

{'callibri' | option}

</body>
</html>