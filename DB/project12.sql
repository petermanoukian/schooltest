-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2023 at 10:45 AM
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
-- Database: `project12`
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
) ENGINE=InnoDB AUTO_INCREMENT=1167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answerrs`
--

INSERT INTO `answerrs` (`id`, `searchid`, `questid`, `ansname`, `sett`, `created_at`, `updated_at`) VALUES
(1143, 88, 676, 'Thought &amp; Memory', '0', '2023-11-27 06:36:08', '2023-11-27 06:36:08'),
(1144, 88, 676, 'Power &amp; Peace', '0', '2023-11-27 06:36:08', '2023-11-27 06:36:08'),
(1145, 88, 676, 'War &amp; Learning', '1', '2023-11-27 06:36:08', '2023-11-27 06:36:16'),
(1146, 88, 676, 'Sleeping &amp; Waking', '0', '2023-11-27 06:36:08', '2023-11-27 06:36:08'),
(1147, 88, 677, 'Pan troglodytes', '0', '2023-11-27 06:36:08', '2023-11-27 06:36:08'),
(1148, 88, 677, 'Gorilla gorilla', '1', '2023-11-27 06:36:08', '2023-11-27 06:36:14'),
(1149, 88, 677, 'Pan paniscus', '0', '2023-11-27 06:36:08', '2023-11-27 06:36:08'),
(1150, 88, 677, 'Panthera leo', '0', '2023-11-27 06:36:08', '2023-11-27 06:36:08'),
(1151, 89, 678, 'Tog II', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1152, 89, 678, 'M4 Sherman', '1', '2023-11-27 06:38:43', '2023-11-27 06:41:47'),
(1153, 89, 678, 'Tiger H1', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1154, 89, 678, 'T-34', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1155, 89, 679, 'Guy Fieri', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1156, 89, 679, 'Guy Martin', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1157, 89, 679, 'Guy Ritchie', '1', '2023-11-27 06:38:43', '2023-11-27 06:41:44'),
(1158, 89, 679, 'Ainsley Harriott', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1159, 89, 680, 'Blue Whale', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1160, 89, 680, 'Orca', '1', '2023-11-27 06:38:43', '2023-11-27 06:41:39'),
(1161, 89, 680, 'Colossal Squid', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1162, 89, 680, 'Giraffe', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1163, 89, 681, 'Diane', '1', '2023-11-27 06:38:43', '2023-11-27 06:41:34'),
(1164, 89, 681, 'Sakura', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1165, 89, 681, 'Ayano', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43'),
(1166, 89, 681, 'Sheska', '0', '2023-11-27 06:38:43', '2023-11-27 06:38:43');

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
) ENGINE=InnoDB AUTO_INCREMENT=682 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quesions`
--

INSERT INTO `quesions` (`id`, `searchid`, `qname`, `email`, `answered`, `created_at`, `updated_at`) VALUES
(676, 88, 'The Norse god Odin has two pet crows named &quot;Huginn&quot; and &quot;Muninn&quot;.  What do their names mean?', 'super@admin.com', '1', '2023-11-27 06:36:08', '2023-11-27 06:36:16'),
(677, 88, 'What is the scientific name of the Common Chimpanzee?', 'super@admin.com', '1', '2023-11-27 06:36:08', '2023-11-27 06:36:14'),
(678, 89, 'Which one of these tanks was designed and operated by the United Kingdom?', 'super@admin.com', '1', '2023-11-27 06:38:43', '2023-11-27 06:41:47'),
(679, 89, 'Guy&#039;s Grocery Games is hosted by which presenter?', 'super@admin.com', '1', '2023-11-27 06:38:43', '2023-11-27 06:41:44'),
(680, 89, 'What is the largest animal currently on Earth?', 'super@admin.com', '1', '2023-11-27 06:38:43', '2023-11-27 06:41:39'),
(681, 89, 'In the anime Seven Deadly Sins what is the name of one of the sins?', 'super@admin.com', '1', '2023-11-27 06:38:43', '2023-11-27 06:41:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id`, `name`, `email`, `amount`, `difficulty`, `type`, `created_at`, `updated_at`) VALUES
(88, 'firsterrrrr', 'super@admin.com', 3.00, 'medium', 'multiple', '2023-11-27 06:36:07', '2023-11-27 06:36:07'),
(89, 'firsterrrrr', 'super@admin.com', 5.00, 'easy', 'multiple', '2023-11-27 06:38:42', '2023-11-27 06:38:42'),
(90, 'firsterrrrr', 'super@admin.com', 5.00, 'any', 'any', '2023-11-27 06:42:03', '2023-11-27 06:42:03');

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
