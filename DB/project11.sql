-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2023 at 06:28 AM
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
-- Database: `project11`
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
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sett` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `answerrs_searchid_foreign` (`searchid`),
  KEY `answerrs_questid_foreign` (`questid`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answerrs`
--

INSERT INTO `answerrs` (`id`, `searchid`, `questid`, `ansname`, `email`, `sett`, `created_at`, `updated_at`) VALUES
(129, 57, 420, 'Titanic', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(130, 57, 420, 'Monkeybone', 'super@admin.com', '1', '2023-11-27 02:11:12', '2023-11-27 02:11:42'),
(131, 57, 420, 'Encino Man', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(132, 57, 420, 'Mrs. Winterbourne', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(133, 57, 421, '1996', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(134, 57, 421, '2009', 'super@admin.com', '1', '2023-11-27 02:11:12', '2023-11-27 02:11:40'),
(135, 57, 421, '1999', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(136, 57, 421, '1985', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(137, 57, 422, 'Insects', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(138, 57, 422, 'Humans', 'super@admin.com', '1', '2023-11-27 02:11:12', '2023-11-27 02:11:38'),
(139, 57, 422, 'the Brain', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(140, 57, 422, 'Fish', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(141, 57, 423, 'Germany', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(142, 57, 423, 'Austria', 'super@admin.com', '1', '2023-11-27 02:11:12', '2023-11-27 02:11:35'),
(143, 57, 423, 'Canada', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12'),
(144, 57, 423, 'Sweden', 'super@admin.com', '0', '2023-11-27 02:11:12', '2023-11-27 02:11:12');

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
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quesions`
--

INSERT INTO `quesions` (`id`, `searchid`, `qname`, `email`, `answered`, `created_at`, `updated_at`) VALUES
(420, 57, 'Brendan Fraser starred in the following movies, except which one?', 'super@admin.com', '1', '2023-11-27 02:11:12', '2023-11-27 02:11:42'),
(421, 57, 'When was the first mammal successfully cloned?', 'super@admin.com', '1', '2023-11-27 02:11:12', '2023-11-27 02:11:40'),
(422, 57, 'What do you study if you are studying entomology?', 'super@admin.com', '1', '2023-11-27 02:11:12', '2023-11-27 02:11:38'),
(423, 57, 'Which of the following countries banned the use of personal genetic ancestry tests?', 'super@admin.com', '1', '2023-11-27 02:11:12', '2023-11-27 02:11:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id`, `name`, `email`, `amount`, `difficulty`, `type`, `created_at`, `updated_at`) VALUES
(57, 'firsterrrrr', 'super@admin.com', 5.00, 'medium', 'multiple', '2023-11-27 02:11:11', '2023-11-27 02:11:11');

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
