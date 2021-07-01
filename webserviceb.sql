-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 12:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webserviceb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', '2021-05-27 19:55:58', '2021-06-18 17:45:12'),
(2, 'Handphone', '2021-05-27 19:58:21', '2021-06-18 17:45:24'),
(3, 'Kamera', '2021-06-18 17:45:48', '2021-06-18 17:45:48'),
(4, 'Printer', '2021-06-18 17:45:55', '2021-06-18 17:45:55'),
(5, 'Mouse', '2021-06-18 17:46:07', '2021-06-18 17:46:07'),
(6, 'Charger ubah', '2021-06-18 17:50:24', '2021-06-18 19:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `midsemesters`
--

CREATE TABLE `midsemesters` (
  `id_239` bigint(20) UNSIGNED NOT NULL,
  `kolom_nim` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom_nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kolom_umur` int(11) NOT NULL,
  `kolom_alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `midsemesters`
--

INSERT INTO `midsemesters` (`id_239`, `kolom_nim`, `kolom_nama`, `kolom_umur`, `kolom_alamat`, `created_at`, `updated_at`) VALUES
(1, '111', 'dika', 20, 'pagutan', NULL, NULL),
(3, '23', 'bb', 23, 'zxcdd', '2021-05-27 00:50:31', '2021-05-27 00:50:31'),
(4, '321', 'cccc', 22, 'cccc', '2021-05-27 00:52:13', '2021-05-27 00:52:13'),
(5, '123', 'wd', 3, 'sdf', '2021-05-27 19:52:42', '2021-05-27 19:52:42'),
(6, '78', 'w', 3, 'z', '2021-05-27 19:55:31', '2021-05-27 19:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_04_15_062754_create_products_table', 1),
(4, '2021_05_22_003258_create_categories_table', 1),
(5, '2021_05_27_082207_create_midsemesters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Holly Drake', 'Non cupidatat corpor', 805.00, 1, '2021-05-27 19:58:47', '2021-05-27 19:58:47'),
(3, 'Grace Harmon', 'Commodi iure incidid', 220.00, 1, '2021-06-10 01:28:40', '2021-06-10 01:28:40'),
(4, 'Penelope Gibbs', 'Numquam aut est nisi', 27.00, 2, '2021-06-17 00:28:59', '2021-06-17 00:28:59'),
(5, 'Haaa5', 'Naa5', 8022.00, 1, '2021-06-17 00:50:02', '2021-06-18 19:08:33'),
(6, 'Mohammad Hunt', 'Ipsum nisi voluptate', 134.00, 1, '2021-06-17 00:50:06', '2021-06-17 00:50:06'),
(7, 'Holly Drakeaaa', 'Non cupidatat corpoaaar', 802.00, 1, '2021-06-17 01:07:44', '2021-06-17 01:07:44'),
(8, 'Haaa8', 'Naa8', 8022.00, 1, '2021-06-17 01:09:35', '2021-06-18 19:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `midsemesters`
--
ALTER TABLE `midsemesters`
  ADD PRIMARY KEY (`id_239`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `midsemesters`
--
ALTER TABLE `midsemesters`
  MODIFY `id_239` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
