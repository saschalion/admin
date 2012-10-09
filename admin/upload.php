<!DOCTYPE HTML>
<?php include('includes/head.php'); ?>
</head>
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
						
						<h1>Добавить изображение</h1>
						
						<?php include('includes/upload.php'); ?>
						
						<?php } else {
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