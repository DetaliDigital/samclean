{set $minifyjs = '!modxMinify' | snippet : [
'group' => 'js'
]}

<script src="{$minifyjs}"></script>
<!--<script src="assets/template/js/slick.min.js" integrity="sha256-zUQGihTEkA4nkrgfbbAM1f3pxvnWiznBND+TuJoUv3M=" crossorigin="anonymous"></script>-->
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>-->
<!--<script src="assets/template/js/main.js"></script>-->
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
        ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }
    // this is set to Bootstrapious website as you cannot
    // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
    // while using file:// protocol
    // pls don't forget to change to your domain :)
    injectSvgSprite('{'assets_url' | option}/template/icons/svg-sprite.svg');
</script>

{'callibri' | option}