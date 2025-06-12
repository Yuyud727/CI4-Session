-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2025 at 02:46 PM
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
-- Database: `db_ci4`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(5, '2025-05-20-132235', 'App\\Database\\Migrations\\User', 'default', 'App', 1748262991, 1),
(6, '2025-05-20-132238', 'App\\Database\\Migrations\\Product', 'default', 'App', 1748262991, 1),
(7, '2025-05-20-132241', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1748262991, 1),
(8, '2025-05-20-132255', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1748262991, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(2, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2025-05-26 12:37:58', NULL),
(3, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2025-05-26 12:37:58', NULL),
(4, 'ASUS TUF A15 FA506NF', 10899000, 5, 'lambo.jpg', '2025-05-26 12:38:04', NULL),
(5, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2025-05-26 12:38:04', NULL),
(6, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2025-05-26 12:38:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'niyaga.budiman', 'omar80@purwanti.or.id', '$2y$10$vGbXR9V0qU7vj5gFYvpS6e7IKA705GuZhFsLqTLlyXNdz8RtGAYE.', 'guest', '2025-05-26 12:38:04', NULL),
(2, 'carla43', 'sihotang.rangga@wasita.id', '$2y$10$eKrNCqd8SmuOJhaa3CcVNeBar2QQgr4X/5c/y.U5zlBayAO70uRPu', 'admin', '2025-05-26 12:38:04', NULL),
(3, 'nadriansyah', 'cagak46@zulkarnain.ac.id', '$2y$10$CAhuryxS9R7Qrxc4L/CLLOpDpJWoxcCuFv9a580emvqnhL5EqIfn.', 'guest', '2025-05-26 12:38:04', NULL),
(4, 'hamima.utama', 'adiarja.mayasari@yuliarti.in', '$2y$10$5bI4tQ2DJGjK/mB1Ez5KJef.oYGYcK6nJYsBcr2txLs2s.2DRqy1O', 'guest', '2025-05-26 12:38:04', NULL),
(5, 'wijaya.ana', 'ilsa02@gmail.com', '$2y$10$Zr6X54ju7Xzb0fZTDG4g9.pomzOtkk7DRoaomH/2jdCwWTS7oIrGm', 'admin', '2025-05-26 12:38:04', NULL),
(6, 'zelaya.suwarno', 'mardhiyah.febi@puspasari.asia', '$2y$10$rKalM/b.TsMtCnq8Ahr3vOznolGT9qBjOTdKgAhlKrfzgAqGEZvD6', 'guest', '2025-05-26 12:38:04', NULL),
(7, 'fpurnawati', 'luwes30@damanik.org', '$2y$10$jQJW2Noccx9ATWnM6QD1heUcXFgYaMElCUbGiw7HGEwp4rdMH2lkC', 'guest', '2025-05-26 12:38:04', NULL),
(8, 'devi65', 'mlazuardi@yahoo.co.id', '$2y$10$fc5qJv8exQIm2zHCZdcyhOiVNZ12O1dFkqGkJoi./NKQFZSDzxZeC', 'guest', '2025-05-26 12:38:04', NULL),
(9, 'ywibowo', 'wardi.tarihoran@saptono.co', '$2y$10$2mPg8b8gc6KZcuWL5pIbO.PQEtxgDJqzaRep..i1YeySDHceqSbmO', 'guest', '2025-05-26 12:38:04', NULL),
(10, 'yuniar.ratna', 'wani.firmansyah@gmail.com', '$2y$10$vZzSYZyU1iCzqSXDPPRyveUQQXIbjVZKwk3rHf./spZX4nl0.S3y.', 'admin', '2025-05-26 12:38:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
