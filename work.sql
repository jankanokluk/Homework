-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2017 at 04:57 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `work`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cus_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_address`) VALUES
(1, 'name A', 'address A'),
(2, 'name B', 'address B'),
(3, 'name C', 'address C'),
(4, 'name D', 'address D'),
(5, 'name E', 'address E'),
(7, 'Name F', 'Address F');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1498416610),
('m130524_201442_init', 1498416622);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pd_id` int(11) NOT NULL,
  `pd_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pd_price` int(50) NOT NULL,
  `pd_detail` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `pd_brand` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pd_id`, `pd_name`, `pd_price`, `pd_detail`, `pd_brand`) VALUES
(1, 'กาต้มน้ำร้อน', 179, 'เป็นสแตนเลสไร้สาย 1.8 ลิตร รุ่น EK-180 (Silver)', 'KASHIWA'),
(2, 'เตาอบไฟฟ้า', 790, 'ขนาด 9 ลิตร รุ่น CS0905A2', 'MISAWA'),
(6, 'กระทะไฟฟ้า', 490, 'รุ่น SP-300A (สีเขียว)', 'OTTO '),
(3, 'กระติกน้ำร้อน ', 980, 'ขนาด 1.6 ลิตร รุ่น KP-A19S CU', 'SHARP'),
(4, 'หม้อหุงข้าว', 340, 'CR-016 RICE COOKER', 'OTTO'),
(5, 'หม้อหุงข้าว', 1190, 'หม้อหุงข้าวดิจิตอล - รุ่น HD3030 1 ลิตร', 'Philips'),
(7, 'เตาอบไมโครเวฟ ', 1600, 'ขนาด 20 ลิตร รุ่น ME711K/XST - 20 ลิตร', 'Samsung '),
(8, 'เตาอบไมโครเวฟ ', 1890, '22 ลิตร รุ่น R-280', 'SHARP '),
(9, 'เตาอบไมโครเวฟ ', 1990, 'ขนาด 20 ลิตร รุ่น EMM2023MW', 'Electrolux '),
(10, 'เตาอบไมโครเวฟ ', 7000, 'อบ อุ่น ย่าง MC28H5015AK/ST Convection, 28 ลิตร', 'Samsung ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `order_id` int(11) NOT NULL,
  `cus_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pd_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`order_id`, `cus_id`, `pd_id`, `quantity`) VALUES
(1, '1', '3', 1),
(2, '2', '3', 2),
(3, '1', '4', 1),
(4, '3', '5', 1),
(5, '1', '5', 1),
(6, '5', '4', 1),
(7, '3', '2', 2),
(21, '1', '1', 11),
(20, '1', '1', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'jankanokluk', 'MfM7zXTDQdVBzVdYou5VyaE4ZxABiFzI', '$2y$13$xkY1VY1tehwOjNsrlfAVL.E0rgzduRmfcu1TlyEi.2pzpwwNzg.w.', NULL, 'jankanokluk@gmail.com', 10, 1498416773, 1498416773);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
