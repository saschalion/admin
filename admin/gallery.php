<?php include('includes/head.php'); ?>
<body>
   <div class="wrap">
        <div class="header"></div>
        <div class="container container-middle">
            <div class="content">
                <div class="content-wrap">
					<?php include('includes/menu.php'); ?>
                    <div class="text">
                        <h1>Галерея</h1>
						<div class="used">
							<small>
								<strong>
									Доступное пространство:	
								</strong>
								<?=$disc_free_space?>
							</small>
							<small>
								<strong>
									из	
								</strong>
								<?=$disc_total_space?>
							</small>
							<br><br>
						</div>
						<?php	
							if (isset($_SESSION['user_id'])) {
						?>
                            <?php gallery($check); ?>

                            <form method="post">
                                <ul class="b-actions b-actions_type_gallery clearfix">
                                    <li class="b-actions__item">
                                        <a class="b-actions__link b-button js-select-all-files" href="#">
                                            <b class="b-actions__icon b-actions__icon_icon_select-all"></b>
                                        <span class="b-actions__link-text">
                                            Выделить все
                                        </span>
                                        </a>
                                    </li>
                                    <li class="b-actions__item">
                                        <a class="b-actions__link b-button js-unselect" href="#">
                                            <b class="b-actions__icon b-actions__icon_icon_unselect"></b>
                                        <span class="b-actions__link-text">
                                            Снять выделение
                                        </span>
                                        </a>
                                    </li>
                                    <li class="b-actions__item">
                                        <div class="submit-box-gallery js-submit-box-gallery">
                                            <input type="submit" value="Удалить отмеченные" name="submit" title="Удалить отмеченные" class="b-button"/>
                                        </div>
                                    </li>
                                </ul>
                                <ul class="gallery-list clearfix">

                                    <?php

                                    $q = query("SELECT*FROM files where user_id='".escape($_SESSION['user_id'])."' ORDER BY id DESC");

                                    while($record = mysql_fetch_array($q)) { ?>

                                        <?php gallery_delete($delete, $node); ?>

                                        <li>
                                            <img src="<?=$record['url']?>" alt=""/></br>
                                            <div class="file-url">
                                                <strong>Ссылка</strong>: <?=$record['url']?>
                                            </div>
                                            <a class="b-actions__link js-confirm" href="gallery.php?node=<?=$record['id']?>&delete=true">
                                                <b class="b-actions__icon b-actions__icon_icon_delete"></b>
                                                <span class="b-actions__link-text">Удалить</a>
                                            </a>
                                            <input type="checkbox" name="check[]" class="js-checkbox" value="<?=$record['id']?>"/>

                                            <?php used_pictures($record) ?>
                                        </li>

                                   <?php } ?>
                                </ul>
                            </form>
						<?php
							}
							else
							{
								echo('<p>Доступ закрыт, Вам необходимо <a href="/login.php">авторизоваться</a>.</p>');
							}
						?>
                    </div>
                </div>
            </div>
        </div>
        <?php include('includes/footer.php'); ?> 
    </div>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="js/confirm.js"></script>
    <script src="js/gallery.js"></script>
</body>
</html>