-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 06:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'hari', 'hari123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mycart`
--

CREATE TABLE `mycart` (
  `id` int(11) NOT NULL,
  `pname` varchar(25) NOT NULL,
  `pprice` int(100) NOT NULL,
  `pimage` int(225) NOT NULL,
  `pquantity` int(11) NOT NULL,
  `total_price` int(100) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mycart`
--

INSERT INTO `mycart` (`id`, `pname`, `pprice`, `pimage`, `pquantity`, `total_price`, `uid`) VALUES
(45, 'billing machine', 10000, 0, 1, 10000, 1),
(46, 'car ticketing machine', 10000, 0, 1, 10000, 1),
(47, 'hotel billing machine', 20000, 0, 1, 20000, 1),
(48, 'billing machine', 10000, 0, 1, 10000, 17);

-- --------------------------------------------------------

--
-- Table structure for table `order_manager`
--

CREATE TABLE `order_manager` (
  `order_id` int(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pay_mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_manager`
--

INSERT INTO `order_manager` (`order_id`, `full_name`, `phone_number`, `address`, `pay_mode`) VALUES
(34, 'kavi', '8637644480', '11/105b community center street kaliyur sathyamangalam', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `order_manager1`
--

CREATE TABLE `order_manager1` (
  `order_id` int(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pay_mode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_manager1`
--

INSERT INTO `order_manager1` (`order_id`, `full_name`, `phone_number`, `address`, `pay_mode`) VALUES
(1, 'hariharan', '8754215198', 'kaniyur', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `tbldealer`
--

CREATE TABLE `tbldealer` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldealer`
--

INSERT INTO `tbldealer` (`id`, `username`, `email`, `number`, `password`) VALUES
(1, 'rameshkumar', 'ramesh@gmail.com', '97514021382', 'ramesh123');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(11) NOT NULL,
  `Pname` varchar(100) NOT NULL,
  `Pprice` varchar(100) NOT NULL,
  `Pimage` varchar(200) NOT NULL,
  `Pcategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `Pname`, `Pprice`, `Pimage`, `Pcategory`) VALUES
(31, 'Water Wash', '600', 'Uploadimage/waterwash.jpg', 'General Service');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct1`
--

CREATE TABLE `tblproduct1` (
  `id` int(100) NOT NULL,
  `Pname` varchar(100) NOT NULL,
  `Pprice` varchar(100) NOT NULL,
  `Pimage` varchar(100) NOT NULL,
  `Pcategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `username`, `email`, `number`, `password`) VALUES
(18, 'kaviyan', 'kaviyansnsctit@gmail', '8637644480', 'kavi123');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(100) NOT NULL,
  `Pname` varchar(100) NOT NULL,
  `Pprice` varchar(100) NOT NULL,
  `Pquantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `Pname`, `Pprice`, `Pquantity`) VALUES
(28, 'tickceting machine', '100030', 1),
(29, 'tickceting machine', '100030', 1),
(29, 'pos', '13000', 1),
(30, 'train ticketing', '10000', 2),
(30, 'pos', '13000', 1),
(31, 'train ticketing', '10000', 1),
(31, 'pos', '13000', 1),
(32, 'train ticketing', '10000', 1),
(32, 'pos', '13000', 1),
(33, 'tickceting machine', '100030', 2),
(33, 'pos', '13000', 2),
(34, 'Oil Service', '400', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_orders1`
--

CREATE TABLE `user_orders1` (
  `order_id` int(100) NOT NULL,
  `Pname` varchar(100) NOT NULL,
  `Pprice` varchar(100) NOT NULL,
  `Pquantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders1`
--

INSERT INTO `user_orders1` (`order_id`, `Pname`, `Pprice`, `Pquantity`) VALUES
(1, 'train ticketing', '10000', 20),
(1, 'thermometer', '10000', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mycart`
--
ALTER TABLE `mycart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_manager`
--
ALTER TABLE `order_manager`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_manager1`
--
ALTER TABLE `order_manager1`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbldealer`
--
ALTER TABLE `tbldealer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproduct1`
--
ALTER TABLE `tblproduct1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mycart`
--
ALTER TABLE `mycart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `order_manager`
--
ALTER TABLE `order_manager`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_manager1`
--
ALTER TABLE `order_manager1`
  MODIFY `order_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldealer`
--
ALTER TABLE `tbldealer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblproduct1`
--
ALTER TABLE `tblproduct1`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
