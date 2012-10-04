-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 04 2012 г., 17:46
-- Версия сервера: 5.1.63
-- Версия PHP: 5.2.10-2ubuntu6.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `name_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_code`) VALUES
(1, 'База знаний', 'knowledge_base'),
(2, 'Настройка', 'setting'),
(3, 'Ремонт', 'repair'),
(5, 'Видеокурс по ремонту', 'video_course'),
(6, 'Статья на главной', 'home');

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_FK_2` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `url`, `user_id`, `created_at`) VALUES
(53, '/uploads/mail-95e35faffb80090c8fb13bd92d3a5dae.png', 8, NULL),
(54, '/uploads/forbygh-d5c4660cfa9a596b23787fc380f2e02e.png', 8, NULL),
(55, '/uploads/icons-e1e167d7357c77805cc7ebfd2ab7e02f.png', 8, NULL),
(56, '/uploads/mail-89b579828a66960334dcbb37e77dbadc.png', 8, NULL),
(57, '/uploads/user_menu_arrow-8ba5b7a6743b9dfd6a386c3641957307.png', 8, NULL),
(58, '/uploads/user_menu_arrow_hover-ea64b6819c00fe5789f8f2591ea9b269.png', 8, NULL),
(59, '/uploads/bg-fourth-07b514ed284c20803196be905a2a159a.jpg', 8, NULL),
(60, '/uploads/bg-one-dbe886a96f63a7f2caeaf799e34b0c59.jpg', 8, NULL),
(61, '/uploads/bg-third-6a6f7f9be614f732afcbd307609a7306.jpg', 8, NULL),
(62, '/uploads/icons-cc2b257d916abfb16e4125f923738b25.png', 8, NULL),
(64, '/uploads/proximity_icon_next-ab41d6992baffc2b2f700a11b7c52f4e.png', 8, '2012-10-04 17:41'),
(65, '/uploads/proximity_icon_next-0f4ac433bbb56ba05b44c14004da2e66.png', 8, '2012-10-04 17:43'),
(66, '/uploads/icons-b09cd9884477f42a6543743b35ad0f06.png', 8, '2012-10-04 17:43');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `meta_title` varchar(300) DEFAULT NULL,
  `meta_keywords` varchar(300) DEFAULT NULL,
  `meta_desc` varchar(300) DEFAULT NULL,
  `link_text` varchar(150) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_FK_1` (`user_id`),
  KEY `category_id_FK_3` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `user_id`, `meta_title`, `meta_keywords`, `meta_desc`, `link_text`, `category_id`) VALUES
(96, 'Был разработан дизайн и сделана резиновая верстка div’ами', '', 8, 'Samsung вложит $4 млрд. в фабрику Техаса', 'Samsung вложит $4 млрд. в фабрику Техаса', 'Samsung вложит $4 млрд. в фабрику Техаса', 'Samsung вложит $4 млрд. в фабрику Техаса', 3),
(107, 'checkbox controls below use standard', '<p><span>checkbox controls below use standard</span></p>', 8, 'checkbox controls below use standard', 'checkbox controls below use standard', 'checkbox controls below use standard', 'checkbox controls below use standard', 2),
(109, 'The checkbox controls below use standard', '<p><span>The checkbox controls below use standard input/label markup, but are styled to be more touch-friendly. The styled control you see is actually the label element, which sits over the real input, so if images fail to load, you''ll still have a functional control. In most browsers, clicking the label automatically triggers a click on the input, but we''ve had to trigger the update manually for a few mobile browsers that don''t do this natively. On the desktop, these controls are keyboard and screen-reader accessible. View the&nbsp;</span><a class="ui-link" href="http://jquerymobile.com/demos/1.1.1/docs/api/data-attributes.html">data- attribute reference</a><span>&nbsp;to see all the possible attributes you can add to checkboxe</span></p>', 8, 'The checkbox controls below use standard', 'The checkbox controls below use standard', 'The checkbox controls below use standard', 'The checkbox controls below use standard', 1),
(110, 'В Южную Корею запрещено поставлять ряд смартфонов и планшетов компаний Apple и Samsung', '<p><span>Ресурс Wall Street Journal сообщил, что суд Сеула признал виновными в нарушении авторских прав обе компании и Samsung, и Apple. Компании из Купертино вменяется нарушение двух патентов Samsung, а южнокорейской компании вменяется нарушение одного патента Apple. Сеулский суд обязал компании выплатить друг другу компенсации ущерба. Компания Apple должна выплатить Samsung 17 с половиной тысяч долларов, а компания Samsung должна 22 тысячи долларов.</span></p>', 8, 'В Южную Корею запрещено поставлять ряд смартфонов и планшетов компаний Apple и Samsung', 'В Южную Корею запрещено поставлять ряд смартфонов и планшетов компаний Apple и Samsung', 'В Южную Корею запрещено поставлять ряд смартфонов и планшетов компаний Apple и Samsung', 'В Южную Корею запрещено поставлять ряд смартфонов', 2),
(111, 'Intel остается продолжает лидировать на рынке графических процессоров', '<p>Intel остается продолжает лидировать на рынке графических процессоровIntel остается продолжает лидировать на рынке графических процессоровIntel остается продолжает лидировать на рынке графических процессоровIntel остается продолжает лидировать на рынке графических процессоровIntel остается продолжает лидировать на рынке графических процессоров</p>', 8, 'Intel остается продолжает лидировать на рынке графических процессоров', 'Intel остается продолжает лидировать на рынке графических процессоров', 'Intel остается продолжает лидировать на рынке графических процессоров', 'Intel остается продолжает лидировать на рынке графических процессоров', 6),
(112, 'HP создала подразделение мобильных устройств', '<p><span>Компания HP плотно занялась реорганизацией своей структуры на этой неделе. Ресурс The Verge сообщил, что вслед за этим решение преобразован и отдел по разработке операционной системы WebOS. Команда WebOS начнет работу над облачными решениями.</span></p>', 8, 'HP создала подразделение мобильных устройств', 'HP создала подразделение мобильных устройств', 'HP создала подразделение мобильных устройств', 'HP создала подразделение мобильных устройств', 5),
(113, 'Intel остается продолжает лидировать на рынке графических процессоров', '<p><span>В последнее время наблюдается спад в продажа персональных компьютеров, но несмотря на это второй квартал 2012 года стал весьма успешен для рынка графических устройств, так утверждают аналитики компании Jon Peddie Research.</span></p>', 8, 'Intel остается продолжает лидировать на рынке графических процессоров', 'Intel остается продолжает лидировать на рынке графических процессоров', 'Intel остается продолжает лидировать на рынке графических процессоров', 'Intel продолжает лидировать', 2),
(114, 'HTC улучшит положение на китайском рынке', '<p><span>Компания HTC увеличивает штат разработчиков в Китае и вместе с этим расширяет канал продаж. Все это нужно для завоевания китайского рынка, так как на рынке США и Европы компания HTC теряет позиции из-за сильной конкуренции с Apple и Samsung Electronics. Хотя компания HTC является тайваньской, но большинство ее сотрудников говорит на китайском языке. Раньше компания полностью концентрировалась на рынках США и Европы и ей удавалось конкурировать с iPhone.</span></p>', 8, 'HTC улучшит положение на китайском рынке', 'HTC улучшит положение на китайском рынке', 'HTC улучшит положение на китайском рынке', 'HTC улучшит положение на китайском рынке', 3),
(115, 'В России подавляющее число смартфонов работают на Android', '<p><span>Мировая дола операционной системы Android приближается к отметке в 70%. В России Android пока не так популярен, как в мире, но тоже занимает подавляющую долю рынка. Благодаря низким ценам устройства на операционной системе Android стремительно растут.</span></p>', 8, 'В России подавляющее число смартфонов работают на Android', 'В России подавляющее число смартфонов работают на Android', 'В России подавляющее число смартфонов работают на Android', 'Android', 5),
(116, 'Nokia закрывает свой последний завод в Финляндии', '<p><span>Интернет-портал YLE.fi сообщил, что на этой неделе был изготовлен последний телефон компании Nokia на финляндском заводе. В пятницы компания Nokia полностью подтвердила данное сообщение о закрытии завода в городе Сало в связи с тем, что в июне проводилась полная реструктуризация компании. Планируется сокращение 13,7 тысяч рабочих мест до следующего года. Также компания закрывает научно-технические центры, которые расположены в Германии и Канаде.</span></p>', 8, 'Nokia закрывает свой последний завод в Финляндии', 'Nokia закрывает свой последний завод в Финляндии', 'Nokia закрывает свой последний завод в Финляндии', 'Nokia закрывает свой последний завод в Финляндии', 3),
(117, 'Nokia что-то готовит на 7 сентября', '<p><span>Возле главного, а по совместительству и центрального фирменного салона Nokia, который находиться в Финляндии город Хельсинки появился баннер со надписью &laquo;Что-то удивительное грядет 7.9.2012&Prime;.</span></p>', 8, 'Nokia что-то готовит на 7 сентября', 'Nokia что-то готовит на 7 сентября', 'Nokia что-то готовит на 7 сентября', 'Nokia что-то готовит на 7 сентября', 5),
(118, 'Компьютерная тема', '<p>Новая компьютерная тема</p>', 8, 'Комп титл', 'комп, ключ', 'Дескрипшн', 'Новая компьютерная тема', 3),
(119, 'id', '<p><img src="../uploads/icons-19320284.png" alt="" width="480" height="340" /></p>', 8, '', '', '', '?????', 3),
(121, 'Как подключить два компьютера к интернету через один модем', '<p>Как подключить два компьютера к интернету через один модем</p>', 8, 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 1),
(122, 'Как подключить два компьютера к интернету через один модем', '<p><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span></p>', 8, 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 1),
(123, 'Как подключить два компьютера к интернету через один модем', '<p><span>Как подключить два компьютера к интернету через один модем</span></p>', 8, 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 1),
(124, 'Как подключить два компьютера к интернету через один модем', '<p><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span><span>Как подключить два компьютера к интернету через один модем</span></p>', 8, 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 'Как подключить два компьютера к интернету через один модем', 3),
(126, 'Компьютерная тема', '<p><span>Компьютерная тема</span></p>', 8, 'Компьютерная тема', 'Компьютерная тема', 'Компьютерная тема', 'Компьютерная тема', 5),
(127, 'mysql_insert_id() mysql_insert_id() mysql_insert_id() mysql_insert_id() mysql_insert_id()', '<p>mysql_insert_id() &nbsp;<img src="../uploads/icons-19320284.png" alt="" width="480" height="340" /></p>', 8, '', '', '', 'mysql_insert_id()', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `login` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `password`, `salt`) VALUES
(5, 'Саша', 'saschalion', '666', ''),
(7, 'Иванов', 'alex', '123', ''),
(8, 'alex', 'md5', '84cd3e7ff13bbaed1c1db91671844bcc', '8f*');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `user_id_FK_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `category_id_FK_3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `user_id_FK_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
