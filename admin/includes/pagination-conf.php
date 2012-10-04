<?php

    $array = search($title, $categories, $posts, $start, $num);

    $query = $array[2];

    $num = 10;

    $page = $_GET['page'];

    $posts = mysql_result($query, 0);

    $total = intval(($posts - 1) / $num) + 1;

    $page = intval($page);

    if(empty($page) or $page < 0) $page = 1;
    if($page > $total) $page = $total;

    $start = $page * $num - $num;

    $array = search($title, $categories, $posts, $start, $num);

    $q = $array[0];

    $result = query($q);

    while ( $postrow[] = mysql_fetch_array($result));
