﻿<!DOCTYPE HTML>
<?php include('includes/head.php'); ?>
</head>
<body>
    <div class="wrap">
        <div class="header"></div>
        <div class="container">
            <div class="content">
                <div class="content-wrap">
					<?php include('includes/menu.php'); ?>
                    <div class="text">
					
						<?php						
							if (isset($_SESSION['user_id'])) {
						?>
						
						<h1>Добавить статью</h1>
						
						<?php include('includes/upload.php'); ?>
						<?php
						    if($send) {
                                if(empty($my_title) || empty($my_text) || empty($meta_title) || empty($meta_keywords) || empty($meta_desc)) {
                                    $message = '<span style="color: #ff0000">Поля не должны быть пустыми!</span>';
									$value = array($my_title, $my_text, $meta_title, $meta_keywords, $meta_desc, $link_text);
                                }
                                else {
                                    send_sql();
									
									$result = mysql_insert_id();
									
									$message = '<span style="color: green">Статья успешно добавлена!</span>';
									
									$to  = "saschalion@list.ru" ; 

									$subject = "Добавлена новая статья: '". $_POST['my_title'] . "'";

									$mail_message = $_POST['my_text'] . '<br><br> Просмотреть можно <a href="http://cms.web-fortuna.ru/article.php?node='.$result.'">здесь</a>';

									$headers  = "Content-type: text/html; charset=utf-8 \r\n"; 
									$headers .= "From: saschalion@list.ru Админка"; 

//									mail($to, $subject, $mail_message, $headers);
                                }

                            }
						?>
						<div class="order-form-box">
							<form action="new.php" method="post" class="order-form">
								<p>
									<?=$message?>
								</p>
								
								<div class="label-box">
									<label for="title">
										Заголовок
									</label>
									<input name="my_title" id="title" type="text" value="<?=$value[0]?>">
								</div>								
								<div class="label-box">
									<label for="desc">
										Описание								
									</label>
									<textarea name="my_text" id="desc" rows="15"><?=$value[1]?></textarea>
								</div>
								<div class="label-box">
                                    <label for="categories">
                                        Категория
                                    </label>
                                    <select name="categories" id="categories">
                                        <?php show_categories(); ?>
                                    </select>
                                </div>
								<div class="label-box">
                                    <label for="link-text">
                                        Текст ссылки
                                    </label>
                                    <input name="link_text" id="link-text" type="text" value="<?=$value[5]?>">
                                </div>
								<div class="label-box">
									<label for="meta-title">
										Title
									</label>
									<input name="meta_title" id="meta-title" type="text" value="<?=$value[2]?>">
								</div>
								<div class="label-box">
									<label for="meta-keywords">
										Meta Keywords
									</label>
									<input name="meta_keywords" id="meta-keywords" type="text" value="<?=$value[3]?>">
								</div>
								<div class="label-box">
									<label for="meta-desc">
										Meta Description
									</label>
									<input name="meta_desc" id="meta-desc" type="text" value="<?=$value[4]?>">
								</div>
								<p class="submit-box">
									<input name="send" type="submit" value="Сохранить">
								</p>							
							</form>
						</div>						
						
						<?php
							}
							else
							{
								echo('<p>Доступ закрыт, Вам необходимо <a href="/login.php">авторизоваться</a></p>');
							}
						?>	
                    </div>
                </div>
            </div>
        </div>
        <?php include('includes/footer.php'); ?> 
    </div>	
	<script src="js/libs/form.js" type="text/javascript"></script>
	<script src="js/check.js" type="text/javascript"></script>		
	<script type="text/javascript" src="js/libs/tiny/tiny_mce.js"></script>
    <script type="text/javascript" src="js/tiny-mce-run.js"></script>
</body>
</html>
<?php
  $_SESSION['id'] = $node;
?>