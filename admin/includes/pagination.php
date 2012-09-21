<?php  
	// Проверяем нужны ли стрелки назад 
	$beginList = '<div class="b-pagi"><ul class="b-pagi__list">';
	$endList = '</ul></div>';
	$beginItem = '<li class="b-pagi__item">';
	$endItem = '</li>';
	
	if ($page != 1) $pervpage = $beginItem . '<a class="b-pagi__link" href= ?page=1><<</a>' . $endItem . 
	$beginItem . '<a class="b-pagi__link" href= ?page='. ($page - 1) .'>&larr;</a>' . $endItem; 
	
	// Проверяем нужны ли стрелки вперед  
	if ($page != $total) $nextpage = $beginItem . '<a class="b-pagi__link" href= ?page='. ($page + 1) .'>&rarr;</a>' . $endItem .   
									   $beginItem . '<a class="b-pagi__link" href= ?page=' .$total. '>>></a>' . $endItem;  

	// Находим две ближайшие станицы с обоих краев, если они есть  
	if($page - 2 > 0) $page2left = $beginItem . ' <a class="b-pagi__link" href= ?page='. ($page - 2) .'>'. ($page - 2) .'</a>' . $endItem;  
	if($page - 1 > 0) $page1left = $beginItem . '<a class="b-pagi__link" href= ?page='. ($page - 1) .'>'. ($page - 1) .'</a>' . $endItem;  
	if($page + 2 <= $total) $page2right = $beginItem . '<a class="b-pagi__link" href= ?page='. ($page + 2) .'>'. ($page + 2) .'</a>' . $endItem;  
	if($page + 1 <= $total) $page1right = $beginItem . '<a class="b-pagi__link" href= ?page='. ($page + 1) .'>'. ($page + 1) .'</a>' . $endItem; 

	// Вывод меню  
	echo $beginList . $pervpage. $page2left. $page1left. '<li class="b-pagi__item b-pagi__item_state_current">' . $page . '</li>' . $page1right . $page2right . $nextpage . $endList;  

?>