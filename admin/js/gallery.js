
var box = $('.js-submit-box-gallery');

var checkbox = $('.js-checkbox');

var unselect = $('.js-unselect');

var row = $('.b-table__row');

unselect.hide();

$('.js-select-all-files').click(function() {
    if ($(this).filter(':checked:first').length == 0) {
        box.show();
        unselect.show();
        checkbox.attr('checked', 'checked').addClass('checked').closest(row).addClass('b-table__row_state_chosen');
    }
    return false;
});

$('.js-unselect').click(function() {
    if (checkbox.filter(':checked:first').length > 0) {
        box.hide();
        unselect.hide();
        checkbox.removeAttr('checked').removeClass('checked').closest(row).removeClass('b-table__row_state_chosen');
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

checkbox.live('click', function(){
    if (!$(this).hasClass('checked')) {
        $(this).addClass('checked').closest(row).addClass('b-table__row_state_chosen');
    }
    else {

        $(this).removeClass('checked').closest(row).removeClass('b-table__row_state_chosen');
    }
});
