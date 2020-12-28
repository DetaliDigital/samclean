{foreach $items as $item}
<div class="section bg__section_gray section--staff">
    <div class="row">
        <div class="col-lg-7 col-md-6">
            <div class="card card--master">
                <div class="card--body">
                    <div class="card--text text-italic">
                      {$item.content}
                    </div>
                    <div class="card--social">
                        <div class="card--title">
                            {$item.name}
                        </div>
                        <ul class="list list--inline">
                            {if 'config_viber' | option ?}
                            <li class="list--inline--item">
                                <a href="{'config_viber' | option}" class="social social--circle social--viber" rel="nofollow">
                                    <svg class="svg--icon social--sm">
                                        <use xlink:href="#icon-viber-2"></use>
                                    </svg>
                                </a>
                            </li>
                            {/if}
                            {if 'config_telegram' | option ?}
                            <li class="list--inline--item">
                                <a href="{'config_telegram' | option}" class="social social--circle social--telegram" rel="nofollow">
                                    <svg class="svg--icon social--sm">
                                        <use xlink:href="#icon-telegram-2"></use>
                                    </svg>
                                </a>
                            </li>
                            {/if}
                            {if 'config_instagram' | option ?}
                            <li class="list--inline--item">
                                <a href="{'config_instagram' | option}" class="social social--circle social--instagram" rel="nofollow">
                                    <svg class="svg--icon social--sm">
                                        <use xlink:href="#icon-instagram-2"></use>
                                    </svg>
                                </a>
                            </li>
                            {/if}
                            {if 'config_vk' | option ?}
                            <li class="list--inline--item">
                                <a href="{'config_vk' | option}" class="social social--circle social--vk" rel="nofollow">
                                    <svg class="svg--icon social--sm">
                                        <use xlink:href="#icon-vk-2"></use>
                                    </svg>
                                </a>
                            </li>
                            {/if}
                            {if 'config_whatsapp' | option ?}
                            <li class="list--inline--item">
                                <a href="{'config_whatsapp' | option}" class="social social--circle social--whatsapp" rel="nofollow">
                                    <svg class="svg--icon social--sm">
                                        <use xlink:href="#icon-whatsapp-2"></use>
                                    </svg>
                                </a>
                            </li>
                            {/if}
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5 col-md-6">
            <div class="img--person">
                <img src="{$item.image}" class="img--left">
                <div class="overlay--bg">
                    <div class="card-text card--bg--person">
                        {$item.description}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{/foreach}