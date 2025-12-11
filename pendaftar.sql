-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 11, 2025 at 04:34 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaftaran_siega`
--

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `id` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `wa` varchar(20) DEFAULT NULL,
  `program` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ijazah` varchar(255) DEFAULT NULL,
  `kk` varchar(255) DEFAULT NULL,
  `ktp` varchar(255) DEFAULT NULL,
  `sertifikat` varchar(255) DEFAULT NULL,
  `rapor` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`id`, `nama`, `email`, `wa`, `program`, `foto`, `ijazah`, `kk`, `ktp`, `sertifikat`, `rapor`, `tanggal`) VALUES
(1, 'Sarah Tania Nugraheny Marsandah', 'sasamarsandah1901@gmail.com', '000', 'Sistem Informasi', 'uploads/1765469869_foto_FOTO PAS.jpg', 'uploads/1765469869_ijazah_FOTO PAS.jpg', 'uploads/1765469869_kk_FOTO PAS.jpg', 'uploads/1765469869_ktp_FOTO PAS.jpg', 'uploads/1765469869_sertifikat_FOTO PAS.jpg', 'uploads/1765469869_rapor_FOTO PAS.jpg', '2025-12-11 16:17:49'),
(2, 'Sarah Tania Nugraheny Marsandah', 'sasamarsandah1901@gmail.com', '000', 'Akuntansi + Sistem Informasi', 'uploads/1765470158_foto_FOTO PAS.jpg', 'uploads/1765470158_ijazah_FOTO PAS.jpg', 'uploads/1765470158_kk_CV_Sarah Tania Nugraheny Marsandah.pdf', 'uploads/1765470158_ktp_FOTO PAS.jpg', '', '', '2025-12-11 16:22:38'),
(3, 'natasha cherry', 'sasamarsandah1901@gmail.com', '09900', 'Akuntansi + Sistem Informasi', 'uploads/1765470435_foto_FOTO PAS.jpg', '', '', '', '', '', '2025-12-11 16:27:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
