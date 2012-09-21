<ul class="b-menu">
    <li class="b-menu__item">
        <a href="/" class="b-menu__link">
            <span class="b-menu__icon b-menu__icon_icon_home"></span>
            <span class="b-menu__link-text">Сайт</span>
        </a>
    </li>

    <?php
    if (!isset($_SESSION['user_id']))
    {
        print '
		<li class="b-menu__item">
			<a href="login.php" class="b-menu__link">				
				<span class="b-menu__icon b-menu__icon_icon_auth"></span>
				<span class="b-menu__link-text">Авторизация</span>	
			</a>
		</li>';
    }
    else
    {
        $currentUrl = $_SERVER["REQUEST_URI"];

        $links = array(
            '/admin/list.php' => 'Админка',
            '/admin/gallery.php' => 'Галерея',
            '/admin/stat.php' => 'Статистика'
        );

        foreach($links as $link => $name) {

            if($link == $currentUrl) {
        ?>

            <li class="b-menu__item b-menu__item_state_active">
                <a class="b-menu__link">
                    <span class="b-menu__icon b-menu__icon_icon_admin"></span>
                    <span class="b-menu__link-text">
                        <?=$name?>
                    </span>
                </a>
            </li>

        <?php } else { ?>

                <li class="b-menu__item">
                    <a href='<?=$link?>' class="b-menu__link">
                        <span class="b-menu__icon b-menu__icon_icon_admin"></span>
                    <span class="b-menu__link-text">
                        <?=$name?>
                    </span>
                    </a>
                </li>

        <?php } }
    } ?>
</ul>
