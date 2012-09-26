<?php include('includes/head.php'); ?>
<body>
   <div class="wrap">
        <div class="header"></div>
        <div class="container container-middle">
            <div class="content">
                <div class="content-wrap">
					<?php include('includes/menu.php'); ?>
                    <div class="text">
                        <h1>Список статей</h1>
						<?php	
							if (isset($_SESSION['user_id'])) {
                            echo '<p>Количество: ' . '<strong>' .  get_count_posts() . '</strong>' . '</p>';
                            include('includes/pagination-conf.php');
						?>

<!--                        --><?php
//
//                            function __autoload($classname) {
//                                require_once('actions/class.' . $classname. '.php');
//                            }
//
//                            $obj = new emp();
//
//                            $obj->firstname = 'Гриша';
//                            $obj->lastname = 'Иванов';
//
//                            if($obj->set_age(23)) {
//                                echo $obj->full_info();
//                            }
//                            else echo 'Тебе меньше 18ти или больше 65ти!';
//
//                            logger::getInstance()->addError(__MSG__, __LINE__, __FILE__);
//
//                        ?>
						
						<form action="list.php" method="post" class="b-search js-b-search">
							<div class="b-search__fields">
								<input type="text" name="title" value="<?=$title?>" placeholder="название или id" class="b-search__input_text js-b-search__input_text"/>
								<input type="submit" value="Искать" class="b-search__input_submit js-b-search__input_submit"/>
							</div>
							<select name="categories" class="b-search__select js-b-search__select">
								<option value="0">выбрать категорию</option>
								<?php show_categories(); ?>
							</select>
							<input type="reset" value="Очистить" class="b-search__input_reset js-b-search__input_reset"/>
						</form>
						
						<?php						
							$article = delete_article($delete, $node);
							echo $article[1];
						?>	
						<div class="js-results">
							<?php $current_category = search_result_category(); ?>
							<?php if($_POST['title'] || $_POST['categories']) echo '<p class="js-result">Результаты поиска: <strong>' . $_POST['title'] . ' ' . $current_category . '</strong></p>'; ?>
						</div>
						<div class="b-table-box js-b-table-box">	
							<table class='b-table js-b-table'>							
								<thead class="b-table__head">
									<tr class="b-table__row">
										<td class="b-table__column b-table__column_border_no" colspan="5">
											<ul class="b-actions clearfix">
												<li class="b-actions__item">
													<a class="b-actions__link" title="Добавить" href="new.php">
														<b class="b-actions__icon b-actions__icon_icon_add"></b>
														<span class="b-actions__link-text">Добавить</a>
													</a>
												</li>
											</ul>
										</td>
									</tr>
									<tr class="b-table__row">
										<th class='b-table__column'>
											#
										</th>
										<th class='b-table__column'>
											Заголовок
										</th>
										<th class='b-table__column'>
											Категория
										</th>
										<th class='b-table__column' colspan='3'>
											Действия
										</th>
									</tr>								
								</thead> 
								<tfoot>
									<tr>
										<td class='b-table__column' colspan='4'>
											<ul class="b-actions clearfix">
												<li class="b-actions__item">
													<a class="b-actions__link" title="Добавить" href="new.php">
														<b class="b-actions__icon b-actions__icon_icon_add"></b>
														<span class="b-actions__link-text">Добавить</a>
													</a>
												</li>
											</ul>
										</td>
									</tr>
								</tfoot>
								<tbody class='b-table__body'>								
							<?php 			
							for($i = 0; $i < $num; $i++)  
							{  if(isset($postrow[$i]['id'])) { ?>	
								
								<tr class="b-table__row">
									<td class="b-table__column">
										<?=$postrow[$i]['id']?>
									</td>
									<td class="b-table__column">
										<?=$postrow[$i]['title']?>
									</td>
									<td class="b-table__column">
										<?=$postrow[$i]['name']?>
									</td>
									<td class="b-table__column b-table__column_width_115">
										<ul class="b-actions clearfix">
											<li class="b-actions__item">
												<a class="b-actions__link" title="Редактировать" href="edit.php?node=<?=$postrow[$i]['id']?>">
													<b class="b-actions__icon b-actions__icon_icon_edit"></b>
													<span class="b-actions__link-text"></a>
												</a>
											</li>
											<li class="b-actions__item">
												<a class="b-actions__link" title="Просмотр" href="../article.php?node=<?=$postrow[$i]['id']?>">
													<b class="b-actions__icon b-actions__icon_icon_view"></b>
													<span class="b-actions__link-text"></a>
												</a>
											</li>
											<li class="b-actions__item">
												<a class="b-actions__link js-confirm" title="Удалить" href="list.php?node=<?=$postrow[$i]['id']?>&delete=true">
													<b class="b-actions__icon b-actions__icon_icon_delete"></b>
													<span class="b-actions__link-text"></a>
												</a>
											</li>
										</ul>
									</td>
								</tr>
							<?php } }?>
								</tbody>							
							</table> 
							<div class="loading" style="display: none;">
								<img src="images/ajax-loader.gif" alt=""/>
							</div>
						</div>
						<?php include('includes/pagination.php'); ?>
						<?php
							}
							else
							{
								echo('<p>Доступ закрыт, Вам необходимо <a href="login.php">авторизоваться</a>.</p>');
							}
						?>
                    </div>
                </div>
            </div>
        </div>
        <?php include('includes/footer.php'); ?> 
    </div> 
	<div class="loading page-loading js-loading" style="display: none;">
		<img src="images/ajax-loader.gif" alt=""/>
	</div>
	<script src="js/libs/form.js" type="text/javascript"></script>
	<script src="js/search.js" type="text/javascript"></script>
</body>
</html>