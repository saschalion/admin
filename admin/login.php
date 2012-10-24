<?php

session_start();

include ('../includes/config.php');

if (isset($_GET['logout']))
{
	if (isset($_SESSION['user_id']))
		unset($_SESSION['user_id']);
		
	setcookie('login', '', 0, "/");
	setcookie('password', '', 0, "/");
    setcookie('role', '', 0, "/");
	// и переносим его на главную
	header('Location: index.php');
	exit;
}

if (isset($_SESSION['user_id']))
{
	// юзер уже залогинен, перекидываем его отсюда на закрытую страницу
	
	header('Location: list.php');
	exit;
}

if (!empty($_POST))
{
	$login = (isset($_POST['login'])) ? mysql_real_escape_string($_POST['login']) : '';
	
	$query = "SELECT `salt`
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
		$password = md5(md5($_POST['password']) . $salt);


		
		// и пошло поехало...

		// делаем запрос к БД
		// и ищем юзера с таким логином и паролем

		$query = "SELECT `id`, `role`
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
            $_SESSION['role'] = $row['role'];

            $role = $row['role'];
			
			// если пользователь решил "запомнить себя"
			// то ставим ему в куку логин с хешем пароля
			
			$time = 86400; // ставим куку на 24 часа
			
			if (isset($_POST['remember']))
			{
				setcookie('login', $login, time()+$time, "/");
				setcookie('password', $password, time()+$time, "/");
                setcookie('role', $role, time()+$time, "/");
			}
			
			// и перекидываем его на закрытую страницу

            if($_SESSION['role'] == 'admin') {
                header('Location: list.php');
            }

            if($_SESSION['role'] == 'user') {
                header('Location: gallery.php');
            }

			exit;

			// не забываем, что для работы с сессионными данными, у нас в каждом скрипте должно присутствовать session_start();
		}
		else
		{
			$message = 'Такой логин с паролем не найдены в базе данных';
		}
	}
	else
	{
		$message = 'Пользователь с таким логином не найден';
	}
}
?>
<!DOCTYPE HTML>
<html><head><title></title>
<meta NAME="Description" CONTENT="">
<meta NAME="Keywords" CONTENT="">
<meta name="robots" content="INDEX,FOLLOW">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<meta http-equiv="content-language" content="ru">
<link rel="shortcut icon" href="../images/favicon.png" type="image/x-icon">
<link rel="icon" href="../images/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="css/b-login.css" type="text/css">
</head>
<body>
<div class="b-login">
	<h1 class="b-login__title">
		Авторизация
	</h1>
	<form action="login.php" method="post" class="b-login__form">		
		<div class="b-login__form-inner">
			<?php if($message) { ?>		
				<p class="b-login__message">
					<?php echo $message; ?>
				</p>
			<?php } ?>
			<div class="b-login__fileds">
				<label class="b-login__label">
					<span class="b-login__text">
						Логин
					</span>
					<input type="text" name="login" class="b-login__input_text"/>
				</label>
			</div>
			<div class="b-login__fileds">
				<label class="b-login__label">
					<span class="b-login__text">
						Пароль
					</span>
					<input type="password" name="password" class="b-login__input_password"/>
				</label>
			</div>
			<div class="b-login__fileds">
				<label class="b-login__label b-login__label_display_inline">
					<span class="b-login__text">
						Запомнить
					</span>
					<input type="checkbox" name="remember" class="b-login__input_checkbox"/>
				</label>
			</div>
			<p class="b-login__submit">
				<input type="submit" class="b-login__input_submit" value="Войти"/>
			</p>
		</div>		
	</form>
</div>
</body>
</html>