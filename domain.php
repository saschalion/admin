<?php 
if($_POST) {
		// функция читающая инфу о домене с Whois-сервера
	function Domain ($domain){
	$servers = array (
		array ("ru","whois.nic.ru","No entries found"),
		array ("ac","whois.nic.ac","No match"),
		array ("com","whois.verisign-grs.net","No match"),
		array ("com.au","whois.aunic.net","No Data Found"),
		array ("com.br","whois.nic.br","No match"),
		array ("com.cn","whois.cnnic.net.cn","No entries found"),
		array ("com.eg","whois.ripe.net","No entries found"),
		array ("com.hk","whois.hknic.net.hk","No Match for"),
		array ("com.mx","whois.nic.mx","Nombre del Dominio"),
		array ("com.ru","whois.ripn.ru","No entries found"),
		array ("com.tw","whois.twnic.net","NO MATCH TIP"),
		array ("zj.cn","whois.cnnic.net.cn","No entries found")
	);

	$first_dom = substr ($domain, strpos ($domain, ".") + 1);
	for ($i = 0; $i < count ($servers); $i++) {
	if ($servers[$i][0] == $first_dom) {
	$whois = $servers[$i][1];
	$not_found_string = $servers[$i][2];
	break;
	}
	}

	if ( empty ($whois)){ return; }
	$str = '';
	$fp = fsockopen ($whois, 43 , &$errno , &$errstr , 10 );
	fputs ($fp, $domain."\r\n");
	while ( !feof ($fp)) { $str .= str_replace ("\n", "\n<br>", fgets ($fp,128)); }
	fclose ($fp);
	if ( !preg_match ("/".$not_found_string."/is", $str)){
	return "<h3>Домен " . strtoupper ($domain) . " уже зарегистрирован</h3>" . $str;
	}
	else {
	return "<h3>Домен " . strtoupper ($domain) . " не зарегистрирован</h3>" . $str;
	}
	}
		// подставляем домен
	$domain = $_POST['search'];
	$content = Domain ($domain); 
		// если нет Whois-сервера
	if ($content==''){
	print "<h3>К сожалению, не найден соответствующий Whois-сервер</h3>";
	}
		// если есть Whois-сервера печатаем, что он выдал
	else { print $content; }

	$url = $_POST['search'];
	$file = file_get_contents('http://dmoz.org/search?q=:'.$url);
	if(preg_match('#<strong>Open\s*Directory\s*Sites</strong>#ui',$file)) {
	echo'Сайт <b>'.$url.'</b> есть в каталоге dmoz.<br/>';
	} else{
		echo'Сайта <b>'.$url.'</b> нет в каталоге<br/>';
	}

	$fileCat = file_get_contents('http://seogadget.ru/yaca?urls=:'.$url);
	if(preg_match('#Это\s*может\s*занять#ui', $fileCat)) {
	echo'Сайт <b>'.$url.'</b> есть в каталоге yaca.<br/>';
	} else{
		echo'Сайта <b>'.$url.'</b> нет в каталоге<br/>';
	}

	$fileYaca = file_get_contents('http://yaca.yandex.ru/yca/cat/?text=:'.$url);
	if(!preg_match('#Найдено\s*по\s*сайтам\s*—\s*0#ui', $fileYaca)) {
	echo'Сайт <b>'.$url.'</b> есть в каталоге Яндекс.<br/>';
	} else{
		echo'Сайта <b>'.$url.'</b> нет в каталоге Яндекс<br/>';
	}
}  
	function getTCY($url)
	{
		//считываем XML-файл с данными
		$xml = file_get_contents('http://bar-navig.yandex.ru/u?ver=2&show=32&url='.$url);

		//если XML файл прочитан, то возвращаем значение параметра value, иначе возвращаем false - ошибка
		return $xml ? (int) substr(strstr($xml, 'value="'), 7) : false;
	}
	
	$tcy = getTCY($_POST['search']);
	echo $tcy;	

?>
<form action="domain.php" method="post">
<input type="search" name="search" value="<?php echo $_POST['search']; ?>"/>
<input type="submit" value="Найти"/>
</form>