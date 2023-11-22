-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2023 at 06:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scan_2023_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_registration`
--

CREATE TABLE `admin_registration` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_registration`
--

INSERT INTO `admin_registration` (`id`, `username`, `email`, `phone`, `password`) VALUES
(68, 'admin', 'admin@gmail.com', '457825896398', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer_feedback`
--

CREATE TABLE `customer_feedback` (
  `id` int(255) NOT NULL,
  `feedback` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_feedback`
--

INSERT INTO `customer_feedback` (`id`, `feedback`) VALUES
(3, 'Good App');

-- --------------------------------------------------------

--
-- Table structure for table `customer_payment`
--

CREATE TABLE `customer_payment` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ac_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_amt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_payment`
--

INSERT INTO `customer_payment` (`id`, `name`, `bank`, `phone`, `ac_no`, `total_amt`, `order_id`, `uid`) VALUES
(46, 'Deepika', 'hdfc', '9526843393', '1258960852', '250.0', '26', '68');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

CREATE TABLE `customer_registration` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_registration`
--

INSERT INTO `customer_registration` (`id`, `username`, `email`, `phone`, `password`) VALUES
(68, 'customer', 'cust@gmail.com', '9856235689', 'cust');

-- --------------------------------------------------------

--
-- Table structure for table `cust_cart_product`
--

CREATE TABLE `cust_cart_product` (
  `id` int(255) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `product_qty` varchar(255) NOT NULL,
  `uid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `merchant_add_product`
--

CREATE TABLE `merchant_add_product` (
  `id` int(255) NOT NULL,
  `productid` varchar(255) NOT NULL,
  `productname` varchar(255) NOT NULL,
  `productprice` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant_add_product`
--

INSERT INTO `merchant_add_product` (`id`, `productid`, `productname`, `productprice`, `image`, `stock`) VALUES
(228, '100', ' Bag ', '200', 'http://192.168.29.64/MySampleApp/Scanner_App/Merchant/image_uploaded/images.jpeg', '493'),
(231, '101', ' Book ', '50', 'http://192.168.29.64/Scanner_2023/Merchant/image_uploaded/notebook.jpg', '199'),
(232, '100', ' Bag ', '500', 'http://192.168.29.64/Scanner_2023/Merchant/image_uploaded/images.jpg', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `merchant_registration`
--

CREATE TABLE `merchant_registration` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merchant_registration`
--

INSERT INTO `merchant_registration` (`id`, `username`, `email`, `phone`, `password`) VALUES
(52, 'merchant', 'merchant@gmail.com', '1234567898', 'merchant');

-- --------------------------------------------------------

--
-- Table structure for table `order_items_tb`
--

CREATE TABLE `order_items_tb` (
  `id` int(255) NOT NULL,
  `productid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_items_tb`
--

INSERT INTO `order_items_tb` (`id`, `productid`, `product_qty`, `order_id`, `uid`) VALUES
(18, '100', '1', '26', '68'),
(19, '102', '1', '26', '68'),
(20, '103', '1', '26', '68'),
(21, '101', '1', '26', '68');

-- --------------------------------------------------------

--
-- Table structure for table `order_tb`
--

CREATE TABLE `order_tb` (
  `order_id` int(255) NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total_amt` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_tb`
--

INSERT INTO `order_tb` (`order_id`, `uid`, `order_date`, `total_amt`) VALUES
(26, '68', '21/08/2023', '250.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_registration`
--
ALTER TABLE `admin_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_payment`
--
ALTER TABLE `customer_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_registration`
--
ALTER TABLE `customer_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cust_cart_product`
--
ALTER TABLE `cust_cart_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_add_product`
--
ALTER TABLE `merchant_add_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant_registration`
--
ALTER TABLE `merchant_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items_tb`
--
ALTER TABLE `order_items_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tb`
--
ALTER TABLE `order_tb`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_registration`
--
ALTER TABLE `admin_registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `customer_feedback`
--
ALTER TABLE `customer_feedback`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_payment`
--
ALTER TABLE `customer_payment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `customer_registration`
--
ALTER TABLE `customer_registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `cust_cart_product`
--
ALTER TABLE `cust_cart_product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `merchant_add_product`
--
ALTER TABLE `merchant_add_product`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `merchant_registration`
--
ALTER TABLE `merchant_registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `order_items_tb`
--
ALTER TABLE `order_items_tb`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_tb`
--
ALTER TABLE `order_tb`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
