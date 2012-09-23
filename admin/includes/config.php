<?php
$dblocation = "web-fortun.mysql";
$dbuser = "web-fortun_mysql";
$dbpasswd = "dhx1ve3q";
$dbname="web-fortun_admin";

//Подключение к базе данных
$dbcnx = @mysql_connect($dblocation,$dbuser,$dbpasswd);

//mysql_query('SET names "utf8"');
//mysql_query ("set character_set_client='UTF8'");
//mysql_query ("set character_set_results='UTF8'");
//mysql_query ("set collation_connection='UTF8'");

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

if (!isset($_SESSION['id']))
{
	// то проверяем его куки
	// вдруг там есть логин и пароль к нашему скрипту

	if (isset($_COOKIE['login']) && isset($_COOKIE['password']))
	{
		// если же такие имеются
		// то пробуем авторизовать пользователя по этим логину и паролю
		$login = mysql_escape_string($_COOKIE['login']);
		$password = mysql_escape_string($_COOKIE['password']);

		// и по аналогии с авторизацией через форму:

		// делаем запрос к БД
		// и ищем юзера с таким логином и паролем

		$query = "SELECT `id`
					FROM `users`
					WHERE `login`='{$login}' AND `password`='{$password}'
					LIMIT 1";
		$sql = mysql_query($query) or die(mysql_error());

		// если такой пользователь нашелся
		if (mysql_num_rows($sql) == 1)
		{
			// то мы ставим об этом метку в сессии (допустим мы будем ставить ID пользователя)

			$row = mysql_fetch_assoc($sql);
			
			$_SESSION['user_id'] = $row['id'];

			// не забываем, что для работы с сессионными данными, у нас в каждом скрипте должно присутствовать session_start();
		}
	}
}
?>