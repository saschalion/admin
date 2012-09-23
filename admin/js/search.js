$(function() {
    $('.js-b-search').live('keyup submit change', function() {
		if(($('.js-b-search__input_text').val().length > 0) || $('.js-b-search__select').val() != 0) {
			$('.loading').show();
			$('.b-pagi').hide();
		}
		else {			
			$('.b-pagi').show();
		}
	
        $(this).ajaxSubmit({
            success: function(data) {
				$('.js-results').html($(data).find('.js-result'));
				$('.js-b-table-box').html($(data).find('.js-b-table'));
				$('.loading').hide();
            },
			error: function(data) {
                $('.js-b-table-box').html($(data).find('.js-b-table'));
            },
            dataType: 'html'
        });

        return false;
    });	
	
	$('.js-b-search__input_reset').live('click', function() {
		if(($('.js-b-search__input_text').val().length > 0) || $('.js-b-search__select').val() != 0) {
			$('.js-b-search__select option').first().attr('selected', 'selected');
			$('.js-b-search__input_text').val('');
			$('.js-b-search__input_submit').trigger('click');
		}	
		
		return false;
	})
});