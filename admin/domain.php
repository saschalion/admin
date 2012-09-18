					<?php 
set_time_limit (0);
    // ������� �������� ���� � ������ � Whois-�������
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
$fp = fsockopen ($whois, 43 , &$errno , &$errstr , 30 );
fputs ($fp, $domain."\r\n");
while ( !feof ($fp)) { $str .= str_replace ("\n", "\n<br>", fgets ($fp,128)); }
fclose ($fp);
if ( !preg_match ("/".$not_found_string."/is", $str)){
return "<h3>����� " . strtoupper ($domain) . " ��� ���������������</h3>" . $str;
}
else {
return "<h3>����� " . strtoupper ($domain) . " �� ���������������</h3>" . $str;
}
}
    // ����������� �����
$domain = $_POST['search'];
$content = Domain ($domain); 
    // ���� ��� Whois-�������
if ($content==''){
print "<h3>� ���������, �� ������ ��������������� Whois-������</h3>";
}
    // ���� ���� Whois-������� ��������, ��� �� �����
else { print $content; }

$url= $_POST['search'];
$file = file_get_contents('http://search.dmoz.org/cgi-bin/search?search=u:'.$url);
if(preg_match('#<strong>Open\s*Directory\s*Sites</strong>#ui',$file)){
echo'���� <b>'.$url.'</b> ���� � ��������';
}else{
echo'����� <b>'.$url.'</b> ��� � ��������';
}

?>
<form action="index.php" method="post">
<input type="search" name="search" value="<?php echo $_POST['search']; ?>"/>
<input type="submit" value="�����"/>
</form>