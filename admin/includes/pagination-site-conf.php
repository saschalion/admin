<?php  
	// ������������� ���������� � ����� ������  
	// ���������� ������ ����� ��������� ��������� �� ��������  
	$num = 10;  
	// ��������� �� URL ������� ��������  
	$page = $_GET['page'];  
	// ���������� ����� ����� ��������� � ���� ������  
	$result = mysql_query("SELECT COUNT(*) FROM pages");  
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
	$result = mysql_query("SELECT * FROM pages order by id desc LIMIT $start, $num");  
	// � ����� ��������� ���������� ������� � ������ $postrow  
	while ( $postrow[] = mysql_fetch_array($result))  
?>