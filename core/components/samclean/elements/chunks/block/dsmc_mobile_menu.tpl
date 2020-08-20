{set $tv_top = 17 | resource: 'position_menu_top'}
{set $tv_main = 17 | resource: 'position_menu_main'}
{set $tv_footer_menu = 17 | resource: 'position_footer_menu'}

<ul class="header_menu_mobile_main_categories_ul clearafter">

    {'!pdoMenu' | snippet : [
    'parents' => 0,
    'resources' => $tv_main,
    'tplOuter' => '@INLINE {$wrapper}',
    'tpl' => '@INLINE <li {$classes}><a href="{$link}" {$attributes}><b><i class="item-icon icon-{$menu_icontv}"></i></b><span>{$menutitle}</span></a>{$wrapper}</li>',
    'includeTVs' => 'menu_icontv',
    'tvPrefix' => '',
    'rowClass' => 'direct_ref ref_with_icon'
    'firstClass' => '',
    'lastClass' => 'last'
    ]}

    {'!pdoMenu' | snippet : [
    'parents' => 0,
    'resources' => $tv_footer_menu,
    'tplOuter' => '@INLINE {$wrapper}',
    'tpl' => '@INLINE <li {$classes}><a href="{$link}" {$attributes}><span>{$menutitle}</span></a>{$wrapper}</li>',
    'includeTVs' => 'menu_icontv',
    'tvPrefix' => '',
    'rowClass' => 'direct_ref',
    'firstClass' => '',
    'lastClass' => ''
    ]}

    <li class="rollover_contacts">

        <p class="phone"><a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9.+]|/': ''}">{$_modx->config.phone}</a>

        </p>

        <a data-toggle="call_form" href="#" class="mobile_order_call"><span>Заказать звонок</span></a>

    </li>
</ul>