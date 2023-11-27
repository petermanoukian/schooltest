-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2023 at 08:37 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project13`
--

-- --------------------------------------------------------

--
-- Table structure for table `answerrs`
--

DROP TABLE IF EXISTS `answerrs`;
CREATE TABLE IF NOT EXISTS `answerrs` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `searchid` int(10) UNSIGNED NOT NULL,
  `questid` int(10) UNSIGNED NOT NULL,
  `ansname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sett` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answerrs_searchid_foreign` (`searchid`),
  KEY `answerrs_questid_foreign` (`questid`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answerrs`
--

INSERT INTO `answerrs` (`id`, `searchid`, `questid`, `ansname`, `sett`, `created_at`, `updated_at`) VALUES
(65, 101, 713, 'Daniel Ricciardo', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(66, 101, 713, 'Kimi Raikkonen', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:33'),
(67, 101, 713, 'Lewis Hamilton', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(68, 101, 713, 'Sebastian Vettel', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(69, 101, 714, 'Flame Haze', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(70, 101, 714, 'Flame-Haired Burning-Eyed Haze', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(71, 101, 714, 'Flame-Haired Burning-Eyed Hunter', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:30'),
(72, 101, 714, 'Shana', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(73, 101, 715, 'Charles Dickens', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:28'),
(74, 101, 715, 'Hans Christian Andersen', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(75, 101, 715, 'Lewis Carroll', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(76, 101, 715, 'Oscar Wilde', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(77, 101, 716, 'Big Brother', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(78, 101, 716, 'Jeopardy', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:26'),
(79, 101, 716, 'Survivor', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(80, 101, 716, 'The Bachelor', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(81, 101, 717, 'Beater', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(82, 101, 717, 'Chaser', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(83, 101, 717, 'Keeper', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:24'),
(84, 101, 717, 'Seeker', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(85, 101, 718, 'Compressed Data Network', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:21'),
(86, 101, 718, 'Computational Data Network', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(87, 101, 718, 'Content Delivery Network', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(88, 101, 718, 'Content Distribution Network', '0', '2023-11-27 15:54:05', '2023-11-27 15:54:05'),
(89, 102, 719, 'Frankie Laine', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(90, 102, 719, 'Guy Mitchell', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:07'),
(91, 102, 719, 'Slim Whitman', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(92, 102, 719, 'Tennessee Ernie Ford', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(93, 102, 720, 'England, 1817', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(94, 102, 720, 'England, 1917', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:05'),
(95, 102, 720, 'United States, 1817', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(96, 102, 720, 'United States, 1917', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(97, 102, 721, 'Ben Burtt', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(98, 102, 721, 'Ken Burns', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(99, 102, 721, 'Miranda Keyes', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(100, 102, 721, 'Ralph McQuarrie', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:03'),
(101, 102, 722, '1790', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(102, 102, 722, '1812', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(103, 102, 722, '1840', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:02'),
(104, 102, 722, '1880', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(105, 102, 723, 'Ancient Dragon World', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(106, 102, 723, 'Darkness Dragon World', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:00'),
(107, 102, 723, 'Dragon World', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(108, 102, 723, 'Star Dragon World', '0', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(109, 104, 724, 'Dzongkha', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39'),
(110, 104, 724, 'Groma', '1', '2023-11-27 16:29:39', '2023-11-27 16:29:45'),
(111, 104, 724, 'Karen', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39'),
(112, 104, 724, 'Ladakhi', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39'),
(113, 104, 725, 'Buick', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39'),
(114, 104, 725, 'Cadillac', '1', '2023-11-27 16:29:39', '2023-11-27 16:29:43'),
(115, 104, 725, 'Chevrolet', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39'),
(116, 104, 725, 'Ford', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39'),
(117, 104, 726, 'Church', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39'),
(118, 104, 726, 'Mosque', '1', '2023-11-27 16:29:39', '2023-11-27 16:29:41'),
(119, 104, 726, 'Synagogue', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39'),
(120, 104, 726, 'Temple', '0', '2023-11-27 16:29:39', '2023-11-27 16:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_11_25_155845_create_search_histories_table', 1),
(2, '2023_11_26_115228_create_quesions_table', 2),
(3, '2023_11_26_121015_create_answerrs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `quesions`
--

DROP TABLE IF EXISTS `quesions`;
CREATE TABLE IF NOT EXISTS `quesions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `searchid` int(10) UNSIGNED NOT NULL,
  `qname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answered` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quesions_searchid_foreign` (`searchid`)
) ENGINE=InnoDB AUTO_INCREMENT=727 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quesions`
--

INSERT INTO `quesions` (`id`, `searchid`, `qname`, `email`, `answered`, `created_at`, `updated_at`) VALUES
(713, 101, 'Who won the 2018 Monaco Grand Prix?', 'super@admin.com', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:33'),
(714, 101, 'In &quot;Shakugan no Shana&quot; what was the Shana usually referred as?', 'super@admin.com', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:30'),
(715, 101, 'Who wrote the children&#039;s story &quot;The Little Match Girl&quot;?', 'super@admin.com', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:28'),
(716, 101, 'Which television show has Dan Gheesling been on?', 'super@admin.com', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:26'),
(717, 101, 'What position does Harry Potter play in Quidditch?', 'super@admin.com', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:24'),
(718, 101, 'What does the acronym CDN stand for in terms of networking?', 'super@admin.com', '1', '2023-11-27 15:54:05', '2023-11-27 15:56:21'),
(719, 102, 'Who sang the theme song for the TV show &#039;Rawhide&#039;?', 'super@admin.com', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:07'),
(720, 102, 'Where and when was the first cardboard box made for industrial use?', 'super@admin.com', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:05'),
(721, 102, 'What is the name of the foley artist who designed the famous sounds of Star Wars, including Chewbacca&#039;s roar and R2-D2&#039;s beeps and whistles?', 'super@admin.com', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:03'),
(722, 102, 'In what year was Tchaikovsky&#039;s 1812 Overture composed?', 'super@admin.com', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:02'),
(723, 102, 'Which of these is not a world in the anime &quot;Buddyfight&quot;?', 'super@admin.com', '1', '2023-11-27 15:56:53', '2023-11-27 15:57:00'),
(724, 104, 'What is the official language of Bhutan?', 'super@admin.com', '1', '2023-11-27 16:29:38', '2023-11-27 16:29:45'),
(725, 104, 'Which car brand does NOT belong to General Motors?', 'super@admin.com', '1', '2023-11-27 16:29:39', '2023-11-27 16:29:43'),
(726, 104, 'Irish musician Hozier released a music track in 2013 titled, &quot;Take Me to ______&quot;', 'super@admin.com', '1', '2023-11-27 16:29:39', '2023-11-27 16:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

DROP TABLE IF EXISTS `search_history`;
CREATE TABLE IF NOT EXISTS `search_history` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `difficulty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id`, `name`, `email`, `amount`, `difficulty`, `type`, `created_at`, `updated_at`) VALUES
(101, 'firsterrrrr', 'super@admin.com', 8.00, 'medium', 'multiple', '2023-11-27 15:54:04', '2023-11-27 15:54:04'),
(102, 'second', 'super@admin.com', 6.00, 'medium', 'multiple', '2023-11-27 15:56:53', '2023-11-27 15:56:53'),
(103, 'firsterrrrr', 'super@admin.com', 5.00, 'any', 'any', '2023-11-27 15:57:18', '2023-11-27 15:57:18'),
(104, 'firsterrrrr', 'super@admin.com', 5.00, 'medium', 'multiple', '2023-11-27 16:29:37', '2023-11-27 16:29:37');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answerrs`
--
ALTER TABLE `answerrs`
  ADD CONSTRAINT `answerrs_questid_foreign` FOREIGN KEY (`questid`) REFERENCES `quesions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answerrs_searchid_foreign` FOREIGN KEY (`searchid`) REFERENCES `search_history` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quesions`
--
ALTER TABLE `quesions`
  ADD CONSTRAINT `quesions_searchid_foreign` FOREIGN KEY (`searchid`) REFERENCES `search_history` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
