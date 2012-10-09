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
                            <?php if(mysql_num_rows($all_files_query) > 0) { ?>
                                <form method="post" class="js-gallery">
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
                                                <input type="submit" value="Удалить отмеченные" name="submit" title="Удалить отмеченные" class="b-button js-confirm"/>
                                            </div>
                                        </li>

                                    </ul>
                                    <table class="b-table gallery">
                                        <thead class="b-table__head">
                                            <tr class="b-table__row">
                                                <th class="b-table__column">&nbsp;</th>
                                                <th class="b-table__column">
                                                    Картинка
                                                </th>
                                                <th class="b-table__column">
                                                    Размер
                                                </th>
                                                <th class="b-table__column">
                                                    Ссылка
                                                </th>
                                                <th class="b-table__column">
                                                    Использование
                                                </th>
                                                <th class="b-table__column">
                                                    Добавлена
                                                </th>
                                                <th class="b-table__column">
                                                    Действия
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody class="b-table__body">
                                            <?php

                                            while($record = mysql_fetch_array($all_files_query)) { ?>

                                                <?php gallery_delete($delete, $node); ?>

                                                <tr class="b-table__row">
                                                    <td class="b-table__column">
                                                        <input type="checkbox" name="check[]" class="js-checkbox" value="<?=$record['id']?>"/>
                                                    </td>
                                                    <td class="b-table__column">
                                                        <img class="gallery-img" src="<?=$record['url']?>" alt=""/>
                                                    </td>
                                                    <td class="b-table__column">
                                                        <div class="file-url">
                                                            <?php get_file_size('..' . $record['url']); ?>
                                                        </div>
                                                    </td>
                                                    <td class="b-table__column">
                                                        <div class="file-url">
                                                            <?=$record['url']?>
                                                        </div>
                                                    </td>
                                                    <td class="b-table__column">
                                                        <?php used_pictures($record) ?>
                                                    </td>
                                                    <td class="b-table__column">
                                                        <div class="file-url">
                                                            <small>
                                                                <?=$record['created_at']?>
                                                            </small>
                                                        </div>
                                                    </td>
                                                    <td class="b-table__column">
                                                        <a class="b-actions__link js-confirm" href="gallery.php?node=<?=$record['id']?>&delete=true">
                                                            <b class="b-actions__icon b-actions__icon_icon_delete"></b>
                                                            <span class="b-actions__link-text">Удалить</a>
                                                        </a>
                                                    </td>
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </form>
                            <?php } else {
                                    echo "<p>Нет загруженных изображений, <a href='".admin_url('upload')."'>загрузить?</a></p>";
                                } ?>
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
    <script src="js/gallery-actions.js"></script>
</body>
</html>