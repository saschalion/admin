-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 23 2012 г., 05:35
-- Версия сервера: 5.1.53
-- Версия PHP: 5.2.14

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
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`) VALUES
(7, 'ÐÐ¿Ð¿Ð°Ñ€Ð°Ñ‚Ð½Ð¾Ðµ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸Ðµ catalyst', '<p>Ð¥Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ·Ð½Ð°Ñ‚ÑŒ, Ñ‡Ñ‚Ð¾ Ð¶Ðµ Ñ‚Ð°ÐºÐ¾Ðµ <strong>Ð°Ð¿Ð¿Ð°Ñ€Ð°Ñ‚Ð½Ð¾Ðµ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸Ðµ catalyst</strong>?<img title="ÐÐ¿Ð¿Ð°Ñ€Ð°Ñ‚Ð½Ð¾Ðµ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸Ðµ ATI" src="http://seucomp.ru/images/imageswork/apparatnoe_uskorenie_catalyst.jpg" alt="ÐÐ¿Ð¿Ð°Ñ€Ð°Ñ‚Ð½Ð¾Ðµ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸Ðµ ATI" align="left" /> ÐœÑ‹ ÑÐ¼Ð¾Ð¶ÐµÐ¼ Ð¾Ñ‚Ð²ÐµÑ‚Ð¸Ñ‚ÑŒ Ð’Ð°Ð¼ Ð½Ð° ÑÑ‚Ð¾Ñ‚ Ð²Ð¾Ð¿Ñ€Ð¾Ñ Ð¿Ñ€ÑÐ¼Ð¾ ÑÐµÐ¹Ñ‡Ð°Ñ. ÐŸÐ¾Ð´ Ð°Ð¿Ð¿Ð°Ñ€Ð°Ñ‚Ð½Ñ‹Ð¼ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸ÐµÐ¼ Ð¿Ð¾Ð´Ñ€Ð°Ð·ÑƒÐ¼ÐµÐ²Ð°ÐµÑ‚ÑÑ ÑÐ¿Ð¾ÑÐ¾Ð± Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð½Ð¾Ð³Ð¾ Ð¾Ð±ÐµÑÐ¿ÐµÑ‡ÐµÐ½Ð¸Ñ (Ð² Ð´Ð°Ð½Ð½Ð¾Ð¼ ÑÐ»ÑƒÑ‡Ð°Ðµ, Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ñ‹ catalyst Ð¾Ñ‚ ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸Ð¸ ati), ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ð¹ Ð¿Ð¾Ð·Ð²Ð¾Ð»ÑÐµÑ‚ ÑƒÑÐºÐ¾Ñ€ÑÑ‚ÑŒ Ð½ÐµÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¸ ÐºÐ¾Ð¼Ð¿Ð¾Ð½ÐµÐ½Ñ‚Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð°, Ð¸ Ð¾Ð½ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð±Ñ‹ÑÑ‚Ñ€ÐµÐµ, Ð½ÐµÐ¶ÐµÐ»Ð¸, Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð¿Ð¾Ð´ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ð¾Ð¹ Ð¸ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÐ¾Ñ€Ð¾Ð¼.<br /><br />ÐÐ¿Ð¿Ð°Ñ€Ð°Ñ‚Ð½Ð¾Ðµ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸Ðµ catalyst Ð¿Ð¾Ð·Ð²Ð¾Ð»ÑÐµÑ‚ Ð´ÐµÐ»Ð°Ñ‚ÑŒ Ñ‚Ð°ÐºÐ¸Ðµ Ð¿Ð¾Ð»ÐµÐ·Ð½Ñ‹Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ, ÐºÐ°Ðº ÐºÐ¾Ð´Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð²Ð¸Ð´ÐµÐ¾ Ð²Ñ‹ÑÐ¾ÐºÐ¾Ð³Ð¾ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¸Ñ, <a href="http://seucomp.ru/video_proigryvaetsya_na_noutbuke_a_zvuka_net.php">Ð¿Ñ€Ð¾Ð¸Ð³Ñ€Ñ‹Ð²Ð°Ð½Ð¸Ðµ Ð²Ð¸Ð´ÐµÐ¾</a> Ð² Ñ‚Ð°ÐºÐ¾Ð¼ Ð²Ñ‹ÑÐ¾Ñ‡Ð°Ð¹ÑˆÐµÐ³Ð¾ ÐºÐ°Ñ‡ÐµÑÑ‚Ð²Ð° Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ðµ, ÐºÐ°Ðº H.264, Ð½Ñƒ Ð¸ ÐºÐ¾Ð½ÐµÑ‡Ð½Ð¾, Ñ Ð°Ð¿Ð¿Ð°Ñ€Ð°Ñ‚Ð½Ñ‹Ð¼ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸ÐµÐ¼ catalyst <a href="http://seucomp.ru/steam-for-mac.php">Ð’Ð°ÑˆÐ¸ Ð»ÑŽÐ±Ð¸Ð¼Ñ‹Ðµ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹</a> Ð±ÑƒÐ´ÑƒÑ‚ Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ñ‚ÑŒ ÐµÑ‰Ðµ Ð±Ñ‹ÑÑ‚Ñ€ÐµÐµ. <strong>Ð•ÑÐ»Ð¸ Ð’Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ·Ð½Ð°Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ</strong> Ð¾ Ñ‚Ð¾Ð¼, ÐºÐ°ÐºÐ¸Ðµ ÐµÑ‰Ðµ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¸ Ð¿Ð¾Ð·Ð²Ð¾Ð»ÑÐµÑ‚ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒ Ð°Ð¿Ð¿Ð°Ñ€Ð°Ñ‚Ð½Ð¾Ðµ ÑƒÑÐºÐ¾Ñ€ÐµÐ½Ð¸Ðµ catalyst, Ð° Ñ‚Ð°ÐºÐ¶Ðµ ÐºÐ°Ðº Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ñ‚ÑŒ Ñ Ð´Ð°Ð½Ð½Ð¾Ð¹ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¾Ð¹, Ð’Ñ‹ Ð²ÑÐµÐ³Ð´Ð° ÑÐ¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÑŒÑÑ Ðº Ð½Ð°ÑˆÐ¸Ð¼ Ð²Ñ‹ÑÐ¾ÐºÐ¾ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼ Ð·Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ð¾Ð¹ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒÑŽ - Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ Ð´Ð½Ñ Ð¸ Ð»ÑŽÐ±Ð¾Ð¹ Ð´ÐµÐ½ÑŒ Ð½ÐµÐ´ÐµÐ»Ð¸.</p>'),
(8, 'ÐšÐ°Ðº Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ñ‚ÐµÐ»ÐµÐ²Ð¸Ð·Ð¾Ñ€ Ñ‡ÐµÑ€ÐµÐ· ati radeon 5750', '<p>ÐŸÐ¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ñ‚ÐµÐ»ÐµÐ²Ð¸Ð·Ð¾Ñ€ Ñ‡ÐµÑ€ÐµÐ· ati radeon Ð½ÐµÐ²ÐµÑ€Ð¾ÑÑ‚Ð½Ð¾ Ð¿Ñ€Ð¾ÑÑ‚Ð¾- Ð´Ð¾ÑÑ‚Ð°Ñ‚Ð¾Ñ‡Ð½Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€ Ðº Ñ‚ÐµÐ»ÐµÐ²Ð¸Ð·Ð¾Ñ€Ñƒ Ñ‡ÐµÑ€ÐµÐ· ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ð¹ ÐºÐ°Ð±ÐµÐ»ÑŒ.<img title="ÐŸÐ¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ Ð¢Ð’ Ðº Ð²Ð¸Ð´ÐµÐ¾ÐºÐ°Ñ€Ñ‚Ðµ radeon" src="http://seucomp.ru/images/imageswork/connect_your_tv_via_ati_radeon_5750.jpg" alt="ÐŸÐ¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ Ð¢Ð’ Ðº Ð²Ð¸Ð´ÐµÐ¾ÐºÐ°Ñ€Ñ‚Ðµ radeon" align="left" /> ÐŸÑ€Ð¸ ÑÑ‚Ð¾Ð¼ ÐºÐ°Ð±ÐµÐ»ÑŒ Ð´Ð¾Ð»Ð¶ÐµÐ½ Ð¿Ð¾Ð´ÑÐ¾ÐµÐ´Ð¸Ð½ÑÑ‚ÑŒÑÑ Ðº ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ Ñ‡ÐµÑ€ÐµÐ· Ð²Ð¸Ð´ÐµÐ¾ÐºÐ°Ñ€Ñ‚Ñƒ. Ð¡ÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÐµÑ‚ Ð¾Ð³Ñ€Ð¾Ð¼Ð½Ð¾Ðµ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ÐºÐ°Ð±ÐµÐ»ÐµÐ¹, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿Ð¾Ð·Ð²Ð¾Ð»ÑÑŽÑ‚ <strong>Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ñ‚ÐµÐ»ÐµÐ²Ð¸Ð·Ð¾Ñ€ Ñ‡ÐµÑ€ÐµÐ· ati radeon 5750</strong> - Ð¼Ñ‹ ÑÐ¾Ð²ÐµÑ‚ÑƒÐµÐ¼ Ð’Ð°Ð¼ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÑŒ ÑÐ²Ð¾Ðµ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ Ð½Ð° HDMI Ð¸ VGA ÑÐ¾ÐµÐ´Ð¸Ð½ÐµÐ½Ð¸Ñ, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿Ð¾Ð·Ð²Ð¾Ð»ÑÑŽÑ‚ Ð´Ð¾Ð±Ð¸Ñ‚ÑŒÑÑ Ð½Ð°Ð¸Ð±Ð¾Ð»ÐµÐµ Ð²Ñ‹ÑÐ¾ÐºÐ¾Ð³Ð¾ ÐºÐ°Ñ‡ÐµÑÑ‚Ð²Ð° Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ Ð½Ð° Ñ‚ÐµÐ»ÐµÐ²Ð¸Ð·Ð¾Ñ€Ðµ, Ð¿Ð¾ ÑÑ€Ð°Ð²Ð½ÐµÐ½Ð¸ÑŽ Ñ Ð´Ñ€ÑƒÐ³Ð¸Ð¼Ð¸ Ñ‚Ð¸Ð¿Ð°Ð¼Ð¸ ÑÐ¾ÐµÐ´Ð¸Ð½ÐµÐ½Ð¸Ñ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð° Ñ Ñ‚ÐµÐ»ÐµÐ²Ð¸Ð·Ð¾Ñ€Ð¾Ð¼.<br /><br /> Ð•ÑÐ»Ð¸ Ñƒ Ð’Ð°Ñ Ð½Ðµ Ð¿Ð¾Ð»ÑƒÑ‡Ð°ÐµÑ‚ÑÑ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ñ‚ÐµÐ»ÐµÐ²Ð¸Ð·Ð¾Ñ€ Ñ‡ÐµÑ€ÐµÐ· ati radeon 5750, Ð’Ñ‹ ÑÐ¼ÐµÐ»Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¾Ð±Ñ€Ð°Ñ‰Ð°Ñ‚ÑŒÑÑ Ðº Ð²Ñ‹ÑÐ¾ÐºÐ¾ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼ Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð° <a href="http://seucomp.ru/">ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ð¾Ð¹ Ð¿Ð¾Ð¼Ð¾Ñ‰Ð¸</a>, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿Ñ€ÐµÐ²Ð¾ÑÑ…Ð¾Ð´Ð½Ð¾ Ñ€Ð°Ð·Ð±Ð¸Ñ€Ð°ÑŽÑ‚ÑÑ Ð² Ñ‚ÐµÑ…Ð½Ð¸ÐºÐµ Ð¸ Ð±ÑƒÐ´ÑƒÑ‚ Ñ€Ð°Ð´Ñ‹ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ Ð’Ð°Ð¼ Ð¸ Ð’Ð°ÑˆÐµÐ¼Ñƒ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ Ð´Ð½Ñ Ð¸ Ð»ÑŽÐ±Ð¾Ð¹ Ð´ÐµÐ½ÑŒ Ð½ÐµÐ´ÐµÐ»Ð¸, Ð²ÐµÐ´ÑŒ Ñ‚ÐµÐ¿ÐµÑ€ÑŒ <strong>Ð½Ð°ÑˆÐ¸ Ð¾Ð¿Ñ‹Ñ‚Ð½Ñ‹Ðµ Ð¼Ð°ÑÑ‚ÐµÑ€Ð°</strong> Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÑŽÑ‚ Ð´Ð°Ð¶Ðµ Ð² Ð²Ñ‹Ñ…Ð¾Ð´Ð½Ñ‹Ðµ Ð¸ Ð¿Ñ€Ð°Ð·Ð´Ð½Ð¸Ñ‡Ð½Ñ‹Ðµ Ð´Ð½Ð¸! ÐœÑ‹ Ð¶Ð´ÐµÐ¼ Ð’Ð°Ñ Ð² Ð½Ð°ÑˆÐµÐ¼ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð¼ Ñ†ÐµÐ½Ñ‚Ñ€Ðµ: Ð¿Ñ€Ð¸Ñ…Ð¾Ð´Ð¸Ñ‚Ðµ, Ð¸ Ð’Ñ‹ Ð½Ðµ Ð¾ÑÑ‚Ð°Ð½ÐµÑ‚ÐµÑÑŒ Ñ€Ð°Ð·Ð¾Ñ‡Ð°Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹ Ð½Ð°ÑˆÐ¸Ð¼Ð¸ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ñ‹Ð¼Ð¸ ÑƒÑÐ»ÑƒÐ³Ð°Ð¼Ð¸!</p>'),
(9, 'Ð¡Ð¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ñ‡ÐµÑ€ÐµÐ· Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚', '<p>Ð•ÑÐ»Ð¸ Ð’Ð°Ð¼ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ Ð²Ñ‹Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÑŒ <strong>ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸ÑŽ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ñ‡ÐµÑ€ÐµÐ· Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚</strong>, Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ Ð·Ð°Ð¹Ñ‚Ð¸ Ð² Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð´Ð°Ñ‚Ñ‹ Ð¸ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ (Ð² Ð¿Ð°Ð½ÐµÐ»Ð¸ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ Ð¸Ð»Ð¸ Ñ‰ÐµÐ»ÐºÐ½ÑƒÑ‚ÑŒ Ð½Ð° Ð·Ð½Ð°Ñ‡Ð¾Ðº <a href="http://seucomp.ru/poleznye_programmy_dlya_pc.php">Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸</a> Ð² Ð¿Ñ€Ð°Ð²Ð¾Ð¼ Ð½Ð¸Ð¶Ð½ÐµÐ¼ ÑƒÐ³Ð»Ñƒ).<img title="ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ð½Ð° ÐŸÐš" src="http://seucomp.ru/images/imageswork/time_synchronization.jpg" alt="ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ð½Ð° ÐŸÐš" align="left" /> ÐŸÐ¾ÑÐ»Ðµ ÑÑ‚Ð¾Ð³Ð¾ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ Ð·Ð°Ð¹Ñ‚Ð¸ Ð½Ð° Ð²ÐºÐ»Ð°Ð´ÐºÑƒ Ð’Ñ€ÐµÐ¼Ñ Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ð° Ð¸ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð»ÑŽÐ±Ð¾Ð¹ ÑÐµÑ€Ð²ÐµÑ€, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ð¹ Ð¾ÑÑƒÑ‰ÐµÑÑ‚Ð²Ð»ÑÐµÑ‚ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸ÑŽ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ñ‡ÐµÑ€ÐµÐ· Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚. Ð’Ñ€ÐµÐ¼Ñ ÑÐµÑ€Ð²ÐµÑ€Ð¾Ð² windows Ð´Ð°Ð»ÐµÐºÐ¾ Ð½Ðµ Ð²ÑÐµÐ³Ð´Ð° Ð±Ñ‹Ð²Ð°ÐµÑ‚ Ð´Ð¾ÑÑ‚Ð°Ñ‚Ð¾Ñ‡Ð½Ð¾ Ñ‚Ð¾Ñ‡Ð½Ñ‹Ð¼, Ñ‚Ð°Ðº Ñ‡Ñ‚Ð¾ ÐµÑÐ»Ð¸ Ð’Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð´Ð¾Ð±Ð¸Ñ‚ÑŒÑÑ Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾Ð¹ Ñ‚Ð¾Ñ‡Ð½Ð¾ÑÑ‚Ð¸ Ð’Ð°ÑˆÐ¸Ñ… Ñ‡Ð°ÑÐ¾Ð² Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ, Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð²Ð¿Ð¸ÑˆÐ¸Ñ‚Ðµ Ð´Ñ€ÑƒÐ³Ð¾Ð¹ ÑÐµÑ€Ð²ÐµÑ€ Ñ‚Ð¾Ñ‡Ð½Ð¾Ð³Ð¾ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ð² ÑÑ‚Ñ€Ð¾ÐºÑƒ ÑÐµÑ€Ð²ÐµÑ€Ð¾Ð².<br /><br /> Ð¢Ð°ÐºÐ¶Ðµ Ð²Ð¾ Ð²ÐºÐ»Ð°Ð´ÐºÐµ <a href="http://seucomp.ru/utility_pod_windowsxp.php">Ð’Ñ€ÐµÐ¼Ñ Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ð°</a> Ð’Ñ‹ Ð²ÑÐµÐ³Ð´Ð° ÑÐ¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¸Ð·Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð²Ñ€ÐµÐ¼Ñ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Ñ‡ÐµÑ€ÐµÐ· Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚. Ð£ Ð’Ð°Ñ Ð½Ðµ Ð¿Ð¾Ð»ÑƒÑ‡Ð°ÐµÑ‚ÑÑ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð²Ñ€ÐµÐ¼Ñ Ñ‡ÐµÑ€ÐµÐ· Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚? Ð’ ÑÑ‚Ð¾Ð¼ Ð½ÐµÑ‚ Ð½Ð¸Ñ‡ÐµÐ³Ð¾ ÑÑ‚Ñ€Ð°ÑˆÐ½Ð¾Ð³Ð¾.</p>\r\n<h2>ÐŸÑ€ÐµÐ¸Ð¼ÑƒÑ‰ÐµÑÑ‚Ð²Ð° ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ñ‡ÐµÑ€ÐµÐ· Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚:</h2>\r\n<ul>\r\n<li>ÐÐ° Ð’Ð°ÑˆÐµÐ¼ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð²ÑÐµÐ³Ð´Ð° Ð±ÑƒÐ´ÐµÑ‚ Ð¼Ð°ÐºÑÐ¸Ð¼Ð°Ð»ÑŒÐ½Ð¾ Ñ‚Ð¾Ñ‡Ð½Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ. Ð Ð¼Ð½Ð¾Ð³Ð¸Ðµ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð½Ñ‹Ðµ Ðº ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ Ð¼Ð¾Ð±Ð¸Ð»ÑŒÐ½Ñ‹Ðµ ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð° (Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€, iphone) Ñ‚Ð°ÐºÐ¶Ðµ Ð±ÑƒÐ´ÑƒÑ‚ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒÑÑ Ñ Ð’Ð°ÑˆÐ¸Ð¼ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð¾Ð¼ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸.</li>\r\n<li>Ð’Ð°Ð¼ Ð½Ðµ Ð¿Ñ€Ð¸Ð´ÐµÑ‚ÑÑ Ð²Ñ‹ÑÑ‚Ð°Ð²Ð»ÑÑ‚ÑŒ Ð²Ñ€ÐµÐ¼Ñ Ð²Ñ€ÑƒÑ‡Ð½ÑƒÑŽ - Ð²ÑÐµ Ð±ÑƒÐ´ÐµÑ‚ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´Ð¸Ñ‚ÑŒÑÑ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸. Ð¢ÐµÐ¼ Ð±Ð¾Ð»ÐµÐµ, Ñ‡Ñ‚Ð¾ Ð²Ð¾ Ð²Ñ€ÐµÐ¼Ñ Ð¿ÐµÑ€ÐµÐ²Ð¾Ð´Ð° Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸, Ð²Ñ€ÐµÐ¼Ñ Ñ‚Ð°ÐºÐ¶Ðµ Ð¼ÐµÐ½ÑÐµÑ‚ÑÑ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸.</li>\r\n</ul>\r\n<p><img title="Ð¡Ð¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ñ‡ÐµÑ€ÐµÐ· Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚" src="http://seucomp.ru/images/sinhronizaziya_vremeni.jpg" alt="Ð¡Ð¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸ Ñ‡ÐµÑ€ÐµÐ· Ð¸Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚" align="right" />ÐŸÑ€Ð¾ÑÑ‚Ð¾ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº <strong>ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼</strong> Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð°, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿Ñ€ÐµÐ²Ð¾ÑÑ…Ð¾Ð´Ð½Ð¾ Ñ€Ð°Ð·Ð±Ð¸Ñ€Ð°ÑŽÑ‚ÑÑ Ð² ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð°Ñ… Ð¸ Ð²ÑÐµÐ³Ð´Ð° Ð±ÑƒÐ´ÑƒÑ‚ Ñ€Ð°Ð´Ñ‹ Ð¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð’Ð°Ð¼ ÐºÐ°Ñ‡ÐµÑÑ‚Ð²ÐµÐ½Ð½ÑƒÑŽ Ð¸ Ð¾Ð¿ÐµÑ€Ð°Ñ‚Ð¸Ð²Ð½ÑƒÑŽ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½ÑƒÑŽ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒ Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ Ð´Ð½Ñ Ð¸ Ð»ÑŽÐ±Ð¾Ð¹ Ð´ÐµÐ½ÑŒ Ð½ÐµÐ´ÐµÐ»Ð¸.</p>'),
(10, 'Ð¡Ð¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ ÐºÐ¿Ðº Ñ windows 7', '<p>Ð’Ð°Ð¼ Ð¸Ð½Ñ‚ÐµÑ€ÐµÑÐ½Ð¾ Ð·Ð½Ð°Ñ‚ÑŒ, ÐºÐ°Ðº Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´Ð¸Ñ‚ÑŒ <strong>ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸ÑŽ ÐºÐ¿Ðº Ñ windows 7</strong>? Ð’ Ð¿Ñ€Ð¸Ð½Ñ†Ð¸Ð¿Ðµ, Ð² ÑÑ‚Ð¾Ð¼ Ð½ÐµÑ‚ Ð½Ð¸Ñ‡ÐµÐ³Ð¾ ÑÐ»Ð¾Ð¶Ð½Ð¾Ð³Ð¾, Ð¾ÑÐ¾Ð±ÐµÐ½Ð½Ð¾, ÐµÑÐ»Ð¸ Ðº Ð’Ð°ÑˆÐµÐ¼Ñƒ ÐºÐ¿Ðº Ð¿Ñ€Ð¸Ð»Ð°Ð³Ð°ÐµÑ‚ÑÑ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ð°Ñ ÑƒÑ‚Ð¸Ð»Ð¸Ñ‚Ð° Ð´Ð»Ñ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Ñ Ð´Ð°Ð½Ð½Ð¾Ð¹ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ð¾Ð¹.</p>\r\n<h2>ÐšÐ°Ðº Ð¼Ð¾Ð¶Ð½Ð¾ ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸ÑŽ ÐšÐŸÐš:</h2>\r\n<ul>\r\n<li>Ð§ÐµÑ€ÐµÐ· USB. ÐŸÑ€Ð¾ÑÑ‚Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ Ð¿Ð¾Ñ€Ñ‚Ð°Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€ Ðº ÐŸÐš Ñ‡ÐµÑ€ÐµÐ· usb Ð¿Ð¾Ñ€Ñ‚. ÐšÐ°Ðº Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¾, ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð¿Ñ€Ð¾Ð¸ÑÑ…Ð¾Ð´Ð¸Ñ‚ Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸, ÐºÐ°Ðº Ñ‚Ð¾Ð»ÑŒÐºÐ¾ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ Ð²ÑÐµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ñ‹Ðµ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð°.</li>\r\n<li>ÐŸÐ¾ wifi ÑÐµÑ‚Ð¸. ÐÐµÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð° (Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€, iphone) Ð¼Ð¾Ð¶Ð½Ð¾ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ñ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð¾Ð¼ Ñ‡ÐµÑ€ÐµÐ· wifi, ÑÐºÐ°Ñ‡Ð°Ð² Ð²ÑÑŽ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼ÑƒÑŽ Ð¼ÑƒÐ·Ñ‹ÐºÑƒ, Ð·Ð°Ð¼ÐµÑ‚ÐºÐ¸ Ð¸ Ñ„Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ð¸Ð¸.</li>\r\n</ul>\r\n<p><img title="Ð¡Ð¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ ÐºÐ¿Ðº Ñ windows 7" src="http://seucomp.ru/images/synhronizaziya_kpk.jpg" alt="Ð¡Ð¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸Ñ ÐºÐ¿Ðº Ñ windows 7" align="right" />Ð•ÑÐ»Ð¸ Ð’Ð°Ð¼ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ð·Ð°Ð´Ð°Ñ‡Ð¸, ÐºÐ¾Ð½Ñ‚Ð°ÐºÑ‚Ñ‹, ÐºÐ°Ð»ÐµÐ½Ð´Ð°Ñ€Ð¸ Ð¸ Ñƒ Ð’Ð°Ñ Ð½Ð° ÐºÐ°Ñ€Ð¼Ð°Ð½Ð½Ð¾Ð¼ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð° Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð°Ñ ÑÐ¸ÑÑ‚ÐµÐ¼Ð° windows <a href="http://seucomp.ru/vozmoznosti_servisa_mobileme.php">mobile</a>, Ñ‚Ð¾ Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð»ÐµÐ³ÐºÐ¾ Ð¸ Ð¿Ñ€Ð¾ÑÑ‚Ð¾ ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸ÑŽ ÐºÐ¿Ðº Ñ windows 7 Ñ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒÑŽ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ñ‹ <a href="http://seucomp.ru/nastroyka_microsoft_outlook.php">Microsoft Outlook</a>.<img title="ÐŸÐ¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ ÐšÐŸÐš Ðº ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ" src="http://seucomp.ru/images/imageswork/synchronize_pda_with_windows_7.jpg" alt="ÐŸÐ¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ ÐšÐŸÐš Ðº ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ" align="right" /><br /><br /> Ð’ ÑÐ»ÑƒÑ‡Ð°Ðµ, ÐµÑÐ»Ð¸ Ñƒ Ð’Ð°Ñ Ð½Ð¸ÐºÐ°Ðº Ð½Ðµ Ð¿Ð¾Ð»ÑƒÑ‡Ð°ÐµÑ‚ÑÑ ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ ÑÐ¸Ð½Ñ…Ñ€Ð¾Ð½Ð¸Ð·Ð°Ñ†Ð¸ÑŽ ÐºÐ¿Ðº Ñ windows 7, Ñ‚Ð¾ Ð’Ñ‹ Ð²ÑÐµÐ³Ð´Ð° ÑÐ¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÑŒÑÑ Ðº Ð²Ñ‹ÑÐ¾ÐºÐ¾ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼ Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð°, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð´Ð»Ñ Ð¾ÐºÐ°Ð·Ð°Ð½Ð¸Ñ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ð¾Ð¹ Ð¿Ð¾Ð¼Ð¾Ñ‰Ð¸ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÑŽÑ‚ Ð¸ÑÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸Ð¾Ð½Ð½Ð¾Ðµ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð½Ð¾Ðµ Ð¾Ð±ÐµÑÐ¿ÐµÑ‡ÐµÐ½Ð¸Ðµ, Ð¾Ñ‚Ð»Ð¸Ñ‡Ð½Ð¾ Ð·Ð°Ñ€ÐµÐºÐ¾Ð¼ÐµÐ½Ð´Ð¾Ð²Ð°Ð²ÑˆÐµÐµ ÑÐµÐ±Ñ Ð½Ð° Ñ€Ñ‹Ð½ÐºÐµ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ñ‹Ñ… Ñ‚ÐµÑ…Ð½Ð¾Ð»Ð¾Ð³Ð¸Ð¹ Ð¿Ð¾ Ð²ÑÐµÐ¼Ñƒ Ð¼Ð¸Ñ€Ñƒ. ÐÐ°ÑˆÐ¸ Ð²Ñ‹ÑÐ¾ÐºÐ¾ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ðµ Ð¼Ð°ÑÑ‚ÐµÑ€Ð° Ð±ÑƒÐ´ÑƒÑ‚ Ñ€Ð°Ð´Ñ‹ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ Ð’Ð°Ð¼ Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ Ð´Ð½Ñ Ð¸ Ð»ÑŽÐ±Ð¾Ð¹ Ð´ÐµÐ½ÑŒ Ð½ÐµÐ´ÐµÐ»Ð¸ Ð±ÐµÐ· Ð¿Ñ€Ð°Ð·Ð´Ð½Ð¸ÐºÐ¾Ð² Ð¸ Ð²Ñ‹Ñ…Ð¾Ð´Ð½Ñ‹Ñ… Ð´Ð½ÐµÐ¹!</p>'),
(11, 'ÐŸÐ¾Ñ‡ÐµÐ¼Ñƒ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ Ð½Ð° windows 7', '<p>Ð•ÑÐ»Ð¸ Ð’Ñ‹ Ð¾Ð±Ð½Ð°Ñ€ÑƒÐ¶Ð¸Ð»Ð¸, Ñ‡Ñ‚Ð¾ <strong>Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ Ð½Ð° windows 7</strong> - Ñ‚Ð¾ Ð½Ðµ ÑÑ‚Ð¾Ð¸Ñ‚ Ð¾Ð³Ð¾Ñ€Ñ‡Ð°Ñ‚ÑŒÑÑ, Ð´Ð°Ð½Ð½Ð°Ñ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ð° Ð¿Ð¾Ð¿Ñ€Ð°Ð²Ð¸Ð¼Ð°, Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼ Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð°.</p>\r\n<h2>Ð§Ñ‚Ð¾ Ð¼Ð¾Ð¶ÐµÑ‚ Ð²Ñ‹Ð·Ð²Ð°Ñ‚ÑŒ Ð´Ð°Ð½Ð½ÑƒÑŽ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñƒ:</h2>\r\n<ul>\r\n<li>ÐžÑ‚ÑÑƒÑ‚ÑÑ‚Ð²Ð¸Ðµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ñ‹Ñ… Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð¾Ð². ÐŸÑ€Ð¾ÑÐ»ÐµÐ´Ð¸Ñ‚Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€ Ð±Ñ‹Ð»Ð¸ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ñ‹ Ð²ÑÐµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ñ‹Ðµ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð° Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ Ð¿Ð»Ð°Ñ‚Ñ‹. Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ð¾Ð¿Ñ€Ð¾Ð±Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿ÐµÑ€ÐµÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¸Ð»Ð¸ Ð¾Ð±Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¸Ñ…. ÐŸÑ€Ð¸ ÑÑ‚Ð¾Ð¼ Ð¾Ð½Ð¸ Ð¾Ð±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ÑŒ Ð¸Ð¼ÐµÐ½Ð½Ð¾ Ðº Ð’Ð°ÑˆÐµÐ¹ Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ðµ.</li>\r\n<li>Ð’Ð½Ð¸Ð¼Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ, Ð² ÐºÐ°ÐºÐ¾Ð¹ ÑÐ»Ð¾Ñ‚ Ð²ÑÑ‚Ð°Ð²Ð»ÐµÐ½ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ - Ð½ÐµÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ñ‹Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ð¸ Ð¿ÑƒÑ‚Ð°ÑŽÑ‚ Ð¸ ÑÐ»ÑƒÑ‡Ð°Ð¹Ð½Ð¾ Ð²ÑÑ‚Ð°Ð²Ð»ÑÑŽÑ‚ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ Ð² ÑÐ»Ð¾Ñ‚ Ð´Ð»Ñ Ð½Ð°ÑƒÑˆÐ½Ð¸ÐºÐ¾Ð².</li>\r\n</ul>\r\n<p>Ð’Ð¾-Ð¿ÐµÑ€Ð²Ñ‹Ñ…, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ, Ð¸ÑÐ¿Ñ€Ð°Ð²ÐµÐ½ Ð»Ð¸ ÑÐ°Ð¼ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ - Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ ÐµÐ³Ð¾ Ðº Ð´Ñ€ÑƒÐ³Ð¾Ð¼Ñƒ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ.<img title="ÐœÐ¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð½Ð° Windows 7" src="http://seucomp.ru/images/imageswork/not_the_microphone_on_windows_7.jpg" alt="ÐœÐ¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð½Ð° Windows 7" align="left" /> Ð¢Ð°ÐºÐ¶Ðµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ Ð¿Ñ€Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ ÑÐ¾ÐµÐ´Ð¸Ð½ÐµÐ½Ð¸Ðµ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½Ð° Ðº ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ - Ð½Ð°Ð¿Ñ€Ð¸Ð¼ÐµÑ€, Ð½ÐµÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿ÑƒÑ‚Ð°ÑŽÑ‚ ÑÐ»Ð¾Ñ‚Ñ‹ Ð´Ð»Ñ Ð½Ð°ÑƒÑˆÐ½Ð¸ÐºÐ¾Ð² ÑÐ¾ ÑÐ»Ð¾Ñ‚Ð¾Ð¼ Ð´Ð»Ñ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½Ð°. Ð’Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾, Ñ‡Ñ‚Ð¾ Ð’Ð°Ñˆ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ Ð¿Ð¾ÑÑ‚Ð°Ð²Ð»ÑÐ»ÑÑ Ñ Ð½Ð°Ð±Ð¾Ñ€Ð¾Ð¼ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð¾Ð² Ð´Ð»Ñ Ð½ÐµÐ³Ð¾ - ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚Ðµ Ð¸Ñ… Ð½Ð° ÑÐ²Ð¾Ð¹ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€.<br /><br /> Ð•ÑÐ»Ð¸ ÑÑ‚Ð¾ Ð½Ðµ Ð¿Ð¾Ð¼Ð¾Ð³Ð»Ð¾ Ð¸ Ð¿Ð¾-Ð¿Ñ€ÐµÐ¶Ð½ÐµÐ¼Ñƒ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ Ð½Ð° windows 7, Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ð¾Ð¿Ñ€Ð¾Ð±Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿ÐµÑ€ÐµÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ <a href="http://seucomp.ru/ne_mogu_nakti_drayvera.php">Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð° Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ Ð¿Ð»Ð°Ñ‚Ñ‹</a>, Ð¸Ð»Ð¸ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¸Ñ… Ð±Ð¾Ð»ÐµÐµ Ñ€Ð°Ð½Ð½ÑŽÑŽ Ð¸Ð»Ð¸ Ð¿Ð¾Ð·Ð´Ð½ÑŽÑŽ Ð²ÐµÑ€ÑÐ¸ÑŽ, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð’Ñ‹ Ð²ÑÐµÐ³Ð´Ð° ÑÐ¼Ð¾Ð¶ÐµÑ‚Ðµ ÑÐºÐ°Ñ‡Ð°Ñ‚ÑŒ Ñ Ð¾Ñ„Ð¸Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾Ð³Ð¾ ÑÐ°Ð¹Ñ‚Ð°-Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸ÐºÐ° <a href="http://seucomp.ru/problema_s_nerodnymi_drayverami_i_zvukom.php">Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ Ð¿Ð»Ð°Ñ‚Ñ‹</a>.<img title="ÐŸÐ¾Ñ‡ÐµÐ¼Ñƒ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½" src="http://seucomp.ru/images/pochemu_ne_rabotaet_mikrofon.jpg" alt="ÐŸÐ¾Ñ‡ÐµÐ¼Ñƒ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½" align="right" /> Ð•ÑÐ»Ð¸ ÑÑ‚Ð¾ Ð½Ðµ Ð¿Ð¾Ð¼Ð¾Ð³Ð»Ð¾ Ð¸ Ð¿Ð¾-Ð¿Ñ€ÐµÐ¶Ð½ÐµÐ¼Ñƒ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð¼Ð¸ÐºÑ€Ð¾Ñ„Ð¾Ð½ Ð½Ð° windows 7, Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº <strong>Ð²Ñ‹ÑÐ¾ÐºÐ¾ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼</strong> Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð°, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð±ÑƒÐ´ÑƒÑ‚ Ñ€Ð°Ð´Ñ‹ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ Ð’Ð°Ð¼ Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ.</p>'),
(12, 'ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° Ð²Ð¸Ð½Ð´Ð¾ÑƒÑ 7', '<p>Ð•ÑÐ»Ð¸ Ð’Ñ‹ <a href="http://seucomp.ru/problemy_ustanovki_windows.php">ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ð»Ð¸ Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€ Windows 7</a> Ð²Ð·Ð°Ð¼ÐµÐ½ Ð±Ð¾Ð»ÐµÐµ ÑÑ‚Ð°Ñ€Ð¾Ð¹ Ð²ÐµÑ€ÑÐ¸Ð¸ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹, Ñ‚Ð¾ Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ ÑÑ‚Ð¾Ð»ÐºÐ½ÑƒÑ‚ÑŒÑÑ Ñ Ñ‚ÐµÐ¼, Ñ‡Ñ‚Ð¾ Ñƒ Ð’Ð°Ñ <strong>Ð½Ðµ Ð±ÑƒÐ´ÐµÑ‚ Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ñ‚ÑŒ Ð·Ð²ÑƒÐº Ð½Ð° Ð²Ð¸Ð½Ð´Ð¾ÑƒÑ 7</strong>.<img title="ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° Ð²Ð¸Ð½Ð´Ð¾ÑƒÑ 7" src="http://seucomp.ru/images/zvuk_na_windows_7_1.jpg" alt="ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° Ð²Ð¸Ð½Ð´Ð¾ÑƒÑ 7" align="right" /> Ð•ÑÐ»Ð¸ Ñ‚Ð°ÐºÐ¾Ðµ Ð¿Ñ€Ð¾Ð¸Ð·Ð¾ÑˆÐ»Ð¾, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ð¾Ñ‚ÑÐ¾ÐµÐ´Ð¸Ð½Ð¸Ñ‚ÑŒ Ð·Ð²ÑƒÐºÐ¾Ð²ÑƒÑŽ Ð¿Ð»Ð°Ñ‚Ñƒ (ÐµÑÐ»Ð¸ Ð¾Ð½Ð° ÑÑŠÐµÐ¼Ð½Ð°Ñ) Ð¸ Ð·Ð°Ð½Ð¾Ð²Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ. Ð’Ð¿Ð¾Ð»Ð½Ðµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾, Ñ‡Ñ‚Ð¾ Ð´Ð°Ð½Ð½Ð°Ñ Ð·Ð²ÑƒÐºÐ¾Ð²Ð°Ñ Ð¿Ð»Ð°Ñ‚Ð° Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð½Ðµ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ðº Ð’Ð°ÑˆÐµÐ¹ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ðµ. <strong>Ð¢Ð°ÐºÐ¶Ðµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÑŒÑÑ</strong>, Ñ‡Ñ‚Ð¾ Ñƒ Ð’Ð°Ñ ÑÑ‚Ð¾Ð¸Ñ‚ Ð¸Ð¼ÐµÐ½Ð½Ð¾ Ð»Ð¸Ñ†ÐµÐ½Ð·Ð¸Ð¾Ð½Ð½Ð°Ñ Ð²ÐµÑ€ÑÐ¸Ñ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹, Ñ‚Ð°Ðº ÐºÐ°Ðº Ð½ÐµÐ»Ð¸Ñ†ÐµÐ½Ð·Ð¸Ð¾Ð½Ð½Ð°Ñ Windows Ñ‡Ð°ÑÑ‚Ð¾ Ð²Ñ‹Ð´Ð°ÐµÑ‚ Ð¿Ð¾Ð´Ð¾Ð±Ð½Ñ‹Ðµ Ð¾ÑˆÐ¸Ð±ÐºÐ¸.</p>\r\n<h2>ÐŸÐ¾Ñ‡ÐµÐ¼Ñƒ Ð¼Ð¾Ð¶ÐµÑ‚ Ð²Ð¾Ð·Ð½Ð¸ÐºÐ°Ñ‚ÑŒ Ð´Ð°Ð½Ð½Ð°Ñ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ð°:</h2>\r\n<ul>\r\n<li>ÐÐµ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ñ‹ Ð²ÑÐµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ñ‹Ðµ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð° Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ñ‹ Ð¸Ð»Ð¸ Ð¾Ð½Ð¸ Ð¿Ð¾Ð²Ñ€ÐµÐ¶Ð´ÐµÐ½Ñ‹. ÐŸÐ¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ð¿ÐµÑ€ÐµÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¸Ñ… Ð·Ð°Ð½Ð¾Ð²Ð¾, Ð¶ÐµÐ»Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾, ÑÐ°Ð¼ÑƒÑŽ Ð½Ð¾Ð²ÑƒÑŽ Ð²ÐµÑ€ÑÐ¸ÑŽ.</li>\r\n<li>ÐÐµÐ¸ÑÐ¿Ñ€Ð°Ð²Ð½Ð¾ÑÑ‚ÑŒ ÑÐ°Ð¼Ð¾Ð¹ Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ñ‹ Ð¸Ð»Ð¸ ÐµÐµ Ð¿Ð»Ð¾Ñ…Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ð»Ð¸ Ð² ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ. Ð’ Ñ‚Ð°ÐºÐ¾Ð¼ ÑÐ»ÑƒÑ‡Ð°Ðµ Ð²Ñ€ÑÐ´ Ð»Ð¸ Ð’Ñ‹ ÑÐ¿Ñ€Ð°Ð²Ð¸Ñ‚ÐµÑÑŒ ÑÐ¾Ð±ÑÑ‚Ð²ÐµÐ½Ð½Ñ‹Ð¼Ð¸ ÑÐ¸Ð»Ð°Ð¼Ð¸ - Ð»ÑƒÑ‡ÑˆÐµ Ð²Ñ‹Ð·Ð²Ð°Ñ‚ÑŒ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°.</li>\r\n</ul>\r\n<p>Ð•ÑÐ»Ð¸ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° Ð²Ð¸Ð½Ð´Ð¾ÑƒÑ 7, Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ð¾Ð¿Ñ€Ð¾Ð±Ð¾Ð²Ð°Ñ‚ÑŒ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð° Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ Ð¿Ð»Ð°Ñ‚Ñ‹, Ð° <a href="http://seucomp.ru/problema_s_nerodnymi_drayverami_i_zvukom.php">Ð·Ð°Ñ‚ÐµÐ¼ Ð·Ð°Ð½Ð¾Ð²Ð¾ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¸Ñ…</a> - Ð¶ÐµÐ»Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½ÑŽÑŽ Ð²ÐµÑ€ÑÐ¸ÑŽ (Ñ‚Ð°Ðº ÐºÐ°Ðº Ð½Ð° Ð´Ð¸ÑÐºÐµ Ñƒ Ð’Ð°Ñ,<img title="ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° Windows 7" src="http://seucomp.ru/images/zvuk_na_windows_7_2.jpg" alt="ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° Windows 7" align="right" /> ÑÐºÐ¾Ñ€ÐµÐµ Ð²ÑÐµÐ³Ð¾, ÑƒÐ¶Ðµ ÑƒÑÑ‚Ð°Ñ€ÐµÐ²ÑˆÐ°Ñ Ð²ÐµÑ€ÑÐ¸Ñ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð¾Ð² Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ Ð¿Ð»Ð°Ñ‚Ñ‹, ÐºÐ¾Ñ‚Ð¾Ñ€Ð°Ñ Ð½Ðµ Ð¿Ð¾Ð´Ñ…Ð¾Ð´Ð¸Ñ‚ Ðº Ð´Ð°Ð½Ð½Ð¾Ð¹ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ ÑÐ¸ÑÑ‚ÐµÐ¼Ðµ). Ð¡Ñ‚Ð¾Ð¸Ñ‚ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚ÑŒ Ð¾ÑÐ¾Ð±Ð¾Ðµ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ Ð½Ð° Ñ‚Ð¾, Ñ‡Ñ‚Ð¾ Ðº Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ Ð¿Ð»Ð°Ñ‚Ðµ Ð¿Ð¾Ð´Ñ…Ð¾Ð´ÑÑ‚ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð°, ÑÐ´ÐµÐ»Ð°Ð½Ð½Ñ‹Ðµ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ Ð¸ÑÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð´Ð»Ñ Ð´Ð°Ð½Ð½Ð¾Ð¹ Ð¼Ð¾Ð´ÐµÐ»Ð¸ Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ñ‹. ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° Ð²Ð¸Ð½Ð´Ð¾ÑƒÑ 7? ÐžÐ±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº Ð½Ð°ÑˆÐ¸Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼.&nbsp;</p>'),
(13, 'ÐŸÐ¾Ñ‡ÐµÐ¼Ñƒ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº', '<p>Ð’Ñ‹ Ñ…Ð¾Ñ‚ÐµÐ»Ð¸ Ð¿Ð¾ÑÐ»ÑƒÑˆÐ°Ñ‚ÑŒ Ð»ÑŽÐ±Ð¸Ð¼ÑƒÑŽ Ð¼ÑƒÐ·Ñ‹ÐºÑƒ Ð¸Ð»Ð¸ Ð¿Ð¾Ð¸Ð³Ñ€Ð°Ñ‚ÑŒ Ð² ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ñ‹Ðµ Ð¸Ð³Ñ€Ñ‹, Ð½Ð¾ Ñ‚ÑƒÑ‚ Ð¾Ð±Ð½Ð°Ñ€ÑƒÐ¶Ð¸Ð»Ð¸, Ñ‡Ñ‚Ð¾ <strong>Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº</strong>? ÐÐµ ÑÑ‚Ð¾Ð¸Ñ‚ Ñ€Ð°ÑÑÑ‚Ñ€Ð°Ð¸Ð²Ð°Ñ‚ÑŒÑÑ. ÐÐ°ÑˆÐ¸ ÑÐ¾Ð²ÐµÑ‚Ñ‹ Ð¿Ð¾Ð¼Ð¾Ð³ÑƒÑ‚ Ð’Ð°Ð¼ Ð² Ð±Ñ‹ÑÑ‚Ñ€Ð¾Ð¼ Ñ€ÐµÑˆÐµÐ½Ð¸Ð¸ ÑÑ‚Ð¾Ð¹ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹.<br /><br /><br />ÐŸÐµÑ€Ð²Ð¾Ðµ, Ñ‡Ñ‚Ð¾ Ð’Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ, ÐµÑÐ»Ð¸ Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº &ndash; ÑÑ‚Ð¾ Ð¿Ñ€Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸. Ð’ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¾ Ð»Ð¸ Ð¿Ð¸Ñ‚Ð°Ð½Ð¸Ðµ Ð½Ð° ÐºÐ¾Ð»Ð¾Ð½ÐºÐ°Ñ…, Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ñ‹ Ð»Ð¸ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ðº ÑÐ¸ÑÑ‚ÐµÐ¼Ð½Ð¾Ð¼Ñƒ Ð±Ð»Ð¾ÐºÑƒ. <a href="http://seucomp.ru/problema_shipyat_kolonki.php">ÐšÐ¾Ð»Ð¾Ð½ÐºÐ¸</a> Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ðº ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÑŽÑ‰ÐµÐ¼Ñƒ Ñ€Ð°Ð·ÑŠÐµÐ¼Ñƒ Ð½Ð° ÑÐ¸ÑÑ‚ÐµÐ¼Ð½Ð¾Ð¼ Ð±Ð»Ð¾ÐºÐµ, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ð¹, Ñ‡Ð°Ñ‰Ðµ Ð²ÑÐµÐ³Ð¾, Ð±Ñ‹Ð²Ð°ÐµÑ‚ Ð·ÐµÐ»ÐµÐ½Ð¾Ð³Ð¾ Ñ†Ð²ÐµÑ‚Ð°. Ð¢Ð°ÐºÐ¶Ðµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÑŒÑÑ, Ñ‡Ñ‚Ð¾ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ð¸ÑÐ¿Ñ€Ð°Ð²Ð½Ñ‹. Ð”Ð»Ñ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ Ð¸Ñ… Ðº Ð´Ñ€ÑƒÐ³Ð¾Ð¼Ñƒ ÑÐ¸ÑÑ‚ÐµÐ¼Ð½Ð¾Ð¼Ñƒ Ð±Ð»Ð¾ÐºÑƒ, Ð¼Ð°Ð³Ð½Ð¸Ñ‚Ð¾Ñ„Ð¾Ð½Ñƒ, Ð¿Ð»ÐµÐµÑ€Ñƒ Ð¸Ð»Ð¸ Ð»ÑŽÐ±Ð¾Ð¼Ñƒ Ð´Ñ€ÑƒÐ³Ð¾Ð¼Ñƒ ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ñƒ, Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶Ð¸Ð²Ð°ÑŽÑ‰ÐµÐ³Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ ÐºÐ¾Ð»Ð¾Ð½Ð¾Ðº Ð¸ ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÐµÑÑŒ, Ñ‡Ñ‚Ð¾ Ð·Ð²ÑƒÐº Ð½Ð° Ð½Ð¸Ñ… Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚. ÐšÐ°Ðº Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¾, Ðº ÐºÐ¾Ð»Ð¾Ð½ÐºÐ°Ð¼ Ð¿Ð¾ÑÑ‚Ð°Ð²Ð»ÑÑŽÑ‚ÑÑ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»ÑŒÐ½Ñ‹Ðµ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð°, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ ÑƒÑÑ‚Ð°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°Ñ‚ÑŒ Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€ - Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ Ð¸Ñ… Ð½Ð°Ð»Ð¸Ñ‡Ð¸Ðµ. ÐžÑ‚ÑÑƒÑ‚ÑÑ‚Ð²Ð¸Ðµ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð¾Ð² Ð´Ð»Ñ ÐºÐ¾Ð»Ð¾Ð½Ð¾Ðº Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð¿Ñ€Ð¸Ð²ÐµÑÑ‚Ð¸ Ðº Ñ‚Ð¾Ð¼Ñƒ, Ñ‡Ñ‚Ð¾ Ð·Ð²ÑƒÐº Ð½Ðµ Ð±ÑƒÐ´ÐµÑ‚ Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ñ‚ÑŒ.<img title="ÐÐ° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð½ÐµÑ‚ Ð·Ð²ÑƒÐºÐ°" src="http://seucomp.ru/images/imageswork/no_sound.jpg" alt="ÐÐ° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð½ÐµÑ‚ Ð·Ð²ÑƒÐºÐ°" align="left" />Ð’Ð¿Ð¾Ð»Ð½Ðµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾, Ñ‡Ñ‚Ð¾ Ð¿Ñ€Ð¸Ñ‡Ð¸Ð½Ð¾Ð¹ Ñ‚Ð¾Ð³Ð¾, Ñ‡Ñ‚Ð¾ Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº, ÑÐ²Ð»ÑÐµÑ‚ÑÑ Ð¾Ñ‚ÑÑƒÑ‚ÑÑ‚Ð²Ð¸Ðµ Ð¸Ð»Ð¸ Ð½ÐµÐ¸ÑÐ¿Ñ€Ð°Ð²Ð½Ð¾ÑÑ‚ÑŒ Ð°ÑƒÐ´Ð¸Ð¾ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð¾Ð². Ð§Ñ‚Ð¾Ð±Ñ‹ ÑƒÑÑ‚Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñƒ, ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚Ðµ Ð°ÑƒÐ´Ð¸Ð¾ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð° Ð·Ð°Ð½Ð¾Ð²Ð¾. Ð§Ñ‚Ð¾Ð±Ñ‹ ÑƒÐ·Ð½Ð°Ñ‚ÑŒ, Ð²ÑÐµ Ð»Ð¸ <a href="http://seucomp.ru/problema_s_nerodnymi_drayverami_i_zvukom.php">Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð°</a> ÐµÑÑ‚ÑŒ Ð½Ð° Ð’Ð°ÑˆÐµÐ¼ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ, Ð½Ð°Ð¶Ð¼Ð¸Ñ‚Ðµ ÐºÐ½Ð¾Ð¿ÐºÑƒ "ÐŸÑƒÑÐº", Ð·Ð°Ñ‚ÐµÐ¼ Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ "ÐŸÐ°Ð½ÐµÐ»ÑŒ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ", Ð° Ð² Ð½ÐµÐ¼ Ñ„ÑƒÐ½ÐºÑ†Ð¸ÑŽ "Ð—Ð²ÑƒÐº, Ñ€ÐµÑ‡ÑŒ Ð¸ Ð°ÑƒÐ´Ð¸Ð¾ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð²Ð°", Ð·Ð°Ñ‚ÐµÐ¼ Ð² Ð¿Ð¾ÑÐ²Ð¸Ð²ÑˆÐµÐ¼ÑÑ Ð¾ÐºÐ½Ðµ Ð½Ð°Ð¶Ð¼Ð¸Ñ‚Ðµ Ð²ÐºÐ»Ð°Ð´ÐºÑƒ "ÐžÐ±Ð¾Ñ€ÑƒÐ´Ð¾Ð²Ð°Ð½Ð¸Ðµ" Ð¸ Ð²Ñ‹Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ Ð´Ð¸Ð°Ð³Ð½Ð¾ÑÑ‚Ð¸ÐºÑƒ Ð²ÑÐµÑ… Ð°ÑƒÐ´Ð¸Ð¾ ÑƒÑÑ‚Ñ€Ð¾Ð¹ÑÑ‚Ð².<img title="ÐÐµÑ‚ Ð·Ð²ÑƒÐºÐ° Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ" src="http://seucomp.ru/images/imageswork/sound_none_work.jpg" alt="ÐÐµÑ‚ Ð·Ð²ÑƒÐºÐ° Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ" align="right" />Ð•ÑÐ»Ð¸ Ð²Ñ‹ÑˆÐµÐ¿ÐµÑ€ÐµÑ‡Ð¸ÑÐ»ÐµÐ½Ð½Ñ‹Ðµ ÑÐ¾Ð²ÐµÑ‚Ñ‹ Ð½Ðµ Ð¿Ð¾Ð¼Ð¾Ð³Ð»Ð¸, Ð¸ Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð¿Ð¾-Ð¿Ñ€ÐµÐ¶Ð½ÐµÐ¼Ñƒ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº, ÑÐºÐ¾Ñ€ÐµÐµ Ð²ÑÐµÐ³Ð¾, Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ð° Ð² Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ðµ. ÐÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ Ð»Ð¸Ð±Ð¾ ÑÐ´ÐµÐ»Ð°Ñ‚ÑŒ Ñ€ÐµÐ¼Ð¾Ð½Ñ‚ Ð°ÑƒÐ´Ð¸Ð¾ ÐºÐ°Ñ€Ñ‚Ñ‹, Ð»Ð¸Ð±Ð¾ Ð·Ð°Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ ÐµÐµ Ð½Ð° Ð¸ÑÐ¿Ñ€Ð°Ð²Ð½ÑƒÑŽ. ÐÐ¾ Ð¿Ð¾Ð¼Ð½Ð¸Ñ‚Ðµ, Ñ‡Ñ‚Ð¾ ÐµÑÐ»Ð¸ Ð’Ñ‹ Ð½Ðµ ÑƒÐ²ÐµÑ€ÐµÐ½Ð½Ñ‹, Ñ‡Ñ‚Ð¾ ÑÐ¼Ð¾Ð¶ÐµÑ‚Ðµ Ð·Ð°Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð·Ð²ÑƒÐºÐ¾Ð²ÑƒÑŽ ÐºÐ°Ñ€Ñ‚Ñƒ ÑÐ°Ð¼Ð¾ÑÑ‚Ð¾ÑÑ‚ÐµÐ»ÑŒÐ½Ð¾, Ð»ÑƒÑ‡ÑˆÐµ Ð´Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ ÑÑ‚Ñƒ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼ Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð°.<img title="ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° ÐŸÐš" src="http://seucomp.ru/images/imageswork/sound_not_work.jpg" alt="ÐÐµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ð·Ð²ÑƒÐº Ð½Ð° ÐŸÐš" align="left" />Ð•ÑÐ»Ð¸ Ð·Ð²ÑƒÐº Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÐµÑ‚ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð½Ð° Ð½ÐµÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ñ… Ð°ÑƒÐ´Ð¸Ð¾ Ñ„Ð°Ð¹Ð»Ð°Ñ…, Ñ‚Ð¾, Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾, Ð½Ð° Ð’Ð°ÑˆÐµÐ¼ ÑÐ¸ÑÑ‚ÐµÐ¼Ð½Ð¾Ð¼ Ð±Ð»Ð¾ÐºÐµ Ð½Ðµ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ñ‹ Ð²ÑÐµ ÐºÐ¾Ð´ÐµÐºÐ¸. Ð’ Ñ‚Ð°ÐºÐ¾Ð¼ ÑÐ»ÑƒÑ‡Ð°Ðµ ÐºÐ¾Ð´ÐµÐºÐ¸ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ. Ð¢Ð°ÐºÐ¶Ðµ Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ ÑÐºÐ°Ñ‡Ð°Ñ‚ÑŒ Ð¿Ð¾ÑÐ»ÐµÐ´Ð½ÑŽÑŽ Ð²ÐµÑ€ÑÐ¸ÑŽ Ð°ÑƒÐ´Ð¸Ð¾ Ð¿Ð»ÐµÐµÑ€Ð°, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ð¹ ÑƒÐ¶Ðµ Ð¿Ð¾ÑÑ‚Ð°Ð²Ð»ÑÐµÑ‚ÑÑ Ð²Ð¼ÐµÑÑ‚Ðµ ÑÐ¾ Ð²ÑÐµÐ¼Ð¸ ÐºÐ¾Ð´ÐµÐºÐ°Ð¼Ð¸.<br /><br /><br />Ð•ÑÐ»Ð¸ Ð’Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð½Ð° Ð’Ð°ÑˆÐµÐ¼ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ð» Ð·Ð²ÑƒÐº, Ð¾Ð±Ñ€Ð°Ñ‰Ð°Ð¹Ñ‚ÐµÑÑŒ Ðº <strong>Ð²Ñ‹ÑÐ¾ÐºÐ¾ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼</strong> Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð°, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð²ÑÐµÐ³Ð´Ð° Ñ€Ð°Ð´Ñ‹ Ð’Ð°Ð¼ Ð¿Ð¾Ð¼Ð¾Ñ‡ÑŒ Ð¸ Ð¾Ð½Ð¸ Ñ Ñ€Ð°Ð´Ð¾ÑÑ‚ÑŒÑŽ ÑÐ´ÐµÐ»Ð°ÑŽÑ‚ Ð²ÑÐµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð·Ð²ÑƒÐº Ð½Ð° Ð’Ð°ÑˆÐµÐ¼ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ð». Ð•ÑÐ»Ð¸ Ð’Ñ‹ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ Ð·Ð½Ð°Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð¾ Ñ€Ð°Ð±Ð¾Ñ‚Ðµ Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð°, Ð¿Ñ€Ð¾ÑÑ‚Ð¾ Ð¿Ð¾Ð·Ð²Ð¾Ð½Ð¸Ñ‚Ðµ Ð¿Ð¾ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ñƒ, ÑƒÐºÐ°Ð·Ð°Ð½Ð½Ð¾Ð¼Ñƒ Ð½Ð° Ð½Ð°ÑˆÐµÐ¼ ÑÐ°Ð¹Ñ‚Ðµ: Ð½Ð°ÑˆÐ¸ ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚Ñ‹ Ñ Ñ€Ð°Ð´Ð¾ÑÑ‚ÑŒÑŽ Ð¿Ð¾Ð¼Ð¾Ð³ÑƒÑ‚ Ð’Ð°Ð¼. <br /><br /><br /></p>\r\n<center><strong>Ð£ÑÑ‚Ñ€Ð°Ð½ÐµÐ½Ð¸Ðµ Ð²Ñ‹ÑˆÐµÑƒÐºÐ°Ð·Ð°Ð½Ð½Ð¾Ð¹ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ð½Ð°ÑˆÐ¸Ð¼ Ð¼Ð°ÑÑ‚ÐµÑ€Ð¾Ð¼ Ð½Ð° Ð²Ñ‹ÐµÐ·Ð´Ðµ ÑÑ‚Ð¾Ð¸Ñ‚ <span class="reds">320 Ñ€ÑƒÐ±Ð»ÐµÐ¹!!!</span></strong><br />Ð¢ÐµÐ»ÐµÑ„Ð¾Ð½ ÐµÐ´Ð¸Ð½Ð¾Ð¹ Ð´Ð¸ÑÐ¿ÐµÑ‚Ñ‡ÐµÑ€ÑÐºÐ¾Ð¹: <img class="phon" src="http://seucomp.ru/images/phone_1.jpg" alt="" /></center>'),
(14, 'ÐÐµÑ‚ Ð·Ð²ÑƒÐºÐ° Ð½Ð° ÐºÐ¾Ð¼Ð¿Ðµ', '<p>Ð•ÑÐ»Ð¸ Ð’Ñ‹ Ð½ÐµÐ¾Ð¶Ð¸Ð´Ð°Ð½Ð½Ð¾ Ð´Ð»Ñ ÑÐµÐ±Ñ Ð¾Ð±Ð½Ð°Ñ€ÑƒÐ¶Ð¸Ð»Ð¸, Ñ‡Ñ‚Ð¾ <strong>Ð½ÐµÑ‚ Ð·Ð²ÑƒÐºÐ° Ð½Ð° ÐºÐ¾Ð¼Ð¿Ðµ</strong>, Ð¸ÑÐ¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾ Ð¼Ð¾Ð¶Ð½Ð¾ ÑÑ€Ð°Ð·Ñƒ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¸Ð¼Ð¸ ÑÐ¿Ð¾ÑÐ¾Ð±Ð°Ð¼Ð¸.</p>\r\n<h2>ÐŸÑ€Ð¸Ñ‡Ð¸Ð½, Ð¿Ð¾Ñ‡ÐµÐ¼Ñƒ Ð½ÐµÑ‚ Ð·Ð²ÑƒÐºÐ° Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ, Ð¼Ð¾Ð¶ÐµÑ‚ Ð±Ñ‹Ñ‚ÑŒ Ð½ÐµÑÐºÐ¾Ð»ÑŒÐºÐ¾:</h2>\r\n<ul>\r\n<li>ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¾Ðµ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸Ðµ ÐºÐ¾Ð»Ð¾Ð½Ð¾Ðº Ðº ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ. Ð’Ð½Ð¸Ð¼Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ Ð²ÑÐµ Ð¿Ñ€Ð¾Ð²Ð´Ð° - Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ñ‹ Ð»Ð¸ Ð¾Ð½Ð¸ Ð² Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ‹Ðµ ÑÐ»Ð¾Ñ‚Ñ‹ Ð¸ Ð½Ðµ Ð¿Ð¾Ð²Ñ€ÐµÐ¶Ð´ÐµÐ½Ñ‹ Ð»Ð¸ Ð¾Ð½Ð¸.</li>\r\n<li>ÐžÐ±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ, ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ñ‹ Ð»Ð¸ Ñƒ Ð’Ð°Ñ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð° Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ñ‹ - Ð¿Ñ€Ð¸ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ÑÑ‚Ð¸ Ð¸Ñ… ÑÐ»ÐµÐ´ÑƒÐµÑ‚ Ð¿ÐµÑ€ÐµÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð·Ð°Ð½Ð¾Ð²Ð¾. ÐŸÑ€Ð¸ ÑÑ‚Ð¾Ð¼ Ð¾Ð±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¾Ð±Ñ€Ð°Ñ‚Ð¸Ñ‚Ðµ Ð²Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ Ð½Ð° Ñ‚Ð¾, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð° Ð±Ñ‹Ð»Ð¸ Ð¸Ð¼ÐµÐ½Ð½Ð¾ Ð´Ð»Ñ Ð’Ð°ÑˆÐµÐ¹ Ð¼Ð¾Ð´ÐµÐ»Ð¸ Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ñ‹.</li>\r\n</ul>\r\n<p>Ð’Ð¾-Ð¿ÐµÑ€Ð²Ñ‹Ñ…, Ð·Ð°Ð¹Ð´Ð¸Ñ‚Ðµ Ð² Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð·Ð²ÑƒÐºÐ° (Ð² Ð¿Ð°Ð½ÐµÐ»Ð¸ ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ñ), Ð¸ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ, Ð²ÐºÐ»ÑŽÑ‡ÐµÐ½ Ð»Ð¸ Ð¾Ð½ Ð½Ð° Ð´Ð¾ÑÑ‚Ð°Ñ‚Ð¾Ñ‡Ð½ÑƒÑŽ Ð³Ñ€Ð¾Ð¼ÐºÐ¾ÑÑ‚ÑŒ. Ð”Ð°Ð»ÐµÐµ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÑŒÑÑ,<img title="ÐÐµÑ‚ Ð·Ð²ÑƒÐºÐ° Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ" src="http://seucomp.ru/images/imageswork/no_sound_on_computer.jpg" alt="ÐÐµÑ‚ Ð·Ð²ÑƒÐºÐ° Ð½Ð° ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ðµ" align="left" /> Ñ‡Ñ‚Ð¾ Ð’Ð°ÑˆÐ¸ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸ Ð½Ð°Ð´ÐµÐ¶Ð½Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ñ‹ Ðº ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ Ð¸ Ñ€Ð°Ð±Ð¾Ñ‚Ð°ÑŽÑ‚ Ð¸ÑÐ¿Ñ€Ð°Ð²Ð½Ð¾ - ÐµÑÐ»Ð¸ ÐµÑÑ‚ÑŒ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ <a href="http://seucomp.ru/materinskaya_plata_kolonki.php">Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ ÐºÐ¾Ð»Ð¾Ð½ÐºÐ¸</a> Ðº Ð´Ñ€ÑƒÐ³Ð¾Ð¼Ñƒ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ñƒ Ð¸ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ, ÐºÐ°Ðº Ð¾Ð½Ð¸ Ñ‚Ð°Ð¼ Ð±ÑƒÐ´ÑƒÑ‚ Ñ€Ð°Ð±Ð¾Ñ‚Ð°Ñ‚ÑŒ. Ð¢Ð°ÐºÐ¶Ðµ Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿ÐµÑ€ÐµÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ <a href="http://seucomp.ru/problema_s_drayverami_ili_komputerom.php">Ð´Ñ€Ð°Ð¹Ð²ÐµÑ€Ð° Ð´Ð»Ñ Ð·Ð²ÑƒÐºÐ¾Ð²Ð¾Ð¹ ÐºÐ°Ñ€Ñ‚Ñ‹</a> - ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¸Ñ… Ñ Ð´Ð¸ÑÐºÐ° Ð¸Ð»Ð¸ ÑÐºÐ¾Ð¿Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ Ñ ÑÐ°Ð¹Ñ‚Ð°-Ñ€Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚Ñ‡Ð¸ÐºÐ° Ð²Ð¸Ð´ÐµÐ¾ÐºÐ°Ñ€Ñ‚Ñ‹.<br /><br /> Ð•ÑÐ»Ð¸ ÑÑ‚Ð¾ Ð½Ðµ Ð¿Ð¾Ð¼Ð¾Ð¶ÐµÑ‚, Ð’Ñ‹ Ð¼Ð¾Ð¶ÐµÑ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚Ð°Ñ‚ÑŒÑÑ Ð²Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ ÑÐ¸ÑÑ‚ÐµÐ¼Ñƒ Ð´Ð¾ Ñ‚Ð¾Ð³Ð¾ Ð¼Ð¾Ð¼ÐµÐ½Ñ‚Ð°, ÐºÐ°Ðº Ð·Ð²ÑƒÐº Ð¿Ñ€Ð¾Ð¿Ð°Ð». ÐÐµÑ‚ Ð·Ð²ÑƒÐºÐ° Ð½Ð° ÐºÐ¾Ð¼Ð¿Ðµ? ÐžÐ±Ñ€Ð°Ñ‚Ð¸Ñ‚ÐµÑÑŒ Ðº <strong>ÐºÐ²Ð°Ð»Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¼ ÑÐ¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚Ð°Ð¼</strong> Ð½Ð°ÑˆÐµÐ³Ð¾ ÑÐµÑ€Ð²Ð¸ÑÐ½Ð¾Ð³Ð¾ Ñ†ÐµÐ½Ñ‚Ñ€Ð°, ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿Ñ€ÐµÐ²Ð¾ÑÑ…Ð¾Ð´Ð½Ð¾ Ñ€Ð°Ð·Ð±Ð¸Ñ€Ð°ÑŽÑ‚ÑÑ Ð² ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½Ð¾Ð¹ Ñ‚ÐµÑ…Ð½Ð¸ÐºÐµ Ð¸ Ð±ÑƒÐ´ÑƒÑ‚ Ñ€Ð°Ð´Ñ‹ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶Ð¸Ñ‚ÑŒ Ð’Ð°Ð¼ ÐºÐ°Ñ‡ÐµÑÑ‚Ð²ÐµÐ½Ð½ÑƒÑŽ Ð¸ Ð¾Ð¿ÐµÑ€Ð°Ñ‚Ð¸Ð²Ð½ÑƒÑŽ ÐºÐ¾Ð¼Ð¿ÑŒÑŽÑ‚ÐµÑ€Ð½ÑƒÑŽ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒ Ð² Ð»ÑŽÐ±Ð¾Ðµ Ð²Ñ€ÐµÐ¼Ñ Ð´Ð½Ñ Ð¸ Ð»ÑŽÐ±Ð¾Ð¹ Ð´ÐµÐ½ÑŒ Ð½ÐµÐ´ÐµÐ»Ð¸.</p>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;