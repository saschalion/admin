$(function() {

	var badWords = '/����|���|���|���|���|���|������|����|������|����|����|����|�����|�����|��������|�����|��������|�������|�������|������|����|����|�����|��������|�����|�����|��������|�������|����|����|����|�����|�������|�����|����|����|����e�|�����|����|����|������|�����|������|���� ����|�����|��������|�������|������|��������|�����|�����|�����|�����|������|�������|�����/i';

	var badUrl = '(([�-�0-9\-\.]+)?[�-�0-9\-]+(!?\.[�-�]{2,4}))|(([a-z0-9\-\.]+)?[a-z0-9\-]+(!?\.[a-z]{2,4}))';
	
	var badNumbers = '(\d+)';
	
	var errorMessage = '<span class="error-message" style="display: block; margin: 10px 0; color: red">�������� ������ � ����������� ���� ���������!</span>';

	$('#submit').click(function() {
	if ($('#order-number').val().match(badUrl)) {
	  $('.error-message').empty();
	  $('.order-form').prepend(errorMessage);
			return false;
	} 
	if ($('#order-number').val().match(badWords)) {
	  $('.error-message').empty();
	  $('.order-form').prepend(errorMessage);
			return false;
	} 
	if ($('#phone').val().match(badWords)) {
	  $('.error-message').empty();
	  $('.order-form').prepend(errorMessage);
			return false;
	} 
	 if ($('#phone').val().match(badUrl)) {
	  $('.error-message').empty();
	  $('.order-form').prepend(errorMessage);
			return false;
	} 
	if ($('#problem-desc').val().match(badWords)) {
	  $('.error-message').empty();
	  $('.order-form').prepend(errorMessage);
			return false;
	} 
	 if ($('#problem-desc').val().match(badUrl)) {
	  $('.error-message').empty();
	  $('.order-form').prepend(errorMessage);
			return false;
	} 
	else return true;
	});
});	
	