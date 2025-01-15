-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 04:26 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmey`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `creted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbdetailpenjualan`
--

CREATE TABLE `tbdetailpenjualan` (
  `id_penjualan` varchar(50) NOT NULL,
  `id_produk` int(20) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbpenjualan`
--

CREATE TABLE `tbpenjualan` (
  `id_penjualan` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `status` enum('pending','diproses','selesai','dibatalkan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbproduk`
--

CREATE TABLE `tbproduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `harga` varchar(15) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbproduk`
--

INSERT INTO `tbproduk` (`id`, `nama`, `harga`, `deskripsi`, `kategori`) VALUES
(21, 'brownies coklat', '15.000', 'brownbies yang lezat dibuat dengan bahan [ilihan yang lezat dan enak, kualitas bukan main main', 'brownies coklat'),
(34, 'coffe yuk', '12.000', 'mantap', 'cpffe yuk'),
(35, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `gmail` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','costumer','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id`, `username`, `gmail`, `password`, `role`) VALUES
(1, 'aca', 'aca@123', '$2y$10$K7zQl4YWPRd7RLQjDPYzcu49qlZrGTgw61ltL2KEdtWEjxPyeLerS', 'costumer'),
(2, 'malik', 'malik@1234', '$2y$10$K7zQl4YWPRd7RLQjDPYzcu49qlZrGTgw61ltL2KEdtWEjxPyeLerS', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbdetailpenjualan`
--
ALTER TABLE `tbdetailpenjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tbpenjualan`
--
ALTER TABLE `tbpenjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbproduk`
--
ALTER TABLE `tbproduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbproduk`
--
ALTER TABLE `tbproduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbdetailpenjualan`
--
ALTER TABLE `tbdetailpenjualan`
  ADD CONSTRAINT `tbdetailpenjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `tbpenjualan` (`id_penjualan`),
  ADD CONSTRAINT `tbdetailpenjualan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tbproduk` (`id`);

--
-- Constraints for table `tbpenjualan`
--
ALTER TABLE `tbpenjualan`
  ADD CONSTRAINT `tbpenjualan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
