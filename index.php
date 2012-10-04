<!DOCTYPE html>
<?php include ('includes/config.php'); ?>
<?php include ('includes/functions.php'); ?>
<?php 
	$show_article = show_home_article();
	$title = $show_article[0];
	$content = $show_article[1];
	$meta_title = $show_article[2];
	$meta_keywords = $show_article[3];
	$meta_desc = $show_article[4];
?>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?=$meta_title?></title>
<meta name="Description" content="<?=$meta_desc?>">
<meta name="Keywords" content="<?=$meta_keywords?>">
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
						<h1><?=$title?></h1>
						<?=$content?>
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