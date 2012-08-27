<?
error_reporting(E_ERROR | E_WARNING | E_PARSE);
function show_form()
{
?>
<a name="error"></a>
<form action="" class="order-form" method=post>
	<div class="label-box">
		<label for="first-name">Имя <span>*</span></label>
		<input type="text" id="first-name" name="input_name[]" size="45"
			value="<?=substr(htmlspecialchars(trim($_POST['input_name'][0])), 0, 100);?>" >
		<input type="hidden" name="check[]" value="1">
	</div>
	<div class="label-box">
		<label for="phone">Телефон для связи <span>*</span></label>
		<input type="text" id="phone" name="input_name[]" size="45"
			value="<?=substr(htmlspecialchars(trim($_POST['input_name'][1])), 0, 100);?>" >
		<input type="hidden" name="check[]" value="1">
	</div>
	<div class="label-box">
		<label for="problem-desc">Описание проблемы <span>*</span></label>
		<textarea id="problem-desc" name="input_name[]"><?=substr(htmlspecialchars(trim($_POST['input_name'][2])), 0, 5000);?></textarea>
		<input type="hidden" name="check[]" value="1">
	</div>
	<div class="label-box submit-box">
		<input id="submit" type="submit" value="Отправить" name="submit">
	</div>
	<div class="help-text">
		<span>*</span> Помечены поля, обязательные для заполнения
	</div>
</form>
<?
}
function complete_mail() {

	$empty_input[] = 'first-name';
	$empty_input[] = 'phone';
	$empty_input[] = 'problem-desc';

	echo "<script>\n$(function(){\nwindow.location = '#error';\n";

	for ($i=0; $i<count($_POST['input_name']); $i++) {

		$_POST['input_name'][$i] = str_replace("\n","<br>", substr(htmlspecialchars(trim($_POST['input_name'][$i])), 0, 1000));
		if(substr(htmlspecialchars(trim($_POST['check'][$i])), 0, 1) == 1) {
			if(empty($_POST['input_name'][$i])) {
				$sendemail = 'No';
				echo "$('#$empty_input[$i]').parent().addClass('error'); \n";
			}
		}
	}

	echo "\n });\n</script>";

	if($sendemail == 'No') show_form();
	$mess = '
	<strong>Имя:</strong> '.$_POST['input_name'][0].'<br /><br />
	<strong>Телефон для связи:</strong> '.$_POST['input_name'][1].'<br /><br />
	<strong>Описание проблемы:</strong> '.$_POST['input_name'][2];
	// подключаем файл класса для отправки почты
	// если Вы забыли его скачать - http://www.php-mail.ru/class.phpmailer.zip
	require 'class.phpmailer.php';

	$mail = new PHPMailer();
	$mail->From = '';      // от кого email
	$mail->FromName = '';   // от кого имя
	$mail->AddAddress(''); // кому - адрес, Имя
	$mail->IsHTML(true);        // выставляем формат письма HTML
	$mail->Subject = 'Заказ!';  // тема письма
	$mail->Body = $mess;

	if($sendemail != 'No') {
		// отправляем наше письмо
		if (!$mail->Send()) die ('Mailer Error: '.$mail->ErrorInfo);
		echo "<h3 class='form-title'>Спасибо! Ваша заявка отправлена.<br>Наш специалист свяжется с Вами в течение нескольких минут.</h3>";
	}
}
if (!empty($_POST['submit'])) complete_mail();
else show_form();
?>