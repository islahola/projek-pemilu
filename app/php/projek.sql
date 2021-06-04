-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 11:03 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'site admin'),
(2, 'user', 'user site');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(1, 2),
(2, 9),
(2, 11),
(2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-12 07:49:23', 1),
(2, '::1', '11190910000097', NULL, '2021-05-12 07:55:44', 0),
(3, '::1', '11190910000097', NULL, '2021-05-12 07:56:16', 0),
(4, '::1', '11190910000099', NULL, '2021-05-12 07:56:55', 0),
(5, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-12 07:57:29', 1),
(6, '::1', '1', NULL, '2021-05-12 07:58:25', 0),
(7, '::1', 'lala@gmail.com', 7, '2021-05-12 07:59:39', 1),
(8, '::1', '1', NULL, '2021-05-12 08:50:41', 0),
(9, '::1', '1', 6, '2021-05-12 09:07:47', 1),
(10, '::1', 'admin1', NULL, '2021-05-12 09:15:22', 0),
(11, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-12 09:32:19', 1),
(12, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-12 09:32:21', 1),
(13, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-12 09:34:30', 1),
(14, '::1', '1', NULL, '2021-05-12 09:36:35', 0),
(15, '::1', 'lala@gmail.com', 7, '2021-05-12 09:36:53', 1),
(16, '::1', '1', 6, '2021-05-12 09:37:32', 1),
(17, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-12 09:44:53', 1),
(18, '::1', 'Islah Khofifah', 8, '2021-05-12 10:05:23', 1),
(19, '::1', 'Islah Khofifah', 8, '2021-05-12 10:58:12', 1),
(20, '::1', 'islah.khofifah@gmail.com', NULL, '2021-05-12 11:23:51', 0),
(21, '::1', 'islah.khofifah@gmail.com', NULL, '2021-05-12 11:24:14', 0),
(22, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-12 11:25:02', 1),
(23, '::1', '11190910000101', NULL, '2021-05-12 11:56:00', 0),
(24, '::1', 'user', 9, '2021-05-12 11:56:11', 1),
(25, '::1', 'user', NULL, '2021-05-12 12:53:49', 0),
(26, '::1', 'user', NULL, '2021-05-12 12:54:05', 0),
(27, '::1', 'Islah Khofifah', 8, '2021-05-12 12:54:17', 1),
(28, '::1', 'Islah Khofifah', 8, '2021-05-13 00:33:35', 1),
(29, '::1', 'Islah Khofifah', 8, '2021-05-13 00:54:12', 1),
(30, '::1', 'Islah Khofifah', 8, '2021-05-13 04:09:40', 1),
(31, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-13 04:11:39', 1),
(32, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-13 08:43:30', 1),
(33, '::1', 'Islah Khofifah', 8, '2021-05-13 09:08:44', 1),
(34, '::1', 'user', NULL, '2021-05-13 09:09:07', 0),
(35, '::1', 'as', 12, '2021-05-13 09:09:38', 1),
(36, '::1', 'as', 12, '2021-05-13 09:10:19', 1),
(37, '::1', 'as', 12, '2021-05-13 09:10:48', 1),
(38, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-13 09:11:19', 1),
(39, '::1', 'as', 12, '2021-05-13 10:44:57', 1),
(40, '::1', 'as', 12, '2021-05-13 10:54:25', 1),
(41, '::1', 'as', 12, '2021-05-13 10:58:18', 1),
(42, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-13 11:10:55', 1),
(43, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-13 11:11:14', 1),
(44, '::1', 'islah olla', 12, '2021-05-13 11:14:38', 1),
(45, '::1', 'islah olla', 12, '2021-05-13 11:14:58', 1),
(46, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-13 11:15:24', 1),
(47, '::1', 'islah olla', 12, '2021-05-13 11:27:57', 1),
(48, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-13 11:34:24', 1),
(49, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-13 11:45:03', 1),
(50, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-24 09:40:53', 1),
(51, '::1', 'islah olla', 12, '2021-05-24 09:41:51', 1),
(52, '::1', 'Islah.khofifah19@mhs.uinjkt.ac.id', 2, '2021-05-24 09:42:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-user', 'manage all user'),
(2, 'manage-profile', 'manage all profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `formulir`
--

CREATE TABLE `formulir` (
  `id` int(11) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `tps` varchar(255) NOT NULL,
  `partai` varchar(255) NOT NULL,
  `calon1` varchar(255) NOT NULL,
  `calon2` varchar(255) NOT NULL,
  `calon3` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user-id` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `formulir`
--

INSERT INTO `formulir` (`id`, `kelurahan`, `tps`, `partai`, `calon1`, `calon2`, `calon3`, `status`, `created_at`, `updated_at`, `user-id`, `nik`) VALUES
(105, 'parung', '12', 'partai kuning', 'Asep kuning', 'Asep kuning', 'Asep kuning', 'Sah', '2021-05-13 11:30:33', '2021-05-13 11:30:33', 'islah olla', '11190910000111'),
(106, 'ciputat s', '02', 'partai Hitam', 'Kurniawan Merah', 'Asep kuning', 'Kurniawan Merah', 'Sah', '2021-05-13 11:32:43', '2021-05-13 11:32:43', 'islah olla', '11190910000111'),
(107, 'ciputat timur', '01', 'partai kuning', 'Asep kuning', 'Asep kuning', 'Asep kuning', 'Sah', '2021-05-24 09:42:32', '2021-05-24 09:42:32', 'islah olla', '11190910000111');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1620822182, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'islah.khofifah@gmail.com', 'islahola2', '$2y$10$SuMMPo1j/p73vD/2CV/NnuaSrDRzW2SoDjZ97dLzm6SycM8lKE5va', NULL, NULL, NULL, 'c336460314838e7b8b4ee67b3104fddf', NULL, NULL, 0, 0, '2021-05-12 07:33:08', '2021-05-12 07:33:08', NULL),
(2, 'Islah.khofifah19@mhs.uinjkt.ac.id', 'admin', '$2y$10$eK9jA9dBXiNP/YysvQ4Jm.fayPG46o3tfHHFEz9xUEFZvTd74lOdq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-05-12 07:49:13', '2021-05-12 07:49:13', NULL),
(4, 'islah ollaaa', '11190910000099', '$2y$10$JldlngI2aNGzUfQ8V/9eO.8usW0vzdls5FMHTA40HNupNniQjbxHK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-05-12 07:56:43', '2021-05-12 07:56:43', NULL),
(8, 'Islah Khofifah', '11190910000100', '$2y$10$o0QXVVrAxtG949fYgTC54uN3/jQaYFntktG6twWk7eeVkAEk07PyC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-05-12 10:05:06', '2021-05-12 10:05:06', NULL),
(9, 'user', '11190910000101', '$2y$10$twp45SC9xJbIPHIB4Rwk9eWs9cYWPDlcEHx5BWBdms8oUao1kDwg2', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-05-12 10:50:04', '2021-05-12 10:50:04', NULL),
(11, 'lola', '11190910000112', '$2y$10$ux/q14DH0xmVj8a5jdEJ4OJIWcm62/nipxJRI9EbNSw59pVyfHwyC', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-05-13 00:53:48', '2021-05-13 00:53:48', NULL),
(12, 'islah olla', '11190910000111', '$2y$10$WF6NrGzDLg8lW2cVbbNsAuOlnLElc0ImP/zku2y/cIs/B8ncXIwwa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-05-13 09:09:29', '2021-05-13 09:09:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `formulir`
--
ALTER TABLE `formulir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
