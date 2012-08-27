$(function() {

    $('#upload-file').live('submit', function() {
        $(this).ajaxSubmit({
            success: function(data) {
				$('.upload-file-box').html($(data).find('#upload-file'));
            },
			error: function(data) {
                $('.upload-file-box').html($(data).find('#upload-file'));
            },
            dataType: 'html'
        });

        return false;
    });
});