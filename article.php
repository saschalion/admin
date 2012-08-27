<!DOCTYPE HTML>
<?php session_start(); include ('includes/config.php'); ?>
<html><head><title></title>
<meta NAME="Description" CONTENT="">
<meta NAME="Keywords" CONTENT="">
<meta name="robots" content="INDEX,FOLLOW">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<meta http-equiv="content-language" content="ru">
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<script type="text/javascript" charset="windows-1251" src="js/add_bookmark.js"></script>
<script type="text/javascript" charset="windows-1251" src="js/prevent-selection.js"></script>
<link rel="stylesheet" href="css/main.css" type="text/css">
<link rel="stylesheet" href="css/reset.css" type="text/css">
</head>
<body>
    <div class="wrap">
        <div class="header"></div>
        <div class="container clearfix">
            <div class="content">
                <div class="content-wrap">
                    <?php include('includes/menu.php'); ?>
                    <div class="text">
						<?php
							$sql = mysql_query("select * FROM pages where id='".$node."';");
							while($record = mysql_fetch_array($sql))
							{
								$title=$record['title'];
								$content=$record['content'];
							}
						?>
                        <h1><?php print $title; ?></h1>
						<div class="useful">
							<h4>Интересное по теме:</h4>
							<div class="useful-box">
								<ul>
									<?php
									$sql = mysql_query("SELECT * FROM pages where id!='".$node."' LIMIT 0,3");
										  while($record = mysql_fetch_array($sql))
									   {
											print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
									   }
									?>							
								</ul>
							</div>							
						</div>
						<p>
							<?php print $content; ?>
						</p>
                    </div>
                </div>
            </div>
			<div class="l-sidebar"></div>
            <div class="r-sidebar"></div>
        </div>
        <div class="footer clearfix">
            <p class="copyright">
                &copy; 2012
            </p>
            <div class="footer-banners"></div>
        </div>
    </div>
</body>
</html>
