<div class="question_form_block">

    <div class="the_form the_form_mark2">

        <p class="form_title">Остались вопросы?</p>

        <p>
            Оставьте свой номер телефона, мы свяжемся с вами и все расскажем
        </p>

        <form method="post" class="mvtForm2" id="{$formID}_form">
            <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
            <input type="hidden" name="token" value="{$token}">
            <input type="hidden" name="form" value="{$formID}">

            <div class="the_form_item">
                <input type="text" name="{$formID}_name" placeholder="Ваше имя">
            </div>
            <div class="the_form_item">
                <input type="text" name="{$formID}_phone" class="mvtFormPhone" placeholder="Номер телефона" maxlength="17">
            </div>

            <div class="the_form_item_accept">
                <input type="checkbox" id="{$formID}_accept" name="{$formID}_accept" checked="checked" style="display:none;">

                <label class="checkbox1_label" for="{$formID}_accept">
                    <svg width="18px" height="18px" viewBox="0 0 18 18">
                        <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                        <polyline points="1 9 7 14 15 4"></polyline>
                    </svg>

                    <span>Я согласен с <a href="/policy" target="_blank" rel="nofollow">политикой конфиденциальности</a></span>
                </label>
            </div>

            <div class="the_form_item the_form_item_submit">
                <button id="form_question_submit" type="submit">Отправить</button>
            </div>
        </form>
    </div>
</div>