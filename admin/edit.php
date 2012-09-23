<?php include('includes/head.php'); ?>
<?php 
	$showArticle = showArticle($node);
	$title = $showArticle[0];
	$content = $showArticle[1];
	$metaTitle = $showArticle[2];
	$metaKeywords = $showArticle[3];
	$metaDesc = $showArticle[4];
	$linkText = $showArticle[5];
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
					
                        <?php
							$save = saveArticle($save, $title_edit, $text_edit, $meta_title, $meta_keywords, $meta_desc, $category_edit, $link_text_edit);
							echo $save[1];
						?>
						<h1>Редактировать "<?php print $title; ?>"</h1>
						<form action="edit.php" method="post" class="order-form">
						    <div class="label-box">
								<label for="title">
									Заголовок
								</label>
								<input name="title_edit" id="title" type="text" value="<?php echo $title; ?>">
							</div>
							<div class="label-box">
								<label for="desc">
									Описание								
								</label>
								<textarea name="text_edit" id="desc" rows="15"><?php echo $content; ?></textarea>
							</div>
							<div class="label-box">
                                <label for="meta-title">
                                    Категория
                                </label>
                                <select name="category_edit">
                                    <?php showCurrentCategory($node); ?>
                                </select>
                            </div>
							<div class="label-box">
                                    <label for="link-text">
                                        Текст ссылки
                                    </label>
                                    <input name="link_text_edit" id="link-text" type="text" value="<?php echo $linkText; ?>">
                                </div>
							<div class="label-box">
								<label for="meta-title">
									Title
								</label>
								<input name="meta_title" id="meta-title" type="text" value="<?php echo $metaTitle; ?>">
							</div>
							<div class="label-box">
								<label for="meta-keywords">
									Meta Keywords
								</label>
								<input name="meta_keywords" id="meta-keywords" type="text" value="<?php echo $metaKeywords; ?>">
							</div>
							<div class="label-box">
								<label for="meta-desc">
									Meta Description
								</label>
								<input name="meta_desc" id="meta-desc" type="text" value="<?php echo $metaDesc; ?>">
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