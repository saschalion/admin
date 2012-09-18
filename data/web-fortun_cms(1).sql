-- phpMyAdmin SQL Dump
-- version 
-- http://www.phpmyadmin.net
--
-- Хост: web-fortun.mysql
-- Время создания: Авг 29 2012 г., 07:28
-- Версия сервера: 5.1.36
-- Версия PHP: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `web-fortun_cms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--
-- Создание: Авг 27 2012 г., 16:44
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_FK_1` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `user_id`) VALUES
(26, 'Sony сворачивает производство оптических приводов', '<p><span>Sony продолжает комплексную реорганизацию бизнеса, очередным этапом которой станет закрытие предприятия Sony Optiarc по производству оптических приводов. Компания Sony Optiarc была учреждена в 2006 году совместно с NEC.</span></p>', 8),
(36, 'ФАС оштрафует за рекламу алкоголя сайты в зоне .com', '<p><span>Федеральная антимонопольная служба ( ФАС ) будет штрафовать сайты в зоне. com за рекламу алкоголя. Об этом сообщает РБК Daily со ссылкой на разъяснение ФАС новых поправок в закон "О рекламе".</span></p>', 8),
(55, 'Релиз True Image 2013 by Acronis для домашних пользователей', '<p><span>Обновленная сборка продукта характеризуется поддержкой операционной системы Windows 8, расширенными возможностями управления файлами и интеграцией с облачным хранилищем Acronis True Image Online.</span></p>', 8),
(56, 'Следующая игра от Питера Молинье получит название Cooperation', '<p><span>Игра, как можно понять из названия, будет соревновательной. По поводу целевых платформ Молинье ничего не сказал, однако, предположительно, это будут всё те же PC, iOS и Android.</span></p>', 8),
(57, 'VMware Fusion 5 позволит запускать Windows 8 из OS X Mountain Lion', '<p><span>VMware объявила о доступности новой версии виртуальной машины Fusion 5 для операционной системы OS X. В ней была добавлена поддержка Mountain Lion и Windows 8, а также сделано множество других обновлений.</span></p>', 8),
(58, 'Painkiller: Hell & Damnation. Скриншоты', '<p><span>Вдохнуть в Painkiller новую жизнь поможет хорошо зарекомендовавший себя движок Unreal Engine 3. О сроках выхода Painkiller: Hell &amp; Damnation пока не сообщается.</span></p>', 8),
(59, 'Сценарий экранизации Uncharted новь будет переписан', '<p><span>Напомним, что роль Натана Дрейка принадлежала Марку Уолбергу, задача которого заключалась в поисках потерянного сокровища Эльдорадо любимым многими героем серии игр. Работа над фильмом продолжается еще с 2010 года, а за это время мы имеем лишь третьего режиссера проекта экранизации Uncharted.</span></p>', 8),
(60, 'Yahoo! зарегистрировала ТМ Flickr в Украине', '<p><span>Заявка была подана еще в конце 2010 года. Теперь&nbsp;</span><em>Yahoo Inc</em><span>&nbsp;имеет эксклюзивное право на пользование&nbsp;</span><span>им в Украине. Под торговым знаком flickr&nbsp;</span><em>Yahoo</em><span>&nbsp;</span><span>получает право оказывать в нашей стране услуги из&nbsp;</span><span>сферы телекоммуникаций и интернета, рекламы,&nbsp;</span><span>развлечений.</span></p>', 8),
(61, 'KNOPPIX 7.0.4', '<p><span>Особенности новой версии: Поддержка файловой&nbsp;</span><span>системы ExFAT (используется модуль ExFAT-fuse);&nbsp;</span><span>Возвращены скрипты gprsconnect и modemlink;&nbsp;</span><span>Добавление компонентов системы профилирования&nbsp;</span><span>oprofile; Новые версии программ, в том числе ядро&nbsp;</span><span>Linux 3.4.9, X.Org 7.7, X-сервер 1.12.3,Chromium&nbsp;</span><span>21, Firefox/Iceweasel 10.0.6, PCMANFM 1.0, Wine&nbsp;</span><span>1.5.10, Virtualbox 4.1.18, qemu-kvm 1.0.</span></p>', 8),
(62, 'CCleaner 3.22 – впервые полная совместимость с Windows 8', '<p><span>В новой версии:Реализована полная поддержка&nbsp;</span><em>Windows</em><span>&nbsp;8.Улучшена совместимость при работе со&nbsp;</span><span>списком автозагрузки.</span></p>', 8),
(63, 'Драйвер Intel Rapid Storage Technology Enterprise 3.5.0.1101 для чипсета Intel X79, с поддержкой Windows 8', '<p><span>Новый драйвер&nbsp;</span><em>Intel</em><span>&nbsp;RSTe 3.5 подходит под&nbsp;</span><span>обещанное описание, но работоспособность TRIM в&nbsp;</span><span>RAID придется проверять практическими испытаниями</span><span>.&nbsp;</span><em>Intel</em><span>&nbsp;RSTe 3.5 поддерживает чипсеты&nbsp;</span><em>Intel</em><span>&nbsp;X79 и&nbsp;</span><span>семейство серверных C600, включая C602, C602J,&nbsp;</span><span>C604, C606, C608.</span></p>', 8),
(64, 'File Expert 4.2.7 — работа с файлами и приложениями на Android', '<p><span>Владельцы портативных устройств получат доступ к&nbsp;</span><span>подробной информации о потреблении ресурсов (</span><span>оперативная память, ресурсы процессора, занятое и&nbsp;</span><span>свободное пространство во встроенной памяти и на&nbsp;</span><span>карте SD Card, а также текущий уровень заряда&nbsp;</span><span>аккумулятора), изложенной в наглядной графической&nbsp;</span><span>форме.</span></p>', 8),
(65, 'Remedy Entertainment о консолях следующего поколения', '<p><span>В интервью немецкому отделению ресурса&nbsp;</span><em>GamesIndustry International</em><span>&nbsp;Оскари Хаккинен (&nbsp;</span><span>Oskari H&auml;kkinen ), глава судии Remedy&nbsp;</span><span>Entertainment, создавшей игру Alan Wake, назвал&nbsp;</span><span>следующее поколение игровых систем&nbsp;</span><span>"громадным скачком" по сравнению с&nbsp;</span><span>текущим поколением консолей.</span></p>', 8),
(66, 'Thunderbird 15.0 — с новым интерфейсом и повышенным быстродействием', '<p><span>Аналогично Firefox 15.0, до официального анонса&nbsp;</span><span>стала доступна и финальная версия почтового&nbsp;</span><span>клиента Thunderbird с тем же номером. Список&nbsp;</span><span>ключевых новшеств Thunderbird 15: Новое&nbsp;</span><span>оформление интерфейса с темой Australis.</span></p>', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Авг 27 2012 г., 14:46
--

DROP TABLE IF EXISTS `users`;
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
