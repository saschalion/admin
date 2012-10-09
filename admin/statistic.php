<?php include('includes/head.php'); ?>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
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
                        <h1>Статистика</h1>

                        <?php

                        $sth = query("SELECT created_at as date, id as pulse FROM files");

                        while($r = mysql_fetch_assoc($sth))

                        $query.= "['$r[date]', $r[pulse]],";

                        $query = substr($query, 0, strlen($query) - 1);

                        ?>

                        <script type="text/javascript">
                            google.load("visualization", "1", {packages:["corechart"]});
                            google.setOnLoadCallback(drawChart);

                            function drawChart() {

                                var data = new google.visualization.DataTable();


                                data.addColumn('string', 'Дата');
                                data.addColumn('number', 'Пульс');


                                for(i = 0; i <= <?=count($r)?>; i++) {
                                    data.addRows(
                                        [<?=$query?>]
                                    );
                                }

                                var options = {
                                    'title':'Пульс',
                                    'width': 450,
                                    'height': 240,
                                    vAxis: {
                                        maxValue: 90,
                                        minValue: 40
                                    }

                                };

                                chart = new google.visualization.LineChart(document.getElementById('chart_div2'));

                                
                                chart.draw(data, options);
                            }

                            google.load('visualization', '1', {packages: ['gauge']});
                            google.setOnLoadCallback(drawVisualization);

                            function drawVisualization() {
                                // Create and populate the data table.
                                var data = google.visualization.arrayToDataTable([
                                    ['Label', 'Value'],
                                    ['Пульс', 80],
                                    ['Давление', 55],
                                    ['Холестерин', 68]
                                ]);

                                // Create and draw the visualization.
                                new google.visualization.Gauge(document.getElementById('visualization')).
                                        draw(data);
                            }

                        </script>
                        <div id="chart_div2"></div>
                        <br><br>
                        <div id="visualization"></div>


                        <?php
                    }
                    else
                    {
                        echo('<p>Доступ закрыт, Вам необходимо <a href="/login.php">авторизоваться</a></p>');
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
    <?php include('includes/footer.php'); ?>
</div>
</body>
</html>
<?php
$_SESSION['id'] = $node;
?>