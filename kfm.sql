-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 02:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrimarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` varchar(7) NOT NULL,
  `Customer_name` varchar(20) NOT NULL,
  `Mobile_no` decimal(10,0) DEFAULT NULL,
  `Email_ID` varchar(20) DEFAULT NULL,
  `Ward` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Customer_name`, `Mobile_no`, `Email_ID`, `Ward`, `Password`) VALUES
('111351', 'Kushal Preet', '7652801946', 'kushalp@hotmail.com', 'Bhopal', 'pqrs'),
('111352', 'Rohanpreet Singh', '8972801946', 'rohanpr@gmail.com', 'Chandigarh', 'pqos'),
('111353', 'Anup Gandhi', '7630967981', 'anpg@gmail.com', 'Raigarh', 'abod'),
('111354', 'Harsh Jadhav', '9274877783', 'harsh@gmail.com', 'Mumbai', 'xpzq'),
('111355', 'Rajaram Patil', '8844998907', 'rajpatil@gmail.com', 'Pune', 'qwer'),
('111356', 'Pradip Darade', '9990856583', 'pdarade@gmail.com', 'Sangli', 'yyui'),
('111357', 'Santosh Ubale', '8902345323', 'santoshub@gmail.com', 'Nagpur', 'oras'),
('111358', 'Babanrao Wagh', '9727119083', 'bwagh@gmail.com', 'Satara', 'yuio'),
('111359', 'Madhavrao Pawar', '7774866113', 'madhavp@gmail.com', 'Kolhapur', 'jklp'),
('111360', 'Satish More', '8884861963', 'satishm@gmail.com', 'Nashik', 'idcd'),
('111361', 'Anil Arote', '8274898963', 'aarote@gmail.com', 'Nagar', 'cdit'),
('111362', 'Kapil Verma', '9932201207', 'kapilv@hotmail.com', 'Hyderabad', 'rsuv'),
('1829289', 'Stringer Bell', '701327126', 'stringerb@gmail.com', 'Kamagambo', '');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `Farmer_ID` varchar(7) NOT NULL,
  `Farmer_name` varchar(20) NOT NULL,
  `Mobile_no` decimal(10,0) DEFAULT NULL,
  `Email_ID` varchar(20) DEFAULT NULL,
  `Ward` varchar(10) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`Farmer_ID`, `Farmer_name`, `Mobile_no`, `Email_ID`, `Ward`, `Password`) VALUES
('0987654', 'John Doe', '1234554321', 'ocholaowuor@gmail.co', 'Kochich', ''),
('123432', 'harun', '9090900', 'harun@gmail.com', 'kuoyo', ''),
('1234567', 'ken', '799899806', 'kenowuor95@gmail.com', 'Nairobi', ''),
('152', 'Fredrick Odhiambo', '709809812', 'fodhiambo@gmail.com', 'West Kasip', ''),
('1829289', 'rough rider', '1918229292', 'hrough@gmail.com', 'kasipul', ''),
('2134567', 'Joan Oyange', '748208665', 'joyange@gmail.com', 'West Kasip', ''),
('282737', 'Snoop Dogg', '789229222', 'dogg@gmail.com', 'Baltimore', ''),
('284765', 'Jimmy McNulty', '11324167', 'jmcnulty@gmail.com', 'East Balti', ''),
('3299864', 'hesbon', '701327126', 'hesbonowuor95@gmail.', 'Nyagowa', ''),
('454545', 'tommy cash', '34567098', 'tommycash@gmail.com', 'kachieng', ''),
('46756', 'boni', '827347', 'word@gmail.com', 'karachuony', ''),
('5647382', 'Avon Barksdale', '701327126', 'avonb@gmail.com', 'West Kasip', ''),
('56789', 'Keema Greggs', '712345678', 'kgreggs@gmail.com', 'West Kasip', ''),
('8796', 'tomyy lee', '701327126', 'tommylee@gmail.com', '', ''),
('98087', 'clay davis', '9890789', 'clayd@gmail.com', 'West Kasip', '');

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `Fertilizer_ID` int(100) NOT NULL,
  `fertilizername` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`Fertilizer_ID`, `fertilizername`, `quantity`, `location`, `price`, `description`, `mobile`, `image`) VALUES
(666129, 'urea', '5kgs', 'West Kasipul Ward', '500', 'good', '09786767676', 'images/apple.JPG'),
(666130, 'urea', '5kgs', 'West Kasipul Ward', '500', 'good', '09786767676', 'images/apple.JPG'),
(666131, 'urea', '5kgs', 'West Kasipul Ward', '500', 'good', '09786767676', 'images/apple.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `machinery`
--

CREATE TABLE `machinery` (
  `Machine_ID` int(10) NOT NULL,
  `machinename` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machinery`
--

INSERT INTO `machinery` (`Machine_ID`, `machinename`, `company`, `location`, `price`, `description`, `mobile`, `image`) VALUES
(444555, '', 'Sany', 'East Kamagak', '300', 'Nice Work', '0798998123', 'images/mango1.JPG'),
(444556, '', 'Sany', 'East Kamagak', '300', 'Nice Work', '0798998123', 'images/mango1.JPG'),
(444557, 'Tractor', 'Sany', 'East Kamagak', '300', 'Nice Work', '0798998123', 'images/mango1.JPG'),
(444558, 'Ox-plough', 'Local', 'Kayoo', '900', 'new', '09786767676', 'images/ladyFinger.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(100) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `productname`, `quantity`, `location`, `price`, `description`, `mobile`, `image`) VALUES
(14, 'kuku', '2', 'West Kasipul Ward', '700', 'local', '09786767676', 'images/brinjal.JPG'),
(15, 'apples', '3', 'East Kamagak', '300', 'good quality', '0789009821', 'images/apple.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `Service_ID` int(100) NOT NULL,
  `servicename` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`Service_ID`, `servicename`, `location`, `price`, `description`, `mobile`, `image`) VALUES
(1, 'gfhgggfh', 'changamwe', '210', 'm,jhcfckjhfgvvhjjjjm', '09786767676', 'images/BeautyPlus_20200705193330_save.jpg'),
(10, 'skjccks', 'changamwe', '929292', 'ksxcskcxm', 'wsdwxc', 'images/Bajra4.jpg'),
(11, 'jjj', 'changamwe', '9898', 'kmjkj', 'ughjuh', 'images/Sapota(Chikoo)5.jpg'),
(16, 'ghdhd', 'West Kasipul Ward', '098889', ',khjkjjhhvcgclkjvh', '6545454', 'images/Rice5.jpg'),
(17, 'ghdhd', 'West Kasipul Ward', '098889', ',khjkjjhhvcgclkjvh', '6545454', 'images/Rice5.jpg'),
(18, 'Rice', 'West Kasipul Ward', '400', 'Mwea Pishori', '0701327126', 'images/rice.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`Farmer_ID`);

--
-- Indexes for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD PRIMARY KEY (`Fertilizer_ID`);

--
-- Indexes for table `machinery`
--
ALTER TABLE `machinery`
  ADD PRIMARY KEY (`Machine_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`Service_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fertilizer`
--
ALTER TABLE `fertilizer`
  MODIFY `Fertilizer_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=666132;

--
-- AUTO_INCREMENT for table `machinery`
--
ALTER TABLE `machinery`
  MODIFY `Machine_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444559;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `Service_ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
