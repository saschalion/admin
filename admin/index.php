<?php include('includes/head.php'); ?>
<body>
   <div class="wrap">
        <div class="header"></div>
        <div class="container container-middle">
            <div class="content">
                <div class="content-wrap">
					<?php include('includes/menu.php'); ?>
                    <div class="text">
                        <?php
							if (!isset($_SESSION['id']))
							{
								if (isset($_COOKIE['login']) && isset($_COOKIE['password']))
								{
									$login = mysql_escape_string($_COOKIE['login']);
									$password = mysql_escape_string($_COOKIE['password']);
                                    $role = mysql_escape_string($_COOKIE['role']);

									$query = "SELECT `id`, `role`
												FROM `users`
												WHERE `login`='{$login}' AND `password`='{$password}'
												LIMIT 1";
									$sql = mysql_query($query) or die(mysql_error());

									if (mysql_num_rows($sql) == 1)
									{
										$row = mysql_fetch_assoc($sql);
										$_SESSION['user_id'] = $row['id'];
                                        $_SESSION['role'] = $row['role'];
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

							print '<h3>Здраствуйте, ' . $welcome . '.</h3>';


							if (!isset($_SESSION['user_id']))
							{
								print '<p>Пожалуйста, <a href="login.php">авторизуйтесь</a>.</p>';
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
        <?php include('includes/footer.php'); ?> 
    </div> 
</body>
</html>