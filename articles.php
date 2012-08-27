<!DOCTYPE HTML>
<?php session_start(); include ('includes/config.php'); ?>
<?php include ('includes/functions.php'); ?>
<html><head><title></title>
<meta NAME="Description" CONTENT="">
<meta NAME="Keywords" CONTENT="">
<meta name="robots" content="INDEX,FOLLOW">
<meta charset="utf-8">
<meta http-equiv="content-language" content="ru">
<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon">
<link rel="icon" href="../images/favicon.png" type="image/x-icon">
<script type="text/javascript" charset="windows-1251" src="../js/prevent-selection.js"></script>
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
                    <?php include('includes/menu.php'); ?>
                    <div class="text">   
						<h1>List</h1>
						<ul>
							<li>
								<?php
									listSql();								
								?>
							</li>
						</ul>                        
                    </div>
                </div>
            </div>
			<div class="l-sidebar"></div>
            <div class="r-sidebar"></div>
        </div>
        <div class="footer clearfix">
            <p class="copyright">
                &copy; 2012 <br>
                <a href="/">CMS</a>
            </p>
            <div class="footer-banners"></div>
        </div>
    </div> 
</body>
</html>
<?php
  $_SESSION['id'] = $node;
?>