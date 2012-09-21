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
            '/admin/stat.php' => 'Статистика',
            'login.php?logout' => 'Выход'
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
        $pageURL .= $_SERVER["REQUEST_URI"];
        $linkAdmin = '/admin/list.php';
        $linkGallery = '/admin/gallery.php';
        $linkStat = '/admin/stat.php';

        if($pageURL == $linkAdmin) {
            print '
				<li class="b-menu__item b-menu__item_state_active">
					<a href="'.$linkAdmin.'" class="b-menu__link">
						<span class="b-menu__icon b-menu__icon_icon_admin"></span>
						<span class="b-menu__link-text">Админка</span>
					</a>
				</li>';
        }
        else {
            print '<li class="b-menu__item">
				<a href="'.$linkAdmin.'" class="b-menu__link">
					<span class="b-menu__icon b-menu__icon_icon_admin"></span>
					<span class="b-menu__link-text">Админка</span>
				</a>
			</li>';
        }

        if($pageURL == $linkGallery) {
            print '
				<li class="b-menu__item b-menu__item_state_active">
					<a href="'.$linkGallery.'" class="b-menu__link">
						<span class="b-menu__icon b-menu__icon_icon_gallery"></span>
						<span class="b-menu__link-text">Галерея</span>
					</a>
				</li>';
        }
        else {
            print '<li class="b-menu__item">
				<a href="'.$linkGallery.'" class="b-menu__link">
				<span class="b-menu__icon b-menu__icon_icon_gallery"></span>
				<span class="b-menu__link-text">Галерея</span>
				</a>
			</li>';
        }

        if($pageURL == $linkStat) {
            print '
				<li class="b-menu__item b-menu__item_state_active">
					<a href="'.$linkStat.'" class="b-menu__link">
						<span class="b-menu__icon b-menu__icon_icon_gallery"></span>
						<span class="b-menu__link-text">Статистика</span>
					</a>
				</li>';
        }
        else {
            print '<li class="b-menu__item">
				<a href="'.$linkStat.'" class="b-menu__link">
				<span class="b-menu__icon b-menu__icon_icon_gallery"></span>
				<span class="b-menu__link-text">Статистика</span>
				</a>
			</li>';
        }

        print '
		<li class="b-menu__item">
			<a href="login.php?logout" class="b-menu__link">
				<span class="b-menu__icon b-menu__icon_icon_exit"></span>
				<span class="b-menu__link-text">Выход</span>
			</a>
		</li>';
    }
    ?>
</ul>
