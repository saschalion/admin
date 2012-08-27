<?php

session_start();

include ('mysql.php');

/*
** ������� ��� ��������� ����, ������������� � ����������� ������
** ��������� 3 ��������� �������
*/

function GenerateSalt($n=3)
{
	$key = '';
	$pattern = '1234567890abcdefghijklmnopqrstuvwxyz.,*_-=+';
	$counter = strlen($pattern)-1;
	for($i=0; $i<$n; $i++)
	{
		$key .= $pattern{rand(0,$counter)};
	}
	return $key;
}

if (empty($_POST))
{
	?>
	
	<h3>����� ���� ������</h3>
	
	<form action="register.php" method="post">
		<table>
			<tr>
				<td>�����:</td>
				<td><input type="text" name="login" /></td>
			</tr>
			<tr>
				<td>������:</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="������������������" /></td>
			</tr>
		</table>
	</form>
	
	
	<?php
}
else
{
	// ����������� ��������� ������ �������� mysql_real_escape_string ����� �������� � ������� ��
	
	$login = (isset($_POST['login'])) ? mysql_real_escape_string($_POST['login']) : '';
	$password = (isset($_POST['password'])) ? mysql_real_escape_string($_POST['password']) : '';
	
	
	// ��������� �� ������� ������ (��������, ����� ������ � ������)
	
	$error = false;
	$errort = '';
	
	if (strlen($login) < 2)
	{
		$error = true;
		$errort .= '����� ������ ������ ���� �� ����� 2� ��������.<br />';
	}
	if (strlen($password) < 6)
	{
		$error = true;
		$errort .= '����� ������ ������ ���� �� ����� 6 ��������.<br />';
	}
	
	// ���������, ���� ���� � ������� � ����� �� �������
	$query = "SELECT `id`
				FROM `users`
				WHERE `login`='{$login}'
				LIMIT 1";
	$sql = mysql_query($query) or die(mysql_error());
	if (mysql_num_rows($sql)==1)
	{
		$error = true;
		$errort .= '������������ � ����� ������� ��� ���������� � ���� ������, ������� ������.<br />';
	}
	
	
	// ���� ������ ���, �� ��������� ����� � �������
	
	if (!$error)
	{
		// ���������� ���� � ������
		
		$salt = GenerateSalt();
		$hashed_password = md5(md5($password) . $salt);
		
		$query = "INSERT
					INTO `users`
					SET
						`login`='{$login}',
						`password`='{$hashed_password}',
						`salt`='{$salt}'";
		$sql = mysql_query($query) or die(mysql_error());
		
		
		print '<h4>�����������, �� ������� ����������������!</h4><a href="login.php">��������������</a>';
	}
	else
	{
		print '<h4>�������� ��������� ������</h4>' . $errort;
	}
}

?>