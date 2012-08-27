<?php
function listSql() {
	$sql = mysql_query("SELECT*FROM pages");
	  while($record = mysql_fetch_array($sql))
		{
			$entity =  print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';							  
		}
	return $entity;
}

function sendSql() {
	$sql = mysql_query("INSERT into pages (title, content, user_id) values ('".$_POST['my_title']."', '".$_POST['my_text']."', '".$_SESSION['user_id']."');");
	
	return $sql;
}
?>
