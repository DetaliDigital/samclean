{set $tv_services = 17 | resource: 'position_menu_services'}
{set $tv_footer_menu = 17 | resource: 'position_footer_menu'}


<footer>
    <div class="inner_section inner_footer clearfix">
        <div class="footer_column">
            <div class="footer_logo">
                <a href="/"><img src="{$_modx->config.assets_url}/template/img/logo_footer1.png" class="lazy" alt="" /><span><b><i>Sam</i>Clean</b></span></a>
            </div>

            <p class="copy">© {'year' | snippet} samclean.ru, {$_modx->config.copy}</p>

            <a href="[[~114]]" class="policy" rel="nofollow"><span>Политика конфидициальности</span></a>

            <p class="copy">Читайте отзывы о нашей работе на:</p>

            <p class="copy"><a href="https://yandex.ru/maps/org/samklin/201295199127/reviews/?ll=30.331831%2C60.050079&z=14" rel="nofollow"><img src="img/otzivi_samclean.jpg" class="lazy" alt="" /></a></p>

        </div><!--/footer_column-->

        <div class="footer_column">
            <div class="footer_menu_item">
                <p class="head">Компания</p>

                <nav class="footer_menu">
                    {'pdoMenu' | snippet : [
                    'parents' => 0,
                    'resources' => $tv_footer_menu
                    ]}

                </nav>
            </div>

            <div class="footer_menu_item">
                <p class="head">Услуги</p>

                <nav class="footer_menu">
                    {'pdoMenu' | snippet : [
                    'parents' => 0,
                    'resources' => $tv_services
                    'tpl' => 'tpl.menu.footer.servise'
                    ]}
                </nav>
            </div>
        </div><!--/footer_column-->

        <div class="footer_column footer_column_contacts clearfix">
            <div class="footer_bottom_contacts_content">
                <p class="phone">
                    <a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9.+]|/': ''}" rel="nofollow">{$_modx->config.phone}</a>
                </p>

                <p class="mail">
                    <a href="mailto:{$_modx->config.mail}" rel="nofollow"><span>{$_modx->config.mail}</span></a>
                </p>

                <p class="adress">
                    {$_modx->config.address}
                </p>
            </div>

            <p class="note">
                <a href="#">Разработка сайта - <img src="assets/template/img/dsmc_logo.png" alt="" /></a>
            </p>


        </div><!--/footer_column-->
    </div>


</footer>

[[$popup_form]]

