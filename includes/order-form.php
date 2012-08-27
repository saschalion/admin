<?
error_reporting(E_ERROR | E_WARNING | E_PARSE);
function show_form()
{
?>
<a name="error"></a>
<form action="" class="order-form" method=post>
	<div class="label-box">
		<label for="first-name">��� <span>*</span></label>
		<input type="text" id="first-name" name="input_name[]" size="45"
			value="<?=substr(htmlspecialchars(trim($_POST['input_name'][0])), 0, 100);?>" >
		<input type="hidden" name="check[]" value="1">
	</div>
	<div class="label-box">
		<label for="phone">������� ��� ����� <span>*</span></label>
		<input type="text" id="phone" name="input_name[]" size="45"
			value="<?=substr(htmlspecialchars(trim($_POST['input_name'][1])), 0, 100);?>" >
		<input type="hidden" name="check[]" value="1">
	</div>
	<div class="label-box">
		<label for="problem-desc">�������� �������� <span>*</span></label>
		<textarea id="problem-desc" name="input_name[]"><?=substr(htmlspecialchars(trim($_POST['input_name'][2])), 0, 5000);?></textarea>
		<input type="hidden" name="check[]" value="1">
	</div>
	<div class="label-box submit-box">
		<input id="submit" type="submit" value="���������" name="submit">
	</div>
	<div class="help-text">
		<span>*</span> �������� ����, ������������ ��� ����������
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
	<strong>���:</strong> '.$_POST['input_name'][0].'<br /><br />
	<strong>������� ��� �����:</strong> '.$_POST['input_name'][1].'<br /><br />
	<strong>�������� ��������:</strong> '.$_POST['input_name'][2];
	// ���������� ���� ������ ��� �������� �����
	// ���� �� ������ ��� ������� - http://www.php-mail.ru/class.phpmailer.zip
	require 'class.phpmailer.php';

	$mail = new PHPMailer();
	$mail->From = '';      // �� ���� email
	$mail->FromName = '';   // �� ���� ���
	$mail->AddAddress(''); // ���� - �����, ���
	$mail->IsHTML(true);        // ���������� ������ ������ HTML
	$mail->Subject = '�����!';  // ���� ������
	$mail->Body = $mess;

	if($sendemail != 'No') {
		// ���������� ���� ������
		if (!$mail->Send()) die ('Mailer Error: '.$mail->ErrorInfo);
		echo "<h3 class='form-title'>�������! ���� ������ ����������.<br>��� ���������� �������� � ���� � ������� ���������� �����.</h3>";
	}
}
if (!empty($_POST['submit'])) complete_mail();
else show_form();
?>