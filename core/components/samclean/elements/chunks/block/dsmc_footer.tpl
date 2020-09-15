{set $tv_services = 17 | resource: 'position_menu_services'}
{set $tv_footer_menu = 17 | resource: 'position_footer_menu'}


<footer class="footer">
    <div class="footer-block py-5">
        <div class="container">
            <div class="row px-3 px-lg-0">

                {set $menu = 'pdoMenuArray' | snippet : [
                'parents' => '-3'
                'sortby' => [
                'menuindex' => 'ASC'
                ],
                'showHidden' => 0,
                'return' => 'tree'
                ]}

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
                                 data-src="/assets//template/img/logo_footer1.png" class="" alt=""><span><b><i>Sam</i>Clean</b></span>
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
                            <a href="https://yandex.ru/maps/org/samklin/201...50079&z=14" rel="nofollow"  class="btn btn-social my-2 ml-md-0 mr-md-2 mx-0">
                                <span class="text-danger">Я</span>ндекс<span class="text-warning">Отзывы</span></a>
                            <a href="https://vk.com/samclean" rel="nofollow"  class="btn btn-social my-2 mx-md-2 mx-0">
                                <span class="btn-inner--icon">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-vk"></use>
                                    </svg>
                                </span>
                                Мы в контакте</a>
                            <a href="https://www.youtube.com/channel/UCSztG...xYbEx6zJtw" rel="nofollow" class="btn btn-social my-2 mr-md-0 ml-md-2 mx-0">
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

