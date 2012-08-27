<!DOCTYPE HTML>
<?php session_start(); include ('includes/config.php'); ?>
<html><head><title></title>
<meta NAME="Description" CONTENT="">
<meta NAME="Keywords" CONTENT="">
<meta name="robots" content="INDEX,FOLLOW">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<meta http-equiv="content-language" content="ru">
<link rel="shortcut icon" href="../images/favicon.png" type="image/x-icon">
<link rel="icon" href="../images/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="../css/main.css" type="text/css">
<link rel="stylesheet" href="../css/form.css" type="text/css">
<link rel="stylesheet" href="../css/reset.css" type="text/css">
</head>
<body>
    <div class="wrap">
        <div class="header"></div>
        <div class="container clearfix">
            <div class="content">
                <div class="content-wrap">
                    <ul class="menu">
                        <li>
                            <a href="../articles.php">Статьи</a>
                        </li>
                        <li class="price">
                            <a href="/admin/list.php">Админка</a>
                        </li>
                    </ul>
                    <div class="text">
					<?php
						// если пользователь не авторизован

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

						if (isset($_SESSION['user_id']))
						{
							$query = "SELECT `login`
										FROM `users`
										WHERE `id`='{$_SESSION['user_id']}'
										LIMIT 1";
							$sql = mysql_query($query) or die(mysql_error());
							
							// если нету такой записи с пользователем
							// ну вдруг удалили его пока он лазил по сайту.. =)
							// то надо ему убить ID, установленный в сессии, чтобы он был гостем
							if (mysql_num_rows($sql) != 1)
							{
								header('Location: login.php?logout');
								exit;
							}
							
							$row = mysql_fetch_assoc($sql);
							
							$welcome = $row['login'];
						}
						else
						{
							$welcome = 'гость';
						}

						print '<h3>Здраствуйте, ' . $welcome . '.</h3>

						<a href="/admin/list.php">Админка</a><br />';


						if (!isset($_SESSION['user_id']))
						{
							print '<a href="login.php">Авторизация</a><br />';
							print '<a href="register.php">Регистрация</a><br />';
						}
						else
						{
							print '<a href="login.php?logout">Выход</a><br />';
						}

						print '<p><small>* Для авторизации использовать логин: <b>md5</b> и пароль: <b>password</b></small></p>';

						?>					
                    </div>
                </div>
            </div>
        </div>
        <div class="footer clearfix">
            <p class="copyright">
                &copy; 2012
            </p>
            <div class="footer-banners"></div>
        </div>
    </div> 
	<script type="text/javascript" src="js/libs/tiny/tiny_mce.js"></script>
    <script type="text/javascript" src="js/tiny-mce-run.js"></script>
</body>
</html>
<?
  $_SESSION['user_id'] = $node;
?>