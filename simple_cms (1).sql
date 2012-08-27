-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 24 2012 г., 20:30
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
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_FK_1` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `user_id`) VALUES
(17, 'session_id2', '<p>The constant SID can also be used to retrieve the current name and session id as a string suitable for adding to URLs. See also Session handling.</p>', 7),
(18, 'session_id2', '<p>The constant SID can also be used to retrieve the current name and session id as a string suitable for adding to URLs. See also Session handling.</p>', 7),
(19, 'session_id2', '<p>The constant SID can also be used to retrieve the current name and session id as a string suitable for adding to URLs. See also Session handling.</p>', 7),
(22, 'Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„', '<p>Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„Ð³ÑƒÐ³Ð»ÑŒ.Ñ€Ñ„</p>', 8);

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
-- Ограничения внешнего ключа таблицы `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `user_id_FK_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
