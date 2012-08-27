<!DOCTYPE HTML>
<html><head><title>Авторизация</title>
<meta NAME="Description" CONTENT="">
<meta NAME="Keywords" CONTENT="Seucomp">
<meta name="robots" content="INDEX,FOLLOW">
<meta http-equiv="content-language" content="ru">
<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="css/form.css" type="text/css">
<link rel="stylesheet" href="css/main.css" type="text/css">
<link rel="stylesheet" href="css/reset.css" type="text/css">
</head>
<body>
    <div class="wrap">
        <div class="header"></div>
        <div class="container clearfix">
            <div class="content">
                <div class="content-wrap">
                    <div class="text">	
						<? session_start();

						include ('includes/config.php');
						
						if (isset($_GET['logout']))
						{
							if (isset($_SESSION['user_id']))
								unset($_SESSION['user_id']);
								
							setcookie('login', '', 0, "/");
							setcookie('password', '', 0, "/");
							// и переносим его на главную
							header('Location: index.php');
							exit;
						}

						if (isset($_SESSION['user_id']))
						{
							// юзер уже залогинен, перекидываем его отсюда на закрытую страницу
							
							header('Location: /admin/list.php');
							exit;
						}

						if (!empty($_POST))
						{
							$login = (isset($_POST['login'])) ? mysql_real_escape_string($_POST['login']) : '';
							
							$query = "SELECT `id`
										FROM `users`
										WHERE `login`='{$login}'
										LIMIT 1";
							$sql = mysql_query($query) or die(mysql_error());
							
							if (mysql_num_rows($sql) == 1)
							{
								$row = mysql_fetch_assoc($sql);
								
								// итак, вот она соль, соответствующая этому логину:
								$salt = $row['salt'];
								
								// теперь хешируем введенный пароль как надо и повторям шаги, которые были описаны выше:
								$password = ($_POST['password']);
								
								// и пошло поехало...

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
									
									
									// если пользователь решил "запомнить себя"
									// то ставим ему в куку логин с хешем пароля
									
									$time = 86400; // ставим куку на 24 часа
									
									if (isset($_POST['remember']))
									{
										setcookie('login', $login, time()+$time, "/");
										setcookie('password', $password, time()+$time, "/");
									}
									
									// и перекидываем его на закрытую страницу
									header('Location: /admin/list.php');
									exit;

									// не забываем, что для работы с сессионными данными, у нас в каждом скрипте должно присутствовать session_start();
								}
								else
								{
									echo('<p>Такой логин с паролем не найдены в базе данных. И даём ссылку на повторную авторизацию. — <a href="login.php">Авторизоваться</a></p>');
								}
							}
							else
							{
								echo('<p>Пользователь с таким логином не найден</p>');
							}
						}

						print '
						<form action="login.php" method="post" class="order-form">
							<div class="label-box">
								<label for="title">
									Логин
								</label>
								<input type="text" name="login" />
							</div>
							<div class="label-box">
								<label for="title">
									Пароль
								</label>
								<input type="password" name="password" />
							</div>
							<div class="label-box">
								<label>
									Запомнить
									<input type="checkbox" name="remember" />
								</label>								
							</div>
							<div class="submit-box">
								<input type="submit" name="submit" />
							</div>
						</form> 
						';
						?>                                               
                    </div>
                </div>
            </div>
        </div>
        <div class="footer clearfix">
        </div>
    </div>
</body>
</html>