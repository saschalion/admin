<ul class="b-menu">
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
            array(
                'link' => '/',
                'text' => 'Сайт',
                'icon' => 'b-menu__icon_icon_home'
            ),
            array(
                'link' => '/admin/list.php',
                'text' => 'Админка',
                'icon' => 'b-menu__icon_icon_admin',
            ),
            array(
                'link' => '/admin/gallery.php',
                'text' => 'Галерея',
                'icon' => 'b-menu__icon_icon_gallery'
            ),
            array(
                'link' => '/admin/stat.php',
                'text' => 'Статистика',
                'icon' => 'b-menu__icon_icon_gallery'
            ),
            array(
                'link' => 'login.php?logout',
                'text' => 'Выход',
                'icon' => 'b-menu__icon_icon_exit'
            )
        );
        foreach($links as $link => $name) {
            if($name['link'] == $currentUrl) { ?>

                <li class="b-menu__item b-menu__item_state_active">
                    <a class="b-menu__link">
                        <span class="b-menu__icon <?=$name['icon']?>"></span>
                        <span class="b-menu__link-text">
                            <?=$name['text']?>
                        </span>
                    </a>
                </li>

            <?php } else { ?>

                <li class="b-menu__item">
                    <a href='<?=$name['link']?>' class="b-menu__link">
                        <span class="b-menu__icon <?=$name['icon']?>"></span>
                        <span class="b-menu__link-text">
                            <?=$name['text']?>
                        </span>
                    </a>
                </li>

            <?php }
        }
    } ?>
</ul>