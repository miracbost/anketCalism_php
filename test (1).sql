-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 28 Kas 2021, 18:35:08
-- Sunucu sürümü: 10.4.21-MariaDB
-- PHP Sürümü: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `test`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `survey_name`
--

CREATE TABLE `survey_name` (
  `idS` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `survey_name`
--

INSERT INTO `survey_name` (`idS`, `title`) VALUES
(14440, 'AnketBir'),
(15367, 'Mesut Özil');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `survey_questions`
--

CREATE TABLE `survey_questions` (
  `idQ` int(11) NOT NULL,
  `idS` int(11) NOT NULL,
  `question_title` text NOT NULL,
  `answer_count` text NOT NULL COMMENT 'total answer count',
  `answers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `survey_questions`
--

INSERT INTO `survey_questions` (`idQ`, `idS`, `question_title`, `answer_count`, `answers`) VALUES
(1, 14440, 'Fenerbahçenin En iyi Oyuncusu', '4', '{\"1\":\"Mesut Özil\",\"2\":\"İrfan Can Kahveci\",\"3\":\"Kim Min Jea\",\"4\":\"Ferdi Kadıoğlu\"}'),
(7, 14440, 'Hangi Takimlisiniz', '2', '{\"1\":\"Fenerbahçe\",\"2\":\"Galatasaray\"}'),
(8, 14440, 'Galatasaray?n En ?yi Oyuncusu?', '4', '{\"1\":\"Marcao\",\"2\":\"Kerem Aktürkoğlu\",\"3\":\"Diagne\",\"4\":\"Muslera\"}'),
(12, 15367, 'mirac', '2', '{\"1\":\"1\",\"2\":\"4\"}');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `survey_user_answer`
--

CREATE TABLE `survey_user_answer` (
  `id` int(11) NOT NULL,
  `idS` int(11) NOT NULL,
  `idQ` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `survey_user_answer`
--

INSERT INTO `survey_user_answer` (`id`, `idS`, `idQ`, `userid`, `user_answer`) VALUES
(21, 14440, 1, 123, 'Mesut Özil'),
(22, 14440, 1, 123, 'Mesut Özil'),
(23, 14440, 1, 123, 'Mesut Özil'),
(24, 14440, 1, 123, 'Mesut Özil'),
(25, 14440, 1, 123, 'Mesut Özil'),
(26, 14440, 1, 123, 'İrfan Can Kahveci'),
(27, 14440, 1, 123, 'Ferdi Kadıoğlu'),
(28, 14440, 1, 123, 'Ferdi Kadıoğlu'),
(29, 14440, 1, 123, 'Ferdi Kadıoğlu'),
(30, 14440, 1, 123, 'Ferdi Kadıoğlu'),
(31, 14440, 1, 123, 'Mesut Özil'),
(32, 14440, 1, 123, 'Mesut Özil'),
(33, 14440, 1, 123, 'Kim Min Jea'),
(34, 14440, 1, 123, 'Kim Min Jea'),
(35, 14440, 1, 123, 'Kim Min Jea'),
(36, 14440, 1, 123, 'Kim Min Jea'),
(37, 14440, 1, 123, 'Kim Min Jea'),
(48, 14440, 1, 123, 'Mesut Özil'),
(51, 14440, 1, 123, 'Mesut Özil'),
(56, 14440, 1, 123, 'Mesut Özil'),
(57, 14440, 1, 123, 'İrfan Can Kahveci'),
(58, 14440, 1, 123, 'Mesut Özil'),
(59, 14440, 7, 123, 'Galatasaray'),
(60, 14440, 7, 123, 'Galatasaray'),
(61, 14440, 7, 123, 'Fenerbahçe'),
(62, 14440, 1, 123, 'Mesut Özil'),
(63, 14440, 1, 123, 'Kim Min Jea'),
(64, 14440, 1, 123, 'İrfan Can Kahveci'),
(65, 14440, 7, 123, 'Fenerbahçe'),
(66, 14440, 7, 123, 'Fenerbahçe'),
(67, 14440, 7, 123, 'Fenerbahçe'),
(68, 14440, 7, 123, 'Fenerbahçe'),
(69, 14440, 8, 123, 'Marcao'),
(70, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(71, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(72, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(73, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(74, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(75, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(76, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(77, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(78, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(79, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(80, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(81, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(82, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(83, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(84, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(85, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(86, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(87, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(88, 14440, 1, 123, 'Mesut Özil'),
(89, 14440, 1, 123, 'Mesut Özil'),
(90, 14440, 1, 123, 'Mesut Özil'),
(91, 14440, 1, 123, 'Mesut Özil'),
(92, 14440, 1, 123, 'Mesut Özil'),
(93, 14440, 1, 123, 'Mesut Özil'),
(94, 14440, 1, 123, 'Mesut Özil'),
(95, 14440, 1, 123, 'Mesut Özil'),
(96, 14440, 1, 123, 'Mesut Özil'),
(97, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(98, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(99, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(100, 14440, 8, 123, 'Marcao'),
(101, 14440, 1, 123, 'Mesut Özil'),
(102, 14440, 7, 123, 'Fenerbahçe'),
(103, 14440, 8, 123, 'Diagne'),
(104, 14440, 1, 123, 'Mesut Özil'),
(105, 14440, 8, 123, 'Diagne'),
(106, 14440, 7, 123, 'Fenerbahçe'),
(107, 4891, 9, 123, 'Hepsiburada'),
(108, 9808, 11, 123, '1'),
(109, 14440, 1, 123, 'Mesut Özil'),
(110, 14440, 7, 123, 'Fenerbahçe'),
(111, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(112, 14440, 1, 123, 'Mesut Özil'),
(113, 14440, 7, 123, 'Fenerbahçe'),
(114, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(115, 14440, 1, 123, 'Mesut Özil'),
(116, 14440, 7, 123, 'Fenerbahçe'),
(117, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(118, 14440, 1, 123, 'Mesut Özil'),
(119, 14440, 7, 123, 'Fenerbahçe'),
(120, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(121, 14440, 1, 123, 'Mesut Özil'),
(122, 14440, 7, 123, 'Fenerbahçe'),
(123, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(124, 14440, 1, 123, 'Mesut Özil'),
(125, 14440, 7, 123, 'Fenerbahçe'),
(126, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(127, 14440, 1, 123, 'İrfan Can Kahveci'),
(128, 14440, 7, 123, 'Fenerbahçe'),
(129, 14440, 8, 123, 'Marcao'),
(130, 14440, 1, 123, 'İrfan Can Kahveci'),
(131, 14440, 7, 123, 'Fenerbahçe'),
(132, 14440, 8, 123, 'Marcao'),
(133, 14440, 1, 123, 'İrfan Can Kahveci'),
(134, 14440, 7, 123, 'Fenerbahçe'),
(135, 14440, 8, 123, 'Marcao'),
(136, 14440, 1, 123, 'İrfan Can Kahveci'),
(137, 14440, 7, 123, 'Fenerbahçe'),
(138, 14440, 8, 123, 'Marcao'),
(139, 14440, 1, 123, 'Kim Min Jea'),
(140, 14440, 7, 123, 'Galatasaray'),
(141, 14440, 8, 123, 'Diagne'),
(142, 14440, 1, 123, 'Mesut Özil'),
(143, 14440, 7, 123, 'Galatasaray'),
(144, 14440, 8, 123, 'Marcao'),
(145, 14440, 1, 123, 'Ferdi Kadıoğlu'),
(146, 14440, 7, 123, 'Fenerbahçe'),
(147, 14440, 8, 123, 'Muslera'),
(148, 14440, 1, 123, 'Ferdi Kadıoğlu'),
(149, 14440, 7, 123, 'Fenerbahçe'),
(150, 14440, 8, 123, 'Muslera'),
(151, 14440, 1, 123, 'İrfan Can Kahveci'),
(152, 14440, 7, 123, 'Galatasaray'),
(153, 14440, 8, 123, 'Diagne'),
(154, 14440, 1, 123, 'Ferdi Kadıoğlu'),
(155, 14440, 7, 123, 'Galatasaray'),
(156, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(157, 14440, 1, 123, 'Kim Min Jea'),
(158, 14440, 7, 123, 'Galatasaray'),
(159, 14440, 8, 123, 'Diagne'),
(160, 14440, 1, 123, 'Kim Min Jea'),
(161, 14440, 7, 123, 'Galatasaray'),
(162, 14440, 8, 123, 'Diagne'),
(163, 14440, 1, 123, 'Kim Min Jea'),
(164, 14440, 7, 123, 'Galatasaray'),
(165, 14440, 8, 123, 'Diagne'),
(166, 14440, 1, 123, 'Kim Min Jea'),
(167, 14440, 7, 123, 'Galatasaray'),
(168, 14440, 8, 123, 'Diagne'),
(169, 14440, 1, 123, 'Kim Min Jea'),
(170, 14440, 7, 123, 'Galatasaray'),
(171, 14440, 8, 123, 'Diagne'),
(172, 14440, 1, 123, 'Kim Min Jea'),
(173, 14440, 7, 123, 'Galatasaray'),
(174, 14440, 8, 123, 'Diagne'),
(175, 14440, 1, 123, 'Kim Min Jea'),
(176, 14440, 7, 123, 'Galatasaray'),
(177, 14440, 8, 123, 'Diagne'),
(178, 14440, 1, 123, 'Kim Min Jea'),
(179, 14440, 7, 123, 'Galatasaray'),
(180, 14440, 8, 123, 'Diagne'),
(181, 14440, 1, 123, 'Kim Min Jea'),
(182, 14440, 7, 123, 'Galatasaray'),
(183, 14440, 8, 123, 'Diagne'),
(184, 14440, 1, 123, 'Kim Min Jea'),
(185, 14440, 7, 123, 'Galatasaray'),
(186, 14440, 8, 123, 'Diagne'),
(187, 14440, 1, 123, 'Kim Min Jea'),
(188, 14440, 7, 123, 'Galatasaray'),
(189, 14440, 8, 123, 'Diagne'),
(190, 14440, 1, 123, 'İrfan Can Kahveci'),
(191, 14440, 7, 123, 'Fenerbahçe'),
(192, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(193, 14440, 1, 123, 'Kim Min Jea'),
(194, 14440, 7, 123, 'Fenerbahçe'),
(195, 14440, 8, 123, 'Marcao'),
(196, 14440, 1, 123, 'Kim Min Jea'),
(197, 14440, 7, 123, 'Fenerbahçe'),
(198, 14440, 8, 123, 'Marcao'),
(199, 14440, 1, 123, 'Ferdi Kadıoğlu'),
(200, 14440, 7, 123, 'Galatasaray'),
(201, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(202, 14440, 1, 123, 'İrfan Can Kahveci'),
(203, 14440, 7, 123, 'Fenerbahçe'),
(204, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(205, 14440, 1, 123, 'İrfan Can Kahveci'),
(206, 14440, 1, 123, 'İrfan Can Kahveci'),
(207, 14440, 1, 123, 'İrfan Can Kahveci'),
(208, 14440, 1, 123, 'İrfan Can Kahveci'),
(209, 14440, 1, 123, 'İrfan Can Kahveci'),
(210, 14440, 1, 123, 'İrfan Can Kahveci'),
(211, 14440, 1, 123, 'İrfan Can Kahveci'),
(212, 14440, 1, 123, 'İrfan Can Kahveci'),
(213, 14440, 1, 123, 'İrfan Can Kahveci'),
(214, 14440, 1, 123, 'İrfan Can Kahveci'),
(215, 14440, 1, 123, 'İrfan Can Kahveci'),
(216, 14440, 1, 123, 'İrfan Can Kahveci'),
(217, 14440, 1, 123, 'İrfan Can Kahveci'),
(218, 14440, 1, 123, 'İrfan Can Kahveci'),
(219, 14440, 1, 123, 'İrfan Can Kahveci'),
(220, 14440, 1, 123, 'İrfan Can Kahveci'),
(221, 14440, 1, 123, 'İrfan Can Kahveci'),
(222, 14440, 1, 123, 'İrfan Can Kahveci'),
(223, 14440, 1, 123, 'İrfan Can Kahveci'),
(224, 14440, 1, 123, 'İrfan Can Kahveci'),
(225, 14440, 1, 123, 'İrfan Can Kahveci'),
(226, 14440, 1, 123, 'İrfan Can Kahveci'),
(227, 14440, 1, 123, 'İrfan Can Kahveci'),
(228, 14440, 1, 123, 'İrfan Can Kahveci'),
(229, 14440, 1, 123, 'İrfan Can Kahveci'),
(230, 14440, 1, 123, 'İrfan Can Kahveci'),
(231, 14440, 1, 123, 'İrfan Can Kahveci'),
(232, 14440, 1, 123, 'İrfan Can Kahveci'),
(233, 14440, 1, 123, 'İrfan Can Kahveci'),
(234, 14440, 1, 123, 'İrfan Can Kahveci'),
(235, 14440, 1, 123, 'İrfan Can Kahveci'),
(236, 14440, 1, 123, 'İrfan Can Kahveci'),
(237, 14440, 1, 123, 'İrfan Can Kahveci'),
(238, 14440, 1, 123, 'İrfan Can Kahveci'),
(239, 14440, 1, 123, 'İrfan Can Kahveci'),
(240, 14440, 1, 123, 'İrfan Can Kahveci'),
(241, 14440, 1, 123, 'İrfan Can Kahveci'),
(242, 14440, 1, 123, 'İrfan Can Kahveci'),
(243, 14440, 1, 123, 'İrfan Can Kahveci'),
(244, 14440, 1, 123, 'İrfan Can Kahveci'),
(245, 14440, 1, 123, 'İrfan Can Kahveci'),
(246, 14440, 1, 123, 'İrfan Can Kahveci'),
(247, 14440, 1, 123, 'İrfan Can Kahveci'),
(248, 14440, 1, 123, 'İrfan Can Kahveci'),
(249, 14440, 1, 123, 'İrfan Can Kahveci'),
(250, 14440, 1, 123, 'İrfan Can Kahveci'),
(251, 14440, 1, 123, 'İrfan Can Kahveci'),
(252, 14440, 1, 123, 'İrfan Can Kahveci'),
(253, 14440, 1, 123, 'İrfan Can Kahveci'),
(254, 14440, 1, 123, 'İrfan Can Kahveci'),
(255, 14440, 1, 123, 'İrfan Can Kahveci'),
(256, 14440, 1, 123, 'İrfan Can Kahveci'),
(257, 14440, 1, 123, 'İrfan Can Kahveci'),
(258, 14440, 1, 123, 'İrfan Can Kahveci'),
(259, 14440, 1, 123, 'İrfan Can Kahveci'),
(260, 14440, 1, 123, 'İrfan Can Kahveci'),
(261, 14440, 1, 123, 'İrfan Can Kahveci'),
(262, 14440, 1, 123, 'İrfan Can Kahveci'),
(263, 14440, 1, 123, 'İrfan Can Kahveci'),
(264, 14440, 1, 123, 'İrfan Can Kahveci'),
(265, 14440, 1, 123, 'İrfan Can Kahveci'),
(266, 14440, 1, 123, 'İrfan Can Kahveci'),
(291, 14440, 1, 123, 'İrfan Can Kahveci'),
(292, 14440, 1, 123, 'İrfan Can Kahveci'),
(293, 14440, 1, 123, 'İrfan Can Kahveci'),
(294, 14440, 1, 123, 'İrfan Can Kahveci'),
(295, 14440, 1, 123, 'İrfan Can Kahveci'),
(296, 14440, 1, 123, 'İrfan Can Kahveci'),
(297, 14440, 1, 123, 'İrfan Can Kahveci'),
(298, 14440, 1, 123, 'İrfan Can Kahveci'),
(299, 14440, 1, 123, 'İrfan Can Kahveci'),
(300, 14440, 1, 123, 'İrfan Can Kahveci'),
(342, 14440, 1, 123, 'İrfan Can Kahveci'),
(343, 14440, 7, 123, 'Fenerbahçe'),
(344, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(345, 14440, 1, 123, 'İrfan Can Kahveci'),
(346, 14440, 7, 123, 'Fenerbahçe'),
(347, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(348, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(349, 14440, 1, 123, 'İrfan Can Kahveci'),
(350, 14440, 7, 123, 'Fenerbahçe'),
(351, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(352, 14440, 1, 123, 'İrfan Can Kahveci'),
(353, 14440, 7, 123, 'Fenerbahçe'),
(354, 14440, 8, 123, 'Marcao'),
(355, 14440, 1, 123, 'Kim Min Jea'),
(356, 14440, 7, 123, 'Galatasaray'),
(357, 14440, 8, 123, 'Diagne'),
(358, 14440, 1, 123, 'Kim Min Jea'),
(359, 14440, 7, 123, 'Galatasaray'),
(360, 14440, 8, 123, 'Diagne'),
(361, 14440, 1, 123, 'İrfan Can Kahveci'),
(362, 14440, 7, 123, 'Fenerbahçe'),
(363, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(364, 14440, 1, 123, 'Kim Min Jea'),
(365, 14440, 7, 123, 'Galatasaray'),
(366, 14440, 8, 123, 'Diagne'),
(367, 14440, 1, 123, 'İrfan Can Kahveci'),
(368, 14440, 7, 123, 'Fenerbahçe'),
(369, 14440, 8, 123, 'Kerem Aktürkoğlu'),
(370, 14440, 1, 123, 'Kim Min Jea'),
(371, 14440, 1, 123, 'Kim Min Jea'),
(372, 14440, 1, 123, 'Kim Min Jea'),
(373, 14440, 1, 123, 'Mesut Özil'),
(374, 14440, 7, 123, 'Fenerbahçe'),
(375, 14440, 8, 123, 'Diagne'),
(376, 14440, 1, 123, 'Mesut Özil'),
(377, 14440, 7, 123, 'Fenerbahçe'),
(378, 14440, 8, 123, 'Diagne'),
(379, 14440, 1, 123, 'Mesut Özil'),
(380, 14440, 7, 123, 'Fenerbahçe'),
(381, 14440, 8, 123, 'Diagne'),
(382, 14440, 1, 123, 'Mesut Özil'),
(383, 14440, 7, 123, 'Fenerbahçe'),
(384, 14440, 8, 123, 'Diagne'),
(385, 14440, 1, 123, 'Mesut Özil'),
(386, 14440, 7, 123, 'Fenerbahçe'),
(387, 14440, 8, 123, 'Diagne'),
(388, 14440, 1, 123, 'Mesut Özil'),
(389, 14440, 7, 123, 'Fenerbahçe'),
(390, 14440, 8, 123, 'Diagne'),
(391, 14440, 1, 123, 'Mesut Özil'),
(392, 14440, 7, 123, 'Fenerbahçe'),
(393, 14440, 8, 123, 'Diagne'),
(394, 14440, 1, 123, 'İrfan Can Kahveci'),
(395, 14440, 7, 123, 'Galatasaray'),
(396, 14440, 8, 123, 'Marcao'),
(397, 14440, 1, 123, 'İrfan Can Kahveci'),
(398, 14440, 7, 123, 'Galatasaray'),
(399, 14440, 8, 123, 'Marcao'),
(400, 14440, 1, 123, 'İrfan Can Kahveci'),
(401, 14440, 7, 123, 'Galatasaray'),
(402, 14440, 8, 123, 'Marcao'),
(403, 14440, 1, 123, 'İrfan Can Kahveci'),
(404, 14440, 7, 123, 'Galatasaray'),
(405, 14440, 8, 123, 'Marcao'),
(406, 14440, 1, 123, 'İrfan Can Kahveci'),
(407, 14440, 7, 123, 'Galatasaray'),
(408, 14440, 8, 123, 'Marcao'),
(409, 14440, 1, 123, 'İrfan Can Kahveci'),
(410, 14440, 7, 123, 'Galatasaray'),
(411, 14440, 8, 123, 'Marcao'),
(412, 14440, 1, 123, 'İrfan Can Kahveci'),
(413, 14440, 7, 123, 'Galatasaray'),
(414, 14440, 8, 123, 'Marcao'),
(415, 14440, 1, 123, 'İrfan Can Kahveci'),
(416, 14440, 7, 123, 'Galatasaray'),
(417, 14440, 8, 123, 'Marcao');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `survey_name`
--
ALTER TABLE `survey_name`
  ADD PRIMARY KEY (`idS`);

--
-- Tablo için indeksler `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`idQ`);

--
-- Tablo için indeksler `survey_user_answer`
--
ALTER TABLE `survey_user_answer`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `survey_name`
--
ALTER TABLE `survey_name`
  MODIFY `idS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16933;

--
-- Tablo için AUTO_INCREMENT değeri `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `idQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `survey_user_answer`
--
ALTER TABLE `survey_user_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
