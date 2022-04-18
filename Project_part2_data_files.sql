-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2022 at 11:21 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `business`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `Customer_id` int(11) NOT NULL,
  `Customer_name` varchar(20) NOT NULL,
  `First_sale_date` date NOT NULL,
  `Total_Sales_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`Customer_id`, `Customer_name`, `First_sale_date`, `Total_Sales_Number`) VALUES
(1, 'A', '2021-10-12', 324),
(2, 'B', '2022-11-12', 34),
(3, 'C', '2021-12-02', 590);

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `Part_Number` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`Part_Number`, `Quantity`, `Cost`) VALUES
('100', 40, 500),
('101', 50, 1000),
('102', 20, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_info`
--

CREATE TABLE `sales_info` (
  `Item_sold` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Price` int(11) NOT NULL,
  `Profit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_info`
--

INSERT INTO `sales_info` (`Item_sold`, `Date`, `Price`, `Profit`) VALUES
(10, '2021-12-09', 500, 12.8),
(15, '2022-10-08', 1000, 15),
(20, '2021-07-07', 2000, 19);

-- --------------------------------------------------------

--
-- Table structure for table `store_info`
--

CREATE TABLE `store_info` (
  `Employee_id` int(11) NOT NULL,
  `Employee_name` varchar(255) NOT NULL,
  `Employee_roles` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_info`
--

INSERT INTO `store_info` (`Employee_id`, `Employee_name`, `Employee_roles`) VALUES
(1234, 'RAVI', 'AM'),
(1236, 'RONI', 'PE'),
(1239, 'JOHN', 'PA');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_info`
--

CREATE TABLE `supplier_info` (
  `Supplier_name` varchar(255) NOT NULL,
  `Delivery_time` date NOT NULL,
  `Next_delivery_date` date NOT NULL,
  `Expected_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier_info`
--

INSERT INTO `supplier_info` (`Supplier_name`, `Delivery_time`, `Next_delivery_date`, `Expected_qty`) VALUES
(ABC, '2021-12-13', '2022-12-13', 4),
(EFG, '2021-11-14', '2022-11-14', 5),
(IJK, '2021-08-09', '2022-08-09', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `store_info`
--
ALTER TABLE `store_info`
  ADD PRIMARY KEY (`Employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `Customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_info`
--
ALTER TABLE `store_info`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1240;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
