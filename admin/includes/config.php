<?
$dblocation = "web-fortun.mysql";
$dbuser = "web-fortun_mysql";
$dbpasswd = "dhx1ve3q";
$dbname="web-fortun_cms";

//����������� � ���� ������
$dbcnx = @mysql_connect($dblocation,$dbuser,$dbpasswd);
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
?>