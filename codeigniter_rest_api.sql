-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Feb 12, 2021 at 01:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codeigniter_rest_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `post_id` int(10) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_description` text NOT NULL,
  `post_created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`post_id`, `post_title`, `post_description`, `post_created_at`) VALUES
(1, 'What is Lorem Ipsum?\r\n', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', '2021-02-11 10:17:26'),
(2, 'Where does it come from?\r\n', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\n', '2021-02-11 10:17:26'),
(4, 'Where can I get some?\r\n', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n', '2021-02-11 10:20:15'),
(5, '', '', '2021-02-12 11:53:41');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`access_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('010a362f5c26473a7c2c534b429e74adec6cb267', 'testclient', 'Sagar', '2021-02-11 02:31:22', 'app'),
('da51d4d3a10cec2f059545bd56c4329f774f6bc2', 'testclient', 'Sagar', '2021-02-11 02:30:59', 'app'),
('ed913fde63e1a8323ffb698fc86337dddc0dba5f', 'testclient', 'Sagar', '2021-02-12 01:34:52', 'app'),
('f7dbfec204425bbe1ee08aeb41a1cf467cd73c8b', 'testclient', 'Sagar', '2021-02-12 00:27:41', 'app'),
('fd6a7ef530d328793c5b1729a1dd2f1af7fe06dd', 'testclient', 'Sagar', '2021-02-11 22:40:39', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_authorization_codes`
--

CREATE TABLE `oauth_authorization_codes` (
  `authorization_code` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL,
  `id_token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `client_id` varchar(80) NOT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `redirect_uri` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(80) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL,
  `user_id` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`client_id`, `client_secret`, `redirect_uri`, `grant_types`, `scope`, `user_id`) VALUES
('testclient', 'testsecret', NULL, 'password', 'app', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_jwt`
--

CREATE TABLE `oauth_jwt` (
  `client_id` varchar(80) NOT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `public_key` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(40) NOT NULL,
  `client_id` varchar(80) NOT NULL,
  `user_id` varchar(80) DEFAULT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`refresh_token`, `client_id`, `user_id`, `expires`, `scope`) VALUES
('2e1fc57701c26e46abce6a40444a8d32d43b7f6b', 'testclient', 'Sagar', '2021-02-25 01:30:59', 'app'),
('33b9dbdd01615931197adb1d6f3b49785533333b', 'testclient', 'Sagar', '2021-02-26 00:34:52', 'app'),
('42d21a9f912af5b411633899539b561430c291d6', 'testclient', 'Sagar', '2021-02-25 23:27:41', 'app'),
('b6a4d2b1ef1805d8505324225066a303b9ff7e2d', 'testclient', 'Sagar', '2021-02-25 21:40:39', 'app'),
('ca9025e2eb8414aa62dfa5ceb9694b489dc03c7b', 'testclient', 'Sagar', '2021-02-25 01:31:22', 'app');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_scopes`
--

CREATE TABLE `oauth_scopes` (
  `scope` varchar(80) NOT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_users`
--

CREATE TABLE `oauth_users` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) DEFAULT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `scope` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oauth_users`
--

INSERT INTO `oauth_users` (`username`, `password`, `first_name`, `last_name`, `email`, `email_verified`, `scope`) VALUES
('Sagar', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'sagar', 'ghosh', NULL, 1, 'app');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `name`, `email`, `mobile`, `course`, `status`, `created_at`) VALUES
(1, 'Sagar Ghosh', 'sagar009@gmail.com', '9123445678', 'IT', 1, '2021-02-01 10:28:04'),
(2, 'Vijay kumar', 'vi@gmail.com', '79084563', 'CSE', 1, '2021-02-01 10:28:04'),
(3, 'Arnab singh', 'ar@gmail.com', '6789056', 'ECE', 1, '2021-02-01 10:30:32'),
(6, NULL, NULL, NULL, NULL, 1, '2021-02-02 06:35:31'),
(7, NULL, NULL, NULL, NULL, 1, '2021-02-02 06:38:46'),
(8, NULL, NULL, NULL, NULL, 1, '2021-02-02 06:40:30'),
(9, NULL, NULL, NULL, NULL, 1, '2021-02-02 06:42:37'),
(10, NULL, NULL, NULL, NULL, 1, '2021-02-02 06:48:32'),
(11, NULL, NULL, NULL, NULL, 1, '2021-02-02 06:49:29'),
(12, 'funda_test', 'sag@gmail.com', '8958865685', 'mba', 1, '2021-02-02 07:07:30'),
(13, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:02:05'),
(14, 'iy', 'bal@gmail.com', '799866', 'IHR', 1, '2021-02-02 12:02:57'),
(15, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:08:24'),
(16, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:08:27'),
(17, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:08:32'),
(18, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:08:33'),
(19, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:08:34'),
(20, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:08:34'),
(21, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:08:35'),
(22, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:54:18'),
(23, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:08'),
(24, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:11'),
(25, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:12'),
(26, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:42'),
(27, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:43'),
(28, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:44'),
(29, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:52'),
(30, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:53'),
(31, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:54'),
(32, NULL, NULL, NULL, NULL, 1, '2021-02-02 12:59:55'),
(33, NULL, NULL, NULL, NULL, 1, '2021-02-02 13:00:02'),
(34, NULL, NULL, NULL, NULL, 1, '2021-02-02 13:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`access_token`);

--
-- Indexes for table `oauth_authorization_codes`
--
ALTER TABLE `oauth_authorization_codes`
  ADD PRIMARY KEY (`authorization_code`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`refresh_token`);

--
-- Indexes for table `oauth_scopes`
--
ALTER TABLE `oauth_scopes`
  ADD PRIMARY KEY (`scope`);

--
-- Indexes for table `oauth_users`
--
ALTER TABLE `oauth_users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
