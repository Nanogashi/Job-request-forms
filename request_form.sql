-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2022 at 04:05 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `request_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_task`
--

CREATE TABLE `assigned_task` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned_task`
--

INSERT INTO `assigned_task` (`id`, `user_id`, `request_id`) VALUES
(19, 12, 3),
(20, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `request` varchar(255) NOT NULL,
  `dates` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `provided_email` varchar(255) NOT NULL,
  `provided_id` varchar(255) NOT NULL,
  `local_number` varchar(20) DEFAULT NULL,
  `software` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `accepted_by` varchar(255) NOT NULL,
  `date_submitted` varchar(255) NOT NULL,
  `date_modified` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `request`, `dates`, `account_type`, `provided_email`, `provided_id`, `local_number`, `software`, `dept`, `problem`, `status`, `accepted_by`, `date_submitted`, `date_modified`, `email`) VALUES
(80, '1', '2022-May-05', '', '', '', '', '', '', '', '2', 'Giann', '2022-May-05', '2022-May-05', 'mark@sample.com');

-- --------------------------------------------------------

--
-- Table structure for table `request_type`
--

CREATE TABLE `request_type` (
  `request_id` int(11) NOT NULL,
  `request` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_type`
--

INSERT INTO `request_type` (`request_id`, `request`) VALUES
(1, 'Daily Time Record'),
(2, 'Biometric Record'),
(3, 'Reset Password'),
(4, 'Telephone Repair'),
(5, 'Software Installation'),
(6, 'Internet Connection'),
(7, 'Publication/Update of Info in Website'),
(8, 'ICT Repair Equipment'),
(9, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(7, 'I AM ADMIN', 'admin@example.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin'),
(12, 'Giann', 'giann@sample.com', '8cb2237d0679ca88db6464eac60da96345513964', 'UITC staff'),
(13, 'Gerard', 'gerard@sample.com', '8cb2237d0679ca88db6464eac60da96345513964', 'UITC staff'),
(14, 'Mark', 'mark@sample.com', '8cb2237d0679ca88db6464eac60da96345513964', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_task`
--
ALTER TABLE `assigned_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_type`
--
ALTER TABLE `request_type`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_task`
--
ALTER TABLE `assigned_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `request_type`
--
ALTER TABLE `request_type`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
