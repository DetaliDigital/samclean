$(document).ready(function () {
    $('.box-menu-toggler').click(function () {

        $('.ham').toggleClass('active');
        $('.ham').closest('body').toggleClass('modal-open');
        $('.ham').closest('.box-menu-toggler').toggleClass('show');

        if ($('.modal.modal-left').hasClass('show')) {
            $('.modal-left').removeClass('show');
            setTimeout(function (e) {
                $('.modal-left').addClass('hide') , 300
            });
        } else {
            $('.modal-left').show();
            setTimeout(function () {
                $('.modal-left').addClass('show') , 1
            });
        }

        if (!$('.box-navigation-service').children().length > 0) {
            $('.ham').parents('body').find('.nav-service').clone().appendTo('.box-navigation-service').addClass('flex-column');
        }
        ;
    });
});