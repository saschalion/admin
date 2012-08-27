<ul class="menu">
	<li>
		<a href="../articles.php">Статьи</a>
	</li>
	
	<?php
	if (!isset($_SESSION['user_id']))
	{
		print '<li><a href="/login.php">Авторизация</a></li>';
	}
	else
	{
		print '
		<li class="price">
			<a href="/admin/list.php">Админка</a>
		</li>
		<li><a href="/login.php?logout">Выход</a></li>';
	}
	?>						
</ul>