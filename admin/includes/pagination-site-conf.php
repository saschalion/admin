<?php  
	// ”станавливаем соединение с базой данных  
	// ѕеременна€ хранит число сообщений выводимых на странице  
	$num = 10;  
	// »звлекаем из URL текущую страницу  
	$page = $_GET['page'];  
	// ќпредел€ем общее число сообщений в базе данных  
	$result = mysql_query("SELECT COUNT(*) FROM pages");  
	$posts = mysql_result($result, 0);  
	// Ќаходим общее число страниц  
	$total = intval(($posts - 1) / $num) + 1;  
	// ќпредел€ем начало сообщений дл€ текущей страницы  
	$page = intval($page);  
	// ≈сли значение $page меньше единицы или отрицательно  
	// переходим на первую страницу  
	// ј если слишком большое, то переходим на последнюю  
	if(empty($page) or $page < 0) $page = 1;  
	  if($page > $total) $page = $total;  
	// ¬ычисл€ем начина€ к какого номера  
	// следует выводить сообщени€  
	$start = $page * $num - $num;
	
	// ¬ыбираем $num сообщений начина€ с номера $start  
	$result = mysql_query("SELECT * FROM pages order by id desc LIMIT $start, $num");  
	// ¬ цикле переносим результаты запроса в массив $postrow  
	while ( $postrow[] = mysql_fetch_array($result))  
?>