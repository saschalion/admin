$(function() {

    $('.js-confirm').live('click', function (){
        var message = $(this).attr('data-confirm-message');
        if (confirm(message ? message:'Вы уверены?')) {					
        } else {
            return false;
        }
    });
	
	$(".js-flash-message").delay(5000).slideUp(300);
	$(".js-error-message").delay(5000).slideUp(300);
	
	if($('.js-flash-message').length) {
		$('.js-loading').show();
		setTimeout("window.location = 'list.php'", 5000);
	};
	if($('.js-file-flash-message').length) {
		setTimeout("window.location = 'gallery.php'", 0);
	}
})

