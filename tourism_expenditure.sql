-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2025 at 03:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_expenditure`
--

-- --------------------------------------------------------

--
-- Table structure for table `domestic_tourists`
--

CREATE TABLE `domestic_tourists` (
  `id` int(11) NOT NULL,
  `component` varchar(100) DEFAULT NULL,
  `expenditure_2010` int(11) DEFAULT NULL,
  `expenditure_2011` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domestic_tourists`
--

INSERT INTO `domestic_tourists` (`id`, `component`, `expenditure_2010`, `expenditure_2011`) VALUES
(1, 'Food & Beverages', 6448, 7756),
(2, 'Transport', 6220, 7417),
(3, 'Accommodation', 6096, 4985),
(4, 'Shopping', 2603, 3801),
(5, 'Pre-trip Expenses', 595, 801),
(6, 'Other Activities', 1722, 2249);

-- --------------------------------------------------------

--
-- Table structure for table `domestic_visitors`
--

CREATE TABLE `domestic_visitors` (
  `id` int(11) NOT NULL,
  `component` varchar(100) NOT NULL,
  `year_2010` int(11) NOT NULL,
  `year_2011` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domestic_visitors`
--

INSERT INTO `domestic_visitors` (`id`, `component`, `year_2010`, `year_2011`) VALUES
(1, 'Shopping', 8914, 13149),
(2, 'Transport', 8098, 10019),
(3, 'Food & Beverages', 7975, 9691),
(4, 'Accommodation', 6130, 5028),
(5, 'Pre-trip Expenses', 894, 1097),
(6, 'Other Activities', 2667, 3362);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `domestic_tourists`
--
ALTER TABLE `domestic_tourists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domestic_visitors`
--
ALTER TABLE `domestic_visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domestic_tourists`
--
ALTER TABLE `domestic_tourists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `domestic_visitors`
--
ALTER TABLE `domestic_visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
