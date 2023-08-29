-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 10:14 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traffic_offense_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers_list`
--

CREATE TABLE `drivers_list` (
  `id` int(30) NOT NULL,
  `license_id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = suspended, 3 = banned',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers_list`
--

INSERT INTO `drivers_list` (`id`, `license_id_no`, `name`, `status`, `date_created`, `date_updated`) VALUES
(1, 'CDM-062314', 'Chitra,Aagarwal KG', 1, '2021-08-19 10:45:48', '2022-05-19 10:53:02'),
(4, 'GBN-10140715', 'Amith,Gowda KL', 1, '2022-06-37 14:56:09', NULL),
(3, 'KDM-0625564', 'Arjun,Reddy HP', 1, '2021-03-22 10:22:11','2022-09-03 14:17:14'),
(2, 'HDM-4567899', 'Reena,Ragav MP', 1, '2022-09-18 11:12:05','2022-03-20 19:46:28'),
(5, 'MAC-0945673', 'Mohith,Gowda P', 1, '2020-03-28 17:21:05','2020-12-25 24:16:28'),
(6, 'RCA-9056731', 'Madhu,Poojar KL', 1, '2021-09-08 09:32:00','2022-05-28 19:06:56'),
(7, 'ADR-0956132', 'Padhma,Reddy S', 1, '2022-01-14 19:42:25','2022-11-18 20:16:08');


-- --------------------------------------------------------

--
-- Table structure for table `drivers_meta`
--

CREATE TABLE `drivers_meta` (
  `driver_id` int(30) DEFAULT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers_meta'
--

INSERT INTO `drivers_meta` (`driver_id`, `meta_field`, `meta_value`, `date_updated`) VALUES
(1, 'license_id_no', 'CDM-062314', '2022-05-19 10:53:02'),
(1, 'lastname', 'Chitra', '2022-05-19 10:53:02'),
(1, 'firstname', 'Aagarwal', '2022-05-19 10:53:02'),
(1, 'middlename', 'KG', '2022-05-19 10:53:02'),
(1, 'dob', '1997-06-23', '2022-05-19 10:53:02'),
(1, 'present_address', 'Bengalore', '2022-05-19 10:53:02'),
(1, 'permanent_address', 'Bengalore', '2022-05-19 10:53:02'),
(1, 'civil_status', 'Married', '2022-05-19 10:53:02'),
(1, 'nationality', 'Indian', '2022-05-19 10:53:02'),
(1, 'contact', '09123456789', '2022-05-19 10:53:02'),
(1, 'license_type', 'Professional', '2022-05-19 10:53:02'),
(1, 'image_path', 'uploads/drivers/1.jpg', '2022-05-19 10:53:02'),
(1, 'driver_id', '1', '2022-05-19 10:53:02'),
(4, 'license_id_no', 'GBN-10140715', '2021-08-19 14:56:09'),
(4, 'lastname', 'Amith', '2021-08-19 14:56:09'),
(4, 'firstname', 'Gowda', '2021-08-19 14:56:09'),
(4, 'middlename', 'KL', '2021-08-19 14:56:09'),
(4, 'dob', '1992-10-14', '2021-08-19 14:56:09'),
(4, 'present_address', 'Mysore', '2021-08-19 14:56:09'),
(4, 'permanent_address', 'Mysore', '2021-08-19 14:56:09'),
(4, 'civil_status', 'Unmarried', '2021-08-19 14:56:09'),
(4, 'nationality', 'Indian', '2021-08-19 14:56:09'),
(4, 'contact', '08791628730', '2021-08-19 14:56:09'),
(4, 'license_type', 'Non-Professional', '2021-08-19 14:56:09'),
(4, 'image_path', '', '2021-08-19 14:56:09'),
(4, 'driver_id', '4', '2021-08-19 14:56:09'),
(4, 'image_path', 'uploads/drivers/4.jpg', '2021-08-19 14:56:09'),
(2, 'license_id_no', 'HDM-4567899', '2022-03-20 19:46:28'),
(2, 'lastname', 'Reena', '2022-03-20 19:46:28'),
(2, 'firstname', 'Ragav', '2022-03-20 19:46:28'),
(2, 'middlename', 'MP', '2022-03-20 19:46:28'),
(2, 'dob', '1993-06-23', '2022-03-20 19:46:28'),
(2, 'present_address', 'Bengalore', '2022-03-20 19:46:28'),
(2, 'permanent_address', 'Bengalore', '2022-03-20 19:46:28'),
(2, 'civil_status', 'Singal', '2022-03-20 19:46:28'),
(2, 'nationality', 'Indian', '2022-03-20 19:46:28'),
(2, 'contact', '08904563210', '2022-03-20 19:46:28'),
(2, 'license_type', 'Non Professional', '2022-03-20 19:46:28'),
(2, 'image_path', 'uploads/drivers/1.jpg', '2022-03-20 19:46:28'),
(2, 'driver_id', '1', '2022-03-20 19:46:28'),
(3, 'license_id_no', 'KDM-0625564', '2022-09-03 14:17:14'),
(3, 'lastname', 'Arjun', '2022-09-03 14:17:14'),
(3, 'firstname', 'Reddy', '2022-09-03 14:17:14'),
(3, 'middlename', 'HP', '2022-09-03 14:17:14'),
(3, 'dob', '1990-03-13', '2022-09-03 14:17:14'),
(3, 'present_address', 'Mangalore', '2022-09-03 14:17:14'),
(3, 'permanent_address', 'Mangalore', '2022-09-03 14:17:14'),
(3, 'civil_status', 'Married', '2022-09-03 14:17:14'),
(3, 'nationality', 'Indian', '2022-09-03 14:17:14'),
(3, 'contact', '09904003210', '2022-09-03 14:17:14'),
(3, 'license_type', 'Professional', '2022-09-03 14:17:14'),
(3, 'image_path', 'uploads/drivers/1.jpg', '2022-09-03 14:17:14'),
(3, 'driver_id', '1', '2022-09-03 14:17:14'),
(5, 'license_id_no', 'MAC-0945673', '2020-12-25 24:16:28'),
(5, 'lastname', 'Mohith', '2020-12-25 24:16:28'),
(5, 'firstname', 'Gowda', '2020-12-25 24:16:28'),
(5, 'middlename', 'P', '2020-12-25 24:16:28'),
(5, 'dob', '1992-23-03', '2020-12-25 24:16:28'),
(5, 'present_address', 'Mangalore', '2020-12-25 24:16:28'),
(5, 'permanent_address', 'Mangalore', '2020-12-25 24:16:28'),
(5, 'civil_status', 'Married', '2020-12-25 24:16:28'),
(5, 'nationality', 'Indian', '2020-12-25 24:16:28'),
(5, 'contact', '08954113210', '2020-12-25 24:16:28'),
(5, 'license_type', 'Professional', '2020-12-25 24:16:28'),
(5, 'image_path', 'uploads/drivers/1.jpg', '2020-12-25 24:16:28'),
(5, 'driver_id', '1', '2020-12-25 24:16:28');


-- --------------------------------------------------------

--
-- Table structure for table `offenses`
--

CREATE TABLE `offenses` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `fine` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Inactive, 1=Active',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offenses`
--

INSERT INTO `offenses` (`id`, `code`, `name`, `description`, `fine`, `status`, `date_created`, `date_updated`) VALUES
(1, 'OT-1001', 'Driving without License', 'This is a traffic offense for driving without License', 650, 1, '2021-08-19 09:14:43', '2022-04-29 09:17:50'),
(2, 'TO-1002', 'Running Over Speed Limit', 'Sample Traffic offense or violation for over speed limit', 1000, 1, '2021-08-19 09:14:43','2022-04-29 09:17:50' ),
(3, 'AD-1003', 'Driving without Helmet', 'This is a traffic offense for driving without helmet', 500, 1, '2021-19-19 09:14:43', '2022-04-29 09:17:50'),
(4,'RD-1004','Drink and drive','This is a traffic offense for drink and drive',1500,1,'2021-19-19 09:14:43', '2022-04-29 09:17:50'),
(5,'DC-1005','Triple riding','This is a traffic offense for triple riding',1000,1,'2021-19-19 09:14:43', '2022-04-29 09:17:50'),
(6,'AC-1006','Signal jump','This is a traffic offense for signal jump',1500,1,'2021-19-19 09:14:43', '2022-04-29 09:17:50');






-- --------------------------------------------------------

--
-- Table structure for table `offense_items`
--

CREATE TABLE `offense_items` (
  `driver_offense_id` int(30) NOT NULL,
  `offense_id` int(30) DEFAULT NULL,
  `fine` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offense_items`
--

INSERT INTO `offense_items` (`driver_offense_id`, `offense_id`, `fine`, `status`, `date_created`) VALUES
(1, 1, 650, 1, '2021-08-18 15:00:00'),
(1, 2, 1000, 1, '2021-08-18 15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `offense_list`
--

CREATE TABLE `offense_list` (
  `id` int(30) NOT NULL,
  `driver_id` int(30) NOT NULL,
  `officer_name` text NOT NULL,
  `officer_id` text NOT NULL,
  `ticket_no` text NOT NULL,
  `total_amount` float NOT NULL,
  `remarks` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offense_list`
--

INSERT INTO `offense_list` (`id`, `driver_id`, `officer_name`, `officer_id`, `ticket_no`, `total_amount`, `remarks`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'Kempegowda', 'OFC-789456123', '123456789', 1650, 'Traffic Offense record', 1, '2021-08-18 15:00:00', '2022-11-19 14:20:59'),
(2, 2, 'Bhaskar','RCA-123489705','678345192',2000,'Traffic Offense record',1,'2020-03-22 19:56:45','2020-11-26 10:29:20'),
(3, 3, 'Manoj','ADK-097841245','990375100',5000,'Traffic Offense record',1,'2021-01-02 22:16:45','2021-12-36 19:44:10');



-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Online Traffic Offense Management System - PHP'),
(6, 'short_name', 'OTOMS - PHP'),
(11, 'logo', 'uploads/1629334140_traffic_light_logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1629334140_traffic_bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(9, 'Monisha', 'K', 'moni', '1254737c076cf867dc53d60a0364f38e', 'uploads/1629336240_avatar.jpg', NULL, 2, '2021-08-19 09:24:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers_list`
--
ALTER TABLE `drivers_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers_meta`
--
ALTER TABLE `drivers_meta`
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `offenses`
--
ALTER TABLE `offenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offense_items`
--
ALTER TABLE `offense_items`
  ADD KEY `driver_offense_id` (`driver_offense_id`),
  ADD KEY `offense_id` (`offense_id`);

--
-- Indexes for table `offense_list`
--
ALTER TABLE `offense_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers_list`
--
ALTER TABLE `drivers_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `offenses`
--
ALTER TABLE `offenses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offense_list`
--
ALTER TABLE `offense_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drivers_meta`
--
ALTER TABLE `drivers_meta`
  ADD CONSTRAINT `drivers_meta_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offense_items`
--
ALTER TABLE `offense_items`
  ADD CONSTRAINT `offense_items_ibfk_1` FOREIGN KEY (`driver_offense_id`) REFERENCES `offense_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offense_items_ibfk_2` FOREIGN KEY (`offense_id`) REFERENCES `offenses` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `offense_list`
--
ALTER TABLE `offense_list`
  ADD CONSTRAINT `offense_list_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
