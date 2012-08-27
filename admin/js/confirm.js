$(function() {

    $('.js-confirm').live('click', function (){
        var message = $(this).attr('data-confirm-message');
        if (confirm(message ? message:'Вы уверены?')) {

        } else {
            return false;
        }
    });
})
