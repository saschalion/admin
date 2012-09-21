<?php

function escape($value) {
    $record = mysql_real_escape_string($value);

    return $record;
}

function query($value) {
    $sql = mysql_query($value);

    return $sql;
}


// Показать все записи списком

function listSql() {
	$sql = query("SELECT*FROM pages");
        while($record = mysql_fetch_array($sql)) {
			$entity =  print '<li><a href="article.php?node='.escape($record['id']).'">'.$record['title'].'</a></li>';
        }
		
	return $entity;
}

// Создание записи

function sendSql() {

    $array = array(
        'title'         => $_POST['my_title'],
        'content'       => $_POST['my_text'],
        'user_id'       => $_SESSION['user_id'],
        'meta_title'    => $_POST['meta_title'],
        'meta_keywords' => $_POST['meta_keywords'],
        'meta_desc'     => $_POST['meta_desc'],
        'category_id'   => $_POST['categories'],
        'link_text'     => $_POST['link_text']
    );

    if(count($array) > 0) {
        foreach($array as $key => $value) {
            $value = escape($value);
            $value =  "'$value'";
            $arrayKeys[] = $key;
            $arrayValues[] = $value;
        }
    }

    $implodeKey = implode(', ', $arrayKeys);

    $implodeValue = implode(', ', $arrayValues);

    $sql = query("INSERT INTO pages($implodeKey) values($implodeValue)");

	return $sql;
}

// Удаление записи

function deleteArticle($delete, $node) {
	
	if($delete) {
		$sql = query("DELETE FROM pages WHERE id='".escape($node)."';");
		$message = "<p class='js-flash-message' style='color: green;'>Запись успешно удалена.</p>";
	}
	
	return array($sql, $message);
}

// Сохранение записи

function saveArticle($save, $title_edit, $text_edit, $meta_title, $meta_keywords, $meta_desc, $category_edit, $link_text_edit) {

	if($save) {

       $sid = escape($_SESSION['id']);

       $array = array(
           'title' => $title_edit,
           'content' => $text_edit,
           'meta_title' => $meta_title,
           'meta_keywords' => $meta_keywords,
           'meta_desc' => $meta_desc,
           'link_text' => $link_text_edit,
           'pages.category_id' => $category_edit
       );

        if (count($array) > 0) {
            foreach ($array as $key => $value) {

                $value = mysql_real_escape_string($value);
                $value = "'$value'";
                $updates[] = "$key = $value";
            }
        }

       $implodeArray = implode(', ', $updates);

       $sql = query("UPDATE pages SET $implodeArray where id=$sid");

	   $redirect = "<META HTTP-EQUIV=Refresh content=0;URL=list.php >";

	}
	
	return array($sql, $redirect);
}

// Отображение записи

function showArticle($node) {

	$sql = "select * FROM pages where id='".$node."'";
	
	$result = query($sql);
	
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

	$sql = query("SELECT * FROM pages where id!='".escape($node)."' order by rand() LIMIT 3");
	
	while($record = mysql_fetch_array($sql)) {	
		$useful = print '<li><a href="article.php?node='.escape($record['id']).'">'.$record['title'].'</a></li>';
	}
	
	return $useful;
}

// Отображение списка категорий

function showCategories() {

	$sql = query("SELECT * FROM categories");

	while($record = mysql_fetch_array($sql)) {
		$category = print '<option value="'.$record['id'].'">'.$record['name'].'</option>';
	}

	return $category;
}

// Отображение списка категорий с активной категорией

function showCurrentCategory($node) {

	$sqlCurrent = query("SELECT categories.id FROM categories, pages where pages.category_id=categories.id AND pages.id='".escape($node)."';");
    $sql = query("SELECT * FROM categories");

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
	$result = query("SELECT COUNT(*) FROM pages WHERE user_id='".escape($_SESSION['user_id'])."'");
	$posts = mysql_result($result, 0); 
	
	return $posts;	
}

// Недавние записи (рандомно)

function recentArticles($node) {
	$sql = mysql_query("SELECT pages.id, pages.title FROM pages, categories where pages.category_id=categories.id
	AND pages.id!='".escape($node)."' AND categories.name_code!='".escape('home')."' order by rand() LIMIT 5");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
	}
	
	return $recentArticle;
}

// Использование изображений в записях

function usedPictures($record) {
	
	$num = query("SELECT COUNT(*) FROM pages where content LIKE ('%".$record['url']."%')");
	
	$count = mysql_result($num, 0);
	
	$sqlFile = query("SELECT*FROM pages where content LIKE ('%".$record['url']."%')");
	
	return array($count, $sqlFile);
}

// Отображение Базы знаний

function showKnowledgeArticles() {
	$sql = query("SELECT pages.id, pages.link_text FROM pages, categories WHERE
	pages.category_id = categories.id AND categories.name_code IN('".escape('knowledge_base')."')
	order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение Настройки

function showSettingArticles() {
	$sql = query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id
	AND categories.name_code IN('".escape('setting')."') order by id desc");
	while($record = mysql_fetch_array($sql)) {	
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение Ремонта

function showRepairArticles() {
	$sql = query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id
	AND categories.name_code IN('".escape('repair')."') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение Видео-курсов

function showVideoCourseArticles() {
	$sql = query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id
	AND categories.name_code IN('".escape('video_course')."') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение статьи на главной

function showHomeArticle() {
	$sql = query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id
	AND categories.name_code IN('".escape('home')."') order by id desc");
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

	$sql = query("SELECT * FROM pages where id!='".escape($node)."' order by id desc LIMIT 5");

	while($record = mysql_fetch_array($sql)) {
		$useful = print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
	}

	return $useful;
}

// Отображение активной категории в поиске

//function showCurrentSearchCategory() {
//
//	$sqlCurrent = mysql_query("SELECT * FROM categories, pages where pages.category_id=categories.id WHERE id='".$_POST['categories']."';");
//
//    $sql = mysql_query("SELECT * FROM categories");
//
//    $result = mysql_result($sqlCurrent, 0);
//
//    do {
//        if ($_POST['categories'] == $result) {
//        echo $selected = "<option value=".$record['id']." selected>".$record['name']."</option>";
//    }
//		else {
//			echo $selected = "<option value=".$record['id'].">".$record['name']."</option>";
//		}
//    }
//
//    while($record = mysql_fetch_array($sql));
//
//	return $selected;
//}

// Категория в результатах поиска

function searchResultCategory() {

	$sql = "SELECT name from categories WHERE id='".escape($_POST['categories'])."'";
							
	$result = query($sql);
	
	while($record = mysql_fetch_array($result)) {
		$currentCategory = $record['name'];
	}
	
	return $currentCategory;
}

$searchResultCategory = searchResultCategory();
?>