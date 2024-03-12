-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 06:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padati`
--

-- --------------------------------------------------------

--
-- Table structure for table `ref_smt_thnakd`
--

CREATE TABLE `ref_smt_thnakd` (
  `id_thnjaran` int(11) NOT NULL,
  `thn_ajaran` varchar(30) NOT NULL,
  `status` enum('1','0') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ref_smt_thnakd`
--

INSERT INTO `ref_smt_thnakd` (`id_thnjaran`, `thn_ajaran`, `status`) VALUES
(1, '2022/2023-Genap', '0'),
(2, '2023/2024-Ganjil', '0'),
(3, '2023/2024-Genap', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ref_smt_thnakd`
--
ALTER TABLE `ref_smt_thnakd`
  ADD PRIMARY KEY (`id_thnjaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ref_smt_thnakd`
--
ALTER TABLE `ref_smt_thnakd`
  MODIFY `id_thnjaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
