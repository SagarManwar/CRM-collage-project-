-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2023 at 07:43 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `prequest`
--

CREATE TABLE `prequest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `services` text DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `posting_date` date DEFAULT NULL,
  `remark` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prequest`
--

INSERT INTO `prequest` (`id`, `name`, `email`, `contactno`, `company`, `services`, `others`, `query`, `status`, `posting_date`, `remark`) VALUES
(1, 'Mark Cooper', 'mcooper@mail.com', '09123654789', 'Test Only', '[\\\"Service\\\\/Support Needed 101\\\",\\\"Service\\\\/Support Needed 102\\\",\\\"Service\\\\/Support Needed 103\\\",\\\"Service\\\\/Support Needed 106\\\",\\\"Service\\\\/Support Needed 108\\\"]', '', 'Sample only', 0, '2022-11-29', 'Sample remarks'),
(2, 'sagar', 'sagarmanwar625@gmail.com', '07900148087', 'jerrygoc@gmail.com', '[\\\"Service\\\\/Support Needed 106\\\",\\\"Service\\\\/Support Needed 107\\\"]', '', 'Need ASAP!\r\n', 0, '2023-04-22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(11) DEFAULT NULL,
  `email_id` varchar(300) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `task_type` varchar(300) DEFAULT NULL,
  `prioprity` varchar(300) DEFAULT NULL,
  `ticket` longtext DEFAULT NULL,
  `attachment` varchar(300) DEFAULT NULL,
  `status` varchar(300) DEFAULT NULL,
  `admin_remark` longtext DEFAULT NULL,
  `posting_date` date DEFAULT NULL,
  `admin_remark_date` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `ticket_id`, `email_id`, `subject`, `task_type`, `prioprity`, `ticket`, `attachment`, `status`, `admin_remark`, `posting_date`, `admin_remark_date`) VALUES
(13, '6', 'mcooper@mail.com', 'My Samplle Ticket', 'Option 3', 'urgent(functional problem)', 'Sample Description of the ticket', NULL, 'closed', 'test', '2022-11-29', '2022-11-29 05:53:10'),
(14, '7', 'mcooper@mail.com', 'Sample ticket 102', 'Option 4', 'non-urgent', 'Sample only', NULL, 'closed', 'done', '2022-11-29', '2022-11-29 05:53:52'),
(15, '2', 'sagarmanwar625@gmail.com', 'Bothering', 'Option 2', 'important', 'Wrong order placed need to change.\r\n', NULL, 'Open', NULL, '2023-04-22', '2023-04-22 10:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `alt_email`, `password`, `mobile`, `gender`, `address`, `status`, `posting_date`) VALUES
(1, 'Admin Administrator', 'info@mail.com', 'admin@mail.com', 'admin123', '1234567890', 'male', 'Block 6, Lot 14, 23 St., Here City, Down There, 2306 ', NULL, '2021-04-22 12:25:19'),
(3, 'sagar', 'sagarmanwar625@gmail.com', NULL, '123456', '07900148087', 'male', NULL, NULL, '2023-03-25 05:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `usercheck`
--

CREATE TABLE `usercheck` (
  `id` int(11) NOT NULL,
  `logindate` varchar(255) DEFAULT '',
  `logintime` varchar(255) DEFAULT '',
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `ip` varbinary(16) DEFAULT NULL,
  `mac` varbinary(16) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `usercheck`
--

INSERT INTO `usercheck` (`id`, `logindate`, `logintime`, `user_id`, `username`, `email`, `ip`, `mac`, `city`, `country`) VALUES
(4, '2022/11/29', '09:36:21am', 2, 'Mark Cooper', 'mcooper@mail.com', 0x3a3a31, 0x30302d30422d32422d30322d36352d44, '', ''),
(3, '2022/11/29', '09:01:36am', 2, 'Mark Cooper', 'mcooper@mail.com', 0x3a3a31, 0x30302d30422d32422d30322d36352d44, '', ''),
(5, '2023/03/25', '11:04:57am', 3, 'sagar', 'sagarmanwar625@gmail.com', 0x3a3a31, 0x33432d37432d33462d31382d39462d37, '', ''),
(6, '2023/04/20', '12:34:17pm', 3, 'sagar', 'sagarmanwar625@gmail.com', 0x3a3a31, 0x0d0a2020204448435020456e61626c65, '', ''),
(7, '2023/04/21', '04:04:19pm', 3, 'sagar', 'sagarmanwar625@gmail.com', 0x3a3a31, 0x0d0a2020204448435020456e61626c65, '', ''),
(8, '2023/04/21', '05:03:18pm', 3, 'sagar', 'sagarmanwar625@gmail.com', 0x3a3a31, 0x0d0a2020204448435020456e61626c65, '', ''),
(9, '2023/04/22', '02:36:17pm', 3, 'sagar', 'sagarmanwar625@gmail.com', 0x3a3a31, 0x0d0a2020204448435020456e61626c65, '', ''),
(10, '2023/04/22', '04:02:34pm', 3, 'sagar', 'sagarmanwar625@gmail.com', 0x3a3a31, 0x0d0a2020204448435020456e61626c65, '', ''),
(11, '2023/04/22', '06:19:16pm', 3, 'sagar', 'sagarmanwar625@gmail.com', 0x3a3a31, 0x0d0a2020204448435020456e61626c65, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prequest`
--
ALTER TABLE `prequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercheck`
--
ALTER TABLE `usercheck`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prequest`
--
ALTER TABLE `prequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `usercheck`
--
ALTER TABLE `usercheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
