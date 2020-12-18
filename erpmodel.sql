-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 11, 2020 at 06:31 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erpmodel`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_category`
--

DROP TABLE IF EXISTS `add_category`;
CREATE TABLE IF NOT EXISTS `add_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL COMMENT '0=Inactive,1=Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_category`
--

INSERT INTO `add_category` (`id`, `category_name`, `status`) VALUES
(81, 'Haridwar', 'Active'),
(82, 'Varanasi', 'Active'),
(86, 'Meerut', 'Active'),
(87, 'Jaunpur', 'Active'),
(89, 'Faizabad', 'Active'),
(90, 'Bareilly', 'Active'),
(91, 'Bara Banki', 'Active'),
(92, 'amethi', 'Active'),
(93, 'Agra', 'Active'),
(94, 'Africa', 'Active'),
(96, 'Mumbai', 'Active'),
(97, 'Lucknow', 'Active'),
(98, 'Delhi', 'Active'),
(99, 'Kanpur', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `add_subcategory`
--

DROP TABLE IF EXISTS `add_subcategory`;
CREATE TABLE IF NOT EXISTS `add_subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `subcategory_name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL COMMENT '0=inactive,1=active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_subcategory`
--

INSERT INTO `add_subcategory` (`id`, `category`, `subcategory_name`, `status`) VALUES
(41, '99', 'locality near by kanpur gath', 'Active'),
(42, '82', 'locality near by metro', 'Active'),
(43, '86', 'meerut dehat metro', 'Active'),
(44, '81', 'locality near by metro haridwar ghat', 'Active'),
(45, '87', 'locality near by metro janpur ghat', 'Active'),
(46, '89', 'locality near by metro Faizabad ghat', 'Active'),
(47, '90', 'locality near by metro Bareilly Ghat', 'Active'),
(48, '91', 'locality near by metro bara banki station', 'Active'),
(49, '93', 'locality near by metro Agra Ghat', 'Active'),
(50, '94', 'locality near by metro Africa complex1', 'Active'),
(51, '96', 'locality near by metro mumbai', 'Active'),
(52, '97', 'locality near by  lucknow metro', 'Active'),
(53, '92', 'locality near by metro amethi station', 'Active'),
(54, '98', 'locality near by  Delhi metro', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `add_supply`
--

DROP TABLE IF EXISTS `add_supply`;
CREATE TABLE IF NOT EXISTS `add_supply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chkservice` varchar(100) DEFAULT NULL,
  `chkcatergory$0` varchar(100) DEFAULT NULL,
  `drpprice` varchar(100) DEFAULT NULL,
  `drparea` varchar(100) DEFAULT NULL,
  `txtcity` varchar(100) DEFAULT NULL,
  `rdlplantype` varchar(100) DEFAULT NULL,
  `txtname` varchar(100) DEFAULT NULL,
  `txtphone` varchar(100) DEFAULT NULL,
  `txtdec` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT '0=Deactive,1=Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_supply`
--

INSERT INTO `add_supply` (`id`, `chkservice`, `chkcatergory$0`, `drpprice`, `drparea`, `txtcity`, `rdlplantype`, `txtname`, `txtphone`, `txtdec`, `status`) VALUES
(6, '7', 'sandeep', '23', '234567', '3432', 'sandeep', 'lucknow', 'CA', 'uttarpradesh', 'Deactive'),
(7, '7', 'dfgfgf', 'fgf', 'fgf', '12213', '313', 'fgfg', NULL, 'fgfg', 'Active'),
(8, '86', 'Anju Kumari', '37', 'gh25234', '35434', '25255663', '252/ 5G', NULL, 'Uttar Pradesh', 'Inactive'),
(9, 'Buy', 'House', '0', '0', 'lucknow', 'Individual', 'Deepak Singh rathor', '9919696566', 'hello', 'Inactive'),
(10, 'Buy', 'House', '', '', '', 'Individual', '', '', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(100) DEFAULT NULL,
  `Lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `business` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `business_type` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `Firstname`, `Lastname`, `email`, `business`, `contact`, `company_name`, `address`, `business_type`, `state`, `message`, `status`) VALUES
(10, 'sandeep developer Eng', 'singh', '139sandeepsingh@gmail.com', 'it business', '9919693361', 'lsss', 'lucknow', 'OR', 'utttar', 'hello sir', NULL),
(11, 'sandeep', 'singh rathor ss', '139sandeepsingh@gmail.com', 'IT business', '99919693361', 'lss', 'lucknow', 'OR', 'up', 'hello', NULL),
(12, 'sandeep developer', 'singh rathor ss', 'admin@example.com', 'IT', '8986532645', 'Dmd solutions', '252/ 5G', 'NV', 'Uttar Pradesh', 'hello', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'sandeep', 'admin@example.com', 'php developer', 'Hello sir'),
(2, 'sandeep', '139sandeepsingh@gmail.com', 'php developer', 'Hiiii Sir'),
(7, 'Anu Kumari', 'admin@example.com', 'php developer', 'hiiiii'),
(8, 'sandeep', '139sandeepsingh@gmail.com', 'php developer', 'hiii'),
(9, 'Anju Kumari', 'admin@example.com', 'php developer', 'hiii mam'),
(10, 'Ram Narayan', 'user@example.com', 'Asp.net developer', 'hello'),
(11, 'Anju Kumari', '139sandeepsingh@gmail.com', 'php developer', 'hiii'),
(12, 'sandeep', '139sandeepsingh@gmail.com', 'php developer', 'hello'),
(13, 'SANDEEP', 'demo@gmail.com', 'job purposal', 'hiiiiiii'),
(14, 'SANDEEP', 'vigyapan@gmail.com', 'lplp', 'pkolpoklpolplolppolp');

-- --------------------------------------------------------

--
-- Table structure for table `postpro`
--

DROP TABLE IF EXISTS `postpro`;
CREATE TABLE IF NOT EXISTS `postpro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `txtadtitle` varchar(100) DEFAULT NULL,
  `drpservice` varchar(100) DEFAULT NULL,
  `drpcategory` varchar(100) DEFAULT NULL,
  `pricephone` varchar(100) DEFAULT NULL,
  `areasquareef` varchar(100) DEFAULT NULL,
  `furnstatus` varchar(100) DEFAULT NULL,
  `rooms` varchar(100) DEFAULT NULL,
  `txtdescription` varchar(300) DEFAULT NULL,
  `ddlPublished` varchar(100) DEFAULT NULL,
  `txtname` varchar(100) DEFAULT NULL,
  `txtphone` varchar(100) NOT NULL,
  `txtemail` varchar(100) DEFAULT NULL,
  `txtcity` varchar(100) DEFAULT NULL,
  `txtlocality` varchar(100) DEFAULT NULL,
  `uploadfile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postpro`
--

INSERT INTO `postpro` (`id`, `txtadtitle`, `drpservice`, `drpcategory`, `pricephone`, `areasquareef`, `furnstatus`, `rooms`, `txtdescription`, `ddlPublished`, `txtname`, `txtphone`, `txtemail`, `txtcity`, `txtlocality`, `uploadfile`) VALUES
(10, 'Payment Guarantee', 'Rent/Lease', 'Apartments', '2000', '1322', 'Unfurnished', '2 rooms', 'Apollo House Residense aims to provide home Residense company.', 'Owner', 'Neeraj sir CEO DMD Solutions', '9965252525', 'xyz@gmail.com', '93', '93', '1.png,2.png'),
(9, 'House Guarantee', 'Rent/Lease', 'Apartments', '3000', '1200', 'Furnished', '4 and more', 'Housewise is India’s fastest-growing property management company.', 'Property Dealer', 'Ali Tufan', '978987978', 'vigyapan@gmail.com', '97', '97', '2.png,3.png'),
(8, 'Property Deal', 'Rent/Lease', 'House', '4000', '1200', 'Semi-Furnished', '3 rooms', 'Real Estate Brokers are parties who act as a middleman between company.', 'Owner', 'sandeep', '987979798', 'xyz@gmail.com', '91', '91', '51.png,5.png'),
(7, 'Property Booking', 'Rent/Lease', 'House', '5000', '1200', 'Unfurnished', '2 rooms', 'Our Realesatate online booking engine Construction delivers high bookings..', 'Property Dealer', 'Neeraj sir', '7687698', 'xyz@gmail.com', '87', '87', '5.png,6.png'),
(6, 'Apartment', 'Rent/Lease', 'PG & Roommates', '10000', '1200', 'Furnished', '4 and more', 'Apolo Family House Residense.Construction delivers high.', 'Property Dealer', 'Ali Tufan', '897979797', 'vigyapan@gmail.com', '97', '97', '6.png,51.png');

-- --------------------------------------------------------

--
-- Table structure for table `postreq`
--

DROP TABLE IF EXISTS `postreq`;
CREATE TABLE IF NOT EXISTS `postreq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `chkservice` varchar(100) DEFAULT NULL,
  `chkcatergory$0` varchar(100) DEFAULT NULL,
  `drpprice` varchar(100) DEFAULT NULL,
  `drparea` varchar(100) DEFAULT NULL,
  `txtcity` varchar(100) DEFAULT NULL,
  `rdlplantype` varchar(100) DEFAULT NULL,
  `txtname` varchar(100) DEFAULT NULL,
  `txtphone` varchar(100) DEFAULT NULL,
  `txtdec` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL COMMENT '0=inactive,1=Active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postreq`
--

INSERT INTO `postreq` (`id`, `chkservice`, `chkcatergory$0`, `drpprice`, `drparea`, `txtcity`, `rdlplantype`, `txtname`, `txtphone`, `txtdec`, `status`) VALUES
(1, 'Buy', 'House', '5-10 lac', '100to500', 'lucknow', 'Individual', 'sandeep Singh', '3242345353', 'dfghfhfghf', 'Active'),
(2, 'Buy', 'House', '10-20 Lac', '500 to 1000', 'lucknow', 'Individual', 'sandeep Singh', '9699996969999', 'property dealer', 'Inactive'),
(3, 'Buy', 'House', '20-30 Lac', '1000 to 2000', 'lucknow', 'Individual', 'Neeraj sir', '9996996696', 'property realestate', 'Active'),
(4, 'Buy', 'House', '30-40 Lac', '1000 to 2000', 'lucknow', 'Individual', 'Neeraj sir CEO DMD Solutions', '9919693361', 'Software  Business development', 'Active'),
(5, 'Buy', 'House', '2', '2', '89', 'Individual', 'PROPERTY KONA IS A LEADING REA', '999678588', 'The Directors of the company are Mr. Neeraj Srivastava,. The group is currently dealing in its proje', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'this is product add',
  `Item_code` varchar(100) DEFAULT NULL,
  `Item_name` varchar(100) DEFAULT NULL,
  `fabric_category` varchar(100) DEFAULT NULL,
  `fabric_subcategory` varchar(100) DEFAULT NULL,
  `fabric_type` varchar(100) DEFAULT NULL,
  `select_print_type` varchar(100) DEFAULT NULL,
  `select_color` varchar(100) DEFAULT NULL,
  `price` varchar(1000) DEFAULT NULL,
  `quantity` varchar(1000) DEFAULT NULL,
  `about_the_item` varchar(100) DEFAULT NULL,
  `thread_count` varchar(100) DEFAULT NULL,
  `construction` varchar(100) DEFAULT NULL,
  `gram` varchar(100) DEFAULT NULL,
  `floor_number` varchar(100) DEFAULT NULL,
  `rack_number` varchar(100) DEFAULT NULL,
  `fabric` varchar(100) DEFAULT NULL,
  `weave` varchar(100) DEFAULT NULL,
  `uploadfile` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL COMMENT '0=Deactive,1=Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COMMENT='product add';

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `Item_code`, `Item_name`, `fabric_category`, `fabric_subcategory`, `fabric_type`, `select_print_type`, `select_color`, `price`, `quantity`, `about_the_item`, `thread_count`, `construction`, `gram`, `floor_number`, `rack_number`, `fabric`, `weave`, `uploadfile`, `status`) VALUES
(15, '33444', 'dell', '81', 'Select', 'Print', '2', '--Select--', '24143', '32312', '', '2323', '441133', '32224', '2344', '1314', '12341', 'dfg', '15.png', 'Active'),
(16, '2324', 'deerd', '81', 'Select', 'Solid', '2', '1', '2344', '3144', '<p>hello</p>\r\n', '232', '2345', '233124', '123442', '23425', '4353453', 'faafn', '8.png', 'Inactive'),
(17, '234', 'sffdsas', '81', 'Select', 'Print', '3', '2', '144', '254', '<p>fgfafgfgg</p>\r\n', '311', '252', '3424', '25', '2551', '253', 'bdb', '61.png', 'Active'),
(18, '23214', 'gsfdg', '81', 'Select', 'Print', '--Select--', '--Select--', '32415', '46564', '<p>bfgsnf n</p>\r\n', '21455', '3536', '234241', '2423', '453', '5235', '--Select--', '6.png', 'Active'),
(19, 'sadda', 'dadad', '81', 'Select', 'Print', '3', '--Select--', '123213', '1432', '<p>dasc</p>\r\n', '', '', '24243', '42', '213', '244533', 'dffdsfd', '2.png', 'Active'),
(20, 'sadda', 'dadad', '81', 'Select', 'Print', '--Select--', '--Select--', '1313', '12', '<p>hello</p>\r\n', '12312', '1231', '123', '131', '1231', '1231', 'dffdsfd', 'bg-41.png', 'Active'),
(21, 'sadda', 'dadad', '81', 'Select', 'Solid', '--Select--', '2', '3211', '31230', '', '32321', '311', '1311', '1228', '12233', '3123', 'dffdsfd', 'bg-4.png', 'Inactive'),
(22, '121323', 'Eletronic brand', '82', '82', 'Solid', '--Select--', '2', '1212313', '2129', '<p>Good product</p>\r\n', '122', '31231', '23131', '13214', '21231', '312320', '12213', 'bg-6.png', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `propertform`
--

DROP TABLE IF EXISTS `propertform`;
CREATE TABLE IF NOT EXISTS `propertform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertform`
--

INSERT INTO `propertform` (`id`, `name`, `phone`, `email`, `message`) VALUES
(4, 'SANDEEP', '991956', 'vigyapan@gmail.com', 'hello'),
(2, 'SANDEEP', '99915626', 'vigyapan@gmail.com', 'hii'),
(3, 'SANDEEP', '9233360', 'vigyapan@gmail.com', 'hii');

-- --------------------------------------------------------

--
-- Table structure for table `propertreview`
--

DROP TABLE IF EXISTS `propertreview`;
CREATE TABLE IF NOT EXISTS `propertreview` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertreview`
--

INSERT INTO `propertreview` (`id`, `name`, `email`, `message`) VALUES
(1, 'SANDEEP', '139sandeepsingh@gmail.com', 'helo');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT 'this is signup',
  `admin_email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobilenumber` varchar(100) DEFAULT NULL,
  `confirmpass` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`user_id`, `name`, `admin_email`, `password`, `mobilenumber`, `confirmpass`) VALUES
(29, 'sachin pandey', '139sandeepsingh@gmail.com', '123', 'male', NULL),
(30, 'sandeep singh', '139sandeepsingh@gmail.com', '12345', 'male', NULL),
(31, 'sandeep singh', '139sandeepsingh@gmail.com', '123', 'male', NULL),
(50, 'sandeep singh', '139sandeepsingh@gmail.com', '12345', 'female', NULL),
(52, 'sandhya', '139sandeepsingh@gmail.com', '123', 'male', NULL),
(53, 'admin aaa', 'admin@admin.com', '12345', '9919693361', NULL),
(54, 'admin', 'admin@admin.com', '12345', '9919693361', NULL),
(55, 'admin', 'admin@12admin.com', '1234', '2354645', NULL),
(58, 'sachin', 'admin@12345gmail.com', '12345', '9919693361', NULL),
(60, 'rgv', 'admin@gmail.com', '$2y$10$lmdGuv8ghA4w7BwrLbTcBufrwKXEAYts6KAad9UvadFhIP5g12C/S', '12345578', NULL),
(61, 'sachin', 'admin@gmail.com', '$2y$10$ZhDf3c2sTNIcRDswZjgyreZ6VPMOyxkaoQeLX5aEmX8tiFSdtCKtW', '9993564677', NULL),
(62, 'sandeep', 'admin@gmail.com', '$2y$10$jFZ.BqVn0ewSc0mLHMXbuOTmk4UkQrhH553g1xfdGCR5Bsvkz4Cwm', '46475786', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `usersignup`
--

DROP TABLE IF EXISTS `usersignup`;
CREATE TABLE IF NOT EXISTS `usersignup` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `admin_email` varchar(100) DEFAULT NULL,
  `password` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersignup`
--

INSERT INTO `usersignup` (`id`, `name`, `admin_email`, `password`) VALUES
(1, 'sandeep', '139', 123),
(4, 'Ram Narayan', '139', 12345),
(5, 'Ram Narayan', 'aeromus@gmail.com', 12345),
(7, 'Raj', 'rak@gmail.com', 1234567);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
