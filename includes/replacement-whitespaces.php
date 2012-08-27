<?php
	$currenFile = $_SERVER['DOCUMENT_ROOT'] . $_SERVER['PHP_SELF'];

	$file = file_get_contents($currenFile);
	$data = preg_replace(array('/\r+/', '/\n+/', '/\t+/', '/<\?.*?\?>/'), '', $file);

	print $data;

	die;
?>