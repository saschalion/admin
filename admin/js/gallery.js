
box = $('.js-submit-box-gallery');

checkbox = $('.js-checkbox');

unselect = $('.js-unselect');

unselect.hide();

$('.js-select-all-files').click(function() {

    if ($(this).filter(':checked:first').length == 0) {
        box.show();
        unselect.show();
        checkbox.attr('checked', 'checked');
    }
    return false;
});

$('.js-unselect').click(function() {

    if (checkbox.filter(':checked:first').length > 0) {
        box.hide();
        unselect.hide();
        checkbox.removeAttr('checked');
    }
    return false;
});

$('body').on('change', function() {
    if (checkbox.filter(':checked').length > 0) {
        box.show();
        unselect.show();
    }
    else {
        box.hide();
        unselect.hide();
    }
});
