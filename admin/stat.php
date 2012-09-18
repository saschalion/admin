<?php include('includes/head.php'); ?>
<body>
	<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['year', 'count', '445'],
          ['2004', <?php echo countPosts() ?>,      400],
          ['2005',  1170,      460],
          ['2006',  660,       1120],
          ['2007',  1030,      540]
        ]);

        var options = {
          title: 'Company Performance'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
   <div class="wrap">
        <div class="header"></div>
        <div class="container container-middle">
            <div class="content">
                <div class="content-wrap">
					<?php include('includes/menu.php'); ?>
                    <div class="text">
                        <h1>Статистика</h1>
						<?php	
							if (isset($_SESSION['user_id'])) {
						?>
						
						<?php
							echo '<p>Количество: ' . '<strong>' .  countPosts() . '</strong>' . '</p>';
						?>						
							<div id="chart_div" style="width: 900px; height: 500px;"></div>
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