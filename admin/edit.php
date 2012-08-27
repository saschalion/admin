<!DOCTYPE HTML>
<?php session_start(); include ('../includes/config.php'); ?>
<html><head><title></title>
<meta NAME="Description" CONTENT="">
<meta NAME="Keywords" CONTENT="">
<meta name="robots" content="INDEX,FOLLOW">
<meta charset="utf-8">
<meta http-equiv="content-language" content="ru">
<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon">
<link rel="icon" href="../images/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="../css/form.css" type="text/css">
<link rel="stylesheet" href="../css/main.css" type="text/css">
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
				
						$sql = mysql_query("select * FROM pages where id='".$node."';");
						while($record = mysql_fetch_array($sql)) {
							$title=$record['title'];
							$content=$record['content'];
						}
						if($save)  {
						   $sql = mysql_query ("UPDATE pages SET title = '".$title_edit."' where id='".$_SESSION['id']."';");
						   $sql = mysql_query ("UPDATE pages SET content = '".$text_edit."' where id='".$_SESSION['id']."';");
						   echo "<META HTTP-EQUIV=Refresh content=0;URL=list.php >";
						   }
						?>
						<h1>Редактировать "<?php print $title; ?>"</h1>
						<form action="edit.php" method="post" class="order-form">
						    <div class="label-box">
								<label for="title">
									Заголовок
								</label>
								<input name="title_edit" id="title" type="text" value="<?php print $title; ?>">
							</div>
							<div class="label-box">
								<label for="desc">
									Описание								
								</label>
								<textarea name="text_edit" id="desc" rows="15"><?php print $content; ?></textarea>
							</div>
							<p class="submit-box">
								<input name="save" type="submit" value="Сохранить">
							</p>							
						</form>
						<?php echo $node;?>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer clearfix">
            <p class="copyright">&copy; 2012</p>
            <div class="footer-banners"></div>
        </div>
    </div> 
	<script type="text/javascript" src="js/libs/tiny/tiny_mce.js"></script>
    <script type="text/javascript" src="js/tiny-mce-run.js"></script>
</body>
</html>
<?php
  $_SESSION['id'] = $node;
?>