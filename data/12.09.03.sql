-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 03 2012 г., 19:22
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
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `name_code` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_code`) VALUES
(1, 'База знаний', 'knowledge_base'),
(2, 'Настройка', 'setting'),
(3, 'Ремонт', 'repair'),
(4, 'Новое на сайте', 'new'),
(5, 'Видеокурс по ремонту', 'video_course');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `files`
--


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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `user_id`, `meta_title`, `meta_keywords`, `meta_desc`, `link_text`, `category_id`) VALUES
(82, 'ADD CONSTRAINT ? MySQL (??????????? ??????? ??????', '<p>ADD CONSTRAINT ? MySQL (??????????? ??????? ??????</p>', 8, '', '', '', NULL, 5),
(91, 'my_title', 'my_text', 8, 'meta_title', 'meta_keywords', 'meta_desc', NULL, 3),
(92, '11111', '<p>11111</p>', 8, '11111', '11111', '11111', NULL, 5),
(94, '11111', '<p>11111</p>', 8, '11111', '11111', '11111', NULL, 1),
(95, 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº', '<p>Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº</p>', 8, 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº', 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº', 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº', NULL, 5),
(96, '11111', '<p>11111</p>', 8, '11111', '11111', '11111', NULL, 5),
(97, 'fdfd', '<p>dffdf</p>', 8, 'dff', 'dff', 'dff', NULL, 5),
(98, 'dfdffff', '<p>dfff</p>', 8, 'dff', 'df', 'dff', NULL, 2),
(104, '121212', '<p>121212</p>', 8, '121212', '121212', '121212', NULL, 5),
(105, 'Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„', '<p>Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„</p>', 8, 'Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„', 'Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„', 'Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„', NULL, 5),
(106, 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº2', '<p>Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº</p>', 8, 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº', 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº', 'Ð—Ð°Ð³Ð¾Ð»Ð¾Ð²Ð¾Ðº', '123', 2);

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
