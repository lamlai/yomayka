-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 22 2012 г., 01:40
-- Версия сервера: 5.0.95
-- Версия PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `advan383_shop`
--
CREATE DATABASE `advan383_shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `advan383_shop`;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_assets`
--

CREATE TABLE IF NOT EXISTS `jos_assets` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL default '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=178 ;

--
-- Дамп данных таблицы `jos_assets`
--

INSERT INTO `jos_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 428, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":[],"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 2, 3, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 4, 11, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 12, 13, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 14, 15, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 16, 17, 1, 'com_config', 'com_config', '{}'),
(7, 1, 18, 87, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(8, 1, 88, 303, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 304, 305, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 306, 307, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 308, 309, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 310, 311, 1, 'com_login', 'com_login', '{}'),
(13, 1, 312, 313, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 314, 315, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 316, 317, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1},"core.edit":[],"core.edit.state":[]}'),
(16, 1, 318, 319, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 322, 323, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 324, 331, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(20, 1, 332, 333, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 334, 335, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 336, 337, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 338, 339, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 340, 343, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 344, 361, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1,"10":0,"12":0},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1}}'),
(26, 1, 362, 363, 1, 'com_wrapper', 'com_wrapper', '{}'),
(33, 1, 424, 425, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 8, 105, 110, 2, 'com_content.category.9', 'Uncategorised', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 3, 7, 8, 2, 'com_banners.category.10', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 7, 23, 24, 2, 'com_contact.category.11', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 19, 327, 328, 2, 'com_newsfeeds.category.12', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 25, 351, 352, 2, 'com_weblinks.category.13', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 8, 111, 294, 2, 'com_content.category.14', 'Sample Data-Articles', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 3, 9, 10, 2, 'com_banners.category.15', 'Sample Data-Banners', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 7, 25, 86, 2, 'com_contact.category.16', 'Sample Data-Contact', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 19, 329, 330, 2, 'com_newsfeeds.category.17', 'Sample Data-Newsfeeds', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 25, 353, 360, 2, 'com_weblinks.category.18', 'Sample Data-Weblinks', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 39, 112, 243, 3, 'com_content.category.19', 'Joomla!', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 44, 113, 220, 4, 'com_content.category.20', 'Extensions', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 45, 114, 129, 5, 'com_content.category.21', 'Components', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 130, 189, 5, 'com_content.category.22', 'Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 45, 190, 201, 5, 'com_content.category.23', 'Templates', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 45, 202, 203, 5, 'com_content.category.24', 'Languages', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 45, 204, 219, 5, 'com_content.category.25', 'Plugins', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 39, 244, 275, 3, 'com_content.category.26', 'Park Site', '{"core.create":{"10":0,"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 51, 245, 250, 4, 'com_content.category.27', 'Park Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 51, 251, 272, 4, 'com_content.category.28', 'Photo Gallery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 39, 276, 289, 3, 'com_content.category.29', 'Fruit Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(55, 54, 277, 282, 4, 'com_content.category.30', 'Growers', '{"core.create":{"12":0},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1}}'),
(56, 43, 354, 355, 3, 'com_weblinks.category.31', 'Park Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(57, 43, 356, 359, 3, 'com_weblinks.category.32', 'Joomla! Specific Links', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(58, 57, 357, 358, 4, 'com_weblinks.category.33', 'Other Resources', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(59, 41, 26, 27, 3, 'com_contact.category.34', 'Park Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(60, 41, 28, 85, 3, 'com_contact.category.35', 'Shop Site', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(61, 60, 29, 30, 4, 'com_contact.category.36', 'Staff', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(62, 60, 31, 84, 4, 'com_contact.category.37', 'Fruit Encyclopedia', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(63, 62, 32, 33, 5, 'com_contact.category.38', 'A', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(64, 62, 34, 35, 5, 'com_contact.category.39', 'B', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(65, 62, 36, 37, 5, 'com_contact.category.40', 'C', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(66, 62, 38, 39, 5, 'com_contact.category.41', 'D', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(67, 62, 40, 41, 5, 'com_contact.category.42', 'E', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(68, 62, 42, 43, 5, 'com_contact.category.43', 'F', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(69, 62, 44, 45, 5, 'com_contact.category.44', 'G', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(70, 62, 46, 47, 5, 'com_contact.category.45', 'H', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(71, 62, 48, 49, 5, 'com_contact.category.46', 'I', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(72, 62, 50, 51, 5, 'com_contact.category.47', 'J', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(73, 62, 52, 53, 5, 'com_contact.category.48', 'K', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(74, 62, 54, 55, 5, 'com_contact.category.49', 'L', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(75, 62, 56, 57, 5, 'com_contact.category.50', 'M', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(76, 62, 58, 59, 5, 'com_contact.category.51', 'N', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(77, 62, 60, 61, 5, 'com_contact.category.52', 'O', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(78, 62, 62, 63, 5, 'com_contact.category.53', 'P', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(79, 62, 64, 65, 5, 'com_contact.category.54', 'Q', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(80, 62, 66, 67, 5, 'com_contact.category.55', 'R', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(81, 62, 68, 69, 5, 'com_contact.category.56', 'S', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(82, 62, 70, 71, 5, 'com_contact.category.57', 'T', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(83, 62, 72, 73, 5, 'com_contact.category.58', 'U', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(84, 62, 74, 75, 5, 'com_contact.category.59', 'V', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(85, 62, 76, 77, 5, 'com_contact.category.60', 'W', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(86, 62, 78, 79, 5, 'com_contact.category.61', 'X', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(87, 62, 80, 81, 5, 'com_contact.category.62', 'Y', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(88, 62, 82, 83, 5, 'com_contact.category.63', 'Z', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(89, 46, 115, 116, 6, 'com_content.article.1', 'Administrator Components', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(90, 93, 132, 133, 7, 'com_content.article.2', 'Archive Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(91, 93, 134, 135, 7, 'com_content.article.3', 'Article Categories Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(92, 93, 136, 137, 7, 'com_content.article.4', 'Articles Category Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(93, 47, 131, 146, 6, 'com_content.category.64', 'Content Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(94, 47, 147, 154, 6, 'com_content.category.65', 'User Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(95, 47, 155, 168, 6, 'com_content.category.66', 'Display Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(96, 47, 169, 180, 6, 'com_content.category.67', 'Utility Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(97, 48, 191, 192, 6, 'com_content.category.68', 'Atomic', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(98, 48, 193, 194, 6, 'com_content.category.69', 'Beez 20', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(99, 48, 195, 196, 6, 'com_content.category.70', 'Beez5', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(100, 48, 197, 198, 6, 'com_content.category.71', 'Milky Way', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(101, 50, 205, 206, 6, 'com_content.article.5', 'Authentication', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(102, 51, 273, 274, 4, 'com_content.article.6', 'Australian Parks ', '{"core.delete":[],"core.edit":{"2":1},"core.edit.state":[]}'),
(103, 95, 156, 157, 7, 'com_content.article.7', 'Banner Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(104, 44, 221, 222, 4, 'com_content.article.8', 'Beginners', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(105, 46, 117, 118, 6, 'com_content.article.9', 'Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(106, 46, 119, 120, 6, 'com_content.article.10', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(107, 109, 263, 264, 6, 'com_content.article.11', 'Cradle Mountain', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(108, 53, 252, 261, 5, 'com_content.category.72', 'Animals', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(109, 53, 262, 271, 5, 'com_content.category.73', 'Scenery', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(110, 95, 158, 159, 7, 'com_content.article.12', 'Custom HTML Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(111, 54, 283, 284, 4, 'com_content.article.13', 'Directions', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(112, 50, 207, 208, 6, 'com_content.article.14', 'Editors', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(113, 50, 209, 210, 6, 'com_content.article.15', 'Editors-xtd', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(114, 95, 160, 161, 7, 'com_content.article.16', 'Feed Display', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(115, 52, 246, 247, 5, 'com_content.article.17', 'First Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(116, 52, 248, 249, 5, 'com_content.article.18', 'Second Blog Post', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(117, 95, 162, 163, 7, 'com_content.article.19', 'Footer Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(118, 54, 285, 286, 4, 'com_content.article.20', 'Fruit Shop', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(119, 44, 223, 224, 4, 'com_content.article.21', 'Getting Help', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(120, 44, 225, 226, 4, 'com_content.article.22', 'Getting Started', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(121, 55, 278, 279, 5, 'com_content.article.23', 'Happy Orange Orchard', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(122, 44, 227, 228, 4, 'com_content.article.24', 'Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(123, 108, 253, 254, 6, 'com_content.article.25', 'Koala', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(124, 96, 170, 171, 7, 'com_content.article.26', 'Language Switcher', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(125, 93, 138, 139, 7, 'com_content.article.27', 'Latest Articles Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(126, 94, 148, 149, 7, 'com_content.article.28', 'Login Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(127, 166, 184, 185, 7, 'com_content.article.29', 'Menu Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(128, 93, 140, 141, 7, 'com_content.article.30', 'Most Read Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(129, 93, 142, 143, 7, 'com_content.article.31', 'News Flash', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(130, 44, 229, 230, 4, 'com_content.article.32', 'Parameters', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(131, 108, 255, 256, 6, 'com_content.article.33', 'Phyllopteryx', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(132, 109, 265, 266, 6, 'com_content.article.34', 'Pinnacles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(133, 44, 231, 232, 4, 'com_content.article.35', 'Professionals', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(134, 95, 164, 165, 7, 'com_content.article.36', 'Random Image Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(135, 93, 144, 145, 7, 'com_content.article.37', 'Related Items Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(136, 44, 233, 234, 4, 'com_content.article.38', 'Sample Sites', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(137, 46, 121, 122, 6, 'com_content.article.39', 'Search', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(138, 96, 172, 173, 7, 'com_content.article.40', 'Search Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(139, 50, 211, 212, 6, 'com_content.article.41', 'Search ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(140, 39, 290, 291, 3, 'com_content.article.42', 'Site Map', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(141, 108, 257, 258, 6, 'com_content.article.43', 'Spotted Quoll', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(142, 96, 174, 175, 7, 'com_content.article.44', 'Statistics Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(143, 96, 176, 177, 7, 'com_content.article.45', 'Syndicate Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(144, 50, 213, 214, 6, 'com_content.article.46', 'System', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(145, 44, 235, 236, 4, 'com_content.article.47', 'The Joomla! Community', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(146, 44, 237, 238, 4, 'com_content.article.48', 'The Joomla! Project', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(147, 48, 199, 200, 6, 'com_content.article.49', 'Typography', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(148, 44, 239, 240, 4, 'com_content.article.50', 'Upgraders', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(149, 50, 215, 216, 6, 'com_content.article.51', 'User', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(150, 46, 123, 124, 6, 'com_content.article.52', 'Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(151, 44, 241, 242, 4, 'com_content.article.53', 'Using Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(152, 46, 125, 126, 6, 'com_content.article.54', 'Weblinks', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(153, 95, 166, 167, 7, 'com_content.article.55', 'Weblinks Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(154, 94, 150, 151, 7, 'com_content.article.56', 'Who''s Online', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(155, 108, 259, 260, 6, 'com_content.article.57', 'Wobbegone', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(156, 55, 280, 281, 5, 'com_content.article.58', 'Wonderful Watermelon', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(157, 96, 178, 179, 7, 'com_content.article.59', 'Wrapper Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(158, 46, 127, 128, 6, 'com_content.article.60', 'News Feeds', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(159, 166, 186, 187, 7, 'com_content.article.61', 'Breadcrumbs Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(160, 50, 217, 218, 6, 'com_content.article.62', 'Content', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(162, 109, 267, 268, 6, 'com_content.article.64', 'Blue Mountain Rain Forest', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(163, 109, 269, 270, 6, 'com_content.article.65', 'Ormiston Pound', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(165, 94, 152, 153, 7, 'com_content.article.66', 'Latest Users Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(166, 47, 183, 188, 6, 'com_content.category.75', 'Navigation Modules', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(167, 54, 287, 288, 4, 'com_content.category.76', 'Recipes', '{"core.create":{"12":1,"10":1},"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"12":1,"10":1}}'),
(168, 34, 106, 107, 3, 'com_content.article.67', 'What''s New in 1.5?', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(169, 24, 341, 342, 2, 'com_users.notes.category.77', 'Uncategorised', ''),
(172, 1, 426, 427, 1, 'com_jshopping', 'jshopping', '{}'),
(173, 8, 295, 298, 2, 'com_content.category.78', 'Статьи', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(174, 34, 108, 109, 3, 'com_content.article.71', 'О нас', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(175, 173, 296, 297, 3, 'com_content.article.72', 'Холлофайбер? Не, не слышал...', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(176, 8, 299, 302, 2, 'com_content.category.79', 'Активность', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(177, 176, 300, 301, 3, 'com_content.article.73', 'It''s a new dawn It''s a new day It''s a new life ©', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_associations`
--

CREATE TABLE IF NOT EXISTS `jos_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY  (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_banner_clients`
--

CREATE TABLE IF NOT EXISTS `jos_banner_clients` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `contact` varchar(255) NOT NULL default '',
  `email` varchar(255) NOT NULL default '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  PRIMARY KEY  (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `jos_banner_clients`
--

INSERT INTO `jos_banner_clients` (`id`, `name`, `contact`, `email`, `extrainfo`, `state`, `checked_out`, `checked_out_time`, `metakey`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`) VALUES
(1, 'Joomla!', 'Administrator', 'email@email.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, -1, -1),
(2, 'Shop', 'Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0),
(3, 'Bookstore', 'Bookstore Example', 'example@example.com', '', 1, 0, '0000-00-00 00:00:00', '', 0, '', -1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_banners`
--

CREATE TABLE IF NOT EXISTS `jos_banners` (
  `id` int(11) NOT NULL auto_increment,
  `cid` int(11) NOT NULL default '0',
  `type` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `imptotal` int(11) NOT NULL default '0',
  `impmade` int(11) NOT NULL default '0',
  `clicks` int(11) NOT NULL default '0',
  `clickurl` varchar(200) NOT NULL default '',
  `state` tinyint(3) NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL default '0',
  `metakey_prefix` varchar(255) NOT NULL default '',
  `purchase_type` tinyint(4) NOT NULL default '-1',
  `track_clicks` tinyint(4) NOT NULL default '-1',
  `track_impressions` tinyint(4) NOT NULL default '-1',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `reset` datetime NOT NULL default '0000-00-00 00:00:00',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `language` char(7) NOT NULL default '',
  PRIMARY KEY  (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `jos_banners`
--

INSERT INTO `jos_banners` (`id`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `clickurl`, `state`, `catid`, `description`, `custombannercode`, `sticky`, `ordering`, `metakey`, `params`, `own_prefix`, `metakey_prefix`, `purchase_type`, `track_clicks`, `track_impressions`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `reset`, `created`, `language`) VALUES
(2, 3, 0, 'Shop 1', 'shop-1', 0, 182, 2, 'http://shop.joomla.org/amazoncom-bookstores.html', 1, 15, 'Get books about Joomla! at the Joomla! Book Shop.', '', 0, 1, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":"Joomla! Books"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB'),
(3, 2, 0, 'Shop 2', 'shop-2', 0, 293, 2, 'http://shop.joomla.org', 1, 15, 'T Shirts, caps and more from the Joomla! Shop.', '', 0, 2, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":"Joomla! Shop"}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2011-01-01 00:00:01', 'en-GB'),
(4, 1, 0, 'Support Joomla!', 'support-joomla', 0, 151, 1, 'http://contribute.joomla.org', 1, 15, 'Your contributions of time, talent and money make Joomla possible.', '', 0, 3, '', '{"imageurl":"images\\/banners\\/white.png","width":"","height":"","alt":""}', 0, '', -1, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'en-GB');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL default '0',
  `lft` int(11) NOT NULL default '0',
  `rgt` int(11) NOT NULL default '0',
  `level` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `extension` varchar(50) NOT NULL default '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL default '0',
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=80 ;

--
-- Дамп данных таблицы `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 139, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(9, 34, 1, 131, 132, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(10, 35, 1, 129, 130, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(11, 36, 1, 125, 126, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(12, 37, 1, 61, 62, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(13, 38, 1, 57, 58, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(14, 39, 1, 9, 56, 1, 'sample-data-articles', 'com_content', 'Sample Data-Articles', 'sample-data-articles', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(15, 40, 1, 127, 128, 1, 'sample-data-banners', 'com_banners', 'Sample Data-Banners', 'sample-data-banners', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(16, 41, 1, 63, 124, 1, 'sample-data-contact', 'com_contact', 'Sample Data-Contact', 'sample-data-contact', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(17, 42, 1, 59, 60, 1, 'sample-data-newsfeeds', 'com_newsfeeds', 'Sample Data-Newsfeeds', 'sample-data-newsfeeds', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(18, 43, 1, 1, 8, 1, 'sample-data-weblinks', 'com_weblinks', 'Sample Data-Weblinks', 'sample-data-weblinks', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(19, 44, 14, 10, 39, 2, 'sample-data-articles/joomla', 'com_content', 'Joomla!', 'joomla', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(20, 45, 19, 11, 38, 3, 'sample-data-articles/joomla/extensions', 'com_content', 'Extensions', 'extensions', '', '<p>The Joomla! content management system lets you create webpages of various types using extensions. There are 5 basic types of extensions: components, modules, templates, languages, and plugins. Your website includes the extensions you need to create a basic website in English, but thousands of additional extensions of all types are available. The <a href="http://extensions.joomla.org" style="color: #1b57b1; text-decoration: none; font-weight: normal;">Joomla! Extensions Directory</a> is the largest directory of Joomla extensions.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 11:57:22', 0, '*'),
(21, 46, 20, 12, 13, 4, 'sample-data-articles/joomla/extensions/components', 'com_content', 'Components', 'components', '', '<p><img class="image-left" src="administrator/templates/bluestork/images/header/icon-48-component.png" border="0" alt="Component Image" />Components are larger extensions that produce the major content for your site. Each component has one or more "views" that control how content is displayed. In the Joomla administrator there are additional extensions such as Menus, Redirection, and the extension managers.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 11:58:12', 0, '*'),
(22, 47, 20, 14, 25, 4, 'sample-data-articles/joomla/extensions/modules', 'com_content', 'Modules', 'modules', '', '<p><img class="image-left" src="administrator/templates/bluestork/images/header/icon-48-module.png" border="0" alt="Media Image" />Modules are small blocks of content that can be displayed in positions on a web page. The menus on this site are displayed in modules. The core of Joomla! includes 24 separate modules ranging from login to search to random images. Each module has a name that starts mod_ but when it displays it has a title. In the descriptions in this section, the titles are the same as the names.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 11:59:44', 0, '*'),
(23, 48, 20, 26, 33, 4, 'sample-data-articles/joomla/extensions/templates', 'com_content', 'Templates', 'templates', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-themes.png" border="0" alt="Media Image" align="left" />Templates give your site its look and feel. They determine layout, colours, typefaces, graphics and other aspects of design that make your site unique. Your installation of Joomla comes prepackaged with three front end templates and two backend templates. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Template_Manager_Templates">Help</a></p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:04:51', 0, '*'),
(24, 49, 20, 34, 35, 4, 'sample-data-articles/joomla/extensions/languages', 'com_content', 'Languages', 'languages', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-language.png" border="0" alt="Languages Image" align="left" />Joomla! installs in English, but translations of the interfaces, sample data and help screens are available in dozens of languages. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Language_Manager_Installed">Help</a></p>\r\n<p><a href="http://community.joomla.org/translations.html">Translation information</a></p>\r\n<p>If there is no language pack available for your language, instructions are available for creating your own translation, which you can also contribute to the community by starting a translation team to create an accredited translation. </p>\r\n<p>Translations of the interfaces are installed using the extensions manager in the site administrator and then managed using the language manager.</p>\r\n<p>If you have two or more languages installed you may enable the language switcher plugin and module. They should always be used together. If you create multilingual content and mark your content, menu items or modules as being in specific languages and follow <a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6">the complete instructions</a> your users will be able to select a specific content language using the module. By default both the plugin and module are disabled.</p>\r\n<p>Joomla 2.5 installs with a language override manager that allows you to change the specific words (such as Edit or Search) used in the Joomla application.</p>\r\n<p>There are a number of extensions that can help you manage translations of content available in the<a href="http://extensions.joomla.org"> Joomla! Extensions Directory</a>.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2012-01-17 16:18:40', 0, '*'),
(25, 50, 20, 36, 37, 4, 'sample-data-articles/joomla/extensions/plugins', 'com_content', 'Plugins', 'plugins', '', '<p><img src="administrator/templates/bluestork/images/header/icon-48-plugin.png" border="0" alt="Plugin Image" align="left" />Plugins are small task oriented extensions that enhance the Joomla! framework. Some are associated with particular extensions and others, such as editors, are used across all of Joomla. Most beginning users do not need to change any of the plugins that install with Joomla. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Plugin_Manager_Edit">Help</a></p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:11:56', 0, '*'),
(26, 51, 14, 40, 49, 2, 'sample-data-articles/park-site', 'com_content', 'Park Site', 'park-site', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(27, 52, 26, 41, 42, 3, 'sample-data-articles/park-site/park-blog', 'com_content', 'Park Blog', 'park-blog', '', '<p><span style="font-size: 12px;">Here is where I will blog all about the parks of Australia.</span></p>\r\n<p><em>You can make a blog on your website by creating a category to write your blog posts in (this one is called Park Blog). Each blog post will be an article in that category. If you make a category blog menu link with 1 column it will look like this page, if you display the category description then this part is displayed. </em></p>\r\n<p><em>To enhance your blog you may want to add extensions for <a href="http://extensions.joomla.org/extensions/contacts-and-feedback/articles-comments" style="color: #1b57b1; text-decoration: none; font-weight: normal;">comments</a>,<a href="http://extensions.joomla.org/extensions/social-web" style="color: #1b57b1; text-decoration: none; font-weight: normal;"> interacting with social network sites</a>, <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">tagging</a>, and <a href="http://extensions.joomla.org/extensions/content-sharing" style="color: #1b57b1; text-decoration: none; font-weight: normal;">keeping in contact with your readers</a>. You can also enable the syndication that is included in Joomla (in the Integration Options set Show Feed Link to Show and make sure to display the syndication module on the page).</em></p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:15:40', 0, 'en-GB'),
(28, 53, 26, 43, 48, 3, 'sample-data-articles/park-site/photo-gallery', 'com_content', 'Photo Gallery', 'photo-gallery', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" /></p>\r\n<p>These are my photos from parks I have visited (I didn''t take them, they are all from <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>).</p>\r\n<p><em>This shows you how to make a simple image gallery using articles in com_content. </em></p>\r\n<p><em>In each article put a thumbnail image before a "readmore" and the full size image after it. Set the article to Show Intro Text: Hide. </em></p>', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(29, 54, 14, 50, 55, 2, 'sample-data-articles/fruit-shop-site', 'com_content', 'Fruit Shop Site', 'fruit-shop-site', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(30, 55, 29, 51, 52, 3, 'sample-data-articles/fruit-shop-site/growers', 'com_content', 'Growers', 'growers', '', '<p>We search the whole countryside for the best fruit growers.</p>\r\n<p><em>You can let each supplier have a page that he or she can edit. To see this in action you will need to create a user who is in the suppliers group.  </em></p>\r\n<p><em>Create one page in the growers category for that user and make that supplier the author of the page. That user will be able to edit his or her page. </em></p>\r\n<p><em>This illustrates the use of the Edit Own permission. </em></p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:17:40', 0, '*'),
(31, 56, 18, 2, 3, 2, 'sample-data-weblinks/park-links', 'com_weblinks', 'Park Links', 'park-links', '', '<p>Here are links to some of my favorite parks.</p>\r\n<p><em>The weblinks component provides an easy way to make links to external sites that are consistently formatted and categorised. You can create weblinks from the front end of your site.</em></p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/sampledata\\/parks\\/banner_cradle.jpg"}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(32, 57, 18, 4, 7, 2, 'sample-data-weblinks/joomla-specific-links', 'com_weblinks', 'Joomla! Specific Links', 'joomla-specific-links', '', '<p>A selection of links that are all related to the Joomla Project.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:32:00', 0, '*'),
(33, 58, 32, 5, 6, 3, 'sample-data-weblinks/joomla-specific-links/other-resources', 'com_weblinks', 'Other Resources', 'other-resources', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(34, 59, 16, 64, 65, 2, 'sample-data-contact/park-site', 'com_contact', 'Park Site', 'park-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(35, 60, 16, 66, 123, 2, 'sample-data-contact/shop-site', 'com_contact', 'Shop Site', 'shop-site', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(36, 61, 35, 67, 68, 3, 'sample-data-contact/shop-site/staff', 'com_contact', 'Staff', 'staff', '', '<p>Please feel free to contact our staff at any time should you need assistance.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(37, 62, 35, 69, 122, 3, 'sample-data-contact/shop-site/fruit-encyclopedia', 'com_contact', 'Fruit Encyclopedia', 'fruit-encyclopedia', '', '<p> </p><p>Our directory of information about different kinds of fruit.</p><p>We love fruit and want the world to know more about all of its many varieties.</p><p>Although it is small now, we work on it whenever we have a chance.</p><p>All of the images can be found in <a href="http://commons.wikimedia.org/wiki/Main_Page">Wikimedia Commons</a>.</p><p><img src="images/sampledata/fruitshop/apple.jpg" border="0" alt="Apples" title="Apples" /></p><p><em>This encyclopedia is implemented using the contact component, each fruit a separate contact and a category for each letter. A CSS style is used to create the horizontal layout of the alphabet headings. </em></p><p><em>If you wanted to, you could allow some users (such as your growers) to have access to just this category in the contact component and let them help you to create new content for the encyclopedia.</em></p><p> </p>', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(38, 63, 37, 70, 71, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/a', 'com_contact', 'A', 'a', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(39, 64, 37, 72, 73, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/b', 'com_contact', 'B', 'b', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(40, 65, 37, 74, 75, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/c', 'com_contact', 'C', 'c', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(41, 66, 37, 76, 77, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/d', 'com_contact', 'D', 'd', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(42, 67, 37, 78, 79, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/e', 'com_contact', 'E', 'e', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(43, 68, 37, 80, 81, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/f', 'com_contact', 'F', 'f', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(44, 69, 37, 82, 83, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/g', 'com_contact', 'G', 'g', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(45, 70, 37, 84, 85, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/h', 'com_contact', 'H', 'h', '', '', 0, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(46, 71, 37, 86, 87, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/i', 'com_contact', 'I', 'i', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(47, 72, 37, 88, 89, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/j', 'com_contact', 'J', 'j', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(48, 73, 37, 90, 91, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/k', 'com_contact', 'K', 'k', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(49, 74, 37, 92, 93, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/l', 'com_contact', 'L', 'l', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(50, 75, 37, 94, 95, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/m', 'com_contact', 'M', 'm', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(51, 76, 37, 96, 97, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/n', 'com_contact', 'N', 'n', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(52, 77, 37, 98, 99, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/o', 'com_contact', 'O', 'o', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(53, 78, 37, 100, 101, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/p', 'com_contact', 'P', 'p', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(54, 79, 37, 102, 103, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/q', 'com_contact', 'Q', 'q', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(55, 80, 37, 104, 105, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/r', 'com_contact', 'R', 'r', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(56, 81, 37, 106, 107, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/s', 'com_contact', 'S', 's', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(57, 82, 37, 108, 109, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/t', 'com_contact', 'T', 't', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(58, 83, 37, 110, 111, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/u', 'com_contact', 'U', 'u', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(59, 84, 37, 112, 113, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/v', 'com_contact', 'V', 'v', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(60, 85, 37, 114, 115, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/w', 'com_contact', 'W', 'w', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(61, 86, 37, 116, 117, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/x', 'com_contact', 'X', 'x', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(62, 87, 37, 118, 119, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/y', 'com_contact', 'Y', 'y', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(63, 88, 37, 120, 121, 4, 'sample-data-contact/shop-site/fruit-encyclopedia/z', 'com_contact', 'Z', 'z', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(64, 93, 22, 15, 16, 5, 'sample-data-articles/joomla/extensions/modules/articles-modules', 'com_content', 'Content Modules', 'articles-modules', '', '<p>Content modules display article and other information from the content component.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(65, 94, 22, 17, 18, 5, 'sample-data-articles/joomla/extensions/modules/user-modules', 'com_content', 'User Modules', 'user-modules', '', '<p>User modules interact with the user system, allowing users to login, show who is logged-in, and showing the most recently registered users.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:00:50', 0, '*'),
(66, 95, 22, 19, 20, 5, 'sample-data-articles/joomla/extensions/modules/display-modules', 'com_content', 'Display Modules', 'display-modules', '', '<p>These modules display information from components other than content and user. These include weblinks, news feeds and the media manager.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(67, 96, 22, 21, 22, 5, 'sample-data-articles/joomla/extensions/modules/utility-modules', 'com_content', 'Utility Modules', 'utility-modules', '', '<p>Utility modules provide useful functionality such as search, syndication and statistics.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:01:34', 0, '*'),
(68, 97, 23, 31, 32, 5, 'sample-data-articles/joomla/extensions/templates/atomic', 'com_content', 'Atomic', 'atomic', '', '<p><img src="templates/atomic/template_thumbnail.png" border="0" alt="The Atomic Template" style="border: 0; float: right;" /></p>\r\n<p>Atomic is a minimal template designed to be a skeleton for making your own template and to learn about Joomla! templating.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=285">Home Page</a></li>\r\n<li><a href="index.php?Itemid=316">Typography</a></li>\r\n</ul>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:08:16', 0, '*'),
(69, 98, 23, 27, 28, 5, 'sample-data-articles/joomla/extensions/templates/beez-20', 'com_content', 'Beez 20', 'beez-20', '', '<p><img src="templates/beez_20/template_thumbnail.png" border="0" alt="Beez_20 thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 2.0 is a versatile, easy to customise template that works for a variety of sites. It meets major accessibility standards and demonstrates a range of css and javascript techniques. It is the default template that installs with Joomla!</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=424">Home Page</a></li>\r\n<li><a href="index.php?Itemid=423">Typography</a></li>\r\n</ul>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(70, 99, 23, 29, 30, 5, 'sample-data-articles/joomla/extensions/templates/beez-5', 'com_content', 'Beez 5', 'beez-5', '', '<p><img src="templates/beez5/template_thumbnail.png" border="0" alt="Beez5 Thumbnail" align="right" style="float: right;" /></p>\r\n<p>Beez 5 is an html5 implementation of a Joomla! template. It uses a number of html5 techniques to enhance the presentation of a site. It is used as the template for the Fruit Shop sample site.</p>\r\n<ul>\r\n<li><a href="index.php?Itemid=458">Home Page</a></li>\r\n<li><a href="index.php?Itemid=457">Typography</a></li>\r\n</ul>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:06:57', 0, '*'),
(72, 108, 28, 44, 45, 4, 'sample-data-articles/park-site/photo-gallery/animals', 'com_content', 'Animals', 'animals', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(73, 109, 28, 46, 47, 4, 'sample-data-articles/park-site/photo-gallery/scenery', 'com_content', 'Scenery', 'scenery', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, 'en-GB'),
(75, 166, 22, 23, 24, 5, 'sample-data-articles/joomla/extensions/modules/navigation-modules', 'com_content', 'Navigation Modules', 'navigation-modules', '', '<p>Navigation modules help your visitors move through your site and find what they need.</p>\r\n<p>Menus provide your site with structure and help your visitors navigate your site.  Although they are all based on the same menu module, the variety of ways menus are used in the sample data show how flexible this module is.</p>\r\n<p>A menu can range from extremely simple (for example the top menu or the menu for the Australian Parks sample site) to extremely complex (for example the About Joomla! menu with its many levels). They can also be used for other types of presentation such as the site map linked from the "This Site" menu.</p>\r\n<p>Breadcrumbs provide users with information about where they are in a site.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-01-01 00:00:01', 0, '*'),
(76, 167, 29, 53, 54, 3, 'sample-data-articles/fruit-shop-site/recipes', 'com_content', 'Recipes', 'recipes', '', '<p>Customers and suppliers can post their favorite recipes for fruit here.</p>\r\n<p>A good idea is to promote the use of metadata keywords to make finding other recipes for the same fruit easier.</p>\r\n<p><em>To see this in action, create a user assigned to the customer group and a user assigned to the suppliers group. These users will be able to create their own recipe pages and edit those pages. They will not be able to edit other users'' pages.</em><br /><br /></p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 42, '2011-12-27 12:18:25', 0, '*'),
(77, 169, 1, 133, 134, 1, 'uncategorised', 'com_users.notes', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '2011-01-01 00:00:01', 0, '*'),
(78, 173, 1, 135, 136, 1, 'articles', 'com_content', 'Статьи', 'articles', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-12-07 01:41:12', 0, '0000-00-00 00:00:00', 0, '*'),
(79, 176, 1, 137, 138, 1, 'activity', 'com_content', 'Активность', 'activity', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-12-21 21:13:21', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `con_position` varchar(255) default NULL,
  `address` text,
  `suburb` varchar(100) default NULL,
  `state` varchar(100) default NULL,
  `country` varchar(100) default NULL,
  `postcode` varchar(100) default NULL,
  `telephone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `misc` mediumtext,
  `image` varchar(255) default NULL,
  `imagepos` varchar(20) default NULL,
  `email_to` varchar(255) default NULL,
  `default_con` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL default '0',
  `catid` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `mobile` varchar(255) NOT NULL default '',
  `webpage` varchar(255) NOT NULL default '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Contact Name Here', 'name', 'Position', 'Street Address', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', '<p>Information about or by the contact.</p>', 'images/powered_by.png', 'top', 'email@example.com', 1, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Twitter","linka":"http:\\/\\/twitter.com\\/joomla","linkb_name":"YouTube","linkb":"http:\\/\\/www.youtube.com\\/user\\/joomla","linkc_name":"Facebook","linkc":"http:\\/\\/www.facebook.com\\/joomla","linkd_name":"FriendFeed","linkd":"http:\\/\\/friendfeed.com\\/joomla","linke_name":"Scribed","linke":"http:\\/\\/www.scribd.com\\/people\\/view\\/504592-joomla","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 16, 1, '', '', 'last', 'first', 'middle', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:23:32', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Webmaster', 'webmaster', '', '', '', '', '', '', '', '', '', '', NULL, 'webmaster@example.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"","redirect":""}', 0, 34, 1, '', '', '', '', '', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Owner', 'owner', '', '', '', '', '', '', '', '', '<p>I''m the owner of this store.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 2, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Buyer', 'buyer', '', '', '', '', '', '', '', '', '<p>I am in charge of buying fruit. If you sell good fruit, contact me.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"0","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 36, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Bananas', 'bananas', 'Scientific Name: Musa', 'Image Credit: Enzik\r\nRights: Creative Commons Share Alike Unported 3.0\r\nSource: http://commons.wikimedia.org/wiki/File:Bananas_-_Morocco.jpg', '', 'Type: Herbaceous', 'Large Producers: India, China, Brasil', '', '', '', '<p>Bananas are a great source of potassium.</p>\r\n<p> </p>', 'images/sampledata/fruitshop/bananas_2.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"show_with_link","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"1","show_email":"","show_street_address":"","show_suburb":"","show_state":"1","show_postcode":"","show_country":"1","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Banana English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Banana","linkb_name":"Wikipedia:  \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0915\\u0947\\u0932\\u093e","linkb":"http:\\/\\/hi.wikipedia.org\\/wiki\\/%E0%A4%95%E0%A5%87%E0%A4%B2%E0%A4%BE","linkc_name":"Wikipedia:Banana Portugu\\u00eas","linkc":"http:\\/\\/pt.wikipedia.org\\/wiki\\/Banana","linkd_name":"Wikipedia: \\u0411\\u0430\\u043d\\u0430\\u043d  \\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439","linkd":"http:\\/\\/ru.wikipedia.org\\/\\u0411\\u0430\\u043d\\u0430\\u043d","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 39, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Apples', 'apples', 'Scientific Name: Malus domestica', 'Image Credit: Fievet\r\nRights: Public Domain\r\nSource: http://commons.wikimedia.org/wiki/File:Pommes_vertes.JPG', '', 'Family: Rosaceae', 'Large: Producers: China, United States', '', '', '', '<p>Apples are a versatile fruit, used for eating, cooking, and preserving.</p>\r\n<p>There are more that 7500 different kinds of apples grown around the world.</p>', 'images/sampledata/fruitshop/apple.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Apples English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Apple","linkb_name":"Wikipedia: Manzana Espa\\u00f1ol ","linkb":"http:\\/\\/es.wikipedia.org\\/wiki\\/Manzana","linkc_name":"Wikipedia: \\u82f9\\u679c \\u4e2d\\u6587","linkc":"http:\\/\\/zh.wikipedia.org\\/zh\\/\\u82f9\\u679c","linkd_name":"Wikipedia: Tofaa Kiswahili","linkd":"http:\\/\\/sw.wikipedia.org\\/wiki\\/Tofaa","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 38, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Tamarind', 'tamarind', 'Scientific Name: Tamarindus indica', 'Image Credit: Franz Eugen Köhler, Köhler''s Medizinal-Pflanzen \r\nRights: Public Domain\r\nSource:http://commons.wikimedia.org/wiki/File:Koeh-134.jpg', '', 'Family: Fabaceae', 'Large Producers: India, United States', '', '', '', '<p>Tamarinds are a versatile fruit used around the world. In its young form it is used in hot sauces; ripened it is the basis for many refreshing drinks.</p>\r\n<p> </p>', 'images/sampledata/fruitshop/tamarind.jpg', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"plain","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"1","linka_name":"Wikipedia: Tamarind English","linka":"http:\\/\\/en.wikipedia.org\\/wiki\\/Tamarind","linkb_name":"Wikipedia: \\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2  \\u09ac\\u09be\\u0982\\u09b2\\u09be  ","linkb":"http:\\/\\/bn.wikipedia.org\\/wiki\\/\\u09a4\\u09c7\\u0981\\u09a4\\u09c1\\u09b2 ","linkc_name":"Wikipedia: Tamarinier Fran\\u00e7ais","linkc":"http:\\/\\/fr.wikipedia.org\\/wiki\\/Tamarinier","linkd_name":"Wikipedia:Tamaline lea faka-Tonga","linkd":"http:\\/\\/to.wikipedia.org\\/wiki\\/Tamaline","linke_name":"","linke":"","contact_layout":"beez5:encyclopedia"}', 0, 57, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Shop Address', 'shop-address', '', '', 'Our City', 'Our Province', 'Our Country', '', '555-555-5555', '', '<p>Here are directions for how to get to our shop.</p>', '', NULL, '', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":"","linkb_name":"","linkb":"","linkc_name":"","linkc":"","linkd_name":"","linkd":"","linke_name":"","linke":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 35, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","rights":""}', 1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `asset_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `title_alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `sectionid` int(10) unsigned NOT NULL default '0',
  `mask` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL default '1',
  `parentid` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `hits` int(10) unsigned NOT NULL default '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Дамп данных таблицы `jos_content`
--

INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 89, 'Administrator Components', 'administrator-components', '', '<p>All components are also used in the administrator area of your website. In addition to the ones listed here, there are components in the administrator that do not have direct front end displays, but do help shape your site. The most important ones for most users are</p>\r\n<ul>\r\n<li>Media Manager</li>\r\n<li>Extensions Manager</li>\r\n<li>Menu Manager</li>\r\n<li>Global Configuration</li>\r\n<li>Banners</li>\r\n<li>Redirect</li>\r\n</ul>\r\n<hr title="Media Manager" alt="Media Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<p> </p>\r\n<h3>Media Manager</h3>\r\n<p>The media manager component lets you upload and insert images into content throughout your site. Optionally, you can enable the flash uploader which will allow you to to upload multiple images. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Media_Manager">Help</a></p>\r\n<hr title="Extensions Manager" alt="Extensions Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Extensions Manager</h3>\r\n<p>The extensions manager lets you install, update, uninstall and manage all of your extensions. The extensions manager has been extensively redesigned, although the core install and uninstall functionality remains the same as in Joomla! 1.5. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Extension_Manager_Install">Help</a></p>\r\n<hr title="Menu Manager" alt="Menu Manager" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Menu Manager</h3>\r\n<p>The menu manager lets you create the menus you see displayed on your site. It also allows you to assign modules and template styles to specific menu links. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Menus_Menu_Manager">Help</a></p>\r\n<hr title="Global Configuration" alt="Global Configuration" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Global Configuration</h3>\r\n<p>The global configuration is where the site administrator configures things such as whether search engine friendly urls are enabled, the site meta data (descriptive text used by search engines and indexers) and other functions. For many beginning users simply leaving the settings on default is a good way to begin, although when your site is ready for the public you will want to change the meta data to match its content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Site_Global_Configuration">Help</a></p>\r\n<hr title="Banners" alt="Banners" class="system-pagebreak" style="color: gray; border: 1px dashed gray;" />\r\n<h3>Banners</h3>\r\n<p>The banners component provides a simple way to display a rotating image in a module and, if you wish to have advertising, a way to track the number of times an image is viewed and clicked. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Banners_Banners_Edit">Help</a></p>\r\n<hr title="Redirect" class="system-pagebreak" />\r\n<h3><br />Redirect</h3>\r\n<p>The redirect component is used to manage broken links that produce Page Not Found (404) errors. If enabled it will allow you to redirect broken links to specific pages. It can also be used to manage migration related URL changes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Redirect_Manager">Help</a></p>', '', -2, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:03:19', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 7, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 90, 'Archive Module', 'archive-module', '', '<p>This module shows a list of the calendar months containing archived articles. After you have changed the status of an article to archived, this list will be automatically generated. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Archive" title="Archive Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_archive,Archived Articles}</div>', '', -2, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:18:05', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 5, 0, 5, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 91, 'Article Categories Module', 'article-categories-module', '', '<p>This module displays a list of categories from one parent category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Categories" title="Categories Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_categories,Articles Categories}</div>\r\n<p> </p>', '', -2, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-09-17 22:13:31', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 5, 0, 6, 'modules, content', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 92, 'Articles Category Module', 'articles-category-module', '', '<p>This module allows you to display the articles in a specific category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Category">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_category,Articles Category}</div>', '', -2, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:18:26', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 8, 0, 7, '', 'articles,content', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 101, 'Authentication', 'authentication', '', '<p>The authentication plugins operate when users login to your site or administrator. The Joomla! authentication plugin is in operation by default but you can enable Gmail or LDAP or install a plugin for a different system. An example is included that may be used to create a new authentication plugin.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Gmail <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_GMail">Help</a></li>\r\n<li>LDAP <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Authentication_-_LDAP">Help</a></li>\r\n</ul>', '', -2, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:04:13', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 102, 'Australian Parks ', 'australian-parks', '', '<p><img src="images/sampledata/parks/banner_cradle.jpg" border="0" alt="Cradle Park Banner" /></p>\r\n<p>Welcome!</p>\r\n<p>This is a basic site about the beautiful and fascinating parks of Australia.</p>\r\n<p>On this site you can read all about my travels to different parks, see photos, and find links to park websites.</p>\r\n<p><em>This sample site is an example of using the core of Joomla! to create a basic website, whether a "brochure site,"  a personal blog, or as a way to present information on a topic you are interested in.</em></p>\r\n<p><em> Read more about the site in the About Parks module.</em></p>\r\n<p> </p>', '', -2, 0, 0, 26, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2011-09-06 06:20:19', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 103, 'Banner Module', 'banner-module', '', '<p>The banner module is used to display the banners that are managed by the banners component in the site administrator. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Banners">Help</a>.</p>\r\n<div class="sample-module">{loadmodule banners,Banners}</div>', '', -2, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:32:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 6, '', '', 1, 4, '', 0, '*', ''),
(8, 104, 'Beginners', 'beginners', '', '<p>If this is your first Joomla! site or your first web site, you have come to the right place. Joomla will help you get your website up and running quickly and easily.</p>\r\n<p>Start off using your site by logging in using the administrator account you created when you installed Joomla.</p>\r\n', '\r\n<p>Explore the articles and other resources right here on your site data to learn more about how Joomla works. (When you''re done reading, you can delete or archive all of this.) You will also probably want to visit the Beginners'' Areas of the <a href="http://docs.joomla.org/Beginners">Joomla documentation</a> and <a href="http://forum.joomla.org">support forums</a>.</p>\r\n<p>You''ll also want to sign up for the Joomla Security Mailing list and the Announcements mailing list. For inspiration visit the <a href="http://community.joomla.org/showcase/">Joomla! Site Showcase</a> to see an amazing array of ways people use Joomla to tell their stories on the web.</p>\r\n<p>The basic Joomla installation will let you get a great site up and running, but when you are ready for more features the power of Joomla is in the creative ways that developers have extended it to do all kinds of things. Visit the <a href="http://extensions.joomla.org/">Joomla! Extensions Directory</a> to see thousands of extensions that can do almost anything you could want on a website. Can''t find what you need? You may want to find a Joomla professional in the <a href="http://resources.joomla.org/">Joomla! Resource Directory</a>.</p>\r\n<p>Want to learn more? Consider attending a <a href="http://community.joomla.org/events.html">Joomla! Day</a> or other event or joining a local <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Can''t find one near you? Start one yourself.</p>', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:10:49', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(9, 105, 'Contacts', 'contact', '', '<p>The contact component provides a way to provide contact forms and information for your site or to create a complex directory that can be used for many different purposes. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Contacts_Contacts">Help</a></p>', '', -2, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:15:37', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 106, 'Content', 'content', '', '<p>The content component (com_content) is what you use to write articles. It is extremely flexible and has the largest number of built in views. Articles can be created and edited from the front end, making content the easiest component to use to create your site content. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Content_Article_Manager">Help</a></p>', '', -2, 0, 0, 21, '2011-01-01 00:00:01', 42, '', '2011-01-10 04:28:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 107, 'Cradle Mountain', 'cradle-mountain', '', '<p> </p>\r\n', '\r\n<p> </p>', -2, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:42:36', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/250px_cradle_mountain_seen_from_barn_bluff.jpg","float_intro":"","image_intro_alt":"Cradle Mountain","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_cradle_mountain_seen_from_barn_bluff.jpg","float_fulltext":"none","image_fulltext_alt":"Cradle Mountain","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Alan J.W.C. License: GNU Free Documentation License v . 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 110, 'Custom HTML Module', 'custom-html-module', '', '<p>This module allows you to create your own HTML Module using a WYSIWYG editor. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Custom_HTML" title="Custom HTML Module">Help</a></p>\r\n<div class="sample-module">{loadmodule custom,Custom HTML}</div>', '', -2, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-12-27 11:12:46', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 0, 1, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 111, 'Directions', 'directions', '', '<p>Here''s how to find our shop.</p><p>By car</p><p>Drive along Main Street to the intersection with First Avenue.  Look for our sign.</p><p>By foot</p><p>From the center of town, walk north on Main Street until you see our sign.</p><p>By bus</p><p>Take the #73 Bus to the last stop. We are on the north east corner.</p>', '', -2, 0, 0, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(14, 112, 'Editors', 'editors', '', '<p>Editors are used thoughout Joomla! where content is created. TinyMCE is the default choice in most locations although CodeMirror is used in the template manager. No Editor provides a text box for html content.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>CodeMirror <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_CodeMirror">Help</a></li>\r\n<li>TinyMCE<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_TinyMCE"> Help</a></li>\r\n<li>No Editor <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Editor_-_None">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>', '', -2, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-06 05:45:40', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 5, '', '', 1, 0, '', 0, '*', ''),
(15, 113, 'Editors-xtd', 'editors-xtd', '', '<p>These plugins are the buttons found beneath your editor. They only run when an editor plugin runs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Editor Button: Image<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Image"> Help</a></li>\r\n<li>Editor Button: Readmore <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Readmore">Help</a></li>\r\n<li>Editor Button: Page Break <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Pagebreak">Help</a></li>\r\n<li>Editor Button: Article <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Button_-_Article">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>None</li>\r\n</ul>', '', -2, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:14:12', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 6, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 114, 'Feed Display', 'feed-display', '', '<p>This module allows the displaying of a syndicated feed. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Feed_Display" title="Feed Display Module">Help</a></p>\r\n<div class="sample-module">{loadmodule feed,Feed Display}</div>', '', -2, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2011-09-17 22:22:08', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 2, '', '', 1, 3, '', 0, '*', ''),
(17, 115, 'First Blog Post', 'first-blog-post', '', '<p><em>Lorem Ipsum is filler text that is commonly used by designers before the content for a new site is ready.</em></p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus purus vitae diam posuere nec eleifend elit dictum. Aenean sit amet erat purus, id fermentum lorem. Integer elementum tristique lectus, non posuere quam pretium sed. Quisque scelerisque erat at urna condimentum euismod. Fusce vestibulum facilisis est, a accumsan massa aliquam in. In auctor interdum mauris a luctus. Morbi euismod tempor dapibus. Duis dapibus posuere quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In eu est nec erat sollicitudin hendrerit. Pellentesque sed turpis nunc, sit amet laoreet velit. Praesent vulputate semper nulla nec varius. Aenean aliquam, justo at blandit sodales, mauris leo viverra orci, sed sodales mauris orci vitae magna.</p>', '<p>Quisque a massa sed libero tristique suscipit. Morbi tristique molestie metus, vel vehicula nisl ultrices pretium. Sed sit amet est et sapien condimentum viverra. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus viverra tortor porta orci convallis ac cursus erat sagittis. Vivamus aliquam, purus non luctus adipiscing, orci urna imperdiet eros, sed tincidunt neque sapien et leo. Cras fermentum, dolor id tempor vestibulum, neque lectus luctus mauris, nec congue tellus arcu nec augue. Nulla quis mi arcu, in bibendum quam. Sed placerat laoreet fermentum. In varius lobortis consequat. Proin vulputate felis ac arcu lacinia adipiscing. Morbi molestie, massa id sagittis luctus, sem sapien sollicitudin quam, in vehicula quam lectus quis augue. Integer orci lectus, bibendum in fringilla sit amet, rutrum eget enim. Curabitur at libero vitae lectus gravida luctus. Nam mattis, ligula sit amet vestibulum feugiat, eros sem sodales mi, nec dignissim ante elit quis nisi. Nulla nec magna ut leo convallis sagittis ac non erat. Etiam in augue nulla, sed tristique orci. Vestibulum quis eleifend sapien.</p><p>Nam ut orci vel felis feugiat posuere ut eu lorem. In risus tellus, sodales eu eleifend sed, imperdiet id nulla. Nunc at enim lacus. Etiam dignissim, arcu quis accumsan varius, dui dui faucibus erat, in molestie mauris diam ac lacus. Sed sit amet egestas nunc. Nam sollicitudin lacinia sapien, non gravida eros convallis vitae. Integer vehicula dui a elit placerat venenatis. Nullam tincidunt ligula aliquet dui interdum feugiat. Maecenas ultricies, lacus quis facilisis vehicula, lectus diam consequat nunc, euismod eleifend metus felis eu mauris. Aliquam dapibus, ipsum a dapibus commodo, dolor arcu accumsan neque, et tempor metus arcu ut massa. Curabitur non risus vitae nisl ornare pellentesque. Pellentesque nec ipsum eu dolor sodales aliquet. Vestibulum egestas scelerisque tincidunt. Integer adipiscing ultrices erat vel rhoncus.</p><p>Integer ac lectus ligula. Nam ornare nisl id magna tincidunt ultrices. Phasellus est nisi, condimentum at sollicitudin vel, consequat eu ipsum. In venenatis ipsum in ligula tincidunt bibendum id et leo. Vivamus quis purus massa. Ut enim magna, pharetra ut condimentum malesuada, auctor ut ligula. Proin mollis, urna a aliquam rutrum, risus erat cursus odio, a convallis enim lectus ut lorem. Nullam semper egestas quam non mattis. Vestibulum venenatis aliquet arcu, consectetur pretium erat pulvinar vel. Vestibulum in aliquet arcu. Ut dolor sem, pellentesque sit amet vestibulum nec, tristique in orci. Sed lacinia metus vel purus pretium sit amet commodo neque condimentum.</p><p>Aenean laoreet aliquet ullamcorper. Nunc tincidunt luctus tellus, eu lobortis sapien tincidunt sed. Donec luctus accumsan sem, at porttitor arcu vestibulum in. Sed suscipit malesuada arcu, ac porttitor orci volutpat in. Vestibulum consectetur vulputate eros ut porttitor. Aenean dictum urna quis erat rutrum nec malesuada tellus elementum. Quisque faucibus, turpis nec consectetur vulputate, mi enim semper mi, nec porttitor libero magna ut lacus. Quisque sodales, leo ut fermentum ullamcorper, tellus augue gravida magna, eget ultricies felis dolor vitae justo. Vestibulum blandit placerat neque, imperdiet ornare ipsum malesuada sed. Quisque bibendum quam porta diam molestie luctus. Sed metus lectus, ornare eu vulputate vel, eleifend facilisis augue. Maecenas eget urna velit, ac volutpat velit. Nam id bibendum ligula. Donec pellentesque, velit eu convallis sodales, nisi dui egestas nunc, et scelerisque lectus quam ut ipsum.</p>', -2, 0, 0, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(18, 116, 'Second Blog Post', 'second-blog-post', '', '<p><em>Lorem Ipsum is text that is traditionally used by designers when working on a site before the content is ready.</em></p><p>Pellentesque bibendum metus ut dolor fermentum ut pulvinar tortor hendrerit. Nam vel odio vel diam tempus iaculis in non urna. Curabitur scelerisque, nunc id interdum vestibulum, felis elit luctus dui, ac dapibus tellus mauris tempus augue. Duis congue facilisis lobortis. Phasellus neque erat, tincidunt non lacinia sit amet, rutrum vitae nunc. Sed placerat lacinia fermentum. Integer justo sem, cursus id tristique eget, accumsan vel sapien. Curabitur ipsum neque, elementum vel vestibulum ut, lobortis a nisl. Fusce malesuada mollis purus consectetur auctor. Morbi tellus nunc, dapibus sit amet rutrum vel, laoreet quis mauris. Aenean nec sem nec purus bibendum venenatis. Mauris auctor commodo libero, in adipiscing dui adipiscing eu. Praesent eget orci ac nunc sodales varius.</p>', '<p>Nam eget venenatis lorem. Vestibulum a interdum sapien. Suspendisse potenti. Quisque auctor purus nec sapien venenatis vehicula malesuada velit vehicula. Fusce vel diam dolor, quis facilisis tortor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque libero nisi, pellentesque quis cursus sit amet, vehicula vitae nisl. Curabitur nec nunc ac sem tincidunt auctor. Phasellus in mattis magna. Donec consequat orci eget tortor ultricies rutrum. Mauris luctus vulputate molestie. Proin tincidunt vehicula euismod. Nam congue leo non erat cursus a adipiscing ipsum congue. Nulla iaculis purus sit amet turpis aliquam sit amet dapibus odio tincidunt. Ut augue diam, congue ut commodo pellentesque, fermentum mattis leo. Sed iaculis urna id enim dignissim sodales at a ipsum. Quisque varius lobortis mollis. Nunc purus magna, pellentesque pellentesque convallis sed, varius id ipsum. Etiam commodo mi mollis erat scelerisque fringilla. Nullam bibendum massa sagittis diam ornare rutrum.</p><p>Praesent convallis metus ut elit faucibus tempus in quis dui. Donec fringilla imperdiet nibh, sit amet fringilla velit congue et. Quisque commodo luctus ligula, vitae porttitor eros venenatis in. Praesent aliquet commodo orci id varius. Nulla nulla nibh, varius id volutpat nec, sagittis nec eros. Cras et dui justo. Curabitur malesuada facilisis neque, sed tempus massa tincidunt ut. Sed suscipit odio in lacus auctor vehicula non ut lacus. In hac habitasse platea dictumst. Sed nulla nisi, lacinia in viverra at, blandit vel tellus. Nulla metus erat, ultrices non pretium vel, varius nec sem. Morbi sollicitudin mattis lacus quis pharetra. Donec tincidunt mollis pretium. Proin non libero justo, vitae mattis diam. Integer vel elit in enim varius posuere sed vitae magna. Duis blandit tempor elementum. Vestibulum molestie dui nisi.</p><p>Curabitur volutpat interdum lorem sed tempus. Sed placerat quam non ligula lacinia sodales. Cras ultrices justo at nisi luctus hendrerit. Quisque sit amet placerat justo. In id sapien eu neque varius pharetra sed in sapien. Etiam nisl nunc, suscipit sed gravida sed, scelerisque ut nisl. Mauris quis massa nisl, aliquet posuere ligula. Etiam eget tortor mauris. Sed pellentesque vestibulum commodo. Mauris vitae est a libero dapibus dictum fringilla vitae magna.</p><p>Nulla facilisi. Praesent eget elit et mauris gravida lobortis ac nec risus. Ut vulputate ullamcorper est, volutpat feugiat lacus convallis non. Maecenas quis sem odio, et aliquam libero. Integer vel tortor eget orci tincidunt pulvinar interdum at erat. Integer ullamcorper consequat eros a pellentesque. Cras sagittis interdum enim in malesuada. Etiam non nunc neque. Fusce non ligula at tellus porta venenatis. Praesent tortor orci, fermentum sed tincidunt vel, varius vel dui. Duis pulvinar luctus odio, eget porta justo vulputate ac. Nulla varius feugiat lorem sed tempor. Phasellus pulvinar dapibus magna eget egestas. In malesuada lectus at justo pellentesque vitae rhoncus nulla ultrices. Proin ut sem sem. Donec eu suscipit ipsum. Cras eu arcu porttitor massa feugiat aliquet at quis nisl.</p>', -2, 0, 0, 27, '2011-01-01 00:00:01', 42, '', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(19, 117, 'Footer Module', 'footer-module', '', '<p>This module shows the Joomla! copyright information. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Footer" title="Footer Module">Help</a></p>\r\n<div class="sample-module">{loadmodule footer,Footer}</div>', '', -2, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:22:47', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 3, '', '', 1, 4, '', 0, '*', ''),
(20, 118, 'Fruit Shop', 'fruit-shop', '', '<h2>Welcome to the Fruit Shop</h2>\r\n<p>We sell fruits from around the world. Please use our website to learn more about our business. We hope you will come to our shop and buy some fruit.</p>\r\n<p><em>This mini site will show you how you might want to set up a site for a business, in this example one selling fruit. It shows how to use access controls to manage your site content. If you were building a real site, you might want to extend it with e-commerce, a catalog, mailing lists or other enhancements, many of which are available through the</em><a href="http://extensions.joomla.org"><em> Joomla! Extensions Directory</em></a>.</p>\r\n<p><em>To understand this site you will probably want to make one user with group set to customer and one with group set to grower. By logging in with different privileges you can see how access control works.</em></p>', '', -2, 0, 0, 29, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-12-27 11:17:59', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 119, 'Getting Help', 'getting-help', '', '<p><img class="image-left" src="administrator/templates/hathor/images/header/icon-48-help_header.png" border="0" /> There are lots of places you can get help with Joomla!. In many places in your site administrator you will see the help icon. Click on this for more information about the options and functions of items on your screen. Other places to get help are:</p>\r\n<ul>\r\n<li><a href="http://forum.joomla.org">Support Forums</a></li>\r\n<li><a href="http://docs.joomla.org">Documentation</a></li>\r\n<li><a href="http://resources.joomla.org">Professionals</a></li>\r\n<li><a href="http://shop.joomla.org/amazoncom-bookstores.html">Books</a></li>\r\n</ul>', '', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 15:32:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 10, 0, 8, '', '', 1, 17, '', 0, '*', ''),
(22, 120, 'Getting Started', 'getting-started', '', '<p>It''s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. The Joomla! software brings together the template and the content to create web pages.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the "Site Administrator" link on the "This Site" menu or by adding /administrator to the end of you domain name.</p>\r\n<p>Log in to the administrator using the username and password created during the installation of Joomla.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to the front end of your site use the login form or the login menu link on the "This Site" menu. Use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles.</p>\r\n<p>In managing your site, you will be able to create content that only logged-in users are able to see.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the "submit article" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published and put it in the Joomla category.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href="http://docs.joomla.org">Joomla! documentation site</a> and on the<a href="http://forum.joomla.org"> Joomla! forums</a>.</p>', '', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:21:44', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 9, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 121, 'Happy Orange Orchard', 'happy-orange-orchard', '', '<p>At our orchard we grow the world''s best oranges as well as other citrus fruit such as lemons and grapefruit. Our family has been tending this orchard for generations.</p>', '', -2, 0, 0, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 2, '', '', 1, 0, '', 0, '*', ''),
(24, 122, 'Joomla!', 'joomla', '', '<p>Congratulations! You have a Joomla site! Joomla makes it easy to build a website just the way you want it and keep it simple to update and maintain.</p>\r\n<p>Joomla is a flexible and powerful platform, whether you are building a small site for yourself or a huge site with hundreds of thousands of visitors. Joomla is open source, which means you can make it work just the way you want it to.</p>', '', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:22:23', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(25, 123, 'Koala', 'koala', '', '<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n', '\r\n<p> </p>', -2, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 05:15:00', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/180px_koala_ag1.jpg","float_intro":"","image_intro_alt":"Koala  Thumbnail","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_koala_ag1.jpg","float_fulltext":"","image_fulltext_alt":"Koala Climbing Tree","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Koala-ag1.jpg Author: Arnaud Gaillard License: Creative Commons Share Alike Attribution Generic 1.0"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(26, 124, 'Language Switcher', 'language-switcher', '', '<p>The language switcher module allows you to take advantage of the language tags that are available when content, modules and menu links are created.</p>\r\n<p>This module displays a list of available Content Languages for switching between them.</p>\r\n<p>When switching languages, it redirects to the Home page, or associated menu item, defined for the chosen language. Thereafter, the navigation will be the one defined for that language.</p>\r\n<p><strong>The language filter plugin must be enabled for this module to work properly.</strong></p>\r\n<p><strong></strong> <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Language_Switcher" title="Language Switcher Module">Help</a></p>\r\n<p>To view an example of the language switch moduler module, go to the site administrator and enable the language filter plugin and the language switcher module labelled "language switcher" and visit the fruit shop or park sample sites. Then follow<a href="http://docs.joomla.org/Language_Switcher_Tutorial_for_Joomla_1.6"> the instructions in this tutorial</a>.</p>', '', -2, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:25:00', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 3, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(27, 125, 'Latest Articles Module', 'latest-articles-module', '', '<p>This module shows a list of the most recently published and current Articles. Some that are shown may have expired even though they are the most recent. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_News" title="Latest Articles">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_latest,Latest News}</div>', '', -2, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-12-27 11:25:41', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 1, 'modules, content', '', 1, 15, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(28, 126, 'Login Module', 'login-module', '', '<p>This module displays a username and password login form. It also displays a link to retrieve a forgotten password. If user registration is enabled (in the Global Configuration settings), another link will be shown to enable self-registration for users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Login" title="Login">Help</a></p>\r\n<div class="sample-module">{loadmodule login,login}</div>', '', -2, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:20:35', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 2, '', '', 1, 5, '', 0, '*', ''),
(29, 127, 'Menu Module', 'menu-module', '', '<p>This module displays a menu on the site (frontend).  Menus can be displayed in a wide variety of ways by using the menu options and css menu styles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Menu">Help</a></p>\r\n<div class="sample-module">{loadmodule mod_menu,Menu Example}</div>', '', -2, 0, 0, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:18:45', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 8, 0, 1, '', '', 1, 12, '', 0, '*', ''),
(30, 128, 'Most Read Content', 'most-read-content', '', '<p>This module shows a list of the currently published Articles which have the highest number of page views. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Most_Read" title="Most Read Content">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_popular,Articles Most Read}</div>', '', -2, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:26:41', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 2, 'modules, content', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 129, 'News Flash', 'news-flash', '', '<p>Displays a set number of articles from a category based on date or random selection. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Newsflash" title="News Flash Module">Help</a></p>\r\n<div class="sample-module">{loadmodule articles_news,News Flash}</div>', '', -2, 0, 0, 64, '2011-01-01 00:00:01', 42, '', '2011-09-17 22:16:46', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 3, 'modules, content', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 130, 'Options', 'options', '', '<p>As you make your Joomla! site you will control the details of the display using <em>options</em> also referred to as <em>parameter</em><strong>s</strong>. Options control everything from whether the author''s name is displayed to who can view what to the number of items shown on a list.</p>\r\n<p>Default options for each component are changed using the Options button on the component toolbar.</p>\r\n<p>Options can also be set on an individual item, such as an article or contact and in menu links.</p>\r\n<p>If you are happy with how your site looks, it is fine to leave all of the options set to the defaults that were created when your site was installed. As you become more experienced with Joomla you will use options more.</p>\r\n<p> </p>', '', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2012-01-17 16:21:24', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 10, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(33, 131, 'Phyllopteryx', 'phyllopteryx', '', '<p> </p>\r\n', '\r\n<p> </p>', -2, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:57:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/200px_phyllopteryx_taeniolatus1.jpg","float_intro":"","image_intro_alt":"Phyllopteryx","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_phyllopteryx_taeniolatus1.jpg","float_fulltext":"","image_fulltext_alt":"Phyllopteryx","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Phyllopteryx_taeniolatus1.jpg Author: Richard Ling License: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 132, 'Pinnacles', 'pinnacles', '', '<p> </p>\r\n', '\r\n<p> </p>', -2, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:41:30', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/120px_pinnacles_western_australia.jpg","float_intro":"","image_intro_alt":"Kings Canyon","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_pinnacles_western_australia.jpg","float_fulltext":"","image_fulltext_alt":"Kings Canyon","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Pinnacles_Western_Australia.jpg  Author: Martin Gloss  License: GNU Free Documentation license v 1.2 or later."}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 133, 'Professionals', 'professionals', '', '<p>Joomla! 2.5 continues development of the Joomla Framework and CMS as a powerful and flexible way to bring your vision of the web to reality. With the administrator now fully MVC, the ability to control its look and the management of extensions is now complete.</p>\r\n', '\r\n<p>Working with multiple template styles and overrides for the same views, creating the design you want is easier than it has ever been. Limiting support to PHP 5.2.4 and above makes Joomla lighter and faster than ever. Languages files can now be overridden without having your changes lost during an upgrade.  With the proper xml your users update extensions with a single click.</p>\r\n<p>Access control lists are now incorporated using a new system developed for Joomla. The ACL system is designed with developers in mind, so it is easy to incorporate into your extensions. The new nested sets libraries allow you to incorporate infinitely deep categories but also to use nested sets in a variety of other ways.</p>\r\n<p>A new forms library makes creating all kinds of user interaction simple. MooTools 1.3 provides a highly flexible javascript framework that is a major advance over MooTools 1.0.</p>\r\n<p>New events throughout the core make integration of your plugins where you want them a snap.</p>\r\n<p>The separation of the Joomla! Platform project from the Joomla! CMS project makes continuous development of new, powerful APIs  and continuous improvement of existing APIs possible while maintaining the stability of the CMS that millions of webmasters and professionals rely upon.</p>\r\n<p>Learn about:</p>\r\n<ul>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6">Changes since 1.5</a></li>\r\n<li><a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6">Working with ACL</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JCategories">Working with nested categories</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JForm">Forms library</a></li>\r\n<li><a href="http://docs.joomla.org/Working_with_Mootools_1.3">Working with Mootools 1.3</a></li>\r\n<li><a href="http://docs.joomla.org/Layout_Overrides_in_Joomla_1.6">Using new features of the override system</a></li>\r\n<li><a href="http://api.joomla.org">Joomla! API</a></li>\r\n<li><a href="http://docs.joomla.org/API16:JDatabaseQuery">Using JDatabaseQuery</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Events">New and updated events</a></li>\r\n<li><a href="http://docs.joomla.org/Xml-rpc_changes_in_Joomla!_1.6">Xmlrpc</a></li>\r\n<li><a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6#Extension_management">Installing and updating extensions</a></li>\r\n<li><a href="http://docs.joomla.org/Setting_up_your_workstation_for_Joomla!_development">Setting up your development environment</a></li>\r\n<li><a href="github.com/joomla">The Joomla! Platform Repository</a> </li>\r\n</ul>', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:36:13', 42, 0, '0000-00-00 00:00:00', '2011-01-09 16:41:13', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 16, 0, 5, '', '', 1, 10, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(36, 134, 'Random Image Module', 'random-image-module', '', '<p>This module displays a random image from your chosen image directory. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Random_Image" title="Random Image Module">Help</a></p>\r\n<div class="sample-module">{loadmodule random_image,Random Image}</div>', '', -2, 0, 0, 66, '2011-01-01 00:00:01', 42, '', '2012-01-17 16:11:13', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 4, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(37, 135, 'Related Items Module', 'related-items-module', '', '<p>This module displays other Articles that are related to the one currently being viewed. These relations are established by the Meta Keywords.  All the keywords of the current Article are searched against all the keywords of all other published articles. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Articles_Related" title="Related Items Module">Help</a></p>\r\n<div class="sample-module">{loadmodule related_items,Articles Related Items}</div>', '', -2, 0, 0, 64, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:37:34', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 4, 'modules, content', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(38, 136, 'Sample Sites', 'sample-sites', '', '<p>Your installation includes sample data, designed to show you some of the options you have for building your website. In addition to information about Joomla! there are two sample "sites within a site" designed to help you get started with building your own site.</p>\r\n<p>The first site is a simple site about <a href="index.php?Itemid=243">Australian Parks</a>. It shows how you can quickly and easily build a personal site with just the building blocks that are part of Joomla. It includes a personal blog, weblinks, and a very simple image gallery.</p>\r\n<p>The second site is slightly more complex and represents what you might do if you are building a site for a small business, in this case a <a href="index.php/welcome.html"></a><a href="index.php?Itemid=429">Fruit Shop</a>.</p>\r\n<p>In building either style site, or something completely different, you will probably want to add <a href="http://extensions.joomla.org">extensions</a> and either create or purchase your own template. Many Joomla users start by modifying the <a href="http://docs.joomla.org/How_do_you_modify_a_template%3F">templates</a> that come with the core distribution so that they include special images and other design elements that relate to their site''s focus.</p>', '', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:39:07', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 11, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(39, 137, 'Search', 'search-component', '', '<p>Joomla! 2.5 offers two search options.</p>\r\n<p>The Basic Search component provides basic search functionality for the information contained in your core components. Many extensions can also be searched by the search component. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Search">Help</a></p>\r\n<p>The Smart Search component offers searching similar to that found in major search engines. Smart Search is disabled by default. If you choose to enable it you will need to take several steps. First, enable the Smart Search Plugin in the plugin manager. Then, if you are using the Basic Search Module replace it with the Smart Search Module. Finally, if you have already created content, go to the Smart Search component in your site administrator and click the Index icon. Once indexing of your content is complete, Smart Search will be ready to use. Help.</p>', '', -2, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:41:48', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 3, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 138, 'Search Module', 'search-module', '', '<p>This module will display a search box. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Search" title="Search">Help</a></p>\r\n<div class="sample-module">{loadmodule search,Search}</div>', '', -2, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:35:56', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 4, '', '', 1, 6, '', 0, '*', ''),
(41, 139, 'Search ', 'search-plugin', '', '<p>The search component uses plugins to control which parts of your Joomla! site are searched. You may choose to turn off some areas to improve performance or for other reasons. Many third party Joomla! extensions have search plugins that extend where search takes place.</p>\r\n<p>Default On:</p>\r\n<ul>\r\n<li>Content <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Content">Help</a></li>\r\n<li>Contacts <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Contacts">Help</a></li>\r\n<li>Weblinks <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Weblinks">Help</a></li>\r\n<li>News Feeds <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Newsfeeds">Help</a></li>\r\n<li>Categories <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Search_-_Categories">Help</a></li>\r\n</ul>', '', -2, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-06 06:13:18', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 3, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(42, 140, 'Site Map', 'site-map', '', '<p>{loadposition sitemapload}</p><p><em>By putting all of your content into nested categories you can give users and search engines access to everything using a menu.</em></p>', '', -2, 0, 0, 14, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(43, 141, 'Spotted Quoll', 'spotted-quoll', '', '<p> </p>\r\n<p> </p>\r\n', '\r\n<p> </p>', -2, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 05:02:58', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/220px_spottedquoll_2005_seanmcclean.jpg","float_intro":"","image_intro_alt":"Spotted Quoll","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/789px_spottedquoll_2005_seanmcclean.jpg","float_fulltext":"","image_fulltext_alt":"Spotted Quoll","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:SpottedQuoll_2005_SeanMcClean.jpg Author: Sean McClean License: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(44, 142, 'Statistics Module', 'statistics', '', '<p>This module shows information about your server installation together with statistics on the Web site users, number of Articles in your database and the number of Web links you provide.</p>\r\n<div class="sample-module">{loadmodule mod_stats,Statistics}</div>', '', -2, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:43:25', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 5, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(45, 143, 'Syndicate Module', 'syndicate-module', '', '<p>The syndicate module will display a link that allows users to take a feed from your site. It will only display on pages for which feeds are possible. That means it will not display on single article, contact or weblinks pages, such as this one. <a href="http://docs.joomla.org/Help15:Screen.modulessite.edit.15#Syndicate" title="Synicate Module">Help</a></p>\r\n<div class="sample-module">{loadposition syndicate,Syndicate}</div>', '', -2, 0, 0, 67, '2011-01-01 00:00:01', 42, '', '2011-12-27 11:44:16', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 6, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(46, 144, 'System', 'system', '', '<p>System plugins operate every time a page on your site loads. They control such things as your URLS, whether users can check a "remember me" box on the login module, and whether caching is enabled. New is the redirect plugin that together with the redirect component will assist you in managing changes in URLs.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Remember me <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Remember_Me">Help</a></li>\r\n<li>SEF <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_SEF">Help</a></li>\r\n<li>Debug <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Debug">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Cache <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Cache">Help</a></li>\r\n<li>Log <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Log">Help</a></li>\r\n<li>Redirect <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#System_-_Redirect">Help</a></li>\r\n</ul>', '', -2, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:45:54', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(47, 145, 'The Joomla! Community', 'the-joomla-community', '', '<p>Joomla means All Together, and it is a community of people all working and having fun together that makes Joomla possible. Thousands of people each year participate in the Joomla community, and we hope you will be one of them.</p>\r\n<p>People with all kinds of skills, of all skill levels and from around the world are welcome to join in. Participate in the <a href="http://joomla.org">Joomla.org</a> family of websites (the<a href="http://forum.joomla.org"> forum </a>is a great place to start). Come to a <a href="http://community.joomla.org/events.html">Joomla! event</a>. Join or start a <a href="http://community.joomla.org/user-groups.html">Joomla! Users Group</a>. Whether you are a developer, site administrator, designer, end user or fan, there are ways for you to participate and contribute.</p>', '', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:47:56', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 146, 'The Joomla! Project', 'the-joomla-project', '', '<p>The Joomla Project consists of all of the people who make and support the Joomla Web Platform and Content Management System.</p>\r\n<p>Our mission is to provide a flexible platform for digital publishing and collaboration.</p>\r\n<p>The core values are:</p>\r\n<ul>\r\n<li>Freedom</li>\r\n<li>Equality</li>\r\n<li>Trust</li>\r\n<li>Community</li>\r\n<li>Collaboration</li>\r\n<li>Usability</li>\r\n</ul>\r\n<p>In our vision, we see:</p>\r\n<ul>\r\n<li>People publishing and collaborating in their communities and around the world</li>\r\n<li>Software that is free, secure, and high-quality</li>\r\n<li>A community that is enjoyable and rewarding to participate in</li>\r\n<li>People around the world using their preferred languages</li>\r\n<li>A project that acts autonomously</li>\r\n<li>A project that is socially responsible</li>\r\n<li>A project dedicated to maintaining the trust of its users</li>\r\n</ul>\r\n<p>There are millions of users around the world and thousands of people who contribute to the Joomla Project. They work in three main groups: the Production Working Group, responsible for everything that goes into software and documentation; the Community Working Group, responsible for creating a nurturing the community; and Open Source Matters, the non profit organization responsible for managing legal, financial and organizational issues.</p>\r\n<p>Joomla is a free and open source project, which uses the GNU General Public License version 2 or later.</p>', '', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, '', '2011-12-27 11:47:48', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 147, 'Typography', 'typography', '', '<h1>H1 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h1><h2>H2 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h2><h3>H3 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h3><h4>H4 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h4><h5>H5 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h5><h6>H6 ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmonpqrstuvwzyz</h6><p>P The quick brown fox ran over the lazy dog. THE QUICK BROWN FOX RAN OVER THE LAZY DOG.</p><ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item<br /> <ul><li>Item</li><li>Item</li><li>Item</li></ul></li></ul></li></ul><ol><li>tem</li><li>Item</li><li>Item<br /> <ol><li>Item</li><li>Item</li><li>Item<br /><ol><li>Item</li><li>Item</li><li>Item</li></ol></li></ol> </li></ol>', '', -2, 0, 0, 23, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(50, 148, 'Upgraders', 'upgraders', '', '<p>If you are an experienced Joomla! 1.5 user, this Joomla site will seem very familiar. There are new templates and improved user interfaces, but most functionality is the same. The biggest changes are improved access control (ACL) and nested categories. This release of Joomla has strong continuity with Joomla! 1.7 while adding enhancements.</p>\r\n', '\r\n<p>The new user manager will let you manage who has access to what in your site. You can leave access groups exactly the way you had them in Joomla 1.5 or make them as complicated as you want. You can learn more about<a href="http://docs.joomla.org/ACL_Tutorial_for_Joomla_1.6"> how access control works</a> in on the <a href="http://docs.joomla.org">Joomla! Documentation site</a></p>\r\n<p>In Joomla 1.5 and 1.0 content was organized into sections and categories. From 1.6 forward sections are gone, and you can create categories within categories, going as deep as you want. The sample data provides many examples of the use of nested categories.</p>\r\n<p>All layouts have been redesigned to improve accessibility and flexibility. </p>\r\n<p>Updating your site and extensions when needed is easier than ever thanks to installer improvements.</p>\r\n<p> </p>', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, '', '2012-01-17 04:28:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 6, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(51, 149, 'User', 'user-plugins', '', '<p>Default on:</p>\r\n<ul>\r\n<li>Joomla <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Joomla.21">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<p>Two new plugins are available but are disabled by default.</p>\r\n<ul>\r\n<li>Contact Creator <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Contact_Creator">Help</a><br />Creates a new linked contact record for each new user created.</li>\r\n<li>Profile <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#User_-_Profile">Help</a><br />This example profile plugin allows you to insert additional fields into user registration and profile display. This is intended as an example of the types of extensions to the profile you might want to create.</li>\r\n</ul>', '', -2, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:51:25', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(52, 150, 'Users', 'users-component', '', '<p>The users extension lets your site visitors register, login and logout, change their passwords and other information, and recover lost passwords. In the administrator it allows you to create, block and manage users and create user groups and access levels. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Users_User_Manager">Help</a></p>\r\n<p>Please note that some of the user views will not display if you are not logged-in to the site.</p>', '', -2, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:52:55', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 151, 'Using Joomla!', 'using-joomla', '', '<p>With Joomla you can create anything from a simple personal website to a complex ecommerce or social site with millions of visitors.</p>\r\n<p>This section of the sample data provides you with a brief introduction to Joomla concepts and reference material to help you understand how Joomla works.</p>\r\n<p><em>When you no longer need the sample data, you can can simply unpublish the sample data category found within each extension in the site administrator or you may completely delete each item and all of the categories. </em></p>', '', -2, 0, 0, 19, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:52:45', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 7, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(54, 152, 'Weblinks', 'weblinks', '', '<p>Weblinks (com_weblinks) is a component that provides a structured way to organize external links and present them in a visually attractive, consistent and informative way. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Weblinks_Links">Help</a></p>', '', -2, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-01-10 04:20:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 6, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 153, 'Weblinks Module', 'weblinks-module', '', '<p>This module displays the list of weblinks in a category. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Weblinks" title="Weblinks Module">Help</a></p>\r\n<div class="sample-module">{loadmodule weblinks,Weblinks}</div>', '', -2, 0, 0, 66, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:32:10', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 7, 0, 5, '', '', 1, 23, '', 0, '*', ''),
(56, 154, 'Who''s Online', 'whos-online', '', '<p>The Who''s Online Module displays the number of Anonymous Users (e.g. Guests) and Registered Users (ones logged-in) that are currently accessing the Web site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Who_Online" title="Who''s Online">Help</a></p>\r\n<div class="sample-module">{loadmodule whosonline,Who''s Online}</div>', '', -2, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:19:45', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 1, '', '', 1, 5, '', 0, '*', '');
INSERT INTO `jos_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(57, 155, 'Wobbegone', 'wobbegone', '', '<p> </p>\r\n', '\r\n<p> </p>', -2, 0, 0, 72, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 05:01:59', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/animals\\/180px_wobbegong.jpg","float_intro":"","image_intro_alt":"Wobbegon","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/animals\\/800px_wobbegong.jpg","float_fulltext":"","image_fulltext_alt":"Wobbegon","image_fulltext_caption":"Source: http:\\/\\/en.wikipedia.org\\/wiki\\/File:Wobbegong.jpg Author: Richard Ling Rights: GNU Free Documentation License v 1.2 or later"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(58, 156, 'Wonderful Watermelon', 'wonderful-watermelon', '', '<p>Watermelon is a wonderful and healthy treat. We grow the world''s sweetest watermelon. We have the largest watermelon patch in our country.</p>', '', -2, 0, 0, 30, '2011-01-01 00:00:01', 42, 'Fruit Shop Webmaster', '2011-01-01 00:00:01', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '', 0, '*', ''),
(59, 157, 'Wrapper Module', 'wrapper-module', '', '<p>This module shows an iFrame window to specified location. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Wrapper" title="Wrapper Module">Help</a></p>\r\n<div class="sample-module">{loadmodule wrapper,Wrapper}</div>', '', -2, 0, 0, 67, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:35:00', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 8, 0, 1, '', '', 1, 15, '', 0, '*', ''),
(60, 158, 'News Feeds', 'news-feeds', '', '<p>News Feeds (com_newsfeeds) provides a way to organize and present news feeds. News feeds are a way that you present information from another site on your site. For example, the joomla.org website has numerous feeds that you can incorporate on your site. You an use menus to present a single feed, a list of feeds in a category, or a list of all feed categories. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Components_Newsfeeds_Feeds">Help</a></p>', '', -2, 0, 0, 21, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-12-27 11:27:31', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, 4, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(61, 159, 'Breadcrumbs Module', 'breadcrumbs-module', '', '<p>Breadcrumbs provide a pathway for users to navigate through the site. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Breadcrumbs" title="Breacrumbs Module">Help</a></p>\r\n<div class="sample-module">{loadmodule breadcrumbs,breadcrumbs}</div>', '', -2, 0, 0, 75, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:10:19', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 5, 0, 2, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 160, 'Content', 'content-plugins', '', '<p>Content plugins run when specific kinds of pages are loaded. They do things ranging from protecting email addresses from harvesters to creating page breaks.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Email Cloaking <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Email_Cloaking">Help</a></li>\r\n<li>Load Module <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Load_Modules">Help</a></li>\r\n<li>Page Break <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Pagebreak">Help</a></li>\r\n<li>Page Navigation<a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Page_Navigation"> Help</a></li>\r\n<li>Vote <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Vote">Help</a></li>\r\n</ul>\r\n<p>Default off:</p>\r\n<ul>\r\n<li>Code Highlighter (GeSHi) <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit#Content_-_Code_Highlighter_.28GeSHi.29">Help</a></li>\r\n</ul>', '', -2, 0, 0, 25, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-06 06:11:50', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 2, 0, 7, '', '', 1, 1, '', 0, '*', ''),
(64, 162, 'Blue Mountain Rain Forest', 'blue-mountain-rain-forest', '', '<p> </p>\r\n', '\r\n<p> </p>', -2, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:36:30', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/120px_rainforest_bluemountainsnsw.jpg","float_intro":"none","image_intro_alt":"Rain Forest Blue Mountains","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/727px_rainforest_bluemountainsnsw.jpg","float_fulltext":"","image_fulltext_alt":"Rain Forest Blue Mountains","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Rainforest,bluemountainsNSW.jpg Author: Adam J.W.C. License: GNU Free Documentation License"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 2, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(65, 163, 'Ormiston Pound', 'ormiston-pound', '', '<p> </p>\r\n', '\r\n<p> </p>', -2, 0, 0, 73, '2011-01-01 00:00:01', 42, 'Parks Webmaster', '2012-01-17 04:51:33', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/sampledata\\/parks\\/landscape\\/180px_ormiston_pound.jpg","float_intro":"none","image_intro_alt":"Ormiston Pound","image_intro_caption":"","image_fulltext":"images\\/sampledata\\/parks\\/landscape\\/800px_ormiston_pound.jpg","float_fulltext":"","image_fulltext_alt":"Ormiston Pound","image_fulltext_caption":"Source: http:\\/\\/commons.wikimedia.org\\/wiki\\/File:Ormiston_Pound.JPG Author: License: GNU Free Public Documentation License"}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 0, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(66, 165, 'Latest Users Module', 'latest-users-module', '', '<p>This module displays the latest registered users. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;keyref=Help16:Extensions_Module_Manager_Latest_Users">Help</a></p>\r\n<div class="sample-module">{loadmodule users_latest,Users Latest}</div>', '', -2, 0, 0, 65, '2011-01-01 00:00:01', 42, 'Joomla!', '2011-09-17 22:21:05', 42, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"1","link_titles":"","show_intro":"","show_category":"1","link_category":"1","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 4, 0, 3, '', '', 1, 6, '', 0, '*', ''),
(67, 168, 'What''s New in 1.5?', 'whats-new-in-15', '', '<p>This article deliberately archived as an example.</p><p>As with previous releases, Joomla! provides a unified and easy-to-use framework for delivering content for Web sites of all kinds. To support the changing nature of the Internet and emerging Web technologies, Joomla! required substantial restructuring of its core functionality and we also used this effort to simplify many challenges within the current user interface. Joomla! 1.5 has many new features.</p>\r\n<p style="margin-bottom: 0in;">In Joomla! 1.5, you''''ll notice:</p>\r\n<ul>\r\n<li>Substantially improved usability, manageability, and scalability far beyond the original Mambo foundations</li>\r\n<li>Expanded accessibility to support internationalisation, double-byte characters and right-to-left support for Arabic, Farsi, and Hebrew languages among others</li>\r\n<li>Extended integration of external applications through Web services</li>\r\n<li>Enhanced content delivery, template and presentation capabilities to support accessibility standards and content delivery to any destination</li>\r\n<li>A more sustainable and flexible framework for Component and Extension developers</li>\r\n<li>Backward compatibility with previous releases of Components, Templates, Modules, and other Extensions</li>\r\n</ul>', '', 2, 0, 0, 9, '2011-01-01 00:00:01', 42, 'Joomla! 1.5', '2011-01-01 00:00:01', 0, 0, '0000-00-00 00:00:00', '2011-01-01 00:00:01', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_readmore":"","show_print_icon":"","show_email_icon":"","show_hits":"","page_title":"","alternative_readmore":"","layout":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 170, 'Captcha', 'captcha', '', '<p>The Captcha plugins are used to prevent spam submissions on your forms such as registration, contact and login. You basic installation of Joomla includes one Captcha plugin which leverages the ReCaptcha® service but you may install other plugins connecting to different Captcha systems.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>ReCaptcha <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">help</a></li>\r\n</ul>\r\n<p>Note: ReCaptcha is a the trademark of Google Inc. and is an independent product not associated with or endorsed by the Joomla Project. You will need to register and agree to the Terms of Service at Recaptcha.net to use this plugin. Complete instructions are available if you edit the ReCaptcha plugin in the Plugin Manager.</p>', '', -2, 0, 0, 25, '2012-01-17 03:20:45', 42, 'Joomla!', '2012-01-17 03:35:46', 42, 0, '0000-00-00 00:00:00', '2012-01-17 03:20:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(69, 171, 'Quick Icons', 'quick-icons', '', '<p> The Quick Icon plugin group is used to provide notification that updates to Joomla! or installed extensions are available and should be applied. These notifications display on your administrator control panel, which is the page you see when you first log in to your site administrator.</p>\r\n<p>Default on:</p>\r\n<ul>\r\n<li>Quick icon - Joomla! extensions updates notification <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">Help</a>.</li>\r\n<li>Quick icon - Joomla! update notification <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help17:Extensions_Plugin_Manager_Edit">Help</a></li>\r\n</ul>', '', -2, 0, 0, 25, '2012-01-17 03:27:39', 42, 'Joomla!', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-17 03:27:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(70, 170, 'Smart Search', 'smart-search', '', '<p>This module provides search using the Smart Search component. You should only use it if you have indexed your content and either have enabled the Smart Search content plugin or are keeping the index of your site updated manually. <a href="http://help.joomla.org/proxy/index.php?option=com_help&amp;amp;keyref=Help25:Extensions_Module_Manager_Smart_Search">Help</a>.</p>\r\n<div class="sample-module">{loadmodule finder,Smart Search}</div>', '', -2, 0, 0, 67, '2012-01-17 03:42:36', 42, '', '2012-01-17 16:15:48', 42, 0, '0000-00-00 00:00:00', '2012-01-17 03:42:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 0, 0, '', '', 1, 13, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(71, 174, 'О нас', 'about', '', '<p>Кратко и по делу</p>\r\n<p><span class="icon-envelope"> </span><a href="mailto:inbox@yomayka.com">inbox@yomayka.com</a></p>\r\n<p><span class="icon-globe"> </span> <a href="http://vk.com/yomayka" target="_blank">http://vk.com/yomayka</a></p>', '', 1, 0, 0, 9, '2012-12-07 01:44:00', 42, '', '2012-12-21 21:57:22', 42, 0, '0000-00-00 00:00:00', '2012-12-07 01:44:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 0, 0, '', '', 1, 27, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(72, 175, 'Холлофайбер? Не, не слышал...', 'holofiber', '', '<p>Холлофайбер – это нетканый материал, который обладает пустотелой структурой и изготавливается на современном оборудовании в соответствии с новой технологией. Название материала пошло из английского языка и в дословном переводе означает «пустотелое, полое волокно».</p>\r\n', '\r\n<p> Пористая структура позволяет использовать этот материал в качестве звуко- и теплоизоляционного материала в различных отраслях промышленности. Он может использоваться для утепления верхней одежды, быть наполнителем для мягкой мебели и т.д. Наличие пор различных размеров наполняет волокно воздухом, что позволяет ему служить в качестве защитного слоя при звуко- и теплоизоляции, задерживать частички пыли, создавать упругие свойства и т.д. Еще его используют для создания воздушных фильтров. Его пористая многослойная структура придает материалу хорошую способность задерживать пыль. Для этого волокна должны располагаться не вертикально, а хаотично.</p>\r\n<p>Особенности этого материала позволяют использовать его в разных сферах:</p>\r\n<ol style="list-style-position: outside; list-style-image: initial;"><ol style="list-style-position: outside; list-style-image: initial;">\r\n<li>В строительстве пригодятся звуко-, тепло- и шумоизоляционные свойства для заполнения межстеновых пространств при возведении различных зданий и сооружений. А автомобилях холлофайбер может заменить пенополиуретан.</li>\r\n</ol></ol>\r\n<p> </p>\r\n<ol style="list-style-position: outside; list-style-image: initial;"><ol style="list-style-position: outside; list-style-image: initial;">\r\n<li>В легкой промышленности он служит отличным утепляющим слоем при пошиве верхней одежды, головных уборов и т.д. Он обеспечит теплоизоляционную прокладку. А еще позволит придать одежде форму, благодаря хорошей упругости и возможности возобновить первоначальную форму даже после многократных воздействий.</li>\r\n</ol></ol>\r\n<p> </p>\r\n<ol style="list-style-position: outside; list-style-image: initial;"><ol style="list-style-position: outside; list-style-image: initial;">\r\n<li>При изготовлении мягкой мебели этот материал послужит мягкой и жесткой основой для диванов, матрацев, кресел. Холлофайбер можно использовать при изготовлении спинок, подлокотников, сидений.</li>\r\n</ol></ol>\r\n<p> </p>\r\n<ol style="list-style-position: outside; list-style-image: initial;">\r\n<li>В системах вентиляции и кондиционирования в качестве различных фильтров.</li>\r\n</ol>\r\n<p>Данный материал обладает массой преимуществ:</p>\r\n<ul style="list-style-position: outside; list-style-image: initial;">\r\n<li>Высокая упругость и отличное умение держать форму.</li>\r\n<li>Эластичность и мягкость.</li>\r\n<li>Безопасность для окружающей среды.</li>\r\n<li>Гипоаллергенность.</li>\r\n<li>Воздухопроницаемость.</li>\r\n<li>Долговечность и устойчивость к многократным деформациям.</li>\r\n<li>Огнестойкость и антистатичность.</li>\r\n</ul>\r\n<p>По своим характеристикам холлофайбер напоминает хлопок или пух высокого качества, однако в эксплуатации он гораздо лучше этих натуральных аналогов. Волокна-пружинки, из которых состоит нетканое полотно, обеспечивают его устойчивость к истиранию, невесомую легкость, воздушность и удивительную мягкость. В отличие от своих природных конкурентов, холлофайбер не сбивается, во время его эксплуатации не образуются «текстильные комья», что очень важно для верхней одежды, одеял и мягкой мебели. Еще он позволяет придать мебели, постельным принадлежностям, одежде и головным уборам дополнительные дизайнерские свойства. Это великолепный наполнитель с практичными свойствами.</p>\r\n<p>Это синтетический материал, которому не страшны многократные стирки и деформации. Кроме того, холлофайбер производят в России и еще на стадии изготовления его дезинфицируют и стерилизуют на волоконном уровне. Он не пострадает и не изменит характеристик после обработки паром, сухим горячим воздухом и даже после кипячения.</p>\r\n<p>Натуральные материалы подвержены атаке микробов. В них весьма благоприятная среда для их размножения. Однако периодической термической обработки изделия из натуральных материалов поддавать нельзя, так как они безвозвратно потеряют своих свойства. Поэтому избавить изделия от вредоносных микроорганизмов практически нереально. Полезность такой естественности вызывает глубокие сомнения. Синтетические материалы являются вполне оправданной альтернативой натуральным.</p>\r\n<p>Холлофайбер отлично справится с проблемой экологической и гигиенической безопасности. Он безопасен даже для самых маленьких, поэтому его используют при производстве <a href="http://sleepenfield.ru/podushki_dla_sna_beremennyh/">наших подушек для беременных</a> . Изделия из этого материала можно спокойно стирать при высоких температурах, любыми чистящими средствами. Этот материал не только безопасен во всех отношениях, но и экономичен.</p>', 1, 0, 0, 78, '2012-12-21 02:37:14', 42, '', '2012-12-21 21:40:53', 42, 42, '2012-12-21 23:01:31', '2012-12-21 02:37:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 0, 0, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(73, 177, 'It''s a new dawn It''s a new day It''s a new life ©', 'new-life', '', '<p>Ну вот мы и родились. Как всегда в спешке и суматохе. В день конца света... ) Мы не определились точно куда ползти и как правильно это делать но со временем и с Твоей помощью мы, думаю, научимся. Делая первые шажки, мы попробуем подарить Тебе немного хороших эмоций от нашей продукции. Так что пробуй и высказывай свои положительные и отрицательные эмоции и замечания. </p>\r\n<p>Сейчас основное направление - мягкие изделия. Какие угодно. Из чего угодно. Но фантазия как всегда не безгранична поэтому если у Тебя завалялась пара идеек то мы можем попробовать воплотить их. </p>\r\n<p> Следи за нами! Думаю будет интересно :)</p>\r\n<p> </p>', '', 1, 0, 0, 79, '2012-12-21 21:30:11', 42, '', '2012-12-21 23:01:19', 42, 0, '0000-00-00 00:00:00', '2012-12-21 21:30:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(8, 2),
(35, 4),
(24, 1),
(50, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL default '0',
  `rating_sum` int(10) unsigned NOT NULL default '0',
  `rating_count` int(10) unsigned NOT NULL default '0',
  `lastip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL default '',
  `hits` int(10) unsigned NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_extensions` (
  `extension_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL default '1',
  `access` int(10) unsigned NOT NULL default '1',
  `protected` tinyint(3) NOT NULL default '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) default '0',
  `state` int(11) default '0',
  PRIMARY KEY  (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10069 ;

--
-- Дамп данных таблицы `jos_extensions`
--

INSERT INTO `jos_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"0","link_titles":"0","show_intro":"1","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"1","show_readmore_title":"0","readmore_limit":"100","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"0","num_leading_articles":"0","num_intro_articles":"5","num_columns":"1","num_links":"5","multi_column_order":"0","show_subcategory_content":"-1","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2011, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/code.google.com\\/a\\/apache-extras.org\\/p\\/phpmailer\\/","version":"5.2","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"11.4","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.4.1","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0);
INSERT INTO `jos_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'showplus', 'module', 'mod_showplus', '', 0, 1, 0, 0, '{"legacy":false,"name":"showplus","type":"module","creationDate":"Feb 05, 2012","author":"Levente Hunyadi","copyright":"\\u00a9 2011 Levente Hunyadi. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/hunyadi.info.hu\\/projects\\/showplus","version":"1.0.4.3","description":"SHOWPLUS_DESCRIPTION","group":""}', '{"folder":"images\\/sampledata\\/fruitshop","width":"600","height":"400","alignment":"center","orientation":"horizontal","buttons":"1","captions":"1","target":"_self","delay":"3000","duration":"800","transition":"fade","transition_easing":"linear","transition_pan":"100","transition_zoom":"50","margin":"","border_style":"","border_width":"","border_color":"","padding":"","background_color":"","thumb_width":"60","thumb_height":"40","links":"1","thumb_cache":"1","thumb_folder":"thumbs","thumb_quality":"85","labels":"labels","labels_multilingual":"0","sort_criterion":"labels-filename","sort_order":"0","library":"default","moduleclass_sfx":"","debug":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.5","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"November 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10053, 'DJ-Image Slider', 'module', 'mod_djimageslider', '', 0, 1, 0, 0, '{"legacy":false,"name":"DJ-Image Slider","type":"module","creationDate":"January 2011","author":"Blue Constant Media LTD","copyright":"Copyright (C) 2010 Blue Constant Media LTD, All rights reserved.","authorEmail":"contact@design-joomla.eu","authorUrl":"http:\\/\\/design-joomla.eu","version":"1.3.RC6","description":"DJ-Image Slider Module","group":""}', '{"slider_source":"0","slider_type":"0","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","link_title":"1","link_desc":"0","limit_desc":"","image_width":"150","image_height":"90","fit_to":"0","visible_images":"3","space_between_images":"10","max_images":"20","sort_by":"1","effect":"Cubic","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"30","arrows_horizontal":"5","effect_type":"0","duration":"","delay":"","preload":"800","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'Maximenu CK', 'module', 'mod_maximenuck', '', 0, 1, 0, 0, '{"legacy":false,"name":"Maximenu CK","type":"module","creationDate":"janvier 2011","author":"C\\u00e9dric KEIFLIN","copyright":"C\\u00e9dric KEIFLIN","authorEmail":"ced1870@gmail.com","authorUrl":"http:\\/\\/www.joomlack.fr","version":"6.0.1","description":"MOD_MAXIMENUCK_XML_DESCRIPTION","group":""}', '{"menuid":"maximenuck","startLevel":"1","endLevel":"0","zindexlevel":"10","cache":"1","cache_time":"900","cachemode":"itemid","imagerollprefix":"_hover","imageonly":"0","menu_images_align":"top","usemootools":"1","style":"moomenu","opentype":"open","mooduration":"500","mootransition":"Quad","mooease":"easeOut","dureeout":"500","useopacity":"0","testoverflow":"1","direction":"normal","directionoffset1":"30","directionoffset2":"30","usefancy":"1","fancyduration":"500","fancytransition":"Quad","fancyease":"easeOut","usecss":"1","orientation":"0","menubgcolor":"","titlescolor":"","descscolor":"","titleshovercolor":"","descshovercolor":"","thirdparty":"none","usevmimages":"0","usevmsuffix":"0","vmimagesuffix":"_mini","vmcategoryroot":"0","vmcategorydepth":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'IceMegaMenu Module', 'module', 'mod_icemegamenu', '', 0, 1, 0, 0, '{"legacy":false,"name":"IceMegaMenu Module","type":"module","creationDate":"March 2011","author":"IceTheme","copyright":"GNU \\/ GPL","authorEmail":"info@icetheme.com","authorUrl":"http:\\/\\/www.icetheme.com","version":"1.6.0","description":"IceMegaMenu extension is a powerful Joomla (module + plugin) to help you take the most from the navigation system. Top features includes ability to split dropdown columns, option to load modules inside the dropdown, works without JavaScript and much more.","group":""}', '{"theme_style":"","startLevel":"1","endLevel":"0","showAllChildren":"1","class_sfx":"","window_open":"","tag_id":"","js_effect":"slide & fade","js_physics":"Fx.Transitions.Pow.easeOut","js_duration":"600","js_hideDelay":"1000","js_opacity":"95","use_js":"1","moduleclass_sfx":"","cache":"1","cache_time":"30","menu_images":"0","menu_images_align":"0","menu_images_link":"0","expand_menu":"0","activate_parent":"0","full_active_id":"0","@spacer":"","indent_image":"0","indent_image1":"","indent_image2":"","indent_image3":"","indent_image4":"","indent_image5":"","indent_image6":"","spacer":"","end_spacer":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'jshopping', 'component', 'com_jshopping', '', 1, 1, 0, 0, '{"legacy":false,"name":"jshopping","type":"component","creationDate":"18.02.2012","author":"MAXXmarketing GmbH","copyright":"","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http:\\/\\/www.webdesigner-profi.de","version":"3.5.0","description":"Joomshopping - shop component. Note: JoomShopping code files are named as jshopping","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'Russian', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2012-11-09","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.8.2","description":"Russian language pack (site) for Joomla! 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'Russian', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"legacy":true,"name":"Russian","type":"language","creationDate":"2012-11-09","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"2.5.8.2","description":"Russian language pack (administrator) for Joomla! 2.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"legacy":false,"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.5.8.2","description":"Joomla 2.5 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'zt_oreo17', 'template', 'zt_oreo17', '', 0, 1, 1, 0, '{"legacy":false,"name":"zt_oreo17","type":"template","creationDate":"09\\/02\\/2011","author":"ZooTemplate.com","copyright":"ZooTemplate","authorEmail":"support@zootemplate.com","authorUrl":"www.zootemplate.com","version":"1.7.0","description":"<h1>ZT Oreo - Kid Toys Joomla Template<\\/h1><span>Thank you very much for using our services.<br \\/>Please check our  <a href=\\"http:\\/\\/www.templategets.com\\" title=\\"Joomla Templates\\">Joomla Templates<\\/a> Club for any further support.<\\/span>","group":""}', '{"zt_function":"1","zt_font":"3","zt_footer":"0","zt_footer_text":"Copyright (c) 2008 - 2011 Joomla Templates by ZooTemplate.Com","zt_fontfeature":"0","zt_rtl":"0","zt_mobile":"1","menutype":"mainmenu","zt_menustyle":"mega","xdelay":"350","xduration":"350","xtransition":"Fx.Transitions.linear","fancy":"0","transition":"Fx.Transitions.linear","duration":"500","gzip_folder":"zt-assets","gzip_merge":"0","gzip_optimize_css":"0","css-exclude":"","gzip_optimize_js":"0","js-exclude":"","gzip_optimize_html":"0","zt_layout":"lcr","zt_change_color":"1","color_bd":"#1b4263 ","text_bd":"#242424 ","link_bd":"#10273A ","image_bd":"pattern0","color_zt-slideshow":"#abd7ec ","image_zt-slideshow":"pattern0","text_zt-userwrap7":"#8c99a2 ","link_zt-userwrap7":"#6fbb16 "}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10048, 'Jshopping Categories', 'module', 'mod_jshopping_categories', '', 0, 1, 0, 0, '{"legacy":false,"name":"Jshopping Categories","type":"module","creationDate":"25.11.2011","author":"MAXXmarketing GmbH","copyright":"","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http:\\/\\/www.webdesigner-profi.de","version":"3.0.1","description":"Displays a categories in shop.","group":""}', '{"show_image":"0","sort":"id","ordering":"asc"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10054, 'TinyMCE ru-RU', 'file', 'tinymce_ru-ru', '', 0, 1, 0, 0, '{"legacy":false,"name":"TinyMCE ru-RU","type":"file","creationDate":"2012-06-19","author":"Russian Translation Team","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"smart@joomlaportal.ru","authorUrl":"www.joomlaportal.ru","version":"3.5.2.1","description":"Russian Language Package for TinyMCE 3.5.2.1 in Joomla 2.5","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10055, 'mod_ariextmenu', 'module', 'mod_ariextmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"ARI Ext Menu","type":"module","creationDate":"February 2012","author":"ARI Soft","copyright":"ARI Soft","authorEmail":"info@ari-soft.com","authorUrl":"www.ari-soft.com","version":"2.0.19","description":"ARI_EXT_MENU_MODULE","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10056, 'mod_artwijmomenu', 'module', 'mod_artwijmomenu', '', 0, 1, 1, 0, '{"legacy":true,"name":"Art Wijmo Menu","type":"module","creationDate":"December 2010","author":"Artetics","copyright":"Artetics","authorEmail":"info@artetics.com","authorUrl":"www.artetics.com.com","version":"1.7.0","description":"Art Wijmo Menu is menu module with various options","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10057, 'mod_exmenu', 'module', 'mod_exmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"Extended Menu","type":"module","creationDate":"February 2012","author":"Daniel Ecer","copyright":"(C) 2005-2011 Daniel Ecer","authorEmail":"","authorUrl":"de.siteof.de","version":"1.1.0 (build 89)","description":"\\n\\t\\n\\tThis Extended Menu module displays a menu in a flexible way.\\n\\tPlease visit <a href=\\"http:\\/\\/de.siteof.de\\/extended-menu.html\\">de.siteof.de<\\/a> for more details.<br \\/>\\n\\tTo use this module don''t forget to publish it (and probably unpublish the default mainmenu module).<br \\/>\\n\\t<br \\/>\\n\\t(If you like this module please consider a <a href=\\"http:\\/\\/de.siteof.de\\/donate.html\\">donation<\\/a>.)\\n\\t\\n\\t","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10058, 'mod_menucss', 'module', 'mod_menucss', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_menucss","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10059, 'mod_roknavmenu', 'module', 'mod_roknavmenu', '', 0, 1, 1, 0, '{"legacy":false,"name":"RokNavMenu","type":"module","creationDate":"February 3, 2012","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2012 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.9","description":"RocketTheme Customizable Navigation Menu","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10060, 'mod_swmenufree', 'module', 'mod_swmenufree', '', 0, 1, 1, 0, '{"legacy":false,"name":"swMenuFree","type":"module","creationDate":"August 2011","author":"Sean White","copyright":"Copyright (C) 2010-2011 Sean White. All rights reserved.","authorEmail":"sean@swmenupro.com","authorUrl":"http:\\/\\/swmenupro.com","version":"6.6","description":"swMenuFree dynamic menu module for Joomla","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10061, 'rokextender', 'plugin', 'rokextender', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"System - RokExtender","type":"plugin","creationDate":"February 24, 2011","author":"RocketTheme, LLC","copyright":"(C) 2005 - 2011 RocketTheme, LLC. All rights reserved.","authorEmail":"support@rockettheme.com","authorUrl":"http:\\/\\/www.rockettheme.com","version":"1.0","description":"System - Gantry","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10062, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, 'false', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10063, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, -1),
(10064, 'migur', 'template', 'bootstrap', '', 0, 1, 1, 0, '{"legacy":false,"name":"migur","type":"template","creationDate":"12\\/03\\/12","author":"Migur ltd","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"henrik@migur.com","authorUrl":"http:\\/\\/migur.com","version":"1.0.0","description":"TPL_MIGUR_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10065, 'lady', 'template', 'lady', '', 0, 1, 1, 0, '{"legacy":true,"name":"lady","type":"template","creationDate":"2012-10-04","author":"Pixpro","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":" <p> Lady is the simplest inherited from TRANSMODE template. Bootstrapped.<p> ","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10066, 'mod_bee_menu', 'module', 'mod_bee_menu', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_bee_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '{"startLevel":"1","endLevel":"0","showAllChildren":"0","brandName":"","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10067, 'Jshopping Cart', 'module', 'mod_jshopping_cart', '', 0, 1, 0, 0, '{"legacy":false,"name":"Jshopping Cart","type":"module","creationDate":"01.01.2012","author":"MAXXmarketing GmbH","copyright":"","authorEmail":"marketing@maxx-marketing.net","authorUrl":"http:\\/\\/www.webdesigner-profi.de","version":"3.0.2","description":"Displays a JoomShopping cart","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10068, 'mod_pagetitle', 'module', 'mod_pagetitle', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_pagetitle","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_PAGETITLE_XML_DESCRIPTION","group":""}', '{"prepare_content":"1","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_filters`
--

CREATE TABLE IF NOT EXISTS `jos_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL default '1',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL default '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY  (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links` (
  `link_id` int(10) unsigned NOT NULL auto_increment,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `indexdate` datetime NOT NULL default '0000-00-00 00:00:00',
  `md5sum` varchar(32) default NULL,
  `published` tinyint(1) NOT NULL default '1',
  `state` int(5) default '1',
  `access` int(5) default '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL default '0',
  `sale_price` double unsigned NOT NULL default '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY  (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `jos_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `jos_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `parent_id` int(10) unsigned NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `access` tinyint(1) unsigned NOT NULL default '0',
  `ordering` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_finder_taxonomy`
--

INSERT INTO `jos_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `jos_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_terms`
--

CREATE TABLE IF NOT EXISTS `jos_finder_terms` (
  `term_id` int(10) unsigned NOT NULL auto_increment,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `jos_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_finder_terms_common`
--

INSERT INTO `jos_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `jos_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `weight` float unsigned NOT NULL default '1',
  `context` tinyint(1) unsigned NOT NULL default '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `jos_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL default '0',
  `phrase` tinyint(1) unsigned NOT NULL default '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL default '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_finder_types`
--

CREATE TABLE IF NOT EXISTS `jos_finder_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_addons`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_addons` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(255) NOT NULL,
  `key` text NOT NULL,
  `version` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_attr`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_attr` (
  `attr_id` int(11) NOT NULL auto_increment,
  `attr_ordering` int(11) NOT NULL default '0',
  `attr_type` tinyint(1) NOT NULL,
  `independent` tinyint(1) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`attr_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `jos_jshopping_attr`
--

INSERT INTO `jos_jshopping_attr` (`attr_id`, `attr_ordering`, `attr_type`, `independent`, `name_en-GB`, `name_ru-RU`) VALUES
(2, 1, 1, 1, 'meterial', 'материал');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_attr_values`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_attr_values` (
  `value_id` int(11) NOT NULL auto_increment,
  `attr_id` int(11) NOT NULL,
  `value_ordering` int(11) NOT NULL default '0',
  `image` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `jos_jshopping_attr_values`
--

INSERT INTO `jos_jshopping_attr_values` (`value_id`, `attr_id`, `value_ordering`, `image`, `name_en-GB`, `name_ru-RU`) VALUES
(7, 2, 2, '', 'biflex', 'Бифлекс'),
(6, 2, 1, '', 'oil', 'Масло'),
(8, 2, 3, '', 'fleece', 'Флиз');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_cart_temp`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_cart_temp` (
  `id` int(11) NOT NULL auto_increment,
  `id_cookie` varchar(255) NOT NULL,
  `cart` text NOT NULL,
  `type_cart` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `jos_jshopping_cart_temp`
--

INSERT INTO `jos_jshopping_cart_temp` (`id`, `id_cookie`, `cart`, `type_cart`) VALUES
(1, 'qbb94v7jlptjvqe3ovi6d0icq2', 'a:0:{}', 'wishlist'),
(2, 'q77nj1qh5mnh9q2jjfo4penj83', 'a:0:{}', 'wishlist'),
(3, 'ep304h602o8lm1q4uv0uej1pp2', 'a:0:{}', 'wishlist'),
(4, '5537tdpotn616d68nba3pufsf0', 'a:0:{}', 'wishlist'),
(5, 'ns5r8teb57e2j9jifg2a45ern2', 'a:0:{}', 'wishlist'),
(7, 's88melbv6snc6lg30j3tj4ugm5', 'a:0:{}', 'wishlist'),
(13, '6d2d83b9ec7099405fdbb79fbaddf19c', 'a:0:{}', 'wishlist'),
(14, 'cf2cdf149e09d34915953d17057b7e17', 'a:0:{}', 'wishlist'),
(15, 'f1d442632190b3cec42b2fd0c3f04b68', 'a:0:{}', 'wishlist'),
(16, '8a4c7b4cc2fc8f167520083dbfd3be1b', 'a:0:{}', 'wishlist'),
(17, '67875d7ebc8cbdf309f93735e3bd9f2c', 'a:0:{}', 'wishlist'),
(18, '27c6d835aaee58251d225c0250d63bd9', 'a:0:{}', 'wishlist'),
(19, '1f4c1b8e728ec9366f7f43c28403e5de', 'a:0:{}', 'wishlist'),
(20, 'a4d2863e6c218a6b3529d34acc8cba7c', 'a:0:{}', 'wishlist');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_categories`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_categories` (
  `category_id` int(11) NOT NULL auto_increment,
  `category_image` varchar(255) default NULL,
  `category_parent_id` int(11) NOT NULL default '0',
  `category_publish` tinyint(1) unsigned NOT NULL default '1',
  `category_ordertype` tinyint(1) unsigned NOT NULL default '1',
  `category_template` varchar(64) default NULL,
  `ordering` int(3) NOT NULL,
  `category_add_date` datetime default '0000-00-00 00:00:00',
  `products_page` int(8) NOT NULL default '12',
  `products_row` int(3) NOT NULL default '3',
  `access` int(3) NOT NULL default '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY  (`category_id`),
  KEY `sort_add_date` (`category_add_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `jos_jshopping_categories`
--

INSERT INTO `jos_jshopping_categories` (`category_id`, `category_image`, `category_parent_id`, `category_publish`, `category_ordertype`, `category_template`, `ordering`, `category_add_date`, `products_page`, `products_row`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(10, NULL, 0, 1, 1, NULL, 26, '2012-12-21 00:36:52', 30, 3, 1, '', '', '', '', '', '', '', 'Cool :)', 'cool', '', '', '', '', ''),
(2, NULL, 0, 1, 1, NULL, 31, '2012-02-19 19:45:09', 12, 3, 1, '', '', '', '', '', '', '', 'Геометрия', 'geometry', '', '', '', '', ''),
(5, NULL, 0, 0, 1, NULL, 14, '2012-12-21 00:29:59', 30, 3, 1, '', '', '', '', '', '', '', 'Праздники', 'holidays', '', '', '', '', ''),
(6, NULL, 0, 1, 1, NULL, 30, '2012-12-21 00:30:26', 30, 3, 1, '', '', '', '', '', '', '', 'Автомобилистам', 'car', '', '', '', '', ''),
(7, NULL, 0, 1, 1, NULL, 29, '2012-12-21 00:31:13', 30, 3, 1, '', '', '', '', '', '', '', 'IT', 'it', '', '', '', '', ''),
(8, NULL, 0, 1, 1, NULL, 28, '2012-12-21 00:32:13', 30, 3, 1, '', '', '', '', '', '', '', 'Гламур', 'glamour', '', '', '', '', ''),
(9, NULL, 0, 0, 1, NULL, 27, '2012-12-21 00:33:04', 30, 3, 1, '', '', '', '', '', '', '', 'Нонкомформизм o_O', 'noncomformism', '', '', '', '', ''),
(11, NULL, 0, 0, 1, NULL, 25, '2012-12-21 00:38:08', 30, 3, 1, '', '', '', '', '', '', '', 'HoReCa', 'horeca', '', '', '', '', ''),
(12, NULL, 0, 1, 1, NULL, 2, '2012-12-21 00:59:08', 30, 3, 1, '', '', '', '', '', '', '', 'Пэтс', 'pets', '', '', '', '', ''),
(13, NULL, 0, 1, 1, NULL, 23, '2012-12-22 00:43:37', 30, 3, 1, '', '', '', '', '', '', '', 'Мягкая мебель', 'furniture', '', '', '', '', ''),
(14, NULL, 0, 1, 1, NULL, 24, '2012-12-22 00:44:50', 30, 3, 1, '', '', '', '', '', '', '', 'Подушки', 'pillows', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_config`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_config` (
  `id` tinyint(1) NOT NULL default '0',
  `count_products_to_page` int(4) NOT NULL default '0',
  `count_products_to_row` int(2) NOT NULL default '0',
  `count_category_to_row` int(2) NOT NULL default '0',
  `image_category_width` int(4) NOT NULL default '0',
  `image_category_height` int(4) NOT NULL default '0',
  `image_product_width` int(4) NOT NULL default '0',
  `image_product_height` int(4) NOT NULL default '0',
  `image_product_full_width` int(4) NOT NULL default '0',
  `image_product_full_height` int(4) NOT NULL default '0',
  `video_product_width` int(4) NOT NULL default '0',
  `video_product_height` int(4) NOT NULL default '0',
  `adminLanguage` varchar(8) NOT NULL default '',
  `defaultLanguage` varchar(8) NOT NULL default '',
  `mainCurrency` int(4) NOT NULL,
  `decimal_count` tinyint(1) NOT NULL,
  `decimal_symbol` varchar(5) NOT NULL,
  `thousand_separator` varchar(5) NOT NULL,
  `currency_format` tinyint(1) NOT NULL,
  `use_rabatt_code` tinyint(1) NOT NULL,
  `enable_wishlist` tinyint(1) NOT NULL,
  `default_status_order` tinyint(1) NOT NULL,
  `order_number_type` varchar(50) NOT NULL,
  `store_address_format` varchar(32) NOT NULL,
  `store_date_format` varchar(32) NOT NULL,
  `contact_email` varchar(128) NOT NULL,
  `allow_reviews_prod` tinyint(1) NOT NULL,
  `allow_reviews_only_registered` tinyint(1) NOT NULL,
  `allow_reviews_manuf` tinyint(1) NOT NULL,
  `max_mark` int(11) NOT NULL,
  `summ_null_shipping` decimal(12,2) NOT NULL,
  `without_shipping` tinyint(1) NOT NULL,
  `without_payment` tinyint(1) NOT NULL,
  `pdf_parameters` varchar(32) NOT NULL,
  `next_order_number` int(11) NOT NULL default '1',
  `shop_user_guest` tinyint(1) NOT NULL,
  `hide_product_not_avaible_stock` tinyint(1) NOT NULL,
  `show_buy_in_category` tinyint(1) NOT NULL,
  `user_as_catalog` tinyint(1) NOT NULL,
  `show_tax_in_product` tinyint(1) NOT NULL,
  `show_tax_product_in_cart` tinyint(1) NOT NULL,
  `show_plus_shipping_in_product` tinyint(1) NOT NULL,
  `hide_buy_not_avaible_stock` tinyint(1) NOT NULL,
  `show_sort_product` tinyint(1) NOT NULL,
  `show_count_select_products` tinyint(1) NOT NULL,
  `order_send_pdf_client` tinyint(1) NOT NULL,
  `order_send_pdf_admin` tinyint(1) NOT NULL,
  `show_delivery_time` tinyint(1) NOT NULL,
  `securitykey` varchar(128) NOT NULL,
  `demo_type` tinyint(1) NOT NULL,
  `product_show_manufacturer_logo` tinyint(1) NOT NULL,
  `product_show_manufacturer` tinyint(1) NOT NULL,
  `product_show_weight` tinyint(1) NOT NULL,
  `max_count_order_one_product` int(11) NOT NULL,
  `min_count_order_one_product` int(11) NOT NULL,
  `min_price_order` int(11) NOT NULL,
  `max_price_order` int(11) NOT NULL,
  `hide_tax` tinyint(1) NOT NULL,
  `licensekod` text NOT NULL,
  `product_attribut_first_value_empty` tinyint(1) NOT NULL,
  `show_hits` tinyint(1) NOT NULL,
  `show_registerform_in_logintemplate` tinyint(1) NOT NULL,
  `admin_show_product_basic_price` tinyint(1) NOT NULL,
  `admin_show_attributes` tinyint(1) NOT NULL,
  `admin_show_delivery_time` tinyint(1) NOT NULL,
  `admin_show_languages` tinyint(1) NOT NULL,
  `use_different_templates_cat_prod` tinyint(1) NOT NULL,
  `admin_show_product_video` tinyint(1) NOT NULL,
  `admin_show_product_related` tinyint(1) NOT NULL,
  `admin_show_product_files` tinyint(1) NOT NULL,
  `admin_show_product_bay_price` tinyint(1) NOT NULL,
  `admin_show_product_labels` tinyint(1) NOT NULL,
  `sorting_country_in_alphabet` tinyint(1) NOT NULL,
  `hide_text_product_not_available` tinyint(1) NOT NULL,
  `show_weight_order` tinyint(1) NOT NULL,
  `discount_use_full_sum` tinyint(1) NOT NULL,
  `show_cart_all_step_checkout` tinyint(1) NOT NULL,
  `use_plugin_content` tinyint(1) NOT NULL,
  `display_price_admin` tinyint(1) NOT NULL,
  `display_price_front` tinyint(1) NOT NULL,
  `product_list_show_weight` tinyint(1) NOT NULL,
  `product_list_show_manufacturer` tinyint(1) NOT NULL,
  `use_extend_tax_rule` tinyint(4) NOT NULL,
  `use_extend_display_price_rule` tinyint(4) NOT NULL,
  `fields_register` text NOT NULL,
  `template` varchar(128) NOT NULL,
  `show_product_code` tinyint(1) NOT NULL,
  `show_product_code_in_cart` tinyint(1) NOT NULL,
  `savelog` tinyint(1) NOT NULL,
  `savelogpaymentdata` tinyint(1) NOT NULL,
  `product_list_show_min_price` tinyint(1) NOT NULL,
  `product_count_related_in_row` tinyint(4) NOT NULL,
  `category_sorting` tinyint(1) NOT NULL default '1',
  `product_sorting` tinyint(1) NOT NULL default '1',
  `product_sorting_direction` tinyint(1) NOT NULL default '0',
  `show_product_list_filters` tinyint(1) NOT NULL,
  `admin_show_product_extra_field` tinyint(1) NOT NULL,
  `product_list_display_extra_fields` text NOT NULL,
  `filter_display_extra_fields` text NOT NULL,
  `product_hide_extra_fields` text NOT NULL,
  `default_country` int(11) NOT NULL,
  `show_return_policy_in_email_order` tinyint(1) NOT NULL,
  `client_allow_cancel_order` tinyint(1) NOT NULL,
  `admin_show_vendors` tinyint(1) NOT NULL,
  `vendor_order_message_type` tinyint(1) NOT NULL,
  `admin_not_send_email_order_vendor_order` tinyint(1) NOT NULL,
  `not_redirect_in_cart_after_buy` tinyint(1) NOT NULL,
  `product_show_vendor` tinyint(1) NOT NULL,
  `product_show_vendor_detail` tinyint(1) NOT NULL,
  `product_list_show_vendor` tinyint(1) NOT NULL,
  `admin_show_freeattributes` tinyint(1) NOT NULL,
  `product_show_button_back` tinyint(1) NOT NULL,
  `calcule_tax_after_discount` tinyint(1) NOT NULL,
  `product_list_show_product_code` tinyint(1) NOT NULL,
  `radio_attr_value_vertical` tinyint(1) NOT NULL,
  `attr_display_addprice` tinyint(1) NOT NULL,
  `use_ssl` tinyint(1) NOT NULL,
  `product_list_show_price_description` tinyint(1) NOT NULL,
  `display_button_print` tinyint(1) NOT NULL,
  `hide_shipping_step` tinyint(1) NOT NULL,
  `hide_payment_step` tinyint(1) NOT NULL,
  `image_resize_type` tinyint(1) NOT NULL,
  `use_extend_attribute_data` tinyint(1) NOT NULL,
  `product_list_show_price_default` tinyint(1) NOT NULL,
  `product_list_show_qty_stock` tinyint(1) NOT NULL,
  `product_show_qty_stock` tinyint(1) NOT NULL,
  `displayprice` tinyint(1) NOT NULL,
  `use_decimal_qty` tinyint(1) NOT NULL,
  `ext_tax_rule_for` tinyint(1) NOT NULL,
  `display_reviews_without_confirm` tinyint(1) NOT NULL,
  `manufacturer_sorting` tinyint(1) NOT NULL,
  `admin_show_units` tinyint(1) NOT NULL,
  `main_unit_weight` tinyint(3) NOT NULL,
  `create_alias_product_category_auto` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_jshopping_config`
--

INSERT INTO `jos_jshopping_config` (`id`, `count_products_to_page`, `count_products_to_row`, `count_category_to_row`, `image_category_width`, `image_category_height`, `image_product_width`, `image_product_height`, `image_product_full_width`, `image_product_full_height`, `video_product_width`, `video_product_height`, `adminLanguage`, `defaultLanguage`, `mainCurrency`, `decimal_count`, `decimal_symbol`, `thousand_separator`, `currency_format`, `use_rabatt_code`, `enable_wishlist`, `default_status_order`, `order_number_type`, `store_address_format`, `store_date_format`, `contact_email`, `allow_reviews_prod`, `allow_reviews_only_registered`, `allow_reviews_manuf`, `max_mark`, `summ_null_shipping`, `without_shipping`, `without_payment`, `pdf_parameters`, `next_order_number`, `shop_user_guest`, `hide_product_not_avaible_stock`, `show_buy_in_category`, `user_as_catalog`, `show_tax_in_product`, `show_tax_product_in_cart`, `show_plus_shipping_in_product`, `hide_buy_not_avaible_stock`, `show_sort_product`, `show_count_select_products`, `order_send_pdf_client`, `order_send_pdf_admin`, `show_delivery_time`, `securitykey`, `demo_type`, `product_show_manufacturer_logo`, `product_show_manufacturer`, `product_show_weight`, `max_count_order_one_product`, `min_count_order_one_product`, `min_price_order`, `max_price_order`, `hide_tax`, `licensekod`, `product_attribut_first_value_empty`, `show_hits`, `show_registerform_in_logintemplate`, `admin_show_product_basic_price`, `admin_show_attributes`, `admin_show_delivery_time`, `admin_show_languages`, `use_different_templates_cat_prod`, `admin_show_product_video`, `admin_show_product_related`, `admin_show_product_files`, `admin_show_product_bay_price`, `admin_show_product_labels`, `sorting_country_in_alphabet`, `hide_text_product_not_available`, `show_weight_order`, `discount_use_full_sum`, `show_cart_all_step_checkout`, `use_plugin_content`, `display_price_admin`, `display_price_front`, `product_list_show_weight`, `product_list_show_manufacturer`, `use_extend_tax_rule`, `use_extend_display_price_rule`, `fields_register`, `template`, `show_product_code`, `show_product_code_in_cart`, `savelog`, `savelogpaymentdata`, `product_list_show_min_price`, `product_count_related_in_row`, `category_sorting`, `product_sorting`, `product_sorting_direction`, `show_product_list_filters`, `admin_show_product_extra_field`, `product_list_display_extra_fields`, `filter_display_extra_fields`, `product_hide_extra_fields`, `default_country`, `show_return_policy_in_email_order`, `client_allow_cancel_order`, `admin_show_vendors`, `vendor_order_message_type`, `admin_not_send_email_order_vendor_order`, `not_redirect_in_cart_after_buy`, `product_show_vendor`, `product_show_vendor_detail`, `product_list_show_vendor`, `admin_show_freeattributes`, `product_show_button_back`, `calcule_tax_after_discount`, `product_list_show_product_code`, `radio_attr_value_vertical`, `attr_display_addprice`, `use_ssl`, `product_list_show_price_description`, `display_button_print`, `hide_shipping_step`, `hide_payment_step`, `image_resize_type`, `use_extend_attribute_data`, `product_list_show_price_default`, `product_list_show_qty_stock`, `product_show_qty_stock`, `displayprice`, `use_decimal_qty`, `ext_tax_rule_for`, `display_reviews_without_confirm`, `manufacturer_sorting`, `admin_show_units`, `main_unit_weight`, `create_alias_product_category_auto`) VALUES
(1, 30, 3, 1, 160, 0, 275, 0, 320, 0, 320, 240, 'ru-RU', 'ru-RU', 1, 2, '.', '', 2, 1, 1, 1, '1', '%storename %address %city %zip', '%d.%m.%Y', 'andreyalek@gmail.com', 0, 0, 0, 10, '-1.00', 0, 0, '208:65:208:30', 138, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, '53ecaaae25675f751e1dd31c4e6178bf', 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'a:3:{s:8:"register";a:15:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:6:"u_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:8:"password";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:10:"password_2";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}s:7:"address";a:22:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:7:"d_title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_f_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:12:"d_firma_name";a:1:{s:7:"display";s:1:"1";}s:8:"d_street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"d_zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"d_city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_state";a:1:{s:7:"display";s:1:"1";}s:9:"d_country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}s:11:"editaccount";a:22:{s:5:"title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:10:"firma_name";a:1:{s:7:"display";s:1:"1";}s:6:"street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:4:"city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"state";a:1:{s:7:"display";s:1:"1";}s:7:"country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:3:"fax";a:1:{s:7:"display";s:1:"1";}s:7:"d_title";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_f_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:8:"d_l_name";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:12:"d_firma_name";a:1:{s:7:"display";s:1:"1";}s:8:"d_street";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:5:"d_zip";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"d_city";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_state";a:1:{s:7:"display";s:1:"1";}s:9:"d_country";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:7:"d_phone";a:2:{s:7:"display";s:1:"1";s:7:"require";s:1:"1";}s:6:"f_name";a:2:{s:7:"require";i:1;s:7:"display";i:1;}s:5:"email";a:2:{s:7:"require";i:1;s:7:"display";i:1;}}}', '', 1, 0, 0, 0, 0, 3, 1, 1, 0, 0, 0, '', '', '', 220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_config_display_prices`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_config_display_prices` (
  `id` int(11) NOT NULL auto_increment,
  `zones` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `display_price_firma` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_config_seo`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_config_seo` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(64) NOT NULL,
  `ordering` int(11) NOT NULL,
  `title_en-GB` varchar(255) NOT NULL,
  `keyword_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `title_ru-RU` varchar(255) NOT NULL,
  `keyword_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `jos_jshopping_config_seo`
--

INSERT INTO `jos_jshopping_config_seo` (`id`, `alias`, `ordering`, `title_en-GB`, `keyword_en-GB`, `description_en-GB`, `title_ru-RU`, `keyword_ru-RU`, `description_ru-RU`) VALUES
(1, 'category', 10, '', '', '', '', '', ''),
(2, 'manufacturers', 20, '', '', '', '', '', ''),
(3, 'cart', 30, '', '', '', '', '', ''),
(4, 'wishlist', 40, '', '', '', '', '', ''),
(5, 'login', 50, '', '', '', '', '', ''),
(6, 'register', 60, '', '', '', '', '', ''),
(7, 'editaccount', 70, '', '', '', '', '', ''),
(8, 'myorders', 80, '', '', '', '', '', ''),
(9, 'myaccount', 90, '', '', '', '', '', ''),
(10, 'search', 100, '', '', '', '', '', ''),
(11, 'search-result', 110, '', '', '', '', '', ''),
(12, 'myorder-detail', 120, '', '', '', '', '', ''),
(13, 'vendors', 130, '', '', '', '', '', ''),
(14, 'content-agb', 140, '', '', '', '', '', ''),
(15, 'content-return_policy', 150, '', '', '', '', '', ''),
(16, 'content-shipping', 160, '', '', '', '', '', ''),
(17, 'checkout-address', 170, '', '', '', '', '', ''),
(18, 'checkout-payment', 180, '', '', '', '', '', ''),
(19, 'checkout-shipping', 190, '', '', '', '', '', ''),
(20, 'checkout-preview', 200, '', '', '', '', '', ''),
(21, 'lastproducts', 210, '', '', '', '', '', ''),
(22, 'randomproducts', 220, '', '', '', '', '', ''),
(23, 'bestsellerproducts', 230, '', '', '', '', '', ''),
(24, 'labelproducts', 240, '', '', '', '', '', ''),
(25, 'topratingproducts', 250, '', '', '', '', '', ''),
(26, 'tophitsproducts', 260, '', '', '', '', '', ''),
(27, 'all-products', 270, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_config_statictext`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_config_statictext` (
  `id` int(11) NOT NULL auto_increment,
  `alias` varchar(64) NOT NULL,
  `text_en-GB` text NOT NULL,
  `text_ru-RU` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `jos_jshopping_config_statictext`
--

INSERT INTO `jos_jshopping_config_statictext` (`id`, `alias`, `text_en-GB`, `text_ru-RU`) VALUES
(1, 'home', '', ''),
(2, 'manufacturer', '', ''),
(3, 'agb', '', ''),
(4, 'return_policy', '', ''),
(5, 'order_email_descr', '', ''),
(6, 'order_finish_descr', '', ''),
(7, 'shipping', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_countries`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_countries` (
  `country_id` int(11) NOT NULL auto_increment,
  `country_publish` tinyint(4) NOT NULL,
  `ordering` smallint(6) NOT NULL,
  `country_code` varchar(5) NOT NULL,
  `country_code_2` varchar(5) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_de-DE` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=240 ;

--
-- Дамп данных таблицы `jos_jshopping_countries`
--

INSERT INTO `jos_jshopping_countries` (`country_id`, `country_publish`, `ordering`, `country_code`, `country_code_2`, `name_en-GB`, `name_de-DE`, `name_ru-RU`) VALUES
(1, 0, 1, 'AFG', 'AF', 'Afghanistan', 'Afghanistan', 'Afghanistan'),
(2, 0, 2, 'ALB', 'AL', 'Albania', 'Albanien', 'Albania'),
(3, 0, 3, 'DZA', 'DZ', 'Algeria', 'Algerien', 'Algeria'),
(4, 0, 4, 'ASM', 'AS', 'American Samoa', 'Amerikanisch-Samoa', 'American Samoa'),
(5, 0, 5, 'AND', 'AD', 'Andorra', 'Andorra', 'Andorra'),
(6, 0, 6, 'AGO', 'AO', 'Angola', 'Angola', 'Angola'),
(7, 0, 7, 'AIA', 'AI', 'Anguilla', 'Anguilla', 'Anguilla'),
(8, 0, 8, 'ATA', 'AQ', 'Antarctica', 'Antarktis', 'Antarctica'),
(9, 0, 9, 'ATG', 'AG', 'Antigua and Barbuda', 'Antigua und Barbuda', 'Antigua and Barbuda'),
(10, 0, 10, 'ARG', 'AR', 'Argentina', 'Argentinien', 'Argentina'),
(11, 0, 11, 'ARM', 'AM', 'Armenia', 'Armenien', 'Armenia'),
(12, 0, 12, 'ABW', 'AW', 'Aruba', 'Aruba', 'Aruba'),
(13, 0, 13, 'AUS', 'AU', 'Australia', 'Australien', 'Australia'),
(14, 0, 14, 'AUT', 'AT', 'Austria', 'Österreich', 'Austria'),
(15, 0, 15, 'AZE', 'AZ', 'Azerbaijan', 'Aserbaidschan', 'Azerbaijan'),
(16, 0, 16, 'BHS', 'BS', 'Bahamas', 'Bahamas', 'Bahamas'),
(17, 0, 17, 'BHR', 'BH', 'Bahrain', 'Bahrain', 'Bahrain'),
(18, 0, 18, 'BGD', 'BD', 'Bangladesh', 'Bangladesch', 'Bangladesh'),
(19, 0, 19, 'BRB', 'BB', 'Barbados', 'Barbados', 'Barbados'),
(20, 0, 20, 'BLR', 'BY', 'Belarus', 'Weissrussland', 'Belarus'),
(21, 0, 21, 'BEL', 'BE', 'Belgium', 'Belgien', 'Belgium'),
(22, 0, 22, 'BLZ', 'BZ', 'Belize', 'Belize', 'Belize'),
(23, 0, 23, 'BEN', 'BJ', 'Benin', 'Benin', 'Benin'),
(24, 0, 24, 'BMU', 'BM', 'Bermuda', 'Bermuda', 'Bermuda'),
(25, 0, 25, 'BTN', 'BT', 'Bhutan', 'Bhutan', 'Bhutan'),
(26, 0, 26, 'BOL', 'BO', 'Bolivia', 'Bolivien', 'Bolivia'),
(27, 0, 27, 'BIH', 'BA', 'Bosnia and Herzegowina', 'Bosnien und Herzegowina', 'Bosnia and Herzegowina'),
(28, 0, 28, 'BWA', 'BW', 'Botswana', 'Botsuana', 'Botswana'),
(29, 0, 29, 'BVT', 'BV', 'Bouvet Island', 'Bouvetinsel', 'Bouvet Island'),
(30, 0, 30, 'BRA', 'BR', 'Brazil', 'Brasilien', 'Brazil'),
(31, 0, 31, 'IOT', 'IO', 'British Indian Ocean Territory', 'Britisches Territorium im Indischen Ozean', 'British Indian Ocean Territory'),
(32, 0, 32, 'BRN', 'BN', 'Brunei Darussalam', 'Brunei', 'Brunei Darussalam'),
(33, 0, 33, 'BGR', 'BG', 'Bulgaria', 'Bulgarien', 'Bulgaria'),
(34, 0, 34, 'BFA', 'BF', 'Burkina Faso', 'Burkina Faso', 'Burkina Faso'),
(35, 0, 35, 'BDI', 'BI', 'Burundi', 'Burundi', 'Burundi'),
(36, 0, 36, 'KHM', 'KH', 'Cambodia', 'Kambodscha', 'Cambodia'),
(37, 0, 37, 'CMR', 'CM', 'Cameroon', 'Kamerun', 'Cameroon'),
(38, 0, 38, 'CAN', 'CA', 'Canada', 'Kanada', 'Canada'),
(39, 0, 39, 'CPV', 'CV', 'Cape Verde', 'Kap Verde', 'Cape Verde'),
(40, 0, 40, 'CYM', 'KY', 'Cayman Islands', 'Cayman-Inseln', 'Cayman Islands'),
(41, 0, 41, 'CAF', 'CF', 'Central African Republic', 'Zentralafrikanische Republik', 'Central African Republic'),
(42, 0, 42, 'TCD', 'TD', 'Chad', 'Tschad', 'Chad'),
(43, 0, 43, 'CHL', 'CL', 'Chile', 'Chile', 'Chile'),
(44, 0, 44, 'CHN', 'CN', 'China', 'China', 'China'),
(45, 0, 45, 'CXR', 'CX', 'Christmas Island', 'Christmas Island', 'Christmas Island'),
(46, 0, 46, 'CCK', 'CC', 'Cocos (Keeling) Islands', 'Kokosinseln (Keeling)', 'Cocos (Keeling) Islands'),
(47, 0, 47, 'COL', 'CO', 'Colombia', 'Kolumbien', 'Colombia'),
(48, 0, 48, 'COM', 'KM', 'Comoros', 'Komoren', 'Comoros'),
(49, 0, 49, 'COG', 'CG', 'Congo', 'Kongo, Republik', 'Congo'),
(50, 0, 50, 'COK', 'CK', 'Cook Islands', 'Cookinseln', 'Cook Islands'),
(51, 0, 51, 'CRI', 'CR', 'Costa Rica', 'Costa Rica', 'Costa Rica'),
(52, 0, 52, 'CIV', 'CI', 'Cote D''Ivoire', 'Elfenbeinküste', 'Cote D''Ivoire'),
(53, 0, 53, 'HRV', 'HR', 'Croatia', 'Kroatien', 'Croatia'),
(54, 0, 54, 'CUB', 'CU', 'Cuba', 'Kuba', 'Cuba'),
(55, 0, 55, 'CYP', 'CY', 'Cyprus', 'Zypern', 'Cyprus'),
(56, 0, 56, 'CZE', 'CZ', 'Czech Republic', 'Tschechien', 'Czech Republic'),
(57, 0, 57, 'DNK', 'DK', 'Denmark', 'Dänemark', 'Denmark'),
(58, 0, 58, 'DJI', 'DJ', 'Djibouti', 'Dschibuti', 'Djibouti'),
(59, 0, 59, 'DMA', 'DM', 'Dominica', 'Dominica', 'Dominica'),
(60, 0, 60, 'DOM', 'DO', 'Dominican Republic', 'Dominikanische Republik', 'Dominican Republic'),
(61, 0, 61, 'TMP', 'TL', 'East Timor', 'Osttimor', 'East Timor'),
(62, 0, 62, 'ECU', 'EC', 'Ecuador', 'Ecuador', 'Ecuador'),
(63, 0, 63, 'EGY', 'EG', 'Egypt', 'Ägypten', 'Egypt'),
(64, 0, 64, 'SLV', 'SV', 'El Salvador', 'El Salvador', 'El Salvador'),
(65, 0, 65, 'GNQ', 'GQ', 'Equatorial Guinea', 'Äquatorial-Guinea', 'Equatorial Guinea'),
(66, 0, 66, 'ERI', 'ER', 'Eritrea', 'Eritrea', 'Eritrea'),
(67, 0, 67, 'EST', 'EE', 'Estonia', 'Estland', 'Estonia'),
(68, 0, 68, 'ETH', 'ET', 'Ethiopia', 'Äthiopien', 'Ethiopia'),
(69, 0, 69, 'FLK', 'FK', 'Falkland Islands (Malvinas)', 'Falklandinseln', 'Falkland Islands (Malvinas)'),
(70, 0, 70, 'FRO', 'FO', 'Faroe Islands', 'Färöer', 'Faroe Islands'),
(71, 0, 71, 'FJI', 'FJ', 'Fiji', 'Fidschi', 'Fiji'),
(72, 0, 72, 'FIN', 'FI', 'Finland', 'Finnland', 'Finland'),
(73, 0, 73, 'FRA', 'FR', 'France', 'Frankreich', 'France'),
(74, 0, 74, 'FXX', 'FX', 'France Metropolitan', 'Frankreich, Metropolitan', 'France Metropolitan'),
(75, 0, 75, 'GUF', 'GF', 'French Guiana', 'Französisch-Guyana', 'French Guiana'),
(76, 0, 76, 'PYF', 'PF', 'French Polynesia', 'Franz. Polynesien', 'French Polynesia'),
(77, 0, 77, 'ATF', 'TF', 'French Southern Territories', 'Französiche Süd- und Antarktisgebiete', 'French Southern Territories'),
(78, 0, 78, 'GAB', 'GA', 'Gabon', 'Gabun', 'Gabon'),
(79, 0, 79, 'GMB', 'GM', 'Gambia', 'Gambia', 'Gambia'),
(80, 0, 80, 'GEO', 'GE', 'Georgia', 'Georgien', 'Georgia'),
(81, 0, 81, 'DEU', 'DE', 'Germany', 'Deutschland', 'Germany'),
(82, 0, 82, 'GHA', 'GH', 'Ghana', 'Ghana', 'Ghana'),
(83, 0, 83, 'GIB', 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar'),
(84, 0, 84, 'GRC', 'GR', 'Greece', 'Griechenland', 'Greece'),
(85, 0, 85, 'GRL', 'GL', 'Greenland', 'Grönland', 'Greenland'),
(86, 0, 86, 'GRD', 'GD', 'Grenada', 'Grenada', 'Grenada'),
(87, 0, 87, 'GLP', 'GP', 'Guadeloupe', 'Guadeloupe', 'Guadeloupe'),
(88, 0, 88, 'GUM', 'GU', 'Guam', 'Guam', 'Guam'),
(89, 0, 89, 'GTM', 'GT', 'Guatemala', 'Guatemala', 'Guatemala'),
(90, 0, 90, 'GIN', 'GN', 'Guinea', 'Guinea', 'Guinea'),
(91, 0, 91, 'GNB', 'GW', 'Guinea-bissau', 'Guinea-Bissau', 'Guinea-bissau'),
(92, 0, 92, 'GUY', 'GY', 'Guyana', 'Guyana', 'Guyana'),
(93, 0, 93, 'HTI', 'HT', 'Haiti', 'Haiti', 'Haiti'),
(94, 0, 94, 'HMD', 'HM', 'Heard and Mc Donald Islands', 'Heard und McDonaldinseln', 'Heard and Mc Donald Islands'),
(95, 0, 95, 'HND', 'HN', 'Honduras', 'Honduras', 'Honduras'),
(96, 0, 96, 'HKG', 'HK', 'Hong Kong', 'Hong Kong', 'Hong Kong'),
(97, 0, 97, 'HUN', 'HU', 'Hungary', 'Ungarn', 'Hungary'),
(98, 0, 98, 'ISL', 'IS', 'Iceland', 'Island', 'Iceland'),
(99, 0, 99, 'IND', 'IN', 'India', 'Indien', 'India'),
(100, 0, 100, 'IDN', 'ID', 'Indonesia', 'Indonesien', 'Indonesia'),
(101, 0, 101, 'IRN', 'IR', 'Iran (Islamic Republic of)', 'Iran', 'Iran (Islamic Republic of)'),
(102, 0, 102, 'IRQ', 'IQ', 'Iraq', 'Irak', 'Iraq'),
(103, 0, 103, 'IRL', 'IE', 'Ireland', 'Irland', 'Ireland'),
(104, 0, 104, 'ISR', 'IL', 'Israel', 'Israel', 'Israel'),
(105, 0, 105, 'ITA', 'IT', 'Italy', 'Italien', 'Italy'),
(106, 0, 106, 'JAM', 'JM', 'Jamaica', 'Jamaika', 'Jamaica'),
(107, 0, 107, 'JPN', 'JP', 'Japan', 'Japan', 'Japan'),
(108, 0, 108, 'JOR', 'JO', 'Jordan', 'Jordanien', 'Jordan'),
(109, 0, 109, 'KAZ', 'KZ', 'Kazakhstan', 'Kasachstan', 'Kazakhstan'),
(110, 0, 110, 'KEN', 'KE', 'Kenya', 'Kenia', 'Kenya'),
(111, 0, 111, 'KIR', 'KI', 'Kiribati', 'Kiribati', 'Kiribati'),
(112, 0, 112, 'PRK', 'KP', 'Korea Democratic People''s Republic of', 'Korea Demokratische Volksrepublik', 'Korea Democratic People''s Republic of'),
(113, 0, 113, 'KOR', 'KR', 'Korea Republic of', 'Korea', 'Korea Republic of'),
(114, 0, 114, 'KWT', 'KW', 'Kuwait', 'Kuwait', 'Kuwait'),
(115, 0, 115, 'KGZ', 'KG', 'Kyrgyzstan', 'Kirgistan', 'Kyrgyzstan'),
(116, 0, 116, 'LAO', 'LA', 'Lao People''s Democratic Republic', 'Laos', 'Lao People''s Democratic Republic'),
(117, 0, 117, 'LVA', 'LV', 'Latvia', 'Lettland', 'Latvia'),
(118, 0, 118, 'LBN', 'LB', 'Lebanon', 'Libanon', 'Lebanon'),
(119, 0, 119, 'LSO', 'LS', 'Lesotho', 'Lesotho', 'Lesotho'),
(120, 0, 120, 'LBR', 'LR', 'Liberia', 'Liberia', 'Liberia'),
(121, 0, 121, 'LBY', 'LY', 'Libyan Arab Jamahiriya', 'Libyen', 'Libyan Arab Jamahiriya'),
(122, 0, 122, 'LIE', 'LI', 'Liechtenstein', 'Liechtenstein', 'Liechtenstein'),
(123, 0, 123, 'LTU', 'LT', 'Lithuania', 'Litauen', 'Lithuania'),
(124, 0, 124, 'LUX', 'LU', 'Luxembourg', 'Luxemburg', 'Luxembourg'),
(125, 0, 125, 'MAC', 'MO', 'Macau', 'Makao', 'Macau'),
(126, 0, 126, 'MKD', 'MK', 'Macedonia The Former Yugoslav Republic of', 'Mazedonien', 'Macedonia The Former Yugoslav Republic of'),
(127, 0, 127, 'MDG', 'MG', 'Madagascar', 'Madagaskar', 'Madagascar'),
(128, 0, 128, 'MWI', 'MW', 'Malawi', 'Malawi', 'Malawi'),
(129, 0, 129, 'MYS', 'MY', 'Malaysia', 'Malaysia', 'Malaysia'),
(130, 0, 130, 'MDV', 'MV', 'Maldives', 'Malediven', 'Maldives'),
(131, 0, 131, 'MLI', 'ML', 'Mali', 'Mali', 'Mali'),
(132, 0, 132, 'MLT', 'MT', 'Malta', 'Malta', 'Malta'),
(133, 0, 133, 'MHL', 'MH', 'Marshall Islands', 'Marshallinseln', 'Marshall Islands'),
(134, 0, 134, 'MTQ', 'MQ', 'Martinique', 'Martinique', 'Martinique'),
(135, 0, 135, 'MRT', 'MR', 'Mauritania', 'Mauretanien', 'Mauritania'),
(136, 0, 136, 'MUS', 'MU', 'Mauritius', 'Mauritius', 'Mauritius'),
(137, 0, 137, 'MYT', 'YT', 'Mayotte', 'Mayott', 'Mayotte'),
(138, 0, 138, 'MEX', 'MX', 'Mexico', 'Mexiko', 'Mexico'),
(139, 0, 139, 'FSM', 'FM', 'Micronesia Federated States of', 'Mikronesien', 'Micronesia Federated States of'),
(140, 0, 140, 'MDA', 'MD', 'Moldova Republic of', 'Moldawien', 'Moldova Republic of'),
(141, 0, 141, 'MCO', 'MC', 'Monaco', 'Monaco', 'Monaco'),
(142, 0, 142, 'MNG', 'MN', 'Mongolia', 'Mongolei', 'Mongolia'),
(143, 0, 143, 'MSR', 'MS', 'Montserrat', 'Montserrat', 'Montserrat'),
(144, 0, 144, 'MAR', 'MA', 'Morocco', 'Marokko', 'Morocco'),
(145, 0, 145, 'MOZ', 'MZ', 'Mozambique', 'Mosambik', 'Mozambique'),
(146, 0, 146, 'MMR', 'MM', 'Myanmar', 'Myanmar', 'Myanmar'),
(147, 0, 147, 'NAM', 'NA', 'Namibia', 'Namibia', 'Namibia'),
(148, 0, 148, 'NRU', 'NR', 'Nauru', 'Nauru', 'Nauru'),
(149, 0, 149, 'NPL', 'NP', 'Nepal', 'Nepal', 'Nepal'),
(150, 0, 150, 'NLD', 'NL', 'Netherlands', 'Niederlande', 'Netherlands'),
(151, 0, 151, 'ANT', 'AN', 'Netherlands Antilles', 'Niederländisch-Antillen', 'Netherlands Antilles'),
(152, 0, 152, 'NCL', 'NC', 'New Caledonia', 'Neukaledonien', 'New Caledonia'),
(153, 0, 153, 'NZL', 'NZ', 'New Zealand', 'Neuseeland', 'New Zealand'),
(154, 0, 154, 'NIC', 'NI', 'Nicaragua', 'Nicaragua', 'Nicaragua'),
(155, 0, 155, 'NER', 'NE', 'Niger', 'Niger', 'Niger'),
(156, 0, 156, 'NGA', 'NG', 'Nigeria', 'Nigeria', 'Nigeria'),
(157, 0, 157, 'NIU', 'NU', 'Niue', 'Niue', 'Niue'),
(158, 0, 158, 'NFK', 'NF', 'Norfolk Island', 'Norfolkinsel', 'Norfolk Island'),
(159, 0, 159, 'MNP', 'MP', 'Northern Mariana Islands', 'Nördliche Marianen', 'Northern Mariana Islands'),
(160, 0, 160, 'NOR', 'NO', 'Norway', 'Norwegen', 'Norway'),
(161, 0, 161, 'OMN', 'OM', 'Oman', 'Oman', 'Oman'),
(162, 0, 162, 'PAK', 'PK', 'Pakistan', 'Pakistan', 'Pakistan'),
(163, 0, 163, 'PLW', 'PW', 'Palau', 'Palau', 'Palau'),
(164, 0, 164, 'PAN', 'PA', 'Panama', 'Panama', 'Panama'),
(165, 0, 165, 'PNG', 'PG', 'Papua New Guinea', 'Papua-Neuguinea', 'Papua New Guinea'),
(166, 0, 166, 'PRY', 'PY', 'Paraguay', 'Paraguay', 'Paraguay'),
(167, 0, 167, 'PER', 'PE', 'Peru', 'Peru', 'Peru'),
(168, 0, 168, 'PHL', 'PH', 'Philippines', 'Philippinen', 'Philippines'),
(169, 0, 169, 'PCN', 'PN', 'Pitcairn', 'Pitcairn', 'Pitcairn'),
(170, 0, 170, 'POL', 'PL', 'Poland', 'Polen', 'Poland'),
(171, 0, 171, 'PRT', 'PT', 'Portugal', 'Portugal', 'Portugal'),
(172, 0, 172, 'PRI', 'PR', 'Puerto Rico', 'Puerto Rico', 'Puerto Rico'),
(173, 0, 173, 'QAT', 'QA', 'Qatar', 'Katar', 'Qatar'),
(174, 0, 174, 'REU', 'RE', 'Reunion', 'Reunion', 'Reunion'),
(175, 0, 175, 'ROM', 'RO', 'Romania', 'Rumänien', 'Romania'),
(176, 0, 176, 'RUS', 'RU', 'Russian Federation', 'Russische Föderation', 'Russian Federation'),
(177, 0, 177, 'RWA', 'RW', 'Rwanda', 'Ruanda', 'Rwanda'),
(178, 0, 178, 'KNA', 'KN', 'Saint Kitts and Nevis', 'St. Kitts und Nevis', 'Saint Kitts and Nevis'),
(179, 0, 179, 'LCA', 'LC', 'Saint Lucia', 'St. Lucia', 'Saint Lucia'),
(180, 0, 180, 'VCT', 'VC', 'Saint Vincent and the Grenadines', 'St. Vincent und die Grenadinen', 'Saint Vincent and the Grenadines'),
(181, 0, 181, 'WSM', 'WS', 'Samoa', 'Samoa', 'Samoa'),
(182, 0, 182, 'SMR', 'SM', 'San Marino', 'San Marino', 'San Marino'),
(183, 0, 183, 'STP', 'ST', 'Sao Tome and Principe', 'Sao Tomé und Príncipe', 'Sao Tome and Principe'),
(184, 0, 184, 'SAU', 'SA', 'Saudi Arabia', 'Saudi-Arabien', 'Saudi Arabia'),
(185, 0, 185, 'SEN', 'SN', 'Senegal', 'Senegal', 'Senegal'),
(186, 0, 186, 'SYC', 'SC', 'Seychelles', 'Seychellen', 'Seychelles'),
(187, 0, 187, 'SLE', 'SL', 'Sierra Leone', 'Sierra Leone', 'Sierra Leone'),
(188, 0, 188, 'SGP', 'SG', 'Singapore', 'Singapur', 'Singapore'),
(189, 0, 189, 'SVK', 'SK', 'Slovakia (Slovak Republic)', 'Slowakei', 'Slovakia (Slovak Republic)'),
(190, 0, 190, 'SVN', 'SI', 'Slovenia', 'Slowenien', 'Slovenia'),
(191, 0, 191, 'SLB', 'SB', 'Solomon Islands', 'Salomonen', 'Solomon Islands'),
(192, 0, 192, 'SOM', 'SO', 'Somalia', 'Somalia', 'Somalia'),
(193, 0, 193, 'ZAF', 'ZA', 'South Africa', 'Republik Südafrika', 'South Africa'),
(194, 0, 194, 'SGS', 'GS', 'South Georgia and the South Sandwich Islands', 'Südgeorgien und die Südlichen Sandwichinseln', 'South Georgia and the South Sandwich Islands'),
(195, 0, 195, 'ESP', 'ES', 'Spain', 'Spanien', 'Spain'),
(196, 0, 196, 'LKA', 'LK', 'Sri Lanka', 'Sri Lanka', 'Sri Lanka'),
(197, 0, 197, 'SHN', 'SH', 'St. Helena', 'St. Helena', 'St. Helena'),
(198, 0, 198, 'SPM', 'PM', 'St. Pierre and Miquelon', 'St. Pierre und Miquelon', 'St. Pierre and Miquelon'),
(199, 0, 199, 'SDN', 'SD', 'Sudan', 'Sudan', 'Sudan'),
(200, 0, 200, 'SUR', 'SR', 'Suriname', 'Suriname', 'Suriname'),
(201, 0, 201, 'SJM', 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard und Jan Mayen', 'Svalbard and Jan Mayen Islands'),
(202, 0, 202, 'SWZ', 'SZ', 'Swaziland', 'Swasiland', 'Swaziland'),
(203, 0, 203, 'SWE', 'SE', 'Sweden', 'Schweden', 'Sweden'),
(204, 0, 204, 'CHE', 'CH', 'Switzerland', 'Schweiz', 'Switzerland'),
(205, 0, 205, 'SYR', 'SY', 'Syrian Arab Republic', 'Syrien', 'Syrian Arab Republic'),
(206, 0, 206, 'TWN', 'TW', 'Taiwan', 'Taiwan', 'Taiwan'),
(207, 0, 207, 'TJK', 'TJ', 'Tajikistan', 'Tadschikistan', 'Tajikistan'),
(208, 0, 208, 'TZA', 'TZ', 'Tanzania United Republic of', 'Tansania', 'Tanzania United Republic of'),
(209, 0, 209, 'THA', 'TH', 'Thailand', 'Thailand', 'Thailand'),
(210, 0, 210, 'TGO', 'TG', 'Togo', 'Togo', 'Togo'),
(211, 0, 211, 'TKL', 'TK', 'Tokelau', 'Tokelau', 'Tokelau'),
(212, 0, 212, 'TON', 'TO', 'Tonga', 'Tonga', 'Tonga'),
(213, 0, 213, 'TTO', 'TT', 'Trinidad and Tobago', 'Trinidad und Tobago', 'Trinidad and Tobago'),
(214, 0, 214, 'TUN', 'TN', 'Tunisia', 'Tunesien', 'Tunisia'),
(215, 0, 215, 'TUR', 'TR', 'Turkey', 'Türkei', 'Turkey'),
(216, 0, 216, 'TKM', 'TM', 'Turkmenistan', 'Turkmenistan', 'Turkmenistan'),
(217, 0, 217, 'TCA', 'TC', 'Turks and Caicos Islands', 'Turks- und Caicosinseln', 'Turks and Caicos Islands'),
(218, 0, 218, 'TUV', 'TV', 'Tuvalu', 'Tuvalu', 'Tuvalu'),
(219, 0, 219, 'UGA', 'UG', 'Uganda', 'Uganda', 'Uganda'),
(220, 1, 220, 'UKR', 'UA', 'Ukraine', 'Ukraine', 'Ukraine'),
(221, 0, 221, 'ARE', 'AE', 'United Arab Emirates', 'Vereinigte Arabische Emirate', 'United Arab Emirates'),
(222, 0, 222, 'GBR', 'GB', 'United Kingdom', 'Vereinigtes Königreich', 'United Kingdom'),
(223, 0, 223, 'USA', 'US', 'United States', 'USA', 'United States'),
(224, 0, 224, 'UMI', 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands'),
(225, 0, 225, 'URY', 'UY', 'Uruguay', 'Uruguay', 'Uruguay'),
(226, 0, 226, 'UZB', 'UZ', 'Uzbekistan', 'Usbekistan', 'Uzbekistan'),
(227, 0, 227, 'VUT', 'VU', 'Vanuatu', 'Vanuatu', 'Vanuatu'),
(228, 0, 228, 'VAT', 'VA', 'Vatican City State (Holy See)', 'Vatikanstadt', 'Vatican City State (Holy See)'),
(229, 0, 229, 'VEN', 'VE', 'Venezuela', 'Venezuela', 'Venezuela'),
(230, 0, 230, 'VNM', 'VN', 'Viet Nam', 'Vietnam', 'Viet Nam'),
(231, 0, 231, 'VGB', 'VG', 'Virgin Islands (British)', 'Britische Jungferninseln', 'Virgin Islands (British)'),
(232, 0, 232, 'VIR', 'VI', 'Virgin Islands (U.S.)', 'Vereinigte Staaten von Amerika', 'Virgin Islands (U.S.)'),
(233, 0, 233, 'WLF', 'WF', 'Wallis and Futuna Islands', 'Wallis und Futuna', 'Wallis and Futuna Islands'),
(234, 0, 234, 'ESH', 'EH', 'Western Sahara', 'Westsahara', 'Western Sahara'),
(235, 0, 235, 'YEM', 'YE', 'Yemen', 'Jemen', 'Yemen'),
(236, 0, 236, 'YUG', 'YU', 'Yugoslavia', 'Yugoslavia', 'Yugoslavia'),
(237, 0, 237, 'ZAR', 'ZR', 'Zaire', 'Zaire', 'Zaire'),
(238, 0, 238, 'ZMB', 'ZM', 'Zambia', 'Sambia', 'Zambia'),
(239, 0, 239, 'ZWE', 'ZW', 'Zimbabwe', 'Simbabwe', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_coupons`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_coupons` (
  `coupon_id` int(11) NOT NULL auto_increment,
  `coupon_type` tinyint(4) NOT NULL default '0' COMMENT 'value_or_percent',
  `coupon_code` varchar(100) NOT NULL default '',
  `coupon_value` decimal(12,2) NOT NULL default '0.00',
  `tax_id` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `for_user_id` int(11) NOT NULL,
  `coupon_start_date` date NOT NULL default '0000-00-00',
  `coupon_expire_date` date NOT NULL default '0000-00-00',
  `finished_after_used` int(11) NOT NULL,
  `coupon_publish` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`coupon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_currencies`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_currencies` (
  `currency_id` int(11) NOT NULL auto_increment,
  `currency_name` varchar(64) NOT NULL default '',
  `currency_code` varchar(20) NOT NULL default '',
  `currency_code_iso` varchar(3) NOT NULL default '',
  `currency_ordering` int(11) NOT NULL default '0',
  `currency_value` decimal(14,6) NOT NULL default '0.000000',
  `currency_publish` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_currencies`
--

INSERT INTO `jos_jshopping_currencies` (`currency_id`, `currency_name`, `currency_code`, `currency_code_iso`, `currency_ordering`, `currency_value`, `currency_publish`) VALUES
(1, 'грн', 'UAH', 'UAH', 2, '1.000000', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_delivery_times`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_delivery_times` (
  `id` int(11) NOT NULL auto_increment,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_free_attr`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_free_attr` (
  `id` int(11) NOT NULL auto_increment,
  `ordering` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_import_export`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_import_export` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `endstart` int(11) NOT NULL,
  `steptime` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `jos_jshopping_import_export`
--

INSERT INTO `jos_jshopping_import_export` (`id`, `name`, `alias`, `description`, `params`, `endstart`, `steptime`) VALUES
(1, 'Simple Export', 'simpleexport', 'Simple Export in CSV iso-8859-1', 'filename=export', 0, 1),
(2, 'Simple Import', 'simpleimport', 'Simple Import in CSV iso-8859-1', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_languages`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_languages` (
  `id` int(11) NOT NULL auto_increment,
  `language` varchar(32) default NULL,
  `name` varchar(255) NOT NULL,
  `publish` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `jos_jshopping_languages`
--

INSERT INTO `jos_jshopping_languages` (`id`, `language`, `name`, `publish`, `ordering`) VALUES
(1, 'en-GB', 'English', 1, 0),
(2, 'ru-RU', 'Russian', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_manufacturers`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_manufacturers` (
  `manufacturer_id` int(11) NOT NULL auto_increment,
  `manufacturer_url` varchar(255) NOT NULL,
  `manufacturer_logo` varchar(255) NOT NULL,
  `manufacturer_publish` tinyint(1) NOT NULL,
  `products_page` int(11) NOT NULL,
  `products_row` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY  (`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_order_history`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_order_history` (
  `order_history_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `order_status_id` tinyint(1) NOT NULL default '0',
  `status_date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `customer_notify` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_order_history`
--

INSERT INTO `jos_jshopping_order_history` (`order_history_id`, `order_id`, `order_status_id`, `status_date_added`, `customer_notify`, `comments`) VALUES
(1, 1, 1, '2012-12-17 00:56:57', 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_order_item`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_order_item` (
  `order_item_id` int(11) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL default '0',
  `product_id` int(11) NOT NULL default '0',
  `product_ean` varchar(50) NOT NULL default '',
  `product_name` varchar(100) NOT NULL default '',
  `product_quantity` decimal(12,2) NOT NULL default '0.00',
  `product_item_price` decimal(12,2) NOT NULL,
  `product_tax` decimal(12,2) NOT NULL default '0.00',
  `product_attributes` text NOT NULL,
  `product_freeattributes` text NOT NULL,
  `attributes` text NOT NULL,
  `freeattributes` text NOT NULL,
  `files` text NOT NULL,
  `weight` float(8,4) NOT NULL default '0.0000',
  `thumb_image` varchar(255) NOT NULL default '',
  `vendor_id` int(11) NOT NULL,
  PRIMARY KEY  (`order_item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_order_item`
--

INSERT INTO `jos_jshopping_order_item` (`order_item_id`, `order_id`, `product_id`, `product_ean`, `product_name`, `product_quantity`, `product_item_price`, `product_tax`, `product_attributes`, `product_freeattributes`, `attributes`, `freeattributes`, `files`, `weight`, `thumb_image`, `vendor_id`) VALUES
(1, 1, 1, '', 'Апельсин', '1.00', '100.00', '19.00', '', '', 'a:0:{}', 'a:0:{}', 'a:0:{}', 0.0000, 'thumb_949536db8fc0f14aacf9706c14f461a0.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_order_status`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_order_status` (
  `status_id` int(11) NOT NULL auto_increment,
  `status_code` char(1) NOT NULL default '',
  `name_en-GB` varchar(100) NOT NULL default '',
  `name_de-DE` varchar(100) NOT NULL default '',
  `name_ru-RU` varchar(100) NOT NULL,
  PRIMARY KEY  (`status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `jos_jshopping_order_status`
--

INSERT INTO `jos_jshopping_order_status` (`status_id`, `status_code`, `name_en-GB`, `name_de-DE`, `name_ru-RU`) VALUES
(1, 'P', 'Pending', 'Offen', 'Pending'),
(2, 'C', 'Confirmed', 'Bestätigt', 'Confirmed'),
(3, 'X', 'Cancelled', 'Abgebrochen', 'Cancelled'),
(4, 'R', 'Refunded', 'Gutschrift', 'Refunded'),
(5, 'S', 'Shipped', 'Gesendet', 'Shipped'),
(6, 'O', 'Paid', 'Bezahlt', 'Paid'),
(7, 'F', 'Complete', 'Abgeschlossen', 'Complete');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_orders`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_orders` (
  `order_id` int(11) NOT NULL auto_increment,
  `order_number` varchar(50) NOT NULL default '0',
  `user_id` int(11) NOT NULL default '0',
  `order_total` decimal(12,2) NOT NULL default '0.00',
  `order_subtotal` decimal(12,2) NOT NULL default '0.00',
  `order_tax` decimal(12,2) NOT NULL default '0.00',
  `order_tax_ext` text NOT NULL,
  `order_shipping` decimal(12,2) NOT NULL default '0.00',
  `order_payment` decimal(12,2) NOT NULL default '0.00',
  `order_discount` decimal(12,2) NOT NULL default '0.00',
  `currency_code` varchar(20) NOT NULL default '',
  `currency_code_iso` varchar(3) NOT NULL default '',
  `currency_exchange` decimal(14,6) NOT NULL default '0.000000',
  `order_status` varchar(1) NOT NULL default '',
  `order_created` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `order_m_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `shipping_method_id` int(11) NOT NULL default '0',
  `payment_method_id` int(11) NOT NULL default '0',
  `payment_params` text NOT NULL,
  `payment_params_data` text NOT NULL,
  `ip_address` varchar(15) NOT NULL default '',
  `order_add_info` text NOT NULL,
  `title` tinyint(1) NOT NULL default '0',
  `f_name` varchar(255) NOT NULL default '',
  `l_name` varchar(255) NOT NULL default '',
  `firma_name` varchar(255) NOT NULL default '',
  `client_type` tinyint(1) NOT NULL,
  `client_type_name` varchar(100) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL default '',
  `street` varchar(100) NOT NULL default '',
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL default '',
  `city` varchar(100) NOT NULL default '',
  `state` varchar(100) NOT NULL default '',
  `country` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL default '',
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL default '',
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `d_title` tinyint(1) NOT NULL default '0',
  `d_f_name` varchar(255) NOT NULL default '',
  `d_l_name` varchar(255) NOT NULL default '',
  `d_firma_name` varchar(255) NOT NULL default '',
  `d_email` varchar(255) NOT NULL default '',
  `d_street` varchar(100) NOT NULL default '',
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL default '',
  `d_city` varchar(100) NOT NULL default '',
  `d_state` varchar(100) NOT NULL default '',
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(30) NOT NULL default '',
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL default '',
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  `pdf_file` varchar(50) NOT NULL,
  `order_hash` varchar(32) NOT NULL default '',
  `file_hash` varchar(64) NOT NULL default '',
  `file_stat_downloads` text NOT NULL,
  `order_custom_info` text NOT NULL,
  `display_price` tinyint(1) NOT NULL,
  `vendor_type` tinyint(1) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `lang` varchar(16) NOT NULL,
  `transaction` text NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_orders`
--

INSERT INTO `jos_jshopping_orders` (`order_id`, `order_number`, `user_id`, `order_total`, `order_subtotal`, `order_tax`, `order_tax_ext`, `order_shipping`, `order_payment`, `order_discount`, `currency_code`, `currency_code_iso`, `currency_exchange`, `order_status`, `order_created`, `order_date`, `order_m_date`, `shipping_method_id`, `payment_method_id`, `payment_params`, `payment_params_data`, `ip_address`, `order_add_info`, `title`, `f_name`, `l_name`, `firma_name`, `client_type`, `client_type_name`, `firma_code`, `tax_number`, `email`, `street`, `home`, `apartment`, `zip`, `city`, `state`, `country`, `phone`, `mobil_phone`, `fax`, `ext_field_1`, `ext_field_2`, `ext_field_3`, `d_title`, `d_f_name`, `d_l_name`, `d_firma_name`, `d_email`, `d_street`, `d_home`, `d_apartment`, `d_zip`, `d_city`, `d_state`, `d_country`, `d_phone`, `d_mobil_phone`, `d_fax`, `d_ext_field_1`, `d_ext_field_2`, `d_ext_field_3`, `pdf_file`, `order_hash`, `file_hash`, `file_stat_downloads`, `order_custom_info`, `display_price`, `vendor_type`, `vendor_id`, `lang`, `transaction`) VALUES
(1, '00000001', 42, '114.00', '100.00', '18.20', 'a:1:{s:5:"19.00";d:18.201680672268910399225205765105783939361572265625;}', '10.00', '4.00', '0.00', 'EUR', 'EUR', '1.000000', '1', 1, '2012-12-17 00:56:57', '2012-12-17 00:56:57', 1, 1, '', '', '109.87.108.167', '', 1, 'ertwertwtwewert', 'retwertwert', 'ertwetr', 0, '', '', '', 'andreyalek@gmail.com', 'gsdfgsdfgsdfg', '', '', '45243523', 'ertwertwet', 'wertwertwertw', 220, '234523523452', '', '', '', '', '', 1, 'ertwertwtwewert', 'retwertwert', 'ertwetr', 'andreyalek@gmail.com', 'gsdfgsdfgsdfg', '', '', '45243523', 'ertwertwet', 'wertwertwertw', 220, '234523523452', '', '', '', '', '', '1_03bea926edc4f61746243818fdcb7514.pdf', '91c501cb29f60b41d32d521d2ab7117e', '471d3c814d7053dc0ab73ebc567adaf4', '', '', 0, 0, 1, 'ru-RU', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_payment_method`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_payment_method` (
  `payment_id` int(11) NOT NULL auto_increment,
  `name_en-GB` varchar(100) NOT NULL,
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL,
  `description_de-DE` text NOT NULL,
  `payment_code` varchar(32) NOT NULL,
  `payment_class` varchar(100) NOT NULL,
  `payment_publish` tinyint(1) NOT NULL,
  `payment_ordering` int(11) NOT NULL,
  `payment_params` text NOT NULL,
  `payment_type` tinyint(4) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_type` tinyint(1) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `show_descr_in_email` tinyint(1) NOT NULL,
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY  (`payment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `jos_jshopping_payment_method`
--

INSERT INTO `jos_jshopping_payment_method` (`payment_id`, `name_en-GB`, `description_en-GB`, `name_de-DE`, `description_de-DE`, `payment_code`, `payment_class`, `payment_publish`, `payment_ordering`, `payment_params`, `payment_type`, `price`, `price_type`, `tax_id`, `image`, `show_descr_in_email`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 'Cash on delivery', '', 'Nachnahme', '', 'bank', 'pm_bank', 1, 1, '', 1, '0.00', 1, 1, '', 0, 'Наличными при доставке', ''),
(2, 'Advance payment', '', 'Vorauskasse', '', 'PO', 'pm_purchase_order', 0, 2, '', 1, '0.00', 0, 1, '', 1, 'Advance payment', ''),
(3, 'Paypal', '', 'Paypal', '', 'paypal', 'pm_paypal', 0, 3, 'testmode=1\n email_received=test@testing.com\n transaction_end_status=6\n transaction_pending_status=1\n transaction_failed_status=3\n checkdatareturn=0', 2, '0.00', 0, 1, '', 0, 'Paypal', ''),
(4, 'Debit', 'Please insert your bankdata.', 'Lastschrift', 'Bitte tragen Sie hier Ihre Bankdaten für den Abbuchungsauftrag ein.', 'debit', 'pm_debit', 0, 4, '', 1, '0.00', 0, 1, '', 0, 'Debit', 'Please insert your bankdata.'),
(5, 'Sofortueberweisung', '', 'Sofortueberweisung', '', 'ST', 'pm_sofortueberweisung', 0, 5, 'user_id=00000\nproject_id=00000\nproject_password=00000\ntransaction_end_status=6\ntransaction_pending_status=1\ntransaction_failed_status=3\n', 2, '0.00', 0, 1, '', 0, 'Sofortueberweisung', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_product_labels`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_product_labels` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `jos_jshopping_product_labels`
--

INSERT INTO `jos_jshopping_product_labels` (`id`, `name`, `image`) VALUES
(1, 'New', 'new.png'),
(2, 'Sale', 'sale.png');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products` (
  `product_id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL,
  `product_ean` varchar(32) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `unlimited` tinyint(1) NOT NULL,
  `product_availability` varchar(128) NOT NULL,
  `product_date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_modify` datetime NOT NULL default '0000-00-00 00:00:00',
  `product_publish` tinyint(1) NOT NULL default '0',
  `product_tax_id` tinyint(3) NOT NULL default '0',
  `currency_id` int(4) NOT NULL default '0',
  `product_template` varchar(64) NOT NULL default 'default',
  `product_url` varchar(255) NOT NULL default '',
  `product_old_price` decimal(12,2) NOT NULL default '0.00',
  `product_buy_price` decimal(12,2) NOT NULL default '0.00',
  `product_price` decimal(18,6) NOT NULL default '0.000000',
  `min_price` decimal(12,2) NOT NULL default '0.00',
  `different_prices` tinyint(1) NOT NULL default '0',
  `product_weight` decimal(14,4) NOT NULL default '0.0000',
  `product_thumb_image` varchar(255) NOT NULL,
  `product_name_image` varchar(255) NOT NULL,
  `product_full_image` varchar(255) NOT NULL,
  `product_manufacturer_id` int(11) NOT NULL default '0',
  `product_is_add_price` tinyint(1) NOT NULL default '0',
  `add_price_unit_id` int(3) NOT NULL default '0',
  `average_rating` float(4,2) NOT NULL default '0.00',
  `reviews_count` int(11) NOT NULL default '0',
  `delivery_times_id` int(4) NOT NULL default '0',
  `hits` int(11) NOT NULL default '0',
  `weight_volume_units` decimal(14,4) NOT NULL default '0.0000',
  `basic_price_unit_id` int(3) NOT NULL default '0',
  `label_id` int(11) NOT NULL default '0',
  `vendor_id` int(11) NOT NULL default '0',
  `access` int(3) NOT NULL default '1',
  `name_en-GB` varchar(255) NOT NULL,
  `alias_en-GB` varchar(255) NOT NULL,
  `short_description_en-GB` text NOT NULL,
  `description_en-GB` text NOT NULL,
  `meta_title_en-GB` varchar(255) NOT NULL,
  `meta_description_en-GB` text NOT NULL,
  `meta_keyword_en-GB` text NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  `alias_ru-RU` varchar(255) NOT NULL,
  `short_description_ru-RU` text NOT NULL,
  `description_ru-RU` text NOT NULL,
  `meta_title_ru-RU` varchar(255) NOT NULL,
  `meta_description_ru-RU` text NOT NULL,
  `meta_keyword_ru-RU` text NOT NULL,
  PRIMARY KEY  (`product_id`),
  KEY `product_manufacturer_id` (`product_manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `jos_jshopping_products`
--

INSERT INTO `jos_jshopping_products` (`product_id`, `parent_id`, `product_ean`, `product_quantity`, `unlimited`, `product_availability`, `product_date_added`, `date_modify`, `product_publish`, `product_tax_id`, `currency_id`, `product_template`, `product_url`, `product_old_price`, `product_buy_price`, `product_price`, `min_price`, `different_prices`, `product_weight`, `product_thumb_image`, `product_name_image`, `product_full_image`, `product_manufacturer_id`, `product_is_add_price`, `add_price_unit_id`, `average_rating`, `reviews_count`, `delivery_times_id`, `hits`, `weight_volume_units`, `basic_price_unit_id`, `label_id`, `vendor_id`, `access`, `name_en-GB`, `alias_en-GB`, `short_description_en-GB`, `description_en-GB`, `meta_title_en-GB`, `meta_description_en-GB`, `meta_keyword_en-GB`, `name_ru-RU`, `alias_ru-RU`, `short_description_ru-RU`, `description_ru-RU`, `meta_title_ru-RU`, `meta_description_ru-RU`, `meta_keyword_ru-RU`) VALUES
(21, 0, '', 1, 0, '', '2012-12-21 22:39:13', '2012-12-21 22:39:13', 1, 1, 1, 'default', '', '0.00', '0.00', '60.000000', '60.00', 0, '0.0000', 'thumb_96b9352e4ec68fa2662018894d25eda6.JPG', '96b9352e4ec68fa2662018894d25eda6.JPG', 'full_96b9352e4ec68fa2662018894d25eda6.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Мягкое место', 'softplace', '', '', '', '', ''),
(22, 0, '', 1, 0, '', '2012-12-21 22:41:23', '2012-12-21 22:41:23', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_e30748901f3a4632dcaf9033a8183160.JPG', 'e30748901f3a4632dcaf9033a8183160.JPG', 'full_e30748901f3a4632dcaf9033a8183160.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Красная мишень', 'redtarget', '', '', '', '', ''),
(23, 0, '', 1, 0, '', '2012-12-21 22:44:43', '2012-12-21 22:44:43', 1, 1, 1, 'default', '', '0.00', '0.00', '60.000000', '60.00', 0, '0.0000', 'thumb_e60b22e82bd554908654aa959c8482ad.JPG', 'e60b22e82bd554908654aa959c8482ad.JPG', 'full_e60b22e82bd554908654aa959c8482ad.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Квадрат', 'square', '', '', '', '', ''),
(24, 0, '', 1, 0, '', '2012-12-21 22:45:57', '2012-12-21 22:45:57', 1, 1, 1, 'default', '', '0.00', '0.00', '60.000000', '60.00', 0, '0.0000', 'thumb_f271b6328b643ee25d4c4a9855f523ac.JPG', 'f271b6328b643ee25d4c4a9855f523ac.JPG', 'full_f271b6328b643ee25d4c4a9855f523ac.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Треугольник', 'triangle', '', '', '', '', ''),
(25, 0, '', 1, 0, '', '2012-12-21 22:47:30', '2012-12-21 22:47:30', 1, 1, 1, 'default', '', '0.00', '0.00', '60.000000', '60.00', 0, '0.0000', 'thumb_42f6f7f008a18a781a3f17cdaba0ee5f.JPG', '42f6f7f008a18a781a3f17cdaba0ee5f.JPG', 'full_42f6f7f008a18a781a3f17cdaba0ee5f.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Круг', 'circle', '', '', '', '', ''),
(26, 0, '', 1, 0, '', '2012-12-21 22:50:28', '2012-12-21 22:50:28', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_01ee3e3f116388b98ecf50f88a35f6a2.JPG', '01ee3e3f116388b98ecf50f88a35f6a2.JPG', 'full_01ee3e3f116388b98ecf50f88a35f6a2.JPG', 0, 0, 3, 0.00, 0, 0, 1, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Black''n''white', 'black-and-white', '', '', '', '', ''),
(27, 0, '', 1, 0, '', '2012-12-21 22:52:13', '2012-12-21 22:52:37', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_970e42a83da4bfb543ad7832eb7d6715.JPG', '970e42a83da4bfb543ad7832eb7d6715.JPG', 'full_970e42a83da4bfb543ad7832eb7d6715.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Черно-красный', 'black-and-red', '', '', '', '', ''),
(28, 0, '', 1, 0, '', '2012-12-21 22:53:55', '2012-12-21 22:53:55', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_3b06c8ba315db9538c78e6e909ce7dfb.JPG', '3b06c8ba315db9538c78e6e909ce7dfb.JPG', 'full_3b06c8ba315db9538c78e6e909ce7dfb.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Бело-черный', 'white-and-black', '', '', '', '', ''),
(29, 0, '', 1, 0, '', '2012-12-21 22:55:23', '2012-12-21 22:55:23', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_b95924b16825f0405d1e5cf504188eeb.JPG', 'b95924b16825f0405d1e5cf504188eeb.JPG', 'full_b95924b16825f0405d1e5cf504188eeb.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Красно-черный', 'red-and-black', '', '', '', '', ''),
(30, 0, '', 1, 0, '', '2012-12-21 22:56:46', '2012-12-21 22:56:46', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_19245a5e2812988b12399cdd9fd97440.JPG', '19245a5e2812988b12399cdd9fd97440.JPG', 'full_19245a5e2812988b12399cdd9fd97440.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Красно-белый', 'red-aand-white', '', '', '', '', ''),
(20, 0, '', 1, 0, '', '2012-12-21 22:33:30', '2012-12-21 22:33:30', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_5af27f67f65ec4cdee9026064e78ed68.JPG', '5af27f67f65ec4cdee9026064e78ed68.JPG', 'full_5af27f67f65ec4cdee9026064e78ed68.JPG', 0, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Мишень осенняя', 'autumn-target', '', '', '', '', ''),
(19, 0, '', 1, 0, '', '2012-12-21 22:29:12', '2012-12-21 22:30:59', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_16cc7d2801060e40ca4e955600b6cdc0.JPG', '16cc7d2801060e40ca4e955600b6cdc0.JPG', 'full_16cc7d2801060e40ca4e955600b6cdc0.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'ВКонтакте / Вова / Boss / 13', 'theb', '', '', '', '', ''),
(14, 0, '', 1, 0, '', '2012-12-21 22:10:42', '2012-12-21 22:18:54', 1, 1, 1, 'default', '', '0.00', '0.00', '120.000000', '120.00', 0, '0.0000', 'thumb_7b3d662f3623a726092b4b364472fa3a.JPG', '7b3d662f3623a726092b4b364472fa3a.JPG', 'full_7b3d662f3623a726092b4b364472fa3a.JPG', 0, 0, 3, 0.00, 0, 0, 6, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Скайп', 'skype', '', '', '', '', ''),
(15, 0, '', 1, 0, '', '2012-12-21 22:20:49', '2012-12-21 22:21:15', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_da8126cef814f11dcf0d895d4e55f4fe.JPG', 'da8126cef814f11dcf0d895d4e55f4fe.JPG', 'full_da8126cef814f11dcf0d895d4e55f4fe.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Синяя мишень', 'bluetarget', '', '', '', '', ''),
(16, 0, '', 1, 0, '', '2012-12-21 22:22:30', '2012-12-21 22:22:30', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_0d7cc292ac745db9e5954e333b3383e7.JPG', '0d7cc292ac745db9e5954e333b3383e7.JPG', 'full_0d7cc292ac745db9e5954e333b3383e7.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Твиттер летающий', 'flytweeterfly', '', '', '', '', ''),
(17, 0, '', 1, 0, '', '2012-12-21 22:22:41', '2012-12-21 22:25:22', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG', 'f5c63dd6b39cfacaf413ca1d7e4e0262.JPG', 'full_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG', 0, 0, 3, 0.00, 0, 0, 1, '0.0000', 0, 0, 0, 1, '', '121221222241', '', '', '', '', '', 'Твиттер буквальный', 'tweeter-literaly', '', '', '', '', ''),
(18, 0, '', 1, 0, '', '2012-12-21 22:28:06', '2012-12-21 22:28:06', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_2720bd41cee7e773bb5ca34f97fdea98.JPG', '2720bd41cee7e773bb5ca34f97fdea98.JPG', 'full_2720bd41cee7e773bb5ca34f97fdea98.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Фейсбук', 'facebook', '', '', '', '', ''),
(31, 0, '', 1, 0, '', '2012-12-21 22:58:15', '2012-12-21 22:58:15', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_e35c32c93a9c061f665f38a23ac339ab.JPG', 'e35c32c93a9c061f665f38a23ac339ab.JPG', 'full_e35c32c93a9c061f665f38a23ac339ab.JPG', 0, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Бело-красный', 'white-and-red', '', '', '', '', ''),
(32, 0, '', 1, 0, '', '2012-12-21 23:00:24', '2012-12-22 00:25:13', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_40b54a81904e18e0b915d707c8611e9a.JPG', '40b54a81904e18e0b915d707c8611e9a.JPG', 'full_40b54a81904e18e0b915d707c8611e9a.JPG', 0, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Белогривая лошадка', 'whitehead-horse', '', '', '', '', ''),
(33, 0, '', 1, 0, '', '2012-12-22 00:10:25', '2012-12-22 00:10:25', 1, 1, 1, 'default', '', '0.00', '0.00', '60.000000', '60.00', 0, '0.0000', 'thumb_80b8a06eef4b3d90e5cf501946b15c31.JPG', '80b8a06eef4b3d90e5cf501946b15c31.JPG', 'full_80b8a06eef4b3d90e5cf501946b15c31.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Спика', 'spica', '', '', '', '', ''),
(34, 0, '', 1, 0, '', '2012-12-22 00:11:38', '2012-12-22 00:11:38', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_2567a407fa2143fc141d183429921de0.JPG', '2567a407fa2143fc141d183429921de0.JPG', 'full_2567a407fa2143fc141d183429921de0.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Ctrl', 'ctrl', '', '', '', '', ''),
(35, 0, '', 1, 0, '', '2012-12-22 00:12:23', '2012-12-22 00:12:23', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_4bbc43419a19a8d3151cf61e4a9b2094.JPG', '4bbc43419a19a8d3151cf61e4a9b2094.JPG', 'full_4bbc43419a19a8d3151cf61e4a9b2094.JPG', 0, 0, 3, 0.00, 0, 0, 1, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Alt', 'alt', '', '', '', '', ''),
(36, 0, '', 1, 0, '', '2012-12-22 00:13:15', '2012-12-22 00:13:15', 1, 1, 1, 'default', '', '0.00', '0.00', '80.000000', '80.00', 0, '0.0000', 'thumb_480bff4608f1515b6dc012e06b798d49.JPG', '480bff4608f1515b6dc012e06b798d49.JPG', 'full_480bff4608f1515b6dc012e06b798d49.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Del', 'del', '', '', '', '', ''),
(37, 0, '', 1, 0, '', '2012-12-22 00:16:41', '2012-12-22 00:16:41', 1, 1, 1, 'default', '', '0.00', '0.00', '200.000000', '200.00', 0, '0.0000', 'thumb_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG', 'bb7a60cdc78b8d13f5ea2148f608f2ad.JPG', 'full_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Перезагрузка', 'reboot', '', '', '', '', ''),
(38, 0, '', 1, 0, '', '2012-12-22 00:39:05', '2012-12-22 00:40:35', 1, 1, 1, 'default', '', '0.00', '0.00', '350.000000', '350.00', 0, '0.0000', 'thumb_1d8bda1e135e3d49c7540a5880b97351.JPG', '1d8bda1e135e3d49c7540a5880b97351.JPG', 'full_1d8bda1e135e3d49c7540a5880b97351.JPG', 0, 0, 3, 0.00, 0, 0, 0, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Диван друга', 'friends-divan', '', '', '', '', ''),
(39, 0, '', 1, 0, '', '2012-12-22 00:56:39', '2012-12-22 00:59:15', 1, 1, 1, 'default', '', '0.00', '0.00', '180.000000', '180.00', 0, '0.0000', 'thumb_493b5488e1a85ee455e10855bdf28f19.JPG', '493b5488e1a85ee455e10855bdf28f19.JPG', 'full_493b5488e1a85ee455e10855bdf28f19.JPG', 0, 0, 3, 0.00, 0, 0, 2, '0.0000', 0, 0, 0, 1, '', '', '', '', '', '', '', 'Цветастый пуф в ассортименте', 'color-puf', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_attr`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_attr` (
  `product_attr_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `buy_price` decimal(12,2) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `old_price` decimal(12,2) NOT NULL,
  `count` int(11) NOT NULL,
  `ean` varchar(100) NOT NULL,
  `weight` decimal(12,4) NOT NULL,
  `weight_volume_units` decimal(12,2) NOT NULL,
  `ext_attribute_product_id` int(11) NOT NULL,
  `attr_2` int(11) NOT NULL,
  PRIMARY KEY  (`product_attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_attr2`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_attr2` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  `attr_value_id` int(11) NOT NULL,
  `price_mod` char(1) NOT NULL,
  `addprice` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_extra_field_groups`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_extra_field_groups` (
  `id` int(11) NOT NULL auto_increment,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_extra_field_values`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_extra_field_values` (
  `id` int(11) NOT NULL auto_increment,
  `field_id` int(11) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_extra_fields`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_extra_fields` (
  `id` int(11) NOT NULL auto_increment,
  `allcats` tinyint(1) NOT NULL,
  `cats` text NOT NULL,
  `type` tinyint(1) NOT NULL,
  `group` tinyint(4) NOT NULL,
  `ordering` int(6) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_files`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_files` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `demo_descr` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_descr` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_free_attr`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_free_attr` (
  `id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `product_id` (`product_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_images`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_images` (
  `image_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `image_thumb` varchar(255) NOT NULL default '',
  `image_name` varchar(255) NOT NULL default '',
  `image_full` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `ordering` tinyint(4) NOT NULL,
  PRIMARY KEY  (`image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Дамп данных таблицы `jos_jshopping_products_images`
--

INSERT INTO `jos_jshopping_products_images` (`image_id`, `product_id`, `image_thumb`, `image_name`, `image_full`, `name`, `ordering`) VALUES
(31, 17, 'thumb_f0d797541feb36091001cf5cacb5beab.JPG', 'f0d797541feb36091001cf5cacb5beab.JPG', 'full_f0d797541feb36091001cf5cacb5beab.JPG', '', 2),
(30, 17, 'thumb_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG', 'f5c63dd6b39cfacaf413ca1d7e4e0262.JPG', 'full_f5c63dd6b39cfacaf413ca1d7e4e0262.JPG', '', 1),
(24, 15, 'thumb_d7245f59d2d405b969637ae31c369073.JPG', 'd7245f59d2d405b969637ae31c369073.JPG', 'full_d7245f59d2d405b969637ae31c369073.JPG', '', 2),
(25, 15, 'thumb_61cc6e412c1b452fb22e143ed828adf2.JPG', '61cc6e412c1b452fb22e143ed828adf2.JPG', 'full_61cc6e412c1b452fb22e143ed828adf2.JPG', '', 3),
(26, 16, 'thumb_0d7cc292ac745db9e5954e333b3383e7.JPG', '0d7cc292ac745db9e5954e333b3383e7.JPG', 'full_0d7cc292ac745db9e5954e333b3383e7.JPG', '', 1),
(27, 16, 'thumb_fcbdb3e61c1f386239aa032b0c29959d.JPG', 'fcbdb3e61c1f386239aa032b0c29959d.JPG', 'full_fcbdb3e61c1f386239aa032b0c29959d.JPG', '', 2),
(21, 14, 'thumb_7b3d662f3623a726092b4b364472fa3a.JPG', '7b3d662f3623a726092b4b364472fa3a.JPG', 'full_7b3d662f3623a726092b4b364472fa3a.JPG', '', 1),
(22, 14, 'thumb_be076a9cdd3f0ef33f3137519070c342.JPG', 'be076a9cdd3f0ef33f3137519070c342.JPG', 'full_be076a9cdd3f0ef33f3137519070c342.JPG', '', 2),
(23, 15, 'thumb_da8126cef814f11dcf0d895d4e55f4fe.JPG', 'da8126cef814f11dcf0d895d4e55f4fe.JPG', 'full_da8126cef814f11dcf0d895d4e55f4fe.JPG', '', 1),
(32, 18, 'thumb_2720bd41cee7e773bb5ca34f97fdea98.JPG', '2720bd41cee7e773bb5ca34f97fdea98.JPG', 'full_2720bd41cee7e773bb5ca34f97fdea98.JPG', '', 1),
(33, 18, 'thumb_9cc871e1c0c47e74cdffeef9ce5e67db.JPG', '9cc871e1c0c47e74cdffeef9ce5e67db.JPG', 'full_9cc871e1c0c47e74cdffeef9ce5e67db.JPG', '', 2),
(34, 19, 'thumb_16cc7d2801060e40ca4e955600b6cdc0.JPG', '16cc7d2801060e40ca4e955600b6cdc0.JPG', 'full_16cc7d2801060e40ca4e955600b6cdc0.JPG', '', 1),
(35, 19, 'thumb_7c12462fd5b2dbfa179398417f5ccfb2.JPG', '7c12462fd5b2dbfa179398417f5ccfb2.JPG', 'full_7c12462fd5b2dbfa179398417f5ccfb2.JPG', '', 2),
(36, 20, 'thumb_5af27f67f65ec4cdee9026064e78ed68.JPG', '5af27f67f65ec4cdee9026064e78ed68.JPG', 'full_5af27f67f65ec4cdee9026064e78ed68.JPG', '', 1),
(37, 20, 'thumb_46fb9e73ed2825cee5e42bddc3714ecf.JPG', '46fb9e73ed2825cee5e42bddc3714ecf.JPG', 'full_46fb9e73ed2825cee5e42bddc3714ecf.JPG', '', 2),
(38, 20, 'thumb_02553d7d721c79786959958979573f46.JPG', '02553d7d721c79786959958979573f46.JPG', 'full_02553d7d721c79786959958979573f46.JPG', '', 3),
(39, 21, 'thumb_96b9352e4ec68fa2662018894d25eda6.JPG', '96b9352e4ec68fa2662018894d25eda6.JPG', 'full_96b9352e4ec68fa2662018894d25eda6.JPG', '', 1),
(40, 21, 'thumb_8e62119278f9b185dd4d848f3d7f8e53.JPG', '8e62119278f9b185dd4d848f3d7f8e53.JPG', 'full_8e62119278f9b185dd4d848f3d7f8e53.JPG', '', 2),
(41, 21, 'thumb_d2643b83d39d20ae8fc3aee210546e04.JPG', 'd2643b83d39d20ae8fc3aee210546e04.JPG', 'full_d2643b83d39d20ae8fc3aee210546e04.JPG', '', 3),
(42, 22, 'thumb_e30748901f3a4632dcaf9033a8183160.JPG', 'e30748901f3a4632dcaf9033a8183160.JPG', 'full_e30748901f3a4632dcaf9033a8183160.JPG', '', 1),
(43, 22, 'thumb_3f4430552753dc15f52b2b3d64040371.JPG', '3f4430552753dc15f52b2b3d64040371.JPG', 'full_3f4430552753dc15f52b2b3d64040371.JPG', '', 2),
(44, 23, 'thumb_e60b22e82bd554908654aa959c8482ad.JPG', 'e60b22e82bd554908654aa959c8482ad.JPG', 'full_e60b22e82bd554908654aa959c8482ad.JPG', '', 1),
(45, 23, 'thumb_5399ab40de5cdf2c263f8e56acc469d7.JPG', '5399ab40de5cdf2c263f8e56acc469d7.JPG', 'full_5399ab40de5cdf2c263f8e56acc469d7.JPG', '', 2),
(46, 24, 'thumb_f271b6328b643ee25d4c4a9855f523ac.JPG', 'f271b6328b643ee25d4c4a9855f523ac.JPG', 'full_f271b6328b643ee25d4c4a9855f523ac.JPG', '', 1),
(47, 24, 'thumb_0eb888953434fbc430f7cd0c03b32a54.JPG', '0eb888953434fbc430f7cd0c03b32a54.JPG', 'full_0eb888953434fbc430f7cd0c03b32a54.JPG', '', 2),
(48, 25, 'thumb_42f6f7f008a18a781a3f17cdaba0ee5f.JPG', '42f6f7f008a18a781a3f17cdaba0ee5f.JPG', 'full_42f6f7f008a18a781a3f17cdaba0ee5f.JPG', '', 1),
(49, 25, 'thumb_70d04722a18969ac25e8d0d143425eef.JPG', '70d04722a18969ac25e8d0d143425eef.JPG', 'full_70d04722a18969ac25e8d0d143425eef.JPG', '', 2),
(50, 26, 'thumb_01ee3e3f116388b98ecf50f88a35f6a2.JPG', '01ee3e3f116388b98ecf50f88a35f6a2.JPG', 'full_01ee3e3f116388b98ecf50f88a35f6a2.JPG', '', 1),
(51, 26, 'thumb_83051a22d195b8e25716a79f9dffda73.JPG', '83051a22d195b8e25716a79f9dffda73.JPG', 'full_83051a22d195b8e25716a79f9dffda73.JPG', '', 2),
(52, 27, 'thumb_970e42a83da4bfb543ad7832eb7d6715.JPG', '970e42a83da4bfb543ad7832eb7d6715.JPG', 'full_970e42a83da4bfb543ad7832eb7d6715.JPG', '', 1),
(53, 27, 'thumb_f0dce7ef871870bd43f2bf3e17274748.JPG', 'f0dce7ef871870bd43f2bf3e17274748.JPG', 'full_f0dce7ef871870bd43f2bf3e17274748.JPG', '', 2),
(54, 28, 'thumb_3b06c8ba315db9538c78e6e909ce7dfb.JPG', '3b06c8ba315db9538c78e6e909ce7dfb.JPG', 'full_3b06c8ba315db9538c78e6e909ce7dfb.JPG', '', 1),
(55, 28, 'thumb_e7b7e7b15c2fefe1547bcec94c05514b.JPG', 'e7b7e7b15c2fefe1547bcec94c05514b.JPG', 'full_e7b7e7b15c2fefe1547bcec94c05514b.JPG', '', 2),
(56, 28, 'thumb_5a4e4b61fa8534a5ec253ea5dea57fd2.JPG', '5a4e4b61fa8534a5ec253ea5dea57fd2.JPG', 'full_5a4e4b61fa8534a5ec253ea5dea57fd2.JPG', '', 3),
(57, 29, 'thumb_b95924b16825f0405d1e5cf504188eeb.JPG', 'b95924b16825f0405d1e5cf504188eeb.JPG', 'full_b95924b16825f0405d1e5cf504188eeb.JPG', '', 1),
(58, 29, 'thumb_5f1990dab64c2457985c2f1ce387668d.JPG', '5f1990dab64c2457985c2f1ce387668d.JPG', 'full_5f1990dab64c2457985c2f1ce387668d.JPG', '', 2),
(59, 29, 'thumb_b39b47061d6d4d1fa0ea16076d88c2b2.JPG', 'b39b47061d6d4d1fa0ea16076d88c2b2.JPG', 'full_b39b47061d6d4d1fa0ea16076d88c2b2.JPG', '', 3),
(60, 30, 'thumb_19245a5e2812988b12399cdd9fd97440.JPG', '19245a5e2812988b12399cdd9fd97440.JPG', 'full_19245a5e2812988b12399cdd9fd97440.JPG', '', 1),
(61, 30, 'thumb_cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG', 'cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG', 'full_cdd3b7d8fbe7384c34b88dcfeaeaeac2.JPG', '', 2),
(62, 30, 'thumb_fb947da2d2d2a2f251c04ceeeb10f578.JPG', 'fb947da2d2d2a2f251c04ceeeb10f578.JPG', 'full_fb947da2d2d2a2f251c04ceeeb10f578.JPG', '', 3),
(63, 31, 'thumb_e35c32c93a9c061f665f38a23ac339ab.JPG', 'e35c32c93a9c061f665f38a23ac339ab.JPG', 'full_e35c32c93a9c061f665f38a23ac339ab.JPG', '', 1),
(64, 31, 'thumb_324b445f60492743cf0215273245935e.JPG', '324b445f60492743cf0215273245935e.JPG', 'full_324b445f60492743cf0215273245935e.JPG', '', 2),
(65, 32, 'thumb_40b54a81904e18e0b915d707c8611e9a.JPG', '40b54a81904e18e0b915d707c8611e9a.JPG', 'full_40b54a81904e18e0b915d707c8611e9a.JPG', '', 1),
(66, 32, 'thumb_6911248a1ed819526ec025c21165db5d.JPG', '6911248a1ed819526ec025c21165db5d.JPG', 'full_6911248a1ed819526ec025c21165db5d.JPG', '', 2),
(67, 32, 'thumb_e74016cdf7588e8d5c4eae62ebe7d266.JPG', 'e74016cdf7588e8d5c4eae62ebe7d266.JPG', 'full_e74016cdf7588e8d5c4eae62ebe7d266.JPG', '', 3),
(68, 33, 'thumb_80b8a06eef4b3d90e5cf501946b15c31.JPG', '80b8a06eef4b3d90e5cf501946b15c31.JPG', 'full_80b8a06eef4b3d90e5cf501946b15c31.JPG', '', 1),
(69, 33, 'thumb_439d18356c66d69dfead4e2a5c709aee.JPG', '439d18356c66d69dfead4e2a5c709aee.JPG', 'full_439d18356c66d69dfead4e2a5c709aee.JPG', '', 2),
(70, 34, 'thumb_2567a407fa2143fc141d183429921de0.JPG', '2567a407fa2143fc141d183429921de0.JPG', 'full_2567a407fa2143fc141d183429921de0.JPG', '', 1),
(76, 37, 'thumb_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG', 'bb7a60cdc78b8d13f5ea2148f608f2ad.JPG', 'full_bb7a60cdc78b8d13f5ea2148f608f2ad.JPG', '', 1),
(77, 38, 'thumb_1d8bda1e135e3d49c7540a5880b97351.JPG', '1d8bda1e135e3d49c7540a5880b97351.JPG', 'full_1d8bda1e135e3d49c7540a5880b97351.JPG', '', 1),
(73, 35, 'thumb_4bbc43419a19a8d3151cf61e4a9b2094.JPG', '4bbc43419a19a8d3151cf61e4a9b2094.JPG', 'full_4bbc43419a19a8d3151cf61e4a9b2094.JPG', '', 1),
(74, 35, 'thumb_4a409348029a99c5eb381aae9b60a3ee.JPG', '4a409348029a99c5eb381aae9b60a3ee.JPG', 'full_4a409348029a99c5eb381aae9b60a3ee.JPG', '', 2),
(75, 36, 'thumb_480bff4608f1515b6dc012e06b798d49.JPG', '480bff4608f1515b6dc012e06b798d49.JPG', 'full_480bff4608f1515b6dc012e06b798d49.JPG', '', 1),
(78, 38, 'thumb_2c4ac35e463f5cc6dd87de0f2d2977c0.JPG', '2c4ac35e463f5cc6dd87de0f2d2977c0.JPG', 'full_2c4ac35e463f5cc6dd87de0f2d2977c0.JPG', '', 2),
(79, 38, 'thumb_4c92eeffda0a96a33c3f17168b01a30d.JPG', '4c92eeffda0a96a33c3f17168b01a30d.JPG', 'full_4c92eeffda0a96a33c3f17168b01a30d.JPG', '', 3),
(80, 38, 'thumb_88a41996418232dd7a28fefcdd1b950b.JPG', '88a41996418232dd7a28fefcdd1b950b.JPG', 'full_88a41996418232dd7a28fefcdd1b950b.JPG', '', 4),
(81, 39, 'thumb_7c0ee62d18ff0430f923aa843e3b8ec6.JPG', '7c0ee62d18ff0430f923aa843e3b8ec6.JPG', 'full_7c0ee62d18ff0430f923aa843e3b8ec6.JPG', '', 1),
(82, 39, 'thumb_d43f07a307b2575d85e922eee83d1339.JPG', 'd43f07a307b2575d85e922eee83d1339.JPG', 'full_d43f07a307b2575d85e922eee83d1339.JPG', '', 2),
(83, 39, 'thumb_f586c357295aa379e543fb8ff498a300.JPG', 'f586c357295aa379e543fb8ff498a300.JPG', 'full_f586c357295aa379e543fb8ff498a300.JPG', '', 3),
(84, 39, 'thumb_493b5488e1a85ee455e10855bdf28f19.JPG', '493b5488e1a85ee455e10855bdf28f19.JPG', 'full_493b5488e1a85ee455e10855bdf28f19.JPG', '', 4),
(85, 39, 'thumb_b9adeafde9792fab292035c68b5b53dc.JPG', 'b9adeafde9792fab292035c68b5b53dc.JPG', 'full_b9adeafde9792fab292035c68b5b53dc.JPG', '', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_prices`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_prices` (
  `price_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `discount` decimal(16,6) NOT NULL,
  `product_quantity_start` int(11) NOT NULL,
  `product_quantity_finish` int(11) NOT NULL,
  PRIMARY KEY  (`price_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_relations`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_relations` (
  `product_id` int(11) NOT NULL default '0',
  `product_related_id` int(11) NOT NULL default '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_reviews`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_reviews` (
  `review_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `time` date NOT NULL,
  `review` text NOT NULL,
  `mark` int(11) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  PRIMARY KEY  (`review_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_to_categories`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_to_categories` (
  `product_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  `product_ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_jshopping_products_to_categories`
--

INSERT INTO `jos_jshopping_products_to_categories` (`product_id`, `category_id`, `product_ordering`) VALUES
(29, 8, 4),
(28, 8, 3),
(27, 8, 2),
(26, 8, 1),
(25, 2, 3),
(24, 2, 2),
(14, 7, 1),
(15, 10, 1),
(16, 7, 2),
(17, 7, 3),
(19, 7, 5),
(18, 7, 4),
(21, 10, 3),
(20, 10, 2),
(23, 2, 1),
(22, 10, 4),
(30, 8, 5),
(31, 8, 6),
(32, 10, 5),
(33, 6, 1),
(34, 7, 6),
(35, 7, 7),
(36, 7, 8),
(37, 7, 9),
(38, 12, 1),
(39, 13, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_products_videos`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_products_videos` (
  `video_id` int(11) NOT NULL auto_increment,
  `product_id` int(11) NOT NULL default '0',
  `video_name` varchar(255) NOT NULL default '',
  `video_preview` varchar(255) NOT NULL,
  PRIMARY KEY  (`video_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_shipping_ext_calc`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_shipping_ext_calc` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `params` text NOT NULL,
  `shipping_method` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `ordering` int(6) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_shipping_ext_calc`
--

INSERT INTO `jos_jshopping_shipping_ext_calc` (`id`, `name`, `alias`, `description`, `params`, `shipping_method`, `published`, `ordering`) VALUES
(1, 'StandartWeight', 'sm_standart_weight', 'StandartWeight', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_shipping_method`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_shipping_method` (
  `shipping_id` int(11) NOT NULL auto_increment,
  `name_en-GB` varchar(100) NOT NULL default '',
  `description_en-GB` text NOT NULL,
  `name_de-DE` varchar(100) NOT NULL default '',
  `description_de-DE` text NOT NULL,
  `published` tinyint(1) NOT NULL default '0',
  `payments` varchar(255) NOT NULL default '',
  `image` varchar(255) NOT NULL,
  `ordering` int(6) NOT NULL default '0',
  `name_ru-RU` varchar(100) NOT NULL,
  `description_ru-RU` text NOT NULL,
  PRIMARY KEY  (`shipping_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `jos_jshopping_shipping_method`
--

INSERT INTO `jos_jshopping_shipping_method` (`shipping_id`, `name_en-GB`, `description_en-GB`, `name_de-DE`, `description_de-DE`, `published`, `payments`, `image`, `ordering`, `name_ru-RU`, `description_ru-RU`) VALUES
(1, 'Сourier', '', 'Standardversand', '', 1, '', '', 1, 'Курьер', ''),
(2, 'Novaya Pochta', '', 'Express', '', 1, '', '', 2, 'Новая почта', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_shipping_method_price`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_shipping_method_price` (
  `sh_pr_method_id` int(11) NOT NULL auto_increment,
  `shipping_method_id` int(11) NOT NULL,
  `shipping_tax_id` int(11) NOT NULL default '0',
  `shipping_stand_price` decimal(12,2) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY  (`sh_pr_method_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `jos_jshopping_shipping_method_price`
--

INSERT INTO `jos_jshopping_shipping_method_price` (`sh_pr_method_id`, `shipping_method_id`, `shipping_tax_id`, `shipping_stand_price`, `params`) VALUES
(1, 1, 1, '0.00', 'N;'),
(2, 2, 1, '0.00', 'N;');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_shipping_method_price_countries`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_shipping_method_price_countries` (
  `sh_method_country_id` int(11) NOT NULL auto_increment,
  `country_id` int(11) NOT NULL,
  `sh_pr_method_id` int(11) NOT NULL,
  PRIMARY KEY  (`sh_method_country_id`),
  KEY `country_id` (`country_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=719 ;

--
-- Дамп данных таблицы `jos_jshopping_shipping_method_price_countries`
--

INSERT INTO `jos_jshopping_shipping_method_price_countries` (`sh_method_country_id`, `country_id`, `sh_pr_method_id`) VALUES
(479, 220, 1),
(718, 239, 2),
(717, 238, 2),
(716, 237, 2),
(715, 236, 2),
(714, 235, 2),
(713, 234, 2),
(712, 233, 2),
(711, 232, 2),
(710, 231, 2),
(709, 230, 2),
(708, 229, 2),
(707, 228, 2),
(706, 227, 2),
(705, 226, 2),
(704, 225, 2),
(703, 224, 2),
(702, 223, 2),
(701, 222, 2),
(700, 221, 2),
(699, 220, 2),
(698, 219, 2),
(697, 218, 2),
(696, 217, 2),
(695, 216, 2),
(694, 215, 2),
(693, 214, 2),
(692, 213, 2),
(691, 212, 2),
(690, 211, 2),
(689, 210, 2),
(688, 209, 2),
(687, 208, 2),
(686, 207, 2),
(685, 206, 2),
(684, 205, 2),
(683, 204, 2),
(682, 203, 2),
(681, 202, 2),
(680, 201, 2),
(679, 200, 2),
(678, 199, 2),
(677, 198, 2),
(676, 197, 2),
(675, 196, 2),
(674, 195, 2),
(673, 194, 2),
(672, 193, 2),
(671, 192, 2),
(670, 191, 2),
(669, 190, 2),
(668, 189, 2),
(667, 188, 2),
(666, 187, 2),
(665, 186, 2),
(664, 185, 2),
(663, 184, 2),
(662, 183, 2),
(661, 182, 2),
(660, 181, 2),
(659, 180, 2),
(658, 179, 2),
(657, 178, 2),
(656, 177, 2),
(655, 176, 2),
(654, 175, 2),
(653, 174, 2),
(652, 173, 2),
(651, 172, 2),
(650, 171, 2),
(649, 170, 2),
(648, 169, 2),
(647, 168, 2),
(646, 167, 2),
(645, 166, 2),
(644, 165, 2),
(643, 164, 2),
(642, 163, 2),
(641, 162, 2),
(640, 161, 2),
(639, 160, 2),
(638, 159, 2),
(637, 158, 2),
(636, 157, 2),
(635, 156, 2),
(634, 155, 2),
(633, 154, 2),
(632, 153, 2),
(631, 152, 2),
(630, 151, 2),
(629, 150, 2),
(628, 149, 2),
(627, 148, 2),
(626, 147, 2),
(625, 146, 2),
(624, 145, 2),
(623, 144, 2),
(622, 143, 2),
(621, 142, 2),
(620, 141, 2),
(619, 140, 2),
(618, 139, 2),
(617, 138, 2),
(616, 137, 2),
(615, 136, 2),
(614, 135, 2),
(613, 134, 2),
(612, 133, 2),
(611, 132, 2),
(610, 131, 2),
(609, 130, 2),
(608, 129, 2),
(607, 128, 2),
(606, 127, 2),
(605, 126, 2),
(604, 125, 2),
(603, 124, 2),
(602, 123, 2),
(601, 122, 2),
(600, 121, 2),
(599, 120, 2),
(598, 119, 2),
(597, 118, 2),
(596, 117, 2),
(595, 116, 2),
(594, 115, 2),
(593, 114, 2),
(592, 113, 2),
(591, 112, 2),
(590, 111, 2),
(589, 110, 2),
(588, 109, 2),
(587, 108, 2),
(586, 107, 2),
(585, 106, 2),
(584, 105, 2),
(583, 104, 2),
(582, 103, 2),
(581, 102, 2),
(580, 101, 2),
(579, 100, 2),
(578, 99, 2),
(577, 98, 2),
(576, 97, 2),
(575, 96, 2),
(574, 95, 2),
(573, 94, 2),
(572, 93, 2),
(571, 92, 2),
(570, 91, 2),
(569, 90, 2),
(568, 89, 2),
(567, 88, 2),
(566, 87, 2),
(565, 86, 2),
(564, 85, 2),
(563, 84, 2),
(562, 83, 2),
(561, 82, 2),
(560, 81, 2),
(559, 80, 2),
(558, 79, 2),
(557, 78, 2),
(556, 77, 2),
(555, 76, 2),
(554, 75, 2),
(553, 74, 2),
(552, 73, 2),
(551, 72, 2),
(550, 71, 2),
(549, 70, 2),
(548, 69, 2),
(547, 68, 2),
(546, 67, 2),
(545, 66, 2),
(544, 65, 2),
(543, 64, 2),
(542, 63, 2),
(541, 62, 2),
(540, 61, 2),
(539, 60, 2),
(538, 59, 2),
(537, 58, 2),
(536, 57, 2),
(535, 56, 2),
(534, 55, 2),
(533, 54, 2),
(532, 53, 2),
(531, 52, 2),
(530, 51, 2),
(529, 50, 2),
(528, 49, 2),
(527, 48, 2),
(526, 47, 2),
(525, 46, 2),
(524, 45, 2),
(523, 44, 2),
(522, 43, 2),
(521, 42, 2),
(520, 41, 2),
(519, 40, 2),
(518, 39, 2),
(517, 38, 2),
(516, 37, 2),
(515, 36, 2),
(514, 35, 2),
(513, 34, 2),
(512, 33, 2),
(511, 32, 2),
(510, 31, 2),
(509, 30, 2),
(508, 29, 2),
(507, 28, 2),
(506, 27, 2),
(505, 26, 2),
(504, 25, 2),
(503, 24, 2),
(502, 23, 2),
(501, 22, 2),
(500, 21, 2),
(499, 20, 2),
(498, 19, 2),
(497, 18, 2),
(496, 17, 2),
(495, 16, 2),
(494, 15, 2),
(493, 14, 2),
(492, 13, 2),
(491, 12, 2),
(490, 11, 2),
(489, 10, 2),
(488, 9, 2),
(487, 8, 2),
(486, 7, 2),
(485, 6, 2),
(484, 5, 2),
(483, 4, 2),
(482, 3, 2),
(481, 2, 2),
(480, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_shipping_method_price_weight`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_shipping_method_price_weight` (
  `sh_pr_weight_id` int(11) NOT NULL auto_increment,
  `sh_pr_method_id` int(11) NOT NULL,
  `shipping_price` decimal(12,2) NOT NULL,
  `shipping_weight_from` decimal(14,4) NOT NULL,
  `shipping_weight_to` decimal(14,4) NOT NULL,
  `shipping_package_price` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`sh_pr_weight_id`),
  KEY `sh_pr_method_id` (`sh_pr_method_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_shipping_method_price_weight`
--

INSERT INTO `jos_jshopping_shipping_method_price_weight` (`sh_pr_weight_id`, `sh_pr_method_id`, `shipping_price`, `shipping_weight_from`, `shipping_weight_to`, `shipping_package_price`) VALUES
(1, 2, '2.00', '0.0000', '10.0000', '0.00');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_taxes`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_taxes` (
  `tax_id` int(11) NOT NULL auto_increment,
  `tax_name` varchar(50) NOT NULL default '',
  `tax_value` decimal(12,2) NOT NULL default '0.00',
  PRIMARY KEY  (`tax_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_taxes`
--

INSERT INTO `jos_jshopping_taxes` (`tax_id`, `tax_name`, `tax_value`) VALUES
(1, 'Normal', '19.00');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_taxes_ext`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_taxes_ext` (
  `id` int(11) NOT NULL auto_increment,
  `tax_id` int(11) NOT NULL,
  `zones` text NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `firma_tax` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_unit`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_unit` (
  `id` int(11) NOT NULL auto_increment,
  `qty` int(11) NOT NULL default '1',
  `name_de-DE` varchar(255) NOT NULL,
  `name_en-GB` varchar(255) NOT NULL,
  `name_ru-RU` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `jos_jshopping_unit`
--

INSERT INTO `jos_jshopping_unit` (`id`, `qty`, `name_de-DE`, `name_en-GB`, `name_ru-RU`) VALUES
(1, 1, 'Kg', 'Kg', 'Kg'),
(2, 1, 'Liter', 'Liter', 'Liter'),
(3, 1, 'St.', 'pcs.', 'pcs.');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_usergroups`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_usergroups` (
  `usergroup_id` int(11) NOT NULL auto_increment,
  `usergroup_name` varchar(64) NOT NULL,
  `usergroup_discount` decimal(12,2) NOT NULL,
  `usergroup_description` text NOT NULL,
  `usergroup_is_default` tinyint(1) NOT NULL,
  PRIMARY KEY  (`usergroup_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_usergroups`
--

INSERT INTO `jos_jshopping_usergroups` (`usergroup_id`, `usergroup_name`, `usergroup_discount`, `usergroup_description`, `usergroup_is_default`) VALUES
(1, 'Default', '0.00', 'Default', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_users`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_users` (
  `user_id` int(11) NOT NULL,
  `usergroup_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `u_name` varchar(150) NOT NULL,
  `title` tinyint(1) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `firma_name` varchar(100) NOT NULL,
  `client_type` tinyint(1) NOT NULL,
  `firma_code` varchar(100) NOT NULL,
  `tax_number` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `home` varchar(20) NOT NULL,
  `apartment` varchar(20) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) default NULL,
  `phone` varchar(20) NOT NULL,
  `mobil_phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `ext_field_1` varchar(255) NOT NULL,
  `ext_field_2` varchar(255) NOT NULL,
  `ext_field_3` varchar(255) NOT NULL,
  `delivery_adress` tinyint(1) NOT NULL,
  `d_title` tinyint(1) NOT NULL,
  `d_f_name` varchar(255) NOT NULL,
  `d_l_name` varchar(255) NOT NULL,
  `d_firma_name` varchar(100) NOT NULL,
  `d_email` varchar(255) NOT NULL,
  `d_street` varchar(255) NOT NULL,
  `d_home` varchar(20) NOT NULL,
  `d_apartment` varchar(20) NOT NULL,
  `d_zip` varchar(20) NOT NULL,
  `d_city` varchar(100) NOT NULL,
  `d_state` varchar(100) NOT NULL,
  `d_country` int(11) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_mobil_phone` varchar(20) NOT NULL,
  `d_fax` varchar(20) NOT NULL,
  `d_ext_field_1` varchar(255) NOT NULL,
  `d_ext_field_2` varchar(255) NOT NULL,
  `d_ext_field_3` varchar(255) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_jshopping_users`
--

INSERT INTO `jos_jshopping_users` (`user_id`, `usergroup_id`, `payment_id`, `shipping_id`, `u_name`, `title`, `f_name`, `l_name`, `firma_name`, `client_type`, `firma_code`, `tax_number`, `email`, `street`, `home`, `apartment`, `zip`, `city`, `state`, `country`, `phone`, `mobil_phone`, `fax`, `ext_field_1`, `ext_field_2`, `ext_field_3`, `delivery_adress`, `d_title`, `d_f_name`, `d_l_name`, `d_firma_name`, `d_email`, `d_street`, `d_home`, `d_apartment`, `d_zip`, `d_city`, `d_state`, `d_country`, `d_phone`, `d_mobil_phone`, `d_fax`, `d_ext_field_1`, `d_ext_field_2`, `d_ext_field_3`) VALUES
(42, 1, 1, 1, 'admin', 1, 'ertwertwtwewert', 'retwertwert', 'ertwetr', 0, '', '', 'andreyalek@gmail.com', 'gsdfgsdfgsdfg', '', '', '45243523', 'ertwertwet', 'wertwertwertw', 220, '234523523452', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', 220, '', '', '', '', '', ''),
(43, 1, 0, 0, 'andrey', 0, '', '', '', 0, '', '', 'august-ru@mail.ru', '', '', '', '', '', '', NULL, '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_jshopping_vendors`
--

CREATE TABLE IF NOT EXISTS `jos_jshopping_vendors` (
  `id` int(11) NOT NULL auto_increment,
  `shop_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `middlename` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `benef_bank_info` varchar(64) NOT NULL,
  `benef_bic` varchar(64) NOT NULL,
  `benef_conto` varchar(64) NOT NULL,
  `benef_payee` varchar(64) NOT NULL,
  `benef_iban` varchar(64) NOT NULL,
  `benef_swift` varchar(64) NOT NULL,
  `interm_name` varchar(64) NOT NULL,
  `interm_swift` varchar(64) NOT NULL,
  `identification_number` varchar(64) NOT NULL,
  `tax_number` varchar(64) NOT NULL,
  `additional_information` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `publish` tinyint(1) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_jshopping_vendors`
--

INSERT INTO `jos_jshopping_vendors` (`id`, `shop_name`, `company_name`, `url`, `logo`, `adress`, `city`, `zip`, `state`, `country`, `f_name`, `l_name`, `middlename`, `phone`, `fax`, `email`, `benef_bank_info`, `benef_bic`, `benef_conto`, `benef_payee`, `benef_iban`, `benef_swift`, `interm_name`, `interm_swift`, `identification_number`, `tax_number`, `additional_information`, `user_id`, `main`, `publish`) VALUES
(1, 'Shop name', 'Company', '', '', 'Address', 'City', 'Postal Code ', 'State', 81, 'First name ', 'Last name', '', '00000000', '00000000', 'email@email.com', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '', '', 'Additional information', 0, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_languages`
--

CREATE TABLE IF NOT EXISTS `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL auto_increment,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL default '',
  `published` int(11) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `ordering` int(11) NOT NULL default '0',
  PRIMARY KEY  (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`),
  KEY `idx_access` (`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `jos_languages`
--

INSERT INTO `jos_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL default '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL default '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL default '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL default '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL default '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL default '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL default '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL default '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL default '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL default '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL default '',
  `client_id` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=493 ;

--
-- Дамп данных таблицы `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 93, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 15, 24, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 16, 17, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 18, 19, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 20, 21, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 22, 23, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 25, 30, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 26, 27, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 28, 29, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 31, 36, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 32, 33, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 34, 35, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 37, 42, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 38, 39, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 40, 41, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 55, 56, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 47, 48, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 49, 54, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 50, 51, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 52, 53, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 43, 44, 0, '*', 1),
(233, 'menutop', 'Войти', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 117, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 5, 6, 0, '*', 0),
(238, 'menutop', 'Sample Sites', 'sample-sites', '', 'sample-sites', 'index.php?option=com_content&view=article&id=38', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 57, 62, 0, '*', 0),
(290, 'menutop', 'Articles', 'articles', '', 'site-map/articles', 'index.php?option=com_content&view=categories&id=0', 'component', -2, 294, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 117, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","category_layout":"","show_headings":"","show_date":"","date_format":"","filter_field":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_readmore":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(294, 'menutop', 'Site Map', 'site-map', '', 'site-map', 'index.php?option=com_content&view=article&id=42', 'component', -2, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 117, '{"show_noauth":"","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"0","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","robots":"","rights":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","secure":0}', 7, 14, 0, '*', 0),
(435, 'menutop', 'Home', 'homepage', '', 'homepage', 'index.php?option=com_jshopping&controller=products&task=&category_id=&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=', 'component', -2, 1, 1, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 117, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 3, 4, 0, '*', 0),
(438, 'menutop', 'Weblinks', 'weblinks', '', 'site-map/weblinks', 'index.php?option=com_weblinks&view=categories&id=0', 'component', -2, 294, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 117, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","orderby_pri":"","show_pagination":"","show_noauth":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 10, 11, 0, '*', 0),
(439, 'menutop', 'Contacts', 'contacts', '', 'site-map/contacts', 'index.php?option=com_contact&view=categories&id=0', 'component', -2, 294, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 117, '{"categories_description":"","maxLevel":"-1","show_empty_categories":"","show_description":"","show_description_image":"","show_cat_num_articles":"","display_num":"","show_headings":"","filter_field":"","show_pagination":"","show_noauth":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"1","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","article-allow_ratings":"","article-allow_comments":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","show_page_heading":0,"page_title":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 12, 13, 0, '*', 0),
(445, 'menutop', 'Parks', 'parks', '', 'sample-sites/parks', 'index.php?Itemid=', 'alias', -2, 238, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"243","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 58, 59, 0, '*', 0),
(446, 'menutop', 'Shop', 'shop', '', 'sample-sites/shop', 'index.php?Itemid=', 'alias', -2, 238, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"429","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 60, 61, 0, '*', 0),
(448, 'menutop', 'Site Administrator', 'site-administrator', '', 'site-administrator', 'administrator', 'url', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 117, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 63, 64, 0, '*', 0),
(455, 'menutop', 'Example Pages', 'example-pages', '', 'example-pages', 'index.php?Itemid=', 'alias', -2, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"268","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 65, 66, 0, '*', 0),
(479, 'main', 'JoomShopping', 'joomshopping', '', 'joomshopping', 'index.php?option=com_jshopping', 'component', 0, 1, 1, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_logo_s.png', 0, '', 67, 84, 0, '', 1),
(480, 'main', 'categories', 'categories', '', 'joomshopping/categories', 'index.php?option=com_jshopping&controller=categories&catid=0', 'component', 0, 479, 2, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_categories_s.png', 0, '', 68, 69, 0, '', 1),
(481, 'main', 'products', 'products', '', 'joomshopping/products', 'index.php?option=com_jshopping&controller=products&category_id=0', 'component', 0, 479, 2, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_products_s.png', 0, '', 70, 71, 0, '', 1),
(482, 'main', 'orders', 'orders', '', 'joomshopping/orders', 'index.php?option=com_jshopping&controller=orders', 'component', 0, 479, 2, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_orders_s.png', 0, '', 72, 73, 0, '', 1),
(483, 'main', 'clients', 'clients', '', 'joomshopping/clients', 'index.php?option=com_jshopping&controller=users', 'component', 0, 479, 2, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_users_s.png', 0, '', 74, 75, 0, '', 1),
(484, 'main', 'options', 'options', '', 'joomshopping/options', 'index.php?option=com_jshopping&controller=other', 'component', 0, 479, 2, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_options_s.png', 0, '', 76, 77, 0, '', 1),
(485, 'main', 'configuration', 'configuration', '', 'joomshopping/configuration', 'index.php?option=com_jshopping&controller=config', 'component', 0, 479, 2, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_configuration_s.png', 0, '', 78, 79, 0, '', 1),
(486, 'main', 'install-and-update', 'install-and-update', '', 'joomshopping/install-and-update', 'index.php?option=com_jshopping&controller=update', 'component', 0, 479, 2, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_update_s.png', 0, '', 80, 81, 0, '', 1),
(487, 'main', 'about-as', 'about-as', '', 'joomshopping/about-as', 'index.php?option=com_jshopping&controller=info', 'component', 0, 479, 2, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jshopping/images/jshop_info_s.png', 0, '', 82, 83, 0, '', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 45, 46, 0, '*', 1),
(488, 'menutop', 'Чем богаты', 'pillows', '', 'pillows', 'index.php?option=com_jshopping&controller=products&task=&category_id=&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=', 'component', 1, 1, 1, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 2, 1, '*', 0),
(489, 'menutop', 'Интересное', 'articles', '', 'articles', 'index.php?option=com_content&view=category&layout=blog&id=78', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"-1","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"0","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"1","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 85, 86, 0, '*', 0),
(490, 'menutop', 'Контакты', 'contacts', '', 'contacts', 'index.php?option=com_content&view=article&id=71', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 91, 92, 0, '*', 0),
(491, 'hidden', 'Корзина', 'cart2', '', 'cart2', 'index.php?option=com_jshopping&controller=cart&task=&category_id=&manufacturer_id=&label_id=&vendor_id=&page=&price_from=&price_to=', 'component', 1, 1, 1, 10047, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 87, 88, 0, '*', 0),
(492, 'menutop', 'Активность', 'activity', '', 'activity', 'index.php?option=com_content&view=category&layout=blog&id=79', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"1","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"1","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 89, 90, 0, '*', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(6, 'menutop', 'Main Menu', 'Simple Home Menu'),
(9, 'hidden', 'Скрытое', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL auto_increment,
  `user_id_from` int(10) unsigned NOT NULL default '0',
  `user_id_to` int(10) unsigned NOT NULL default '0',
  `folder_id` tinyint(3) unsigned NOT NULL default '0',
  `date_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL default '0',
  `priority` tinyint(1) unsigned NOT NULL default '0',
  `subject` varchar(255) NOT NULL default '',
  `message` text NOT NULL,
  PRIMARY KEY  (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL default '0',
  `cfg_name` varchar(100) NOT NULL default '',
  `cfg_value` varchar(255) NOT NULL default '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `note` varchar(255) NOT NULL default '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  `position` varchar(50) NOT NULL default '',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL default '0',
  `module` varchar(50) default NULL,
  `access` int(10) unsigned NOT NULL default '0',
  `showtitle` tinyint(3) unsigned NOT NULL default '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL default '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=105 ;

--
-- Дамп данных таблицы `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'precontent', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"menutop","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Пользователь (Вход / Профиль)', '', '', 1, 'apex-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"lady:horizontal","moduleclass_sfx":"pull-right","cache":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'breadcrumbs_top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","showLast":"1","separator":"|","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(18, 'Book Store', '', '', 1, 'position-10', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"3","catid":[""],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Books!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(94, 'Категории товаров', '', '', 1, 'left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jshopping_categories', 1, 0, '{"show_image":"0","sort":"name","ordering":"asc","moduleclass_sfx":""}', 0, '*'),
(68, 'About Parks', '', '<p>The Parks sample site is designed as a simple site that can be routinely updated from the front end of Joomla!.</p><p>As a site, it is largely focused on a blog which can be updated using the front end article submission.</p><p>New weblinks can also be added through the front end.</p><p>A simple image gallery uses com_content with thumbnails displayed in a blog layout and full size images shown in article layout.</p><p>The Parks site features the language switch module. All of the content and modules are tagged as English (en-GB). If a second language pack is added with sample data this can be filtered using the language switch.</p><p>Parks uses HTML5 which is a major web standard (along with XHTML which is used in other areas of sample data).</p>', 2, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(96, 'IceMegaMenu Module', '', '', 1, 'precontent', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_icemegamenu', 1, 1, '{"theme_style":"","menutype":"menutop","startLevel":"1","endLevel":"0","showAllChildren":"1","class_sfx":"","window_open":"","tag_id":"","js_effect":"slide","js_physics":"Fx.Transitions.Pow.easeOut","js_duration":"600","js_hideDelay":"1000","js_opacity":"95","use_js":"1","moduleclass_sfx":"","cache":"1","cache_time":"30","menu_images":"0","menu_images_align":"0","menu_images_link":"0","expand_menu":"0","activate_parent":"0","full_active_id":"0","indent_image":"0","indent_image1":"","indent_image2":"","indent_image3":"","indent_image4":"","indent_image5":"","indent_image6":"","spacer":"","end_spacer":""}', 0, '*'),
(25, 'Site Map', '', '', 1, 'sitemapload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"menutop","startLevel":"2","endLevel":"3","showAllChildren":"1","tag_id":"","class_sfx":"sitemap","window_open":"","layout":"","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(26, 'This Site', '', '', 5, 'position-7', 42, '2012-02-19 20:41:12', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"menutop","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(27, 'Archived Articles', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_archive', 1, 1, '{"count":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(28, 'Latest News', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"catid":["19"],"count":"5","show_featured":"","ordering":"c_dsc","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 'Articles Most Read', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_popular', 1, 1, '{"catid":["26","29"],"count":"5","show_front":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(30, 'Feed Display', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_feed', 1, 1, '{"rssurl":"http:\\/\\/community.joomla.org\\/blogs\\/community.feed?type=rss","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(31, 'News Flash', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_news', 1, 1, '{"catid":["19"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(33, 'Random Image', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_random_image', 1, 1, '{"type":"jpg","folder":"images\\/sampledata\\/parks\\/animals","link":"","width":"180","height":"","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(34, 'Articles Related Items', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_related_items', 1, 1, '{"showDate":"0","layout":"_:default","moduleclass_sfx":"","owncache":"1"}', 0, '*'),
(35, 'Search', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(36, 'Statistics', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_stats', 1, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Syndicate Feeds', '', '', 1, 'syndicateload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_syndicate', 1, 1, '{"text":"Feed Entries","format":"rss","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(38, 'Users Latest', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_users_latest', 1, 1, '{"shownumber":"5","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Who''s Online', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_whosonline', 1, 1, '{"showmode":"2","linknames":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(40, 'Wrapper', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_wrapper', 1, 1, '{"url":"http:\\/\\/www.youtube.com\\/embed\\/vb2eObvmvdI","add":"1","scrolling":"auto","width":"640","height":"390","height_auto":"1","target":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(41, 'Footer', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(44, 'Login', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"280","logout":"280","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(45, 'Menu Example', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"menutop","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(47, 'Latest Park Blogs', '', '', 6, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_latest', 1, 1, '{"count":"5","ordering":"c_dsc","user_id":"0","show_front":"1","catid":"35","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, 'en-GB'),
(48, 'Custom HTML', '', '<p>This is a custom html module. That means you can enter whatever content you want.</p>', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(49, 'Weblinks', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_weblinks', 1, 1, '{"catid":"32","count":"5","ordering":"title","direction":"asc","target":"3","description":"0","hits":"0","count_clicks":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(52, 'Breadcrumbs', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(61, 'Articles Categories', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_categories', 1, 1, '{"parent":"29","show_description":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(56, 'Banners', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 1, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"random","header_text":"","footer_text":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(92, 'Слайдшоу', '', '', 1, 'header-bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_showplus', 1, 1, '{"folder":"images\\/sampledata\\/fruitshop","width":"1050","height":"100","alignment":"center","orientation":"horizontal","buttons":"1","captions":"1","defcaption":"","deflink":"","target":"_blank","delay":"3000","duration":"800","transition":"kenburns","transition_easing":"back","transition_pan":"100","transition_zoom":"50","margin":"","border_style":"","border_width":"","border_color":"","padding":"","background_color":"","thumb_width":"60","thumb_height":"40","links":"1","thumb_cache":"1","thumb_folder":"thumbs","thumb_quality":"85","labels":"labels","labels_multilingual":"0","labels_captions":"","sort_criterion":"labels-filename","sort_order":"0","library":"default","moduleclass_sfx":"","debug":"0"}', 0, '*'),
(58, 'Special!', '', '<h1>This week we have a special, half price on delicious oranges!</h1><div>Only for our special customers!</div><div>Use the code: Joomla! when ordering</div><p><em>This module can only be seen by people in the customers group or higher.</em></p>', 1, 'position-12', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 4, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(62, 'Language Switcher', '', '', 3, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(63, 'Search', '', '', 1, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(64, 'Language Switcher', '', '', 1, 'languageswitcherload', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","image":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(65, 'About Fruit Shop', '', '<p>The Fruit Shop site shows a number of Joomla! features.</p><p>The template uses classes in cascading style sheets to change the layout of items, such as creating the horizontal alphabetical list in the Fruit Encyclopedia.</p><p> </p>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(69, 'Articles Category', '', '', 1, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_articles_category', 1, 1, '{"mode":"normal","show_on_article_page":"1","show_front":"show","count":"0","category_filtering_type":"1","catid":["72"],"show_child_category_articles":"0","levels":"1","author_filtering_type":"1","created_by":[""],"author_alias_filtering_type":"1","created_by_alias":[""],"excluded_articles":"","date_filtering":"off","date_field":"a.created","start_date_range":"","end_date_range":"","relative_date":"30","article_ordering":"a.title","article_ordering_direction":"ASC","article_grouping":"none","article_grouping_direction":"ksort","month_year_format":"F Y","item_heading":"4","link_titles":"1","show_date":"0","show_date_field":"created","show_date_format":"Y-m-d H:i:s","show_category":"0","show_hits":"0","show_author":"0","show_introtext":"0","introtext_limit":"100","show_readmore":"0","show_readmore_title":"1","readmore_limit":"15","layout":"_:default","moduleclass_sfx":"","owncache":"1","cache_time":"900"}', 0, '*'),
(70, 'Search (Atomic Template)', '', '', 1, 'atomic-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_search', 1, 0, '{"width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(93, 'Jshopping Categories', '', '', 1, 'left_bar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_jshopping_categories', 1, 0, '{"show_image":"0","sort":"id","ordering":"asc","moduleclass_sfx":""}', 0, '*'),
(72, 'Top Quote (Atomic Template)', '', '<hr />\r\n<h2 class="alt">Powerful Content Management and a Simple Extensible Framework.</h2>\r\n<hr />', 1, 'atomic-topquote', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(73, 'Bottom Left Column (Atomic Template)', '', '<h6>This is a nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottomleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(74, 'Bottom Middle Column (Atomic Template)', '', '<h6>This is another nested column</h6>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>', 1, 'atomic-bottommiddle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(75, 'Sidebar (Atomic Template)', '', '<h3>A <span class="alt">Simple</span> Sidebar</h3>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<p class="quiet">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>\r\n<h5>Incremental leading</h5>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus.</p>\r\n<p class="incr">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Cras ornare mattis nunc. Mauris venenatis, pede sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue. sed aliquet vehicula, lectus tellus pulvinar neque, non cursus sem nisi vel augue.</p>', 1, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(76, 'Login (Atomic Template)', '', '', 2, 'atomic-sidebar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 0, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(77, 'Shop', '', '', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"2","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Shop!","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(78, 'Contribute', '', '', 1, 'position-9', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_banners', 1, 0, '{"target":"1","count":"1","cid":"1","catid":["15"],"tag_search":"0","ordering":"0","header_text":"","footer_text":"Contribute! ","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900"}', 0, '*'),
(84, 'Smart Search Module', '', '', 2, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_finder', 1, 1, '{"searchfilter":"","show_autosuggest":"1","show_advanced":"0","layout":"_:default","moduleclass_sfx":"","field_size":20,"alt_label":"","show_label":"0","label_pos":"top","show_button":"0","button_pos":"right","opensearch":"1","opensearch_title":""}', 0, '*'),
(98, 'Maximenu CK', '', '', 1, 'precontent', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_maximenuck', 1, 1, '{"menutype":"menutop","menuid":"maximenuck","startLevel":"1","endLevel":"0","zindexlevel":"10","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","imagerollprefix":"_hover","imageonly":"0","menu_images_align":"top","usemootools":"1","style":"moomenu","opentype":"open","mooduration":"500","mootransition":"Quad","mooease":"easeOut","dureeout":"500","useopacity":"0","testoverflow":"1","direction":"normal","directionoffset1":"30","directionoffset2":"30","usefancy":"0","fancyduration":"500","fancytransition":"Quad","fancyease":"easeOut","theme":"default","usecss":"1","orientation":"0","menubgcolor":"","titlescolor":"","descscolor":"","titleshovercolor":"","descshovercolor":"","thirdparty":"none","usevmimages":"0","usevmsuffix":"0","vmimagesuffix":"_mini","vmcategoryroot":"0","vmcategorydepth":"0"}', 0, '*'),
(99, 'DJ-Image Slider', '', '', 1, 'header-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_djimageslider', 1, 0, '{"slider_source":"0","slider_type":"0","link_image":"1","image_folder":"images\\/sampledata\\/fruitshop","link":"","show_title":"1","show_desc":"1","show_readmore":"0","link_title":"1","link_desc":"0","limit_desc":"","image_width":"230","image_height":"90","fit_to":"1","visible_images":"5","space_between_images":"0","max_images":"20","sort_by":"1","effect":"Cubic","autoplay":"1","show_buttons":"1","show_arrows":"1","show_custom_nav":"0","desc_width":"","desc_bottom":"0","desc_horizontal":"0","left_arrow":"","right_arrow":"","play_button":"","pause_button":"","arrows_top":"30","arrows_horizontal":"5","effect_type":"0","duration":"","delay":"","preload":"800","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(100, 'Menu top fixed', '', '', 1, 'apex-fixed-middle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 0, '{"menutype":"menutop","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav-dropdown","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(101, 'Меню главное (верх)', '', '', 1, 'apex-middle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bee_menu', 1, 0, '{"menutype":"menutop","startLevel":"1","endLevel":"10","showAllChildren":"1","brandName":"","tag_id":"","class_sfx":"","window_open":"","layout":"_:navbar","moduleclass_sfx":" pull-left","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(102, 'Логотип', '', '<img src="images/logo.png" border="0" height="50px" />', 1, 'apex-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"pull-left","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 'Корзина (иконка вверху)', '', '', 1, 'apex-top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_jshopping_cart', 1, 0, '{"moduleclass_sfx":" pull-right"}', 0, '*'),
(104, 'Заголовок страницы (возле меню)', '', '', 1, 'apex-middle', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_pagetitle', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"pull-right","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL default '0',
  `menuid` int(11) NOT NULL default '0',
  PRIMARY KEY  (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, -463),
(19, -462),
(19, -433),
(19, -432),
(19, -431),
(19, -430),
(19, -429),
(19, -427),
(19, -400),
(19, -399),
(19, -296),
(19, -244),
(19, -243),
(19, -242),
(19, -234),
(20, 0),
(22, 231),
(22, 234),
(22, 238),
(22, 242),
(22, 243),
(22, 244),
(22, 296),
(22, 399),
(22, 400),
(23, -463),
(23, -462),
(23, -433),
(23, -432),
(23, -431),
(23, -430),
(23, -429),
(23, -427),
(23, -400),
(23, -399),
(23, -296),
(23, -244),
(23, -243),
(23, -242),
(23, -238),
(23, -234),
(25, 294),
(26, -463),
(26, -462),
(26, -433),
(26, -432),
(26, -431),
(26, -430),
(26, -429),
(26, -427),
(26, -400),
(26, -399),
(26, -296),
(26, -244),
(26, -243),
(26, -242),
(26, -238),
(26, -234),
(27, 325),
(28, 310),
(29, 302),
(30, 410),
(31, 309),
(32, 309),
(33, 307),
(34, 326),
(35, 306),
(36, 304),
(37, 311),
(38, 300),
(39, 301),
(40, 313),
(41, 324),
(44, 312),
(45, 303),
(47, 231),
(47, 234),
(47, 242),
(47, 243),
(47, 244),
(47, 296),
(47, 399),
(47, 400),
(48, 418),
(49, 417),
(52, 416),
(56, 305),
(57, 238),
(57, 427),
(57, 429),
(57, 430),
(57, 431),
(57, 432),
(57, 433),
(57, 462),
(57, 463),
(58, 427),
(58, 429),
(58, 430),
(58, 431),
(58, 432),
(58, 433),
(58, 462),
(58, 463),
(61, 443),
(62, 231),
(62, 234),
(62, 242),
(62, 243),
(62, 244),
(62, 296),
(62, 399),
(62, 400),
(63, 0),
(64, 447),
(65, 427),
(65, 429),
(65, 430),
(65, 431),
(65, 432),
(65, 433),
(65, 462),
(65, 463),
(68, 243),
(69, 459),
(70, 285),
(70, 316),
(71, 285),
(71, 316),
(72, 285),
(72, 316),
(73, 285),
(73, 316),
(74, 285),
(74, 316),
(75, 285),
(75, 316),
(76, 285),
(76, 316),
(77, 0),
(78, 0),
(79, 0),
(84, 467),
(86, 0),
(92, 0),
(93, 0),
(94, 0),
(96, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL default '0',
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `link` varchar(200) NOT NULL default '',
  `filename` varchar(200) default NULL,
  `published` tinyint(1) NOT NULL default '0',
  `numarticles` int(10) unsigned NOT NULL default '1',
  `cache_time` int(10) unsigned NOT NULL default '3600',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `rtl` tinyint(4) NOT NULL default '0',
  `access` int(10) unsigned NOT NULL default '0',
  `language` char(7) NOT NULL default '',
  `params` text NOT NULL,
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`, `access`, `language`, `params`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `xreference`, `publish_up`, `publish_down`) VALUES
(17, 1, 'Joomla! Announcements', 'joomla-announcements', 'http://www.joomla.org/announcements.feed?type=rss', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:25:05', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'New Joomla! Extensions', 'new-joomla-extensions', 'http://feeds.joomla.org/JoomlaExtensions', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:25:36', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 3, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:24:55', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, 'Joomla! Connect', 'joomla-connect', 'http://feeds.joomla.org/JoomlaConnect', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 1, 1, 'en-GB', '{"show_feed_image":"","show_feed_description":"","show_item_description":"","feed_character_count":"0","newsfeed_layout":"","feed_display_order":""}', '2011-01-01 00:00:01', 0, '', '2011-12-27 12:25:10', 42, '', '', '{"robots":"","rights":""}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_overrider`
--

CREATE TABLE IF NOT EXISTS `jos_overrider` (
  `id` int(10) NOT NULL auto_increment COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_redirect_links`
--

CREATE TABLE IF NOT EXISTS `jos_redirect_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL default '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `jos_redirect_links`
--

INSERT INTO `jos_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://joomlashop.woo/var/www/joomlashop.woo/templates/zt_oreo17/css/css3.php?url=/var/www/joomlashop.woo/templates/zt_oreo17/css/', '', 'http://joomlashop.woo/', '', 0, 0, '2012-02-12 15:33:51', '0000-00-00 00:00:00'),
(2, 'http://joomlashop.woo/site-map', '', 'http://joomlashop.woo/site-map/weblinks', '', 0, 0, '2012-02-21 19:58:47', '0000-00-00 00:00:00'),
(3, 'http://localhost/yomayka/component/jshopping/category/view/blank.gif', '', 'http://localhost/yomayka/component/jshopping/category/view/1?Itemid=435', '', 23, 0, '2012-11-03 19:36:00', '0000-00-00 00:00:00'),
(4, 'http://localhost/yomayka/component/jshopping/product/view/1/blank.gif', '', 'http://localhost/yomayka/component/jshopping/product/view/1/1?Itemid=435', '', 3, 0, '2012-11-03 21:08:21', '0000-00-00 00:00:00'),
(5, 'http://localhost/yomayka/component/jshopping/blank.gif', '', 'http://localhost/yomayka/component/jshopping/kids?Itemid=435', '', 13, 0, '2012-11-04 21:44:42', '0000-00-00 00:00:00'),
(6, 'http://localhost/yomayka/ADMINISTRATORT', '', '', '', 1, 0, '2012-12-07 00:14:10', '0000-00-00 00:00:00'),
(7, 'http://localhost/yomayka/login', '', 'http://localhost/yomayka/pillows', '', 1, 0, '2012-12-07 01:44:05', '0000-00-00 00:00:00'),
(8, 'http://localhost/yomayka/articles', '', 'http://localhost/yomayka/pillows', '', 1, 0, '2012-12-07 01:44:49', '0000-00-00 00:00:00'),
(9, 'http://localhost/yomayka/cart/view', '', 'http://localhost/yomayka/cart/view', '', 3, 0, '2012-12-07 02:07:57', '0000-00-00 00:00:00'),
(10, 'http://localhost/yomayka/product/view/4/index.php', '', 'http://localhost/yomayka/product/view/4/1', '', 1, 0, '2012-12-09 21:18:10', '0000-00-00 00:00:00'),
(11, 'http://yomayka.com/shop/product/view/1/index.php', '', 'http://yomayka.com/shop/product/view/1/2', '', 3, 0, '2012-12-16 11:24:58', '0000-00-00 00:00:00'),
(12, 'http://yomayka.com/shop/component/jshopping/index.php', '', 'http://yomayka.com/shop/component/jshopping/pets?Itemid=0', '', 1, 0, '2012-12-21 00:01:02', '0000-00-00 00:00:00'),
(13, 'http://yomayka.com/shop/aktivnost', '', 'http://yomayka.com/shop/aktivnost', '', 1, 0, '2012-12-21 21:30:53', '0000-00-00 00:00:00'),
(14, 'http://yomayka.com/shop/vk.com/yomayka', '', 'http://yomayka.com/shop/contacts', '', 1, 0, '2012-12-21 21:56:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_schemas`
--

CREATE TABLE IF NOT EXISTS `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY  (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_schemas`
--

INSERT INTO `jos_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.8');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `session_id` varchar(200) NOT NULL default '',
  `client_id` tinyint(3) unsigned NOT NULL default '0',
  `guest` tinyint(4) unsigned default '1',
  `time` varchar(14) default '',
  `data` mediumtext,
  `userid` int(11) default '0',
  `username` varchar(150) default '',
  `usertype` varchar(50) default '',
  PRIMARY KEY  (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_session`
--

INSERT INTO `jos_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('e5707c7fdf947679189e42d047658ee8', 1, 0, '1356130892', '__default|a:13:{s:15:"session.counter";i:408;s:19:"session.timer.start";i:1356120043;s:18:"session.timer.last";i:1356130891;s:17:"session.timer.now";i:1356130891;s:22:"session.client.browser";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":9:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:8:"jshoping";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"admin";O:8:"stdClass":5:{s:18:"productcategory_id";i:0;s:22:"productmanufacturer_id";i:0;s:15:"productlabel_id";i:0;s:14:"productpublish";i:0;s:18:"producttext_search";s:0:"";}}}s:9:"jshopping";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"admin";O:8:"stdClass":1:{s:13:"categorycatid";s:2:"13";}}}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:7:"menutop";}s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:4:"data";N;s:4:"type";N;s:4:"link";N;s:2:"id";a:0:{}}}}s:4:"item";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:7:"menutop";}}s:14:"com_categories";O:8:"stdClass":2:{s:10:"categories";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:9:"extension";s:11:"com_content";}}s:4:"edit";O:8:"stdClass":1:{s:8:"category";O:8:"stdClass":1:{s:4:"data";N;}}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:1:{i:0;i:72;}}}}s:11:"com_modules";O:8:"stdClass":3:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:2:"42";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:20:"andreyalek@gmail.com";s:8:"password";s:65:"477b9284a3651c0715590251ad5711f3:cuVPr7Qqr5OGTjByyF1Rwj1xkUQikiCW";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2012-02-04 19:21:37";s:13:"lastvisitDate";s:19:"2012-12-20 22:39:01";s:10:"activation";s:1:"0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"0fdc8dc4a9e162ace73e6580fbe65552";s:19:"js_id_currency_orig";s:1:"1";s:14:"js_id_currency";s:1:"1";s:22:"jshop_checked_language";a:2:{i:0;s:5:"en-GB";i:1;s:5:"ru-RU";}s:19:"js_get_mysqlversion";s:6:"5.0.95";s:15:"sendinfoinstall";i:1;}', 42, 'admin', ''),
('25d6f52938c8da491d8e1e3be481533e', 1, 0, '1356058191', '__default|a:13:{s:15:"session.counter";i:141;s:19:"session.timer.start";i:1356042313;s:18:"session.timer.last";i:1356058190;s:17:"session.timer.now";i:1356058191;s:22:"session.client.browser";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":6:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:13:"com_installer";O:8:"stdClass":2:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";}s:9:"jshopping";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"admin";O:8:"stdClass":1:{s:13:"categorycatid";i:0;}}}s:8:"jshoping";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"admin";O:8:"stdClass":5:{s:18:"productcategory_id";i:0;s:22:"productmanufacturer_id";i:0;s:15:"productlabel_id";i:0;s:14:"productpublish";i:0;s:18:"producttext_search";s:0:"";}}}s:9:"com_menus";O:8:"stdClass":2:{s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:7:"menutop";}s:10:"limitstart";i:0;}s:4:"edit";O:8:"stdClass":1:{s:4:"item";O:8:"stdClass":4:{s:2:"id";a:0:{}s:4:"data";N;s:4:"type";N;s:4:"link";N;}}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:0:{}}}}}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:2:"42";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:20:"andreyalek@gmail.com";s:8:"password";s:65:"477b9284a3651c0715590251ad5711f3:cuVPr7Qqr5OGTjByyF1Rwj1xkUQikiCW";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2012-02-04 19:21:37";s:13:"lastvisitDate";s:19:"2012-12-16 23:27:49";s:10:"activation";s:1:"0";s:6:"params";s:2:"{}";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"168b215b13bafd16de6d69b4b2ed0804";s:19:"js_id_currency_orig";s:1:"1";s:14:"js_id_currency";s:1:"1";s:22:"jshop_checked_language";a:2:{i:0;s:5:"en-GB";i:1;s:5:"ru-RU";}s:15:"sendinfoinstall";i:1;s:19:"js_get_mysqlversion";s:6:"5.0.95";}', 42, 'admin', ''),
('ff949494ec0b20329fc262434e0ba198', 0, 1, '1356009664', '__default|a:17:{s:15:"session.counter";i:9;s:19:"session.timer.start";i:1356009405;s:18:"session.timer.last";i:1356009475;s:17:"session.timer.now";i:1356009663;s:22:"session.client.browser";s:108:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.97 Safari/537.11";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:19:"shop_default_itemid";i:488;s:19:"js_id_currency_orig";s:1:"1";s:14:"js_id_currency";s:1:"1";s:19:"js_history_sel_lang";s:5:"ru-RU";s:15:"js_prev_user_id";i:0;s:22:"jshop_checked_language";a:2:{i:0;s:5:"en-GB";i:1;s:5:"ru-RU";}s:26:"jshop_end_page_buy_product";s:10:"/shop/kids";s:27:"jshop_end_page_list_product";s:10:"/shop/kids";s:27:"shop_main_page_itemid_ru-RU";i:0;s:13:"session.token";s:32:"c69774892095c8f00d9c2409cea2276e";}', 0, '', ''),
('71002c959f14a5512cfa9236f6da7998', 0, 1, '1356132872', '__default|a:16:{s:15:"session.counter";i:3;s:19:"session.timer.start";i:1356132860;s:18:"session.timer.last";i:1356132861;s:17:"session.timer.now";i:1356132872;s:22:"session.client.browser";s:190:"Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; InfoPath.3; .NET4.0C; .NET4.0E)";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":25:{s:9:"\0*\0isRoot";N;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";N;s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:19:"js_id_currency_orig";s:1:"1";s:14:"js_id_currency";s:1:"1";s:19:"shop_default_itemid";i:488;s:19:"js_history_sel_lang";s:5:"ru-RU";s:15:"js_prev_user_id";i:0;s:22:"jshop_checked_language";a:2:{i:0;s:5:"en-GB";i:1;s:5:"ru-RU";}s:6:"return";s:28:"L3Nob3AvY2hlY2tvdXQvc3RlcDI=";s:27:"shop_main_page_itemid_ru-RU";i:0;s:13:"session.token";s:32:"52e9e9076c47ea8856e0165a5f29b025";}', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_template_styles`
--

CREATE TABLE IF NOT EXISTS `jos_template_styles` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `template` varchar(50) NOT NULL default '',
  `client_id` tinyint(1) unsigned NOT NULL default '0',
  `home` char(7) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `params` text NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Дамп данных таблицы `jos_template_styles`
--

INSERT INTO `jos_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"","sitetitle":"YOmayka","sitedescription":"\\u041c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d \\u0442\\u043e\\u0433\\u043e \\u0447\\u0442\\u043e \\u0442\\u044b \\u0442\\u0430\\u043a \\u0434\\u0430\\u0432\\u043d\\u043e \\u0438\\u0441\\u043a\\u0430\\u043b","navposition":"left","templatecolor":"personal"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(115, 'zt_oreo17', 0, '0', 'zt_oreo17 - По умолчанию', '{"zt_function":"0","zt_font":"3","zt_footer":"0","zt_footer_text":"Copyright (c) 2008 - 2011 Joomla Templates by ZooTemplate.Com","zt_fontfeature":"0","zt_rtl":"0","zt_mobile":"1","menutype":"hikashop_hidden","zt_menustyle":"mega","xdelay":"350","xduration":"350","xtransition":"Fx.Transitions.linear","fancy":"0","transition":"Fx.Transitions.linear","duration":"500","gzip_folder":"zt-assets","gzip_merge":"0","gzip_optimize_css":"0","css-exclude":"","gzip_optimize_js":"0","js-exclude":"","gzip_optimize_html":"0","zt_layout":"-lcr","zt_change_color":"1","color_bd":"#1b4263 ","text_bd":"#242424 ","link_bd":"#10273A ","image_bd":"pattern0","color_zt-slideshow":"#abd7ec ","image_zt-slideshow":"pattern0","text_zt-userwrap7":"#8c99a2 ","link_zt-userwrap7":"#6fbb16 "}'),
(116, 'bootstrap', 0, '0', 'migur - По умолчанию', '{}'),
(117, 'lady', 0, '1', 'lady - По умолчанию', '{}');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_update_categories`
--

CREATE TABLE IF NOT EXISTS `jos_update_categories` (
  `categoryid` int(11) NOT NULL auto_increment,
  `name` varchar(20) default '',
  `description` text NOT NULL,
  `parent` int(11) default '0',
  `updatesite` int(11) default '0',
  PRIMARY KEY  (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_update_sites`
--

CREATE TABLE IF NOT EXISTS `jos_update_sites` (
  `update_site_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default '',
  `type` varchar(20) default '',
  `location` text NOT NULL,
  `enabled` int(11) default '0',
  `last_check_timestamp` bigint(20) default '0',
  PRIMARY KEY  (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `jos_update_sites`
--

INSERT INTO `jos_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1356120089),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1356120089),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist.xml', 1, 1356120091);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL default '0',
  `extension_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Дамп данных таблицы `jos_update_sites_extensions`
--

INSERT INTO `jos_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_updates`
--

CREATE TABLE IF NOT EXISTS `jos_updates` (
  `update_id` int(11) NOT NULL auto_increment,
  `update_site_id` int(11) default '0',
  `extension_id` int(11) default '0',
  `categoryid` int(11) default '0',
  `name` varchar(100) default '',
  `description` text NOT NULL,
  `element` varchar(100) default '',
  `type` varchar(20) default '',
  `folder` varchar(20) default '',
  `client_id` tinyint(3) default '0',
  `version` varchar(10) default '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY  (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=614 ;

--
-- Дамп данных таблицы `jos_updates`
--

INSERT INTO `jos_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.7.3', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(2, 3, 0, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/km-KH_details.xml', ''),
(3, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(4, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(5, 3, 0, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bg-BG_details.xml', ''),
(6, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(7, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(8, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(9, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(10, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(11, 3, 0, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/uk-UA_details.xml', ''),
(12, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(13, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(14, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(15, 3, 0, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/et-EE_details.xml', ''),
(16, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.5.1', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(17, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(18, 3, 0, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/mk-MK_details.xml', ''),
(19, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(20, 3, 0, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sr-YU_details.xml', ''),
(21, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(22, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(23, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(24, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(25, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(26, 3, 0, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sr-RS_details.xml', ''),
(27, 3, 0, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/lt-LT_details.xml', ''),
(28, 3, 0, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '2.5.1.5', '', 'http://update.joomla.org/language/details/sq-AL_details.xml', ''),
(29, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(30, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(31, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(32, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(180, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(34, 3, 0, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/he-IL_details.xml', ''),
(35, 3, 0, 0, 'Laotian', '', 'pkg_lo-LA', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/lo-LA_details.xml', ''),
(36, 3, 0, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '2.5.6.2', '', 'http://update.joomla.org/language/details/af-ZA_details.xml', ''),
(37, 3, 0, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/zh-CN_details.xml', ''),
(38, 3, 0, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/el-GR_details.xml', ''),
(39, 3, 0, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/eo-XX_details.xml', ''),
(40, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(41, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(42, 3, 0, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/zh-TW_details.xml', ''),
(43, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(44, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(45, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(46, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(47, 3, 0, 0, 'Azeri', '', 'pkg_az-AZ', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/az-AZ_details.xml', ''),
(48, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(49, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(50, 3, 0, 0, 'Scottish Gaelic', '', 'pkg_gd-GB', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/gd-GB_details.xml', ''),
(51, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(52, 3, 0, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '1.7.0.1', '', 'http://update.joomla.org/language/details/eu-ES_details.xml', ''),
(53, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.1', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(54, 3, 0, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ko-KR_details.xml', ''),
(55, 3, 0, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/hi-IN_details.xml', ''),
(56, 3, 0, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '2.5.6.1', '', 'http://update.joomla.org/language/details/cy-GB_details.xml', ''),
(57, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(59, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(60, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(61, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(62, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(63, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(64, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(65, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(66, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(67, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(68, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(69, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(70, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(71, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(92, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(73, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(74, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(75, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(76, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(77, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(78, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(79, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(80, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(81, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(82, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(83, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(84, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(85, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(86, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(87, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(88, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(89, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(90, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(91, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(93, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(94, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(95, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(96, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(97, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(98, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(99, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(100, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(101, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(102, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(103, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(104, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(105, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(106, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(107, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(108, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(109, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(110, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(111, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(112, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(113, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(114, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(115, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(116, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(117, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(118, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(119, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(120, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(121, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(122, 3, 0, 0, 'Indonesian', '', 'pkg_id-ID', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/id-ID_details.xml', ''),
(123, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(124, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(125, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(126, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(127, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(128, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(129, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(130, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(131, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(132, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(133, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(134, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(135, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(136, 3, 10043, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '2.5.8.4', '', 'http://update.joomla.org/language/details/ru-RU_details.xml', ''),
(137, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(138, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(139, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(140, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(141, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(142, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(143, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(144, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(145, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(146, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(147, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(148, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(149, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(150, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(151, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(152, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(153, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(154, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(155, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(156, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(157, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(158, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(159, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(160, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(161, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(162, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(163, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(164, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(165, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(166, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(167, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(168, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(169, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(170, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(171, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(172, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(173, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(174, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(175, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(176, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(177, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(178, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(179, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(181, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(182, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(183, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(184, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(185, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(186, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(187, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(188, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(189, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(190, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(191, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(192, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(193, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(194, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(195, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(196, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(197, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(198, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(199, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(200, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(201, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(202, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(203, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(204, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(205, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(206, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(207, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(208, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(209, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(210, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(211, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(212, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(213, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(214, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(215, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(216, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(217, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(218, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(219, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(220, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(221, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(222, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(223, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(224, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(225, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(226, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(227, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(228, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(229, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(230, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(231, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(232, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(233, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(234, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(235, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(236, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(237, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(238, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(239, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(240, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(241, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(242, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(243, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(244, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(245, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(246, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(247, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(248, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(249, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(250, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(251, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(252, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(253, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(254, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(255, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(256, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(257, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(258, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(259, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(260, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(261, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(262, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(263, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(264, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(265, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(266, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(267, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(268, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(269, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(270, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(271, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(272, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(273, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(274, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(275, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(276, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(277, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(278, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(279, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(280, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(281, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(282, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(283, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(284, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(285, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(286, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(287, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(288, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(289, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(290, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(291, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(292, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(293, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(294, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(295, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(296, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(297, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(298, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(299, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(300, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(301, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(302, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(303, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(304, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(305, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(306, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(307, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(308, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(309, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(310, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(311, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(312, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(313, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(314, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(315, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(316, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(317, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(318, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(319, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(320, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(321, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(322, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(323, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(324, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(325, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(326, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(327, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(328, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(329, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(330, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(331, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(332, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(333, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(334, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(335, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(336, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(337, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(338, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(339, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(340, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(341, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(342, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(343, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(344, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(345, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(346, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(347, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(348, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(349, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(350, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', '');
INSERT INTO `jos_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(351, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(352, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(353, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(354, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(355, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(356, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(357, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(358, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(359, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(360, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(361, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(362, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(363, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(364, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(365, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(366, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(367, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(368, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(369, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(370, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(371, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(372, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(373, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(374, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(375, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(376, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(377, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(378, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(379, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(380, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(381, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(382, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(383, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(384, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(385, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(386, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(387, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(388, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(389, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(390, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(391, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(392, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(393, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(394, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(395, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(396, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(397, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(398, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(399, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(400, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(401, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(402, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(403, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(404, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(405, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(406, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(407, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(408, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(409, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(410, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(411, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(412, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(413, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(414, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(415, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(416, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(417, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(418, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(419, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(420, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(421, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(422, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(423, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(424, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(425, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(426, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(427, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(428, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(429, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(430, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(431, 3, 0, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-PT_details.xml', ''),
(432, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(433, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(434, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(435, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(436, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(437, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(438, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(439, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(440, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(441, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(442, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(443, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(444, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(445, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(446, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(447, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(448, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(449, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(450, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(451, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(452, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(453, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(454, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(455, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(456, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(457, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(458, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(459, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(460, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(461, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(462, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(463, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(464, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(465, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(466, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(467, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(468, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(469, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(470, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(471, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(472, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(473, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(474, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(475, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(476, 3, 0, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hy-AM_details.xml', ''),
(477, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(478, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(479, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(480, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(481, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(482, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(483, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(484, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(485, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(486, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(487, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(488, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.5.3', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(489, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(490, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(491, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(492, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(493, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(494, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(495, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(496, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(497, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(498, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(499, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(500, 3, 0, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ca-ES_details.xml', ''),
(501, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(502, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(503, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(504, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(505, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(506, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(507, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(508, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(509, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(510, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(511, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(512, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(513, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(514, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(515, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(516, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(517, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(518, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(519, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(520, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(521, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(522, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(523, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.5.3', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(524, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(525, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(526, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(527, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(528, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(529, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(530, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(531, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(532, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(533, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(534, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(535, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(536, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(537, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(538, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(539, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(540, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(541, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(542, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(543, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(544, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(545, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(546, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(547, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(548, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(549, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(550, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(551, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(552, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(553, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(554, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(555, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(556, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(557, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.5.3', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(558, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(559, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(560, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(561, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(562, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(563, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(564, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(565, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(566, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(567, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(568, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(569, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(570, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(571, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(572, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(573, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(574, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(575, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(576, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(577, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(578, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(579, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', ''),
(580, 3, 0, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/da-DK_details.xml', ''),
(581, 3, 0, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sv-SE_details.xml', ''),
(582, 3, 0, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hu-HU_details.xml', ''),
(583, 3, 0, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fr-FR_details.xml', ''),
(584, 3, 0, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/it-IT_details.xml', ''),
(585, 3, 0, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/es-ES_details.xml', ''),
(586, 3, 0, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-NL_details.xml', ''),
(587, 3, 0, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/tr-TR_details.xml', ''),
(588, 3, 0, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sk-SK_details.xml', ''),
(589, 3, 0, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/be-BY_details.xml', ''),
(590, 3, 0, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/lv-LV_details.xml', ''),
(591, 3, 0, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '2.5.5.3', '', 'http://update.joomla.org/language/details/ro-RO_details.xml', ''),
(592, 3, 0, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nl-BE_details.xml', ''),
(593, 3, 0, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ja-JP_details.xml', ''),
(594, 3, 0, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ar-AA_details.xml', ''),
(595, 3, 0, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/de-DE_details.xml', ''),
(596, 3, 0, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nb-NO_details.xml', ''),
(597, 3, 0, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-AU_details.xml', ''),
(598, 3, 0, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/en-US_details.xml', ''),
(599, 3, 0, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/fa-IR_details.xml', ''),
(600, 3, 0, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '2.5.7.4', '', 'http://update.joomla.org/language/details/gl-ES_details.xml', ''),
(601, 3, 0, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pl-PL_details.xml', ''),
(602, 3, 0, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/sy-IQ_details.xml', ''),
(603, 3, 0, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '2.5.8.2', '', 'http://update.joomla.org/language/details/fi-FI_details.xml', ''),
(604, 3, 0, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/pt-BR_details.xml', ''),
(605, 3, 0, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/vi-VN_details.xml', ''),
(606, 3, 0, 0, 'Kurdish Sorani', '', 'pkg_ckb-IQ', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ckb-IQ_details.xml', ''),
(607, 3, 0, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/bs-BA_details.xml', ''),
(608, 3, 0, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/hr-HR_details.xml', ''),
(609, 3, 0, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/nn-NO_details.xml', ''),
(610, 3, 0, 0, 'Tamil India', '', 'pkg_ta-IN', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/ta-IN_details.xml', ''),
(611, 3, 0, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '2.5.8.1', '', 'http://update.joomla.org/language/details/th-TH_details.xml', ''),
(612, 3, 0, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '2.5.7.2', '', 'http://update.joomla.org/language/details/ug-CN_details.xml', ''),
(613, 3, 0, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '2.5.8.3', '', 'http://update.joomla.org/language/details/sw-KE_details.xml', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_user_notes`
--

CREATE TABLE IF NOT EXISTS `jos_user_notes` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL default '0',
  `catid` int(10) unsigned NOT NULL default '0',
  `subject` varchar(100) NOT NULL default '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL default '0',
  `checked_out` int(10) unsigned NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL default '0',
  `created_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `jos_user_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL default '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Структура таблицы `jos_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL default '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY  (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jos_user_usergroup_map`
--

INSERT INTO `jos_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8),
(43, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_usergroups`
--

CREATE TABLE IF NOT EXISTS `jos_usergroups` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL default '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL default '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL default '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` USING BTREE (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `jos_usergroups`
--

INSERT INTO `jos_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users'),
(12, 2, 15, 16, 'Customer Group (Example)'),
(10, 3, 12, 13, 'Shop Suppliers (Example)');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `username` varchar(150) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `password` varchar(100) NOT NULL default '',
  `usertype` varchar(25) NOT NULL default '',
  `block` tinyint(4) NOT NULL default '0',
  `sendEmail` tinyint(4) default '0',
  `registerDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL default '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL default '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL default '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL default '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY  (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Дамп данных таблицы `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(42, 'Super User', 'admin', 'andreyalek@gmail.com', '477b9284a3651c0715590251ad5711f3:cuVPr7Qqr5OGTjByyF1Rwj1xkUQikiCW', 'deprecated', 0, 1, '2012-02-04 19:21:37', '2012-12-21 23:32:54', '0', '{}', '0000-00-00 00:00:00', 0),
(43, 'Andrey', 'andrey', 'august-ru@mail.ru', 'e6a6a30126aa1e4de302815cc21193a0:0PaVzuGFEOTwUbFGUuw9dISRSqR2RQjE', '', 0, 0, '2012-12-20 22:52:40', '2012-12-21 23:34:20', '', '{}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `jos_viewlevels`
--

CREATE TABLE IF NOT EXISTS `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL default '',
  `ordering` int(11) NOT NULL default '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `jos_viewlevels`
--

INSERT INTO `jos_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(4, 'Customer Access Level (Example)', 3, '[6,3,12]');

-- --------------------------------------------------------

--
-- Структура таблицы `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `catid` int(11) NOT NULL default '0',
  `sid` int(11) NOT NULL default '0',
  `title` varchar(250) NOT NULL default '',
  `alias` varchar(255) character set utf8 collate utf8_bin NOT NULL default '',
  `url` varchar(250) NOT NULL default '',
  `description` text NOT NULL,
  `date` datetime NOT NULL default '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL default '0',
  `state` tinyint(1) NOT NULL default '0',
  `checked_out` int(11) NOT NULL default '0',
  `checked_out_time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL default '0',
  `archived` tinyint(1) NOT NULL default '0',
  `approved` tinyint(1) NOT NULL default '1',
  `access` int(11) NOT NULL default '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL default '',
  `created` datetime NOT NULL default '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL default '0',
  `created_by_alias` varchar(255) NOT NULL default '',
  `modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL default '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL default '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL default '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `state`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `access`, `params`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 32, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', '<p>Home of Joomla!</p>', '0000-00-00 00:00:00', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 33, 0, 'php.net', 'php', 'http://www.php.net', '<p>The language that Joomla! is developed in</p>', '0000-00-00 00:00:00', 6, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 33, 0, 'MySQL', 'mysql', 'http://www.mysql.com', '<p>The most commonly used database for Joomla!.</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"","width":"","height":"","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2012-01-17 16:19:43', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 32, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', '<p>Home of OSM</p>', '0000-00-00 00:00:00', 11, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 32, 0, 'Joomla! - Forums', 'joomla-forums', 'http://forum.joomla.org', '<p>Joomla! Forums</p>', '0000-00-00 00:00:00', 4, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 33, 0, 'Ohloh Tracking of Joomla!', 'ohloh-tracking-of-joomla', 'http://www.ohloh.net/projects/20', '<p>Objective reports from Ohloh about Joomla''s development activity. Joomla! has some star developers with serious kudos.</p>', '0000-00-00 00:00:00', 1, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 31, 0, 'Baw Baw National Park', 'baw-baw-national-park', 'http://www.parkweb.vic.gov.au/1park_display.cfm?park=44', '<p>Park of the Austalian Alps National Parks system, Baw Baw  features sub alpine vegetation, beautiful views, and opportunities for hiking, skiing and other outdoor activities.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 31, 0, 'Kakadu', 'kakadu', 'http://www.environment.gov.au/parks/kakadu/index.html', '<p>Kakadu is known for both its cultural heritage and its natural features. It is one of a small number of places listed as World Heritage Places for both reasons. Extensive rock art is found there.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 31, 0, 'Pulu Keeling', 'pulu-keeling', 'http://www.environment.gov.au/parks/cocos/index.html', '<p>Located on an atoll 2000 kilometers north of Perth, Pulu Keeling is Australia''s smallest national park.</p>', '0000-00-00 00:00:00', 0, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, 1, '{"target":"0","count_clicks":""}', 'en-GB', '2011-01-01 00:00:01', 0, '', '2011-01-01 00:00:01', 42, '', '', '{"robots":"","author":"","rights":""}', 0, '', '2010-07-10 23:44:03', '0000-00-00 00:00:00');
--
-- База данных: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Структура таблицы `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATE_NAME` varchar(64) NOT NULL default '',
  `DESCRIPTION` varchar(60) NOT NULL default '',
  `MAXLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `ID` bigint(11) NOT NULL default '0',
  `IS_DEFAULT` varchar(3) NOT NULL default '',
  `IS_COMPILED` varchar(3) NOT NULL default '',
  `SORTLEN` bigint(3) NOT NULL default '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', '', 0),
('dec8_bin', 'dec8', 69, '', '', 0),
('cp850_general_ci', 'cp850', 4, 'Yes', '', 0),
('cp850_bin', 'cp850', 80, '', '', 0),
('hp8_english_ci', 'hp8', 6, 'Yes', '', 0),
('hp8_bin', 'hp8', 72, '', '', 0),
('koi8r_general_ci', 'koi8r', 7, 'Yes', '', 0),
('koi8r_bin', 'koi8r', 74, '', '', 0),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', '', 0),
('swe7_bin', 'swe7', 82, '', '', 0),
('ascii_general_ci', 'ascii', 11, 'Yes', '', 0),
('ascii_bin', 'ascii', 65, '', '', 0),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', '', 0),
('hebrew_bin', 'hebrew', 71, '', '', 0),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', '', 0),
('koi8u_bin', 'koi8u', 75, '', '', 0),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', '', 0),
('greek_bin', 'greek', 70, '', '', 0),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', '', 0),
('latin5_bin', 'latin5', 78, '', '', 0),
('armscii8_general_ci', 'armscii8', 32, 'Yes', '', 0),
('armscii8_bin', 'armscii8', 64, '', '', 0),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', '', 0),
('cp866_bin', 'cp866', 68, '', '', 0),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', '', 0),
('keybcs2_bin', 'keybcs2', 73, '', '', 0),
('macce_general_ci', 'macce', 38, 'Yes', '', 0),
('macce_bin', 'macce', 43, '', '', 0),
('macroman_general_ci', 'macroman', 39, 'Yes', '', 0),
('macroman_bin', 'macroman', 53, '', '', 0),
('cp852_general_ci', 'cp852', 40, 'Yes', '', 0),
('cp852_bin', 'cp852', 81, '', '', 0),
('latin7_estonian_cs', 'latin7', 20, '', '', 0),
('latin7_general_ci', 'latin7', 41, 'Yes', '', 0),
('latin7_general_cs', 'latin7', 42, '', '', 0),
('latin7_bin', 'latin7', 79, '', '', 0),
('cp1251_bulgarian_ci', 'cp1251', 14, '', '', 0),
('cp1251_ukrainian_ci', 'cp1251', 23, '', '', 0),
('cp1251_bin', 'cp1251', 50, '', '', 0),
('cp1251_general_ci', 'cp1251', 51, 'Yes', '', 0),
('cp1251_general_cs', 'cp1251', 52, '', '', 0),
('cp1256_general_ci', 'cp1256', 57, 'Yes', '', 0),
('cp1256_bin', 'cp1256', 67, '', '', 0),
('cp1257_lithuanian_ci', 'cp1257', 29, '', '', 0),
('cp1257_bin', 'cp1257', 58, '', '', 0),
('cp1257_general_ci', 'cp1257', 59, 'Yes', '', 0),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', '', 0),
('geostd8_bin', 'geostd8', 93, '', '', 0),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(64) NOT NULL default '',
  `CHARACTER_SET_NAME` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Структура таблицы `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(21) NOT NULL default '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL default '',
  `DATA_TYPE` varchar(64) NOT NULL default '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) default NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) default NULL,
  `NUMERIC_PRECISION` bigint(21) default NULL,
  `NUMERIC_SCALE` bigint(21) default NULL,
  `CHARACTER_SET_NAME` varchar(64) default NULL,
  `COLLATION_NAME` varchar(64) default NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL default '',
  `EXTRA` varchar(20) NOT NULL default '',
  `PRIVILEGES` varchar(80) NOT NULL default '',
  `COLUMN_COMMENT` varchar(255) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'advan383_shop', 'jos_assets', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', 'Primary Key'),
(NULL, 'advan383_shop', 'jos_assets', 'parent_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', 'Nested set parent.'),
(NULL, 'advan383_shop', 'jos_assets', 'lft', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', 'Nested set lft.'),
(NULL, 'advan383_shop', 'jos_assets', 'rgt', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', 'Nested set rgt.'),
(NULL, 'advan383_shop', 'jos_assets', 'level', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', 'The cached level in the nested tree.'),
(NULL, 'advan383_shop', 'jos_assets', 'name', 6, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'UNI', '', 'select,insert,update,references', 'The unique name for the asset.\n'),
(NULL, 'advan383_shop', 'jos_assets', 'title', 7, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', 'The descriptive title for the asset.'),
(NULL, 'advan383_shop', 'jos_assets', 'rules', 8, NULL, 'NO', 'varchar', 5120, 15360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5120)', '', '', 'select,insert,update,references', 'JSON encoded access control.'),
(NULL, 'advan383_shop', 'jos_associations', 'id', 1, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', 'A reference to the associated item.'),
(NULL, 'advan383_shop', 'jos_associations', 'context', 2, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', 'The context of the associated item.'),
(NULL, 'advan383_shop', 'jos_associations', 'key', 3, NULL, 'NO', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(32)', 'MUL', '', 'select,insert,update,references', 'The key for the association computed from an md5 on associated ids.'),
(NULL, 'advan383_shop', 'jos_banner_clients', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'contact', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'email', 4, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'extrainfo', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'state', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'checked_out', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'checked_out_time', 8, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'metakey', 9, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'own_prefix', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'metakey_prefix', 11, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'purchase_type', 12, '-1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'track_clicks', 13, '-1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'track_impressions', 14, '-1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 'track_date', 1, NULL, 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 'track_type', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 'banner_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 'count', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'cid', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'type', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'name', 4, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'alias', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'imptotal', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'impmade', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'clicks', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'clickurl', 9, '', 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'state', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'catid', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'description', 12, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'custombannercode', 13, NULL, 'NO', 'varchar', 2048, 6144, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(2048)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'sticky', 14, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'ordering', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'metakey', 16, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'params', 17, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'own_prefix', 18, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'metakey_prefix', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'purchase_type', 20, '-1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'track_clicks', 21, '-1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'track_impressions', 22, '-1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'checked_out', 23, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'checked_out_time', 24, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'publish_up', 25, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'publish_down', 26, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'reset', 27, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'created', 28, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_banners', 'language', 29, '', 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'asset_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', 'FK to the #__assets table.'),
(NULL, 'advan383_shop', 'jos_categories', 'parent_id', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'lft', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'rgt', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'level', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'path', 7, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'extension', 8, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'title', 9, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'alias', 10, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'note', 11, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'description', 12, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'published', 13, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'checked_out', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'checked_out_time', 15, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'access', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'params', 17, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'metadesc', 18, NULL, 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select,insert,update,references', 'The meta description for the page.'),
(NULL, 'advan383_shop', 'jos_categories', 'metakey', 19, NULL, 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select,insert,update,references', 'The meta keywords for the page.'),
(NULL, 'advan383_shop', 'jos_categories', 'metadata', 20, NULL, 'NO', 'varchar', 2048, 6144, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(2048)', '', '', 'select,insert,update,references', 'JSON encoded metadata properties.'),
(NULL, 'advan383_shop', 'jos_categories', 'created_user_id', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'created_time', 22, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'modified_user_id', 23, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'modified_time', 24, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'hits', 25, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_categories', 'language', 26, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'alias', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'con_position', 4, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'address', 5, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'suburb', 6, NULL, 'YES', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'state', 7, NULL, 'YES', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'country', 8, NULL, 'YES', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'postcode', 9, NULL, 'YES', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'telephone', 10, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'fax', 11, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'misc', 12, NULL, 'YES', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'image', 13, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'imagepos', 14, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'email_to', 15, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'default_con', 16, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'published', 17, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'checked_out', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'checked_out_time', 19, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'ordering', 20, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'params', 21, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'user_id', 22, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'catid', 23, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'access', 24, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'advan383_shop', 'jos_contact_details', 'mobile', 25, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'webpage', 26, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'sortname1', 27, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'sortname2', 28, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'sortname3', 29, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'language', 30, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'created', 31, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'created_by', 32, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'created_by_alias', 33, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'modified', 34, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'modified_by', 35, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'metakey', 36, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'metadesc', 37, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'metadata', 38, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'featured', 39, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', 'MUL', '', 'select,insert,update,references', 'Set if article is featured.'),
(NULL, 'advan383_shop', 'jos_contact_details', 'xreference', 40, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', 'A reference to enable linkages to external data sets.'),
(NULL, 'advan383_shop', 'jos_contact_details', 'publish_up', 41, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'publish_down', 42, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'asset_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', 'FK to the #__assets table.'),
(NULL, 'advan383_shop', 'jos_content', 'title', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'alias', 4, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'title_alias', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', 'Deprecated in Joomla! 3.0'),
(NULL, 'advan383_shop', 'jos_content', 'introtext', 6, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'fulltext', 7, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'state', 8, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'sectionid', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'mask', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'catid', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'created', 12, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'created_by', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'created_by_alias', 14, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'modified', 15, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'modified_by', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'checked_out', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'checked_out_time', 18, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'publish_up', 19, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'publish_down', 20, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'images', 21, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'urls', 22, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'attribs', 23, NULL, 'NO', 'varchar', 5120, 15360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5120)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'version', 24, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'parentid', 25, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'ordering', 26, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'metakey', 27, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'metadesc', 28, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'access', 29, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'hits', 30, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'metadata', 31, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content', 'featured', 32, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', 'MUL', '', 'select,insert,update,references', 'Set if article is featured.'),
(NULL, 'advan383_shop', 'jos_content', 'language', 33, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', 'The language code for the article.'),
(NULL, 'advan383_shop', 'jos_content', 'xreference', 34, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', 'A reference to enable linkages to external data sets.'),
(NULL, 'advan383_shop', 'jos_content_frontpage', 'content_id', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content_frontpage', 'ordering', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content_rating', 'content_id', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content_rating', 'rating_sum', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content_rating', 'rating_count', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_content_rating', 'lastip', 4, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_core_log_searches', 'search_term', 1, '', 'NO', 'varchar', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_core_log_searches', 'hits', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'extension_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'name', 2, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'type', 3, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'element', 4, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'folder', 5, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'client_id', 6, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'enabled', 7, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'access', 8, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'protected', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'manifest_cache', 10, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'params', 11, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'custom_data', 12, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'system_data', 13, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'checked_out', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'checked_out_time', 15, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'ordering', 16, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'state', 17, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'filter_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'title', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'alias', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'state', 4, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'created', 5, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'created_by', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'created_by_alias', 7, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'modified', 8, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'modified_by', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'checked_out', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'checked_out_time', 11, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'map_count', 12, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'data', 13, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'params', 14, NULL, 'YES', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'url', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'route', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'title', 4, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'description', 5, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'indexdate', 6, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'md5sum', 7, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'published', 8, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'state', 9, '1', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'access', 10, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'language', 11, NULL, 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'publish_start_date', 12, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'publish_end_date', 13, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'start_date', 14, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'end_date', 15, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'list_price', 16, '0', 'NO', 'double unsigned', NULL, NULL, 22, NULL, NULL, NULL, 'double unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'sale_price', 17, '0', 'NO', 'double unsigned', NULL, NULL, 22, NULL, NULL, NULL, 'double unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'type_id', 18, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'object', 19, NULL, 'NO', 'mediumblob', 16777215, 16777215, NULL, NULL, NULL, NULL, 'mediumblob', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 'term_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 'weight', 3, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 'parent_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 'title', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 'state', 4, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 'access', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 'ordering', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 'link_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 'node_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'term_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'term', 2, NULL, 'NO', 'varchar', 75, 225, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(75)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'stem', 3, NULL, 'NO', 'varchar', 75, 225, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(75)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'common', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'phrase', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'weight', 6, '0', 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'soundex', 7, NULL, 'NO', 'varchar', 75, 225, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(75)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'links', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms_common', 'term', 1, NULL, 'NO', 'varchar', 75, 225, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(75)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_terms_common', 'language', 2, NULL, 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 'term', 1, NULL, 'NO', 'varchar', 75, 225, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(75)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 'stem', 2, NULL, 'NO', 'varchar', 75, 225, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(75)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 'common', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 'phrase', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 'weight', 5, '1', 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 'context', 6, '2', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'term_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'map_suffix', 2, NULL, 'NO', 'char', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'term', 3, NULL, 'NO', 'varchar', 75, 225, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(75)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'stem', 4, NULL, 'NO', 'varchar', 75, 225, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(75)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'common', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'phrase', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'term_weight', 7, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'context', 8, '2', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'context_weight', 9, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'total_weight', 10, NULL, 'NO', 'float unsigned', NULL, NULL, 12, NULL, NULL, NULL, 'float unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_types', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_types', 'title', 2, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_finder_types', 'mime', 3, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_addons', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_addons', 'alias', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_addons', 'key', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_addons', 'version', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_addons', 'params', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr', 'attr_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr', 'attr_ordering', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr', 'attr_type', 3, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr', 'independent', 4, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr', 'name_en-GB', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr', 'name_ru-RU', 6, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr_values', 'value_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr_values', 'attr_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr_values', 'value_ordering', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr_values', 'image', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr_values', 'name_en-GB', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr_values', 'name_ru-RU', 6, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_cart_temp', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_cart_temp', 'id_cookie', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_cart_temp', 'cart', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_cart_temp', 'type_cart', 4, NULL, 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'category_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'category_image', 2, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'category_parent_id', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'category_publish', 4, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'category_ordertype', 5, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'category_template', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'ordering', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'category_add_date', 8, '0000-00-00 00:00:00', 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'products_page', 9, '12', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'products_row', 10, '3', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'access', 11, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'name_en-GB', 12, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'alias_en-GB', 13, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'short_description_en-GB', 14, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'description_en-GB', 15, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'meta_title_en-GB', 16, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'meta_description_en-GB', 17, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'meta_keyword_en-GB', 18, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'name_ru-RU', 19, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'alias_ru-RU', 20, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'short_description_ru-RU', 21, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'description_ru-RU', 22, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'meta_title_ru-RU', 23, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'meta_description_ru-RU', 24, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'meta_keyword_ru-RU', 25, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'id', 1, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'count_products_to_page', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'count_products_to_row', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'count_category_to_row', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'image_category_width', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'image_category_height', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'image_product_width', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'image_product_height', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'image_product_full_width', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'image_product_full_height', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'video_product_width', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'video_product_height', 12, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'adminLanguage', 13, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'defaultLanguage', 14, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'mainCurrency', 15, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'decimal_count', 16, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'decimal_symbol', 17, NULL, 'NO', 'varchar', 5, 15, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'thousand_separator', 18, NULL, 'NO', 'varchar', 5, 15, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'currency_format', 19, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'use_rabatt_code', 20, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'enable_wishlist', 21, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'default_status_order', 22, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'advan383_shop', 'jos_jshopping_config', 'order_number_type', 23, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'store_address_format', 24, NULL, 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'store_date_format', 25, NULL, 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'contact_email', 26, NULL, 'NO', 'varchar', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'allow_reviews_prod', 27, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'allow_reviews_only_registered', 28, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'allow_reviews_manuf', 29, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'max_mark', 30, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'summ_null_shipping', 31, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'without_shipping', 32, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'without_payment', 33, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'pdf_parameters', 34, NULL, 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'next_order_number', 35, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'shop_user_guest', 36, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'hide_product_not_avaible_stock', 37, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_buy_in_category', 38, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'user_as_catalog', 39, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_tax_in_product', 40, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_tax_product_in_cart', 41, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_plus_shipping_in_product', 42, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'hide_buy_not_avaible_stock', 43, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_sort_product', 44, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_count_select_products', 45, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'order_send_pdf_client', 46, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'order_send_pdf_admin', 47, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_delivery_time', 48, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'securitykey', 49, NULL, 'NO', 'varchar', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'demo_type', 50, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_show_manufacturer_logo', 51, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_show_manufacturer', 52, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_show_weight', 53, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'max_count_order_one_product', 54, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'min_count_order_one_product', 55, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'min_price_order', 56, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'max_price_order', 57, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'hide_tax', 58, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'licensekod', 59, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_attribut_first_value_empty', 60, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_hits', 61, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_registerform_in_logintemplate', 62, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_product_basic_price', 63, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_attributes', 64, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_delivery_time', 65, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_languages', 66, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'use_different_templates_cat_prod', 67, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_product_video', 68, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_product_related', 69, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_product_files', 70, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_product_bay_price', 71, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_product_labels', 72, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'sorting_country_in_alphabet', 73, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'hide_text_product_not_available', 74, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_weight_order', 75, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'discount_use_full_sum', 76, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_cart_all_step_checkout', 77, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'use_plugin_content', 78, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'display_price_admin', 79, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'display_price_front', 80, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_show_weight', 81, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_show_manufacturer', 82, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'use_extend_tax_rule', 83, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'use_extend_display_price_rule', 84, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'fields_register', 85, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'template', 86, NULL, 'NO', 'varchar', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_product_code', 87, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_product_code_in_cart', 88, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'savelog', 89, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'savelogpaymentdata', 90, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_show_min_price', 91, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_count_related_in_row', 92, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'category_sorting', 93, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_sorting', 94, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_sorting_direction', 95, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_product_list_filters', 96, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_product_extra_field', 97, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_display_extra_fields', 98, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'filter_display_extra_fields', 99, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_hide_extra_fields', 100, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'default_country', 101, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'show_return_policy_in_email_order', 102, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'client_allow_cancel_order', 103, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_vendors', 104, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'vendor_order_message_type', 105, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_not_send_email_order_vendor_order', 106, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'not_redirect_in_cart_after_buy', 107, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_show_vendor', 108, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_show_vendor_detail', 109, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_show_vendor', 110, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_freeattributes', 111, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_show_button_back', 112, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'calcule_tax_after_discount', 113, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_show_product_code', 114, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'radio_attr_value_vertical', 115, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'attr_display_addprice', 116, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'use_ssl', 117, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_show_price_description', 118, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'display_button_print', 119, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'hide_shipping_step', 120, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'hide_payment_step', 121, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'image_resize_type', 122, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'use_extend_attribute_data', 123, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_show_price_default', 124, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_list_show_qty_stock', 125, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'product_show_qty_stock', 126, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'displayprice', 127, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'use_decimal_qty', 128, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'ext_tax_rule_for', 129, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'display_reviews_without_confirm', 130, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'manufacturer_sorting', 131, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'admin_show_units', 132, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'main_unit_weight', 133, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'create_alias_product_category_auto', 134, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_display_prices', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_display_prices', 'zones', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_display_prices', 'display_price', 3, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_display_prices', 'display_price_firma', 4, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'alias', 2, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'ordering', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'title_en-GB', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'keyword_en-GB', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'description_en-GB', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'title_ru-RU', 7, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'keyword_ru-RU', 8, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'description_ru-RU', 9, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_statictext', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_statictext', 'alias', 2, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_statictext', 'text_en-GB', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_statictext', 'text_ru-RU', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'country_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'country_publish', 2, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'ordering', 3, NULL, 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'country_code', 4, NULL, 'NO', 'varchar', 5, 15, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'country_code_2', 5, NULL, 'NO', 'varchar', 5, 15, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'name_en-GB', 6, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'name_de-DE', 7, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'name_ru-RU', 8, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'coupon_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'coupon_type', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', 'value_or_percent'),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'coupon_code', 3, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'coupon_value', 4, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'tax_id', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'used', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'for_user_id', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'coupon_start_date', 8, '0000-00-00', 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'coupon_expire_date', 9, '0000-00-00', 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'finished_after_used', 10, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'coupon_publish', 11, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 'currency_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 'currency_name', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 'currency_code', 3, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 'currency_code_iso', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 'currency_ordering', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 'currency_value', 6, '0.000000', 'NO', 'decimal', NULL, NULL, 14, 6, NULL, NULL, 'decimal(14,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 'currency_publish', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_delivery_times', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_delivery_times', 'name_en-GB', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_delivery_times', 'name_ru-RU', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_free_attr', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_free_attr', 'ordering', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_free_attr', 'required', 3, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_free_attr', 'type', 4, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_free_attr', 'name_en-GB', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_free_attr', 'name_ru-RU', 6, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 'name', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 'alias', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 'description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 'params', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 'endstart', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 'steptime', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_languages', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_languages', 'language', 2, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_languages', 'name', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_languages', 'publish', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_languages', 'ordering', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'manufacturer_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'manufacturer_url', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'manufacturer_logo', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'manufacturer_publish', 4, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'products_page', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'products_row', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'ordering', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'name_en-GB', 8, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'alias_en-GB', 9, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'short_description_en-GB', 10, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'description_en-GB', 11, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'meta_title_en-GB', 12, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'meta_description_en-GB', 13, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'meta_keyword_en-GB', 14, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'name_ru-RU', 15, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'alias_ru-RU', 16, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'short_description_ru-RU', 17, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'description_ru-RU', 18, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'meta_title_ru-RU', 19, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'meta_description_ru-RU', 20, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'meta_keyword_ru-RU', 21, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_history', 'order_history_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_history', 'order_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_history', 'order_status_id', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_history', 'status_date_added', 4, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_history', 'customer_notify', 5, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_history', 'comments', 6, NULL, 'YES', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'order_item_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'order_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'product_id', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'product_ean', 4, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'product_name', 5, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'product_quantity', 6, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'product_item_price', 7, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'product_tax', 8, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'product_attributes', 9, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'product_freeattributes', 10, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'attributes', 11, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'freeattributes', 12, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'files', 13, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'weight', 14, '0.0000', 'NO', 'float', NULL, NULL, 8, 4, NULL, NULL, 'float(8,4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'thumb_image', 15, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'vendor_id', 16, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_status', 'status_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_status', 'status_code', 2, '', 'NO', 'char', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_status', 'name_en-GB', 3, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_status', 'name_de-DE', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_status', 'name_ru-RU', 5, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_number', 2, '0', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'user_id', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_total', 4, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_subtotal', 5, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_tax', 6, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_tax_ext', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_shipping', 8, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_payment', 9, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_discount', 10, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'currency_code', 11, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'currency_code_iso', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'currency_exchange', 13, '0.000000', 'NO', 'decimal', NULL, NULL, 14, 6, NULL, NULL, 'decimal(14,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_status', 14, '', 'NO', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_created', 15, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_date', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_m_date', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'shipping_method_id', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'payment_method_id', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'payment_params', 20, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'payment_params_data', 21, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'ip_address', 22, '', 'NO', 'varchar', 15, 45, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_add_info', 23, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'title', 24, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'f_name', 25, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'l_name', 26, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'firma_name', 27, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'client_type', 28, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'client_type_name', 29, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'firma_code', 30, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'tax_number', 31, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'email', 32, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'street', 33, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'home', 34, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'apartment', 35, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'zip', 36, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'city', 37, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'state', 38, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'country', 39, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'phone', 40, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'mobil_phone', 41, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'fax', 42, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'ext_field_1', 43, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'ext_field_2', 44, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'ext_field_3', 45, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_title', 46, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_f_name', 47, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_l_name', 48, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_firma_name', 49, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_email', 50, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_street', 51, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_home', 52, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_apartment', 53, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_zip', 54, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_city', 55, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_state', 56, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_country', 57, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_phone', 58, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_mobil_phone', 59, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_fax', 60, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_ext_field_1', 61, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_ext_field_2', 62, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'd_ext_field_3', 63, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'pdf_file', 64, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_hash', 65, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'file_hash', 66, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'file_stat_downloads', 67, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_custom_info', 68, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'display_price', 69, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'vendor_type', 70, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'vendor_id', 71, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'lang', 72, NULL, 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'transaction', 73, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'payment_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'name_en-GB', 2, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'description_en-GB', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'name_de-DE', 4, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'description_de-DE', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'payment_code', 6, NULL, 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'payment_class', 7, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'payment_publish', 8, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'payment_ordering', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'payment_params', 10, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'payment_type', 11, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'price', 12, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'price_type', 13, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'tax_id', 14, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'image', 15, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'show_descr_in_email', 16, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'name_ru-RU', 17, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'description_ru-RU', 18, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_product_labels', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_product_labels', 'name', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_product_labels', 'image', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'parent_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_ean', 3, NULL, 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_quantity', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'unlimited', 5, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_availability', 6, NULL, 'NO', 'varchar', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_date_added', 7, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'date_modify', 8, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_publish', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_tax_id', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'currency_id', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_template', 12, 'default', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_url', 13, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_old_price', 14, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_buy_price', 15, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_price', 16, '0.000000', 'NO', 'decimal', NULL, NULL, 18, 6, NULL, NULL, 'decimal(18,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'min_price', 17, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'different_prices', 18, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_weight', 19, '0.0000', 'NO', 'decimal', NULL, NULL, 14, 4, NULL, NULL, 'decimal(14,4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_thumb_image', 20, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_name_image', 21, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_full_image', 22, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_manufacturer_id', 23, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'product_is_add_price', 24, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'add_price_unit_id', 25, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'average_rating', 26, '0.00', 'NO', 'float', NULL, NULL, 4, 2, NULL, NULL, 'float(4,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'reviews_count', 27, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'delivery_times_id', 28, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'hits', 29, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'weight_volume_units', 30, '0.0000', 'NO', 'decimal', NULL, NULL, 14, 4, NULL, NULL, 'decimal(14,4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'basic_price_unit_id', 31, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'label_id', 32, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'vendor_id', 33, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'access', 34, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'name_en-GB', 35, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'alias_en-GB', 36, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'short_description_en-GB', 37, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'description_en-GB', 38, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'meta_title_en-GB', 39, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'meta_description_en-GB', 40, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'meta_keyword_en-GB', 41, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'name_ru-RU', 42, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'alias_ru-RU', 43, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'short_description_ru-RU', 44, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'description_ru-RU', 45, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'meta_title_ru-RU', 46, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'meta_description_ru-RU', 47, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'meta_keyword_ru-RU', 48, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'product_attr_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'product_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'buy_price', 3, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'price', 4, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'old_price', 5, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'count', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'ean', 7, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'weight', 8, NULL, 'NO', 'decimal', NULL, NULL, 12, 4, NULL, NULL, 'decimal(12,4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'weight_volume_units', 9, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'ext_attribute_product_id', 10, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'attr_2', 11, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 'product_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 'attr_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 'attr_value_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 'price_mod', 5, NULL, 'NO', 'char', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 'addprice', 6, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_groups', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_groups', 'ordering', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_groups', 'name_en-GB', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_groups', 'name_ru-RU', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_values', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_values', 'field_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_values', 'ordering', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_values', 'name_en-GB', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_values', 'name_ru-RU', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'allcats', 2, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'cats', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'type', 4, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'group', 5, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'ordering', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'name_en-GB', 7, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'name_ru-RU', 8, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 'product_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 'demo', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 'demo_descr', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 'file', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 'file_descr', 6, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 'ordering', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_free_attr', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_free_attr', 'product_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_free_attr', 'attr_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 'image_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 'product_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 'image_thumb', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 'image_name', 4, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 'image_full', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 'name', 6, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 'ordering', 7, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_prices', 'price_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_prices', 'product_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_prices', 'discount', 3, NULL, 'NO', 'decimal', NULL, NULL, 16, 6, NULL, NULL, 'decimal(16,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_prices', 'product_quantity_start', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_prices', 'product_quantity_finish', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_relations', 'product_id', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_relations', 'product_related_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'review_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'product_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'user_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'user_name', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'user_email', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'time', 6, NULL, 'NO', 'date', NULL, NULL, NULL, NULL, NULL, NULL, 'date', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'review', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'mark', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'publish', 9, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'ip', 10, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 'product_id', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 'category_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 'product_ordering', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_videos', 'video_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_videos', 'product_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_videos', 'video_name', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_videos', 'video_preview', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'name', 2, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'alias', 3, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'params', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'shipping_method', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'published', 7, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'ordering', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'shipping_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'name_en-GB', 2, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'description_en-GB', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'name_de-DE', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'description_de-DE', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'published', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'payments', 7, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'image', 8, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'ordering', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'name_ru-RU', 10, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'description_ru-RU', 11, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price', 'sh_pr_method_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price', 'shipping_method_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price', 'shipping_tax_id', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price', 'shipping_stand_price', 4, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price', 'params', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 'sh_method_country_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 'country_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 'sh_pr_method_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'sh_pr_weight_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'sh_pr_method_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'shipping_price', 3, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'shipping_weight_from', 4, NULL, 'NO', 'decimal', NULL, NULL, 14, 4, NULL, NULL, 'decimal(14,4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'shipping_weight_to', 5, NULL, 'NO', 'decimal', NULL, NULL, 14, 4, NULL, NULL, 'decimal(14,4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'shipping_package_price', 6, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes', 'tax_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes', 'tax_name', 2, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes', 'tax_value', 3, '0.00', 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes_ext', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes_ext', 'tax_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes_ext', 'zones', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes_ext', 'tax', 4, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes_ext', 'firma_tax', 5, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_unit', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_unit', 'qty', 2, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_unit', 'name_de-DE', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_unit', 'name_en-GB', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_unit', 'name_ru-RU', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_usergroups', 'usergroup_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_usergroups', 'usergroup_name', 2, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_usergroups', 'usergroup_discount', 3, NULL, 'NO', 'decimal', NULL, NULL, 12, 2, NULL, NULL, 'decimal(12,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_usergroups', 'usergroup_description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_usergroups', 'usergroup_is_default', 5, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'user_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'usergroup_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'payment_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'shipping_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'u_name', 5, NULL, 'NO', 'varchar', 150, 450, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(150)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'title', 6, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'f_name', 7, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'l_name', 8, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'firma_name', 9, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'client_type', 10, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'firma_code', 11, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'tax_number', 12, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'email', 13, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'street', 14, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'home', 15, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'apartment', 16, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'zip', 17, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'city', 18, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'state', 19, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'advan383_shop', 'jos_jshopping_users', 'country', 20, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'phone', 21, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'mobil_phone', 22, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'fax', 23, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'ext_field_1', 24, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'ext_field_2', 25, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'ext_field_3', 26, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'delivery_adress', 27, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_title', 28, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_f_name', 29, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_l_name', 30, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_firma_name', 31, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_email', 32, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_street', 33, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_home', 34, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_apartment', 35, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_zip', 36, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_city', 37, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_state', 38, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_country', 39, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_phone', 40, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_mobil_phone', 41, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_fax', 42, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_ext_field_1', 43, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_ext_field_2', 44, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'd_ext_field_3', 45, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'shop_name', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'company_name', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'url', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'logo', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'adress', 6, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'city', 7, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'zip', 8, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'state', 9, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'country', 10, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'f_name', 11, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'l_name', 12, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'middlename', 13, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'phone', 14, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'fax', 15, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'email', 16, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'benef_bank_info', 17, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'benef_bic', 18, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'benef_conto', 19, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'benef_payee', 20, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'benef_iban', 21, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'benef_swift', 22, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'interm_name', 23, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'interm_swift', 24, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'identification_number', 25, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'tax_number', 26, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'additional_information', 27, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'user_id', 28, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'main', 29, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'publish', 30, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'lang_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'lang_code', 2, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'title', 3, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'title_native', 4, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'sef', 5, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'image', 6, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'description', 7, NULL, 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'metakey', 8, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'metadesc', 9, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'sitename', 10, '', 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'published', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'access', 12, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_languages', 'ordering', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu', 'menutype', 2, NULL, 'NO', 'varchar', 24, 72, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(24)', 'MUL', '', 'select,insert,update,references', 'The type of menu this item belongs to. FK to #__menu_types.menutype'),
(NULL, 'advan383_shop', 'jos_menu', 'title', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', 'The display title of the menu item.'),
(NULL, 'advan383_shop', 'jos_menu', 'alias', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'MUL', '', 'select,insert,update,references', 'The SEF alias of the menu item.'),
(NULL, 'advan383_shop', 'jos_menu', 'note', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu', 'path', 6, NULL, 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', 'MUL', '', 'select,insert,update,references', 'The computed path of the menu item based on the alias field.'),
(NULL, 'advan383_shop', 'jos_menu', 'link', 7, NULL, 'NO', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select,insert,update,references', 'The actually link the menu item refers to.'),
(NULL, 'advan383_shop', 'jos_menu', 'type', 8, NULL, 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select,insert,update,references', 'The type of link: Component, URL, Alias, Separator'),
(NULL, 'advan383_shop', 'jos_menu', 'published', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', 'The published state of the menu link.'),
(NULL, 'advan383_shop', 'jos_menu', 'parent_id', 10, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', 'The parent menu item in the menu tree.'),
(NULL, 'advan383_shop', 'jos_menu', 'level', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', 'The relative level in the tree.'),
(NULL, 'advan383_shop', 'jos_menu', 'component_id', 12, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', 'FK to #__extensions.id'),
(NULL, 'advan383_shop', 'jos_menu', 'ordering', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', 'The relative ordering of the menu item in the tree.'),
(NULL, 'advan383_shop', 'jos_menu', 'checked_out', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', 'FK to #__users.id'),
(NULL, 'advan383_shop', 'jos_menu', 'checked_out_time', 15, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', 'The time the menu item was checked out.'),
(NULL, 'advan383_shop', 'jos_menu', 'browserNav', 16, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', 'The click behaviour of the link.'),
(NULL, 'advan383_shop', 'jos_menu', 'access', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', 'The access level required to view the menu item.'),
(NULL, 'advan383_shop', 'jos_menu', 'img', 18, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', 'The image of the menu item.'),
(NULL, 'advan383_shop', 'jos_menu', 'template_style_id', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu', 'params', 20, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', 'JSON encoded data for the menu item.'),
(NULL, 'advan383_shop', 'jos_menu', 'lft', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', 'Nested set lft.'),
(NULL, 'advan383_shop', 'jos_menu', 'rgt', 22, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', 'Nested set rgt.'),
(NULL, 'advan383_shop', 'jos_menu', 'home', 23, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', '', '', 'select,insert,update,references', 'Indicates if this menu item is the home or default page.'),
(NULL, 'advan383_shop', 'jos_menu', 'language', 24, '', 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu', 'client_id', 25, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu_types', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu_types', 'menutype', 2, NULL, 'NO', 'varchar', 24, 72, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(24)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu_types', 'title', 3, NULL, 'NO', 'varchar', 48, 144, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(48)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_menu_types', 'description', 4, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'message_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'user_id_from', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'user_id_to', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'folder_id', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'date_time', 5, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'state', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'priority', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'subject', 8, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages', 'message', 9, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages_cfg', 'user_id', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages_cfg', 'cfg_name', 2, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_messages_cfg', 'cfg_value', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'title', 2, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'note', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'content', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'ordering', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'position', 6, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'checked_out', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'checked_out_time', 8, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'publish_up', 9, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'publish_down', 10, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'published', 11, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'module', 12, NULL, 'YES', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'access', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'showtitle', 14, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'params', 15, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'client_id', 16, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules', 'language', 17, NULL, 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules_menu', 'moduleid', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_modules_menu', 'menuid', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'catid', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'name', 3, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'alias', 4, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'link', 5, '', 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'filename', 6, NULL, 'YES', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'published', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'numarticles', 8, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'cache_time', 9, '3600', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'checked_out', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'checked_out_time', 11, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'ordering', 12, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'rtl', 13, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'access', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'language', 15, '', 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'params', 16, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'created', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'created_by', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'created_by_alias', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'modified', 20, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'modified_by', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'metakey', 22, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'metadesc', 23, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'metadata', 24, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'xreference', 25, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', 'A reference to enable linkages to external data sets.'),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'publish_up', 26, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'publish_down', 27, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_overrider', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10)', 'PRI', 'auto_increment', 'select,insert,update,references', 'Primary Key'),
(NULL, 'advan383_shop', 'jos_overrider', 'constant', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_overrider', 'string', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_overrider', 'file', 4, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'old_url', 2, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'new_url', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'referer', 4, NULL, 'NO', 'varchar', 150, 450, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(150)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'comment', 5, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'hits', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'published', 7, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'created_date', 8, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'modified_date', 9, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_schemas', 'extension_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_schemas', 'version_id', 2, NULL, 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_session', 'session_id', 1, '', 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(200)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_session', 'client_id', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_session', 'guest', 3, '1', 'YES', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_session', 'time', 4, '', 'YES', 'varchar', 14, 42, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(14)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_session', 'data', 5, NULL, 'YES', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_session', 'userid', 6, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_session', 'username', 7, '', 'YES', 'varchar', 150, 450, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(150)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_session', 'usertype', 8, '', 'YES', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 'template', 2, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 'client_id', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 'home', 4, '0', 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 'title', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 'params', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_categories', 'categoryid', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_categories', 'name', 2, '', 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_categories', 'description', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_categories', 'parent', 4, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_categories', 'updatesite', 5, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_sites', 'update_site_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_sites', 'name', 2, '', 'YES', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_sites', 'type', 3, '', 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_sites', 'location', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_sites', 'enabled', 5, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_sites', 'last_check_timestamp', 6, '0', 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_sites_extensions', 'update_site_id', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_update_sites_extensions', 'extension_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'update_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'update_site_id', 2, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'extension_id', 3, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'categoryid', 4, '0', 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'name', 5, '', 'YES', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'description', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'element', 7, '', 'YES', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'type', 8, '', 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'folder', 9, '', 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'client_id', 10, '0', 'YES', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'version', 11, '', 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'data', 12, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'detailsurl', 13, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_updates', 'infourl', 14, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'user_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'catid', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'subject', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'body', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'state', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'checked_out', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'checked_out_time', 8, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'created_user_id', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'created_time', 10, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'modified_user_id', 11, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'modified_time', 12, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'review_time', 13, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'publish_up', 14, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 'publish_down', 15, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_profiles', 'user_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_profiles', 'profile_key', 2, NULL, 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_profiles', 'profile_value', 3, NULL, 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_profiles', 'ordering', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_user_usergroup_map', 'user_id', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', 'Foreign Key to #__users.id'),
(NULL, 'advan383_shop', 'jos_user_usergroup_map', 'group_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', 'Foreign Key to #__usergroups.id'),
(NULL, 'advan383_shop', 'jos_usergroups', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', 'Primary Key'),
(NULL, 'advan383_shop', 'jos_usergroups', 'parent_id', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', 'Adjacency List Reference Id'),
(NULL, 'advan383_shop', 'jos_usergroups', 'lft', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', 'Nested set lft.'),
(NULL, 'advan383_shop', 'jos_usergroups', 'rgt', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', 'Nested set rgt.'),
(NULL, 'advan383_shop', 'jos_usergroups', 'title', 5, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'username', 3, '', 'NO', 'varchar', 150, 450, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(150)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'email', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'password', 5, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'usertype', 6, '', 'NO', 'varchar', 25, 75, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(25)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'block', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'sendEmail', 8, '0', 'YES', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'registerDate', 9, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'lastvisitDate', 10, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'activation', 11, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'params', 12, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_users', 'lastResetTime', 13, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', 'Date of last password reset'),
(NULL, 'advan383_shop', 'jos_users', 'resetCount', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', 'Count of password resets since lastResetTime'),
(NULL, 'advan383_shop', 'jos_viewlevels', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', 'Primary Key'),
(NULL, 'advan383_shop', 'jos_viewlevels', 'title', 2, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(100)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_viewlevels', 'ordering', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_viewlevels', 'rules', 4, NULL, 'NO', 'varchar', 5120, 15360, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(5120)', '', '', 'select,insert,update,references', 'JSON encoded access control.'),
(NULL, 'advan383_shop', 'jos_weblinks', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'catid', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'sid', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'title', 4, '', 'NO', 'varchar', 250, 750, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(250)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'alias', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'url', 6, '', 'NO', 'varchar', 250, 750, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(250)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'description', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'date', 8, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'advan383_shop', 'jos_weblinks', 'hits', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'state', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'checked_out', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'checked_out_time', 12, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'ordering', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'archived', 14, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'approved', 15, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'access', 16, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'params', 17, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'language', 18, '', 'NO', 'char', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(7)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'created', 19, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'created_by', 20, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'created_by_alias', 21, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'modified', 22, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'modified_by', 23, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'metakey', 24, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'metadesc', 25, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'metadata', 26, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'featured', 27, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', 'MUL', '', 'select,insert,update,references', 'Set if link is featured.'),
(NULL, 'advan383_shop', 'jos_weblinks', 'xreference', 28, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', 'MUL', '', 'select,insert,update,references', 'A reference to enable linkages to external data sets.'),
(NULL, 'advan383_shop', 'jos_weblinks', 'publish_up', 29, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'publish_down', 30, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Структура таблицы `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `ORDINAL_POSITION` bigint(10) NOT NULL default '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) default NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) default NULL,
  `REFERENCED_TABLE_NAME` varchar(64) default NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_assets', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_asset_name', NULL, 'advan383_shop', 'jos_assets', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_associations', 'context', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_associations', 'id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_banner_clients', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_banner_tracks', 'track_date', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_banner_tracks', 'track_type', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_banner_tracks', 'banner_id', 3, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_banners', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_categories', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_contact_details', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_content', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_content_frontpage', 'content_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_content_rating', 'content_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_extensions', 'extension_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_filters', 'filter_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms0', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms0', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms1', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms1', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms2', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms2', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms3', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms3', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms4', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms4', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms5', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms5', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms6', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms6', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms7', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms7', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms8', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms8', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms9', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_terms9', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsa', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsa', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsb', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsb', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsc', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsc', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsd', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsd', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termse', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termse', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsf', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_links_termsf', 'term_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_taxonomy', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 'link_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 'node_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_terms', 'term_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_term', NULL, 'advan383_shop', 'jos_finder_terms', 'term', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_finder_types', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'title', NULL, 'advan383_shop', 'jos_finder_types', 'title', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_addons', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_attr', 'attr_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_attr_values', 'value_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_cart_temp', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_categories', 'category_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_config', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_config_display_prices', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_config_statictext', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_countries', 'country_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_coupons', 'coupon_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_currencies', 'currency_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_delivery_times', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_free_attr', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_import_export', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_languages', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'manufacturer_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_order_history', 'order_history_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_order_item', 'order_item_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_order_status', 'status_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_orders', 'order_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'payment_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_product_labels', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products', 'product_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'product_attr_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_groups', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_values', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_files', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_free_attr', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_images', 'image_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_prices', 'price_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'review_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 'product_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 'category_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_products_videos', 'video_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'shipping_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price', 'sh_pr_method_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 'sh_method_country_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'sh_pr_weight_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_taxes', 'tax_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_taxes_ext', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_unit', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_usergroups', 'usergroup_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'user_id', NULL, 'advan383_shop', 'jos_jshopping_users', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_jshopping_vendors', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_languages', 'lang_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_sef', NULL, 'advan383_shop', 'jos_languages', 'sef', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_image', NULL, 'advan383_shop', 'jos_languages', 'image', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_langcode', NULL, 'advan383_shop', 'jos_languages', 'lang_code', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_menu', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_client_id_parent_id_alias_language', NULL, 'advan383_shop', 'jos_menu', 'client_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_client_id_parent_id_alias_language', NULL, 'advan383_shop', 'jos_menu', 'parent_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_client_id_parent_id_alias_language', NULL, 'advan383_shop', 'jos_menu', 'alias', 3, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_client_id_parent_id_alias_language', NULL, 'advan383_shop', 'jos_menu', 'language', 4, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_menu_types', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_menutype', NULL, 'advan383_shop', 'jos_menu_types', 'menutype', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_messages', 'message_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_user_var_name', NULL, 'advan383_shop', 'jos_messages_cfg', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_user_var_name', NULL, 'advan383_shop', 'jos_messages_cfg', 'cfg_name', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_modules', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_modules_menu', 'moduleid', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_modules_menu', 'menuid', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_newsfeeds', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_overrider', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_redirect_links', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_link_old', NULL, 'advan383_shop', 'jos_redirect_links', 'old_url', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_schemas', 'extension_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_schemas', 'version_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_session', 'session_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_template_styles', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_update_categories', 'categoryid', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_update_sites', 'update_site_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_update_sites_extensions', 'update_site_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_update_sites_extensions', 'extension_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_updates', 'update_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_user_notes', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_user_id_profile_key', NULL, 'advan383_shop', 'jos_user_profiles', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_user_id_profile_key', NULL, 'advan383_shop', 'jos_user_profiles', 'profile_key', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_user_usergroup_map', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_user_usergroup_map', 'group_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_usergroups', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_usergroup_parent_title_lookup', NULL, 'advan383_shop', 'jos_usergroups', 'parent_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_usergroup_parent_title_lookup', NULL, 'advan383_shop', 'jos_usergroups', 'title', 2, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_users', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_viewlevels', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'idx_assetgroup_title_lookup', NULL, 'advan383_shop', 'jos_viewlevels', 'title', 1, NULL, NULL, NULL, NULL),
(NULL, 'advan383_shop', 'PRIMARY', NULL, 'advan383_shop', 'jos_weblinks', 'id', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` bigint(20) NOT NULL default '0',
  `SEQ` bigint(20) NOT NULL default '0',
  `STATE` varchar(30) NOT NULL default '',
  `DURATION` decimal(9,6) NOT NULL default '0.000000',
  `CPU_USER` decimal(9,6) default NULL,
  `CPU_SYSTEM` decimal(9,6) default NULL,
  `CONTEXT_VOLUNTARY` bigint(20) default NULL,
  `CONTEXT_INVOLUNTARY` bigint(20) default NULL,
  `BLOCK_OPS_IN` bigint(20) default NULL,
  `BLOCK_OPS_OUT` bigint(20) default NULL,
  `MESSAGES_SENT` bigint(20) default NULL,
  `MESSAGES_RECEIVED` bigint(20) default NULL,
  `PAGE_FAULTS_MAJOR` bigint(20) default NULL,
  `PAGE_FAULTS_MINOR` bigint(20) default NULL,
  `SWAPS` bigint(20) default NULL,
  `SOURCE_FUNCTION` varchar(30) default NULL,
  `SOURCE_FILE` varchar(20) default NULL,
  `SOURCE_LINE` bigint(20) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
-- используется (#1289 - The 'SHOW PROFILE' feature is disabled; you need MySQL built with 'enable-profiling' to have it working)

-- --------------------------------------------------------

--
-- Структура таблицы `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_CATALOG` varchar(512) default NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL default '',
  `ROUTINE_NAME` varchar(64) NOT NULL default '',
  `ROUTINE_TYPE` varchar(9) NOT NULL default '',
  `DTD_IDENTIFIER` varchar(64) default NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL default '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) default NULL,
  `EXTERNAL_LANGUAGE` varchar(64) default NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL default '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL default '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(64) default NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL default '',
  `CREATED` datetime NOT NULL default '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL default '0000-00-00 00:00:00',
  `SQL_MODE` longtext NOT NULL,
  `ROUTINE_COMMENT` varchar(64) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) default NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(64) NOT NULL default '',
  `DEFAULT_COLLATION_NAME` varchar(64) NOT NULL default '',
  `SQL_PATH` varchar(512) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'advan383_shop', 'latin1', 'latin1_swedish_ci', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'SELECT', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'INSERT', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'UPDATE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'DELETE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'CREATE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'DROP', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'REFERENCES', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'INDEX', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'ALTER', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'CREATE TEMPORARY TABLES', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'LOCK TABLES', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'EXECUTE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'CREATE VIEW', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'SHOW VIEW', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'CREATE ROUTINE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_shop', 'ALTER ROUTINE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'SELECT', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'INSERT', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'UPDATE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'DELETE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'CREATE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'DROP', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'REFERENCES', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'INDEX', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'ALTER', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'CREATE TEMPORARY TABLES', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'LOCK TABLES', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'EXECUTE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'CREATE VIEW', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'SHOW VIEW', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'CREATE ROUTINE', 'NO'),
('''advan383''@''localhost''', NULL, 'advan383\\_%', 'ALTER ROUTINE', 'NO');

-- --------------------------------------------------------

--
-- Структура таблицы `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `NON_UNIQUE` bigint(1) NOT NULL default '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL default '',
  `INDEX_NAME` varchar(64) NOT NULL default '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL default '0',
  `COLUMN_NAME` varchar(64) NOT NULL default '',
  `COLLATION` varchar(1) default NULL,
  `CARDINALITY` bigint(21) default NULL,
  `SUB_PART` bigint(3) default NULL,
  `PACKED` varchar(10) default NULL,
  `NULLABLE` varchar(3) NOT NULL default '',
  `INDEX_TYPE` varchar(16) NOT NULL default '',
  `COMMENT` varchar(16) default NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'advan383_shop', 'jos_assets', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 167, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_assets', 0, 'advan383_shop', 'idx_asset_name', 1, 'name', 'A', 167, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_assets', 1, 'advan383_shop', 'idx_lft_rgt', 1, 'lft', 'A', 167, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_assets', 1, 'advan383_shop', 'idx_lft_rgt', 2, 'rgt', 'A', 167, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_assets', 1, 'advan383_shop', 'idx_parent_id', 1, 'parent_id', 'A', 33, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_associations', 0, 'advan383_shop', 'PRIMARY', 1, 'context', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_associations', 0, 'advan383_shop', 'PRIMARY', 2, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_associations', 1, 'advan383_shop', 'idx_key', 1, 'key', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 1, 'advan383_shop', 'idx_own_prefix', 1, 'own_prefix', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 1, 'advan383_shop', 'idx_metakey_prefix', 1, 'metakey_prefix', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 0, 'advan383_shop', 'PRIMARY', 1, 'track_date', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 0, 'advan383_shop', 'PRIMARY', 2, 'track_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 0, 'advan383_shop', 'PRIMARY', 3, 'banner_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 1, 'advan383_shop', 'idx_track_date', 1, 'track_date', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 1, 'advan383_shop', 'idx_track_type', 1, 'track_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 1, 'advan383_shop', 'idx_banner_id', 1, 'banner_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banners', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banners', 1, 'advan383_shop', 'idx_state', 1, 'state', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banners', 1, 'advan383_shop', 'idx_own_prefix', 1, 'own_prefix', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banners', 1, 'advan383_shop', 'idx_metakey_prefix', 1, 'metakey_prefix', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banners', 1, 'advan383_shop', 'idx_banner_catid', 1, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_banners', 1, 'advan383_shop', 'idx_language', 1, 'language', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 70, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'cat_idx', 1, 'extension', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'cat_idx', 2, 'published', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'cat_idx', 3, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'idx_access', 1, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'idx_checkout', 1, 'checked_out', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'idx_path', 1, 'path', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'idx_left_right', 1, 'lft', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'idx_left_right', 2, 'rgt', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'idx_alias', 1, 'alias', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_categories', 1, 'advan383_shop', 'idx_language', 1, 'language', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 8, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_access', 1, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_checkout', 1, 'checked_out', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_state', 1, 'published', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_catid', 1, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_createdby', 1, 'created_by', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_featured_catid', 1, 'featured', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_featured_catid', 2, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_language', 1, 'language', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 1, 'advan383_shop', 'idx_xreference', 1, 'xreference', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 72, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_access', 1, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_checkout', 1, 'checked_out', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_state', 1, 'state', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_catid', 1, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_createdby', 1, 'created_by', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_featured_catid', 1, 'featured', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_featured_catid', 2, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_language', 1, 'language', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content', 1, 'advan383_shop', 'idx_xreference', 1, 'xreference', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content_frontpage', 0, 'advan383_shop', 'PRIMARY', 1, 'content_id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_content_rating', 0, 'advan383_shop', 'PRIMARY', 1, 'content_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 0, 'advan383_shop', 'PRIMARY', 1, 'extension_id', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'element_clientid', 1, 'element', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'element_clientid', 2, 'client_id', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'element_folder_clientid', 1, 'element', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'element_folder_clientid', 2, 'folder', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'element_folder_clientid', 3, 'client_id', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'extension', 1, 'type', 'A', 8, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'extension', 2, 'element', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'extension', 3, 'folder', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_extensions', 1, 'advan383_shop', 'extension', 4, 'client_id', 'A', 147, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 0, 'advan383_shop', 'PRIMARY', 1, 'filter_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_type', 1, 'type_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_title', 1, 'title', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_md5', 1, 'md5sum', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_url', 1, 'url', 'A', NULL, 75, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_list', 1, 'published', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_list', 2, 'state', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_list', 3, 'access', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_list', 4, 'publish_start_date', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_list', 5, 'publish_end_date', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_list', 6, 'list_price', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_sale', 1, 'published', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_sale', 2, 'state', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_sale', 3, 'access', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_sale', 4, 'publish_start_date', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_sale', 5, 'publish_end_date', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 1, 'advan383_shop', 'idx_published_sale', 6, 'sale_price', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 0, 'advan383_shop', 'PRIMARY', 2, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 1, 'advan383_shop', 'idx_term_weight', 1, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 1, 'advan383_shop', 'idx_term_weight', 2, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 1, 'advan383_shop', 'idx_link_term_weight', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 1, 'advan383_shop', 'idx_link_term_weight', 2, 'term_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 1, 'advan383_shop', 'idx_link_term_weight', 3, 'weight', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 1, 'advan383_shop', 'parent_id', 1, 'parent_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 1, 'advan383_shop', 'state', 1, 'state', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 1, 'advan383_shop', 'ordering', 1, 'ordering', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 1, 'advan383_shop', 'access', 1, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 1, 'advan383_shop', 'idx_parent_published', 1, 'parent_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 1, 'advan383_shop', 'idx_parent_published', 2, 'state', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 1, 'advan383_shop', 'idx_parent_published', 3, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 0, 'advan383_shop', 'PRIMARY', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 0, 'advan383_shop', 'PRIMARY', 2, 'node_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 1, 'advan383_shop', 'link_id', 1, 'link_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 1, 'advan383_shop', 'node_id', 1, 'node_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 0, 'advan383_shop', 'PRIMARY', 1, 'term_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 0, 'advan383_shop', 'idx_term', 1, 'term', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 1, 'advan383_shop', 'idx_term_phrase', 1, 'term', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 1, 'advan383_shop', 'idx_term_phrase', 2, 'phrase', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 1, 'advan383_shop', 'idx_stem_phrase', 1, 'stem', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 1, 'advan383_shop', 'idx_stem_phrase', 2, 'phrase', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 1, 'advan383_shop', 'idx_soundex_phrase', 1, 'soundex', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 1, 'advan383_shop', 'idx_soundex_phrase', 2, 'phrase', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms_common', 1, 'advan383_shop', 'idx_word_lang', 1, 'term', 'A', 115, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms_common', 1, 'advan383_shop', 'idx_word_lang', 2, 'language', 'A', 115, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_terms_common', 1, 'advan383_shop', 'idx_lang', 1, 'language', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 1, 'advan383_shop', 'idx_word', 1, 'term', NULL, 0, NULL, NULL, '', 'HASH', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 1, 'advan383_shop', 'idx_context', 1, 'context', NULL, 0, NULL, NULL, '', 'HASH', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 1, 'advan383_shop', 'token', 1, 'term', NULL, 0, NULL, NULL, '', 'HASH', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 1, 'advan383_shop', 'keyword_id', 1, 'term_id', NULL, 0, NULL, NULL, '', 'HASH', ''),
(NULL, 'advan383_shop', 'jos_finder_types', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_finder_types', 0, 'advan383_shop', 'title', 1, 'title', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_addons', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr', 0, 'advan383_shop', 'PRIMARY', 1, 'attr_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr_values', 0, 'advan383_shop', 'PRIMARY', 1, 'value_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_cart_temp', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 14, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 0, 'advan383_shop', 'PRIMARY', 1, 'category_id', 'A', 11, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 1, 'advan383_shop', 'sort_add_date', 1, 'category_add_date', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_display_prices', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 27, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_statictext', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 0, 'advan383_shop', 'PRIMARY', 1, 'country_id', 'A', 239, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 0, 'advan383_shop', 'PRIMARY', 1, 'coupon_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 0, 'advan383_shop', 'PRIMARY', 1, 'currency_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_delivery_times', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_free_attr', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_languages', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 0, 'advan383_shop', 'PRIMARY', 1, 'manufacturer_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_history', 0, 'advan383_shop', 'PRIMARY', 1, 'order_history_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 0, 'advan383_shop', 'PRIMARY', 1, 'order_item_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_status', 0, 'advan383_shop', 'PRIMARY', 1, 'status_id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 0, 'advan383_shop', 'PRIMARY', 1, 'order_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 0, 'advan383_shop', 'PRIMARY', 1, 'payment_id', 'A', 5, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_product_labels', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 0, 'advan383_shop', 'PRIMARY', 1, 'product_id', 'A', 26, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 1, 'advan383_shop', 'product_manufacturer_id', 1, 'product_manufacturer_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 0, 'advan383_shop', 'PRIMARY', 1, 'product_attr_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_groups', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_values', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 1, 'advan383_shop', 'product_id', 1, 'product_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_free_attr', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_free_attr', 1, 'advan383_shop', 'product_id', 1, 'product_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_free_attr', 1, 'advan383_shop', 'attr_id', 1, 'attr_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 0, 'advan383_shop', 'PRIMARY', 1, 'image_id', 'A', 61, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_prices', 0, 'advan383_shop', 'PRIMARY', 1, 'price_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 0, 'advan383_shop', 'PRIMARY', 1, 'review_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 0, 'advan383_shop', 'PRIMARY', 1, 'product_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 0, 'advan383_shop', 'PRIMARY', 2, 'category_id', 'A', 26, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 1, 'advan383_shop', 'category_id', 1, 'category_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 1, 'advan383_shop', 'product_id', 1, 'product_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_videos', 0, 'advan383_shop', 'PRIMARY', 1, 'video_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 0, 'advan383_shop', 'PRIMARY', 1, 'shipping_id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price', 0, 'advan383_shop', 'PRIMARY', 1, 'sh_pr_method_id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 0, 'advan383_shop', 'PRIMARY', 1, 'sh_method_country_id', 'A', 240, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 1, 'advan383_shop', 'country_id', 1, 'country_id', 'A', 120, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 1, 'advan383_shop', 'sh_pr_method_id', 1, 'sh_pr_method_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 0, 'advan383_shop', 'PRIMARY', 1, 'sh_pr_weight_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 1, 'advan383_shop', 'sh_pr_method_id', 1, 'sh_pr_method_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes', 0, 'advan383_shop', 'PRIMARY', 1, 'tax_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes_ext', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_unit', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_usergroups', 0, 'advan383_shop', 'PRIMARY', 1, 'usergroup_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 0, 'advan383_shop', 'user_id', 1, 'user_id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_languages', 0, 'advan383_shop', 'PRIMARY', 1, 'lang_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_languages', 0, 'advan383_shop', 'idx_sef', 1, 'sef', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_languages', 0, 'advan383_shop', 'idx_image', 1, 'image', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_languages', 0, 'advan383_shop', 'idx_langcode', 1, 'lang_code', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_languages', 1, 'advan383_shop', 'idx_ordering', 1, 'ordering', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_languages', 1, 'advan383_shop', 'idx_access', 1, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 47, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 0, 'advan383_shop', 'idx_client_id_parent_id_alias_language', 1, 'client_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 0, 'advan383_shop', 'idx_client_id_parent_id_alias_language', 2, 'parent_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 0, 'advan383_shop', 'idx_client_id_parent_id_alias_language', 3, 'alias', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 0, 'advan383_shop', 'idx_client_id_parent_id_alias_language', 4, 'language', 'A', 47, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_componentid', 1, 'component_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_componentid', 2, 'menutype', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_componentid', 3, 'published', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_componentid', 4, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_menutype', 1, 'menutype', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_left_right', 1, 'lft', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_left_right', 2, 'rgt', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_alias', 1, 'alias', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_path', 1, 'path', 'A', NULL, 333, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu', 1, 'advan383_shop', 'idx_language', 1, 'language', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu_types', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_menu_types', 0, 'advan383_shop', 'idx_menutype', 1, 'menutype', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_messages', 0, 'advan383_shop', 'PRIMARY', 1, 'message_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_messages', 1, 'advan383_shop', 'useridto_state', 1, 'user_id_to', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_messages', 1, 'advan383_shop', 'useridto_state', 2, 'state', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_messages_cfg', 0, 'advan383_shop', 'idx_user_var_name', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_messages_cfg', 0, 'advan383_shop', 'idx_user_var_name', 2, 'cfg_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_modules', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 67, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_modules', 1, 'advan383_shop', 'published', 1, 'published', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_modules', 1, 'advan383_shop', 'published', 2, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_modules', 1, 'advan383_shop', 'newsfeeds', 1, 'module', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_modules', 1, 'advan383_shop', 'newsfeeds', 2, 'published', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_modules', 1, 'advan383_shop', 'idx_language', 1, 'language', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_modules_menu', 0, 'advan383_shop', 'PRIMARY', 1, 'moduleid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_modules_menu', 0, 'advan383_shop', 'PRIMARY', 2, 'menuid', 'A', 171, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 1, 'advan383_shop', 'idx_access', 1, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 1, 'advan383_shop', 'idx_checkout', 1, 'checked_out', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 1, 'advan383_shop', 'idx_state', 1, 'published', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 1, 'advan383_shop', 'idx_catid', 1, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 1, 'advan383_shop', 'idx_createdby', 1, 'created_by', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 1, 'advan383_shop', 'idx_language', 1, 'language', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 1, 'advan383_shop', 'idx_xreference', 1, 'xreference', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_overrider', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 14, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 0, 'advan383_shop', 'idx_link_old', 1, 'old_url', 'A', 14, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 1, 'advan383_shop', 'idx_link_modifed', 1, 'modified_date', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_schemas', 0, 'advan383_shop', 'PRIMARY', 1, 'extension_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_schemas', 0, 'advan383_shop', 'PRIMARY', 2, 'version_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_session', 0, 'advan383_shop', 'PRIMARY', 1, 'session_id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_session', 1, 'advan383_shop', 'whosonline', 1, 'guest', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_session', 1, 'advan383_shop', 'whosonline', 2, 'usertype', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_session', 1, 'advan383_shop', 'userid', 1, 'userid', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_session', 1, 'advan383_shop', 'time', 1, 'time', 'A', NULL, NULL, NULL, 'YES', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 6, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 1, 'advan383_shop', 'idx_template', 1, 'template', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 1, 'advan383_shop', 'idx_home', 1, 'home', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_update_categories', 0, 'advan383_shop', 'PRIMARY', 1, 'categoryid', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_update_sites', 0, 'advan383_shop', 'PRIMARY', 1, 'update_site_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_update_sites_extensions', 0, 'advan383_shop', 'PRIMARY', 1, 'update_site_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_update_sites_extensions', 0, 'advan383_shop', 'PRIMARY', 2, 'extension_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_updates', 0, 'advan383_shop', 'PRIMARY', 1, 'update_id', 'A', 610, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 1, 'advan383_shop', 'idx_user_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_user_notes', 1, 'advan383_shop', 'idx_category_id', 1, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_user_profiles', 0, 'advan383_shop', 'idx_user_id_profile_key', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_user_profiles', 0, 'advan383_shop', 'idx_user_id_profile_key', 2, 'profile_key', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_user_usergroup_map', 0, 'advan383_shop', 'PRIMARY', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_user_usergroup_map', 0, 'advan383_shop', 'PRIMARY', 2, 'group_id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_usergroups', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 10, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_usergroups', 0, 'advan383_shop', 'idx_usergroup_parent_title_lookup', 1, 'parent_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_usergroups', 0, 'advan383_shop', 'idx_usergroup_parent_title_lookup', 2, 'title', 'A', 10, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_usergroups', 1, 'advan383_shop', 'idx_usergroup_title_lookup', 1, 'title', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_usergroups', 1, 'advan383_shop', 'idx_usergroup_adjacency_lookup', 1, 'parent_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_usergroups', 1, 'advan383_shop', 'idx_usergroup_nested_set_lookup', 1, 'lft', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_usergroups', 1, 'advan383_shop', 'idx_usergroup_nested_set_lookup', 2, 'rgt', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_users', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_users', 1, 'advan383_shop', 'usertype', 1, 'usertype', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_users', 1, 'advan383_shop', 'idx_name', 1, 'name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_users', 1, 'advan383_shop', 'idx_block', 1, 'block', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_users', 1, 'advan383_shop', 'username', 1, 'username', 'A', NULL, NULL, NULL, '', 'BTREE', '');
INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'advan383_shop', 'jos_users', 1, 'advan383_shop', 'email', 1, 'email', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_viewlevels', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_viewlevels', 0, 'advan383_shop', 'idx_assetgroup_title_lookup', 1, 'title', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 0, 'advan383_shop', 'PRIMARY', 1, 'id', 'A', 9, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_access', 1, 'access', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_checkout', 1, 'checked_out', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_state', 1, 'state', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_catid', 1, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_createdby', 1, 'created_by', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_featured_catid', 1, 'featured', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_featured_catid', 2, 'catid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_language', 1, 'language', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 1, 'advan383_shop', 'idx_xreference', 1, 'xreference', 'A', NULL, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Структура таблицы `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `TABLE_TYPE` varchar(64) NOT NULL default '',
  `ENGINE` varchar(64) default NULL,
  `VERSION` bigint(21) default NULL,
  `ROW_FORMAT` varchar(10) default NULL,
  `TABLE_ROWS` bigint(21) default NULL,
  `AVG_ROW_LENGTH` bigint(21) default NULL,
  `DATA_LENGTH` bigint(21) default NULL,
  `MAX_DATA_LENGTH` bigint(21) default NULL,
  `INDEX_LENGTH` bigint(21) default NULL,
  `DATA_FREE` bigint(21) default NULL,
  `AUTO_INCREMENT` bigint(21) default NULL,
  `CREATE_TIME` datetime default NULL,
  `UPDATE_TIME` datetime default NULL,
  `CHECK_TIME` datetime default NULL,
  `TABLE_COLLATION` varchar(64) default NULL,
  `CHECKSUM` bigint(21) default NULL,
  `CREATE_OPTIONS` varchar(255) default NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 576, 0, 16661376, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=29127', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 423, 0, 16737264, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=39662', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 387, 0, 16733880, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=43351', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-21 23:40:40', '2012-12-21 23:40:40', NULL, 'utf8_general_ci', NULL, 'max_rows=8715', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2565, 0, 16757145, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6540', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 4637, 0, 16762755, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3618', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 356, 0, 16590668, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=47127', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-21 23:40:40', '2012-12-21 23:40:40', NULL, 'utf8_general_ci', NULL, 'max_rows=9172', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3656, 0, 16755448, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4588', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2179, 0, 16767405, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7699', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2679, 0, 16770540, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6262', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 3641, 0, 16763164, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4607', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2504, 0, 16749256, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6700', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 2372, 0, 16748692, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7073', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-21 23:40:40', '2012-12-21 23:40:40', NULL, 'utf8_general_ci', NULL, 'max_rows=7652', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 0, 'Fixed', NULL, 1986, 0, 16759854, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=8447', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 0, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-21 23:40:40', '2012-12-21 23:40:40', NULL, 'utf8_general_ci', NULL, 'max_rows=15073', ''),
(NULL, 'advan383_shop', 'jos_assets', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 167, 126, 21060, 281474976710655, 15360, 0, 178, '2012-12-14 22:09:39', '2012-12-21 22:06:31', '2012-12-14 22:09:39', 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_associations', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_banner_clients', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 53, 160, 281474976710655, 7168, 0, 4, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_banner_tracks', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 5910974510923775, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_banners', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 238, 716, 281474976710655, 10240, 0, 5, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_categories', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 70, 357, 25028, 281474976710655, 15360, 0, 80, '2012-12-14 22:09:39', '2012-12-21 21:13:21', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_contact_details', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 8, 1110, 8884, 281474976710655, 10240, 0, 9, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_content', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 72, 1657, 125216, 281474976710655, 10240, 5852, 74, '2012-12-14 22:09:39', '2012-12-21 23:01:31', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_content_frontpage', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 4, 9, 36, 2533274790395903, 2048, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_content_rating', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_core_log_searches', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_extensions', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 147, 471, 69316, 281474976710655, 28672, 0, 10069, '2012-12-14 22:09:39', '2012-12-21 02:47:47', '2012-12-14 22:09:39', 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_filters', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms0', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms1', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms2', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms3', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms4', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms5', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms6', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms7', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms8', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_terms9', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsa', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsb', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsc', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsd', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termse', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_links_termsf', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 20, 20, 281474976710655, 7168, 0, 2, '2012-12-14 22:09:39', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_taxonomy_map', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 2533274790395903, 1024, 0, NULL, '2012-12-14 22:09:40', '2012-12-14 22:09:39', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_terms', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_terms_common', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 115, 20, 2300, 281474976710655, 5120, 0, NULL, '2012-12-14 22:09:40', '2012-12-14 22:09:40', '2012-12-14 22:09:40', 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens', 'BASE TABLE', 'MEMORY', 10, 'Fixed', 0, 459, 0, 16177914, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_tokens_aggregate', 'BASE TABLE', 'MEMORY', 10, 'Fixed', 0, 474, 0, 16163400, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_finder_types', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_addons', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 56, 56, 281474976710655, 2048, 0, 3, '2012-12-14 22:09:40', '2012-12-21 20:06:54', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_attr_values', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 54, 164, 281474976710655, 2048, 0, 9, '2012-12-14 22:09:40', '2012-12-21 20:13:44', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_cart_temp', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 14, 56, 792, 281474976710655, 2048, 0, 21, '2012-12-14 22:09:40', '2012-12-21 23:34:09', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_categories', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 11, 75, 928, 281474976710655, 3072, 100, 15, '2012-12-14 22:09:40', '2012-12-21 22:51:05', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 3688, 3688, 281474976710655, 3072, 0, NULL, '2012-12-14 22:09:40', '2012-12-16 23:25:55', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_display_prices', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_seo', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 27, 28, 764, 281474976710655, 2048, 0, 28, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_config_statictext', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 7, 23, 164, 281474976710655, 2048, 0, 8, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_countries', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 239, 54, 13016, 281474976710655, 5120, 0, 240, '2012-12-14 22:09:40', '2012-12-16 23:22:51', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_coupons', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_currencies', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 36, 36, 281474976710655, 2048, 0, 2, '2012-12-14 22:09:40', '2012-12-16 23:21:26', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_delivery_times', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_free_attr', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_import_export', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 80, 160, 281474976710655, 2048, 0, 3, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_languages', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 28, 56, 281474976710655, 2048, 0, 3, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_manufacturers', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_history', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 28, 28, 281474976710655, 2048, 0, 2, '2012-12-14 22:09:40', '2012-12-16 22:56:57', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_item', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 124, 124, 281474976710655, 2048, 0, 2, '2012-12-14 22:09:40', '2012-12-16 22:56:57', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_order_status', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 7, 39, 276, 281474976710655, 2048, 0, 8, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_orders', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 572, 572, 281474976710655, 2048, 0, 2, '2012-12-14 22:09:40', '2012-12-16 22:56:58', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_payment_method', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 5, 175, 876, 281474976710655, 2048, 0, 6, '2012-12-14 22:09:40', '2012-12-16 23:16:51', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_product_labels', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 22, 44, 281474976710655, 2048, 0, 3, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 26, 270, 7028, 281474976710655, 3072, 0, 40, '2012-12-14 22:09:40', '2012-12-21 23:33:18', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-21 20:06:54', '2012-12-21 20:06:54', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_attr2', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 26, 7318349394477055, 2048, 26, 3, '2012-12-14 22:09:40', '2012-12-21 20:16:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_groups', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_field_values', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_extra_fields', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_files', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_free_attr', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_images', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 61, 138, 8468, 281474976710655, 2048, 0, 86, '2012-12-14 22:09:40', '2012-12-21 22:58:44', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_prices', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 7036874417766399, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_relations', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 2533274790395903, 1024, 0, NULL, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_reviews', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_to_categories', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 26, 13, 338, 3659174697238527, 4096, 0, NULL, '2012-12-14 22:09:40', '2012-12-21 22:58:44', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_products_videos', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 64, 64, 281474976710655, 2048, 0, 2, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 72, 144, 281474976710655, 2048, 0, 3, '2012-12-14 22:09:40', '2012-12-16 23:11:51', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 44, 88, 281474976710655, 2048, 0, 3, '2012-12-14 22:09:40', '2012-12-16 23:13:29', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 240, 13, 6214, 3659174697238527, 19456, 3094, 719, '2012-12-14 22:09:40', '2012-12-16 23:13:29', '2012-12-14 22:09:40', 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 1, 35, 35, 9851624184872959, 3072, 0, 2, '2012-12-14 22:09:40', '2012-12-16 23:13:29', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 24, 24, 281474976710655, 2048, 0, 2, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_taxes_ext', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_unit', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 28, 84, 281474976710655, 2048, 0, 4, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_usergroups', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 32, 32, 281474976710655, 2048, 0, 2, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_users', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 126, 252, 281474976710655, 2048, 0, NULL, '2012-12-14 22:09:40', '2012-12-20 22:59:26', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_jshopping_vendors', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 192, 192, 281474976710655, 2048, 0, 2, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_languages', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 56, 56, 281474976710655, 7168, 0, 2, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_menu', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 47, 335, 15776, 281474976710655, 18432, 0, 493, '2012-12-14 22:09:40', '2012-12-21 22:51:41', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_menu_types', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 38, 76, 281474976710655, 3072, 0, 10, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_messages', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_messages_cfg', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_modules', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 67, 304, 20368, 281474976710655, 7168, 0, 105, '2012-12-14 22:09:40', '2012-12-21 22:48:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_modules_menu', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 171, 9, 1539, 2533274790395903, 5120, 0, NULL, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_newsfeeds', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 324, 1296, 281474976710655, 9216, 0, 5, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_overrider', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_redirect_links', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 14, 116, 1624, 281474976710655, 7168, 0, 15, '2012-12-14 22:09:40', '2012-12-21 21:56:55', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_schemas', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 20, 20, 281474976710655, 2048, 0, NULL, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_session', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 2172, 16132, 281474976710655, 7168, 7444, NULL, '2012-12-14 22:09:40', '2012-12-21 23:34:32', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_template_styles', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 6, 245, 1472, 281474976710655, 4096, 0, 118, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_update_categories', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', 'Update Categories'),
(NULL, 'advan383_shop', 'jos_update_sites', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 101, 304, 281474976710655, 2048, 0, 4, '2012-12-14 22:09:40', '2012-12-21 20:01:32', NULL, 'utf8_general_ci', NULL, '', 'Update Sites'),
(NULL, 'advan383_shop', 'jos_update_sites_extensions', 'BASE TABLE', 'InnoDB', 10, 'Compact', 3, 5461, 16384, 0, 0, 0, NULL, '2012-12-21 22:45:14', NULL, NULL, 'utf8_general_ci', NULL, '', 'Links extensions to update sites; InnoDB free: 158720 kB'),
(NULL, 'advan383_shop', 'jos_updates', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 610, 114, 69640, 281474976710655, 8192, 0, 614, '2012-12-14 22:09:40', '2012-12-21 20:01:32', NULL, 'utf8_general_ci', NULL, '', 'Available Updates'),
(NULL, 'advan383_shop', 'jos_user_notes', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_user_profiles', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', 'Simple user profile storage table'),
(NULL, 'advan383_shop', 'jos_user_usergroup_map', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 2, 9, 18, 2533274790395903, 2048, 0, NULL, '2012-12-14 22:09:40', '2012-12-20 22:54:57', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_usergroups', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 10, 33, 336, 281474976710655, 8192, 0, 13, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_users', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 152, 304, 281474976710655, 12288, 0, 44, '2012-12-14 22:09:40', '2012-12-21 23:34:20', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_viewlevels', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 34, 136, 281474976710655, 4096, 0, 5, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'advan383_shop', 'jos_weblinks', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 9, 282, 2544, 281474976710655, 10240, 0, 10, '2012-12-14 22:09:40', '2012-12-14 22:09:40', NULL, 'utf8_general_ci', NULL, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) default NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL default '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL default '',
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_assets', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_asset_name', 'advan383_shop', 'jos_assets', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_associations', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_banner_clients', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_banner_tracks', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_banners', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_categories', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_contact_details', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_content', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_content_frontpage', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_content_rating', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_extensions', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_filters', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms0', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms1', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms2', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms3', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms4', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms5', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms6', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms7', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms8', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_terms9', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_termsa', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_termsb', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_termsc', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_termsd', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_termse', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_links_termsf', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_taxonomy', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_taxonomy_map', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_terms', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_term', 'advan383_shop', 'jos_finder_terms', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_finder_types', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'title', 'advan383_shop', 'jos_finder_types', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_addons', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_attr', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_attr_values', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_cart_temp', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_categories', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_config', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_config_display_prices', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_config_seo', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_config_statictext', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_countries', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_coupons', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_currencies', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_delivery_times', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_free_attr', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_import_export', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_languages', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_manufacturers', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_order_history', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_order_item', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_order_status', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_orders', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_payment_method', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_product_labels', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_attr', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_attr2', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_extra_field_groups', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_extra_field_values', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_extra_fields', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_files', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_free_attr', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_images', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_prices', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_reviews', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_to_categories', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_products_videos', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_shipping_ext_calc', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_shipping_method', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_shipping_method_price', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_shipping_method_price_countries', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_shipping_method_price_weight', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_taxes', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_taxes_ext', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_unit', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_usergroups', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'user_id', 'advan383_shop', 'jos_jshopping_users', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_jshopping_vendors', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_languages', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_sef', 'advan383_shop', 'jos_languages', 'UNIQUE'),
(NULL, 'advan383_shop', 'idx_image', 'advan383_shop', 'jos_languages', 'UNIQUE'),
(NULL, 'advan383_shop', 'idx_langcode', 'advan383_shop', 'jos_languages', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_menu', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_client_id_parent_id_alias_language', 'advan383_shop', 'jos_menu', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_menu_types', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_menutype', 'advan383_shop', 'jos_menu_types', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_messages', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_user_var_name', 'advan383_shop', 'jos_messages_cfg', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_modules', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_modules_menu', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_newsfeeds', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_overrider', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_redirect_links', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_link_old', 'advan383_shop', 'jos_redirect_links', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_schemas', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_session', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_template_styles', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_update_categories', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_update_sites', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_update_sites_extensions', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_updates', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_user_notes', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_user_id_profile_key', 'advan383_shop', 'jos_user_profiles', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_user_usergroup_map', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_usergroups', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_usergroup_parent_title_lookup', 'advan383_shop', 'jos_usergroups', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_users', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_viewlevels', 'PRIMARY KEY'),
(NULL, 'advan383_shop', 'idx_assetgroup_title_lookup', 'advan383_shop', 'jos_viewlevels', 'UNIQUE'),
(NULL, 'advan383_shop', 'PRIMARY', 'advan383_shop', 'jos_weblinks', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Структура таблицы `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) default NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL default '',
  `TRIGGER_NAME` varchar(64) NOT NULL default '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL default '',
  `EVENT_OBJECT_CATALOG` varchar(512) default NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL default '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL default '',
  `ACTION_ORDER` bigint(4) NOT NULL default '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL default '',
  `ACTION_TIMING` varchar(6) NOT NULL default '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) default NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL default '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL default '',
  `CREATED` datetime default NULL,
  `SQL_MODE` longtext NOT NULL,
  `DEFINER` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL default '',
  `TABLE_CATALOG` varchar(512) default NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL default '',
  `IS_GRANTABLE` varchar(3) NOT NULL default ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''advan383''@''localhost''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Структура таблицы `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) default NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL default '',
  `TABLE_NAME` varchar(64) NOT NULL default '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL default '',
  `IS_UPDATABLE` varchar(3) NOT NULL default '',
  `DEFINER` varchar(77) NOT NULL default '',
  `SECURITY_TYPE` varchar(7) NOT NULL default ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
