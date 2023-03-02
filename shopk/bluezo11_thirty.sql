-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 07, 2022 at 12:58 PM
-- Server version: 10.2.43-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bluezo11_thirty`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role_id`, `deleted_at`, `created_at`, `phone`, `updated_at`) VALUES
(1, 'admin', 'admin@test.com', NULL, '$2y$10$83KZU.ylvfmbONVD07ACge1NjwBXhZDv7w94wnGI9JRnF5q1OFHc6', NULL, 1, '2021-11-08 17:27:25', '2021-10-18 11:21:07', '01111111111', '2021-11-08 17:27:25'),
(2, 'bluezone', 'bluezone.adv@gmail.com', NULL, '$2y$10$CngnMA67M4dU3LtLDkoAfOICmXEBip28T53UOgw5ocdNSGVoM75ly', NULL, 1, NULL, '2021-11-08 17:11:33', '97244282', '2021-11-08 17:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `in_app` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `img`, `link`, `type`, `in_app`, `created_at`, `updated_at`, `position`) VALUES
(1, '163750250563464.jpeg', 'http://127.0.0.1:8000/admin/ads/create', 'product', 0, '2021-10-22 12:11:53', '2021-11-21 21:48:25', 2),
(3, '163588754820378.png', '1', 'product', 0, '2021-11-03 04:12:28', '2021-11-03 04:12:28', 3),
(4, '163588756421927.png', '1', 'product', 0, '2021-11-03 04:12:44', '2021-11-03 04:12:44', 4),
(5, '163750255749223.jpeg', '1', 'product', 0, '2021-11-03 04:13:07', '2021-11-21 21:49:17', 5),
(6, '163750248884973.jpeg', '2', 'product', 0, '2021-11-03 04:13:32', '2021-11-21 21:48:08', 6),
(7, '163750247786920.jpeg', '2', 'product', 0, '2021-11-03 04:13:41', '2021-11-21 21:47:57', 7),
(8, '16375023808506.jpeg', '2', 'product', 0, '2021-11-03 04:14:13', '2021-11-21 21:46:20', 8),
(9, '16358877079481.png', '1', 'product', 0, '2021-11-03 04:15:08', '2021-11-03 04:15:08', 9),
(10, '163750256998937.png', '3', 'product', 0, '2021-11-03 04:16:00', '2021-11-21 21:49:29', 10),
(11, '163750230868638.jpeg', 'https://play.google.com/store/apps/details?id=com.bluezone.bazar&hl=ar&gl=US', 'product', 0, '2021-11-20 20:07:22', '2021-11-21 21:45:08', 1),
(12, '163750233994439.jpeg', 'https://apps.apple.com/kw/app/bazar/id1511596620?l=ar', 'product', 0, '2021-11-20 20:11:01', '2021-11-21 21:45:39', 1),
(13, '163749128648183.png', '28', 'product', 1, '2021-11-21 18:41:26', '2021-11-21 18:41:26', 9),
(14, '16375023536535.jpeg', '29', 'product', 1, '2021-11-21 18:43:22', '2021-11-21 21:45:54', 10),
(15, '163749198987591.png', '5', 'product', 1, '2021-11-21 18:53:10', '2021-11-22 21:36:23', 9),
(16, '163758822410972.jpeg', 'http://4atleta.com/', 'product', 0, '2021-11-22 21:37:04', '2021-11-22 21:37:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_price` double NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name_ar`, `name_en`, `slug`, `shipping_price`, `deleted_at`, `created_at`, `updated_at`, `country_id`) VALUES
(1, 'هانغل', '한글', 'hanghl', 50, '2021-10-26 20:25:19', '2021-10-18 11:43:57', '2021-10-26 20:25:19', 1),
(2, '아산시', 'Asan', 'asan', 20, NULL, '2021-10-18 11:44:24', '2021-10-18 11:45:53', 2),
(4, 'fntas', 'fntas', 'fntas', 23, NULL, '2021-11-03 04:09:49', '2021-11-03 04:09:49', 4);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frontend_type` enum('select','radio','text','text_area','img') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `sort` int(11) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name_en`, `name_ar`, `frontend_type`, `is_required`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES
(6, 'size', 'size', 'select', 1, 0, NULL, NULL, '2021-11-03 02:39:29'),
(7, 'color', 'color', 'select', 1, 0, NULL, NULL, '2021-11-03 02:39:24'),
(8, 'test', 'test', 'select', 0, 0, '2021-11-03 02:39:12', '2021-10-31 07:20:21', '2021-11-03 02:39:12'),
(9, 'old', 'old', 'select', 0, 0, '2021-11-18 18:49:18', '2021-11-14 23:11:58', '2021-11-18 18:49:18'),
(10, 'new', 'new', 'select', 0, 0, '2021-11-18 18:49:15', '2021-11-14 23:12:10', '2021-11-18 18:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT 0,
  `parent_id` int(11) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_en`, `name_ar`, `slug`, `sort`, `parent_id`, `deleted_at`, `created_at`, `updated_at`, `img`) VALUES
(1, 'school', 'sekolah', 'school', 100, 0, NULL, NULL, '2021-11-03 02:38:54', 'default.svg'),
(2, 'alktronyat', 'alkonyat', 'alktronyat', 99, 0, NULL, NULL, NULL, 'default.svg'),
(3, 'watches', 'watches', 'watches', 98, 0, NULL, NULL, '2021-11-03 02:38:37', 'default.svg'),
(4, 'air pods', 'air pods', 'air-pods', 97, 0, NULL, NULL, '2021-11-03 02:38:22', 'default.svg'),
(5, 'almntgat-almktby', 'produk kantor', 'almntgat-almktby', 100, 1, NULL, NULL, '2021-11-03 02:36:00', 'almntgat-almktby.svg'),
(6, 'mlabs', 'pakaian', 'mlabs', 99, 1, NULL, NULL, '2021-11-03 02:35:51', 'mlabs.svg'),
(7, 'ktb', 'buku', 'ktb', 98, 1, NULL, NULL, '2021-11-03 02:35:25', 'ktb.svg'),
(8, 'shnt-mdrsy', 'tas sekolah', 'shnt-mdrsy', 100, 4, NULL, NULL, '2021-11-03 02:35:07', 'shnt-mdrsy.svg'),
(9, 'mklm', 'sebuah kotak pensil', 'mklm', 99, 4, NULL, NULL, '2021-11-03 02:35:00', 'mklm.svg'),
(10, 'adoat-hndsy', 'Alat teknik', 'adoat-hndsy', 98, 4, NULL, NULL, '2021-11-03 02:34:31', 'adoat-hndsy.svg'),
(11, 'aklam', 'pulpen', 'aklam', 97, 3, NULL, NULL, '2021-11-03 02:34:22', 'aklam.svg'),
(12, 'adoat-tloyn', 'alat mewarnai', 'adoat-tloyn', 96, 3, NULL, NULL, '2021-11-03 02:34:13', 'adoat-tloyn.svg'),
(13, 'mlabs-bnat', 'pakaian anak perempuan', 'mlabs-bnat', 95, 2, NULL, NULL, '2021-11-03 02:33:34', 'mlabs-bnat.svg'),
(14, 'mlabs-aolad', 'Pakaian anak laki-laki', 'mlabs-aolad', 94, 2, NULL, NULL, '2021-11-03 02:33:25', 'mlabs-aolad.svg'),
(15, 'section 1', 'section 1', 'test11', 0, 0, NULL, '2021-10-25 20:35:41', '2021-11-14 21:59:52', 'default.svg'),
(16, 'Category 3', 'Category 3', 'category-3', 0, 15, NULL, '2021-10-25 20:38:42', '2021-11-03 02:32:49', 'Category 3.svg'),
(17, 'Category 2', 'Category 2', 'category-2', 0, 1, NULL, '2021-10-26 18:27:11', '2021-11-03 02:23:37', 'ttt.svg'),
(18, 'Category 1', 'Category 1', 'category-1', 0, 1, NULL, '2021-10-26 18:36:14', '2021-11-03 02:23:16', 'bjkbjkb.svg'),
(19, 'jknk', 'nlkjnkj', 'nlkjnkj', 0, 1, '2021-10-26 20:38:03', '2021-10-26 18:41:36', '2021-10-26 20:38:03', 'jknk.svg');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`, `title`) VALUES
(149, 'Josiane Schumm', 'emely.predovic@gmail.com', '(408) 589-8703', 'Eius voluptatem ratione facere voluptatem reiciendis cum explicabo. Dolorem ipsam non consequatur repellat. Odit odit nulla beatae natus. Quaerat eum est sit aliquam quis. Accusantium saepe et enim maxime totam vel. Excepturi maxime ullam eveniet. Quia omnis quisquam rerum odio molestiae quos voluptas. Sed velit qui occaecati eius. Tenetur praesentium occaecati et est quod quia est. Iure aut sunt enim voluptatum quae.', '2021-10-18 11:29:44', '2021-10-18 11:29:44', 'Minus culpa molestiae ipsa fugiat.');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_number_phone` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `flag` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_en`, `slug`, `code_phone`, `count_number_phone`, `deleted_at`, `created_at`, `updated_at`, `flag`) VALUES
(1, '대한민국', 'Korea', 'korea', '‎+82', NULL, '2021-11-03 06:08:58', '2021-10-18 11:41:55', '2021-11-03 06:08:58', 'Korea.png'),
(2, '이집트', 'egypt', 'egypt', '+20', 11, '2021-11-20 19:22:47', '2021-10-18 11:42:50', '2021-11-20 19:22:47', 'egypt.png'),
(3, 'test', 'bjkb', 'kvjkvjkv', '011', 55, '2021-11-03 06:08:23', '2021-10-24 10:54:12', '2021-11-03 06:08:23', 'bjkb.png'),
(4, 'kuwait', 'kuwait', 'what', '+965', 8, NULL, '2021-11-03 01:59:48', '2021-11-03 01:59:48', 'kuwait.png'),
(5, 'indonesia', 'indonesia', 'indonesia', '626', 8, NULL, '2021-11-20 19:25:54', '2021-11-20 19:25:54', 'indonesia.png'),
(6, 'fff', 'ffff', 'ffff', '+20', 50, '2021-11-21 21:27:34', '2021-11-21 21:27:24', '2021-11-21 21:27:34', 'ffff.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `discount` double NOT NULL DEFAULT 0,
  `min_price` double NOT NULL DEFAULT 0,
  `limit` int(11) NOT NULL DEFAULT 1,
  `limit_user` int(11) NOT NULL DEFAULT 1,
  `use` int(11) NOT NULL DEFAULT 0,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type_discount` enum('price','percentage') COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `is_active`, `discount`, `min_price`, `limit`, `limit_user`, `use`, `admin_id`, `end_date`, `created_at`, `updated_at`, `type_discount`) VALUES
(1, 'تجريبي', '3d-2020', 1, 10, 100, 500, 1, 0, 1, '2021-11-24', '2021-10-24 12:48:22', '2021-10-24 12:48:22', 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.jpg',
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'icons',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `title`, `img`, `link`, `type`, `updated_at`, `created_at`) VALUES
(15, 'facebook', '163588787829581.png', 'http://127.0.0.1:8000/admin/icons/create', 'icon', '2021-11-03 04:17:58', '2021-10-25 13:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `src`, `product_id`) VALUES
(1, 'test.jpg', 15),
(2, 'test.jpg', 23),
(3, 'test.jpg', 24),
(7, 'test.jpg', 19),
(8, 'test.jpg', 3),
(9, 'test.jpg', 3),
(10, 'test.jpg', 34),
(14, 'test.jpg', 20),
(15, 'test.jpg', 33),
(16, 'test.jpg', 7),
(18, 'test.jpg', 24),
(20, 'test.jpg', 18),
(21, 'test.jpg', 15),
(22, 'test.jpg', 34),
(27, 'test.jpg', 25),
(29, 'test.jpg', 25),
(31, 'test.jpg', 24),
(32, 'test.jpg', 16),
(33, 'test.jpg', 11),
(34, 'test.jpg', 32),
(36, 'test.jpg', 5),
(38, 'test.jpg', 5),
(41, 'test.jpg', 19),
(43, 'test.jpg', 35),
(44, 'test.jpg', 23),
(47, 'test.jpg', 13),
(50, 'test.jpg', 4),
(51, 'test.jpg', 34),
(52, 'test.jpg', 13),
(53, 'test.jpg', 18),
(54, 'test.jpg', 22),
(56, 'test.jpg', 18),
(57, 'test.jpg', 27),
(58, 'test.jpg', 2),
(59, 'test.jpg', 2),
(60, 'test.jpg', 14),
(61, 'test.jpg', 18),
(62, 'test.jpg', 5),
(63, 'test.jpg', 16),
(64, 'test.jpg', 17),
(65, 'test.jpg', 15),
(66, 'test.jpg', 24),
(67, 'test.jpg', 4),
(68, 'test.jpg', 16),
(69, 'test.jpg', 1),
(71, 'test.jpg', 5),
(72, 'test.jpg', 12),
(74, 'test.jpg', 16),
(75, 'test.jpg', 27),
(76, 'test.jpg', 34),
(77, 'test.jpg', 22),
(80, 'test.jpg', 19),
(81, 'test.jpg', 18),
(82, 'test.jpg', 12),
(83, 'test.jpg', 6),
(84, 'test.jpg', 15),
(85, 'test.jpg', 17),
(86, 'test.jpg', 18),
(87, 'test.jpg', 14),
(88, 'test.jpg', 16),
(89, 'test.jpg', 26),
(90, 'test.jpg', 5),
(92, 'test.jpg', 32),
(95, 'test.jpg', 16),
(97, 'test.jpg', 25),
(98, 'test.jpg', 5),
(99, 'test.jpg', 21),
(102, 'test.jpg', 1),
(103, 'test.jpg', 26),
(104, 'test.jpg', 20),
(107, 'test.jpg', 18),
(111, 'test.jpg', 16),
(113, 'test.jpg', 19),
(119, 'test.jpg', 6),
(121, 'test.jpg', 14),
(124, 'test.jpg', 3),
(125, 'test.jpg', 19),
(127, 'test.jpg', 34),
(128, 'test.jpg', 23),
(129, 'test.jpg', 35),
(130, 'test.jpg', 21),
(131, 'test.jpg', 33),
(133, 'test.jpg', 11),
(134, 'test.jpg', 4),
(135, 'test.jpg', 17),
(136, 'test.jpg', 3),
(138, 'test.jpg', 17),
(140, 'test.jpg', 4),
(142, 'test.jpg', 3),
(147, 'test.jpg', 4),
(148, 'test.jpg', 15),
(153, 'test.jpg', 2),
(157, 'test.jpg', 2),
(159, 'test.jpg', 3),
(160, 'test.jpg', 2),
(162, 'test.jpg', 23),
(163, 'test.jpg', 4),
(164, 'test.jpg', 23),
(165, 'test.jpg', 18),
(168, 'test.jpg', 13),
(169, 'test.jpg', 11),
(170, 'test.jpg', 22),
(171, 'test.jpg', 16),
(172, 'test.jpg', 19),
(173, 'test.jpg', 17),
(175, 'test.jpg', 20),
(178, 'test.jpg', 19),
(179, 'test.jpg', 3),
(180, 'test.jpg', 19),
(185, 'test.jpg', 35),
(187, 'test.jpg', 5),
(188, 'test.jpg', 23),
(192, 'test.jpg', 7),
(194, 'test.jpg', 18),
(195, 'test.jpg', 27),
(196, 'test.jpg', 26),
(197, 'test.jpg', 35),
(198, 'test.jpg', 34),
(199, 'test.jpg', 8),
(200, 'test.jpg', 11),
(201, 'test.jpg', 9),
(204, 'test-hamza_1635602269319250.1', 53),
(205, 'test-hamza_1635602269596260.1', 53),
(206, 'test-hamza_1635602269461700.1', 53),
(207, 'test-hamza_1635602269823735.1', 53),
(208, 'test-hamza_1635602269872999.1', 53),
(209, 'en-tempore-sed-saepe-sequi-modi_1635882540384902.1', 50),
(210, 'en-aut-doloremque-ut-maiores-labore_1635883025757861.1', 49),
(211, 'en-et-error-ea-sed-rerum_1635883468348580.1', 48),
(212, 'en-ullam-velit-doloremque-ab-est_1635883612679420.1', 47),
(213, 'en-quo-sint-nemo-quam_163588385799092.1', 46),
(214, 'en-minima-delectus-qui-porro_1635884316881926.1', 45),
(215, 'en-sit-sit-dolores-nesciunt_1635884423374973.1', 44),
(216, 'en-dolorem-cum-nobis-sequi-amet_1635885264347870.1', 43),
(217, 'en-sit-deserunt-non-ipsa-eaque_1635885366194935.1', 42),
(218, 'en-deleniti-quibusdam-vel-omnis_1635885607152151.1', 41),
(219, 'en-recusandae-dolorem-veniam-esse_163588593220275.1', 40),
(220, 'en-fuga-et-harum-ut-autem-a-optio_1635886107448992.1', 39),
(221, 'en-at-dicta-fugiat-odio-quam-optio_1635886510386790.1', 38),
(222, 'en-ex-quisquam-cupiditate-rerum_1635886695289698.1', 37),
(223, 'en-ex-quisquam-cupiditate-rerum_1635886695329123.1', 37),
(224, 'en-ex-quisquam-cupiditate-rerum_1635886695407817.1', 37),
(225, 'en-ex-quisquam-cupiditate-rerum_163588669511287.1', 37),
(226, 'en-qui-est-velit-quod-labore_1635886783763778.1', 36),
(227, 'en-sunt-quod-et-voluptatem_1635886910508037.1', 31),
(228, 'en-culpa-ducimus-neque-aperiam_1635886992812091.1', 30),
(229, 'en-dolorem-sapiente-quis-aut-quod-et_1635887117210373.1', 29),
(230, 'en-cum-autem-ab-qui-sed-est_1635887169681039.1', 28),
(231, 'en-cum-autem-ab-qui-sed-est_163588716928548.1', 28),
(232, 'en-cum-autem-ab-qui-sed-est_163588716919839.1', 28),
(233, 'en-cum-autem-ab-qui-sed-est_1635887169752930.1', 28),
(234, 'en-cum-autem-ab-qui-sed-est_1635887169310748.1', 28),
(235, 'en-cum-autem-ab-qui-sed-est_1635887169708730.1', 28),
(242, 'services1_163700944765007.jpeg', 60),
(243, 'services1_1637009447261888.jpeg', 60),
(244, 'services1_1637010463818262.1', 61),
(245, 'services1_1637010463436799.jpeg', 61),
(247, 'services1_1637499944547690.1', 61),
(248, 'test_1637500114553611.jpeg', 62),
(249, 'test_1637500218474827.jpeg', 62),
(250, 'test_1637500301585238.jpeg', 62),
(251, 'bluezone_1637500405161690.jpeg', 54),
(252, 'en-ex-quisquam-cupiditate-rerum_1637500667883254.jpeg', 37),
(253, 'en-et-quidem-et-asperiores_1637500742227145.jpeg', 25),
(254, 'en-cum-autem-ab-qui-sed-est_1637500807829615.jpeg', 28),
(255, 'en-cum-autem-ab-qui-sed-est_1637500807317239.jpeg', 28),
(256, 'en-qui-est-velit-quod-labore_1637502667672526.jpeg', 36),
(257, 'en-in-voluptas-quis-adipisci-eos_1637503372419292.jpeg', 33),
(258, 'openshop_1650145578794097.jpeg', 63);

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `name`, `description_ar`, `description_en`, `type`, `sort`, `created_at`, `updated_at`) VALUES
(2, 'dewlivery', 'about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'delivery', 1, '2021-11-03 04:39:58', '2021-11-03 04:39:58'),
(3, 'information', 'about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'information', 1, '2021-11-03 04:40:17', '2021-11-03 04:40:17'),
(4, 'how to use', 'about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'howToUse', 1, '2021-11-03 04:40:48', '2021-11-03 04:40:48'),
(5, 'question', 'about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'question', 1, '2021-11-03 04:41:08', '2021-11-03 04:41:08'),
(6, 'Terms and Conditions', 'id - Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple ', 'Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple Terms and Conditions app website its a very simple ', 'TermsAndConditions', 1, '2021-11-03 04:40:48', '2021-11-03 04:40:48'),
(7, 'Privacy policy', 'id_Privacy policy app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'Privacy policy app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch. about app website its a very simple app with smart ui for smart touch.', 'PrivacyPolicy', 1, '2021-11-03 04:41:08', '2021-11-03 04:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `kurlies`
--

CREATE TABLE `kurlies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kurlies`
--

INSERT INTO `kurlies` (`id`, `name_ar`, `name_en`, `value_en`, `value_ar`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 'name en id', 'name en', NULL, NULL, 60, NULL, NULL),
(7, 'hamza123', 'secoo123', 'secoo321', 'hamza312', 53, NULL, NULL),
(8, 'hasdh', 'ajsd', 'ahsdlj', 'skldfj', 53, NULL, NULL),
(9, 'asss', 'asss', NULL, NULL, 63, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `created_at`, `updated_at`, `product_id`, `user_id`) VALUES
(3, '2021-11-02 04:11:39', '2021-11-02 04:11:39', 53, 57),
(4, '2021-11-07 19:26:40', '2021-11-07 19:26:40', 31, 57),
(5, '2021-11-07 19:26:46', '2021-11-07 19:26:46', 38, 57),
(6, '2021-11-21 03:38:11', '2021-11-21 03:38:11', 50, 66);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_05_130003_create_roles_table', 1),
(6, '2021_09_08_151918_create_permissions_table', 1),
(7, '2021_09_08_175220_create_role_permission_table', 1),
(8, '2021_09_19_110655_create_categories_table', 1),
(9, '2021_09_19_110655_create_images_table', 1),
(10, '2021_09_19_110655_create_products_table', 1),
(11, '2021_09_19_110655_create_statements_table', 1),
(12, '2021_09_19_165927_create_attributes_table', 1),
(13, '2021_09_19_165928_create_options_table', 1),
(14, '2021_09_19_165929_create_option_values_table', 1),
(15, '2021_09_19_214116_create_product_category_table', 1),
(16, '2021_09_29_151342_create_product_attribute_table', 1),
(17, '2021_10_02_151328_create_ratings_table', 1),
(18, '2021_10_02_233722_create_likes_table', 1),
(19, '2021_10_05_124052_create_shipping_addresses_table', 1),
(20, '2021_10_05_124053_create_orders_table', 1),
(21, '2021_10_05_164406_create_product_order_table', 1),
(22, '2021_10_06_032830_create_admin_password_resets_table', 1),
(23, '2021_10_06_032830_create_admins_table', 1),
(24, '2021_10_06_032929_create_student_password_resets_table', 1),
(25, '2021_10_06_032929_create_students_table', 1),
(26, '2021_10_10_022917_create_countries_table', 1),
(27, '2021_10_10_022933_create_areas_table', 1),
(28, '2021_10_13_140419_create_product_student_table', 1),
(29, '2021_10_15_180421_create_infos_table', 1),
(30, '2021_10_17_141006_create_settings_table', 1),
(31, '2021_10_17_213327_create_contacts_table', 1),
(32, '2022_11_19_110705_create_foreign_keys', 1),
(33, '2021_10_21_130026_create_icons_table', 2),
(37, '2021_10_21_144115_create_sliders_table', 3),
(38, '2021_10_21_184259_create_ads_table', 3),
(40, '2021_10_24_131651_create_coupons_table', 4),
(41, '2021_10_24_222623_create_kurlies_table', 5),
(42, '2021_10_27_022211_create_profiles_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name_en`, `name_ar`, `created_at`, `updated_at`, `deleted_at`, `attribute_id`) VALUES
(1, 'sm', 'sm', '2021-10-18 11:30:38', '2021-10-18 11:30:38', NULL, 6),
(2, 'm', 'm', '2021-10-18 11:30:44', '2021-11-03 02:41:02', '2021-11-03 02:41:02', 6),
(3, 'm', 'm', '2021-10-18 11:30:45', '2021-10-18 11:30:45', NULL, 6),
(4, 'xl', 'xl', '2021-10-18 11:30:54', '2021-10-18 11:30:54', NULL, 6),
(5, 'white', 'white', '2021-10-18 11:31:04', '2021-11-03 02:40:44', NULL, 7),
(6, 'black', 'black', '2021-10-18 11:31:09', '2021-11-03 02:40:50', NULL, 7),
(7, 'blue', 'blue', '2021-10-18 11:31:18', '2021-11-03 02:40:57', NULL, 7),
(8, 'test', 'test', '2021-10-31 07:20:47', '2021-10-31 07:20:47', NULL, 8),
(9, 'Caviar Hair Treatment', 'اوبن شوب', '2021-11-14 23:33:57', '2021-11-15 20:41:37', '2021-11-15 20:41:37', 6),
(10, 'Caviar Hair Treatment', 'اوبن شوب', '2021-11-14 23:34:42', '2021-11-15 20:41:33', '2021-11-15 20:41:33', 6);

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `regular_price` decimal(8,2) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `option_values`
--

INSERT INTO `option_values` (`id`, `quantity`, `sale_price`, `regular_price`, `parent_id`, `created_at`, `updated_at`, `option_id`, `product_id`) VALUES
(66, 9000, '600.00', '800.00', 5, '2021-11-03 03:01:59', '2021-11-03 03:01:59', 1, 50),
(68, 123321, '30.00', '432.00', 0, '2021-11-03 03:34:24', '2021-11-03 03:34:24', 1, 43),
(69, 33333, '345.00', '3453.00', 0, '2021-11-03 03:36:06', '2021-11-03 03:36:06', 6, 42),
(71, 3454, '34.00', '345.00', 0, '2021-11-03 03:42:09', '2021-11-03 03:42:09', 6, 41),
(73, 12321, '123.00', '1233.00', 0, '2021-11-03 03:49:43', '2021-11-03 03:49:43', 1, 39),
(74, 12, '122.00', '123.00', 0, '2021-11-03 03:55:10', '2021-11-03 03:55:10', 1, 38),
(86, 10, '850.00', '900.00', 0, '2021-11-20 18:55:23', '2021-11-20 18:55:23', 1, 46),
(87, 0, '990.00', '1000.00', 0, '2021-11-21 21:13:25', '2021-11-22 19:41:04', 3, 54),
(88, 18, '1100.00', '1200.00', 0, '2021-11-21 21:13:25', '2021-11-21 21:13:25', 4, 54),
(89, 10, '850.00', '900.00', 0, '2021-11-21 21:13:25', '2021-11-21 21:13:25', 1, 54),
(90, 10, '850.00', '900.00', 0, '2021-11-21 21:55:19', '2021-11-21 21:55:19', 1, 53),
(91, 41, '45.00', '50.00', 0, '2021-11-21 21:55:19', '2021-11-21 21:55:19', 5, 53),
(92, 3454, '34.00', '345.00', 0, '2021-11-21 21:55:19', '2021-11-21 21:55:19', 6, 53),
(93, 100, '900.00', '1000.00', 5, '2021-11-21 22:02:52', '2021-11-21 22:02:52', 4, 33),
(94, 4, '6.00', '10.00', 6, '2022-04-17 04:46:18', '2022-04-17 04:46:18', 1, 63);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_count` int(11) NOT NULL,
  `order_price` double NOT NULL,
  `shipping_price` double NOT NULL DEFAULT 0,
  `total_price` double NOT NULL,
  `status` enum('pending','accept','reject','done','shipping') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shipping_address_id` bigint(20) UNSIGNED NOT NULL,
  `discount` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `note`, `products_count`, `order_price`, `shipping_price`, `total_price`, `status`, `deleted_at`, `created_at`, `updated_at`, `user_id`, `shipping_address_id`, `discount`) VALUES
(18, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 1364, 50, 1414, 'pending', NULL, '2021-10-17 12:13:34', '2021-10-18 12:13:34', 51, 1, NULL),
(19, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 1364, 50, 1414, 'pending', NULL, '2021-10-18 12:13:36', '2021-10-18 12:13:36', 51, 1, NULL),
(20, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 1364, 50, 1414, 'pending', NULL, '2021-10-18 12:13:37', '2021-10-18 12:13:37', 51, 1, NULL),
(21, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 1364, 50, 1414, 'pending', NULL, '2021-10-18 12:13:39', '2021-10-26 16:25:44', 51, 1, NULL),
(22, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 764, 20, 764, 'pending', NULL, '2021-10-31 07:45:02', '2021-10-31 07:45:02', NULL, 1, 20),
(23, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 764, 20, 764, 'pending', NULL, '2021-10-31 07:48:38', '2021-10-31 07:48:38', NULL, 1, 20),
(24, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 764, 20, 764, 'pending', NULL, '2021-10-31 07:49:54', '2021-10-31 07:49:54', NULL, 1, 20),
(25, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 764, 20, 764, 'pending', NULL, '2021-10-31 07:50:09', '2021-10-31 07:50:09', NULL, 1, 20),
(26, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 764, 20, 764, 'pending', NULL, '2021-10-31 07:50:24', '2021-10-31 07:50:24', NULL, 1, 20),
(27, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 764, 20, 764, 'pending', NULL, '2021-10-31 07:53:16', '2021-10-31 07:53:16', NULL, 1, 20),
(28, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-10-31 07:53:29', '2021-10-31 07:53:29', NULL, 1, 20),
(29, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-10-31 07:53:32', '2021-10-31 07:53:32', NULL, 1, 20),
(30, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-10-31 07:54:19', '2021-10-31 07:54:19', NULL, 1, 20),
(31, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-10-31 07:57:27', '2021-10-31 07:57:27', NULL, 1, 20),
(32, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-10-31 07:57:35', '2021-10-31 07:57:35', NULL, 1, 20),
(33, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-10-31 08:14:17', '2021-10-31 08:14:17', 64, 1, 20),
(34, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-10-31 08:15:08', '2021-10-31 08:15:08', 64, 1, 20),
(35, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-11-01 00:01:34', '2021-11-01 00:01:34', 64, 1, 20),
(36, NULL, 1, 50, 20, 70, 'pending', NULL, '2021-11-01 00:07:15', '2021-11-01 00:07:15', 57, 14, 0),
(37, 'hamza\nmahmoug', 2, 50, 20, 50, 'pending', NULL, '2021-11-01 01:45:04', '2021-11-01 01:45:04', 57, 14, 20),
(38, NULL, 1, 50, 20, 70, 'pending', NULL, '2021-11-01 01:48:38', '2021-11-01 01:48:38', 57, 15, 0),
(39, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 3, 764, 20, 764, 'pending', NULL, '2021-11-01 03:54:41', '2021-11-01 03:54:41', 64, 1, 20),
(40, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 5, 50, 20, 50, 'pending', NULL, '2021-11-01 04:12:54', '2021-11-01 04:12:54', 64, 1, 20),
(41, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 5, 50, 20, 50, 'pending', NULL, '2021-11-01 04:44:14', '2021-11-01 04:44:14', 64, 1, 20),
(42, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 5, 50, 20, 50, 'pending', NULL, '2021-11-01 04:45:00', '2021-11-01 04:45:00', 64, 1, 20),
(43, NULL, 1, 50, 20, 70, 'pending', NULL, '2021-11-02 03:32:46', '2021-11-02 03:32:46', 57, 14, 0),
(44, NULL, 1, 50, 20, 70, 'pending', NULL, '2021-11-02 03:37:37', '2021-11-02 03:37:37', 57, 14, 0),
(45, NULL, 1, 50, 20, 70, 'pending', NULL, '2021-11-02 03:41:33', '2021-11-02 03:41:33', 57, 20, 0),
(46, NULL, 1, 50, 20, 70, 'pending', NULL, '2021-11-02 03:44:12', '2021-11-02 03:44:12', 57, 20, 0),
(47, NULL, 1, 45, 20, 65, 'pending', NULL, '2021-11-03 06:22:47', '2021-11-03 06:22:47', NULL, 21, 0),
(48, NULL, 1, 45, 20, 65, 'pending', NULL, '2021-11-06 03:29:27', '2021-11-06 03:29:27', 57, 15, 0),
(49, NULL, 1, 45, 20, 65, 'pending', NULL, '2021-11-06 03:36:28', '2021-11-06 03:36:28', 57, 16, 0),
(50, NULL, 1, 45, 20, 65, 'pending', NULL, '2021-11-06 03:37:03', '2021-11-06 03:37:03', 57, 15, 0),
(51, NULL, 4, 50, 20, 70, 'pending', NULL, '2021-11-06 03:41:16', '2021-11-06 03:41:16', 57, 15, 0),
(52, NULL, 2, 1147, 20, 1167, 'pending', NULL, '2021-11-06 03:45:52', '2021-11-06 03:45:52', 57, 15, 0),
(53, NULL, 1, 1097, 20, 1117, 'pending', NULL, '2021-11-07 19:24:45', '2021-11-07 19:24:45', 57, 18, 0),
(54, NULL, 8, 1147, 20, 1167, 'done', NULL, '2021-11-07 19:28:19', '2021-11-08 17:07:44', 57, 18, 0),
(55, NULL, 2, 1100, 23, 1123, 'pending', NULL, '2021-11-15 19:50:20', '2021-11-15 19:50:20', NULL, 24, 0),
(56, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 3000, 20, 3020, 'pending', NULL, '2021-11-16 18:33:54', '2021-11-16 18:33:54', 64, 1, 0),
(57, NULL, 1, 992, 20, 1012, 'pending', NULL, '2021-11-19 02:12:30', '2021-11-19 02:12:30', 60, 26, 0),
(58, 'null', 1, 992, 20, 1012, 'pending', NULL, '2021-11-19 02:12:57', '2021-11-19 02:12:57', 60, 26, 0),
(59, NULL, 1, 992, 20, 1012, 'pending', NULL, '2021-11-19 02:13:03', '2021-11-19 02:13:03', 60, 26, 0),
(60, NULL, 2, 100, 23, 123, 'pending', NULL, '2021-11-21 03:39:38', '2021-11-21 03:39:38', 66, 31, 0),
(61, NULL, 2, 1785, 23, 1808, 'pending', NULL, '2021-11-22 00:14:54', '2021-11-22 00:14:54', 60, 28, 0),
(62, NULL, 1, 557, 23, 580, 'pending', NULL, '2021-11-22 01:52:16', '2021-11-22 01:52:16', NULL, 32, 0),
(63, 'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر.', 2, 3000, 20, 3020, 'pending', NULL, '2021-11-22 15:12:19', '2021-11-22 15:12:19', 64, 1, 0),
(64, '82V7+FG7', 3, 300, 23, 323, 'pending', NULL, '2021-11-22 21:03:08', '2021-11-22 21:03:08', NULL, 34, 0),
(65, '82V7+FG7', 4, 400, 23, 423, 'pending', NULL, '2021-11-22 21:04:39', '2021-11-22 21:04:39', NULL, 35, 0),
(66, NULL, 1, 990, 23, 1013, 'pending', NULL, '2021-11-22 21:29:57', '2021-11-22 21:29:57', NULL, 36, 0),
(67, NULL, 2, 1980, 23, 2003, 'pending', NULL, '2021-11-23 23:13:16', '2021-11-23 23:13:16', NULL, 37, 0),
(68, NULL, 2, 100, 23, 123, 'pending', NULL, '2021-11-23 23:13:54', '2021-11-23 23:13:54', NULL, 38, 0);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(196, 'section.index'),
(197, 'section.create'),
(198, 'section.update'),
(199, 'section.destroy'),
(200, 'section.trash'),
(201, 'section.restore'),
(202, 'section.finalDelete'),
(203, 'category.index'),
(204, 'category.create'),
(205, 'category.update'),
(206, 'category.destroy'),
(207, 'category.trash'),
(208, 'category.restore'),
(209, 'category.finalDelete'),
(210, 'product.index'),
(211, 'product.create'),
(212, 'product.update'),
(213, 'product.destroy'),
(214, 'product.trash'),
(215, 'product.restore'),
(216, 'product.finalDelete'),
(217, 'attribute.index'),
(218, 'attribute.create'),
(219, 'attribute.update'),
(220, 'attribute.show'),
(221, 'attribute.destroy'),
(222, 'attribute.trash'),
(223, 'attribute.restore'),
(224, 'attribute.finalDelete'),
(225, 'option.index'),
(226, 'option.create'),
(227, 'option.update'),
(228, 'option.destroy'),
(229, 'option.trash'),
(230, 'option.restore'),
(231, 'option.finalDelete'),
(232, 'rating.index'),
(233, 'rating.active'),
(234, 'rating.pending'),
(235, 'rating.accept'),
(236, 'rating.reject'),
(237, 'admin.index'),
(238, 'admin.create'),
(239, 'admin.update'),
(240, 'admin.destroy'),
(241, 'admin.trash'),
(242, 'admin.restore'),
(243, 'admin.finalDelete'),
(244, 'role.index'),
(245, 'role.create'),
(246, 'role.update'),
(247, 'role.destroy'),
(248, 'role.trash'),
(249, 'role.restore'),
(250, 'role.finalDelete'),
(251, 'role.permission'),
(252, 'user.index'),
(253, 'user.create'),
(254, 'user.update'),
(255, 'user.destroy'),
(256, 'user.trash'),
(257, 'user.restore'),
(258, 'user.finalDelete'),
(259, 'student.index'),
(260, 'student.create'),
(261, 'student.update'),
(262, 'student.updatePoints'),
(263, 'student.destroy'),
(264, 'student.trash'),
(265, 'student.restore'),
(266, 'student.finalDelete'),
(267, 'country.index'),
(268, 'country.create'),
(269, 'country.update'),
(270, 'country.destroy'),
(271, 'country.trash'),
(272, 'country.restore'),
(273, 'country.finalDelete'),
(274, 'area.index'),
(275, 'area.create'),
(276, 'area.update'),
(277, 'area.destroy'),
(278, 'area.trash'),
(279, 'area.restore'),
(280, 'area.finalDelete'),
(281, 'order.index'),
(282, 'order.update'),
(283, 'order.show'),
(284, 'coupon.index'),
(285, 'coupon.update'),
(286, 'coupon.show'),
(287, 'contact.index'),
(288, 'contact.destroy'),
(289, 'slider.index'),
(290, 'slider.create'),
(291, 'slider.update'),
(292, 'slider.destroy'),
(293, 'ad.index'),
(294, 'ad.create'),
(295, 'ad.update'),
(296, 'ad.destroy'),
(297, 'icon.index'),
(298, 'icon.create'),
(299, 'icon.update'),
(300, 'icon.destroy'),
(301, 'info.index'),
(302, 'info.create'),
(303, 'info.update'),
(304, 'info.destroy'),
(305, 'info.index'),
(306, 'info.create'),
(307, 'info.update'),
(308, 'info.destroy'),
(309, 'setting.index'),
(310, 'setting.update');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_brand_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_brand_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_percentage` decimal(8,2) DEFAULT NULL,
  `regular_price` double NOT NULL,
  `sale_price` double DEFAULT NULL,
  `alt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_sale` tinyint(4) DEFAULT 0,
  `sort` int(11) DEFAULT 0,
  `is_recommended` tinyint(1) DEFAULT 0,
  `has_options` tinyint(1) DEFAULT 0,
  `is_best` tinyint(1) DEFAULT 0,
  `end_sale` date DEFAULT NULL,
  `start_sale` date DEFAULT NULL,
  `ratings` int(11) NOT NULL DEFAULT 0,
  `quantity` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `likes_count` int(11) NOT NULL DEFAULT 0,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_ar`, `name_en`, `slug`, `description_ar`, `description_en`, `about_brand_ar`, `about_brand_en`, `discount_percentage`, `regular_price`, `sale_price`, `alt`, `in_sale`, `sort`, `is_recommended`, `has_options`, `is_best`, `end_sale`, `start_sale`, `ratings`, `quantity`, `created_at`, `updated_at`, `deleted_at`, `likes_count`, `img`) VALUES
(1, 'ar_Corporis eos aut sit praesentium.', 'en-Sapiente distinctio et vel.', 'en-Ipsa minus corrupti iure quis quo.', 'ar-Quaerat minima in molestiae quis ipsam amet ea. Fuga dolorem et qui. Enim qui optio illum rerum vel est qui quod.', 'en-Laudantium sunt optio et et. Odit natus ea voluptate eius voluptas est veniam. Consequuntur rerum aut sit facere. Assumenda numquam perferendis ratione blanditiis. Qui quia voluptatem quia eaque impedit.', NULL, NULL, '11.00', 1186, 1057, NULL, 0, 0, 0, 1, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:37', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '6fe5d734e3d9998f554daa6beaa75d32.png'),
(2, 'ar_Deleniti non error facere et.', 'en-Labore voluptatem earum quia.', 'en-Non maxime modi enim.', 'ar-Et tenetur ut voluptatum ullam sed deleniti. Vel eos labore laborum tempore doloremque. Laboriosam ut debitis aut voluptas et recusandae. Natus expedita vitae voluptatem est veniam.', 'en-Ut in velit aut odit. Dignissimos molestias est voluptatem aut quasi deserunt est. Omnis consequuntur sed labore voluptatibus esse atque facilis. Qui eos sit sint.', NULL, NULL, '17.00', 726, 600, NULL, 0, 0, 0, 1, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:37', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '4f5baf5032e963577a24ff8e68a57ee1.png'),
(3, 'ar_Dolore harum animi omnis commodi.', 'en-Et quo ducimus maxime.', 'en-Quis quibusdam et quibusdam.', 'ar-Ipsum voluptatem praesentium sed non eveniet modi. Repellendus reiciendis aliquam alias tempore aut eum. Pariatur aliquid soluta non eius ea architecto et.', 'en-Id quia soluta nemo culpa tenetur fugit repellendus repellat. Et deserunt dolorem voluptas. Officia ea deleniti velit. Earum accusantium aut quia aut.', NULL, NULL, '9.00', 1069, 971, NULL, 0, 0, 1, 0, 1, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:37', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '874c2f7dea66cc07b23d510a562b8fac.png'),
(4, 'ar_Eum et perspiciatis quis eos.', 'en-Ab vel necessitatibus inventore.', 'en-Iusto qui perspiciatis dolor nam.', 'ar-Atque minus voluptas dolorum explicabo. Quaerat quod debitis excepturi voluptatum incidunt culpa ut.', 'en-A eius cum rerum et officia ipsa. Deleniti velit sint minima ut nulla eos. Consequatur harum sint illum et adipisci dolorum. Et consequatur quis omnis est laudantium.', NULL, NULL, '8.00', 1150, 1060, NULL, 0, 0, 0, 0, 1, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:37', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, 'b26bb4851dd38aadfcbae5db8389bbf7.png'),
(5, 'ar_Explicabo qui quia amet ut.', 'en-Eligendi sed modi dolor.', 'en-Omnis numquam totam ab fuga hic.', 'ar-Vel incidunt quo inventore optio earum sed est officiis. Quae quaerat culpa officia repellat eaque consectetur iste. Corporis molestiae placeat delectus et perspiciatis hic est et. A aperiam quis dolor excepturi.', 'en-Temporibus asperiores sit velit excepturi nostrum. Mollitia molestiae repudiandae quisquam voluptas vitae. Rerum praesentium non et corrupti quia molestiae architecto. Cum aut nam sint.', NULL, NULL, '13.00', 807, 703, NULL, 0, 0, 1, 1, 1, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:37', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '7b105433f43e848ef9ef81dba2aed9ee.png'),
(6, 'ar_Placeat beatae sint ullam in et.', 'en-Ipsa quasi cum voluptatum aliquam.', 'en-Vitae quod sit nihil.', 'ar-Tenetur consequatur quae et. Dolores aut nam est consequatur nulla. Nisi ut est optio tempora quis vel dolorum.', 'en-Mollitia assumenda repudiandae ratione error omnis. Quaerat architecto dolor mollitia sint ad. Autem id provident ipsam et aut. Ratione vel non voluptate voluptates.', NULL, NULL, '10.00', 1293, 1161, NULL, 0, 0, 0, 1, 1, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, 'f11c2f92cb7dac83811b5561507fc6b8.png'),
(7, 'ar_Omnis iure a maiores.', 'en-Consequatur et sit expedita.', 'en-Accusantium numquam sed et minima.', 'ar-Nulla odio exercitationem ipsum quia et. Nihil dolorem assumenda nam reprehenderit unde omnis. Ad atque assumenda excepturi cumque sit amet saepe. Asperiores voluptatem sit eius dolores provident qui.', 'en-Maxime aut et quas ipsam voluptas consectetur laudantium. Cupiditate nemo ullam repellendus natus sit. Iste et non enim necessitatibus blanditiis et. Qui architecto velit dolor quis.', NULL, NULL, '14.00', 1038, 893, NULL, 0, 0, 1, 0, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '44b057e8b9040def3a2bb849c5c9c7d6.png'),
(8, 'ar_Et quo corporis et hic.', 'en-Aliquid illo ipsa laborum.', 'en-Eius aliquid fugit quasi omnis.', 'ar-Dolorem expedita harum numquam nulla recusandae quasi consequatur. Omnis asperiores sit quas ratione amet qui minus. Deleniti fugiat voluptatem laborum quod est veniam est. Ipsam aspernatur minus quasi quo et.', 'en-Et omnis laboriosam omnis velit a reiciendis. Quam ab et explicabo nihil. Saepe quia cupiditate magnam sapiente ipsa vel sint. Voluptatem ducimus nesciunt aut hic repudiandae. Deleniti corporis voluptas repudiandae numquam.', NULL, NULL, '9.00', 1462, 1330, NULL, 0, 0, 1, 0, 0, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, 'dad5f747631f7f92f1b0327692c7d174.png'),
(9, 'ar_Non ut debitis sunt illo.', 'en-Quod omnis et non.', 'en-Et error placeat enim et.', 'ar-Ut voluptatibus ut minima. Voluptates similique iure neque dolorum. Earum laborum a quia aut aliquid provident.', 'en-Omnis nihil libero dolores pariatur quia laboriosam. Dolorem voluptatibus beatae quos maiores. Sint rerum illo voluptatum quas laboriosam soluta. Temporibus eum beatae et vel sint excepturi.', NULL, NULL, '12.00', 1105, 973, NULL, 0, 0, 1, 0, 1, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, 'a162c319b05fbb2088b8b7b983df3e4c.png'),
(10, 'ar_Officia sed et magni aut.', 'en-Corporis voluptatem sed natus.', 'en-Sit qui voluptates similique.', 'ar-Temporibus dolor ex adipisci atque et ipsum. Asperiores excepturi est provident. Culpa odit earum necessitatibus sint inventore voluptas. Et sed laudantium dicta cupiditate.', 'en-Expedita consequuntur et reprehenderit quis esse est vero consequatur. Ducimus a eligendi tempora dolor qui quam alias. In voluptas et repudiandae labore quia modi eum. Vel pariatur ipsam qui eligendi dolore. Illum dolorem velit rerum ut.', NULL, NULL, '10.00', 1009, 904, NULL, 1, 0, 0, 1, 0, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '1c3f0aff329e68043a09c3961ae1715b.png'),
(11, 'ar_Aperiam saepe nemo quia deleniti.', 'en-Dolor tempora qui repellat.', 'en-Quos dolorem recusandae quo sit.', 'ar-Eveniet illo deleniti magnam error rerum tenetur ut omnis. Dolorem est voluptates officia alias nesciunt eum. Sed cum consequatur non excepturi occaecati asperiores. At molestiae accusamus accusantium ipsa.', 'en-Reiciendis alias aut saepe nemo quos nihil. Ut voluptates in ea illum quisquam quo laboriosam nihil. Rem omnis officia unde.', NULL, NULL, '10.00', 862, 780, NULL, 0, 0, 0, 1, 1, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '787bae756be1f79c996fa6febec9f68b.png'),
(12, 'ar_Sit a in nulla nihil voluptate.', 'en-Velit quia ratione et et.', 'en-Modi amet sunt magnam porro.', 'ar-Fuga accusamus cumque qui modi quia. Deleniti vitae ipsum maiores. Eligendi ad magnam cumque ut dolor.', 'en-Facere repudiandae totam quasi consequatur. Quam porro necessitatibus dicta exercitationem cupiditate. Beatae qui earum eius impedit aliquam. Officia sit blanditiis quas aut et atque.', NULL, NULL, '13.00', 1107, 960, NULL, 0, 0, 1, 1, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '637f959dca26ad50a46bfd9bb88d417a.png'),
(13, 'ar_Amet porro blanditiis ut quia.', 'en-Molestias qui qui laudantium.', 'en-Ab distinctio dolorum nam aperiam.', 'ar-Nam laboriosam molestias molestiae. Non praesentium fugit deleniti perspiciatis fugit ullam facilis.', 'en-Eos ea voluptatem qui nostrum quibusdam non. Magni id id molestiae enim eligendi omnis. Mollitia consectetur ut illum adipisci voluptate voluptates laboriosam.', NULL, NULL, '17.00', 740, 616, NULL, 0, 0, 1, 1, 0, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '304882ea6f293adfe0dd03d235b3bcb2.png'),
(14, 'ar_Sed necessitatibus ad enim fuga.', 'en-Qui rem vel ea est nihil.', 'en-Illo ad dolore autem qui.', 'ar-Hic iure repellendus reprehenderit rerum pariatur. Non et aut voluptatem et ea et. Laboriosam magni omnis id neque id nemo delectus.', 'en-Quae quas eum et ut iusto. Dicta mollitia amet omnis laborum cumque modi illo. Aperiam quia facere deserunt voluptatem consectetur aliquam ea. At quis perferendis molestias ut.', NULL, NULL, '7.00', 1184, 1101, NULL, 0, 0, 0, 1, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '30621f529bddcd0e4644be2e389d6d85.png'),
(15, 'ar_Qui aperiam dolores corporis.', 'en-Cum qui hic est nihil recusandae.', 'en-Nam nulla ad et est.', 'ar-Non minima rerum qui. Natus in dicta ut asperiores repudiandae odio saepe. Aut ipsum eum iure quidem. Laboriosam ut at rerum voluptatem quam eligendi nostrum. Possimus in aut quis eaque nisi blanditiis.', 'en-Distinctio nihil et laborum illum laboriosam dolorem dignissimos. Et vel quam vel voluptatem sequi illum. Tenetur doloribus voluptatibus dolor aut. Nihil libero officia voluptates tempore. Molestias atque ea harum voluptatem.', NULL, NULL, '7.00', 1410, 1317, NULL, 0, 0, 0, 1, 0, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '8bded4ef386c2fb6cbbbff66a8672e53.png'),
(16, 'ar_Et ipsam autem rerum sit.', 'en-Ad unde ea nam maiores ab.', 'en-Eum aut quibusdam et doloribus.', 'ar-Eveniet molestias corporis ea omnis. Et dolorem omnis ad totam. Nemo libero et voluptatem molestias rerum non esse. Maiores molestias dolores autem et quis maiores quo animi.', 'en-Nobis eum consectetur blanditiis illo quo mollitia et nobis. Eius consectetur commodi nisi et quisquam a placeat. Eos vero quia id labore autem. Voluptatem eligendi non sapiente aut est perspiciatis eaque soluta.', NULL, NULL, '16.00', 723, 604, NULL, 1, 0, 0, 0, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, 'e551542136e949599d2b48508baf9d12.png'),
(17, 'ar_Hic ad sit voluptas nemo error.', 'en-Alias mollitia et nobis itaque et.', 'en-Minima enim nulla odit eligendi.', 'ar-Maxime consectetur occaecati consequatur. Aliquam dolorem ullam velit illum placeat rerum ea. Sit tempore quo incidunt.', 'en-In exercitationem sit et qui ex. Asperiores nulla accusantium harum explicabo. Ipsum quam tempore et dolores ut.', NULL, NULL, '23.00', 634, 487, NULL, 0, 0, 1, 1, 1, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '62574673f0cff068e22b5e453c5335b3.png'),
(18, 'ar_Et quia quo qui.', 'en-Eveniet dolorem ducimus enim.', 'en-Corporis officia incidunt ullam.', 'ar-Voluptates id ut alias atque quod aliquid quod. Consequatur omnis error reprehenderit molestiae ut quae magnam. Neque minima voluptas odio ut. Et quasi aliquid modi autem.', 'en-Aut modi soluta autem quod. Eos vitae et praesentium laudantium illum. Neque ab perferendis ut assumenda. Non explicabo sequi eos sed velit.', NULL, NULL, '23.00', 532, 410, NULL, 1, 0, 1, 1, 1, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, 'eb1962e76909de27cde0c2106b798730.png'),
(19, 'ar_Quo est dolores quos tenetur.', 'en-In ex sint quis quam.', 'en-Quis culpa qui quam quaerat at.', 'ar-Culpa quia nemo soluta quisquam sit sit. Illo blanditiis vitae accusantium enim iste eum harum. Ea vitae beatae consequatur aut assumenda laboriosam possimus.', 'en-Repellendus quo non est eveniet. Impedit tenetur sunt error suscipit quo. Ratione quibusdam consequatur consequatur officia asperiores asperiores. Quas et odio recusandae provident reiciendis aperiam.', NULL, NULL, '19.00', 495, 401, NULL, 0, 0, 1, 0, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '82357b79475761fc5803982645369932.png'),
(20, 'ar_Nihil rerum quia illum dolores.', 'en-Nisi sit unde ullam reiciendis.', 'en-Ex unde dolor odit iusto a.', 'ar-Accusantium error unde quia enim. Impedit itaque adipisci deserunt. Quam reprehenderit nulla vitae consequatur quibusdam ut voluptas.', 'en-Consectetur ipsum aut quas. Praesentium recusandae ab sapiente unde. Exercitationem voluptate est sunt tenetur. Fuga et voluptas voluptatum in. Ut provident et esse. Rem consequatur minima nesciunt debitis vel rem.', NULL, NULL, '19.00', 449, 362, NULL, 0, 0, 1, 1, 0, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:38', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '9cc10fce2a50e9e781160e21977511bb.png'),
(21, 'ar_A cumque quas non.', 'en-Eaque vitae et et.', 'en-Sunt rerum nesciunt atque odit.', 'ar-Dignissimos incidunt incidunt et qui. Quaerat voluptates eum nulla dolorem deleniti eveniet. Aut harum voluptas ab nostrum. Ut totam sed optio omnis quo.', 'en-Corrupti non id quibusdam deleniti dolor velit et. Minima dolorem quis dolores veritatis officia. Eos iste quidem sed qui pariatur in perferendis.', NULL, NULL, '20.00', 718, 577, NULL, 1, 0, 0, 0, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '7187cfd917998ae78de590a3cca3258a.png'),
(22, 'ar_Quia rem omnis provident.', 'en-Suscipit fugit nihil eius est.', 'en-Reprehenderit nobis quod quam.', 'ar-Autem dolorem optio itaque rerum fuga. Numquam officiis rerum tempore sit. Sit saepe ducimus recusandae fuga officiis voluptatem id. Ea voluptatem distinctio sint labore perferendis cumque.', 'en-Dicta dolores quaerat rerum repellat. Totam aperiam quis nihil dolores voluptatem quasi quae. Sit voluptatum non maiores recusandae beatae modi unde exercitationem. Omnis culpa minima fugiat officiis dicta.', NULL, NULL, '30.00', 417, 293, NULL, 0, 0, 1, 1, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 02:59:44', '2021-11-03 02:59:44', 0, '93ec364f6a907ca253e0f348ecfe7d58.png'),
(23, 'ar_Ab non perferendis necessitatibus.', 'en-Id voluptas et et.', 'en-Voluptas non est quia reiciendis.', 'ar-Sint dicta totam facere corrupti laudantium consectetur. Voluptatibus dicta ut aut qui ipsam voluptatem quo. Ipsam illum sit tenetur et. Aut et ut vel earum officia doloribus. Eum est voluptas dolor corporis sit rerum omnis.', 'en-Sunt officiis perferendis est iusto at nisi molestiae. At ipsa qui quia voluptas.', NULL, NULL, '12.00', 675, 592, NULL, 0, 0, 0, 1, 0, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 03:56:21', '2021-11-03 03:56:21', 0, '3a791be2f6c428269450895767c60500.png'),
(24, 'ar_Ex ipsa animi doloremque aut vel.', 'en-Id ad vero assumenda.', 'en-Sed aut tempore inventore.', 'ar-Sed ea aliquid ad. Qui nostrum non et saepe quam. Debitis in nesciunt voluptatem. Laboriosam aut neque itaque. Nihil ad voluptas deleniti et maiores quia natus. Ut nulla exercitationem est deserunt.', 'en-Necessitatibus non quisquam et sit omnis eius. Aut excepturi nisi consequatur et autem et. Quia beatae accusamus eveniet magni numquam. Aperiam illum explicabo et a ut.', NULL, NULL, '13.00', 1083, 946, NULL, 0, 0, 1, 0, 1, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 03:56:21', '2021-11-03 03:56:21', 0, '0d4ff2bf0c2ca1445b6c6a0cf56b5e8f.png'),
(25, 'ar_Maxime officia a cum harum.', 'en-Tenetur quo enim laboriosam.', 'en-et-quidem-et-asperiores', 'ar-Distinctio in aut fugit اللاحقة quia facere. Quaerat pariatur dolor ut. Recusandae doloribus sed suscipit qui soluta enim. يعتبر هذا المنتج شبه مؤكد على أنه سائل قابل لإعادة الشحن. غير شريعة الذنب.', 'en-Quo perferendis اللاحقة quibusdam sed ut dolor. ماوريس ليست سوى وآخرون. Sequi cupiditate is quia ut eos.', NULL, NULL, '15.70', 917, 773, '', 0, 0, 1, 0, 1, '2021-12-30', '2021-10-18', 0, 68, '2021-10-18 11:23:39', '2021-12-18 19:46:03', '2021-12-18 19:46:03', 0, 'en-et-quidem-et-asperiores.jpeg'),
(26, 'ar_A aspernatur quia et tempore eius.', 'en-Error ad libero doloribus natus.', 'en-A aperiam debitis ea quo sed.', 'ar-Qui provident sit ipsa quia qui. Temporibus ab atque enim quasi. Atque ipsa numquam rerum at optio voluptas. Commodi aut adipisci et adipisci.', 'en-Consectetur minima consequuntur et est ratione provident quibusdam. Quaerat exercitationem ducimus nostrum iusto. Similique sed perspiciatis quidem accusantium esse debitis ab. Aliquid illum facere aut delectus.', NULL, NULL, '13.00', 1080, 939, NULL, 1, 0, 1, 1, 1, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 03:56:21', '2021-11-03 03:56:21', 0, '203d36f4037ee34c5aa7a5459e4491fb.png'),
(27, 'ar_Voluptatibus earum deleniti et.', 'en-Nemo voluptatibus fugit delectus.', 'en-Quos esse sed aut illum qui dicta.', 'ar-Sit est delectus eos illo dignissimos qui corporis. Doloribus voluptatem voluptatem sint similique similique labore commodi natus.', 'en-Assumenda ullam aut est praesentium. Quia quos animi velit quo. Eveniet pariatur autem totam perferendis illum error.', NULL, NULL, '19.00', 781, 633, NULL, 1, 0, 0, 1, 1, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 03:56:21', '2021-11-03 03:56:21', 0, 'ef3157f3c9fc131c5d6b92969e5db32c.png'),
(28, 'ar_Aperiam nam est quae porro.', 'en-Eum illum ipsam qui veniam.', 'en-cum-autem-ab-qui-sed-est', 'ar-Omnis odit omnis eveniet incidunt nam. In dolores voluptates in ratione. Et nemo ut vel itaque. Odit autem architecto fugiat. Dolorem sed quasi error commodi et.', 'en-Nostrum ullam quia rerum vel. Nihil dolores eum distinctio quibusdam recusandae. Tempora quia aliquam aut non dicta soluta ut. Et repellat placeat atque explicabo consequuntur veritatis.', NULL, NULL, '24.60', 557, 420, '', 0, 0, 1, 0, 1, '2021-12-30', '2021-10-18', 0, 99, '2021-10-18 11:23:39', '2021-12-18 19:46:08', '2021-12-18 19:46:08', 0, 'en-cum-autem-ab-qui-sed-est.jpeg'),
(29, 'ar_Quo dolorem mollitia quaerat non.', 'en-Laudantium cum quae voluptas odit.', 'en-dolorem-sapiente-quis-aut-quod-et', 'ar-Ea nobis rem distinctio dolor qui. Deleniti ullam repellendus placeat aut quaerat. Dolor voluptas eum ducimus accusantium officiis eaque facere. Iure optio omnis quis omnis dignissimos. Animi est nam corrupti corrupti quos repudiandae voluptas.', 'en-Repellendus voluptate eveniet nostrum. Quo eum vitae sint aliquam qui nostrum. Pariatur facere molestiae est dicta. Ut labore necessitatibus et quod molestias. Perferendis repudiandae asperiores distinctio. Inventore quaerat veniam ut quidem.', NULL, NULL, '7.00', 1342, 1245, '', 0, 0, 1, 0, 1, '2021-11-23', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-12-18 19:46:05', '2021-12-18 19:46:05', 0, 'en-dolorem-sapiente-quis-aut-quod-et.png'),
(30, 'ar_Debitis ut quasi et.', 'en-Ex in ut rerum sunt.', 'en-culpa-ducimus-neque-aperiam', 'ar-Maxime et animi quos repellendus nobis maxime animi. Voluptas et nihil rerum. Hic illum nobis voluptas enim. Vitae illum voluptatum et officiis molestiae pariatur.', 'en-Numquam labore molestias ut nisi tempore. Saepe sit dolorem perspiciatis et quibusdam ut. Reprehenderit non sed veniam. Eligendi qui eos consequuntur est eaque possimus. Provident sit dolor at sint qui repellat quisquam nobis.', NULL, NULL, '14.00', 1069, 921, '', 0, 0, 1, 0, 1, '2021-11-24', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-12-18 19:45:01', '2021-12-18 19:45:01', 0, 'en-culpa-ducimus-neque-aperiam.png'),
(31, 'ar_Hic ea placeat qui.', 'en-Occaecati et et ea velit id.', 'en-sunt-quod-et-voluptatem', 'ar-Libero nobis numquam doloribus dicta voluptate. Quo dolorem molestiae voluptatibus consequatur vel officiis. Dicta sunt et voluptatem aspernatur modi omnis expedita.', 'en-Aut veritatis sunt atque optio doloremque. Inventore dolor veniam in quis facilis nemo sed. Eligendi harum qui quos ad aspernatur ipsam.', NULL, NULL, '8.00', 1188, 1097, '', 1, 0, 1, 0, 1, '2021-11-10', '2021-10-18', 0, 94, '2021-10-18 11:23:39', '2021-12-18 19:44:59', '2021-12-18 19:44:59', 1, 'en-sunt-quod-et-voluptatem.png'),
(32, 'ar_Quia eos minima neque repellat.', 'en-Beatae quia velit eum ut.', 'en-Quam at non aspernatur error est.', 'ar-Voluptates a provident exercitationem quae voluptatem. Deserunt blanditiis ad quod maxime. Illum distinctio impedit vitae expedita. Sed expedita sunt et reiciendis.', 'en-Laborum ea eos praesentium omnis iure voluptatibus. Omnis aspernatur asperiores modi et. Natus rerum est sint.', NULL, NULL, '11.00', 794, 710, NULL, 0, 0, 1, 0, 0, '2021-10-18', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 02:58:40', '2021-11-03 02:58:40', 0, '1f4aeebd2a674860d7f5340f75711595.png'),
(33, 'ar_Error aut quia quidem iste aut.', 'en-Ut dolorem dolorem id modi et.', 'en-in-voluptas-quis-adipisci-eos', 'ar-Magni saepe nesciunt sit voluptatem et velit odio. Reiciendis minus reprehenderit omnis quas dolorem cumque voluptas. Rerum odio esse consequatur et officia unde doloremque. Quam est porro quia rem.', 'en-Earum aspernatur delectus dolorem ut facilis facere. Est qui ducimus rem omnis et. Et reprehenderit omnis quia ut dignissimos ipsum.', NULL, NULL, '17.23', 714, 591, '', 0, 0, 0, 0, 0, '2022-01-20', '2021-10-18', 0, 10, '2021-10-18 11:23:39', '2021-12-18 19:44:56', '2021-12-18 19:44:56', 0, 'en-in-voluptas-quis-adipisci-eos.jpeg'),
(34, 'ar_Possimus minima et quis quia.', 'en-Culpa quisquam sit non expedita.', 'en-Velit quas tenetur ipsam quia.', 'ar-Iusto cupiditate quisquam enim nesciunt. Rerum incidunt nemo voluptatum. Ex sed accusamus iste eos et. Suscipit saepe ut eaque repellendus autem. Ea dolorem sapiente eius aut dolorum occaecati.', 'en-Occaecati quia illo ex corporis aperiam voluptas. Maxime sed et facere eveniet sit et omnis cumque. Nisi est perspiciatis vitae nihil.', NULL, NULL, '11.00', 1042, 930, NULL, 0, 0, 1, 0, 1, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 02:58:49', '2021-11-03 02:58:49', 0, '186b4c599f12b31d497686d19b929213.png'),
(35, 'ar_Nihil ipsam non rerum dolore.', 'en-Fuga est expedita et cupiditate.', 'en-Velit quia sint et eum.', 'ar-Sit non voluptatem eius ea reprehenderit. Quasi natus architecto recusandae et voluptas. Autem veritatis magnam facere sed voluptatem reprehenderit culpa. Itaque in consequatur qui labore voluptatem.', 'en-Qui consequatur magni atque dolores itaque. Et ducimus cumque tempore qui consequuntur excepturi. Laboriosam ratione aliquid minima.', NULL, NULL, '9.00', 877, 795, NULL, 1, 0, 0, 1, 1, '2021-10-19', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-11-03 02:58:49', '2021-11-03 02:58:49', 0, 'c27b92bd8afcaf2f7e43fd8b6cff27df.png'),
(36, 'ar_Rerum vitae sequi nobis ad.', 'en-Quibusdam sint vitae iure.', 'en-qui-est-velit-quod-labore', 'ar-Ea tempore qui commodi quos eos magni quis praesentium. Omnis beatae laborum minima tenetur sunt aut sit. Doloribus magni harum facilis qui ab totam. Qui in consequuntur atque necessitatibus.', 'en-Maxime rerum aliquid consequatur debitis in. Qui velit dolores suscipit. Minima suscipit saepe quo cumque. Est impedit autem veniam harum omnis.', NULL, NULL, '16.98', 589, 489, '', 1, 0, 1, 0, 1, '2021-12-09', '2021-10-18', 0, 100, '2021-10-18 11:23:39', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-qui-est-velit-quod-labore.jpeg'),
(37, 'ar_Ut quis delectus dolores.', 'en-Delectus qui dolorem nisi aut et.', 'en-ex-quisquam-cupiditate-rerum', 'ar-Culpa voluptate perspiciatis eligendi eos perspiciatis nisi. Id qui ullam temporibus et provident quam qui.', 'en-Vel quam totam doloribus ad quas quisquam. Impedit odio labore odio assumenda libero qui numquam reiciendis.', NULL, NULL, '21.69', 673, 527, '', 0, 0, 1, 0, 1, '2021-11-21', '2021-10-18', 0, 98, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-ex-quisquam-cupiditate-rerum.jpeg'),
(38, 'ar_Est est numquam quam eaque.', 'en-Possimus voluptas placeat illo ad.', 'en-at-dicta-fugiat-odio-quam-optio', 'ar-Animi voluptatum maxime quisquam. Occaecati esse debitis illo. Commodi ad ut est quo. Eum et et illum dolores quos non.', 'en-Enim laudantium et excepturi sit Persiciatis voluptate. Odit fugiat corporis ea accusantium quos. وما يترتب على ذلك من وقوع حادث. Nostrum culpa sed is deserunt. Sed aut id voluptatem deleniti nobis. Ea vero accusantium vel.', NULL, NULL, '9.27', 1391, 1262, '', 0, 0, 1, 1, 1, '2021-11-30', '2021-10-18', 0, 98, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 1, 'en-at-dicta-fugiat-odio-quam-optio.png'),
(39, 'ar_Et iste illum quis tenetur ut.', 'en-Alias tempora modi itaque fugiat.', 'en-fuga-et-harum-ut-autem-a-optio', 'en-Animi exercitationem ipsam accusamus dignissimos. Numquam id repellendus officia iusto ex id. Sit est error ducimus soluta. Reprehenderit fugit debitis reprehenderit.fd sd ar-Et inventore praesentium velit iusto iure. Et dignissimos quod culpa pariatur. Repellat voluptatem possimus sapiente vel. Nesciunt dolor qui vel excepturi. en-Animi exercitationem ipsam accusamus dignissimos. Numquam id repellendus officia iusto ex id. Sit est error ducimus soluta. Reprehenderit fugit debitis reprehenderit.fd sd ar-Et inventore praesentium velit iusto iure. Et dignissimos quod culpa pariatur. Repellat voluptatem possimus sapiente vel. Nesciunt dolor qui vel excepturi.', 'en-Animi exercitationem ipsam accusamus dignissimos. Numquam id repellendus officia iusto ex id. Sit est error ducimus soluta. Reprehenderit fugit debitis reprehenderit.fd sd ar-Et inventore praesentium velit iusto iure. Et dignissimos quod culpa pariatur. Repellat voluptatem possimus sapiente vel. Nesciunt dolor qui vel excepturi. en-Animi exercitationem ipsam accusamus dignissimos. Numquam id repellendus officia iusto ex id. Sit est error ducimus soluta. Reprehenderit fugit debitis reprehenderit.fd sd ar-Et inventore praesentium velit iusto iure. Et dignissimos quod culpa pariatur. Repellat voluptatem possimus sapiente vel. Nesciunt dolor qui vel excepturi.', '<p>en-Animi exercitationem ipsam accusamus dignissimos. Numquam id repellendus officia iusto ex id. Sit est error ducimus soluta. Reprehenderit fugit debitis reprehenderit.fd sd ar-Et inventore praesentium velit iusto iure. Et dignissimos quod culpa pariatur. Repellat voluptatem possimus sapiente vel. Nesciunt dolor qui vel excepturi.</p>\r\n<p>en-Animi exercitationem ipsam accusamus dignissimos. Numquam id repellendus officia iusto ex id. Sit est error ducimus soluta. Reprehenderit fugit debitis reprehenderit.fd sd ar-Et inventore praesentium velit iusto iure. Et dignissimos quod culpa pariatur. Repellat voluptatem possimus sapiente vel. Nesciunt dolor qui vel excepturi.</p>', '<p>en-Animi exercitationem ipsam accusamus dignissimos. Numquam id repellendus officia iusto ex id. Sit est error ducimus soluta. Reprehenderit fugit debitis reprehenderit.fd sd ar-Et inventore praesentium velit iusto iure. Et dignissimos quod culpa pariatur. Repellat voluptatem possimus sapiente vel. Nesciunt dolor qui vel excepturi.</p>\r\n<p>en-Animi exercitationem ipsam accusamus dignissimos. Numquam id repellendus officia iusto ex id. Sit est error ducimus soluta. Reprehenderit fugit debitis reprehenderit.fd sd ar-Et inventore praesentium velit iusto iure. Et dignissimos quod culpa pariatur. Repellat voluptatem possimus sapiente vel. Nesciunt dolor qui vel excepturi.</p>', '16.00', 626, 524, '', 1, 0, 1, 1, 1, '2021-11-09', '2021-10-18', 0, 96, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-fuga-et-harum-ut-autem-a-optio.png'),
(40, 'ar_Rem similique non rerum sequi.', 'en-Amet odio laborum impedit.', 'en-recusandae-dolorem-veniam-esse', 'en-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.\r\nen-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.', 'en-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.\r\nen-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.\r\nen-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.', '<p>en-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.</p>\r\n<p>en-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.</p>', '<p>en-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.</p>\r\n<p>en-Quia ipsa maxime aliquid saepe sint vel assumenda ut. Reiciendis ad est voluptatibus impedit. Nihil omnis temporibus odit aliquam. Sed dolorem nam officiis velit facere.</p>', '36.00', 413, 264, '', 1, 0, 1, 0, 1, '2021-11-12', '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-recusandae-dolorem-veniam-esse.png'),
(41, 'ar_Nostrum quia ex aut sed voluptas.', 'en-Beatae vitae consequatur ut at.', 'en-deleniti-quibusdam-vel-omnis', 'ar-Neque voluptates delectus inventore. Eum dignissimos distinctio tempore aperiam ipsum. Ut quos temporibus nulla ab laudantium et non. Optio nihil nemo asperiores et dolores consequatur.', 'en-Sed et quo et iusto. Rerum occaecati fugit quo. Et blanditiis odit odio dolorum ipsam illum reprehenderit rerum. Et blanditiis et maxime soluta quas commodi dolorem. A suscipit laboriosam quia ex. Velit facilis quo placeat quia.', '<p>en-Sed et quo et iusto. Rerum occaecati fugit quo. Et blanditiis odit odio dolorum ipsam illum reprehenderit rerum. Et blanditiis et maxime soluta quas commodi dolorem. A suscipit laboriosam quia ex. Velit facilis quo placeat quia.</p>', '<p>en-Sed et quo et iusto. Rerum occaecati fugit quo. Et blanditiis odit odio dolorum ipsam illum reprehenderit rerum. Et blanditiis et maxime soluta quas commodi dolorem. A suscipit laboriosam quia ex. Velit facilis quo placeat quia.</p>', '19.00', 519, 418, '', 0, 0, 1, 0, 1, '2021-11-19', '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-deleniti-quibusdam-vel-omnis.png'),
(42, 'ar_Ut id eum est sit.', 'en-Sunt illo molestiae vitae.', 'en-sit-deserunt-non-ipsa-eaque', 'ar-Adipisci rerum blanditiis rem. Harum aspernatur pariatur facere. Necessitatibus facilis aut voluptas minima maxime vel adipisci.', 'en-Consequatur earum qui mollitia ea sunt deleniti. Dolor quisquam tempore laborum. Id eaque et corrupti consequatur amet. Ut eligendi ea quos eveniet ullam officiis aliquid.', NULL, NULL, '16.00', 856, 717, '', 0, 0, 1, 1, 1, NULL, '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-sit-deserunt-non-ipsa-eaque.png'),
(43, 'ar_Aut ut sed soluta ex earum rerum.', 'en-Tenetur debitis ut maiores.', 'en-dolorem-cum-nobis-sequi-amet', 'ar-Quo inventore autem distinctio nostrum maiores quas. Ea iusto neque voluptates omnis vitae laboriosam inventore deleniti. Beatae et aut non iure rerum sit. Facilis quasi eligendi hic vitae laboriosam eaque non sint.', 'en-Possimus consequatur perferendis in at quidem autem. Occaecati vero commodi quas accusantium. Dicta pariatur consequatur dolorem deleniti cumque aut voluptatibus.', '<p>ar-Quo inventore autem distinctio nostrum maiores quas. Ea iusto neque voluptates omnis vitae laboriosam inventore deleniti. Beatae et aut non iure rerum sit. Facilis quasi eligendi hic vitae laboriosam eaque non sint.</p>', '<p>ar-Quo inventore autem distinctio nostrum maiores quas. Ea iusto neque voluptates omnis vitae laboriosam inventore deleniti. Beatae et aut non iure rerum sit. Facilis quasi eligendi hic vitae laboriosam eaque non sint.</p>', '10.00', 1451, 1302, '', 1, 0, 1, 0, 1, '2021-11-11', '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-dolorem-cum-nobis-sequi-amet.png'),
(44, 'ar_Officia accusantium rerum sed.', 'en-Sit maxime sit neque.', 'en-sit-sit-dolores-nesciunt', 'ar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.\r\nar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.\r\nar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.', 'ar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.\r\nar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.\r\nar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.', '<p>ar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.</p>\r\n<p>ar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.</p>\r\n<p>ar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.</p>', '<p>ar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.</p>\r\n<p>ar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.</p>\r\n<p>ar-Assumenda est animi hic aut. Sint perspiciatis consequatur molestiae omnis iste sint. Cupiditate cumque ut est minus vero similique.</p>', '23.00', 503, 388, '', 0, 0, 1, 0, 1, NULL, '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-sit-sit-dolores-nesciunt.png'),
(45, 'ar_Cum corporis quo aut voluptatem.', 'en-Ratione ea expedita dicta totam.', 'en-minima-delectus-qui-porro', 'ar-Cumque corporis ex aliquid sit ab cum blanditiis eum. Voluptas voluptatem enim asperiores temporibus laboriosam iste odit temporibus. Officiis at tenetur repudiandae earum. ar-Cumque corporis ex aliquid sit ab cum blanditiis eum. Voluptas voluptatem enim asperiores temporibus laboriosam iste odit temporibus. Officiis at tenetur repudiandae earum.', 'ar-Cumque corporis ex aliquid sit ab cum blanditiis eum. Voluptas voluptatem enim asperiores temporibus laboriosam iste odit temporibus. Officiis at tenetur repudiandae earum. ar-Cumque corporis ex aliquid sit ab cum blanditiis eum. Voluptas voluptatem enim asperiores temporibus laboriosam iste odit temporibus. Officiis at tenetur repudiandae earum.', NULL, NULL, '14.00', 839, 724, '', 0, 0, 1, 0, 1, NULL, '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-minima-delectus-qui-porro.png'),
(46, 'ar_Dolorum nam officiis illo.', 'en-Nulla sed quidem consequatur.', 'en-quo-sint-nemo-quam', 'ar-Voluptas rem magnam ut fugiat. Quia et labore iure. Exercitationem et blanditiis sunt incidunt possimus et. Consequatur adipisci sed ipsam. Harum natus unde aut hic modi. ar-Voluptas rem magnam ut fugiat. Quia et labore iure. Exercitationem et blanditiis sunt incidunt possimus et. Consequatur adipisci sed ipsam. Harum natus unde aut hic modi.', 'en-Velit facere consectetur ab velit sequi. Nihil sunt explicabo quo molestiae saepe omnis laudantium. Voluptas adipisci vel nulla aspernatur vero sit in. en-Velit facere consectetur ab velit sequi. Nihil sunt explicabo quo molestiae saepe omnis laudantium. Voluptas adipisci vel nulla aspernatur vero sit in. en-Velit facere consectetur ab velit sequi. Nihil sunt explicabo quo molestiae saepe omnis laudantium. Voluptas adipisci vel nulla aspernatur vero sit in.', '<p>ar-Voluptas rem magnam ut fugiat. Quia et labore iure. Exercitationem et blanditiis sunt incidunt possimus et. Consequatur adipisci sed ipsam. Harum natus unde aut hic modi.</p>\r\n<p>ar-Voluptas rem magnam ut fugiat. Quia et labore iure. Exercitationem et blanditiis sunt incidunt possimus et. Consequatur adipisci sed ipsam. Harum natus unde aut hic modi.</p>', '<p>ar-Voluptas rem magnam ut fugiat. Quia et labore iure. Exercitationem et blanditiis sunt incidunt possimus et. Consequatur adipisci sed ipsam. Harum natus unde aut hic modi.</p>\r\n<p>ar-Voluptas rem magnam ut fugiat. Quia et labore iure. Exercitationem et blanditiis sunt incidunt possimus et. Consequatur adipisci sed ipsam. Harum natus unde aut hic modi.</p>', '9.97', 1174, 1057, '', 0, 0, 1, 1, 1, '2021-11-24', '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-quo-sint-nemo-quam.png'),
(47, 'ar_Dolorem nisi distinctio qui quasi.', 'en-Modi repellat quia excepturi ab.', 'en-ullam-velit-doloremque-ab-est', 'ar-Qui et id delectus soluta dolores nihil. Illo in laboriosam accusantium aut aspernatur autem dolor. Officia soluta dolores repellendus qui impedit officia quae. Eaque aut sapiente dolorem.\r\nar-Qui et id delectus soluta dolores nihil. Illo in laboriosam accusantium aut aspernatur autem dolor. Officia soluta dolores repellendus qui impedit officia quae. Eaque aut sapiente dolorem.', 'en-Est omnis ipsum eaque ut fugiat voluptas corporis et. Praesentium quidem et dignissimos magni quos. Illum id explicabo voluptatem reiciendis. Ab optio corrupti omnis eligendi aut dicta natus. Ipsum dolorum enim quia harum fugit.\r\nen-Est omnis ipsum eaque ut fugiat voluptas corporis et. Praesentium quidem et dignissimos magni quos. Illum id explicabo voluptatem reiciendis. Ab optio corrupti omnis eligendi aut dicta natus. Ipsum dolorum enim quia harum fugit.', NULL, NULL, '13.00', 752, 652, '', 0, 0, 1, 0, 1, NULL, '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-ullam-velit-doloremque-ab-est.png'),
(48, 'ar_Quis quia earum maxime totam.', 'en-Nisi totam ratione est sit est.', 'en-et-error-ea-sed-rerum', 'ar-Eaque porro voluptas odit ea unde voluptate. Temporibus quae qui velit. Ullam consequatur omnis natus quia sed. Commodi sint suscipit eveniet atque.', 'en-Aperiam occaecati sit distinctio perspiciatis necessitatibus. Vitae quia dolores aut non molestias. Laborum nulla debitis delectus repudiandae commodi nisi magnam.', NULL, NULL, '11.00', 1112, 992, '', 1, 0, 1, 0, 1, '2021-11-19', '2021-10-18', 0, 96, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-et-error-ea-sed-rerum.png'),
(49, 'ar_Consequatur ipsam nemo enim omnis.', 'en-Ullam et ut et eum culpa eum.', 'en-aut-doloremque-ut-maiores-labore', 'ar-Esse dignissimos reiciendis cupiditate inventore ipsum consequatur. Et sed rem ut explicabo voluptate minus sed voluptates. Voluptatem similique explicabo ea omnis culpa facere dolore. Consectetur ipsa quia quaerat atque. ar-Esse dignissimos reiciendis cupiditate inventore ipsum consequatur. Et sed rem ut explicabo voluptate minus sed voluptates. Voluptatem similique explicabo ea omnis culpa facere dolore. Consectetur ipsa quia quaerat atque.', 'ar-Esse dignissimos reiciendis cupiditate inventore ipsum consequatur. Et sed rem ut explicabo voluptate minus sed voluptates. Voluptatem similique explicabo ea omnis culpa facere dolore. Consectetur ipsa quia quaerat atque. ar-Esse dignissimos reiciendis cupiditate inventore ipsum consequatur. Et sed rem ut explicabo voluptate minus sed voluptates. Voluptatem similique explicabo ea omnis culpa facere dolore. Consectetur ipsa quia quaerat atque.', '<p>ar-Esse dignissimos reiciendis cupiditate inventore ipsum consequatur. Et sed rem ut explicabo voluptate minus sed voluptates. Voluptatem similique explicabo ea omnis culpa facere dolore. Consectetur ipsa quia quaerat atque.</p>\r\n<p>ar-Esse dignissimos reiciendis cupiditate inventore ipsum consequatur. Et sed rem ut explicabo voluptate minus sed voluptates. Voluptatem similique explicabo ea omnis culpa facere dolore. Consectetur ipsa quia quaerat atque.</p>', '<p>ar-Esse dignissimos reiciendis cupiditate inventore ipsum consequatur. Et sed rem ut explicabo voluptate minus sed voluptates. Voluptatem similique explicabo ea omnis culpa facere dolore. Consectetur ipsa quia quaerat atque.</p>\r\n<p>ar-Esse dignissimos reiciendis cupiditate inventore ipsum consequatur. Et sed rem ut explicabo voluptate minus sed voluptates. Voluptatem similique explicabo ea omnis culpa facere dolore. Consectetur ipsa quia quaerat atque.</p>', '12.00', 1155, 1011, '', 1, 0, 1, 0, 1, '2021-12-20', '2021-10-18', 0, 100, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'en-aut-doloremque-ut-maiores-labore.png'),
(50, 'ar_Doloribus et fugiat omnis.', 'en-Qui sed voluptatem blanditiis.', 'en-tempore-sed-saepe-sequi-modi', 'ar-Ea vitae voluptatibus itaque. Non quibusdam amet quisquam dolores atque vero. Nostrum sed adipisci occaecati labore rerum voluptatem. Inventore quasi placeat et id occaecati et culpa asperiores. ar-Ea vitae voluptatibus itaque. Non quibusdam amet quisquam dolores atque vero. Nostrum sed adipisci occaecati labore rerum voluptatem. Inventore quasi placeat et id occaecati et culpa asperiores.', 'ar-Ea vitae voluptatibus itaque. Non quibusdam amet quisquam dolores atque vero. Nostrum sed adipisci occaecati labore rerum voluptatem. Inventore quasi placeat et id occaecati et culpa asperiores. ar-Ea vitae voluptatibus itaque. Non quibusdam amet quisquam dolores atque vero. Nostrum sed adipisci occaecati labore rerum voluptatem. Inventore quasi placeat et id occaecati et culpa asperiores.', '<p>ar-Ea vitae voluptatibus itaque. Non quibusdam amet quisquam dolores atque vero. Nostrum sed adipisci occaecati labore rerum voluptatem. Inventore quasi placeat et id occaecati et culpa asperiores.</p>\r\n<p>ar-Ea vitae voluptatibus itaque. Non quibusdam amet quisquam dolores atque vero. Nostrum sed adipisci occaecati labore rerum voluptatem. Inventore quasi placeat et id occaecati et culpa asperiores.</p>', '<p>ar-Ea vitae voluptatibus itaque. Non quibusdam amet quisquam dolores atque vero. Nostrum sed adipisci occaecati labore rerum voluptatem. Inventore quasi placeat et id occaecati et culpa asperiores.</p>\r\n<p>ar-Ea vitae voluptatibus itaque. Non quibusdam amet quisquam dolores atque vero. Nostrum sed adipisci occaecati labore rerum voluptatem. Inventore quasi placeat et id occaecati et culpa asperiores.</p>', '14.00', 766, 661, '', 1, 0, 1, 1, 1, '2021-11-16', '2021-10-18', 0, 98, '2021-10-18 11:23:40', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 1, 'en-tempore-sed-saepe-sequi-modi.png'),
(53, 'test hamza', 'test hamza', 'test-hamza', 'asdfsadfdsdf', 'asdfsdfdfdfas', '<p>asdfasdfasdf</p>', '<p>asdfasdfasdf</p>', '80.00', 50, 10, '', 0, 0, 1, 1, 1, '2022-01-30', '2021-10-30', 0, 4999959, '2021-10-30 20:57:49', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 1, 'test-hamza.png'),
(54, 'MOHAMMED ELAHFEE', 'MOHAMMED ELAHFEE', 'bluezone', 'bluezoneوعلى الرغم من تباطؤ الاستهلاك بشكل عام في الصين، س', 'وعلى الرغم من تباطؤ الاستهلاك بشكل عام في الصين، س', '<p>وعلى الرغم من تباطؤ الاستهلاك بشكل عام في الصين، س</p>', '<p>وعلى الرغم من تباطؤ الاستهلاك بشكل عام في الصين، س</p>', '1.00', 1000, 990, '', 1, 0, 1, 1, 1, '2021-11-23', '2021-11-14', 0, 95, '2021-11-14 23:46:41', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'bluezone.jpeg'),
(60, 'Services1', 'test 1', 'services1', 'dfrferfr', 'referfr', '<p>frefrefr</p>', '<p>ferferfre</p>', '10.00', 1000, 900, '', 0, 0, 0, 0, 1, NULL, '2021-11-15', 0, 5, '2021-11-16 04:50:47', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'services1.jpeg'),
(61, 'Services1', 'Services1', 'services1', 'about product description in Indonesian &nbsp; &nbsp;', 'about product description in English', '<p>about brand description in Indonesian</p>', '<p>about brand description in English</p>', '3.23', 1550, 1500, '', 1, 0, 1, 0, 1, '2021-11-30', '2021-11-15', 0, 1, '2021-11-16 05:07:41', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'services1.png'),
(62, 'test@bluezone', 'test@bluezone', 'test', 'هل تبحث عن موقع مبدعة؟ إذا كانت الإجابة بنعم ، فإن الطريق للحصول على فرصة الحصول على فرصة الحصول على فرصة الحصول على فرصة الحصول على العرض الترويجي لشركة التسويق الإلكترونية والحلول التجارية', 'هل تبحث عن موقع مبدعة؟ إذا كانت الإجابة بنعم ، فإن الطريق للحصول على فرصة الحصول على فرصة الحصول على فرصة الحصول على فرصة الحصول على العرض الترويجي لشركة التسويق الإلكترونية والحلول التجارية', '<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">هل تبحث عن موقع مبدعة؟ </span><span style=\"vertical-align: inherit;\">إذا كانت الإجابة بنعم ، فإن الطريق للحصول على فرصة الحصول على فرصة الحصول على فرصة الحصول على فرصة الحصول على العرض الترويجي لشركة التسويق الإلكترونية والحلول التجارية</span></span></p>', '<p><span style=\"vertical-align: inherit;\"><span style=\"vertical-align: inherit;\">هل تبحث عن موقع مبدعة؟ </span><span style=\"vertical-align: inherit;\">إذا كانت الإجابة بنعم ، فإن الطريق للحصول على فرصة الحصول على فرصة الحصول على فرصة الحصول على فرصة الحصول على العرض الترويجي لشركة التسويق الإلكترونية والحلول التجارية</span></span></p>', '0.00', 100, 0, '', 0, 0, 1, 0, 1, NULL, '2021-11-18', 0, 993, '2021-11-18 18:59:37', '2021-12-18 19:44:43', '2021-12-18 19:44:43', 0, 'test.jpeg'),
(63, 'فستان من الورق', 'فستان من الورق', 'openshop', 'فستان من الورق&nbsp;', 'فستان من الورق&nbsp;', '<p>فستان من الورق&nbsp;</p>', '<p>فستان من الورق&nbsp;</p>', '10.00', 10, 9, '', 1, 0, 1, 1, 1, NULL, '2022-04-16', 0, 100, '2022-04-17 04:46:18', '2022-04-17 04:46:18', NULL, 0, 'openshop.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `product_attribute`
--

CREATE TABLE `product_attribute` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attribute`
--

INSERT INTO `product_attribute` (`id`, `product_id`, `attribute_id`, `created_at`, `updated_at`) VALUES
(201, 53, 6, NULL, NULL),
(202, 53, 7, NULL, NULL),
(203, 50, 6, NULL, NULL),
(204, 46, 6, NULL, NULL),
(205, 43, 6, NULL, NULL),
(206, 42, 7, NULL, NULL),
(207, 41, 7, NULL, NULL),
(208, 39, 6, NULL, NULL),
(209, 38, 6, NULL, NULL),
(210, 54, 6, NULL, NULL),
(211, 33, 6, NULL, NULL),
(212, 63, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 9, NULL, NULL),
(3, 1, 7, NULL, NULL),
(4, 2, 8, NULL, NULL),
(5, 3, 9, NULL, NULL),
(6, 4, 14, NULL, NULL),
(7, 5, 7, NULL, NULL),
(8, 6, 7, NULL, NULL),
(9, 7, 10, NULL, NULL),
(10, 8, 13, NULL, NULL),
(11, 9, 12, NULL, NULL),
(12, 10, 7, NULL, NULL),
(13, 11, 8, NULL, NULL),
(14, 12, 11, NULL, NULL),
(15, 13, 14, NULL, NULL),
(16, 14, 13, NULL, NULL),
(17, 15, 14, NULL, NULL),
(18, 16, 13, NULL, NULL),
(19, 17, 9, NULL, NULL),
(20, 18, 8, NULL, NULL),
(21, 19, 7, NULL, NULL),
(22, 20, 14, NULL, NULL),
(23, 21, 9, NULL, NULL),
(24, 22, 11, NULL, NULL),
(25, 23, 12, NULL, NULL),
(26, 24, 10, NULL, NULL),
(27, 25, 14, NULL, NULL),
(28, 26, 14, NULL, NULL),
(29, 27, 7, NULL, NULL),
(30, 28, 9, NULL, NULL),
(31, 29, 7, NULL, NULL),
(32, 30, 10, NULL, NULL),
(33, 31, 8, NULL, NULL),
(34, 32, 10, NULL, NULL),
(35, 33, 14, NULL, NULL),
(36, 34, 11, NULL, NULL),
(37, 35, 9, NULL, NULL),
(38, 36, 7, NULL, NULL),
(39, 37, 11, NULL, NULL),
(40, 38, 9, NULL, NULL),
(41, 39, 9, NULL, NULL),
(42, 40, 10, NULL, NULL),
(43, 41, 12, NULL, NULL),
(44, 42, 12, NULL, NULL),
(45, 43, 9, NULL, NULL),
(46, 44, 7, NULL, NULL),
(47, 45, 9, NULL, NULL),
(48, 46, 12, NULL, NULL),
(49, 47, 11, NULL, NULL),
(50, 48, 10, NULL, NULL),
(51, 49, 12, NULL, NULL),
(53, 1, 11, NULL, NULL),
(54, 2, 14, NULL, NULL),
(55, 3, 7, NULL, NULL),
(56, 4, 13, NULL, NULL),
(57, 5, 7, NULL, NULL),
(58, 6, 13, NULL, NULL),
(59, 7, 11, NULL, NULL),
(60, 8, 7, NULL, NULL),
(61, 9, 11, NULL, NULL),
(62, 10, 9, NULL, NULL),
(63, 11, 11, NULL, NULL),
(64, 12, 6, NULL, NULL),
(65, 13, 7, NULL, NULL),
(66, 14, 14, NULL, NULL),
(67, 15, 5, NULL, NULL),
(68, 16, 6, NULL, NULL),
(69, 17, 6, NULL, NULL),
(70, 18, 13, NULL, NULL),
(71, 19, 14, NULL, NULL),
(72, 20, 11, NULL, NULL),
(73, 21, 12, NULL, NULL),
(74, 22, 5, NULL, NULL),
(75, 23, 8, NULL, NULL),
(76, 24, 11, NULL, NULL),
(77, 25, 13, NULL, NULL),
(78, 26, 14, NULL, NULL),
(79, 27, 6, NULL, NULL),
(80, 28, 10, NULL, NULL),
(81, 29, 7, NULL, NULL),
(82, 30, 7, NULL, NULL),
(83, 31, 7, NULL, NULL),
(84, 32, 11, NULL, NULL),
(85, 33, 5, NULL, NULL),
(86, 34, 5, NULL, NULL),
(87, 35, 6, NULL, NULL),
(88, 36, 13, NULL, NULL),
(89, 37, 10, NULL, NULL),
(90, 38, 14, NULL, NULL),
(91, 39, 7, NULL, NULL),
(92, 40, 9, NULL, NULL),
(93, 41, 9, NULL, NULL),
(94, 42, 10, NULL, NULL),
(95, 43, 14, NULL, NULL),
(96, 44, 8, NULL, NULL),
(97, 45, 7, NULL, NULL),
(98, 46, 8, NULL, NULL),
(99, 47, 12, NULL, NULL),
(100, 48, 7, NULL, NULL),
(101, 49, 7, NULL, NULL),
(102, 50, 5, NULL, NULL),
(104, 53, 6, NULL, NULL),
(105, 53, 14, NULL, NULL),
(106, 53, 16, NULL, NULL),
(107, 50, 6, NULL, NULL),
(108, 50, 13, NULL, NULL),
(109, 50, 11, NULL, NULL),
(110, 49, 5, NULL, NULL),
(111, 49, 6, NULL, NULL),
(112, 49, 17, NULL, NULL),
(113, 49, 18, NULL, NULL),
(114, 49, 13, NULL, NULL),
(115, 49, 14, NULL, NULL),
(116, 49, 11, NULL, NULL),
(117, 49, 8, NULL, NULL),
(118, 49, 9, NULL, NULL),
(119, 49, 10, NULL, NULL),
(120, 49, 16, NULL, NULL),
(121, 53, 5, NULL, NULL),
(122, 53, 7, NULL, NULL),
(123, 53, 17, NULL, NULL),
(124, 53, 18, NULL, NULL),
(125, 53, 13, NULL, NULL),
(126, 53, 11, NULL, NULL),
(127, 53, 12, NULL, NULL),
(128, 53, 8, NULL, NULL),
(129, 53, 9, NULL, NULL),
(130, 53, 10, NULL, NULL),
(131, 50, 7, NULL, NULL),
(132, 50, 17, NULL, NULL),
(133, 50, 18, NULL, NULL),
(134, 50, 14, NULL, NULL),
(135, 50, 12, NULL, NULL),
(136, 50, 8, NULL, NULL),
(137, 50, 9, NULL, NULL),
(138, 50, 10, NULL, NULL),
(139, 50, 16, NULL, NULL),
(140, 48, 5, NULL, NULL),
(141, 48, 6, NULL, NULL),
(142, 48, 17, NULL, NULL),
(143, 48, 18, NULL, NULL),
(144, 48, 13, NULL, NULL),
(145, 48, 14, NULL, NULL),
(146, 48, 11, NULL, NULL),
(147, 48, 12, NULL, NULL),
(148, 48, 8, NULL, NULL),
(149, 48, 9, NULL, NULL),
(150, 48, 16, NULL, NULL),
(151, 47, 5, NULL, NULL),
(152, 47, 6, NULL, NULL),
(153, 47, 7, NULL, NULL),
(154, 47, 17, NULL, NULL),
(155, 47, 18, NULL, NULL),
(156, 47, 13, NULL, NULL),
(157, 47, 14, NULL, NULL),
(158, 47, 8, NULL, NULL),
(159, 47, 9, NULL, NULL),
(160, 47, 10, NULL, NULL),
(161, 47, 16, NULL, NULL),
(162, 46, 5, NULL, NULL),
(163, 46, 6, NULL, NULL),
(164, 46, 7, NULL, NULL),
(165, 46, 17, NULL, NULL),
(166, 46, 18, NULL, NULL),
(167, 46, 13, NULL, NULL),
(168, 46, 14, NULL, NULL),
(169, 46, 11, NULL, NULL),
(170, 46, 9, NULL, NULL),
(171, 46, 10, NULL, NULL),
(172, 46, 16, NULL, NULL),
(173, 45, 5, NULL, NULL),
(174, 45, 6, NULL, NULL),
(175, 45, 17, NULL, NULL),
(176, 45, 18, NULL, NULL),
(177, 45, 13, NULL, NULL),
(178, 45, 14, NULL, NULL),
(179, 45, 11, NULL, NULL),
(180, 45, 12, NULL, NULL),
(181, 45, 8, NULL, NULL),
(182, 45, 10, NULL, NULL),
(183, 45, 16, NULL, NULL),
(184, 44, 5, NULL, NULL),
(185, 44, 6, NULL, NULL),
(186, 44, 17, NULL, NULL),
(187, 44, 18, NULL, NULL),
(188, 44, 13, NULL, NULL),
(189, 44, 14, NULL, NULL),
(190, 44, 11, NULL, NULL),
(191, 44, 12, NULL, NULL),
(192, 44, 9, NULL, NULL),
(193, 44, 10, NULL, NULL),
(194, 44, 16, NULL, NULL),
(195, 43, 5, NULL, NULL),
(196, 43, 6, NULL, NULL),
(197, 43, 7, NULL, NULL),
(198, 43, 17, NULL, NULL),
(199, 43, 18, NULL, NULL),
(200, 43, 13, NULL, NULL),
(201, 43, 11, NULL, NULL),
(202, 43, 12, NULL, NULL),
(203, 43, 8, NULL, NULL),
(204, 43, 10, NULL, NULL),
(205, 43, 16, NULL, NULL),
(206, 42, 5, NULL, NULL),
(207, 42, 6, NULL, NULL),
(208, 42, 7, NULL, NULL),
(209, 42, 17, NULL, NULL),
(210, 42, 18, NULL, NULL),
(211, 42, 13, NULL, NULL),
(212, 42, 14, NULL, NULL),
(213, 42, 11, NULL, NULL),
(214, 42, 8, NULL, NULL),
(215, 42, 9, NULL, NULL),
(216, 42, 16, NULL, NULL),
(217, 41, 5, NULL, NULL),
(218, 41, 6, NULL, NULL),
(219, 41, 7, NULL, NULL),
(220, 41, 17, NULL, NULL),
(221, 41, 18, NULL, NULL),
(222, 41, 13, NULL, NULL),
(223, 41, 14, NULL, NULL),
(224, 41, 11, NULL, NULL),
(225, 41, 8, NULL, NULL),
(226, 41, 10, NULL, NULL),
(227, 41, 16, NULL, NULL),
(228, 40, 5, NULL, NULL),
(229, 40, 6, NULL, NULL),
(230, 40, 7, NULL, NULL),
(231, 40, 17, NULL, NULL),
(232, 40, 18, NULL, NULL),
(233, 40, 13, NULL, NULL),
(234, 40, 14, NULL, NULL),
(235, 40, 11, NULL, NULL),
(236, 40, 12, NULL, NULL),
(237, 40, 8, NULL, NULL),
(238, 40, 16, NULL, NULL),
(239, 39, 5, NULL, NULL),
(240, 39, 6, NULL, NULL),
(241, 39, 17, NULL, NULL),
(242, 39, 18, NULL, NULL),
(243, 39, 13, NULL, NULL),
(244, 39, 14, NULL, NULL),
(245, 39, 11, NULL, NULL),
(246, 39, 12, NULL, NULL),
(247, 39, 8, NULL, NULL),
(248, 39, 10, NULL, NULL),
(249, 39, 16, NULL, NULL),
(250, 38, 5, NULL, NULL),
(251, 38, 6, NULL, NULL),
(252, 38, 7, NULL, NULL),
(253, 38, 17, NULL, NULL),
(254, 38, 18, NULL, NULL),
(255, 38, 13, NULL, NULL),
(256, 38, 11, NULL, NULL),
(257, 38, 12, NULL, NULL),
(258, 38, 8, NULL, NULL),
(259, 38, 10, NULL, NULL),
(260, 38, 16, NULL, NULL),
(261, 37, 5, NULL, NULL),
(262, 37, 6, NULL, NULL),
(263, 37, 7, NULL, NULL),
(264, 37, 17, NULL, NULL),
(265, 37, 18, NULL, NULL),
(266, 37, 13, NULL, NULL),
(267, 37, 14, NULL, NULL),
(268, 37, 12, NULL, NULL),
(269, 37, 8, NULL, NULL),
(270, 37, 9, NULL, NULL),
(271, 37, 16, NULL, NULL),
(272, 36, 5, NULL, NULL),
(273, 36, 6, NULL, NULL),
(274, 36, 17, NULL, NULL),
(275, 36, 18, NULL, NULL),
(276, 36, 14, NULL, NULL),
(277, 36, 11, NULL, NULL),
(278, 36, 12, NULL, NULL),
(279, 36, 8, NULL, NULL),
(280, 36, 9, NULL, NULL),
(281, 36, 10, NULL, NULL),
(282, 36, 16, NULL, NULL),
(283, 31, 5, NULL, NULL),
(284, 31, 6, NULL, NULL),
(285, 31, 17, NULL, NULL),
(286, 31, 18, NULL, NULL),
(287, 31, 13, NULL, NULL),
(288, 31, 14, NULL, NULL),
(289, 31, 11, NULL, NULL),
(290, 31, 12, NULL, NULL),
(291, 31, 9, NULL, NULL),
(292, 31, 10, NULL, NULL),
(293, 31, 16, NULL, NULL),
(294, 30, 5, NULL, NULL),
(295, 30, 6, NULL, NULL),
(296, 30, 17, NULL, NULL),
(297, 30, 18, NULL, NULL),
(298, 30, 13, NULL, NULL),
(299, 30, 14, NULL, NULL),
(300, 30, 11, NULL, NULL),
(301, 30, 12, NULL, NULL),
(302, 30, 8, NULL, NULL),
(303, 30, 9, NULL, NULL),
(304, 30, 16, NULL, NULL),
(305, 29, 5, NULL, NULL),
(306, 29, 6, NULL, NULL),
(307, 29, 17, NULL, NULL),
(308, 29, 18, NULL, NULL),
(309, 29, 13, NULL, NULL),
(310, 29, 14, NULL, NULL),
(311, 29, 11, NULL, NULL),
(312, 29, 12, NULL, NULL),
(313, 29, 8, NULL, NULL),
(314, 29, 9, NULL, NULL),
(315, 29, 10, NULL, NULL),
(316, 29, 16, NULL, NULL),
(317, 28, 5, NULL, NULL),
(318, 28, 6, NULL, NULL),
(319, 28, 7, NULL, NULL),
(320, 28, 17, NULL, NULL),
(321, 28, 18, NULL, NULL),
(322, 28, 13, NULL, NULL),
(323, 28, 14, NULL, NULL),
(324, 28, 11, NULL, NULL),
(325, 28, 12, NULL, NULL),
(326, 28, 8, NULL, NULL),
(327, 28, 16, NULL, NULL),
(328, 54, 5, NULL, NULL),
(329, 54, 6, NULL, NULL),
(330, 54, 7, NULL, NULL),
(331, 54, 17, NULL, NULL),
(332, 54, 18, NULL, NULL),
(333, 54, 13, NULL, NULL),
(334, 54, 14, NULL, NULL),
(335, 54, 11, NULL, NULL),
(336, 54, 12, NULL, NULL),
(337, 54, 8, NULL, NULL),
(338, 54, 9, NULL, NULL),
(339, 54, 10, NULL, NULL),
(340, 54, 16, NULL, NULL),
(347, 60, 14, NULL, NULL),
(348, 60, 12, NULL, NULL),
(349, 61, 7, NULL, NULL),
(350, 61, 17, NULL, NULL),
(351, 61, 13, NULL, NULL),
(352, 62, 7, NULL, NULL),
(353, 63, 5, NULL, NULL),
(354, 63, 6, NULL, NULL),
(355, 63, 13, NULL, NULL),
(356, 63, 11, NULL, NULL),
(357, 63, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_order`
--

CREATE TABLE `product_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(520) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `sale_price` double NOT NULL,
  `regular_price` double NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attributes`)),
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `end_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_order`
--

INSERT INTO `product_order` (`id`, `product_id`, `order_id`, `product_name`, `quantity`, `sale_price`, `regular_price`, `attributes`, `student_id`, `points`, `created_at`, `updated_at`, `end_price`) VALUES
(6, 25, 18, 'ar_Maxime officia a cum harum. | en-Tenetur quo enim laboriosam.', 2, 773, 917, '[]', 2, 232, '2021-10-16 12:13:34', '2021-10-18 12:13:34', 773),
(7, 33, 18, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-19 12:13:34', '2021-10-18 12:13:34', 591),
(8, 25, 19, 'ar_Maxime officia a cum harum. | en-Tenetur quo enim laboriosam.', 2, 773, 917, '[]', 2, 232, '2021-10-18 12:13:36', '2021-10-18 12:13:36', 773),
(9, 33, 19, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-18 12:13:36', '2021-10-18 12:13:36', 591),
(10, 25, 20, 'ar_Maxime officia a cum harum. | en-Tenetur quo enim laboriosam.', 2, 773, 917, '[]', 2, 232, '2021-10-18 12:13:37', '2021-10-18 12:13:37', 773),
(11, 33, 20, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-18 12:13:37', '2021-10-18 12:13:37', 591),
(12, 25, 21, 'ar_Maxime officia a cum harum. | en-Tenetur quo enim laboriosam.', 2, 773, 917, '[]', 2, 232, '2021-10-18 12:13:39', '2021-10-18 12:13:39', 773),
(13, 33, 21, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-23 12:13:39', '2021-10-18 12:13:39', 591),
(15, 33, 36456694, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-24 21:11:34', '2021-10-24 21:11:34', 591),
(16, 25, 27536831, 'ar_Maxime officia a cum harum. | en-Tenetur quo enim laboriosam.', 2, 773, 917, '[]', 2, 232, '2021-10-30 23:07:47', '2021-10-30 23:07:47', 773),
(17, 33, 27536831, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-30 23:07:47', '2021-10-30 23:07:47', 591),
(18, 53, 25033172, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":6,\"name_en\":\"black\",\"name_ar\":\"\\u0627\\u0633\\u0648\\u062f\",\"created_at\":\"2021-10-18T04:31:09.000000Z\",\"updated_at\":\"2021-10-18T04:31:52.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-10-31 07:34:25', '2021-10-31 07:34:25', 50),
(19, 33, 27625478, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-31 07:38:55', '2021-10-31 07:38:55', 591),
(20, 33, 19158531, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-31 07:39:29', '2021-10-31 07:39:29', 591),
(21, 33, 11583604, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-31 07:39:47', '2021-10-31 07:39:47', 591),
(22, 33, 34460527, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-31 07:40:15', '2021-10-31 07:40:15', 591),
(23, 33, 18882323, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-31 07:40:41', '2021-10-31 07:40:41', 591),
(24, 33, 47046671, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 3, 591, 714, '[]', 25, 266, '2021-10-31 07:41:08', '2021-10-31 07:41:08', 591),
(25, 33, 58993218, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:41:31', '2021-10-31 07:41:31', 591),
(26, 33, 57161827, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:41:44', '2021-10-31 07:41:44', 591),
(27, 33, 7200490, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:42:05', '2021-10-31 07:42:05', 591),
(28, 33, 20614018, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:42:13', '2021-10-31 07:42:13', 591),
(29, 33, 51436100, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:42:23', '2021-10-31 07:42:23', 591),
(30, 33, 88135240, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:43:00', '2021-10-31 07:43:00', 591),
(31, 33, 62000608, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:44:45', '2021-10-31 07:44:45', 591),
(32, 33, 22, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:45:02', '2021-10-31 07:45:02', 591),
(33, 53, 22, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-10-31 07:45:02', '2021-10-31 07:45:02', 50),
(34, 33, 7021092, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:46:22', '2021-10-31 07:46:22', 591),
(35, 33, 43016195, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:46:35', '2021-10-31 07:46:35', 591),
(36, 33, 53099750, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:47:03', '2021-10-31 07:47:03', 591),
(37, 33, 2895804, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:47:57', '2021-10-31 07:47:57', 591),
(38, 33, 52359692, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:48:27', '2021-10-31 07:48:27', 591),
(39, 33, 23, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:48:38', '2021-10-31 07:48:38', 591),
(40, 53, 23, 'test hamza | test hamza', 2, 0, 50, '[]', NULL, 15, '2021-10-31 07:48:38', '2021-10-31 07:48:38', 50),
(41, 33, 24, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:49:54', '2021-10-31 07:49:54', 591),
(42, 53, 24, 'test hamza | test hamza', 2, 0, 50, '[]', NULL, 15, '2021-10-31 07:49:54', '2021-10-31 07:49:54', 50),
(43, 33, 25, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:50:09', '2021-10-31 07:50:09', 591),
(44, 53, 25, 'test hamza | test hamza', 2, 0, 50, '[]', NULL, 15, '2021-10-31 07:50:09', '2021-10-31 07:50:09', 50),
(45, 33, 26, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:50:24', '2021-10-31 07:50:24', 591),
(46, 53, 26, 'test hamza | test hamza', 2, 0, 50, '[]', NULL, 15, '2021-10-31 07:50:24', '2021-10-31 07:50:24', 50),
(47, 33, 27, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:53:16', '2021-10-31 07:53:16', 591),
(48, 53, 27, 'test hamza | test hamza', 2, 0, 50, '[]', NULL, 15, '2021-10-31 07:53:16', '2021-10-31 07:53:16', 50),
(49, 33, 28, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:53:29', '2021-10-31 07:53:29', 591),
(50, 53, 28, 'test hamza | test hamza', 2, 0, 50, '[]', NULL, 15, '2021-10-31 07:53:29', '2021-10-31 07:53:29', 50),
(51, 33, 29, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:53:32', '2021-10-31 07:53:32', 591),
(52, 53, 29, 'test hamza | test hamza', 2, 0, 50, '[]', NULL, 15, '2021-10-31 07:53:32', '2021-10-31 07:53:32', 50),
(53, 33, 30, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:54:19', '2021-10-31 07:54:19', 591),
(54, 53, 30, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-10-31 07:54:19', '2021-10-31 07:54:19', 50),
(55, 33, 31, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:57:27', '2021-10-31 07:57:27', 591),
(56, 53, 31, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-10-31 07:57:27', '2021-10-31 07:57:27', 50),
(57, 33, 32, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 07:57:35', '2021-10-31 07:57:35', 591),
(58, 53, 32, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-10-31 07:57:35', '2021-10-31 07:57:35', 50),
(59, 33, 33, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 08:14:17', '2021-10-31 08:14:17', 591),
(60, 53, 33, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-10-31 08:14:17', '2021-10-31 08:14:17', 50),
(61, 33, 34, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-10-31 08:15:08', '2021-10-31 08:15:08', 591),
(62, 53, 34, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-10-31 08:15:08', '2021-10-31 08:15:08', 50),
(63, 33, 35, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-11-01 00:01:34', '2021-11-01 00:01:34', 591),
(64, 53, 35, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-11-01 00:01:34', '2021-11-01 00:01:34', 50),
(65, 53, 36, 'test hamza | test hamza', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":5,\"name_en\":\"white\",\"name_ar\":\"\\u0627\\u0628\\u0636\",\"created_at\":\"2021-10-18T04:31:04.000000Z\",\"updated_at\":\"2021-10-18T04:31:46.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 8, '2021-11-01 00:07:14', '2021-11-01 00:07:15', 50),
(66, 53, 37, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":5,\"name_en\":\"white\",\"name_ar\":\"\\u0627\\u0628\\u0636\",\"created_at\":\"2021-10-18T04:31:04.000000Z\",\"updated_at\":\"2021-10-18T04:31:46.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-11-01 01:45:04', '2021-11-01 01:45:04', 50),
(67, 53, 38, 'test hamza | test hamza', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":5,\"name_en\":\"white\",\"name_ar\":\"\\u0627\\u0628\\u0636\",\"created_at\":\"2021-10-18T04:31:04.000000Z\",\"updated_at\":\"2021-10-18T04:31:46.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 8, '2021-11-01 01:48:38', '2021-11-01 01:48:38', 50),
(68, 33, 39, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-11-01 03:54:41', '2021-11-01 03:54:41', 591),
(69, 53, 39, 'test hamza | test hamza', 2, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 15, '2021-11-01 03:54:41', '2021-11-01 03:54:41', 50),
(70, 53, 40, 'test hamza | test hamza', 5, 0, 50, '[{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 38, '2021-11-01 04:12:54', '2021-11-01 04:12:54', 50),
(71, 53, 41, 'test hamza | test hamza', 5, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 38, '2021-11-01 04:44:13', '2021-11-01 04:44:15', 50),
(72, 53, 42, 'test hamza | test hamza', 5, 0, 50, '[{\"id\":2,\"name_en\":\"m\",\"name_ar\":\"m\",\"created_at\":\"2021-10-18T04:30:44.000000Z\",\"updated_at\":\"2021-10-18T04:30:44.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 38, '2021-11-01 04:45:00', '2021-11-01 04:45:00', 50),
(73, 53, 43, 'test hamza | test hamza', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":5,\"name_en\":\"white\",\"name_ar\":\"\\u0627\\u0628\\u0636\",\"created_at\":\"2021-10-18T04:31:04.000000Z\",\"updated_at\":\"2021-10-18T04:31:46.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 8, '2021-11-02 03:32:46', '2021-11-02 03:32:46', 50),
(74, 53, 44, 'test hamza | test hamza', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":5,\"name_en\":\"white\",\"name_ar\":\"\\u0627\\u0628\\u0636\",\"created_at\":\"2021-10-18T04:31:04.000000Z\",\"updated_at\":\"2021-10-18T04:31:46.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 8, '2021-11-02 03:37:37', '2021-11-02 03:37:37', 50),
(75, 53, 45, 'test hamza | test hamza', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":5,\"name_en\":\"white\",\"name_ar\":\"\\u0627\\u0628\\u0636\",\"created_at\":\"2021-10-18T04:31:04.000000Z\",\"updated_at\":\"2021-10-18T04:31:46.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 8, '2021-11-02 03:41:33', '2021-11-02 03:41:33', 50),
(76, 53, 46, 'test hamza | test hamza', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0627\\u0633\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}},{\"id\":5,\"name_en\":\"white\",\"name_ar\":\"\\u0627\\u0628\\u0636\",\"created_at\":\"2021-10-18T04:31:04.000000Z\",\"updated_at\":\"2021-10-18T04:31:46.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"\\u0627\\u0644\\u0644\\u0648\\u0646\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":null}}]', NULL, 8, '2021-11-02 03:44:12', '2021-11-02 03:44:12', 50),
(77, 33, 5508178, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-11-03 02:02:12', '2021-11-03 02:02:12', 591),
(78, 39, 47, 'ar_Et iste illum quis tenetur ut. | en-Alias tempora modi itaque fugiat.', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}}]', NULL, 8, '2021-11-03 06:22:47', '2021-11-03 06:22:47', 50),
(79, 39, 48, 'ar_Et iste illum quis tenetur ut. | en-Alias tempora modi itaque fugiat.', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}}]', NULL, 8, '2021-11-06 03:29:27', '2021-11-06 03:29:27', 50),
(80, 39, 49, 'ar_Et iste illum quis tenetur ut. | en-Alias tempora modi itaque fugiat.', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}}]', NULL, 8, '2021-11-06 03:36:28', '2021-11-06 03:36:28', 50),
(81, 38, 50, 'ar_Est est numquam quam eaque. | en-Possimus voluptas placeat illo ad.', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}}]', NULL, 8, '2021-11-06 03:37:03', '2021-11-06 03:37:03', 50),
(82, 53, 51, 'test hamza | test hamza', 4, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}},{\"id\":6,\"name_en\":\"black\",\"name_ar\":\"black\",\"created_at\":\"2021-10-18T04:31:09.000000Z\",\"updated_at\":\"2021-11-02T19:40:50.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"color\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:24.000000Z\"}}]', NULL, 30, '2021-11-06 03:41:16', '2021-11-06 03:41:16', 50),
(83, 31, 52, 'ar_Hic ea placeat qui. | en-Occaecati et et ea velit id.', 1, 1097, 1188, '[]', NULL, 165, '2021-11-06 03:45:51', '2021-11-06 03:45:52', 1097),
(84, 53, 52, 'test hamza | test hamza', 1, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}},{\"id\":6,\"name_en\":\"black\",\"name_ar\":\"black\",\"created_at\":\"2021-10-18T04:31:09.000000Z\",\"updated_at\":\"2021-11-02T19:40:50.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"color\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:24.000000Z\"}}]', NULL, 8, '2021-11-06 03:45:52', '2021-11-06 03:45:52', 50),
(85, 31, 53, 'ar_Hic ea placeat qui. | en-Occaecati et et ea velit id.', 1, 1097, 1188, '[]', NULL, 165, '2021-11-07 19:24:45', '2021-11-07 19:24:45', 1097),
(86, 31, 54, 'ar_Hic ea placeat qui. | en-Occaecati et et ea velit id.', 2, 1097, 1188, '[]', NULL, 329, '2021-11-07 19:28:19', '2021-11-07 19:28:19', 1097),
(87, 53, 54, 'test hamza | test hamza', 6, 0, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}},{\"id\":5,\"name_en\":\"white\",\"name_ar\":\"white\",\"created_at\":\"2021-10-18T04:31:04.000000Z\",\"updated_at\":\"2021-11-02T19:40:44.000000Z\",\"deleted_at\":null,\"attribute_id\":7,\"attribute\":{\"id\":7,\"name_en\":\"color\",\"name_ar\":\"color\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:24.000000Z\"}}]', NULL, 45, '2021-11-07 19:28:19', '2021-11-07 19:28:19', 50),
(88, 54, 55, 'MOHAMMED ELAHFEE | MOHAMMED ELAHFEE', 2, 0, 1200, '[{\"id\":4,\"name_en\":\"xl\",\"name_ar\":\"xl\",\"created_at\":\"2021-10-18T04:30:54.000000Z\",\"updated_at\":\"2021-10-18T04:30:54.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}}]', NULL, 360, '2021-11-15 19:50:20', '2021-11-15 19:50:20', 1200),
(89, 33, 15939300, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-11-16 05:20:02', '2021-11-16 05:20:02', 591),
(90, 33, 60907586, 'ar_Error aut quia quidem iste aut. | en-Ut dolorem dolorem id modi et.', 1, 591, 714, '[]', 25, 89, '2021-11-16 17:50:40', '2021-11-16 17:50:40', 591),
(91, 61, 56, 'Services1 | Services1', 2, 1500, 1550, '[]', NULL, 450, '2021-11-16 18:33:54', '2021-11-16 18:33:54', 1500),
(92, 48, 57, 'ar_Quis quia earum maxime totam. | en-Nisi totam ratione est sit est.', 1, 992, 1112, '[]', NULL, 149, '2021-11-19 02:12:30', '2021-11-19 02:12:30', 992),
(93, 48, 58, 'ar_Quis quia earum maxime totam. | en-Nisi totam ratione est sit est.', 1, 992, 1112, '[]', NULL, 149, '2021-11-19 02:12:57', '2021-11-19 02:12:57', 992),
(94, 48, 59, 'ar_Quis quia earum maxime totam. | en-Nisi totam ratione est sit est.', 1, 992, 1112, '[]', NULL, 149, '2021-11-19 02:13:03', '2021-11-19 02:13:03', 992),
(95, 50, 60, 'ar_Doloribus et fugiat omnis. | en-Qui sed voluptatem blanditiis.', 2, 90, 50, '[{\"id\":1,\"name_en\":\"sm\",\"name_ar\":\"sm\",\"created_at\":\"2021-10-18T04:30:38.000000Z\",\"updated_at\":\"2021-10-18T04:30:38.000000Z\",\"deleted_at\":null,\"attribute_id\":6,\"attribute\":{\"id\":6,\"name_en\":\"size\",\"name_ar\":\"size\",\"frontend_type\":\"select\",\"is_required\":1,\"sort\":0,\"deleted_at\":null,\"created_at\":null,\"updated_at\":\"2021-11-02T19:39:29.000000Z\"}}]', NULL, 27, '2021-11-21 03:39:38', '2021-11-21 03:39:38', 90),
(96, 37, 61, 'ar_Ut quis delectus dolores. | en-Delectus qui dolorem nisi aut et.', 1, 527, 673, '[]', NULL, 79, '2021-11-22 00:14:54', '2021-11-22 00:14:54', 527),
(97, 48, 61, 'ar_Quis quia earum maxime totam. | en-Nisi totam ratione est sit est.', 1, 992, 1112, '[]', NULL, 149, '2021-11-22 00:14:54', '2021-11-22 00:14:54', 992),
(98, 28, 62, 'ar_Aperiam nam est quae porro. | en-Eum illum ipsam qui veniam.', 1, 420, 557, '[]', NULL, 63, '2021-11-22 01:52:16', '2021-11-22 01:52:16', 420),
(99, 61, 63, 'Services1 | Services1', 2, 1500, 1550, '[]', NULL, 450, '2021-11-22 15:12:19', '2021-11-22 15:12:19', 1500),
(100, 62, 64, 'test@bluezone | test@bluezone', 3, 0, 100, '[]', NULL, 45, '2021-11-22 21:03:08', '2021-11-22 21:03:08', 100),
(101, 62, 65, 'test@bluezone | test@bluezone', 4, 0, 100, '[]', NULL, 60, '2021-11-22 21:04:39', '2021-11-22 21:04:39', 100),
(102, 54, 66, 'MOHAMMED ELAHFEE | MOHAMMED ELAHFEE', 1, 990, 1000, '[]', NULL, 149, '2021-11-22 21:29:57', '2021-11-22 21:29:57', 990),
(103, 54, 67, 'MOHAMMED ELAHFEE | MOHAMMED ELAHFEE', 2, 990, 1000, '[]', NULL, 297, '2021-11-23 23:13:16', '2021-11-23 23:13:16', 990),
(104, 53, 68, 'test hamza | test hamza', 2, 10, 50, '[]', 13, 3, '2021-11-23 23:13:54', '2021-11-23 23:13:54', 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_student`
--

CREATE TABLE `product_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_student`
--

INSERT INTO `product_student` (`id`, `product_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 25, 2, NULL, NULL),
(22, 53, 15, NULL, NULL),
(23, 50, 15, NULL, NULL),
(24, 48, 15, NULL, NULL),
(25, 49, 15, NULL, NULL),
(26, 47, 15, NULL, NULL),
(27, 42, 15, NULL, NULL),
(28, 38, 15, NULL, NULL),
(29, 37, 15, NULL, NULL),
(30, 46, 15, NULL, NULL),
(31, 45, 15, NULL, NULL),
(32, 44, 15, NULL, NULL),
(33, 43, 15, NULL, NULL),
(34, 41, 15, NULL, NULL),
(35, 40, 15, NULL, NULL),
(36, 39, 15, NULL, NULL),
(37, 36, 15, NULL, NULL),
(38, 31, 15, NULL, NULL),
(39, 30, 15, NULL, NULL),
(40, 29, 15, NULL, NULL),
(41, 28, 15, NULL, NULL),
(42, 53, 13, NULL, NULL),
(43, 50, 13, NULL, NULL),
(44, 49, 13, NULL, NULL),
(45, 48, 13, NULL, NULL),
(46, 47, 13, NULL, NULL),
(47, 42, 13, NULL, NULL),
(48, 38, 13, NULL, NULL),
(49, 37, 13, NULL, NULL),
(50, 46, 13, NULL, NULL),
(51, 45, 13, NULL, NULL),
(52, 44, 13, NULL, NULL),
(53, 43, 13, NULL, NULL),
(54, 41, 13, NULL, NULL),
(55, 40, 13, NULL, NULL),
(56, 36, 13, NULL, NULL),
(57, 31, 13, NULL, NULL),
(58, 39, 13, NULL, NULL),
(59, 30, 13, NULL, NULL),
(60, 28, 13, NULL, NULL),
(61, 29, 13, NULL, NULL),
(62, 53, 11, NULL, NULL),
(63, 50, 11, NULL, NULL),
(64, 49, 11, NULL, NULL),
(65, 48, 11, NULL, NULL),
(66, 47, 11, NULL, NULL),
(67, 42, 11, NULL, NULL),
(68, 38, 11, NULL, NULL),
(69, 37, 11, NULL, NULL),
(70, 46, 11, NULL, NULL),
(71, 45, 11, NULL, NULL),
(72, 44, 11, NULL, NULL),
(73, 43, 11, NULL, NULL),
(74, 41, 11, NULL, NULL),
(75, 40, 11, NULL, NULL),
(76, 39, 11, NULL, NULL),
(77, 36, 11, NULL, NULL),
(78, 31, 11, NULL, NULL),
(79, 30, 11, NULL, NULL),
(80, 29, 11, NULL, NULL),
(81, 28, 11, NULL, NULL),
(82, 53, 8, NULL, NULL),
(83, 50, 8, NULL, NULL),
(84, 49, 8, NULL, NULL),
(85, 48, 8, NULL, NULL),
(86, 47, 8, NULL, NULL),
(87, 42, 8, NULL, NULL),
(88, 38, 8, NULL, NULL),
(89, 37, 8, NULL, NULL),
(90, 46, 8, NULL, NULL),
(91, 45, 8, NULL, NULL),
(92, 44, 8, NULL, NULL),
(93, 43, 8, NULL, NULL),
(94, 41, 8, NULL, NULL),
(95, 40, 8, NULL, NULL),
(96, 39, 8, NULL, NULL),
(97, 36, 8, NULL, NULL),
(98, 31, 8, NULL, NULL),
(99, 30, 8, NULL, NULL),
(100, 29, 8, NULL, NULL),
(101, 28, 8, NULL, NULL),
(102, 53, 7, NULL, NULL),
(103, 50, 7, NULL, NULL),
(104, 49, 7, NULL, NULL),
(105, 48, 7, NULL, NULL),
(106, 47, 7, NULL, NULL),
(107, 42, 7, NULL, NULL),
(108, 38, 7, NULL, NULL),
(109, 53, 6, NULL, NULL),
(110, 50, 6, NULL, NULL),
(111, 49, 6, NULL, NULL),
(112, 48, 6, NULL, NULL),
(113, 47, 6, NULL, NULL),
(114, 42, 6, NULL, NULL),
(115, 38, 6, NULL, NULL),
(116, 37, 6, NULL, NULL),
(117, 46, 6, NULL, NULL),
(118, 45, 6, NULL, NULL),
(119, 44, 6, NULL, NULL),
(120, 43, 6, NULL, NULL),
(121, 41, 6, NULL, NULL),
(122, 40, 6, NULL, NULL),
(123, 39, 6, NULL, NULL),
(124, 36, 6, NULL, NULL),
(125, 50, 4, NULL, NULL),
(126, 53, 4, NULL, NULL),
(127, 48, 4, NULL, NULL),
(128, 49, 4, NULL, NULL),
(129, 47, 4, NULL, NULL),
(130, 42, 4, NULL, NULL),
(131, 38, 4, NULL, NULL),
(132, 37, 4, NULL, NULL),
(133, 46, 4, NULL, NULL),
(134, 45, 4, NULL, NULL),
(135, 44, 4, NULL, NULL),
(136, 43, 4, NULL, NULL),
(137, 41, 4, NULL, NULL),
(138, 40, 4, NULL, NULL),
(139, 39, 4, NULL, NULL),
(140, 36, 4, NULL, NULL),
(141, 31, 4, NULL, NULL),
(142, 30, 4, NULL, NULL),
(143, 29, 4, NULL, NULL),
(144, 28, 4, NULL, NULL),
(145, 53, 3, NULL, NULL),
(146, 50, 3, NULL, NULL),
(147, 49, 3, NULL, NULL),
(148, 48, 3, NULL, NULL),
(149, 47, 3, NULL, NULL),
(150, 42, 3, NULL, NULL),
(151, 38, 3, NULL, NULL),
(152, 37, 3, NULL, NULL),
(153, 46, 3, NULL, NULL),
(154, 45, 3, NULL, NULL),
(155, 44, 3, NULL, NULL),
(156, 43, 3, NULL, NULL),
(157, 41, 3, NULL, NULL),
(158, 40, 3, NULL, NULL),
(159, 39, 3, NULL, NULL),
(160, 36, 3, NULL, NULL),
(161, 31, 3, NULL, NULL),
(162, 30, 3, NULL, NULL),
(163, 29, 3, NULL, NULL),
(164, 28, 3, NULL, NULL),
(165, 49, 2, NULL, NULL),
(166, 46, 2, NULL, NULL),
(167, 53, 1, NULL, NULL),
(168, 50, 1, NULL, NULL),
(169, 49, 1, NULL, NULL),
(170, 47, 1, NULL, NULL),
(171, 42, 1, NULL, NULL),
(172, 38, 1, NULL, NULL),
(173, 48, 1, NULL, NULL),
(174, 37, 1, NULL, NULL),
(175, 46, 1, NULL, NULL),
(176, 45, 1, NULL, NULL),
(177, 44, 1, NULL, NULL),
(178, 43, 1, NULL, NULL),
(179, 41, 1, NULL, NULL),
(180, 40, 1, NULL, NULL),
(181, 39, 1, NULL, NULL),
(182, 36, 1, NULL, NULL),
(183, 31, 1, NULL, NULL),
(184, 30, 1, NULL, NULL),
(185, 29, 1, NULL, NULL),
(186, 28, 1, NULL, NULL),
(187, 50, 2, NULL, NULL),
(188, 43, 2, NULL, NULL),
(189, 44, 2, NULL, NULL),
(190, 53, 2, NULL, NULL),
(191, 41, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rating`, `comment`, `status`, `created_at`, `updated_at`, `product_id`, `user_id`) VALUES
(1, 5, 'Consequuntur nulla nesciunt adipisci beatae.', 0, '2021-10-18 11:23:42', '2021-10-18 11:23:42', 33, 3),
(2, 3, 'Nihil consequatur impedit hic possimus iure aliquam.', 0, '2021-10-18 11:23:42', '2021-10-18 11:23:42', 42, 44),
(3, 4, 'Accusantium labore ipsam eos.', 1, '2021-10-18 11:23:42', '2021-10-18 11:23:42', 3, 3),
(4, 2, 'Suscipit id voluptas vero quia nihil placeat ratione sed.', 1, '2021-10-18 11:23:42', '2021-10-18 11:23:42', 1, 17),
(5, 4, 'Consequatur consequatur accusamus nihil ipsum. Dolores laudantium odio ipsam et at cumque.', 1, '2021-10-18 11:23:42', '2021-10-18 11:23:42', 42, 3),
(6, 1, 'Deserunt quidem quia rerum eveniet ex dolores.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 29, 12),
(7, 1, 'Placeat ab libero veritatis quo ex nisi saepe.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 26, 36),
(8, 3, 'Provident quia nulla consectetur soluta vel rem.', 0, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 27, 9),
(9, 4, 'Voluptatum dolor distinctio et voluptatum consequatur doloremque consequatur.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 9, 21),
(10, 2, 'Sint voluptatem repudiandae voluptatibus. Eum eum quos eum voluptas aliquid.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 20, 44),
(11, 2, 'Porro quas ipsam omnis. Ut beatae velit voluptatem rem in dolore.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 20, 9),
(12, 5, 'Eum sapiente totam tempore vel. Laboriosam accusamus qui sit ipsa voluptatem et.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 8, 46),
(13, 4, 'Hic beatae molestias praesentium quia. Quibusdam suscipit fugiat aut.', 0, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 4, 4),
(14, 2, 'Ut non consequatur fugit est vitae.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 9, 49),
(15, 1, 'Reiciendis enim ut minima qui soluta omnis.', 0, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 37, 47),
(16, 5, 'Blanditiis et fuga velit voluptas. Ut dolores iure non architecto.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 22, 44),
(17, 4, 'Incidunt et vel reprehenderit quia quo.', 0, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 5, 41),
(18, 3, 'Rerum fugiat magni non aut quia modi. Asperiores dicta sed culpa laudantium aut.', 0, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 5, 31),
(19, 4, 'Ut nam quo dolorum sed est ab. Ad ipsa aperiam quia ipsum voluptate quis hic.', 1, '2021-10-18 11:23:43', '2021-10-18 11:23:43', 37, 9),
(20, 5, 'Iusto ut accusamus ut illum laboriosam exercitationem.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 29, 36),
(21, 4, 'Explicabo aut ut vitae officia voluptates.', 0, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 44, 12),
(22, 5, 'Vel quod ut qui quisquam aut.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 7, 21),
(23, 2, 'Modi modi molestias expedita rerum autem consectetur.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 35, 46),
(24, 4, 'Deserunt rerum placeat nihil sit dolorem laudantium. Dolores ut architecto non fugiat.', 0, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 45, 4),
(25, 3, 'Minus et consequatur fugit ipsam consequatur qui. Impedit quasi delectus dolor.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 15, 41),
(26, 5, 'Eius provident omnis ut eveniet asperiores ea.', 0, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 36, 24),
(27, 5, 'Voluptatem provident fuga omnis. Fuga recusandae enim nihil officiis.', 0, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 13, 12),
(28, 2, 'Officia quaerat enim ut animi esse est repellendus omnis.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 22, 47),
(29, 4, 'Velit ipsam tempore et iure officia.', 0, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 22, 12),
(30, 3, 'Necessitatibus aperiam et sequi omnis.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 33, 27),
(31, 1, 'Nisi atque fugiat in ipsum eligendi.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 26, 19),
(32, 1, 'Quam voluptates est sit fugiat quidem.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 10, 12),
(33, 2, 'Quibusdam et officia ex assumenda possimus. Accusantium voluptatibus iure eveniet et et eos.', 0, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 9, 19),
(34, 3, 'Enim omnis eum eius et et nobis alias qui.', 1, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 3, 3),
(35, 5, 'Est perspiciatis amet ea ut nostrum. Dolore sapiente ut sed.', 0, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 36, 17),
(36, 2, 'Iusto et voluptates amet. Voluptatem quia earum voluptatem et nihil.', 0, '2021-10-18 11:23:44', '2021-10-18 11:23:44', 38, 35),
(37, 4, 'Voluptas id voluptatem vero temporibus et ex. Voluptatem est omnis eos.', 1, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 4, 3),
(38, 2, 'Ut non laborum est fuga ex reprehenderit modi.', 1, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 15, 21),
(39, 4, 'Sapiente eos asperiores tempore maxime quidem asperiores quasi et.', 0, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 33, 12),
(40, 2, 'Dolorem hic assumenda et velit nihil ullam voluptas.', 0, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 13, 31),
(41, 5, 'Deserunt doloribus nisi aut veritatis autem quo et velit.', 0, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 10, 44),
(42, 3, 'Sed voluptas enim quis eligendi. Sed iste aut a facere eum qui.', 1, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 11, 49),
(43, 5, 'Quia et animi et cupiditate nam.', 0, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 8, 49),
(44, 1, 'Possimus aut corporis provident sed sed. Magni porro quo corporis molestias.', 1, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 11, 4),
(45, 4, 'Vero eos rem consequatur ad.', 1, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 31, 9),
(46, 4, 'Voluptas vel perferendis illum voluptatem.', 1, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 24, 47),
(47, 1, 'Quos molestias velit cupiditate itaque natus eveniet.', 0, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 31, 20),
(48, 2, 'Deserunt provident sed voluptatem.', 1, '2021-10-18 11:23:45', '2021-10-18 11:23:45', 48, 21),
(49, 4, 'Voluptatibus molestiae voluptatem et consectetur consectetur culpa repellat.', 0, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 10, 20),
(50, 3, 'Eos natus atque consequatur. Molestiae praesentium vitae cum explicabo voluptates unde.', 1, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 50, 44),
(51, 5, 'Voluptate sunt quae aut ut ea modi omnis.', 0, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 48, 49),
(52, 1, 'Maxime nemo quia sed voluptas cumque enim.', 0, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 43, 4),
(53, 4, 'Beatae repellat mollitia ut qui voluptate nostrum quia assumenda.', 1, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 6, 19),
(54, 2, 'Quam voluptate sequi blanditiis. Et quia rem vel.', 0, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 41, 36),
(55, 4, 'Et asperiores illum reprehenderit expedita.', 1, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 45, 19),
(56, 2, 'Id ex dignissimos perferendis deserunt.', 1, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 44, 47),
(57, 2, 'Est nemo assumenda voluptates nobis.', 0, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 31, 3),
(58, 2, 'Officiis quia impedit nihil doloremque.', 0, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 31, 38),
(59, 4, 'Suscipit consectetur amet voluptatem voluptatem quibusdam dolorem et.', 1, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 19, 19),
(60, 5, 'Nihil non consequatur et molestias voluptatem.', 0, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 5, 4),
(61, 4, 'Ea aliquam magnam adipisci doloremque quaerat facilis.', 0, '2021-10-18 11:23:46', '2021-10-18 11:23:46', 28, 24),
(62, 1, 'Odio quis atque quis nisi.', 1, '2021-10-18 11:23:47', '2021-10-18 11:23:47', 43, 38),
(63, 2, 'Ea ex non quis unde est occaecati officia.', 0, '2021-10-18 11:23:47', '2021-10-18 11:23:47', 10, 49),
(64, 3, 'Debitis accusantium et eum maxime.', 1, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 12, 36),
(65, 1, 'Iste neque amet unde doloribus est.', 0, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 49, 44),
(66, 1, 'Temporibus iste non architecto illum nisi. Quos quidem vero et nisi et nostrum.', 0, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 24, 46),
(67, 3, 'Ducimus deleniti et qui enim enim. Ut quae accusamus ad.', 0, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 15, 3),
(68, 2, 'Repellat aut eos nihil.', 1, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 34, 4),
(69, 5, 'Omnis ex illo est excepturi consectetur tenetur qui.', 1, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 42, 31),
(70, 5, 'Perspiciatis dolores reprehenderit veniam facere.', 0, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 5, 46),
(71, 1, 'Quis magnam libero velit libero corrupti.', 0, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 34, 24),
(72, 1, 'Omnis ratione voluptatem qui reprehenderit sit quos ex.', 1, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 23, 9),
(73, 2, 'Odit temporibus ex id dolor accusantium natus. Rerum ipsam voluptate fuga.', 1, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 22, 44),
(74, 2, 'Minima et soluta iste temporibus unde. Atque sint placeat labore ut quibusdam.', 0, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 43, 44),
(75, 4, 'Omnis reprehenderit est quis vitae qui ullam necessitatibus.', 1, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 33, 12),
(76, 3, 'Inventore quis error ipsum accusamus earum dolorem.', 1, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 34, 46),
(77, 5, 'Commodi neque facere tempora iusto. Aut ipsam accusantium fugit ullam molestiae beatae.', 0, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 29, 27),
(78, 3, 'Occaecati eligendi est qui modi.', 0, '2021-10-18 11:23:48', '2021-10-18 11:23:48', 11, 21),
(79, 2, 'Perspiciatis vitae aut quas est optio in dicta.', 0, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 18, 49),
(80, 5, 'Ab nobis eum doloremque repellendus eum aut. Error molestias adipisci sit dolores.', 1, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 15, 21),
(81, 1, 'Minus et laborum itaque pariatur qui.', 0, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 38, 31),
(82, 3, 'Velit voluptas est harum laboriosam voluptatem ut. Qui qui non est dolores quo omnis.', 1, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 25, 36),
(83, 4, 'Et amet fugit ratione deserunt vero modi.', 0, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 5, 4),
(84, 1, 'Ratione facere asperiores distinctio quis laudantium.', 1, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 41, 27),
(85, 5, 'Accusamus non et nulla quia magni numquam error.', 1, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 48, 41),
(86, 5, 'Et error iure recusandae distinctio. Itaque qui quo accusantium.', 1, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 13, 49),
(87, 3, 'Eos iste labore ad dolore eveniet voluptatem cumque.', 0, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 10, 20),
(88, 5, 'Dolor eveniet nisi architecto natus expedita nesciunt enim.', 0, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 5, 27),
(89, 1, 'Delectus qui vel eos. Omnis similique sint in debitis harum dolorem.', 1, '2021-10-18 11:23:49', '2021-10-18 11:23:49', 13, 27),
(90, 3, 'Quis id praesentium ullam quidem suscipit voluptas facilis sed. Dicta qui id at quos facilis.', 0, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 48, 35),
(91, 2, 'Voluptas voluptas numquam numquam a tenetur.', 1, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 7, 12),
(92, 3, 'Alias nemo reiciendis non nemo pariatur at veritatis.', 0, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 44, 35),
(93, 3, 'Et vitae qui et quia. Voluptas omnis nostrum et eaque.', 1, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 9, 27),
(94, 2, 'Occaecati omnis quis sapiente. Voluptas eaque pariatur aliquam facilis nemo provident.', 1, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 18, 41),
(95, 5, 'Ut eos omnis voluptas veniam quasi dolor sit.', 0, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 27, 17),
(96, 2, 'Sequi qui recusandae iure possimus quia quis commodi.', 1, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 7, 19),
(97, 5, 'Corrupti tempore odio numquam.', 1, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 45, 44),
(98, 3, 'Aliquid blanditiis impedit est in ipsam corrupti.', 0, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 31, 24),
(99, 2, 'Architecto non quia unde laboriosam. Nobis necessitatibus ab nesciunt consequuntur.', 1, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 31, 38),
(100, 1, 'In voluptatem aut facere ducimus odio non nesciunt.', 1, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 2, 20),
(101, 5, 'Beatae harum expedita itaque nesciunt.', 1, '2021-10-18 11:23:50', '2021-10-18 11:23:50', 49, 35),
(102, 5, 'Quo qui omnis at. Vitae blanditiis ad quia consequatur ipsam.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 14, 44),
(103, 4, 'Nostrum et a architecto dolore perspiciatis qui.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 34, 4),
(104, 2, 'Consequuntur id voluptatem facere commodi velit id.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 45, 27),
(105, 2, 'Non blanditiis sed corrupti voluptatem illo accusamus.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 7, 46),
(106, 5, 'Doloribus nisi est quia ipsum sit modi.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 49, 27),
(107, 1, 'Deleniti tenetur quo est provident vel. Sit et corrupti quia vel.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 36, 26),
(108, 2, 'Impedit recusandae quidem commodi sit rerum aut.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 14, 24),
(109, 3, 'Labore aut voluptatibus similique ad illum dignissimos vel.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 23, 35),
(110, 3, 'Nihil ut mollitia ab omnis aut.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 23, 36),
(111, 2, 'Cum sequi et perspiciatis quam.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 20, 11),
(112, 3, 'Autem sit et atque quia quia. Quidem omnis et modi rem ut nobis.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 46, 24),
(113, 2, 'Ea optio laudantium hic maiores non ratione non.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 41, 20),
(114, 1, 'Consectetur magnam velit aut ipsum ad. Atque aut commodi eligendi alias.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 33, 36),
(115, 5, 'Quo enim in quas alias accusantium.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 46, 44),
(116, 5, 'Rerum qui numquam natus velit consequatur ut ea.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 6, 46),
(117, 2, 'Enim accusamus expedita cupiditate unde ea quia eum.', 1, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 24, 4),
(118, 1, 'Aspernatur aut suscipit officia. Ut dolores adipisci assumenda aut.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 36, 26),
(119, 5, 'Sed tempora nulla eos hic ut explicabo.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 24, 4),
(120, 3, 'Modi consequuntur autem commodi fugiat vitae autem. Et quo quis facere ea a eos aut.', 0, '2021-10-18 11:23:51', '2021-10-18 11:23:51', 22, 12),
(121, 2, 'Ea debitis fuga cum error enim rem hic.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 19, 24),
(122, 1, 'Cumque nemo non voluptas asperiores.', 0, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 27, 17),
(123, 4, 'Omnis eligendi fuga voluptatem impedit accusantium reiciendis.', 0, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 11, 47),
(124, 5, 'Qui enim sed repellendus eligendi consequatur et dolorem. Qui cumque id eius omnis.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 12, 12),
(125, 3, 'Delectus dicta sit beatae aliquid. Eos maxime et et repellat ut et.', 0, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 19, 35),
(126, 4, 'Maxime quidem ea et pariatur. Minus eligendi molestiae perferendis dolores officia incidunt.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 9, 19),
(127, 5, 'Et corporis similique aperiam qui consequatur. Dicta delectus et impedit ipsa.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 9, 20),
(128, 3, 'Exercitationem omnis quaerat est voluptatem.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 30, 24),
(129, 4, 'Dolor mollitia cupiditate laborum quae rerum velit.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 13, 35),
(130, 5, 'Totam enim voluptate omnis officia ipsam doloremque iste.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 30, 44),
(131, 4, 'Quae facilis reiciendis mollitia.', 0, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 2, 38),
(132, 2, 'Et totam non et provident qui.', 0, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 19, 44),
(133, 1, 'Voluptatibus ipsam qui quia possimus.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 20, 31),
(134, 4, 'Unde mollitia ea laborum ea provident reprehenderit qui.', 1, '2021-10-18 11:23:52', '2021-10-18 11:23:52', 21, 36),
(135, 2, 'Id sed vel officiis sint velit. Et eum autem ullam laborum quam.', 1, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 42, 20),
(136, 3, 'Unde ducimus repudiandae cupiditate magni ex. Quis at recusandae libero amet sequi.', 0, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 45, 24),
(137, 5, 'Tempore dolores aut et nihil facere ad.', 1, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 13, 12),
(138, 4, 'Culpa atque at vitae quia molestiae sed.', 1, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 35, 49),
(139, 3, 'Minus perferendis quidem tempora aliquam.', 0, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 17, 3),
(140, 5, 'Iste dolore rem magni amet et. Molestiae sit libero vel nulla ut.', 0, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 37, 3),
(141, 3, 'Eveniet voluptatem tempore beatae totam.', 0, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 4, 4),
(142, 1, 'Ex sunt alias temporibus officia ipsum. Vitae nisi temporibus aut et veritatis autem ducimus.', 0, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 17, 9),
(143, 4, 'Iure nostrum adipisci consequatur veniam ex vel. Ipsa maxime temporibus et.', 1, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 22, 17),
(144, 4, 'Autem iste enim placeat dolorem ut nobis sed.', 0, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 50, 46),
(145, 1, 'Velit explicabo voluptas dolore alias necessitatibus tempore dolorum.', 1, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 20, 17),
(146, 1, 'Commodi voluptas ducimus alias qui sequi nihil ea.', 1, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 17, 12),
(147, 1, 'Et praesentium velit voluptatem quaerat quo sint.', 1, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 4, 27),
(148, 1, 'Non omnis illo dolorum velit fugit impedit.', 0, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 4, 4),
(149, 1, 'Neque doloribus ut ab ratione consequuntur dicta.', 0, '2021-10-18 11:23:53', '2021-10-18 11:23:53', 10, 20),
(150, 5, 'Nihil et cum unde aut ut et ab. Quibusdam et ipsum sequi.', 1, '2021-10-18 11:23:54', '2021-10-18 11:23:54', 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ادمن', 'التحكم في كل اجزاء الموقع', NULL, NULL, '2021-10-18 11:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(196, 1, 196, NULL, NULL),
(197, 1, 197, NULL, NULL),
(198, 1, 198, NULL, NULL),
(199, 1, 199, NULL, NULL),
(200, 1, 200, NULL, NULL),
(201, 1, 201, NULL, NULL),
(202, 1, 202, NULL, NULL),
(203, 1, 203, NULL, NULL),
(204, 1, 204, NULL, NULL),
(205, 1, 205, NULL, NULL),
(206, 1, 206, NULL, NULL),
(207, 1, 207, NULL, NULL),
(208, 1, 208, NULL, NULL),
(209, 1, 209, NULL, NULL),
(210, 1, 210, NULL, NULL),
(211, 1, 211, NULL, NULL),
(212, 1, 212, NULL, NULL),
(213, 1, 213, NULL, NULL),
(214, 1, 214, NULL, NULL),
(215, 1, 215, NULL, NULL),
(216, 1, 216, NULL, NULL),
(217, 1, 217, NULL, NULL),
(218, 1, 218, NULL, NULL),
(219, 1, 219, NULL, NULL),
(220, 1, 220, NULL, NULL),
(221, 1, 221, NULL, NULL),
(222, 1, 222, NULL, NULL),
(223, 1, 223, NULL, NULL),
(224, 1, 224, NULL, NULL),
(225, 1, 225, NULL, NULL),
(226, 1, 226, NULL, NULL),
(227, 1, 227, NULL, NULL),
(228, 1, 228, NULL, NULL),
(229, 1, 229, NULL, NULL),
(230, 1, 230, NULL, NULL),
(231, 1, 231, NULL, NULL),
(232, 1, 232, NULL, NULL),
(233, 1, 233, NULL, NULL),
(234, 1, 234, NULL, NULL),
(235, 1, 235, NULL, NULL),
(236, 1, 236, NULL, NULL),
(237, 1, 237, NULL, NULL),
(238, 1, 238, NULL, NULL),
(239, 1, 239, NULL, NULL),
(240, 1, 240, NULL, NULL),
(241, 1, 241, NULL, NULL),
(242, 1, 242, NULL, NULL),
(243, 1, 243, NULL, NULL),
(244, 1, 244, NULL, NULL),
(245, 1, 245, NULL, NULL),
(246, 1, 246, NULL, NULL),
(247, 1, 247, NULL, NULL),
(248, 1, 248, NULL, NULL),
(249, 1, 249, NULL, NULL),
(250, 1, 250, NULL, NULL),
(251, 1, 251, NULL, NULL),
(252, 1, 252, NULL, NULL),
(253, 1, 253, NULL, NULL),
(254, 1, 254, NULL, NULL),
(255, 1, 255, NULL, NULL),
(256, 1, 256, NULL, NULL),
(257, 1, 257, NULL, NULL),
(258, 1, 258, NULL, NULL),
(259, 1, 259, NULL, NULL),
(260, 1, 260, NULL, NULL),
(261, 1, 261, NULL, NULL),
(262, 1, 262, NULL, NULL),
(263, 1, 263, NULL, NULL),
(264, 1, 264, NULL, NULL),
(265, 1, 265, NULL, NULL),
(266, 1, 266, NULL, NULL),
(267, 1, 267, NULL, NULL),
(268, 1, 268, NULL, NULL),
(269, 1, 269, NULL, NULL),
(270, 1, 270, NULL, NULL),
(271, 1, 271, NULL, NULL),
(272, 1, 272, NULL, NULL),
(273, 1, 273, NULL, NULL),
(274, 1, 274, NULL, NULL),
(275, 1, 275, NULL, NULL),
(276, 1, 276, NULL, NULL),
(277, 1, 277, NULL, NULL),
(278, 1, 278, NULL, NULL),
(279, 1, 279, NULL, NULL),
(280, 1, 280, NULL, NULL),
(281, 1, 281, NULL, NULL),
(282, 1, 282, NULL, NULL),
(283, 1, 283, NULL, NULL),
(284, 1, 284, NULL, NULL),
(285, 1, 285, NULL, NULL),
(286, 1, 286, NULL, NULL),
(287, 1, 287, NULL, NULL),
(288, 1, 288, NULL, NULL),
(289, 1, 289, NULL, NULL),
(290, 1, 290, NULL, NULL),
(291, 1, 291, NULL, NULL),
(292, 1, 292, NULL, NULL),
(293, 1, 293, NULL, NULL),
(294, 1, 294, NULL, NULL),
(295, 1, 295, NULL, NULL),
(296, 1, 296, NULL, NULL),
(297, 1, 297, NULL, NULL),
(298, 1, 298, NULL, NULL),
(299, 1, 299, NULL, NULL),
(300, 1, 300, NULL, NULL),
(301, 1, 301, NULL, NULL),
(302, 1, 302, NULL, NULL),
(303, 1, 303, NULL, NULL),
(304, 1, 304, NULL, NULL),
(305, 1, 305, NULL, NULL),
(306, 1, 306, NULL, NULL),
(307, 1, 307, NULL, NULL),
(308, 1, 308, NULL, NULL),
(309, 1, 309, NULL, NULL),
(310, 1, 310, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `description`, `created_at`, `updated_at`) VALUES
(1, 'points_percentage', '15', 'Student balance percentage %', NULL, '2021-11-16 02:43:56'),
(2, 'points_end', '3', 'point value (IDR)', NULL, '2021-11-16 02:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_d` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `lat_and_long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `title`, `name`, `email`, `phone`, `phone2`, `address`, `address_d`, `user_id`, `area_id`, `lat_and_long`, `note`, `created_at`, `updated_at`) VALUES
(1, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 67, 1, '26565646,4848484', NULL, '2021-10-18 11:52:51', '2021-10-18 11:52:51'),
(2, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:52:56', '2021-10-18 11:52:56'),
(3, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:52:59', '2021-10-18 11:52:59'),
(4, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:52:59', '2021-10-18 11:52:59'),
(5, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:53:00', '2021-10-18 11:53:00'),
(6, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:53:01', '2021-10-18 11:53:01'),
(7, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:53:02', '2021-10-18 11:53:02'),
(8, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:53:03', '2021-10-18 11:53:03'),
(9, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:53:04', '2021-10-18 11:53:04'),
(10, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:53:04', '2021-10-18 11:53:04'),
(11, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 11:53:05', '2021-10-18 11:53:05'),
(12, '2021-10-18', 'mahmoud mustafa', 'mostafshata9@yahoo.com', '01111229562', '01111225050', 'kubri alquba', NULL, 51, 1, '26565646,4848484', NULL, '2021-10-18 12:00:21', '2021-10-18 12:00:21'),
(14, 'kznz', 'nzb', 'moaz@gmail.com', '01143953424', '01204561567', '14th of May Bridge Rd\nbxbbxbx', NULL, 57, 2, '31.2051108,29.969773799999984', NULL, '2021-10-30 17:51:23', '2021-10-30 17:51:23'),
(15, 'jd', 'jd', 'hamxza@gmail.com', '01204561567', '01143953424', '14th of May Bridge Rdckbh', NULL, 57, 2, '31.2051108,29.969773799999984', NULL, '2021-10-30 17:52:45', '2021-10-30 17:52:45'),
(16, 'jxn', 'jxbz', 'hamza@gmail.com', '01204561567', '01204561567', '14th of May Bridge Rdxz', NULL, 57, 2, '31.2051108,29.969773799999984', NULL, '2021-10-30 18:17:24', '2021-10-30 18:17:24'),
(18, 'n jx', 'cnc', 'ham@gmail.com', '01204562181', '0585885558', '14th of May Bridge Rd', NULL, 57, 2, '31.2051108,29.969773799999984', NULL, '2021-10-30 18:25:04', '2021-10-30 18:25:04'),
(20, 'nvg', 'hv', 'hamza@gmail.com', '01272658512', '01204561567', 'جرين بلازا، عزبة النزهة، قسم سيدى جابر، الإسكندرية، مصر', NULL, 57, 2, '31.2049706,29.96773909999999', NULL, '2021-10-30 19:52:17', '2021-10-30 19:52:17'),
(21, '2021-11-02', 'hamza', 'hamza@gmail.com', '01204561567', '01204561567', '14th of May Bridge Rd', NULL, NULL, 2, '31.2050848,29.96975839999999', NULL, '2021-11-03 06:22:47', '2021-11-03 06:22:47'),
(23, 'bjsz', 'hamza', 'hamza@gmail.com', '01204561567', '01204561567', '14th of May Bridge Rd', NULL, 65, 2, '31.205191,29.969859799999995', NULL, '2021-11-08 20:55:36', '2021-11-08 20:55:36'),
(24, '2021-11-15', 'gg', 'e.ah@gamil.com', '99427261', '99427261', '3 شارع ابن خلدون، حولي، الكويت‎', NULL, NULL, 4, '29.3436964,48.01397270000001', NULL, '2021-11-15 19:50:20', '2021-11-15 19:50:20'),
(26, 'vcg', 'hab', NULL, '012045615', NULL, 'أبيس، قسم الرمل،، أبيس، قسم الرمل، الإسكندرية،،', NULL, 60, 4, '31.205032,29.96954600000001', NULL, '2021-11-18 20:01:31', '2021-11-22 00:40:49'),
(27, 'cg', 'gcv', NULL, '025045885', NULL, 'أبيس، قسم الرمل،، أبيس، قسم الرمل، الإسكندرية،،', NULL, 60, 2, '31.1969102,29.987062100000003', NULL, '2021-11-18 23:55:26', '2021-11-18 23:55:26'),
(28, 'vc', 'c', NULL, '8857588', NULL, 'أبيس، قسم الرمل،، أبيس، قسم الرمل، الإسكندرية،،', NULL, 60, 4, '31.19691,29.987061299999993', NULL, '2021-11-19 00:15:48', '2021-11-19 00:15:48'),
(29, 'vcg', 'cc', NULL, '012045615', NULL, 'أبيس، قسم الرمل،، أبيس، قسم الرمل، الإسكندرية،،', NULL, 60, 4, '31.1969099,29.987060100000008', NULL, '2021-11-19 00:29:10', '2021-11-19 00:29:10'),
(30, 'vvc', 'vcg', NULL, '885123', NULL, '14th of May Bridge Rd', NULL, 60, 4, '31.2050377,29.96955829999999', NULL, '2021-11-19 00:37:29', '2021-11-19 00:37:29'),
(31, 'kkkk', '. mjgjlkk', NULL, '97244282', NULL, 'Al-Anmar Building', NULL, 66, 4, '29.3435362,48.014235799999994', NULL, '2021-11-21 03:39:25', '2021-11-21 03:39:25'),
(32, '2021-11-21', 'لاا', NULL, '85555555', NULL, '82V7+CJX، حولي، الكويت‎', NULL, NULL, 4, '29.3436732,48.01400459999999', NULL, '2021-11-22 01:52:15', '2021-11-22 01:52:15'),
(33, 'new', 'new', NULL, '01204561', NULL, 'طريق الأسكندريه الزراعي', 'مصر, الإسكندرية', 60, 4, '31.203772593053298,29.97185043990612', NULL, '2021-11-22 07:46:56', '2021-11-22 07:46:56'),
(34, '2021-11-22', 'تاا', NULL, '55555555', NULL, 'الكويت‎, حولي', NULL, NULL, 4, '29.3436183,48.0138498', '82V7+FG7', '2021-11-22 21:03:06', '2021-11-22 21:03:06'),
(35, '2021-11-22', 'ات', NULL, '555555555', NULL, 'الكويت‎, حولي', NULL, NULL, 4, '29.343063210432653,48.0135952681303', '82V7+FG7', '2021-11-22 21:04:39', '2021-11-22 21:04:39'),
(36, '2021-11-22', 'cc', NULL, '55555555', NULL, 'طريق الأسكندريه الزراعي', NULL, NULL, 4, '31.20394637659213,29.971530251204967', NULL, '2021-11-22 21:29:57', '2021-11-22 21:29:57'),
(37, '2021-11-23', 'ىىا', NULL, '85555555', NULL, '3', NULL, NULL, 4, '29.3436403,48.01391480000001', NULL, '2021-11-23 23:13:16', '2021-11-23 23:13:16'),
(38, '2021-11-23', 'ىىا', NULL, '85555555', NULL, '3', NULL, NULL, 4, '29.3436403,48.01391480000001', NULL, '2021-11-23 23:13:54', '2021-11-23 23:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `in_app` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statements`
--

CREATE TABLE `statements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `value_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statements`
--

INSERT INTO `statements` (`id`, `name_ar`, `name_en`, `value_en`, `value_ar`, `created_at`, `updated_at`, `deleted_at`, `product_id`) VALUES
(1, 'ar_Omnis iste.', 'en-Est harum et.', 'en-Ut eos ipsa fugit.', 'ar_Et velit voluptatem.', '2021-10-18 11:23:56', '2021-10-18 11:23:56', NULL, 24),
(2, 'ar_Facilis et est.', 'en-Deleniti.', 'en-Consequuntur amet.', 'ar_Neque quis ab nihil.', '2021-10-18 11:23:56', '2021-10-18 11:23:56', NULL, 2),
(4, 'ar_Saepe quia.', 'en-Ut sed facilis.', 'en-Dolor architecto.', 'ar_Voluptas rerum.', '2021-10-18 11:23:56', '2021-10-18 11:23:56', NULL, 11),
(7, 'ar_Commodi non ut.', 'en-Et occaecati.', 'en-Sed beatae et.', 'ar_Aut ratione eveniet.', '2021-10-18 11:23:57', '2021-10-18 11:23:57', NULL, 16),
(8, 'ar_Repellat.', 'en-Illum qui.', 'en-Hic est id quisquam.', 'ar_Adipisci ipsa.', '2021-10-18 11:23:57', '2021-10-18 11:23:57', NULL, 12),
(10, 'ar_Eos sit et.', 'en-Nostrum.', 'en-Voluptatum dolorum.', 'ar_Quod cupiditate.', '2021-10-18 11:23:57', '2021-10-18 11:23:57', NULL, 5),
(16, 'ar_Aut veniam.', 'en-Consequatur et.', 'en-Assumenda et labore.', 'ar_Laudantium nulla.', '2021-10-18 11:23:57', '2021-10-18 11:23:57', NULL, 16),
(17, 'ar_Neque ab et.', 'en-Eveniet quod.', 'en-Odio porro incidunt.', 'ar_Omnis animi et.', '2021-10-18 11:23:57', '2021-10-18 11:23:57', NULL, 7),
(18, 'ar_Aut temporibus.', 'en-Fuga officia.', 'en-Sint velit omnis.', 'ar_Explicabo accusamus.', '2021-10-18 11:23:57', '2021-10-18 11:23:57', NULL, 12),
(20, 'ar_Aut quaerat.', 'en-Dicta esse.', 'en-Aliquam officia.', 'ar_Velit labore.', '2021-10-18 11:23:57', '2021-10-18 11:23:57', NULL, 13),
(21, 'ar_Illum minus et.', 'en-Et veritatis.', 'en-Velit ut quia sunt.', 'ar_Possimus.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 19),
(25, 'ar_Ratione sint.', 'en-Repellat qui.', 'en-Expedita non sed.', 'ar_Dolores hic id.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 32),
(27, 'ar_Sed rerum.', 'en-Ab autem.', 'en-Voluptas laboriosam.', 'ar_Quo optio.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 2),
(28, 'ar_Ut incidunt.', 'en-Tempore in.', 'en-Repellat sed.', 'ar_Nisi quo assumenda.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 26),
(29, 'ar_Ut perferendis.', 'en-Fugiat.', 'en-Vel neque.', 'ar_Provident unde quia.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 3),
(30, 'ar_Molestiae et.', 'en-Vero voluptate.', 'en-Et consequuntur.', 'ar_Tempora suscipit.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 7),
(33, 'ar_Reiciendis.', 'en-Eveniet sed.', 'en-Et accusantium qui.', 'ar_Excepturi accusamus.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 17),
(34, 'ar_Deserunt eos.', 'en-Consequuntur.', 'en-Recusandae est.', 'ar_Ullam harum vitae.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 6),
(35, 'ar_Nihil aut.', 'en-Animi placeat.', 'en-Quas est.', 'ar_Totam nihil sunt.', '2021-10-18 11:23:58', '2021-10-18 11:23:58', NULL, 12),
(36, 'ar_Vel nihil.', 'en-Minima eius.', 'en-Possimus mollitia.', 'ar_Iste ducimus et.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 21),
(37, 'ar_Aut odio sunt.', 'en-Nam mollitia.', 'en-Et pariatur sit.', 'ar_Laboriosam id.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 9),
(38, 'ar_Non saepe aut.', 'en-Voluptas.', 'en-Quisquam.', 'ar_Quidem quo cumque.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 34),
(39, 'ar_Quas ut.', 'en-Libero.', 'en-Neque enim eos sed.', 'ar_Et et vero in saepe.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 16),
(40, 'ar_Reiciendis.', 'en-Temporibus eum.', 'en-Et rerum eos.', 'ar_Laborum hic amet.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 1),
(42, 'ar_Aliquam autem.', 'en-Doloremque qui.', 'en-Blanditiis ipsam.', 'ar_Sed consequatur.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 6),
(43, 'ar_Exercitationem.', 'en-Minima.', 'en-Aperiam enim.', 'ar_Dolore fugiat.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 21),
(45, 'ar_Repellat aut.', 'en-Quas corrupti.', 'en-Fugit aspernatur.', 'ar_Maxime et.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 15),
(46, 'ar_Dolorum et.', 'en-Laborum.', 'en-Veniam magnam.', 'ar_Cum iusto in fuga.', '2021-10-18 11:23:59', '2021-10-18 11:23:59', NULL, 17),
(47, 'ar_Numquam culpa.', 'en-Fuga officia.', 'en-Ea qui consequatur.', 'ar_Ut voluptatibus.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 32),
(51, 'ar_Quia dicta ut.', 'en-Labore esse.', 'en-Deleniti sit sint.', 'ar_Ex corrupti amet.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 14),
(52, 'ar_Dolore cumque.', 'en-Ducimus rem.', 'en-Ex qui qui.', 'ar_Qui animi in.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 26),
(54, 'ar_Aliquam modi.', 'en-Soluta alias.', 'en-Quos provident quae.', 'ar_Autem molestias.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 1),
(55, 'ar_Reprehenderit.', 'en-Et voluptatum.', 'en-Quo facilis iure.', 'ar_Eos esse commodi.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 11),
(56, 'ar_Modi repellat.', 'en-Quo unde.', 'en-In mollitia et.', 'ar_Itaque accusamus.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 14),
(57, 'ar_Aspernatur in.', 'en-Pariatur aut.', 'en-Quo quae.', 'ar_Est sunt qui.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 3),
(58, 'ar_Autem delectus.', 'en-Et qui.', 'en-Recusandae veniam.', 'ar_Consequatur sunt.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 1),
(60, 'ar_Asperiores.', 'en-Et aspernatur.', 'en-Eaque qui neque ut.', 'ar_Similique nostrum.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 32),
(61, 'ar_Quod quam.', 'en-Molestiae illo.', 'en-Vero est.', 'ar_Enim autem maxime.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 11),
(62, 'ar_Voluptas.', 'en-Eum quae non.', 'en-Et iure quo ut.', 'ar_Nihil commodi aut.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 17),
(63, 'ar_Ipsam eius.', 'en-Pariatur.', 'en-Sit porro optio.', 'ar_Sit veritatis quam.', '2021-10-18 11:24:00', '2021-10-18 11:24:00', NULL, 35),
(65, 'ar_Qui facilis.', 'en-Nostrum.', 'en-Fuga eligendi et.', 'ar_Incidunt non rerum.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 15),
(66, 'ar_Fugit ipsum ex.', 'en-In est.', 'en-Non et et aut.', 'ar_Maxime praesentium.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 5),
(67, 'ar_Beatae.', 'en-Impedit.', 'en-Enim aut ad cum.', 'ar_Accusamus et qui.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 32),
(71, 'ar_Quia maiores.', 'en-Asperiores.', 'en-Nemo et minima.', 'ar_Ut aut nihil rerum.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 24),
(72, 'ar_Fugit eos.', 'en-Repellat.', 'en-Atque sed ut autem.', 'ar_Explicabo.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 2),
(75, 'ar_Illo et.', 'en-Voluptatem.', 'en-Fuga in eos tenetur.', 'ar_Temporibus et.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 21),
(76, 'ar_Eum odio vero.', 'en-Rerum.', 'en-Non est magnam.', 'ar_Sapiente qui.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 8),
(77, 'ar_Veritatis.', 'en-Ab quis atque.', 'en-Fugit pariatur et.', 'ar_Sit minima natus.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 24),
(78, 'ar_Quo.', 'en-Expedita quia.', 'en-Inventore occaecati.', 'ar_Consequatur optio.', '2021-10-18 11:24:01', '2021-10-18 11:24:01', NULL, 14),
(82, 'ar_Ex id ut nisi.', 'en-Non autem.', 'en-Ducimus nihil.', 'ar_Cum repudiandae.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 35),
(85, 'ar_Aperiam.', 'en-Vitae odio.', 'en-Explicabo et.', 'ar_Necessitatibus.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 1),
(88, 'ar_Ut quia quas.', 'en-Ea consequatur.', 'en-Est ratione.', 'ar_Vitae cupiditate ea.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 20),
(90, 'ar_Amet ut nihil.', 'en-Nihil ducimus.', 'en-Nemo labore nam.', 'ar_Architecto vitae.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 27),
(92, 'ar_Veritatis iure.', 'en-Rerum alias.', 'en-Voluptatem tempore.', 'ar_Vel molestiae.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 21),
(93, 'ar_Dolore nobis.', 'en-Qui libero vel.', 'en-Incidunt optio.', 'ar_Qui enim aut.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 22),
(94, 'ar_Aliquam quam.', 'en-Accusantium.', 'en-Dicta harum et.', 'ar_Eum voluptatem.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 23),
(95, 'ar_Omnis ut porro.', 'en-Animi ratione.', 'en-Iure ut quaerat nam.', 'ar_Fugit perferendis.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 17),
(97, 'ar_Ex sunt veniam.', 'en-Et nobis quo.', 'en-Quam praesentium.', 'ar_Minus consequatur.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 14),
(98, 'ar_Error sit ut.', 'en-Sequi.', 'en-A omnis unde.', 'ar_Iure mollitia et.', '2021-10-18 11:24:02', '2021-10-18 11:24:02', NULL, 18),
(99, 'ar_Ut ut vero.', 'en-Nam voluptas.', 'en-Ab aut at velit.', 'ar_Repudiandae impedit.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 35),
(100, 'ar_Tenetur ut.', 'en-Amet aperiam.', 'en-Sint porro quia.', 'ar_Suscipit doloribus.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 20),
(101, 'ar_Sed voluptatem.', 'en-Quia nihil.', 'en-Et eaque ut iusto.', 'ar_Perferendis.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 32),
(108, 'ar_Perferendis.', 'en-Officiis.', 'en-Minima fuga.', 'ar_Et error qui.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 22),
(109, 'ar_Numquam.', 'en-Natus odio.', 'en-Et sapiente harum.', 'ar_Totam.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 8),
(110, 'ar_Temporibus.', 'en-Doloremque.', 'en-Ducimus.', 'ar_Tenetur atque rem.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 35),
(111, 'ar_Dignissimos ex.', 'en-Dignissimos.', 'en-Quis aut saepe.', 'ar_Occaecati hic est.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 17),
(112, 'ar_Voluptatibus.', 'en-Et illum eos.', 'en-Odio aspernatur.', 'ar_Quo impedit aut.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 10),
(114, 'ar_Repellat quas.', 'en-Similique.', 'en-Doloribus.', 'ar_Voluptates soluta.', '2021-10-18 11:24:03', '2021-10-18 11:24:03', NULL, 18),
(119, 'ar_Animi fugiat.', 'en-Vitae modi.', 'en-Sapiente molestias.', 'ar_At dignissimos.', '2021-10-18 11:24:04', '2021-10-18 11:24:04', NULL, 6),
(120, 'ar_Voluptatibus.', 'en-Dolorem sit.', 'en-Omnis sunt qui.', 'ar_Laudantium earum.', '2021-10-18 11:24:04', '2021-10-18 11:24:04', NULL, 12),
(121, 'ar_Quasi est ut.', 'en-Exercitationem.', 'en-Molestias corrupti.', 'ar_Possimus ea autem.', '2021-10-18 11:24:04', '2021-10-18 11:24:04', NULL, 26),
(123, 'ar_Quia quo qui.', 'en-Earum culpa.', 'en-Minus libero.', 'ar_Enim consequuntur.', '2021-10-18 11:24:04', '2021-10-18 11:24:04', NULL, 1),
(125, 'ar_Iusto et rem.', 'en-Neque culpa.', 'en-Explicabo dolore.', 'ar_Consequuntur quis.', '2021-10-18 11:24:04', '2021-10-18 11:24:04', NULL, 18),
(126, 'ar_Omnis enim.', 'en-Facere dicta.', 'en-Odio necessitatibus.', 'ar_Ea perspiciatis.', '2021-10-18 11:24:04', '2021-10-18 11:24:04', NULL, 13),
(127, 'ar_Itaque.', 'en-Tempore.', 'en-Qui vitae fugit.', 'ar_Earum sed.', '2021-10-18 11:24:04', '2021-10-18 11:24:04', NULL, 26),
(128, 'ar_Delectus eaque.', 'en-Error.', 'en-Esse aut molestiae.', 'ar_Eum et repellat.', '2021-10-18 11:24:04', '2021-10-18 11:24:04', NULL, 9),
(130, 'ar_Voluptas nulla.', 'en-Quas ipsam sit.', 'en-Totam deserunt.', 'ar_Consequatur.', '2021-10-18 11:24:05', '2021-10-18 11:24:05', NULL, 24),
(132, 'ar_Quo quia.', 'en-Mollitia rerum.', 'en-Perspiciatis.', 'ar_At optio fugiat.', '2021-10-18 11:24:05', '2021-10-18 11:24:05', NULL, 2),
(133, 'ar_Labore.', 'en-Reprehenderit.', 'en-Sequi accusamus.', 'ar_Doloribus delectus.', '2021-10-18 11:24:05', '2021-10-18 11:24:05', NULL, 23),
(138, 'ar_Alias.', 'en-Aut ad modi.', 'en-Sequi sint.', 'ar_Dolorum adipisci.', '2021-10-18 11:24:05', '2021-10-18 11:24:05', NULL, 13),
(139, 'ar_Esse ut dicta.', 'en-Ea recusandae.', 'en-Itaque possimus.', 'ar_Et in nam vel minus.', '2021-10-18 11:24:05', '2021-10-18 11:24:05', NULL, 5),
(142, 'ar_Repudiandae.', 'en-Provident.', 'en-Saepe minima veniam.', 'ar_Sed aut est cumque.', '2021-10-18 11:24:05', '2021-10-18 11:24:05', NULL, 32),
(143, 'ar_Architecto at.', 'en-Rem ipsam.', 'en-Quisquam accusamus.', 'ar_Ut dolores non id.', '2021-10-18 11:24:05', '2021-10-18 11:24:05', NULL, 6),
(144, 'ar_Sed id.', 'en-Et sit nihil.', 'en-Maxime ipsa.', 'ar_Voluptas voluptas.', '2021-10-18 11:24:05', '2021-10-18 11:24:05', NULL, 17),
(145, 'ar_Est est.', 'en-Et excepturi.', 'en-Sint ullam sunt.', 'ar_Provident rerum.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 4),
(146, 'ar_Natus quo.', 'en-Doloremque.', 'en-Quia non voluptate.', 'ar_Occaecati id sequi.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 18),
(148, 'ar_Nam beatae ut.', 'en-Fuga velit.', 'en-Quis ipsum.', 'ar_Ullam quis eaque.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 35),
(150, 'ar_Commodi natus.', 'en-Neque.', 'en-Modi culpa optio.', 'ar_Ab laborum.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 17),
(151, 'ar_Eos natus.', 'en-Consequatur.', 'en-Aut dolores.', 'ar_Sint ducimus dolor.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 8),
(152, 'ar_Natus.', 'en-Qui ducimus.', 'en-Laboriosam est est.', 'ar_Quasi.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 34),
(154, 'ar_Quisquam.', 'en-Saepe adipisci.', 'en-Facilis in.', 'ar_Libero quisquam vel.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 35),
(156, 'ar_Quas ut enim.', 'en-Molestiae.', 'en-Et quisquam est.', 'ar_Repellat laboriosam.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 19),
(157, 'ar_Sit iste.', 'en-Facilis.', 'en-Fugit fugit ea illo.', 'ar_Omnis consequatur.', '2021-10-18 11:24:06', '2021-10-18 11:24:06', NULL, 32),
(162, 'ar_Voluptates.', 'en-Quas.', 'en-Qui nisi qui aut.', 'ar_Quibusdam in.', '2021-10-18 11:24:07', '2021-10-18 11:24:07', NULL, 10),
(163, 'ar_Corporis quam.', 'en-Repellat.', 'en-Hic omnis rerum.', 'ar_A quia quasi.', '2021-10-18 11:24:07', '2021-10-18 11:24:07', NULL, 5),
(166, 'ar_Magnam odit.', 'en-Dolores quidem.', 'en-Ullam nulla impedit.', 'ar_Harum voluptatibus.', '2021-10-18 11:24:08', '2021-10-18 11:24:08', NULL, 23),
(167, 'ar_Nulla ut sit.', 'en-Aut excepturi.', 'en-Perferendis.', 'ar_Dignissimos et.', '2021-10-18 11:24:08', '2021-10-18 11:24:08', NULL, 2),
(169, 'ar_Magni minima.', 'en-Labore nihil.', 'en-Et minus non sunt.', 'ar_Dignissimos.', '2021-10-18 11:24:08', '2021-10-18 11:24:08', NULL, 9),
(170, 'ar_Rerum officiis.', 'en-Aut harum.', 'en-Architecto rerum.', 'ar_Ipsam soluta.', '2021-10-18 11:24:08', '2021-10-18 11:24:08', NULL, 10),
(173, 'ar_Voluptas.', 'en-Ut ut debitis.', 'en-Animi odio et qui.', 'ar_Et qui voluptas sed.', '2021-10-18 11:24:08', '2021-10-18 11:24:08', NULL, 4),
(175, 'ar_Nostrum sequi.', 'en-Blanditiis et.', 'en-Doloribus a dolore.', 'ar_Cupiditate et in et.', '2021-10-18 11:24:08', '2021-10-18 11:24:08', NULL, 32),
(179, 'ar_Dolorem labore.', 'en-Corporis.', 'en-Quos quod quia non.', 'ar_Distinctio pariatur.', '2021-10-18 11:24:09', '2021-10-18 11:24:09', NULL, 21),
(180, 'ar_Impedit.', 'en-Officiis magni.', 'en-Quis debitis est.', 'ar_Asperiores.', '2021-10-18 11:24:09', '2021-10-18 11:24:09', NULL, 27),
(183, 'ar_Id eaque magni.', 'en-Totam autem.', 'en-Qui dolores ut.', 'ar_Sapiente a saepe.', '2021-10-18 11:24:09', '2021-10-18 11:24:09', NULL, 26),
(187, 'ar_Quia et et.', 'en-Quaerat.', 'en-Cupiditate.', 'ar_Non odio enim.', '2021-10-18 11:24:09', '2021-10-18 11:24:09', NULL, 4),
(188, 'ar_Aut reiciendis.', 'en-Error.', 'en-Rerum fugit aut.', 'ar_Cupiditate.', '2021-10-18 11:24:09', '2021-10-18 11:24:09', NULL, 32),
(189, 'ar_Cumque ratione.', 'en-Molestiae.', 'en-Voluptatum.', 'ar_Quae nisi quae.', '2021-10-18 11:24:09', '2021-10-18 11:24:09', NULL, 17),
(190, 'ar_Consequatur.', 'en-Dolor.', 'en-Corrupti omnis ut.', 'ar_Enim explicabo.', '2021-10-18 11:24:10', '2021-10-18 11:24:10', NULL, 20),
(191, 'ar_Sed ut totam.', 'en-Sunt autem.', 'en-Quod qui provident.', 'ar_Maxime autem sit.', '2021-10-18 11:24:10', '2021-10-18 11:24:10', NULL, 14),
(193, 'ar_Quas.', 'en-Delectus quia.', 'en-Vitae.', 'ar_Fuga iste sit harum.', '2021-10-18 11:24:10', '2021-10-18 11:24:10', NULL, 7),
(194, 'ar_Mollitia et.', 'en-Aut sit.', 'en-Distinctio sapiente.', 'ar_Dolor optio.', '2021-10-18 11:24:10', '2021-10-18 11:24:10', NULL, 34),
(196, 'ar_Non autem.', 'en-Reiciendis.', 'en-Ratione quisquam.', 'ar_Aut ullam.', '2021-10-18 11:24:10', '2021-10-18 11:24:10', NULL, 17),
(197, 'ar_Dolorum nihil.', 'en-Ullam error.', 'en-Quasi accusantium.', 'ar_Est provident unde.', '2021-10-18 11:24:10', '2021-10-18 11:24:10', NULL, 4),
(198, 'ar_Temporibus et.', 'en-Qui et sunt.', 'en-Sunt suscipit.', 'ar_Velit dicta.', '2021-10-18 11:24:10', '2021-10-18 11:24:10', NULL, 14),
(199, 'ar_Nisi facilis.', 'en-Dicta.', 'en-Adipisci sunt ea.', 'ar_Ut voluptas vero.', '2021-10-18 11:24:10', '2021-10-18 11:24:10', NULL, 18),
(250, 'ar_Voluptas dolor.', 'en-Odit non sit.', 'en-Esse quo fuga.', 'ar_Reiciendis et quo.', NULL, NULL, NULL, 49),
(251, 'ar_Est aut totam.', 'en-A dicta.', 'en-Molestiae cumque.', 'ar_Et ea perferendis.', NULL, NULL, NULL, 49),
(252, 'ar_Ut tenetur.', 'en-In.', 'en-Enim quibusdam.', 'ar_Totam et architecto.', NULL, NULL, NULL, 49),
(253, 'ar_Temporibus.', 'en-Voluptas illo.', 'en-Consequuntur enim.', 'ar_Ullam quae non et.', NULL, NULL, NULL, 49),
(255, 'ar_Porro est.', 'en-Magnam.', 'en-Molestiae.', 'ar_Tempore et quae.', NULL, NULL, NULL, 50),
(256, 'ar_Velit expedita.', 'en-Et numquam.', 'en-Quia vero placeat.', 'ar_Illum.', NULL, NULL, NULL, 50),
(257, 'ar_Quia dolores.', 'en-Beatae.', 'en-Adipisci occaecati.', 'ar_Et ut non nam non.', NULL, NULL, NULL, 50),
(258, 'ar_Itaque.', 'en-Distinctio.', 'en-Adipisci similique.', 'ar_Perferendis ipsa.', NULL, NULL, NULL, 50),
(259, 'ar_Natus dicta.', 'en-Dicta fugiat.', 'en-Similique quisquam.', 'ar_Perferendis magnam.', NULL, NULL, NULL, 50),
(260, 'ar_Ea vero.', 'en-Error nulla.', 'en-Inventore odio hic.', 'ar_Laborum eveniet.', NULL, NULL, NULL, 50),
(261, 'ar_Tenetur.', 'en-Eaque rerum id.', 'en-Officia laudantium.', 'ar_Ipsam fugiat.', NULL, NULL, NULL, 50),
(262, 'ar_Architecto.', 'en-Qui ea.', 'en-Dolor quam illum.', 'ar_Ut perspiciatis.', NULL, NULL, NULL, 48),
(263, 'ar_Rerum quia.', 'en-Accusamus eos.', 'en-Reprehenderit.', 'ar_Sed aut mollitia.', NULL, NULL, NULL, 48),
(264, 'ar_Molestiae.', 'en-Non magnam.', 'en-Odit sint quis.', 'ar_Aliquid consequatur.', NULL, NULL, NULL, 48),
(265, 'ar_Magni culpa ut.', 'en-Sit ipsum.', 'en-Esse et ipsam.', 'ar_Temporibus.', NULL, NULL, NULL, 48),
(266, 'ar_Et facilis.', 'en-Quae aperiam.', 'en-Quibusdam.', 'ar_Esse itaque quam.', NULL, NULL, NULL, 48),
(267, 'ar_Cupiditate.', 'en-Quae.', 'en-Non qui molestias.', 'ar_Tempore possimus.', NULL, NULL, NULL, 48),
(268, 'ar_Sequi sit unde.', 'en-Delectus sint.', 'en-Alias.', 'ar_Ex voluptate.', NULL, NULL, NULL, 48),
(269, 'ar_Quas dolorem.', 'en-Quasi.', 'en-Tempora.', 'ar_Distinctio officia.', NULL, NULL, NULL, 47),
(270, 'ar_Dolores.', 'en-Dolorem aut.', 'en-Ipsa sit minus.', 'ar_Ullam ea sed fuga.', NULL, NULL, NULL, 47),
(271, 'ar_Quia ad.', 'en-Repellendus.', 'en-Debitis optio.', 'ar_Sit consequatur quo.', NULL, NULL, NULL, 47),
(281, 'ar_Rerum aliquid.', 'en-Laudantium ea.', 'en-Aliquam aperiam.', 'ar_Enim et itaque.', NULL, NULL, NULL, 45),
(282, 'ar_Necessitatibus.', 'en-Quisquam odio.', 'en-Sint sed et nulla.', 'ar_Reprehenderit.', NULL, NULL, NULL, 45),
(283, 'ar_Asperiores ex.', 'en-Odit alias.', 'en-Fuga esse sit.', 'ar_Voluptatem quisquam.', NULL, NULL, NULL, 45),
(284, 'ar_Quidem alias.', 'en-Ducimus.', 'en-Eum id cupiditate.', 'ar_Autem qui rem sit.', NULL, NULL, NULL, 45),
(285, 'ar_Blanditiis.', 'en-Non provident.', 'en-Et accusamus qui.', 'ar_Eligendi sit ipsam.', NULL, NULL, NULL, 45),
(286, 'ar_Cum soluta.', 'en-Aut aut eum.', 'en-Tempore aut.', 'ar_Aliquam aspernatur.', NULL, NULL, NULL, 44),
(287, 'ar_Sunt autem.', 'en-Aut est autem.', 'en-Quos veniam.', 'ar_Recusandae.', NULL, NULL, NULL, 44),
(288, 'ar_Quae qui quas.', 'en-Qui hic sed.', 'en-Nulla harum maiores.', 'ar_Cupiditate sapiente.', NULL, NULL, NULL, 43),
(289, 'ar_Dolor sint.', 'en-Rerum adipisci.', 'en-Eveniet et et.', 'ar_Voluptas molestiae.', NULL, NULL, NULL, 43),
(290, 'ar_Et quod.', 'en-Repellat est.', 'en-Voluptas nemo.', 'ar_Eveniet fugit.', NULL, NULL, NULL, 42),
(291, 'ar_Saepe neque.', 'en-Deserunt.', 'en-Corrupti.', 'ar_Est debitis ut.', NULL, NULL, NULL, 42),
(292, 'ar_Corrupti.', 'en-Nulla.', 'en-Enim explicabo odio.', 'ar_Et ratione est sunt.', NULL, NULL, NULL, 42),
(299, 'ar_Tempora at.', 'en-Explicabo qui.', 'en-Ratione error quam.', 'ar_Voluptatem.', NULL, NULL, NULL, 41),
(300, 'ar_Libero libero.', 'en-Culpa sit.', 'en-Nihil distinctio.', 'ar_Amet aspernatur.', NULL, NULL, NULL, 41),
(301, 'ar_Beatae quam at.', 'en-Modi dolorem.', 'en-Voluptates dolores.', 'ar_Perspiciatis minus.', NULL, NULL, NULL, 41),
(304, 'ar_Nam totam.', 'en-Atque id.', 'en-Ab vel qui optio.', 'ar_Asperiores ut.', NULL, NULL, NULL, 40),
(305, 'ar_Et natus ipsa.', 'en-Nisi veritatis.', 'en-Nihil velit aut.', 'ar_Deleniti assumenda.', NULL, NULL, NULL, 40),
(311, 'ar_Ut saepe qui.', 'en-Et aut autem.', 'en-Corporis dolores.', 'ar_Voluptate ad cumque.', NULL, NULL, NULL, 39),
(312, 'ar_Facere sint ut.', 'en-Ut ut tenetur.', 'en-Nihil omnis id in.', 'ar_Veniam nihil.', NULL, NULL, NULL, 39),
(313, 'ar_Et cumque.', 'en-Eligendi quis.', 'en-Necessitatibus sed.', 'ar_Qui quidem et.', NULL, NULL, NULL, 39),
(314, 'ar_Corporis qui.', 'en-Dolorem illum.', 'en-Eum esse aperiam.', 'ar_Quia ut minima.', NULL, NULL, NULL, 39),
(315, 'ar_Vitae ipsa ex.', 'en-Occaecati non.', 'en-Corporis ullam.', 'ar_Quia quia ut.', NULL, NULL, NULL, 39),
(316, 'ar_Odio eum et.', 'en-Odit laborum.', 'en-Et accusantium.', 'ar_Laboriosam tempore.', NULL, NULL, NULL, 38),
(317, 'ar_Fugit quia.', 'en-Deserunt.', 'en-Ut alias est.', 'ar_Et doloremque ullam.', NULL, NULL, NULL, 38),
(318, 'ar_Et nulla rerum.', 'en-Quidem eum.', 'en-Corrupti doloremque.', 'ar_Perferendis.', NULL, NULL, NULL, 38),
(319, 'ar_Aut quas.', 'en-Omnis.', 'en-Vero voluptas.', 'ar_Omnis eveniet.', NULL, NULL, NULL, 38),
(320, 'ar_Et et eos eos.', 'en-Ratione.', 'en-Qui in natus.', 'ar_Repellat rerum.', NULL, NULL, NULL, 38),
(321, 'ar_Ut recusandae.', 'en-Sapiente iure.', 'en-Cum aliquam.', 'ar_Repellat quia rerum.', NULL, NULL, NULL, 38),
(322, 'ar_Beatae ut.', 'en-Et temporibus.', 'en-Dolorum distinctio.', 'ar_Voluptas voluptatem.', NULL, NULL, NULL, 38),
(340, 'ar_Neque omnis.', 'en-Rem facere.', 'en-Et ut est sunt.', 'ar_Eveniet ratione.', NULL, NULL, NULL, 31),
(341, 'ar_Iusto.', 'en-Voluptas qui.', 'en-Maxime qui.', 'ar_Voluptas voluptates.', NULL, NULL, NULL, 31),
(342, 'ar_Adipisci.', 'en-Sapiente quia.', 'en-Assumenda voluptas.', 'ar_Nihil beatae quo.', NULL, NULL, NULL, 30),
(343, 'ar_Sed voluptatem.', 'en-Sint inventore.', 'en-Possimus sint.', 'ar_Est nostrum officia.', NULL, NULL, NULL, 30),
(344, 'ar_Iure veritatis.', 'en-Blanditiis et.', 'en-Voluptas velit.', 'ar_Pariatur molestiae.', NULL, NULL, NULL, 30),
(345, 'ar_Ducimus illo.', 'en-Dolor.', 'en-Omnis iure qui.', 'ar_Repudiandae.', NULL, NULL, NULL, 30),
(346, 'ar_Ducimus.', 'en-Voluptatem.', 'en-Aut quaerat.', 'ar_Et assumenda.', NULL, NULL, NULL, 30),
(347, 'ar_Sed ea non.', 'en-Omnis illum.', 'en-Exercitationem.', 'ar_Natus nemo dolorem.', NULL, NULL, NULL, 30),
(350, 'ar_Laborum.', 'en-Aliquam in.', 'en-Qui est inventore.', 'ar_Dolor blanditiis.', NULL, NULL, NULL, 29),
(351, 'ar_Magni dolore.', 'en-Qui animi.', 'en-Culpa esse.', 'ar_Suscipit et animi.', NULL, NULL, NULL, 29),
(362, 'ar_Porro ab ut.', 'en-Eum doloribus.', 'en-Asperiores optio.', 'ar_Repudiandae odit.', NULL, NULL, NULL, 46),
(363, 'ar_Natus ipsa.', 'en-Est illum.', 'en-Voluptatibus.', 'ar_Qui unde non.', NULL, NULL, NULL, 46),
(364, 'Kuwait region', 'Kuwait region', 'Kuwait region', 'Kuwait region', NULL, NULL, NULL, 54),
(365, 'ar_Quaerat quia.', 'en-Odio possimus.', 'en-Id eaque omnis.', 'ar_Maiores similique.', NULL, NULL, NULL, 37),
(366, 'ar_Eum sint.', 'en-Corporis velit.', 'en-Omnis ex inventore.', 'ar_Consequuntur quos.', NULL, NULL, NULL, 37),
(367, 'ar_Dolore.', 'en-Numquam illum.', 'en-Reprehenderit rerum.', 'ar_Expedita velit non.', NULL, NULL, NULL, 37),
(368, 'ar_Sed debitis.', 'en-Ad quia.', 'en-Molestiae tenetur.', 'ar_Ea ipsa aliquam.', NULL, NULL, NULL, 37),
(369, 'ar_Aspernatur aut.', 'en-Eum.', 'en-Voluptate et nemo.', 'ar_Consectetur.', NULL, NULL, NULL, 37),
(370, 'ar_Unde ducimus.', 'en-Illum at.', 'en-Voluptas suscipit.', 'ar_Et quis id nam.', NULL, NULL, NULL, 37),
(371, 'ar_Doloribus sed.', 'en-Aut sit nihil.', 'en-Qui voluptas veniam.', 'ar_Est nisi voluptatem.', NULL, NULL, NULL, 25),
(372, 'ar_Qui dicta.', 'en-Autem pariatur.', 'en-Rerum sit eos rerum.', 'ar_Quos veniam commodi.', NULL, NULL, NULL, 25),
(373, 'ar_Odio autem.', 'en-Et et et sequi.', 'en-Est et molestiae.', 'ar_Voluptatem tempore.', NULL, NULL, NULL, 25),
(374, 'ar_Optio odit.', 'en-Labore nulla.', 'en-Blanditiis modi.', 'ar_Et repudiandae.', NULL, NULL, NULL, 25),
(375, 'ar_Explicabo.', 'en-Explicabo.', 'en-Molestiae error.', 'ar_Et dolores et dolor.', NULL, NULL, NULL, 28),
(376, 'ar_Fugit quo.', 'en-Dolores.', 'en-Velit distinctio.', 'ar_Vitae consequatur.', NULL, NULL, NULL, 28),
(377, 'ar_Fugit non.', 'en-Voluptatem.', 'en-At officiis.', 'ar_Dolorem laborum et.', NULL, NULL, NULL, 28),
(378, 'ar_Et unde sint.', 'en-Facere dolores.', 'en-Ea in quas.', 'ar_Ea tenetur cum.', NULL, NULL, NULL, 28),
(379, 'ar_Dolor delectus.', 'en-Id et.', 'en-Quod eveniet magni.', 'ar_Nobis dolor.', NULL, NULL, NULL, 36),
(380, 'ar_Ut nihil modi.', 'en-Non amet ut.', 'en-Mollitia rerum nemo.', 'ar_Quidem sunt.', NULL, NULL, NULL, 36),
(381, 'ar_Cupiditate.', 'en-Qui quos.', 'en-Eveniet saepe.', 'ar_Necessitatibus.', NULL, NULL, NULL, 36),
(382, 'ar_Sunt minima.', 'en-Sunt.', 'en-Voluptates et fugit.', 'ar_Rerum qui dicta.', NULL, NULL, NULL, 36),
(383, 'ar_Est et aliquam.', 'en-Sed iste.', 'en-Magnam dolorem.', 'ar_Aliquam ut quod.', NULL, NULL, NULL, 36),
(384, 'hamzaaa', '2', '2', 'hamza', NULL, NULL, NULL, 53),
(385, 'ar_Omnis aut et.', 'en-Earum et.', 'en-Ut ex dolorum ea.', 'ar_Cumque voluptas.', NULL, NULL, NULL, 33),
(386, 'ar_Commodi fugit.', 'en-Facere quia.', 'en-Deserunt molestiae.', 'ar_Laborum a amet sed.', NULL, NULL, NULL, 33),
(387, 'ar_Iste esse illo.', 'en-Maxime.', 'en-Itaque nemo.', 'ar_Quos distinctio.', NULL, NULL, NULL, 33),
(388, 'ar_Consequatur.', 'en-Repudiandae.', 'en-Tenetur omnis vitae.', 'ar_Sapiente in vel.', NULL, NULL, NULL, 33);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'img_default.jpg',
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  `cover` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'cover_default.jpg',
  `limit_products` int(11) NOT NULL DEFAULT 50,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `date`, `university`, `university_id`, `major`, `img`, `is_active`, `points`, `cover`, `limit_products`, `email_verified_at`, `password`, `remember_token`, `updated_at`, `deleted_at`, `created_at`, `facebook`, `instagram`, `linkedin`, `twitter`) VALUES
(1, 'mahmoud', 'studen@yahoo.com', '0111114448', '2021-11-04', 'University of Cambridge', '011111444', 'Master\'s', '16360626554664377.png', 1, 0, 'cover_16360626557403524.png', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-05 04:50:56', NULL, '2021-10-18 11:34:05', 'facebook.com', 'instagram.com', 'linkedin.com', 'twitter.com'),
(2, 'stuent', 'student@yahoo.com', '0111114448', '2021-10-08', 'University of Cambridge', '4894894894', 'Master\'s', '16360625488924642.png', 1, 1624, 'cover_16350754455396114.jpeg', 50, NULL, '$2y$10$JqlhvXnFBwrqziWyxdXgS.OPz1Ahm6AZLBomwDY4CL//I34lf0joG', '', '2022-04-17 04:24:10', NULL, '2021-10-18 11:34:35', 'https://www.facebook.com/', 'https://www.instagram.com/', 'linkedin.com', 'twitter.com'),
(3, 'xxxxxxxxxxx', 'student2@yahoo.com', '0111114448', '2021-11-04', 'University of Cambridge', '123456789', 'Master\'s', '16360624207878119.png', 1, 0, 'cover_16360624207638700.png', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-05 04:47:33', NULL, '2021-10-18 11:34:43', 'facebook.com', 'instagram.com', 'linkedin.com', 'twitter.com'),
(4, 'xstuent', 'student3@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', NULL, 'Master\'s', '1636062367762131.png', 1, 55, 'cover_16360623677642094.png', 55, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-05 04:46:08', NULL, '2021-10-18 11:34:47', NULL, NULL, NULL, NULL),
(6, 'stuent', 'student15@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', NULL, 'Master\'s', '16360623034576989.png', 1, 0, 'cover_16360623037672435.png', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-05 04:45:04', NULL, '2021-10-25 15:21:53', NULL, NULL, NULL, NULL),
(7, 'stuent', 'student18@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', NULL, 'Master\'s', '16360621712194947.png', 1, 0, 'cover_16360621724901185.png', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-05 04:42:53', NULL, '2021-10-25 16:00:46', NULL, NULL, NULL, NULL),
(8, 'stuent', 'student19@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', NULL, 'Master\'s', '16360621202743784.png', 1, 0, 'cover_16360621218746334.png', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-05 04:42:02', NULL, '2021-10-25 16:10:11', NULL, NULL, NULL, NULL),
(11, 'vvhv', 'hvjhvhv3@mss.com', '1216126149', '5554-05-12', '59595', NULL, '94494', '16360620323287335.png', 1, 10, 'cover_16360620346392717.png', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-05 04:40:35', NULL, '2021-10-25 22:26:40', NULL, NULL, NULL, NULL),
(12, 'vvhv', '49498@mss.com', '1216126149', '5554-05-12', '59595', NULL, '94494', 'img_default.jpg', 1, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-25 22:32:39', '2021-10-25 22:32:39', '2021-10-25 22:26:55', NULL, NULL, NULL, NULL),
(13, 'stuent', 'student20@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', NULL, 'Master\'s', '16360618055289166.png', 1, 18, 'cover_16360618071923745.png', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-23 23:13:54', NULL, '2021-10-25 22:30:09', NULL, NULL, NULL, NULL),
(14, 'stuent', 'student22@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', NULL, 'Master\'s', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-26 13:28:43', NULL, '2021-10-26 13:28:43', NULL, NULL, NULL, NULL),
(15, 'stuent', 'student23@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', '848949848949', 'Master\'s', '16360617213727054.png', 1, 0, 'cover_16360617222706550.png', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-05 04:35:23', NULL, '2021-10-26 13:29:34', NULL, NULL, NULL, NULL),
(16, 'stuent', 'student16@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', '123456789', 'Master\'s', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-28 07:35:26', NULL, '2021-10-28 07:35:26', NULL, NULL, NULL, NULL),
(17, 'stuent', 'student12346@yahoo.com', '0111114448', '6-6-1996', 'University of Cambridge', '123456789', 'Master\'s', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-29 02:07:55', NULL, '2021-10-29 02:07:55', NULL, NULL, NULL, NULL),
(18, 'stuent', 'hsmzatuiuy578@gmail.com', '0111114448', '6-6-1996', 'University of Cambridge', '123456789', 'Master\'s', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-29 02:12:04', NULL, '2021-10-29 02:12:04', NULL, NULL, NULL, NULL),
(19, 'stuent', 'asdasd@gmail.com', '01204561567293', '29-10-2021', 'hjasdasdasd', '01204564883', 'cgasdasdas', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-29 02:14:01', NULL, '2021-10-29 02:14:01', NULL, NULL, NULL, NULL),
(20, 'stuent', 'sdssdasd@gmail.com', '01204561567293', '29-10-2021', 'hjasdasdasd', '01204564883', 'cgasdasdas', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-29 02:14:42', NULL, '2021-10-29 02:14:42', NULL, NULL, NULL, NULL),
(21, 'kxnxmxjbb', 'sfhhfg@gmail.com', '01143953424', '29-10-2021', 'hjhfgggbblhggbg', '01143953424', 'cghbvgbhhvg', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-29 02:16:37', NULL, '2021-10-29 02:16:37', NULL, NULL, NULL, NULL),
(22, 'kxnxmxjbb', 'sfhhfg1@gmail.com', '01143953424', '29-10-2021', 'hjhfgggbblhggbg', '01143953424', 'cghbvgbhhvg', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-29 02:17:19', NULL, '2021-10-29 02:17:19', NULL, NULL, NULL, NULL),
(23, 'kxnxmxjbb', 'sfh21@gmail.com', '01143953424', '29-10-2021', 'hjhfgggbblhggbg', '01143953424', 'cghbvgbhhvg', 'img_default.jpg', 0, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-10-29 02:36:06', NULL, '2021-10-29 02:36:06', NULL, NULL, NULL, NULL),
(24, 'kxnxmxjbb', 'sfh121@gmail.com', '01143953424', '29-10-2021', 'hjhfgggbblhggbg', '011439534245', 'cghbvgbhhvg', 'img_default.jpg', 1, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-21 18:17:17', NULL, '2021-10-29 02:38:32', NULL, NULL, NULL, NULL),
(25, 'hamza', 'hamza@gmail.com', '01143953424', '29-10-2021', 'hamza uni', '01143953424', 'hamza major', 'img_default.jpg', 1, 4532, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-21 18:17:17', NULL, '2021-10-29 02:40:24', NULL, NULL, NULL, NULL),
(26, 'hamza', 'hamza1@gmail.com', '01143953424', '29-10-2021', 'hamza uni', '01143953424', 'hamza major', 'img_default.jpg', 1, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-21 18:17:15', NULL, '2021-10-29 02:41:10', NULL, NULL, NULL, NULL),
(27, 'hamza', 'hamza2@gmail.com', '01143953424', '29-10-2021', 'hamza uni', '01143953424', 'hamza major', 'img_default.jpg', 1, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-21 18:17:14', NULL, '2021-10-29 02:43:33', NULL, NULL, NULL, NULL),
(28, 'hamza', 'hamza3@gmail.com', '01143953424', '29-10-2021', 'hamza uni', '01143953424', 'hamza major', 'img_default.jpg', 1, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-21 18:17:13', NULL, '2021-10-29 02:43:47', NULL, NULL, NULL, NULL),
(29, 'hamza', 'hamza4@gmail.com', '01143953424', '29-10-2021', 'hamza uni', '201801270', 'hamza major', 'img_default.jpg', 1, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-21 18:17:12', NULL, '2021-10-29 02:44:31', NULL, NULL, NULL, NULL),
(30, 'hamza', 'hamzae@gmail.com', '01143953424', '29-10-2021', 'hamza uni', '201801270', 'hamza major', 'img_default.jpg', 1, 0, 'cover_default.jpg', 50, NULL, '$2y$10$JwbZFPqB0LVI1I6CZqgdDeqrg.wkjxSEZsHaNuItWTbJ0vIslhh7m', NULL, '2021-11-21 18:17:11', NULL, '2021-10-29 02:46:43', NULL, NULL, NULL, NULL),
(31, 'bluezone6/11', 'blue.@gmail.com', '123456789', '02-11-2000', 'dfg', '555', 'fg', 'img_default.jpg', 1, 0, 'cover_default.jpg', 50, NULL, '$2y$10$jZrE0zR4CXGZTgP0Xce6V.LZpZTabgSy/RL7rdnH6Yu7u6wLiXMuq', NULL, '2021-11-21 18:17:10', NULL, '2021-11-06 17:45:29', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_password_resets`
--

CREATE TABLE `student_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_password_resets`
--

INSERT INTO `student_password_resets` (`email`, `token`, `created_at`) VALUES
('student23@yahoo.com', '$2y$10$cZoMo63BpiKTh3ZeqkKMP.WTjKRgIhzADZwWSO5u1mMEkzEIhN3RG', '2021-11-04 23:03:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `is_admin`, `email_verified_at`, `device_token`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `password`) VALUES
(1, 'Norma Lynch II', 'ebony74@example.com', '423-606-4001', 1, '2021-10-18 11:23:13', NULL, 'GXeKUR5EIK', NULL, '2021-10-18 11:23:13', '2021-10-18 11:23:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(2, 'Lisa Gutkowski', 'randal.klein@example.net', '559-683-8294', 1, '2021-10-18 11:23:13', NULL, 'OpAw56G5JC', NULL, '2021-10-18 11:23:14', '2021-10-18 11:23:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(3, 'Abdul Kerluke', 'kwaelchi@example.com', '+1-562-210-4154', 0, '2021-10-18 11:23:13', NULL, 'FPHC2p9iSm', NULL, '2021-10-18 11:23:14', '2021-10-18 11:23:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(4, 'Araceli Bradtke', 'okon.jackie@example.net', '+13527907323', 0, '2021-10-18 11:23:13', NULL, 'JlP5gwi3if', NULL, '2021-10-18 11:23:14', '2021-10-18 11:23:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(5, 'Prof. Athena Grimes Jr.', 'toby.vonrueden@example.org', '(747) 781-8921', 1, '2021-10-18 11:23:13', NULL, 'KaISueStQn', NULL, '2021-10-18 11:23:14', '2021-10-18 11:23:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(6, 'Mr. Will Altenwerth', 'koepp.meagan@example.com', '+17278739731', 1, '2021-10-18 11:23:13', NULL, 'iQ7dav2aZz', NULL, '2021-10-18 11:23:14', '2021-10-18 11:23:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(7, 'Asha Purdy', 'chanel90@example.org', '+14799396979', 1, '2021-10-18 11:23:13', NULL, 'Hvs01lgOh9', NULL, '2021-10-18 11:23:14', '2021-10-18 11:23:14', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(8, 'Miss Alexandria Rowe', 'brenda75@example.net', '256-976-6126', 1, '2021-10-18 11:23:13', NULL, 'QShFtn9fe5', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(9, 'Prof. Milford Daugherty I', 'iwilliamson@example.org', '(737) 512-6515', 0, '2021-10-18 11:23:13', NULL, '0V55JPlbVq', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(10, 'Dr. Halie Mohr Sr.', 'ddibbert@example.net', '1-458-317-8927', 1, '2021-10-18 11:23:13', NULL, 'BwtbZPwrQs', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(11, 'Rhoda Bauch Jr.', 'kade68@example.com', '+1-651-320-5089', 0, '2021-10-18 11:23:13', NULL, 'bf4pf5B6ge', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(12, 'Olga Reilly', 'sibyl.hansen@example.com', '1-302-246-7913', 0, '2021-10-18 11:23:13', NULL, '0GlKpXMzHd', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(13, 'Lexus Hayes', 'gonzalo22@example.org', '+19374146970', 1, '2021-10-18 11:23:13', NULL, 'AJ0agudjGu', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(14, 'Brooklyn Roob', 'alejandra.hoppe@example.org', '+1 (231) 581-5304', 0, '2021-10-18 11:23:13', NULL, '83Vycf2kUf', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(15, 'Romaine Rodriguez', 'lilian.swaniawski@example.com', '+12165680609', 1, '2021-10-18 11:23:13', NULL, 'oJTpoNuA4h', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(16, 'Buck Wuckert V', 'cdavis@example.net', '+1.316.342.1298', 1, '2021-10-18 11:23:13', NULL, 'BAXVkIfS6k', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(17, 'Maeve Cruickshank', 'pschinner@example.org', '+17166667337', 0, '2021-10-18 11:23:13', NULL, 'WTyxuU9g0Q', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(18, 'Cora McGlynn', 'marc.cruickshank@example.net', '+1.240.422.7983', 1, '2021-10-18 11:23:13', NULL, '3RbN8x5nGi', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(19, 'Destany Bailey Jr.', 'kutch.carlo@example.org', '321.472.4526', 0, '2021-10-18 11:23:13', NULL, 'oYPDsChAmB', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(20, 'Blanche Kihn PhD', 'garret.vandervort@example.net', '(865) 428-1172', 0, '2021-10-18 11:23:13', NULL, '9xVBEidq1q', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(21, 'Godfrey Runolfsson', 'dedric.okon@example.com', '1-984-439-0572', 0, '2021-10-18 11:23:13', NULL, 'wJFghZF6Wr', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(22, 'Cristobal Kunze', 'reilly.gaetano@example.com', '+1-828-317-3380', 1, '2021-10-18 11:23:13', NULL, 'H8g8qRkCcb', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(23, 'Yadira Schinner', 'oreilly.tressie@example.org', '781.252.9580', 1, '2021-10-18 11:23:13', NULL, 'PFxt1Roec6', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(24, 'Marjory Bayer II', 'gmann@example.com', '+15075473840', 0, '2021-10-18 11:23:13', NULL, 'FjcCxPaGwD', NULL, '2021-10-18 11:23:15', '2021-10-18 11:23:15', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(25, 'Emelie Pfannerstill', 'heller.christopher@example.com', '223-502-4256', 1, '2021-10-18 11:23:13', NULL, 'etMLv9fb6D', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(26, 'Orion Becker', 'quinton46@example.net', '+1.914.347.4959', 0, '2021-10-18 11:23:13', NULL, 'gfzbEl6Ejq', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(27, 'Ernest Schneider Jr.', 'dsipes@example.org', '(747) 341-8496', 0, '2021-10-18 11:23:13', NULL, '0odLqjUHhL', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(28, 'Rocky Mills DVM', 'jstoltenberg@example.net', '240.655.2658', 1, '2021-10-18 11:23:13', NULL, 'uy7EMbfJzn', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(29, 'Eli Hayes', 'dickens.aylin@example.com', '361.975.7501', 1, '2021-10-18 11:23:13', NULL, 'b62L754sY3', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(30, 'Jedidiah Rowe', 'cormier.pablo@example.org', '1-773-908-1714', 1, '2021-10-18 11:23:13', NULL, '9MDtEn3pMy', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(31, 'Chaim Feeney', 'carlotta97@example.net', '747.626.0920', 0, '2021-10-18 11:23:13', NULL, 'tk0KxGMUul', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(32, 'Prof. Whitney Turner DVM', 'tjohns@example.net', '(804) 271-9891', 1, '2021-10-18 11:23:13', NULL, 'j0Pc50BUHI', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(33, 'Burdette Padberg', 'drowe@example.com', '+1 (661) 530-7309', 1, '2021-10-18 11:23:13', NULL, 'I9dfgSfMBy', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(34, 'Augustus Littel DVM', 'bkeebler@example.com', '1-726-897-4549', 1, '2021-10-18 11:23:13', NULL, 'OucqNrj1jI', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(35, 'Art Ullrich', 'ktillman@example.org', '1-504-973-8536', 0, '2021-10-18 11:23:13', NULL, 'FHVvSa8LCs', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(36, 'Juvenal Skiles DDS', 'brendon.spinka@example.net', '+1-830-989-7263', 0, '2021-10-18 11:23:13', NULL, '9v2vRBnwIB', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(37, 'Dr. Jess Baumbach Sr.', 'bradley.parisian@example.net', '(832) 537-3147', 1, '2021-10-18 11:23:13', NULL, 'UfIZvgp640', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(38, 'Dr. Cleveland Stokes', 'legros.verdie@example.com', '870.908.8350', 0, '2021-10-18 11:23:13', NULL, 'nz6Ll94uZU', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(39, 'Colton Weber', 'kayley14@example.net', '+1 (458) 700-1805', 1, '2021-10-18 11:23:13', NULL, 'ubIumxB0m3', NULL, '2021-10-18 11:23:16', '2021-10-18 11:23:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(40, 'Carmen Gusikowski', 'sammy54@example.org', '+15632002513', 1, '2021-10-18 11:23:13', NULL, 'PiHB4l9v0G', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(41, 'Addison Bradtke', 'marcelino.roob@example.com', '+1-360-553-0957', 0, '2021-10-18 11:23:13', NULL, '3ZGppBvQhg', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(42, 'Cloyd Monahan', 'fredy12@example.com', '1-601-646-0879', 1, '2021-10-18 11:23:13', NULL, 'MSgPhNrDWK', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(43, 'Prof. Rodolfo Armstrong DVM', 'schultz.assunta@example.org', '628.756.2264', 1, '2021-10-18 11:23:13', NULL, 'zzn6qhdvZD', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(44, 'Ibrahim Ferry', 'jlebsack@example.net', '+1-563-325-3366', 0, '2021-10-18 11:23:13', NULL, 'B3vi7pORWx', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(45, 'Dr. Martin Grant', 'uortiz@example.com', '956.445.9111', 1, '2021-10-18 11:23:13', NULL, 'IpF6MATFEt', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(46, 'Jackson Gislason', 'emile51@example.org', '+1-757-339-1019', 0, '2021-10-18 11:23:13', NULL, 'R4r8Z6T6J9', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(47, 'Dane Rohan', 'preinger@example.org', '+1-689-772-6055', 0, '2021-10-18 11:23:13', NULL, 'SRLDxHG93d', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(48, 'Karolann Bins', 'patience.roob@example.org', '1-346-342-3998', 1, '2021-10-18 11:23:13', NULL, 'FRWaEAzLK3', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(49, 'Madyson Lindgren', 'nkihn@example.com', '781.909.5118', 0, '2021-10-18 11:23:13', NULL, 'smbYc80vE5', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(50, 'Okey Rutherford', 'wwalter@example.org', '+1-832-300-2028', 1, '2021-10-18 11:23:13', NULL, 'KrJtuHUOGS', NULL, '2021-10-18 11:23:17', '2021-10-18 11:23:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(51, 'api test', 'api31@test.com', '0111112132220', 0, NULL, NULL, NULL, NULL, '2021-10-18 11:52:34', '2021-10-18 11:52:34', '$2y$10$vAdA2oMdXQlTUxLX.AP.6ewU5Un.HwOEfe6tPEezaCaTbDtixXg8a'),
(52, 'api test', 'api33@test.com', '0111112132222', 0, NULL, '64884894894894984894984984', NULL, NULL, '2021-10-18 22:11:06', '2021-10-26 16:21:46', '$2y$10$bItjJMAa/fJR2BviVJyjXeunMl2ObhTK19Pt.47Mhx8nzJtcUl1ne'),
(53, 'nknknkn', 'mm@mm.com', '011111111', 0, NULL, NULL, NULL, NULL, '2021-10-25 21:51:02', '2021-10-25 21:51:02', '$2y$10$.FbYBvyGFrvI6LgmcEiyseYLT.lfVGGW5zXufaY3VARDh7DQ8.qJu'),
(54, 'تلاتنلا', 'mm@mm.co', '01111111', 0, NULL, NULL, NULL, NULL, '2021-10-25 21:59:06', '2021-10-25 21:59:06', '$2y$10$c7ICFr7Cq7SH410Z3h7fPOKD54x9oBUD0FtqWSNiZaLBdCbUkhwQG'),
(57, 'hamza', 'hamzasecoo@gmail.com', '01204561567', 0, NULL, '', NULL, NULL, '2021-10-29 03:56:30', '2021-11-07 18:02:18', '$2y$10$Ty/Y5Ygkk7eVV7YMffJefOzPOX9y88Ta6rlFWeIZbToap28Rxw4LW'),
(58, 'hamza', 'hamzasecoo1@gmail.com', '01204561566', 0, NULL, NULL, NULL, NULL, '2021-10-29 04:07:14', '2021-10-29 04:07:14', '$2y$10$HW/WK5zaCuMTNk00Yl0v..KQxRKxv.w8utklIN333vcE.37jpBqu2'),
(59, 'hamza', 'hamzasecoo@gmail', '012045615675', 0, NULL, NULL, NULL, NULL, '2021-10-29 04:29:27', '2021-10-29 04:29:27', '$2y$10$aSX2EzD8V/D/WmeedBAM8ep4ig3Dz5jSfsmlBp9Nxhg8fhZD7SiVy'),
(60, 'hamza', 'hamzasecoo2@gmail.com', '0120456156755', 0, NULL, '', NULL, NULL, '2021-10-29 04:30:31', '2021-11-14 05:11:05', '$2y$10$uAPvNI.03OLzJZg4BmXkrubbmN4Cb1yQe2Dp5sXzBXLv.mr/b3Hp6'),
(61, 'hamza', 'hamzasecoog2@gmail.com', '01204561567555', 0, NULL, NULL, NULL, NULL, '2021-10-29 07:34:49', '2021-10-29 07:34:49', '$2y$10$AXFX0X5dybt9OkTvQZzop.FC9fnRVC9pQvZkCkkPK.NwPkN739cUm'),
(62, 'api test', 'api36@test.com', '0111112132226', 0, NULL, NULL, NULL, NULL, '2021-10-29 08:08:05', '2021-10-29 08:08:05', '$2y$10$vG4fPsfpyZAvfSUxY0E8cuMHN9.Qy/Y7pIDyKKgEjQNgquOm8eUPC'),
(63, 'api test', 'api38@test.com', '01111121324', 0, NULL, NULL, NULL, NULL, '2021-10-29 08:08:47', '2021-10-29 08:08:47', '$2y$10$Ku7KdDQuJkdpcSxU1MbbBeJVoJt0XaF9KvK/DINCSRaWNE9.tV9XW'),
(64, 'api test', 'api42@test.com', '0111112132452', 0, NULL, '', NULL, NULL, '2021-10-31 08:06:01', '2021-10-31 08:06:11', '$2y$10$F9ljq2ry1kYzlLLGVysIG.GLgSwCeeFhJR01JD4LSlFWYF0xOom9e'),
(65, 'ahmed', 'ahmed@gmail.com', '0120456123', 0, NULL, '', NULL, NULL, '2021-11-08 20:35:19', '2021-11-08 20:36:21', '$2y$10$GvEMWF9dV6GmfhuBiASPRuejnxoUqWut4h5QoxmjK/A9QIXKfZPKW'),
(66, 'ahmed', 'testbluezone@gmail.com', '0120451234', 0, NULL, '', NULL, NULL, '2021-11-08 20:37:21', '2021-11-08 20:38:56', '$2y$10$ngl1qcNvZ9XzOMjgydcw4.tq.K2Jhr894OVuRz5ODqnD6zcYBv6Pi'),
(67, 'Mohamed', 'mo.esmael2019@gmail.com', '01146469865', 0, NULL, NULL, NULL, NULL, '2021-11-15 05:13:01', '2021-11-15 05:13:01', '$2y$10$mlxQrZ4qFXJCFmX2o9IcmuwJYtLWHs.QykdmcgN7gOwiW0tXXD1im'),
(68, 'AHMED', 'eng.ah2019@gmail.com', '99427261', 0, NULL, '', NULL, NULL, '2021-11-15 21:20:19', '2021-11-15 21:21:35', '$2y$10$3gsTQPCvGZb6PZmvth4SHuOhN7hclvSzO9VBlEEVoKb8OFKagewe2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_role_id_foreign` (`role_id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_country_id_foreign` (`country_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kurlies`
--
ALTER TABLE `kurlies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kurlies_product_id_foreign` (`product_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_product_id_foreign` (`product_id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `option_values_option_id_foreign` (`option_id`),
  ADD KEY `option_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_shipping_address_id_foreign` (`shipping_address_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_product_id_foreign` (`product_id`),
  ADD KEY `product_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_order_product_id_foreign` (`product_id`),
  ADD KEY `product_order_order_id_foreign` (`order_id`);

--
-- Indexes for table `product_student`
--
ALTER TABLE `product_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_student_product_id_foreign` (`product_id`),
  ADD KEY `product_student_student_id_foreign` (`student_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_product_id_foreign` (`product_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permission_role_id_foreign` (`role_id`),
  ADD KEY `role_permission_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_addresses_user_id_foreign` (`user_id`),
  ADD KEY `shipping_addresses_area_id_foreign` (`area_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statements`
--
ALTER TABLE `statements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statements_product_id_foreign` (`product_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

--
-- Indexes for table `student_password_resets`
--
ALTER TABLE `student_password_resets`
  ADD KEY `student_password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kurlies`
--
ALTER TABLE `kurlies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `product_student`
--
ALTER TABLE `product_student`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `statements`
--
ALTER TABLE `statements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=389;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kurlies`
--
ALTER TABLE `kurlies`
  ADD CONSTRAINT `kurlies_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `option_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_shipping_address_id_foreign` FOREIGN KEY (`shipping_address_id`) REFERENCES `shipping_addresses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD CONSTRAINT `product_attribute_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_attribute_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_category_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_student`
--
ALTER TABLE `product_student`
  ADD CONSTRAINT `product_student_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD CONSTRAINT `role_permission_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD CONSTRAINT `shipping_addresses_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `shipping_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `statements`
--
ALTER TABLE `statements`
  ADD CONSTRAINT `statements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
