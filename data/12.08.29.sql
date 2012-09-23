-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 29 2012 г., 15:40
-- Версия сервера: 5.1.63
-- Версия PHP: 5.2.10-2ubuntu6.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `simple_cms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(150) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_FK_2` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- Дамп данных таблицы `files`
--

INSERT INTO `files` (`id`, `url`, `user_id`) VALUES
(64, '/uploads/grid-made.png', 8),
(66, '/uploads/form.png', 8),
(67, '/uploads/form.jpg', 8),
(68, '/uploads/form.jpg', 8),
(69, '/uploads/grid-made2.png', 8),
(71, '/uploads/grid-made2.png', 8),
(72, '/uploads/grid-made.png', 8),
(73, '/uploads/grid-made.png', 8),
(74, '/uploads/form.png', 8),
(76, '/uploads/form.jpg', 8),
(77, '/uploads/form.jpg', 8),
(82, '/uploads/Play1Pressed.png', 8),
(83, '/uploads/new4.png', 8),
(84, '/uploads/form-bottom.png', 8),
(85, '/uploads/grid-made.png', 8),
(86, '/uploads/Play1Pressed (3-другая копия).jpeg', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_FK_1` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `user_id`) VALUES
(26, 'Sony ÑÐ²Ð¾Ñ€Ð°Ñ‡Ð¸Ð²Ð°ÐµÑ‚ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´ÑÑ‚Ð²Ð¾ Ð¾Ð¿Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ñ… Ð¿Ñ€Ð¸Ð²Ð¾Ð´Ð¾Ð²', '<p>&lt;p&gt;&lt;span&gt;Sony Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑÐ½ÑƒÑŽ Ñ€ÐµÐ¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸ÑŽ Ð±Ð¸Ð·Ð½ÐµÑÐ°, Ð¾Ñ‡ÐµÑ€ÐµÐ´Ð½Ñ‹Ð¼ ÑÑ‚Ð°Ð¿Ð¾Ð¼ ÐºÐ¾Ñ‚Ð¾Ñ€Ð¾Ð¹ ÑÑ‚Ð°Ð½ÐµÑ‚ Ð·Ð°ÐºÑ€Ñ‹Ñ‚Ð¸Ðµ Ð¿Ñ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ Sony Optiarc Ð¿Ð¾ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´ÑÑ‚Ð²Ñƒ Ð¾Ð¿Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ñ… Ð¿Ñ€Ð¸Ð²Ð¾Ð´Ð¾Ð². ÐšÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ñ Sony Optiarc Ð±Ñ‹Ð»Ð° ÑƒÑ‡Ñ€ÐµÐ¶Ð´ÐµÐ½Ð° Ð² 2006 Ð³Ð¾Ð´Ñƒ ÑÐ¾Ð²Ð¼ÐµÑÑ‚Ð½Ð¾ Ñ NEC.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(36, 'Ð¤ÐÐ¡ Ð¾ÑˆÑ‚Ñ€Ð°Ñ„ÑƒÐµÑ‚ Ð·Ð° Ñ€ÐµÐºÐ»Ð°Ð¼Ñƒ Ð°Ð»ÐºÐ¾Ð³Ð¾Ð»Ñ ÑÐ°Ð¹Ñ‚Ñ‹ Ð² Ð·Ð¾Ð½Ðµ .com', '<p>&lt;p&gt;&lt;span&gt;Ð¤ÐµÐ´ÐµÑ€Ð°Ð»ÑŒÐ½Ð°Ñ Ð°Ð½Ñ‚Ð¸Ð¼Ð¾Ð½Ð¾Ð¿Ð¾Ð»ÑŒÐ½Ð°Ñ ÑÐ»ÑƒÐ¶Ð±Ð° ( Ð¤ÐÐ¡ ) Ð±ÑƒÐ´ÐµÑ‚ ÑˆÑ‚Ñ€Ð°Ñ„Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐ°Ð¹Ñ‚Ñ‹ Ð² Ð·Ð¾Ð½Ðµ. com Ð·Ð° Ñ€ÐµÐºÐ»Ð°Ð¼Ñƒ Ð°Ð»ÐºÐ¾Ð³Ð¾Ð»Ñ. ÐžÐ± ÑÑ‚Ð¾Ð¼ ÑÐ¾Ð¾Ð±Ñ‰Ð°ÐµÑ‚ Ð Ð‘Ðš Daily ÑÐ¾ ÑÑÑ‹Ð»ÐºÐ¾Ð¹ Ð½Ð° Ñ€Ð°Ð·ÑŠÑÑÐ½ÐµÐ½Ð¸Ðµ Ð¤ÐÐ¡ Ð½Ð¾Ð²Ñ‹Ñ… Ð¿Ð¾Ð¿Ñ€Ð°Ð²Ð¾Ðº Ð² Ð·Ð°ÐºÐ¾Ð½ "Ðž Ñ€ÐµÐºÐ»Ð°Ð¼Ðµ".&lt;/span&gt;&lt;/p&gt;</p>', 8),
(60, 'Ð”Ñ€Ð°Ð¹Ð²ÐµÑ€ Intel Rapid Storage Technology Enterprise 3.5.0.1101 Ð´Ð»Ñ Ñ‡Ð¸Ð¿ÑÐµÑ‚Ð° Intel X79, Ñ Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶ÐºÐ¾Ð¹ Windows 8', '<p>&lt;p&gt;&lt;span&gt;ÐÐ¾Ð²Ñ‹Ð¹ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€&amp;nbsp;&lt;/span&gt;&lt;em&gt;Intel&lt;/em&gt;&lt;span&gt;&amp;nbsp;RSTe 3.5 Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¿Ð¾Ð´&amp;nbsp;&lt;/span&gt;&lt;span&gt;Ð¾Ð±ÐµÑ‰Ð°Ð½Ð½Ð¾Ðµ Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ, Ð½Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ð¾ÑÐ¿Ð¾ÑÐ¾Ð±Ð½Ð¾ÑÑ‚ÑŒ TRIM Ð²&amp;nbsp;&lt;/span&gt;&lt;span&gt;RAID Ð¿Ñ€Ð¸Ð´ÐµÑ‚ÑÑ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑÑ‚ÑŒ Ð¿Ñ€Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ð¼Ð¸ Ð¸ÑÐ¿Ñ‹Ñ‚Ð°Ð½Ð¸ÑÐ¼Ð¸&lt;/span&gt;&lt;span&gt;.&amp;nbsp;&lt;/span&gt;&lt;em&gt;Intel&lt;/em&gt;&lt;span&gt;&amp;nbsp;RSTe 3.5 Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶Ð¸Ð²Ð°ÐµÑ‚ Ñ‡Ð¸Ð¿ÑÐµÑ‚Ñ‹&amp;nbsp;&lt;/span&gt;&lt;em&gt;Intel&lt;/em&gt;&lt;span&gt;&amp;nbsp;X79 Ð¸&amp;nbsp;&lt;/span&gt;&lt;span&gt;ÑÐµÐ¼ÐµÐ¹ÑÑ‚Ð²Ð¾ ÑÐµÑ€Ð²ÐµÑ€Ð½Ñ‹Ñ… C600, Ð²ÐºÐ»ÑŽÑ‡Ð°Ñ C602, C602J,&amp;nbsp;&lt;/span&gt;&lt;span&gt;C604, C606, C608.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(61, 'CCleaner 3.22 â€“ Ð²Ð¿ÐµÑ€Ð²Ñ‹Ðµ Ð¿Ð¾Ð»Ð½Ð°Ñ ÑÐ¾Ð²Ð¼ÐµÑÑ‚Ð¸Ð¼Ð¾ÑÑ‚ÑŒ Ñ Windows 8', '<p>&lt;p&gt;&lt;span&gt;Ð’ Ð½Ð¾Ð²Ð¾Ð¹ Ð²ÐµÑ€ÑÐ¸Ð¸:Ð ÐµÐ°Ð»Ð¸Ð·Ð¾Ð²Ð°Ð½Ð° Ð¿Ð¾Ð»Ð½Ð°Ñ Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶ÐºÐ°&amp;nbsp;&lt;/span&gt;&lt;em&gt;Windows&lt;/em&gt;&lt;span&gt;&amp;nbsp;8.Ð£Ð»ÑƒÑ‡ÑˆÐµÐ½Ð° ÑÐ¾Ð²Ð¼ÐµÑÑ‚Ð¸Ð¼Ð¾ÑÑ‚ÑŒ Ð¿Ñ€Ð¸ Ñ€Ð°Ð±Ð¾Ñ‚Ðµ ÑÐ¾&amp;nbsp;&lt;/span&gt;&lt;span&gt;ÑÐ¿Ð¸ÑÐºÐ¾Ð¼ Ð°Ð²Ñ‚Ð¾Ð·Ð°Ð³Ñ€ÑƒÐ·ÐºÐ¸.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(62, 'KNOPPIX 7.0.4', '<p>&lt;p&gt;&lt;span&gt;ÐžÑÐ¾Ð±ÐµÐ½Ð½Ð¾ÑÑ‚Ð¸ Ð½Ð¾Ð²Ð¾Ð¹ Ð²ÐµÑ€ÑÐ¸Ð¸: ÐŸÐ¾Ð´Ð´ÐµÑ€Ð¶ÐºÐ° Ñ„Ð°Ð¹Ð»Ð¾Ð²Ð¾Ð¹&amp;nbsp;&lt;/span&gt;&lt;span&gt;ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ ExFAT (Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÑ‚ÑÑ Ð¼Ð¾Ð´ÑƒÐ»ÑŒ ExFAT-fuse);&amp;nbsp;&lt;/span&gt;&lt;span&gt;Ð’Ð¾Ð·Ð²Ñ€Ð°Ñ‰ÐµÐ½Ñ‹ ÑÐºÑ€Ð¸Ð¿Ñ‚Ñ‹ gprsconnect Ð¸ modemlink;&amp;nbsp;&lt;/span&gt;&lt;span&gt;Ð”Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÐºÐ¾Ð¼Ð¿Ð¾Ð½ÐµÐ½Ñ‚Ð¾Ð² ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ Ð¿Ñ€Ð¾Ñ„Ð¸Ð»Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ&amp;nbsp;&lt;/span&gt;&lt;span&gt;oprofile; ÐÐ¾Ð²Ñ‹Ðµ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼, Ð² Ñ‚Ð¾Ð¼ Ñ‡Ð¸ÑÐ»Ðµ ÑÐ´Ñ€Ð¾&amp;nbsp;&lt;/span&gt;&lt;span&gt;Linux 3.4.9, X.Org 7.7, X-ÑÐµÑ€Ð²ÐµÑ€ 1.12.3,Chromium&amp;nbsp;&lt;/span&gt;&lt;span&gt;21, Firefox/Iceweasel 10.0.6, PCMANFM 1.0, Wine&amp;nbsp;&lt;/span&gt;&lt;span&gt;1.5.10, Virtualbox 4.1.18, qemu-kvm 1.0.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(63, 'Yahoo! Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ð»Ð° Ð¢Ðœ Flickr Ð² Ð£ÐºÑ€Ð°Ð¸Ð½Ðµ', '<p>&lt;p&gt;&lt;span&gt;Ð—Ð°ÑÐ²ÐºÐ° Ð±Ñ‹Ð»Ð° Ð¿Ð¾Ð´Ð°Ð½Ð° ÐµÑ‰Ðµ Ð² ÐºÐ¾Ð½Ñ†Ðµ 2010 Ð³Ð¾Ð´Ð°. Ð¢ÐµÐ¿ÐµÑ€ÑŒ&amp;nbsp;&lt;/span&gt;&lt;em&gt;Yahoo Inc&lt;/em&gt;&lt;span&gt;&amp;nbsp;Ð¸Ð¼ÐµÐµÑ‚ ÑÐºÑÐºÐ»ÑŽÐ·Ð¸Ð²Ð½Ð¾Ðµ Ð¿Ñ€Ð°Ð²Ð¾ Ð½Ð° Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð½Ð¸Ðµ&amp;nbsp;&lt;/span&gt;&lt;span&gt;Ð¸Ð¼ Ð² Ð£ÐºÑ€Ð°Ð¸Ð½Ðµ. ÐŸÐ¾Ð´ Ñ‚Ð¾Ñ€Ð³Ð¾Ð²Ñ‹Ð¼ Ð·Ð½Ð°ÐºÐ¾Ð¼ flickr&amp;nbsp;&lt;/span&gt;&lt;em&gt;Yahoo&lt;/em&gt;&lt;span&gt;&amp;nbsp;&lt;/span&gt;&lt;span&gt;Ð¿Ð¾Ð»ÑƒÑ‡Ð°ÐµÑ‚ Ð¿Ñ€Ð°Ð²Ð¾ Ð¾ÐºÐ°Ð·Ñ‹Ð²Ð°Ñ‚ÑŒ Ð² Ð½Ð°ÑˆÐµÐ¹ ÑÑ‚Ñ€Ð°Ð½Ðµ ÑƒÑÐ»ÑƒÐ³Ð¸ Ð¸Ð·&amp;nbsp;&lt;/span&gt;&lt;span&gt;ÑÑ„ÐµÑ€Ñ‹ Ñ‚ÐµÐ»ÐµÐºÐ¾Ð¼Ð¼ÑƒÐ½Ð¸ÐºÐ°Ñ†Ð¸Ð¹ Ð¸ Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ð°, Ñ€ÐµÐºÐ»Ð°Ð¼Ñ‹,&amp;nbsp;&lt;/span&gt;&lt;span&gt;Ñ€Ð°Ð·Ð²Ð»ÐµÑ‡ÐµÐ½Ð¸Ð¹.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(64, 'Ð¡Ñ†ÐµÐ½Ð°Ñ€Ð¸Ð¹ ÑÐºÑ€Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Uncharted Ð½Ð¾Ð²ÑŒ Ð±ÑƒÐ´ÐµÑ‚ Ð¿ÐµÑ€ÐµÐ¿Ð¸ÑÐ°Ð½', '<p>&lt;p&gt;&lt;span&gt;ÐÐ°Ð¿Ð¾Ð¼Ð½Ð¸Ð¼, Ñ‡Ñ‚Ð¾ Ñ€Ð¾Ð»ÑŒ ÐÐ°Ñ‚Ð°Ð½Ð° Ð”Ñ€ÐµÐ¹ÐºÐ° Ð¿Ñ€Ð¸Ð½Ð°Ð´Ð»ÐµÐ¶Ð°Ð»Ð° ÐœÐ°Ñ€ÐºÑƒ Ð£Ð¾Ð»Ð±ÐµÑ€Ð³Ñƒ, Ð·Ð°Ð´Ð°Ñ‡Ð° ÐºÐ¾Ñ‚Ð¾Ñ€Ð¾Ð³Ð¾ Ð·Ð°ÐºÐ»ÑŽÑ‡Ð°Ð»Ð°ÑÑŒ Ð² Ð¿Ð¾Ð¸ÑÐºÐ°Ñ… Ð¿Ð¾Ñ‚ÐµÑ€ÑÐ½Ð½Ð¾Ð³Ð¾ ÑÐ¾ÐºÑ€Ð¾Ð²Ð¸Ñ‰Ð° Ð­Ð»ÑŒÐ´Ð¾Ñ€Ð°Ð´Ð¾ Ð»ÑŽÐ±Ð¸Ð¼Ñ‹Ð¼ Ð¼Ð½Ð¾Ð³Ð¸Ð¼Ð¸ Ð³ÐµÑ€Ð¾ÐµÐ¼ ÑÐµÑ€Ð¸Ð¸ Ð¸Ð³Ñ€. Ð Ð°Ð±Ð¾Ñ‚Ð° Ð½Ð°Ð´ Ñ„Ð¸Ð»ÑŒÐ¼Ð¾Ð¼ Ð¿Ñ€Ð¾Ð´Ð¾Ð»Ð¶Ð°ÐµÑ‚ÑÑ ÐµÑ‰Ðµ Ñ 2010 Ð³Ð¾Ð´Ð°, Ð° Ð·Ð° ÑÑ‚Ð¾ Ð²Ñ€ÐµÐ¼Ñ Ð¼Ñ‹ Ð¸Ð¼ÐµÐµÐ¼ Ð»Ð¸ÑˆÑŒ Ñ‚Ñ€ÐµÑ‚ÑŒÐµÐ³Ð¾ Ñ€ÐµÐ¶Ð¸ÑÑÐµÑ€Ð° Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð° ÑÐºÑ€Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Uncharted.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(65, 'Painkiller: Hell & Damnation. Ð¡ÐºÑ€Ð¸Ð½ÑˆÐ¾Ñ‚Ñ‹', '<p>&lt;p&gt;&lt;span&gt;Ð’Ð´Ð¾Ñ…Ð½ÑƒÑ‚ÑŒ Ð² Painkiller Ð½Ð¾Ð²ÑƒÑŽ Ð¶Ð¸Ð·Ð½ÑŒ Ð¿Ð¾Ð¼Ð¾Ð¶ÐµÑ‚ Ñ…Ð¾Ñ€Ð¾ÑˆÐ¾ Ð·Ð°Ñ€ÐµÐºÐ¾Ð¼ÐµÐ½Ð´Ð¾Ð²Ð°Ð²ÑˆÐ¸Ð¹ ÑÐµÐ±Ñ Ð´Ð²Ð¸Ð¶Ð¾Ðº Unreal Engine 3. Ðž ÑÑ€Ð¾ÐºÐ°Ñ… Ð²Ñ‹Ñ…Ð¾Ð´Ð° Painkiller: Hell &amp;amp; Damnation Ð¿Ð¾ÐºÐ° Ð½Ðµ ÑÐ¾Ð¾Ð±Ñ‰Ð°ÐµÑ‚ÑÑ.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(66, 'VMware Fusion 5 Ð¿Ð¾Ð·Ð²Ð¾Ð»Ð¸Ñ‚ Ð·Ð°Ð¿ÑƒÑÐºÐ°Ñ‚ÑŒ Windows 8 Ð¸Ð· OS X Mountain Lion', '<p>&lt;p&gt;&lt;span&gt;VMware Ð¾Ð±ÑŠÑÐ²Ð¸Ð»Ð° Ð¾ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ð¾ÑÑ‚Ð¸ Ð½Ð¾Ð²Ð¾Ð¹ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð²Ð¸Ñ€Ñ‚ÑƒÐ°Ð»ÑŒÐ½Ð¾Ð¹ Ð¼Ð°ÑˆÐ¸Ð½Ñ‹ Fusion 5 Ð´Ð»Ñ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ OS X. Ð’ Ð½ÐµÐ¹ Ð±Ñ‹Ð»Ð° Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð° Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶ÐºÐ° Mountain Lion Ð¸ Windows 8, Ð° Ñ‚Ð°ÐºÐ¶Ðµ ÑÐ´ÐµÐ»Ð°Ð½Ð¾ Ð¼Ð½Ð¾Ð¶ÐµÑÑ‚Ð²Ð¾ Ð´Ñ€ÑƒÐ³Ð¸Ñ… Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ð¹.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(67, 'Ð¡Ð»ÐµÐ´ÑƒÑŽÑ‰Ð°Ñ Ð¸Ð³Ñ€Ð° Ð¾Ñ‚ ÐŸÐ¸Ñ‚ÐµÑ€Ð° ÐœÐ¾Ð»Ð¸Ð½ÑŒÐµ Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ Cooperation', '<p>&lt;p&gt;&lt;span&gt;Ð˜Ð³Ñ€Ð°, ÐºÐ°Ðº Ð¼Ð¾Ð¶Ð½Ð¾ Ð¿Ð¾Ð½ÑÑ‚ÑŒ Ð¸Ð· Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ñ, Ð±ÑƒÐ´ÐµÑ‚ ÑÐ¾Ñ€ÐµÐ²Ð½Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ð¹. ÐŸÐ¾ Ð¿Ð¾Ð²Ð¾Ð´Ñƒ Ñ†ÐµÐ»ÐµÐ²Ñ‹Ñ… Ð¿Ð»Ð°Ñ‚Ñ„Ð¾Ñ€Ð¼ ÐœÐ¾Ð»Ð¸Ð½ÑŒÐµ Ð½Ð¸Ñ‡ÐµÐ³Ð¾ Ð½Ðµ ÑÐºÐ°Ð·Ð°Ð», Ð¾Ð´Ð½Ð°ÐºÐ¾, Ð¿Ñ€ÐµÐ´Ð¿Ð¾Ð»Ð¾Ð¶Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾, ÑÑ‚Ð¾ Ð±ÑƒÐ´ÑƒÑ‚ Ð²ÑÑ‘ Ñ‚Ðµ Ð¶Ðµ PC, iOS Ð¸ Android.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(68, 'Ð ÐµÐ»Ð¸Ð· True Image 2013 by Acronis Ð´Ð»Ñ Ð´Ð¾Ð¼Ð°ÑˆÐ½Ð¸Ñ… Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹', '<p>&lt;p&gt;&lt;span&gt;ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð½Ð°Ñ ÑÐ±Ð¾Ñ€ÐºÐ° Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð° Ñ…Ð°Ñ€Ð°ÐºÑ‚ÐµÑ€Ð¸Ð·ÑƒÐµÑ‚ÑÑ Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶ÐºÐ¾Ð¹ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ Windows 8, Ñ€Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð½Ñ‹Ð¼Ð¸ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑÐ¼Ð¸ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ Ñ„Ð°Ð¹Ð»Ð°Ð¼Ð¸ Ð¸ Ð¸Ð½Ñ‚ÐµÐ³Ñ€Ð°Ñ†Ð¸ÐµÐ¹ Ñ Ð¾Ð±Ð»Ð°Ñ‡Ð½Ñ‹Ð¼ Ñ…Ñ€Ð°Ð½Ð¸Ð»Ð¸Ñ‰ÐµÐ¼ Acronis True Image Online.&lt;/span&gt;&lt;/p&gt;</p>', 8),
(69, 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº', '<p>Ð²Ð°</p>', 8);

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
  ADD CONSTRAINT `user_id_FK_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
