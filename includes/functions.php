<?php

// Показать все записи списком

function listSql() {
	$sql = mysql_query("SELECT*FROM pages");
	  while($record = mysql_fetch_array($sql))
		{
			$entity =  print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';							  
		}
		
	return $entity;
}

// Создание записи

function sendSql() {

	$sql = mysql_query("INSERT INTO pages (title, content, user_id, meta_title, meta_keywords, meta_desc, category_id, link_text)
	values ('".$_POST['my_title']."', '".$_POST['my_text']."', '".$_SESSION['user_id']."', '".$_POST['meta_title']."', '".$_POST['meta_keywords']."', '".$_POST['meta_desc']."', '".$_POST['categories']."', '".$_POST['link_text']."')");
	
	return $sql;
}

// Удаление записи

function deleteArticle($delete, $node) {
	
	if($delete) {
		$sql = mysql_query ("DELETE FROM pages WHERE id='".$node."';");							
		$message = "<p class='js-flash-message' style='color: green;'>Запись успешно удалена.</p>";
	}
	
	return array($sql, $message);
}

// Сохранение записи

function saveArticle($save, $title_edit, $text_edit, $meta_title, $meta_keywords, $meta_desc, $category_edit, $link_text_edit) {
	if($save) {
	   $sqlTitleEdit = mysql_query ("UPDATE pages SET title = '".$title_edit."' where id='".$_SESSION['id']."';");
	   $sqlContentEdit = mysql_query ("UPDATE pages SET content = '".$text_edit."' where id='".$_SESSION['id']."';");
	   $sqlMetaTitleEdit = mysql_query ("UPDATE pages SET meta_title = '".$meta_title."' where id='".$_SESSION['id']."';");
	   $sqlMetaKeywordsEdit = mysql_query ("UPDATE pages SET meta_keywords = '".$meta_keywords."' where id='".$_SESSION['id']."';");
	   $sqlMetaDescEdit = mysql_query ("UPDATE pages SET meta_desc = '".$meta_desc."' where id='".$_SESSION['id']."';");
	   $redirect = "<META HTTP-EQUIV=Refresh content=0;URL=list.php >";
	   $sqlCategory = mysql_query ("UPDATE pages SET pages.category_id='".$category_edit."' where id='".$_SESSION['id']."';");
	   $sqlLinkText = mysql_query ("UPDATE pages SET link_text='".$link_text_edit."' where id='".$_SESSION['id']."';");
	}
	
	return array($sqlTitleEdit, $sqlContentEdit, $sqlMetaTitleEdit, $sqlMetaKeywordsEdit, $sqlMetaDescEdit, $redirect, $sqlCategory, $sqlLinkText);
}

// Отображение записи

function showArticle($node) {

	$sql = "select * FROM pages where id='".$node."'";
	
	$result = mysql_query($sql);
	
	while($record = mysql_fetch_array($result)) {
		$title = $record['title'];
		$content = $record['content'];
		$linkText = $record['link_text'];		
		$metaTitle = $record['meta_title'];
		$metaKeywords = $record['meta_keywords'];
		$metaDesc = $record['meta_desc'];
	}
	
	return array($title, $content, $metaTitle, $metaKeywords, $metaDesc, $linkText);
}

$article = showArticle($node);

$title = $article[0];

// Mime-types

function get_mime_type($file) {	
	// our list of mime types
	$mime_types = array(	
		"gif"  => "image/gif",
		"png"  => "image/png",
		"jpeg" => "image/jpg",
		"jpg"  => "image/jpg"		
	);

	$extension = strtolower(end(explode('.',$file)));

	return $mime_types[$extension];
}

// Отображение полезного

function showUseful($node) {

	$sql = mysql_query("SELECT * FROM pages where id!='".$node."' order by rand() LIMIT 3");
	
	while($record = mysql_fetch_array($sql)) {	
		$useful = print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
	}
	
	return $useful;
}

// Отображение списка категорий

function showCategories() {

	$sql = mysql_query("SELECT * FROM categories");

	while($record = mysql_fetch_array($sql)) {
		$category = print '<option value="'.$record['id'].'">'.$record['name'].'</option>';
	}

	return $category;
}

// Отображение списка категорий с активной категорией

function showCurrentCategory($node) {

	$sqlCurrent = mysql_query("SELECT categories.id FROM categories, pages where pages.category_id=categories.id AND pages.id='".$node."';");
    $sql = mysql_query("SELECT * FROM categories");

    $result = mysql_result($sqlCurrent, 0);


    do {
        if ($record['id'] == $result) {
        echo $selected = "<option value=".$record['id']." selected>".$record['name']."</option>";
    }
		else {
			echo $selected = "<option value=".$record['id'].">".$record['name']."</option>";
		}
    }

    while($record = mysql_fetch_array($sql));

	return $selected;
}

// Количество записей

function countPosts() {
	$result = mysql_query("SELECT COUNT(*) FROM pages WHERE user_id='".$_SESSION['user_id']."'");
	$posts = mysql_result($result, 0); 
	
	return $posts;	
}

// Недавние записи (рандомно)

function recentArticles($node) {
	$sql = mysql_query("SELECT pages.id, pages.title FROM pages, categories where pages.category_id=categories.id AND pages.id!='".$node."' AND categories.name_code!='home' order by rand() LIMIT 5");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
	}
	
	return $recentArticle;
}

// Использование изображений в записях

function usedPictures($record) {
	
	$num = mysql_query("SELECT COUNT(*) FROM pages where content LIKE ('%".$record['url']."%')");
	
	$count = mysql_result($num, 0);
	
	$sqlFile = mysql_query("SELECT*FROM pages where content LIKE ('%".$record['url']."%')");	
	
	return array($count, $sqlFile);
}

// Отображение Базы знаний

function showKnowledgeArticles() {
	$sql = mysql_query("SELECT pages.id, pages.link_text FROM pages, categories WHERE pages.category_id = categories.id AND categories.name_code IN('knowledge_base') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение Настройки

function showSettingArticles() {
	$sql = mysql_query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id AND categories.name_code IN('setting') order by id desc");
	while($record = mysql_fetch_array($sql)) {	
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение Ремонта

function showRepairArticles() {
	$sql = mysql_query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id AND categories.name_code IN('repair') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение Видео-курсов

function showVideoCourseArticles() {
	$sql = mysql_query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id AND categories.name_code IN('video_course') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение статьи на главной

function showHomeArticle() {
	$sql = mysql_query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id AND categories.name_code IN('home') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$title = $record['title'];
		$content = $record['content'];
		
		$metaTitle = $record['meta_title'];
		$metaKeywords = $record['meta_keywords'];
		$metaDesc = $record['meta_desc'];
	}

	return array($title, $content, $metaTitle, $metaKeywords, $metaDesc);
}

// Последние статьи

function lastArticles($node) {

	$sql = mysql_query("SELECT * FROM pages where id!='".$node."' order by id desc LIMIT 5");

	while($record = mysql_fetch_array($sql)) {
		$useful = print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
	}

	return $useful;
}

// Отображение активной категории в поиске

function showCurrentSearchCategory() {

	$sqlCurrent = mysql_query("SELECT * FROM categories, pages where pages.category_id=categories.id WHERE id='".$_POST['categories']."';");
	
    $sql = mysql_query("SELECT * FROM categories");

    $result = mysql_result($sqlCurrent, 0);

    do {
        if ($_POST['categories'] == $result) {
        echo $selected = "<option value=".$record['id']." selected>".$record['name']."</option>";
    }
		else {
			echo $selected = "<option value=".$record['id'].">".$record['name']."</option>";
		}
    }

    while($record = mysql_fetch_array($sql));

	return $selected;
}

// Категория в результатах поиска

function searchResultCategory() {
	$sql = "SELECT name from categories WHERE id='".$_POST['categories']."'"; 
							
	$result = mysql_query($sql);
	
	while($record = mysql_fetch_array($result)) {
		$currentCategory = $record['name'];
	}
	
	return $currentCategory;
}

$searchResultCategory = searchResultCategory();
?>