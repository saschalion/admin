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
	  while($record = mysql_fetch_array($sql))
		{
			$entity =  print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';							  
		}
		
	return $entity;
}

// Создание записи

function send_sql() {

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
            $array_keys[] = $key;
            $array_values[] = $value;
        }
    }

    $implode_key = implode(', ', $array_keys);

    $implode_value = implode(', ', $array_values);

    $sql = query("INSERT INTO pages($implode_key) values($implode_value)");

    return $sql;
}

// Удаление записи

function delete_article($delete, $node) {

	if($delete) {
		$sql = query("DELETE FROM pages WHERE id='".escape($node)."';");
		$message = "<p class='js-flash-message' style='color: green;'>Запись успешно удалена.</p>";
	}
	
	return array($sql, $message);
}

// Сохранение записи

function save_article($save, $title_edit, $text_edit, $meta_title, $meta_keywords, $meta_desc, $category_edit, $link_text_edit) {

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

        $implode_array = implode(', ', $updates);

        $sql = query("UPDATE pages SET $implode_array where id=$sid");

        $redirect = "<META HTTP-EQUIV=Refresh content=0;URL=list.php >";

    }

    return array($sql, $redirect);
}

// Отображение записи

function show_article($node) {

	$sql = query("select * FROM pages where id='".escape($node)."';");
	
	while($record = mysql_fetch_array($sql))
	{
		$title = $record['title'];
		$content = $record['content'];
		$link_text = $record['link_text'];
		
		$meta_title = $record['meta_title'];
		$meta_keywords = $record['meta_keywords'];
		$meta_desc = $record['meta_desc'];
	}
	
	return array($title, $content, $meta_title, $meta_keywords, $meta_desc, $link_text);
}

// Mime-types

function get_mime_type($file) {	
	// our list of mime types
	$mime_types = array(	
		"gif"  => "image/gif",
		"png"  => "image/png",
		"jpeg" => "image/jpg",
		"jpg"  => "image/jpg"		
	);

	$extension = strtolower(end(explode('.', $file)));

	return $mime_types[$extension];
}

// Отображение полезного

function show_useful($node) {

	$sql = query("SELECT * FROM pages where id!='".escape($node)."' order by rand() LIMIT 3");
	
	while($record = mysql_fetch_array($sql)) {	
		$useful = print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
	}
	
	return $useful;
}

// Отображение списка категорий

function show_categories() {

	$sql = query("SELECT * FROM categories");

	while($record = mysql_fetch_array($sql)) {
		$category = print '<option value="'.$record['id'].'">'.$record['name'].'</option>';
	}

	return $category;
}

// Отображение списка категорий с активной категорией

function show_current_category($node) {

	$sql_current = query("SELECT categories.id FROM categories, pages where pages.category_id=categories.id AND pages.id='".escape($node)."';");
    $sql = query("SELECT * FROM categories");

    $result = mysql_result($sql_current, 0);


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

function get_count_posts() {
	$result = query("SELECT COUNT(*) FROM pages WHERE user_id='".escape($_SESSION['user_id'])."'");
	$posts = mysql_result($result, 0); 
	
	return $posts;	
}

// Недавние записи (рандомно)

function recent_articles($node) {
	$sql = query("SELECT pages.id, pages.title FROM pages, categories where pages.category_id=categories.id AND pages.id!='".escape($node)."' AND categories.name_code!='home' order by rand() LIMIT 5");
	while($record = mysql_fetch_array($sql)) {
        $recent_article = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
	}
	
	return $recent_article;
}

// Отображение Базы знаний

function show_knowledge_articles() {
	$sql = query("SELECT pages.id, pages.link_text FROM pages, categories WHERE pages.category_id = categories.id AND categories.name_code IN('".escape('knowledge_base')."') order by id desc");
	while($record = mysql_fetch_array($sql)) {
        $recent_article = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recent_article;
}

// Отображение Настройки

function show_setting_articles() {
	$sql = query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id AND categories.name_code IN('".escape('setting')."') order by id desc");
	while($record = mysql_fetch_array($sql)) {
        $recent_article = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recent_article;
}

// Отображение Ремонта

function show_repair_articles() {
	$sql = query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id AND categories.name_code IN('".escape('repair')."') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$recent_article = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recent_article;
}

// Отображение Видео-курсов

function show_video_course_articles() {
	$sql = query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id AND categories.name_code IN('".escape('video_course')."') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$recentArticle = print '<li><a href="/article.php?node='.$record['id'].'">'.$record['link_text'].'</a></li>';
	}

	return $recentArticle;
}

// Отображение статьи на главной

function show_home_article() {
	$sql = query("SELECT pages.* FROM pages, categories where pages.category_id=categories.id AND categories.name_code IN('".escape('home')."') order by id desc");
	while($record = mysql_fetch_array($sql)) {
		$title = $record['title'];
		$content = $record['content'];
		
		$meta_title = $record['meta_title'];
		$meta_keywords = $record['meta_keywords'];
		$meta_desc = $record['meta_desc'];
	}

	return array($title, $content, $meta_title, $meta_keywords, $meta_desc);
}

// Последние статьи

function last_articles($node) {

	$sql = query("SELECT * FROM pages where id!='".$node."' order by id desc LIMIT 5");

	while($record = mysql_fetch_array($sql)) {
		$useful = print '<li><a href="article.php?node='.$record['id'].'">'.$record['title'].'</a></li>';
	}

	return $useful;
}

// Отображение активной категории в поиске

function show_current_search_category() {

	$sql_current = query("SELECT * FROM categories, pages where pages.category_id=categories.id WHERE id='".escape($_POST['categories'])."';");
	
    $sql = query("SELECT * FROM categories");

    $result = mysql_result($sql_current, 0);

    do {
        if ($_POST['categories'] == $result) {
            echo $selected = "<option value=". $record['id'] ." selected>". $record['name'] ."</option>";
        }
        else {
            echo $selected = "<option value=". $record['id'] .">". $record['name'] ."</option>";
        }
    }

    while($record = mysql_fetch_array($sql));

	return $selected;
}

// Категория в результатах поиска

function search_result_category() {
	$sql = "SELECT name from categories WHERE id='".escape($_POST['categories'])."'";
							
	$result = query($sql);
	
	while($record = mysql_fetch_array($result)) {
		$current_category = $record['name'];
	}
	
	return $current_category;
}

function get_disc_free_space($unit) {
	$volume = round(disk_free_space('/')/1048576, 0) . ' ' . $unit;
	return $volume;
}

$disc_free_space = get_disc_free_space('Мб');

function get_disc_total_space($unit) {
	$volume = round(disk_total_space('/')/1048576, 0) . ' ' . $unit;
	return $volume;
}

$disc_total_space = get_disc_total_space('Мб');

// Галерея (Удаление)

function gallery($check) {

    if(isset($_POST['submit']) && is_array($check)) {
        $query = "(" ;
        foreach($check as $val) $query.= "$val,";

        $query = substr($query, 0, strlen($query) - 1 ). ")" ;

        $query = "DELETE FROM files WHERE id IN ".$query;

        $sql = "(" ;
        foreach($check as $val) $sql.= "$val,";

        $sql = substr($sql, 0, strlen($sql) - 1 ). ")" ;

        $sql = "select url FROM files WHERE id IN ".$sql;

        $qr = mysql_query($sql);

        while($records_url = mysql_fetch_array($qr)) {
            $unlink = unlink('..' . $records_url['url']);
        }

        if(!mysql_query($query)) {
            echo mysql_error()."<br>";
            $query."<br>";
        }
    }
    return array($unlink, $query);
}

// Галерея (Удаление одной записи)

function gallery_delete($delete, $node) {
    if($delete) {
        $sql_url = mysql_query("SELECT url FROM files where id='".escape($node)."'");

        $record_url = mysql_fetch_array($sql_url);

        $filename =  '..' . $record_url['url'];
        $unlink = unlink($filename);

        $sql = mysql_query ("DELETE FROM files WHERE id='".escape($node)."';");
        $redirect = print "<META HTTP-EQUIV=Refresh content=0;URL=gallery.php >";
    }
    return array($unlink, $sql, $redirect);
}

// Использование изображений в записях

function used_pictures($record) {

    $num = query("SELECT COUNT(*) FROM pages where content LIKE ('%".escape($record['url'])."%')");

    $count = mysql_result($num, 0);

    $sql_file = query("SELECT*FROM pages where content LIKE ('%".escape($record['url'])."%')");

    if($count) {
        $used_begin = print '<div class="used"><small>Используется тут: </small></div>';
    }

    while($record_two = mysql_fetch_array($sql_file)) {

        $used_next = print '<div class="used">';

        $string = $record_two['title'];

        $result = implode(array_slice(explode('<br>',wordwrap($string, 41, '<br>', false)), 0, 1));


        $used_picture = print '<small><a href="/article.php?node=' .$record_two['id'].  '">'. $result . '</a></small>';

        if($result!=$string) {
            $dot = print '...';
            if(($count[0]) > 1) $sep = print ' /';
        }

        $used_end = print '</div>';
    }

    return array($used_begin, $used_next, $used_picture, $dot, $sep, $used_end);
}
?>