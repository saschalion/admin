 <FORM action="" method="POST"> 
<INPUT type="text" name="ip" size="50" class="bginput" tabindex="101" value="89.111.176.35" onfocus="if (this.value == '85.101.136.235') this.value = '';" /> 
<input type="submit" value="Ok" class="button"> 
<br /> 
<p>Для получения информации о другом пользователе по средствам IP, введите в строку наиже IP пользователь, в формате <b>xxx.xxx.xxx.xxx</b></p> 
</form> 
<div align="left"> 
<?php 
if ($ip!="") 
{ 
        $sock=fsockopen ("whois.ripe.net",43,$errno,$errstr); 
        if (!$sock) 
        { 
                echo ($errstr($errno)."<br>"); 
        } 
        else 
        { 
                fputs ($sock,$ip."\r\n"); 
                while (!feof($sock)) 
                { 
                        echo (str_replace(":",":&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;",fgets ($sock,128))."<br>"); 
                } 
        } 
        fclose ($sock); 
} 
?> 

<?php 
$to  = "saschalion@list.ru" ; 

$subject = "Birthday Reminders for August"; 

$message = ' 
<html> 
    <head> 
        <title>Birthday Reminders for August</title> 
    </head> 
    <body> 
        <p>Here are the birthdays upcoming in August!</p> 
    </body> 
</html>'; 

$headers  = "Content-type: text/html; charset=windows-1251 \r\n"; 
$headers .= "From: Birthday Reminder <birthday@example.com>\r\n"; 
$headers .= "Bcc: birthday-archive@example.com\r\n"; 

mail($to, $subject, $message, $headers); 
?>
</div> 
</div> 