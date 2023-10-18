-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 07:29 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` varchar(3) NOT NULL,
  `nama_pasien` varchar(20) DEFAULT NULL,
  `umur` varchar(2) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `kelas` varchar(2) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama_pasien`, `umur`, `gender`, `kelas`, `alamat`) VALUES
('P01', 'Junita', '17', 'P', '11', 'Haji Mali'),
('P02', 'Jordan', '16', 'L', '10', 'Grogol Petamburan'),
('P03', 'Jasmine', '18', 'P', '12', 'Duri Kosambi'),
('P04', 'Abigail', '17', 'P', '11', 'Tanjung Duren'),
('P05', 'Chico', '17', 'L', '11', 'Al Baraqah'),
('P06', 'Valencia', '16', 'P', '10', 'Duri Kosambi'),
('P07', 'Putri', '16', 'P', '11', 'Duri Kosambi'),
('P08', 'Adam', '17', 'L', '11', 'Bintaro'),
('P09', 'Satria', '18', 'L', '12', 'Duri Kosambi'),
('P10', 'Bunga', '18', 'P', '12', 'Kalideres');

-- --------------------------------------------------------

--
-- Table structure for table `varian`
--

CREATE TABLE `varian` (
  `nis` varchar(7) NOT NULL,
  `id` varchar(3) DEFAULT NULL,
  `jenis_varian` varchar(10) DEFAULT NULL,
  `jenis_vaksin` varchar(10) DEFAULT NULL,
  `tipe_gejala` varchar(10) DEFAULT NULL,
  `tempat_isolasi` varchar(20) DEFAULT NULL,
  `lama_sakit` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `varian`
--

INSERT INTO `varian` (`nis`, `id`, `jenis_varian`, `jenis_vaksin`, `tipe_gejala`, `tempat_isolasi`, `lama_sakit`) VALUES
('203109', 'P02', 'Omicron', 'Astrazenec', 'Sedang', 'Rumah', 10),
('203112', 'P06', 'Alpha', 'Booster', 'Ringan', 'Rumah', 8),
('203114', 'P05', 'Alpha', 'Sinovac', 'Sedang', 'Asrama', 9),
('203119', 'P10', 'Omicron', 'Pfizer', 'Sedang', 'Wisma Atlet', 11),
('203122', 'P08', 'Omicron', 'Pfizer', 'Ringan', 'Rumah', 6),
('203123', 'P01', 'Omicron', 'Sinovac', 'Ringan', 'Rumah', 8),
('203141', 'P07', 'Delta', 'Sinovac', 'Ringan', 'Rumah', 7),
('203144', 'P09', 'Omicron', 'Moderna', 'Berat', 'Rumah Sakit', 15),
('203159', 'P03', 'Alpha', 'Moderna', 'Berat', 'Rumah Sakit', 14),
('203168', 'P04', 'Delta', 'Booster', 'Ringan', 'Wisma', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varian`
--
ALTER TABLE `varian`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id` (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `varian`
--
ALTER TABLE `varian`
  ADD CONSTRAINT `varian_ibfk_1` FOREIGN KEY (`id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
