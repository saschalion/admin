<!DOCTYPE HTML>
<?php include ('../includes/config.php'); ?>
<?php include ('../includes/functions.php'); ?>
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
					<?php include('../includes/menu.php'); ?>
                    <div class="text">
					
						<?php						
							if (isset($_SESSION['user_id'])) {
						?>
						
						<h1>Добавить статью</h1>
						
						<h2>Загрузка файлов на сервер</h2>
						
						<?php
							if($sendFile) {
								if($_FILES["file"]["size"] > 1024*3*1024)
								   {
									 echo ("Размер файла превышает три мегабайта");
									 exit;
								   }
								   // Проверяем загружен ли файл
								   if(is_uploaded_file($_FILES["file"]["tmp_name"]))
								   {
									 // Если файл загружен успешно, перемещаем его
									 // из временной директории в конечную
									 move_uploaded_file($_FILES["file"]["tmp_name"], "../uploads/".$_FILES["file"]["name"]);
									 $sendMessage = "<span style='color: green;'>Файл успешно загружен!</span> Скопируйте ссылку файла в текстовый редактор:" . "/uploads/" . $_FILES["file"]["name"];
								   } else {
									  echo("Ошибка загрузки файла");
								   }
							}						   
						?>
						<div class="upload-file-box">
							<form action="new.php" method="post" class="order-form" id="upload-file" enctype="multipart/form-data">
								<div class="label-box">
									<input type="file" name="file"/>
									<?php echo $sendMessage; ?>	
								</div>
								<p class="submit-box">
									<input type="submit" name="sendFile" value="Загрузить"/>
								</p>							
							</form>
						</div>							
						
						<?php
						    if($send) {

                                if(empty($_POST['my_title']) || empty($_POST['my_text'])) {
                                    $message = '<span style="color: #ff0000">Поля не должны быть пустыми!</span>';
                                }
                                else {
                                    sendSql();
									$message = '<span style="color: green">Статья успешно добавлена!</span>';
                                }

                            }
						?>
						<?php echo $message; ?>
						
						<form action="new.php" method="post" class="order-form">
						    <div class="label-box">
								<label for="title">
									Заголовок
								</label>
								<input name="my_title" id="title" type="text" value="">
							</div>
							<div class="label-box">
								<label for="desc">
									Описание								
								</label>
								<textarea name="my_text" id="desc" rows="15"></textarea>
							</div>
							<p class="submit-box">
								<input name="send" type="submit" value="Сохранить">
							</p>							
						</form>
						
						<?php
							}
							else
							{
								die('<p>Доступ закрыт, Вам необходимо <a href="/login.php">авторизоваться</a></p>');
							}
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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	<script src="js/libs/form.js" type="text/javascript"></script>
	<script src="js/check.js" type="text/javascript"></script>		
	<script type="text/javascript" src="js/libs/tiny/tiny_mce.js"></script>
    <script type="text/javascript" src="js/tiny-mce-run.js"></script>
</body>
</html>
<?php
  $_SESSION['user_id'] = $node;
?>