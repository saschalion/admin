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

                        $sth = query("SELECT created_at as date, id as pulse, id as customTooltip FROM files");

                        while($r = mysql_fetch_assoc($sth))

                        $row[] = $r;

                        $query.= "{y: $r[pulse], customTooltip: $r[customTooltip]},";

                        $query = substr($query, 0, strlen($query) - 1);

                        $result = json_encode($row);

                        echo $result;

                        ?>

<!--                        <script type="text/javascript">-->
<!--                            google.load("visualization", "1", {packages:["corechart"]});-->
<!--                            google.setOnLoadCallback(drawChart);-->
<!---->
<!--                            function drawChart() {-->
<!---->
<!--                                var data = new google.visualization.DataTable();-->
<!---->
<!---->
<!--                                data.addColumn('string', 'Дата');-->
<!--                                data.addColumn('number', 'Пульс');-->
<!---->
<!---->
<!--                                for(i = 0; i <= --><?//=count($r)?><!--; i++) {-->
<!--                                    data.addRows(-->
<!--                                        [--><?//=$query?><!--]-->
<!--                                    );-->
<!--                                }-->
<!---->
<!--                                var options = {-->
<!--                                    'title':'Пульс',-->
<!--                                    'width': 450,-->
<!--                                    'height': 240,-->
<!--                                    vAxis: {-->
<!--                                        maxValue: 90,-->
<!--                                        minValue: 40-->
<!--                                    }-->
<!---->
<!--                                };-->
<!---->
<!--                                chart = new google.visualization.LineChart(document.getElementById('chart_div2'));-->
<!---->
<!---->
<!--                                chart.draw(data, options);-->
<!--                            }-->
<!---->
<!--                            google.load('visualization', '1', {packages: ['gauge']});-->
<!--                            google.setOnLoadCallback(drawVisualization);-->
<!---->
<!--                            function drawVisualization() {-->
<!--                                // Create and populate the data table.-->
<!--                                var data = google.visualization.arrayToDataTable([-->
<!--                                    ['Label', 'Value'],-->
<!--                                    ['Пульс', 80],-->
<!--                                    ['Давление', 55],-->
<!--                                    ['Холестерин', 68]-->
<!--                                ]);-->
<!---->
<!--                                // Create and draw the visualization.-->
<!--                                new google.visualization.Gauge(document.getElementById('visualization')).-->
<!--                                        draw(data);-->
<!--                            }-->
<!---->
<!--                        </script>-->
<!--                        <div id="chart_div2"></div>-->
<!--                        <br><br>-->
<!--                        <div id="visualization"></div>-->


                    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
                    <script type="text/javascript">
                        $(function () {
                            var chart;
                            $(document).ready(function() {

                                var array = [
                                    {y: 20, customTooltip: 'Анальгин'},
                                    {y: 40, customTooltip: 'Фарингосепт'}
                                ];

                                chart = new Highcharts.Chart({
                                    chart: {
                                        renderTo: 'container',
                                        type: 'spline'
                                    },
                                    title: {
                                        text: 'Параметры пульса'
                                    },
                                    subtitle: {
                                        text: 'с октября 1999 до ноября 2012'
                                    },
                                    xAxis: {
                                        type: 'datetime'
                                    },
                                    yAxis: {
                                        title: {
                                            text: 'Пульс'
                                        },
                                        min: 0,
                                        max: 160,
                                        minorGridLineWidth: 0,
                                        gridLineWidth: 0,
                                        alternateGridColor: null,
                                        plotBands: [{ // Light air
                                            from: 20,
                                            to: 70,
                                            color: 'rgba(0, 255, 0, 0.1)',
                                            label: {
                                                text: 'Норма',
                                                style: {
                                                    color: '#606060'
                                                }
                                            }
                                        }, { // Light breeze
                                            from: 70,
                                            to: 120,
                                            color: 'rgba(255, 0, 0, 0.1)',
                                            label: {
                                                text: 'Выше нормы',
                                                style: {
                                                    color: '#606060'
                                                }
                                            }
                                        }]
                                    },
                                    tooltip: {
                                        formatter: function() {
                                            return '' + '<b>' + this.point.config.customTooltip + '</b>' +
                                                    Highcharts.dateFormat('%e. %b %Y, %H:00', this.x) +': '+ this.y + ' m/s';
                                        }
                                    },
                                    plotOptions: {
                                        spline: {
                                            lineWidth: 4,
                                            states: {
                                                hover: {
                                                    lineWidth: 5
                                                }
                                            },
                                            marker: {
                                                enabled: false,
                                                states: {
                                                    hover: {
                                                        enabled: true,
                                                        symbol: 'circle',
                                                        radius: 5,
                                                        lineWidth: 1
                                                    }
                                                }
                                            },
                                            pointInterval: 3600000, // one hour
                                            pointStart: Date.UTC(2009, 9, 6, 0, 0, 0)
                                        }
                                    },
                                    series: [{
                                        name: 'Пульс',
                                        data: [<?=$query?>]

                                    }]
                                    ,
                                    navigation: {
                                        menuItemStyle: {
                                            fontSize: '10px'
                                        }
                                    }
                                });
                            });

                        });
                    </script>


                    <script src="/admin/js/highcharts.js"></script>
                    <script src="/admin/js/exporting.js"></script>

                    <div id="container" style="min-width: 400px; height: 400px; margin: 0 auto"></div>


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