$('.js-select-all-files').click(function() {

    var checkbox = $('.js-checkbox');

    var icon = $(this).find($('.b-actions__icon'));

    var text = $(this).find($('.b-actions__link-text'));

    if(checkbox.length) {

        text.text(text.text() == 'Снять выделение' ? 'Выделить все' : 'Снять выделение');

        if(icon.hasClass('b-actions__icon_icon_select-all')) {
            icon.removeClass('b-actions__icon_icon_select-all').addClass('b-actions__icon_icon_unselect');
        }
        else {
            icon.addClass('b-actions__icon_icon_select-all').removeClass('b-actions__icon_icon_unselect');
        }

        if (!checkbox.hasClass('checked')) {;
            checkbox.attr('checked', 'checked').addClass('checked');
        }
        else {
            checkbox.removeAttr('checked').removeClass('checked');
        }
    }

   return false;
});