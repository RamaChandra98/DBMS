SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
 
CREATE TABLE `customer_info` (
  `ID` int(20) NOT NULL,
  `name_cust` varchar(30) NOT NULL,
  `debut_saledate` date NOT NULL,
  `net_sales` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
 
--
-- Dumping data for table `customer_info`
--
 
INSERT INTO `customer_info` (`ID`, `name_cust`, `debut_saledate`, `net_sales`) VALUES
(200, ‘Alex’, ‘28-05-2021’, 500),
(200, ‘Steve’, ‘08-04-2021’, 900),
(200, ‘John’, ‘24-01-2021’, 700);
 
-- --------------------------------------------------------
 
--
-- Table structure for table `cloth_inf`
--
 
CREATE TABLE `cloth_inf` (
  `cloth_id` varchar(20) NOT NULL,
  `number` int(20) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
 
--
-- Dumping data for table `cloth_inf`
--
 
INSERT INTO `cloth_inf` (`cloth_id`, `number`, `price`) VALUES
('500', 80, 3600),
('501', 85, 8000),
('502', 90, 5025);
 
-- --------------------------------------------------------
 
--
-- Table structure for table `economy_inf`
--
 
CREATE TABLE `economy_inf` (
  `amount_inf` int(20) NOT NULL,
  `date` date NOT NULL,
  `price` int(20) NOT NULL,
  `net_profit` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
 
--
-- Dumping data for table `economy_inf`
--
 
INSERT INTO `economy_inf` (`amount_inf`, `date`, `price`, `net_profit`) VALUES
(25, '03-02-2021', 500, 53),
(28, '05-07-2021', 288, 78),
(45, '08-05-2020', 5200, 698);
 
-- --------------------------------------------------------
 
--
-- Table structure for table `shop_info`
--
 
CREATE TABLE `shop_info` (
  `emp_id` int(20) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `emp_position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
 
--
-- Dumping data for table `shop_info`
--
 
INSERT INTO `shop_info` (`emp_id`, `emp_name`, `emp_position`) VALUES
(100, ‘Alex’, ‘Manager’),
(102, 'Issac', ‘Developer'),
(103, 'Norm', 'Reviewer');
 
-- --------------------------------------------------------
 
--
-- Table structure for table `supp_inf`
--
 
CREATE TABLE `supp_inf` (
  `supp_id` int(20) NOT NULL,
  `dev_window` date NOT NULL,
  `dev_date` date NOT NULL,
  `exptd_qnt` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
 
--
-- Dumping data for table `supp_inf`
--
 
INSERT INTO `supp_inf` (`supp_id`, `dev_window`, `dev_date`, `exptd_qnt`) VALUES
('1000', '09-09-2020', '12-09-2000', 100),
('1001', '05-09-2020', '13-09-2000', 1000),
('1002', '07-09-2020', '15-09-2000', 500);
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`ID`);
 
--
-- Indexes for table `shop_info`
--
ALTER TABLE `shop_info`
  ADD PRIMARY KEY (`emp_id`);
 
--
-- Indexes for table `supp_inf`
--
ALTER TABLE `supp_inf`
  ADD PRIMARY KEY (`supp_id`);
 
--
-- AUTO_INCREMENT for dumped tables
--
 
--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
 
--
-- AUTO_INCREMENT for table `shop_info`
--
ALTER TABLE `shop_info`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
