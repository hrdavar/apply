-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2024 at 05:22 PM
-- Server version: 8.0.40
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ytdsbmeo_new_apply`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int NOT NULL,
  `top` tinyint(1) NOT NULL,
  `country_id` int DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_id1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `top`, `country_id`, `link`, `title`, `content`, `img_id1`, `ip_id`, `date`) VALUES
(1, 1, 38, 'Language-score-for-Apply-Canada', 'Language score for Apply Canada', 'To apply for permanent residency through Express Entry, you need to have a minimum language proficiency of CLB 7 (the Canadian Language Benchmarks), which is a minimum of 6.0 for each section of the IELTS. For each programme, there are different language proficiency requirements.', 'Language score for Apply Canada.jpg', 0, '2023-11-09 22:57:07'),
(2, 0, 223, 'Benefits-of-studying-in-America', 'Benefits of studying in America', 'Cultural diversity:', 'Benefits of studying in America.jpg', 0, '2023-11-09 22:57:07'),
(3, 0, 223, 'Conditions-for-studying-in-the-United-States', 'Conditions for studying in the United States', '', 'usa-uni-Conditions.jpg', 0, '2023-11-09 22:57:07'),
(4, 0, NULL, 'Reasons-for-Iranian-visa-rejection', 'Reasons for Iranian visa rejection', 'خالی', 'Reasons for Iranian visa rejection.jpg', 0, '2023-11-09 22:57:55'),
(5, 1, NULL, '', 'ارازنترین ایالت برای زندگی در آمریکا', '', '0', 0, '2023-11-09 22:59:15'),
(6, 0, NULL, '', 'معروف ترین دانشگاه های آمریکا', '', '0', 0, '2023-11-10 01:21:54'),
(7, 0, NULL, '', 'لیست دانشگاه های آمریکا', '', '0', 0, '2023-11-10 01:21:54'),
(8, 0, 38, '', 'شرایط تحصیل در تورنتو', '', '0', 0, '2023-12-27 13:24:21'),
(9, 1, 38, '', 'زندگی دانشجویی تورنتو', '', '0', 0, '2023-12-27 13:25:32'),
(10, 0, NULL, '', 'کلگری', '', '0', 0, '2023-12-27 13:25:32'),
(11, 0, NULL, '', 'پاسپورت کانادا', '', '0', 0, '2023-12-27 13:26:01'),
(12, 0, NULL, '', 'پاسپورت آلمان', '', '0', 0, '2023-12-27 13:26:01'),
(13, 1, NULL, '', 'زندگی در ایتالیا', '', '0', 0, '2023-12-27 13:27:23'),
(14, 0, NULL, '', 'پاسپورت ایتالیا', '', '0', 0, '2023-12-27 13:27:23'),
(15, 0, NULL, '', 'تحصیل در ایتالیا', '', '0', 0, '2023-12-27 13:27:48'),
(16, 0, NULL, '', 'معایب زندگی در ایتالیا', '', '0', 0, '2023-12-27 13:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `keyword` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `link` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `keyword`, `link`, `file`) VALUES
(1, 'University application, application, international university list, academic immigration, academic visas', 'apply,applyha,University application, application, international university list, academic immigration, academic visas', 'home', 'home'),
(2, 'Latest news about world universities and academic immigration and study visas', 'apply,visa,university apply,uni apply,applyha,', 'article', 'article'),
(3, 'محصولات', NULL, 'university-list', 'uni-list'),
(4, 'محصولات اینستاگرام', NULL, 'global-university-list', 'uni-all'),
(5, 'Reasons for Iranian visa rejection', 'reject  Iranian visa,Iranian visa refuses,', 'Reasons-for-Iranian-visa-rejection', 'article-info'),
(6, 'Language score for Apply Canada', 'Language score for Apply Canada,Canada language,CLB Canada visa, ', 'Language-score-for-Apply-Canada', 'article-info'),
(7, 'Conditions for studying in the United States', 'Conditions for studying in the United States', 'Conditions-for-studying-in-the-United-States', 'article-info'),
(8, 'Benefits of studying in America', 'Benefits of studying in America,Benefits of studying in USA', 'Benefits-of-studying-in-America', 'article-info');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
