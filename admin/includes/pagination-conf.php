<?php  
	// Устанавливаем соединение с базой данных  
	// Переменная хранит число сообщений выводимых на странице  
	$num = 10;  
	// Извлекаем из URL текущую страницу  
	$page = $_GET['page'];  
	// Определяем общее число сообщений в базе данных  
	$result = mysql_query("SELECT COUNT(*) FROM pages WHERE user_id='".$_SESSION['user_id']."'");  
	$posts = mysql_result($result, 0);  
	// Находим общее число страниц  
	$total = intval(($posts - 1) / $num) + 1;  
	// Определяем начало сообщений для текущей страницы  
	$page = intval($page);  
	// Если значение $page меньше единицы или отрицательно  
	// переходим на первую страницу  
	// А если слишком большое, то переходим на последнюю  
	if(empty($page) or $page < 0) $page = 1;  
	  if($page > $total) $page = $total;  
	// Вычисляем начиная к какого номера  
	// следует выводить сообщения  
	$start = $page * $num - $num;
	
	// Выбираем $num сообщений начиная с номера $start  
	
	$q = "SELECT pages.id, pages.title, categories.name_code, categories.name FROM pages, categories WHERE pages.title LIKE '%$title%' AND pages.category_id=categories.id AND user_id='".$_SESSION['user_id']."'";
	
	$t = "UNION SELECT pages.id, pages.title, categories.name_code, categories.name FROM pages, categories WHERE pages.id LIKE '%$title%' AND pages.category_id=categories.id AND user_id='".$_SESSION['user_id']."'";
	
	$s = "SELECT pages.id, pages.title, categories.name, categories.name_code FROM pages, categories WHERE pages.category_id=categories.id AND user_id='".$_SESSION['user_id']."'";
	
	if(!empty($title) && empty($categories)) { $q = $q . $t; }
	
	if((!empty($title)) && (!empty($categories))) {$q = $q . "AND pages.category_id LIKE '%$categories%'" . $t . "AND pages.category_id LIKE '%$categories%'";}
	
    if(empty($categories) && empty($title)) { $q = $s . "LIMIT $start, $num";}
	
	if(!empty($title) || !empty($categories)) { $num = $posts;}
	
	//if (empty($title)) {$q = $s;}
	
	if((empty($title)) && (!empty($categories))) { $q = "SELECT pages.*, categories.name, categories.name_code FROM pages, categories WHERE pages.category_id LIKE '%$categories%' AND pages.category_id=categories.id AND user_id='".$_SESSION['user_id']."'";}
	
	$result = mysql_query($q);	
	
	// В цикле переносим результаты запроса в массив $postrow  
	while ( $postrow[] = mysql_fetch_array($result))  
?>