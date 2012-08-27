<?
$dblocation = "web-fortun.mysql";
$dbuser = "web-fortun_mysql";
$dbpasswd = "dhx1ve3q";
$dbname="web-fortun_cms";

//Подключение к базе данных
$dbcnx = @mysql_connect($dblocation,$dbuser,$dbpasswd);
if (!$dbcnx) // Если дескриптор равен 0 соединение не установлено
 {
 echo("<p>В настоящий момент сервер базы данных не
         доступен, поэтому корректное отображение страницы
         невозможно.</p>");
 exit();
 }

if (!@mysql_select_db($dbname, $dbcnx))
 {
 echo( "<p>В настоящий момент база данных не доступна,
          поэтому корректное отображение страницы невозможно.</p>" );
 exit();
 }
?>