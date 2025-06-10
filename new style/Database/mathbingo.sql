-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2025 at 05:26 PM
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
-- Database: `mathbingo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bingo_scores`
--

CREATE TABLE `bingo_scores` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `time_elapsed` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bingo_scores`
--

INSERT INTO `bingo_scores` (`id`, `username`, `time_elapsed`, `level`, `created_at`) VALUES
(1, 'syifa', 69, 1, '2025-05-19 15:50:58'),
(2, 'syifa 2', 65, 1, '2025-05-19 15:58:07'),
(3, 'Alya', 118, 2, '2025-05-22 14:39:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bingo_scores`
--
ALTER TABLE `bingo_scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bingo_scores`
--
ALTER TABLE `bingo_scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
