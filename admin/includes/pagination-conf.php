<?php  
	// ”станавливаем соединение с базой данных  
	// ѕеременна€ хранит число сообщений выводимых на странице  
	$num = 10;  
	// »звлекаем из URL текущую страницу  
	$page = $_GET['page'];  
	// ќпредел€ем общее число сообщений в базе данных  
	$result = mysql_query("SELECT COUNT(*) FROM pages WHERE user_id='".$_SESSION['user_id']."'");  
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
	
	// ¬ цикле переносим результаты запроса в массив $postrow  
	while ( $postrow[] = mysql_fetch_array($result))  
?>