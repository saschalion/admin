<?php
$dblocation = "localhost";
$dbuser = "root";
$dbpasswd = "666";
$dbname="simple_cms";

//����������� � ���� ������
$dbcnx = @mysql_connect($dblocation,$dbuser,$dbpasswd);

//mysql_query('SET names "utf8"');
//mysql_query ("set character_set_client='UTF8'");
mysql_query ("set character_set_results='UTF8'");
//mysql_query ("set collation_connection='UTF8'");

if (!$dbcnx) // ���� ���������� ����� 0 ���������� �� �����������
 {
 echo("<p>� ��������� ������ ������ ���� ������ ��
         ��������, ������� ���������� ����������� ��������
         ����������.</p>");
 exit();
 }

if (!@mysql_select_db($dbname, $dbcnx))
 {
 echo( "<p>� ��������� ������ ���� ������ �� ��������,
          ������� ���������� ����������� �������� ����������.</p>" );
 exit();
 }

if (!isset($_SESSION['id']))
{
	// �� ��������� ��� ����
	// ����� ��� ���� ����� � ������ � ������ �������

	if (isset($_COOKIE['login']) && isset($_COOKIE['password']))
	{
		// ���� �� ����� �������
		// �� ������� ������������ ������������ �� ���� ������ � ������
		$login = mysql_real_escape_string($_COOKIE['login']);
		$password = mysql_real_escape_string($_COOKIE['password']);

		// � �� �������� � ������������ ����� �����:

		// ������ ������ � ��
		// � ���� ����� � ����� ������� � �������

		$query = "SELECT `id`
					FROM `users`
					WHERE `login`='{$login}' AND `password`='{$password}'
					LIMIT 1";
		$sql = mysql_query($query) or die(mysql_error());

		// ���� ����� ������������ �������
		if (mysql_num_rows($sql) == 1)
		{
			// �� �� ������ �� ���� ����� � ������ (�������� �� ����� ������� ID ������������)

			$row = mysql_fetch_assoc($sql);
			
			$_SESSION['user_id'] = $row['id'];

			// �� ��������, ��� ��� ������ � ����������� �������, � ��� � ������ ������� ������ �������������� session_start();
		}
	}
}
?>