<!DOCTYPE html>
<?php session_start(); include ('includes/config.php');?>
<?php include ('includes/functions.php'); ?>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<title><?=$get_article['meta_title']?></title>
<meta name="Description" content="<?=$get_article['meta_desc']?>">
<meta name="Keywords" content="<?=$get_article['meta_keywords']?>">
<meta name="robots" content="INDEX,FOLLOW">
<meta http-equiv="content-language" content="ru">
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/reset.css" type="text/css">
</head>
<body>
    <div class="wrap">
        <div class="wraper">
            <?php include('includes/header.php'); ?>
            <div class="content-wrap clearfix">
				<div class="content">
					<div class="text">
						<h1><?=$get_article['title']?></h1>
						<?=$get_article['content']; ?>
						<?php
                            if (isset($_SESSION['user_id'])) {
                                echo '<p><a href="admin/edit.php?node='.$node.'">Редактировать</a></p>';
                            }
                        ?>
						<?php include('includes/recent.php'); ?>						
					</div>
				</div>
				<?php include('includes/left-sidebar.php'); ?>
				<?php include('includes/right-sidebar.php'); ?>
			</div>    
		</div> 	
		<?php include('includes/footer.php'); ?>		
    </div>
</body>
</html>