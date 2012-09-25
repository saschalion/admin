<ul class="b-menu">
	<?php
        $current_url = $_SERVER["REQUEST_URI"];

        $links = array(
            array(
                'link' => 'login.php',
                'text' => 'Авторизация',
                'icon' => 'b-menu__icon_icon_auth',
                'role' => 'unauth'
            ),
            array(
                'link' => '/',
                'text' => 'Сайт',
                'icon' => 'b-menu__icon_icon_home',
                'role' => 'auth'
            ),
            array(
                'link' => '/admin/list.php',
                'text' => 'Админка',
                'icon' => 'b-menu__icon_icon_admin',
                'role' => 'auth'
            ),
            array(
                'link' => '/admin/gallery.php',
                'text' => 'Галерея',
                'icon' => 'b-menu__icon_icon_gallery',
                'role' => 'auth'
            ),
            array(
                'link' => '/admin/stat.php',
                'text' => 'Статистика',
                'icon' => 'b-menu__icon_icon_stat',
                'role' => 'auth'
            ),
            array(
                'link' => 'login.php?logout',
                'text' => 'Выход',
                'icon' => 'b-menu__icon_icon_exit',
                'role' => 'auth'
            )
        );
        foreach($links as $link => $name) {

            if(isset($_SESSION['user_id']) && $name['role'] == 'auth') {
                if($name["link"] == $current_url) { ?>

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
                        <a href="<?=$name['link']?>" class="b-menu__link">
                            <span class="b-menu__icon <?=$name['icon']?>"></span>
                        <span class="b-menu__link-text">
                            <?=$name["text"]?>
                        </span>
                        </a>
                    </li>

                <?php }
            }

            if(!isset($_SESSION['user_id']) && $name['role'] == 'unauth') {
                if($name["link"] == $current_url) { ?>

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
                        <a href="<?=$name['link']?>" class="b-menu__link">
                            <span class="b-menu__icon <?=$name['icon']?>"></span>
                        <span class="b-menu__link-text">
                            <?=$name["text"]?>
                        </span>
                        </a>
                    </li>

                <?php }
            }
        }
    ?>
</ul>