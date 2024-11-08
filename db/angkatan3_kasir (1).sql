-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 09:13 AM
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
-- Database: `angkatan3_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `satuan` varchar(60) NOT NULL,
  `qty` int(9) NOT NULL,
  `harga` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_kategori`, `nama_barang`, `satuan`, `qty`, `harga`, `created_at`, `update_at`) VALUES
(1, 1, 'Wallens Choco Soe', 'Dus', 28, 5000, '2024-11-06 03:52:41', '2024-11-08 07:51:03'),
(2, 2, 'Granita', 'Dus', 15, 3000, '2024-11-06 03:52:41', '2024-11-08 07:48:34'),
(5, 1, 'Chiki Chuba', 'Dus', 34, 2000, '2024-11-08 06:54:54', '2024-11-08 07:48:34'),
(6, 2, 'Ale-ale', 'Dus', 29, 2000, '2024-11-08 06:54:54', '2024-11-08 07:43:34'),
(7, 1, 'Basreng', 'Dus', 30, 500, '2024-11-08 06:56:32', '2024-11-08 06:56:32'),
(8, 2, 'Teh Gelas', 'Dus', 33, 2000, '2024-11-08 06:56:32', '2024-11-08 07:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(11) NOT NULL,
  `id_penjualan` int(11) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga` double(10,2) DEFAULT NULL,
  `total_harga` double(10,2) DEFAULT NULL,
  `sub_total` double(10,2) NOT NULL,
  `nominal_bayar` double(10,2) DEFAULT NULL,
  `kembalian` double(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `id_penjualan`, `id_barang`, `jumlah`, `harga`, `total_harga`, `sub_total`, `nominal_bayar`, `kembalian`, `created_at`) VALUES
(1, 1, 1, 3, 5000.00, 30000.00, 0.00, 70000.00, 40000.00, '2024-11-07 07:48:40'),
(2, 1, 2, 5, 3000.00, 30000.00, 0.00, 70000.00, 40000.00, '2024-11-07 07:48:40'),
(3, 2, 1, 2, 5000.00, 10000.00, 0.00, 20000.00, 10000.00, '2024-11-07 07:53:59'),
(4, 3, 2, 5, 3000.00, 15000.00, 0.00, 20000.00, 5000.00, '2024-11-07 07:55:21'),
(5, 4, 2, 1, 3000.00, 3000.00, 0.00, 5000.00, 2000.00, '2024-11-07 07:59:44'),
(6, 5, 2, 2, 3000.00, 6000.00, 0.00, 10000.00, 4000.00, '2024-11-07 08:04:04'),
(7, 6, 1, 2, 5000.00, 10000.00, 0.00, 20000.00, 10000.00, '2024-11-08 01:48:40'),
(8, 7, 1, 2, 5000.00, 1.00, 10000.00, 20000.00, 8000.00, '2024-11-08 07:43:34'),
(9, 7, 6, 1, 2000.00, 2.00, 2000.00, 20000.00, 8000.00, '2024-11-08 07:43:34'),
(10, 8, 5, 1, 2000.00, 8000.00, 2000.00, 10000.00, 2000.00, '2024-11-08 07:48:34'),
(11, 8, 2, 2, 3000.00, 8000.00, 6000.00, 10000.00, 2000.00, '2024-11-08 07:48:34'),
(12, 9, 1, 3, 5000.00, 19000.00, 15000.00, 35000.00, 16000.00, '2024-11-08 07:51:03'),
(13, 9, 8, 2, 2000.00, 19000.00, 4000.00, 35000.00, 16000.00, '2024-11-08 07:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(55) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`id`, `nama_kategori`, `created_at`, `update_at`) VALUES
(1, 'Makanan', '2024-11-06 03:39:36', '2024-11-06 03:39:36'),
(2, 'Minuman', '2024-11-06 03:39:36', '2024-11-06 03:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `kode_transaksi` varchar(35) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_user`, `kode_transaksi`, `tanggal_transaksi`, `created_at`) VALUES
(1, 0, '2024-11-07', '0000-00-00', '2024-11-07 07:48:40'),
(2, 0, 'TR-241107145342', '2024-11-07', '2024-11-07 07:53:59'),
(3, 0, 'TR-241107145510', '2024-11-07', '2024-11-07 07:55:21'),
(4, NULL, 'TR-241107145933', '2024-11-07', '2024-11-07 07:59:44'),
(5, 1, 'TR-241107150353', '2024-11-07', '2024-11-07 08:04:04'),
(6, 1, 'TR-241108084817', '2024-11-08', '2024-11-08 01:48:40'),
(7, 1, 'TR-241108144303', '2024-11-08', '2024-11-08 07:43:34'),
(8, 1, 'TR-241108144747', '2024-11-08', '2024-11-08 07:48:34'),
(9, 1, 'TR-241108145037', '2024-11-08', '2024-11-08 07:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama_lengkap`, `nama_pengguna`, `email`, `password`, `foto`, `cover`, `created_at`, `update_at`) VALUES
(1, 'Fitria ', 'fifiajaa', 'admin@gmail.com', '123', 'pixelcut-export.png', 'fitria nur a (2).png', '2024-10-31 08:12:06', '2024-11-07 01:25:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kategori to kategori_id` (`id_kategori`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penjualan to penjualan` (`id_penjualan`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `id_kategori to kategori_id` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `id_penjualan to penjualan` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
