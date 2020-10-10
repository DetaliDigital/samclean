{foreach $positions as $position}
<section class="service-reviews title-transform-none my-5">
    <h2>{$position.name}</h2>
    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="reviews_slider">
                {foreach $position.items as $item}
                <div class="card-review d-flex flex-column flex-xl-row">
                    <div class="image col-12 col-xl-3">
                        <img src="{$item.image ?: 'config_no_image' | option}">
                    </div>
                    <div class="review-content col-12 col-xl-9 ml-3 mt-5 mt-lg-0">
                        <div class="title">{$item.name}</div>
                        <!--noindex--><div class="description">{$item.content}<!--/noindex-->
                        </div>
                    </div>
                </div>
                {/foreach}
            </div>
        </div>
    </div>
    <div class="review-all py-4 my-5">
        <div class="d-flex align-items-center row">
            <div class="col-12 col-xl-3 label">Больше отзывов на:</div>
            <div class="col-12 col-xl-2">
                <a href="https://yandex.ru/profile/201295199127" rel="nofollow" class="my-2 ml-md-0 mr-md-2 mx-0 text-link">
                    <span class="text-danger">Я</span>ндекс<span class="text-warning">Отзывы</span></a>
            </div>
        </div>
    </div>
</section>
{/foreach}