<?php  
	// ������������� ���������� � ����� ������  
	// ���������� ������ ����� ��������� ��������� �� ��������  
	$num = 10;  
	// ��������� �� URL ������� ��������  
	$page = $_GET['page'];  
	// ���������� ����� ����� ��������� � ���� ������  
	$result = mysql_query("SELECT COUNT(*) FROM pages WHERE user_id='".$_SESSION['user_id']."'");  
	$posts = mysql_result($result, 0);  
	// ������� ����� ����� �������  
	$total = intval(($posts - 1) / $num) + 1;  
	// ���������� ������ ��������� ��� ������� ��������  
	$page = intval($page);  
	// ���� �������� $page ������ ������� ��� ������������  
	// ��������� �� ������ ��������  
	// � ���� ������� �������, �� ��������� �� ���������  
	if(empty($page) or $page < 0) $page = 1;  
	  if($page > $total) $page = $total;  
	// ��������� ������� � ������ ������  
	// ������� �������� ���������  
	$start = $page * $num - $num;
	
	// �������� $num ��������� ������� � ������ $start  
	
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
	
	// � ����� ��������� ���������� ������� � ������ $postrow  
	while ( $postrow[] = mysql_fetch_array($result))  
?>