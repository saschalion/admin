<!DOCTYPE HTML>
<?php session_start(); include ('../includes/config.php'); ?>
<html><head><title></title>
<meta NAME="Description" CONTENT="">
<meta NAME="Keywords" CONTENT="">
<meta name="robots" content="INDEX,FOLLOW">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<meta http-equiv="content-language" content="ru">
<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon">
<link rel="icon" href="../images/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="../css/main.css" type="text/css">
<link rel="stylesheet" href="../css/b-table.css" type="text/css">
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
                        <h1>Список статей</h1>
						
						<?php	
							if (isset($_SESSION['user_id'])) {
						?>
						
                        <table class="b-table">
							<tbody class="b-table__body">
								<thead>
									<th class="b-table__column">#</th>
									<th class="b-table__column">Заголовок</th>
									<th class="b-table__column" colspan="3">Действия</th>
								</thead>
								<?php
								$sql = mysql_query("SELECT*FROM pages WHERE user_id='".$_SESSION['user_id']."'");
									  while($record = mysql_fetch_array($sql))
								   {
								  print '<tr class="b-table__row">
										<td class="b-table__column">'.$record['id'].'</td>
										<td class="b-table__column">'.$record['title'].'</td>
										<td class="b-table__column">
											<a title="Edit" href="edit.php?node='.$record['id'].'">Редактировать</a>
										</td>
										<td class="b-table__column">
											<a title="Просмотр" href="../article.php?node='.$record['id'].'">Просмотр</a>
										</td>
										<td class="b-table__column">
											<a style="color: red;" title="Удалить" href="list.php?node='.$record['id'].'&delete=y" class="js-confirm">x</a>
										</td>
									</tr>';
								   }
								?>
							</tbody>							
							<tfoot class="b-table__foot">
								<tr class="b-table__row">
									<td colspan="5" class="b-table__column">
										<a href="new.php" class="b-table__link">Добавить</a>
									</td>
								</tr>
							</tfoot>
						</table>
						<?php echo $_SESSION['user_id']; ?>
						<?php
						if($delete) {
						   $sql = mysql_query ("DELETE FROM pages WHERE id='".$node."';");
						   echo "<META HTTP-EQUIV=Refresh content=0;URL=list.php >";
						   }
						?>
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
            <div class="l-sidebar">
				<div class="sidebar-header">
					<h2>Последние статьи</h2>
				</div>				
				<ul class="sidebar-list">					
					<?php
						$sql = mysql_query("SELECT*FROM pages LIMIT 5");
							  while($record = mysql_fetch_array($sql))
						   {
						  print '<li><a href="edit.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
						   }
					?>					
				</ul>
			</div>
            <div class="r-sidebar"></div>
        </div>
        <div class="footer clearfix">
            <p class="copyright">
                &copy; 2012
            </p>
            <span class="phone"></span>
            <div class="footer-banners"></div>
        </div>
    </div> 
</body>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="js/confirm.js"></script>
</html>