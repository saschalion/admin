<?php include('includes/head.php'); ?>
<?php 
	$show_article = show_article($node);
	$title = $show_article[0];
	$content = $show_article[1];
	$meta_title = $show_article[2];
	$meta_keywords = $show_article[3];
	$meta_desc = $show_article[4];
	$link_text = $show_article[5];
?>
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
						<?php include('includes/upload.php'); ?>

                        <?php save_article($save, $title_edit, $text_edit, $meta_title_edit, $meta_keywords_edit, $meta_desc_edit, $category_edit, $link_text_edit);?>

						<h1>Редактировать "<?=$title?>"</h1>
						<form action="edit.php" method="post" class="order-form">
						    <div class="label-box">
								<label for="title">
									Заголовок
								</label>
								<input name="title_edit" id="title" type="text" value="<?=$title?>">
							</div>
							<div class="label-box">
								<label for="desc">
									Описание								
								</label>
								<textarea name="text_edit" id="desc" rows="15"><?=$content?></textarea>
							</div>
							<div class="label-box">
                                <label for="meta-title">
                                    Категория
                                </label>
                                <select name="category_edit">
                                    <?php show_current_category($node); ?>
                                </select>
                            </div>
							<div class="label-box">
                                    <label for="link-text">
                                        Текст ссылки
                                    </label>
                                    <input name="link_text_edit" id="link-text" type="text" value="<?=$link_text?>">
                                </div>
							<div class="label-box">
								<label for="meta-title">
									Title
								</label>
								<input name="meta_title_edit" id="meta-title" type="text" value="<?=$meta_title?>">
							</div>
							<div class="label-box">
								<label for="meta-keywords">
									Meta Keywords
								</label>
								<input name="meta_keywords_edit" id="meta-keywords" type="text" value="<?=$meta_keywords?>">
							</div>
							<div class="label-box">
								<label for="meta-desc">
									Meta Description
								</label>
								<input name="meta_desc_edit" id="meta-desc" type="text" value="<?=$meta_desc?>">
							</div>
							<p class="submit-box">
								<input name="save" type="submit" value="Сохранить">
							</p>							
						</form>
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