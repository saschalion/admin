$(function() {

	var badWords = '/порн|хуй|ху€|хуе|хер|бл€|мудлан|пизд|пиздец|сука|ебет|ебут|ебать|ебало|ебальник|ебарь|ебатори€|ебатьс€|ебывать|ебетс€|ебец|ебуч|ебаль|ебельник|ебарь|ебало|ебатори€|ебануть|ебца|ебло|ебан|ебыва|ебливый|ебнет|ебну|елда|пиздeц|заеба|жопа|жопу|жопища|жопка|жопник|твою мать|ебена|дристать|задрищу|залупа|замудоха|засра|срать|говно|говн€|какать|кончить|манда/i';

	var badUrl = '(([а-€0-9\-\.]+)?[а-€0-9\-]+(!?\.[а-€]{2,4}))|(([a-z0-9\-\.]+)?[a-z0-9\-]+(!?\.[a-z]{2,4}))';
	
	var badNumbers = '(\d+)';
	
	var errorMessage = '<span class="error-message" style="display: block; margin: 10px 0; color: red">ќтправка ссылок и нецензурных слов запрещена!</span>';

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
	