-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 17, 2024 at 07:01 PM
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
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int NOT NULL,
  `ads` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`id`, `ads`) VALUES
(1, '<img src=\"assets/img/1111.png\" alt=\"\">'),
(2, '<img src=\"assets/img/2222.png\" alt=\"\">');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `country_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `name2`) VALUES
(1, 1, 'Cambridge', NULL),
(2, 1, 'New Haven', NULL),
(3, 1, 'Pasadena', NULL),
(4, 1, 'Durham', NULL),
(5, 1, 'New York', NULL),
(6, 1, 'Princeton', NULL),
(7, 1, 'Stanford', NULL),
(8, 1, 'Evanston', NULL),
(9, 1, 'Baltimore', NULL),
(10, 1, 'Philadelphia', NULL),
(11, 1, 'Los Angeles', NULL),
(12, 1, 'Ann Arbor', NULL),
(13, 1, 'Ithaca', NULL);

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
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `name2` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `img_id1` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `name2`, `img_id1`, `status`) VALUES
(1, 'United States', '', '', NULL, 'united-states.png', 1),
(2, 'Canada', '', '', NULL, 'canada.png', 1),
(3, 'Italy', '', '', NULL, 'italy.png', 1),
(4, 'German', '', '', NULL, 'germany.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `country_info`
--

CREATE TABLE `country_info` (
  `id` int NOT NULL,
  `country_id` int NOT NULL,
  `advantages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disadvantages` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_info`
--

INSERT INTO `country_info` (`id`, `country_id`, `advantages`, `disadvantages`) VALUES
(1, 15, 'نزدیکی به ایران', 'تورم'),
(2, 195, 'اب و هوای 4 فصل و کاملا معتدل \nمردم بسیار خونگرم ', 'پیدا کردن شغل سخت است \r\nنرخ بیکاری زیاد است \r\nنرخ بیکاری اسپانیا در سال 2023 در مقایسه با ایران کاملا برابر است'),
(3, 0, 'ارتباطات دانشگاه‌های مالزی با دیگر دانشگاههای جهان بسیاز زیاد است و درحد عالی می‌باشد\nویزای فوری و بون دردسرهای رجکتی . درصد رجکتی ویزای مالزی بسیار پااین است تقریبا نزدیک به صفر\nپیدا کردن خانه بسیار ساده و بدون دردسر است\n', 'برای ایرانی‌ها در مالزی به سختی و دشواری زیاد حساب بانکی باز می‌کنند تقریبا اکثر دانشجویان ایرانی نمی‌توانند حساب بانکی باز کنند در مالزی مگر با داشتن کلی نامه از محل کار و مرفی نامه‌‌های خاص \nآب و هوا در مالزی تقریبا همیشه یک فصل است و در هفته روزهای بارانی بسیار زیادی را تجربه خواهید کرد.\nداشتن حشره زیاد به دلیل رطوبت هوا');

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `id` int NOT NULL,
  `short_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ename` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`id`, `short_name`, `ename`, `pname`) VALUES
(1, '1', 'Diploma', 'دیپلم'),
(2, '1', 'Associate’s degree', 'فوق دیپلم - کاردانی'),
(3, 'A', 'Associate of Arts', 'فوق دیپلم هنر - کاردانی هنر'),
(4, 'A.S', 'Associate of Arts and Science', 'فوق دیپلم هنر و علوم - کاردانی هنر و علوم'),
(5, 'S', 'Associate of Science', 'فوق دیپلم علوم - کاردانی علوم'),
(6, 'B.A', 'Bachelor - Licentiate', 'لیسانس - کارشناسی'),
(7, 'B.Eng', 'Bachelor of Engineering', 'لیسانس مهندسی - کارشناسی مهندسی'),
(8, 'B.Tech', 'Bachelor of Technology', 'لیسانس تکنولوژی - کارشناسی تکنولوژی'),
(9, 'B.Pharm', 'Bachelor of Pharmacy', 'لیسانس داروسازی - کارشناسی داروسازی'),
(10, 'B.Arch', 'Bachelor of Architecture', 'لیسانس معماری - کارشناسی معماری'),
(11, 'B.A.Sc', 'Bachelor of Applied Science', 'لیسانس علوم تجربی و کاربردی - کارشناسی علوم تجربی یا کاربردی'),
(12, 'B.B.A', 'Bachelor of Business Administration', 'لیسانس مدیریت شغلی - کارشناسی مدیریت شغلی'),
(13, 'B.F.A', 'Bachelor of Fine Arts', 'لیسانس هنرهای زیبا - کارشناسی هنرهای زیبا'),
(14, 'B.Ed', 'Bachelor of Education', 'لیسانس تربیت معلم - کارشناسی تربیت معلم'),
(15, 'B.Com', 'Bachelor of Commerce', 'لیسانس تجات -کارشناسی تجارت'),
(16, 'LL.B', 'Bachelor of Laws', 'لیسانس حقوق - کارشناسی حقوق'),
(17, '', 'Master', 'فوق لیسانس - کارشناسی ارشد'),
(18, 'M.S.W', 'Master of Social Work', 'فوق لیسانس کار اجتماعی - کارشناسی ارشد کار اجتماعی'),
(19, 'M.Tech', 'Master of Technology', 'فوق لیسانس تکنولوژی - کارشناسی ارشد تکنولوژی'),
(20, 'M.Phil', 'Master of Philosophy', 'فوق لیسانس فلسفه - کارشناسی ارشد فلسفه'),
(21, 'M.P.A', 'Master of Public Administration', 'فوق لیسانس مدیریت عمومی - کارشناسی ارشد مدیریت عمومی'),
(22, 'M.P.H', 'Master of Public Health', 'فوق لیسانس بهداشت عمومی - کارشناسی ارشد بهداشت عمومی'),
(23, 'M.Arch', 'Master of Architecture', 'فوق لیسانس معماری - کارشناسی ارشد معماری'),
(24, 'M.A', 'Master of Arts', 'فوق لیسانس هنر - کارشناسی ارشد هنر'),
(25, 'M.B.A', 'Master of Business Administration', 'فوق لیسانس مدیریت تجاری - کارشناسی ارشد مدیریت تجاری'),
(26, 'M.C.A', 'Master of Computer Applications', 'فوق لیسانس کاربردهای کامپیوتر - کارشناسی ارشد کاربردهای کامپیوتر'),
(27, 'M.Div', 'Master of Divinity', 'فوق لیسانس الهیات - کارشناسی ارشد الهیات'),
(28, 'LL.M', 'Master of Laws', 'فوق لیسانس حقوق - کارشناسی ارشد حقوق'),
(29, 'M.L.I.S', 'Master of Library & Information Science', 'فوق لیسانس علوم اطلاعات و کتابداری - کارشناسی ارشد علوم اطلاعات و کتابداری'),
(30, 'M.F.A', 'Master of Fine Arts', 'فوق لیسانس هنرهای زیبا - کارشناسی ارشد هنرهای زیبا'),
(31, 'M.Ed', 'Master of Education', 'فوق لیسانس تحصیلات - کارشناسی ارشد تحصیلات'),
(32, 'M.Eng', 'Master of Engineering', 'فوق لیسانس مهندسی - کارشناسی ارشد مهندسی'),
(33, '', 'Doctorate', 'دکتری'),
(34, 'Ed.D', 'Doctor of Education', 'دکترای تحصیلات'),
(35, 'Pharm.D', 'Doctor of Pharmacy', 'دکترای داروسازی'),
(36, 'Ph.D', 'Doctor of Philosophy', 'پی اچ دی - دکترای فلسفه'),
(37, 'J.D', 'Doctor of Law', 'دکترای حقوق'),
(38, 'M.D', 'Doctor of Medicine', 'دکترای پزشکی');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `alt`) VALUES
(1, '1.png', 'بدون متن جایگزین'),
(2, '2.png', ''),
(3, '3.png', ''),
(4, '4.png', ''),
(5, '5.png', ''),
(6, '6.png', ''),
(7, '7.png', ''),
(8, '8.png', ''),
(9, '9.png', ''),
(10, '10.png', ''),
(11, '11.png', ''),
(12, '12.png', ''),
(13, '13.png', ''),
(14, '14.png', ''),
(15, '15.png', ''),
(16, '16.png', ''),
(17, '17.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int NOT NULL,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `keyword` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `link` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `country_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `uni_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `title`, `keyword`, `link`, `file`, `country_id`, `city_id`, `uni_id`) VALUES
(1, 'University application, application, international university list, academic immigration, academic visas', 'apply,applyha,University application, application, international university list, academic immigration, academic visas', 'home', 'home', NULL, NULL, NULL),
(2, 'Latest news about world universities and academic immigration and study visas', 'apply,visa,university apply,uni apply,applyha,', 'article', 'article', NULL, NULL, NULL),
(3, 'Finding a university', 'find university,university find,university finder,', 'find-university', 'uni-list', NULL, NULL, NULL),
(4, 'محصولات اینستاگرام', NULL, 'global-university-list', 'uni-all', NULL, NULL, NULL),
(5, 'Reasons for Iranian visa rejection', 'reject  Iranian visa,Iranian visa refuses,', 'Reasons-for-Iranian-visa-rejection', 'article-info', NULL, NULL, NULL),
(6, 'Language score for Apply Canada', 'Language score for Apply Canada,Canada language,CLB Canada visa, ', 'Language-score-for-Apply-Canada', 'article-info', NULL, NULL, NULL),
(7, 'Conditions for studying in the United States', 'Conditions for studying in the United States', 'Conditions-for-studying-in-the-United-States', 'article-info', NULL, NULL, NULL),
(8, 'Benefits of studying in America', 'Benefits of studying in America,Benefits of studying in USA', 'Benefits-of-studying-in-America', 'article-info', NULL, NULL, NULL),
(9, 'ff', 'america', 'america', 'uni-list-country', 1, NULL, NULL),
(10, 'Universities in United States, Universities in United States list', 'Universities in United States,us ni', 'Universities-in-United-States', 'uni-list-country', 1, 0, NULL),
(11, NULL, NULL, 'Universities-in-Canada', 'uni-list-country', 2, 0, NULL),
(12, 'Harvard University Scholarship', 'Harvard University Scholarship', 'Harvard-University-Scholarship', 'uni-list-info', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_id` int NOT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ranking` int NOT NULL,
  `city_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `name`, `name2`, `country_id`, `logo`, `url`, `ranking`, `city_id`, `description`) VALUES
(1, 'Harvard', '', 1, '', 'harvard.edu', 0, 1, ''),
(2, 'Massachusetts Institute of Technology', 'MIT', 1, '', 'mit.edu', 0, 1, ''),
(3, 'Yale', '', 1, '', 'yale.edu', 0, 2, ''),
(4, 'California Institute of Technology', NULL, 1, '', 'caltech.edu', 0, 3, ''),
(5, 'New York', '', 1, '', 'nyu.edu', 0, 5, ''),
(6, 'Columbia', NULL, 1, '', 'columbia.edu', 0, 5, ''),
(9, 'Stanford', '', 1, '', 'stanford.edu', 0, 7, ''),
(10, 'Princeton', '', 1, '', 'princeton.edu', 0, 6, ''),
(11, 'Pennsylvania', '', 1, '', 'upenn.edu', 0, 10, ''),
(12, 'Duke', NULL, 1, '', 'duke.edu', 0, 4, ''),
(13, 'کلگری', 'calgary university', 2, '', '', 0, 0, ''),
(14, 'مونیخ', 'LMU', 1, '', '', 0, 0, ''),
(15, 'فنی مونیخ', 'TUM', 1, '', '', 0, 0, ''),
(16, 'کالج لانگارا', 'langara', 1, '', '', 0, 0, ''),
(17, 'آلبرتا', 'ualberta', 1, '', '', 0, 0, ''),
(18, 'ترینیتی وسترن', 'twu ', 1, '', '', 0, 0, ''),
(19, '', '', 1, '', '', 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `country_info`
--
ALTER TABLE `country_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country_info`
--
ALTER TABLE `country_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `degree`
--
ALTER TABLE `degree`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
