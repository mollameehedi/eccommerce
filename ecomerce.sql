-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 08:54 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sohanthink`
--

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phon_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `name`, `email`, `phon_number`, `country`, `city`, `address`, `zip_code`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-29 15:39:38', NULL),
(2, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-29 16:49:53', NULL),
(3, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-29 16:51:22', NULL),
(4, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-29 16:51:50', NULL),
(5, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-29 16:53:01', NULL),
(6, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-29 16:54:25', NULL),
(7, 'user2', 'like62277@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-29 16:58:40', NULL),
(8, 'user2', 'like62277@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-29 17:00:35', NULL),
(9, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:26:42', NULL),
(10, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:28:16', NULL),
(11, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:28:44', NULL),
(12, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:29:51', NULL),
(13, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:31:50', NULL),
(14, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:33:53', NULL),
(15, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:35:01', NULL),
(16, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:37:00', NULL),
(17, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:37:39', NULL),
(18, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:38:24', NULL),
(19, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:38:39', NULL),
(20, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', NULL, '2021-04-30 00:44:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genareted_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `genareted_id`, `product_id`, `product_quantity`, `created_at`, `updated_at`) VALUES
(12, 'tjALd0J251', 2, 1, '2021-04-30 00:27:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactmessages`
--

CREATE TABLE `contactmessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactmessages`
--

INSERT INTO `contactmessages` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'developer sohan', 'mahadi@gmail.com', 'sadf', 'asdfasdf', NULL, NULL),
(2, 'developer sohan', 'mahadi@gmail.com', 'sadf', 'asdfasdf', '2021-04-28 00:08:07', NULL),
(3, 'developer sohan', 'mahadi@gmail.com', 'sadf', 'asdfasdf', '2021-04-28 00:10:36', NULL),
(4, 'developer sohan', 'mahadi@gmail.com', 'sadf', 'asdfasdf', '2021-04-28 00:10:46', NULL),
(5, 'admin', 'admin@gmail.com', 'asdfasd', 'fasdf', '2021-04-28 00:11:28', NULL),
(6, 'admin', 'admin@gmail.com', 'asdfasd', 'fasdf', '2021-04-28 00:12:10', NULL),
(7, 'admin', 'admin@gmail.com', 'asdfasd', 'fasdf', '2021-04-28 00:12:55', NULL),
(8, 'admin', 'admin@gmail.com', 'asdf', 'klhlkhlkh', '2021-04-28 02:31:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_28_055957_create_contactmessages_table', 2),
(7, '2021_04_28_161531_create_products_table', 3),
(12, '2014_10_12_000000_create_users_table', 5),
(13, '2021_04_28_175453_create_carts_table', 6),
(24, '2021_04_29_201306_create_billings_table', 7),
(25, '2021_04_29_201546_create_shippings_table', 7),
(26, '2021_04_29_211615_create_orders_table', 7),
(27, '2021_04_29_211801_create_order_details_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` double(8,2) NOT NULL,
  `payment_option` int(11) NOT NULL,
  `billing_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total`, `payment_option`, `billing_id`, `shipping_id`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 8, 785.00, 2, 1, 1, 1, '2021-04-29 15:39:38', NULL),
(2, 8, 25.00, 1, 2, 2, 1, '2021-04-29 16:49:53', NULL),
(3, 8, 25.00, 1, 3, 3, 1, '2021-04-29 16:51:22', NULL),
(4, 8, 25.00, 1, 4, 4, 1, '2021-04-29 16:51:50', NULL),
(5, 8, 25.00, 1, 5, 5, 1, '2021-04-29 16:53:01', NULL),
(6, 8, 25.00, 1, 6, 6, 1, '2021-04-29 16:54:25', NULL),
(7, 8, 75.00, 2, 7, 7, 1, '2021-04-29 16:58:40', NULL),
(8, 8, 75.00, 2, 8, 8, 1, '2021-04-29 17:00:35', NULL),
(9, 9, 25.00, 2, 9, 9, 1, '2021-04-30 00:26:42', NULL),
(10, 9, 25.00, 1, 10, 10, 1, '2021-04-30 00:28:16', NULL),
(11, 9, 25.00, 1, 11, 11, 1, '2021-04-30 00:28:44', NULL),
(12, 9, 25.00, 1, 12, 12, 1, '2021-04-30 00:29:51', NULL),
(13, 9, 25.00, 1, 13, 13, 1, '2021-04-30 00:31:50', NULL),
(14, 9, 25.00, 1, 14, 14, 1, '2021-04-30 00:33:53', NULL),
(15, 9, 25.00, 1, 15, 15, 1, '2021-04-30 00:35:01', NULL),
(16, 9, 25.00, 1, 16, 16, 1, '2021-04-30 00:37:00', NULL),
(17, 9, 25.00, 1, 17, 17, 1, '2021-04-30 00:37:39', NULL),
(18, 9, 25.00, 1, 18, 18, 1, '2021-04-30 00:38:24', NULL),
(19, 9, 25.00, 1, 19, 19, 1, '2021-04-30 00:38:39', NULL),
(20, 9, 25.00, 2, 20, 20, 1, '2021-04-30 00:44:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `review` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `user_id`, `product_id`, `product_quantity`, `product_price`, `review`, `stars`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 1, 3, 220, NULL, NULL, '2021-04-29 15:39:38', NULL),
(2, 1, 8, 2, 5, 25, NULL, NULL, '2021-04-29 15:39:38', NULL),
(3, 2, 8, 2, 1, 25, NULL, NULL, '2021-04-29 16:49:53', NULL),
(4, 3, 8, 2, 1, 25, NULL, NULL, '2021-04-29 16:51:22', NULL),
(5, 4, 8, 2, 1, 25, NULL, NULL, '2021-04-29 16:51:50', NULL),
(6, 5, 8, 2, 1, 25, NULL, NULL, '2021-04-29 16:53:01', NULL),
(7, 6, 8, 2, 1, 25, NULL, NULL, '2021-04-29 16:54:25', NULL),
(8, 7, 8, 2, 3, 25, NULL, NULL, '2021-04-29 16:58:40', NULL),
(9, 9, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:26:42', NULL),
(10, 10, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:28:16', NULL),
(11, 11, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:28:44', NULL),
(12, 12, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:29:51', NULL),
(13, 13, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:31:50', NULL),
(14, 14, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:33:53', NULL),
(15, 15, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:35:01', NULL),
(16, 16, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:37:00', NULL),
(17, 17, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:37:39', NULL),
(18, 18, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:38:24', NULL),
(19, 19, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:38:39', NULL),
(20, 20, 9, 2, 1, 25, NULL, NULL, '2021-04-30 00:44:12', NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_short_decription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_decription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_thambnaill_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product_thambnaill_photo.png',
  `slug_link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_short_decription`, `product_long_decription`, `product_price`, `product_thambnaill_photo`, `slug_link`, `created_at`, `updated_at`) VALUES
(1, 'Nature Honey', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs', 'we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain.', 220, 'product_thambnaill_photo.png', 'Nature-Honey', NULL, NULL),
(2, 'Sunrise Oil', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs', 25, 'product_thambnaill_photo.png', 'Sunrise-Oil', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_phon_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `shipping_name`, `shipping_email`, `shipping_phon_number`, `shipping_country`, `shipping_city`, `shipping_address`, `shipping_zip_code`, `created_at`, `updated_at`) VALUES
(1, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-29 15:39:38', NULL),
(2, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-29 16:49:53', NULL),
(3, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-29 16:51:22', NULL),
(4, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-29 16:51:50', NULL),
(5, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-29 16:53:01', NULL),
(6, 'user2', 'user2@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-29 16:54:25', NULL),
(7, 'user2', 'like62277@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-29 16:58:40', NULL),
(8, 'user2', 'like62277@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-29 17:00:35', NULL),
(9, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:26:42', NULL),
(10, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:28:16', NULL),
(11, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:28:44', NULL),
(12, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:29:51', NULL),
(13, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:31:50', NULL),
(14, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:33:53', NULL),
(15, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:35:01', NULL),
(16, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:37:00', NULL),
(17, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:37:39', NULL),
(18, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:38:24', NULL),
(19, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:38:39', NULL),
(20, 'user', 'user3@gmail.com', '0185556', 'fgjhfghj', 'fgjh', 'fghjfjh', 'fghj', '2021-04-30 00:44:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `role` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `profile_photo`, `role`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'mmmehediislam0186@gmail.com', '2021-04-11 21:08:22', '$2y$10$KUYgM9IRaT/C.TidqSp./.XnnXGsFp6oCGl51yCB9bpknudnjMgcG', NULL, 'default.png', 2, '2021-04-28 15:03:08', NULL),
(2, 'admin', 'admin@gmail.com', '2021-04-01 13:49:18', '$2y$10$eZqDOo8bOAwmHo4cCsIkqueJ2XRUAqLyrinMe0eX7Z0YGZwz6GtiG', NULL, 'default.png', 1, '2021-04-28 15:11:42', NULL),
(4, 'mehedi', 'mehedi@gmail.com', '2021-03-31 18:31:51', '$2y$10$w8pRIEfK/fiy3GJbOghUceSh/gU56TzehkwlorCT/ln2w/Tx/8aCm', NULL, 'default.png', 2, '2021-04-28 15:12:28', NULL),
(5, 'user', 'user@gmail.com', '2021-03-31 18:31:48', '2', NULL, 'default.png', 1, '2021-04-28 15:19:16', '2021-04-28 15:19:16'),
(6, 'user', 'mehed4i@gmail.com', '2021-03-31 18:31:17', '$2y$10$NPJ4eUiRxusQplZg3CA4eOs91e907lp19qEilncMEQx5RGwvnBcKG', NULL, 'default.png', 1, '2021-04-28 15:20:45', '2021-04-28 15:20:45'),
(8, 'user2', 'like62277@gmail.com', '2021-04-01 18:31:13', '$2y$10$vYKGu3yfUcdIGMrzfNwM6uFsRltKxD1Rau/0c572Z41wLxXM4tXFq', NULL, 'default.png', 2, '2021-04-29 11:49:34', '2021-04-29 12:32:23'),
(9, 'user', 'user3@gmail.com', '2021-03-31 18:30:06', '$2y$10$6GI8qdN43RsTO4E3EDJoJOSbA3Ywz30dxXp669bpazfR718ULBiA2', NULL, 'default.png', 2, '2021-04-29 11:50:30', NULL),
(10, 'user', 'user4@gmail.com', '2021-03-31 18:14:26', '$2y$10$nef0t7rL32Zo25Jn92rt/eA.sDInS8QpVPdXHczPX.18zIo8LyZ36', NULL, 'default.png', 2, '2021-04-29 11:51:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactmessages`
--
ALTER TABLE `contactmessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactmessages`
--
ALTER TABLE `contactmessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
