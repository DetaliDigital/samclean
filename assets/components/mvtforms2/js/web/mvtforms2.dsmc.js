$(document).ready(function ($) {

    mvtForms2.callbacks.success = function(response) {
        Notiflix.Notify.Success(response.data.answer);
        yaCounter46215351.reachGoal(response.form);

        $('#' + response.form + '_form').reset();

        if(response.form == 'horizontal_form') {
        for (var i = 0; i < Dropzones.length; i++) {
        Dropzones[i].removeAllFiles(true);
        }
        }
    };

    mvtForms2.callbacks.error = function(response) {
        Notiflix.Notify.Failure(response.data.message);
    };
});
