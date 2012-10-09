var query = "<?php=query?>";

var count = "<?php=count($r)?>"

google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);

function drawChart() {

    var data = new google.visualization.DataTable();


    data.addColumn('string', 'Дата');
    data.addColumn('number', 'Пульс');



    for(i = 0; i <= count; i++) {
        data.addRows(
            [query]
            );
            }

    var options = {
        'title':'Пульс',
        'width':450,
        'height':240
        };

    chart = new google.visualization.LineChart(document.getElementById('chart_div2'));
    chart.draw(data, options);
}