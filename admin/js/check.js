$(function() {

    $('#upload-file').live('change', function() {
		if($('#file').val().length > 0) {
			$('.loading').show();
			$('.submit-box input').trigger('click');
		}
		
		else {
			$('.upload-messages').html('<span style="color: red";>Необходимо выбрать файл!</span>')
		}
		
        $(this).ajaxSubmit({
            success: function(data) {
				$('.upload-file-box').html($(data).find('#upload-file'));
				$('.loading').hide();
            },
			error: function(data) {
                $('.upload-file-box').html($(data).find('#upload-file'));
            },
            dataType: 'html'
        });

        return false;
    });
});