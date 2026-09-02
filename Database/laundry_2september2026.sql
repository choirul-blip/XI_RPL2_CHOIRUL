-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2026 at 02:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'admin', '123', 1),
(2, 'admin1', '202cb962ac59075b964b07152d234b70', 2),
(3, 'admin2', 'd9b1d7db4cd6e70935368a1efb10e377', 2);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(8000);

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(30, 10, 'Sweater', 4),
(31, 11, 'T-shirt', 2),
(32, 12, 'Jersey', 5),
(33, 13, 'Kemeja', 3),
(34, 14, 'Hoodie', 3),
(35, 15, 'Jas', 2),
(36, 16, 'T-shirt', 4),
(37, 17, 'Sweather', 2),
(38, 18, 'Hoodie', 2),
(39, 19, 'Jersey', 3),
(40, 20, 'Sweather', 2),
(41, 21, 'T-shirt', 4),
(42, 22, 'Jersey', 2),
(43, 23, 'Hoodie', 3),
(44, 24, 'Kemeja', 2),
(45, 25, 'Jas', 2),
(46, 11, 'Sweather', 2),
(47, 17, 'Gamis', 2),
(48, 18, 'Jas', 3),
(49, 19, 'T-shirt', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'Rudi', '08792737833', 'Penaton'),
(2, 'Bogel', '08993948387', 'Limbangan'),
(3, 'Sodiq', '08882374645', 'Salam Sari'),
(4, 'Roni', '08373645463', 'Boja'),
(5, 'Hamylton', '08876365434', 'Ngabean'),
(6, 'Verxtappen', '08235463642', 'Rowosari'),
(7, 'Adli', '08447566543', 'Ngaliyan'),
(8, 'Zamrud', '0872636554', 'Tembalang'),
(9, 'Wawan', '08464365355', 'Jatisari'),
(10, 'Gorgon', '08364525244', 'Singorojo');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(10, '2025-01-01', 3, 8000, 1, '2025-01-07', 2),
(11, '2025-02-09', 9, 32000, 4, '2025-02-14', 2),
(12, '2025-05-25', 1, 8000, 1, '2025-05-29', 2),
(13, '2025-06-24', 2, 16000, 2, '2025-06-27', 2),
(14, '2025-12-03', 10, 16000, 2, '2025-12-08', 2),
(15, '2026-02-01', 4, 8000, 1, '2026-02-05', 2),
(16, '2026-03-01', 7, 16000, 2, '2026-03-06', 2),
(17, '2026-05-05', 5, 48000, 6, '2026-05-09', 1),
(18, '2026-06-01', 6, 32000, 4, '2026-06-07', 1),
(19, '2026-06-09', 8, 8000, 1, '2026-06-13', 1),
(20, '2026-06-01', 1, 32000, 4, '2026-02-05', 2),
(21, '2026-06-20', 5, 16000, 2, '2026-06-24', 1),
(22, '2026-06-23', 3, 24000, 3, '2026-06-27', 2),
(23, '2026-06-24', 9, 32000, 4, '2026-06-28', 1),
(24, '2026-06-30', 8, 8000, 1, '2026-07-05', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
