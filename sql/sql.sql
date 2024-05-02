-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 25, 2023 at 05:37 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `info` text NOT NULL,
  `amount` double NOT NULL,
  `total_stock` int(11) NOT NULL,
  `logo_url` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `info`, `amount`, `total_stock`, `logo_url`) VALUES
(1, 'GMAIL ACCOUNT [FRESH]', 'This Account Formate :<br>                        email:password:recovery_mail <br>                        ❓Note :<br>                        → Changeable Password<br>                        → All are Working Account <br>                        → With warranty</p>', 10, 1, 'https://i.ibb.co/fdV8bdL/gmail.png'),
(3, 'Netflix', 'This Account Formate :<br>                        email:password:recovery_mail <br>                        ❓Note :<br>                        → Changeable Password<br>                        → All are Working Account <br>                        → No warranty</p>', 12, 0, 'https://duet-cdn.vox-cdn.com/thumbor/0x0:3151x2048/750x500/filters:focal(1575x1024:1576x1025):format(webp)/cdn.vox-cdn.com/uploads/chorus_asset/file/15844974/netflixlogo.0.0.1466448626.png');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`) VALUES
(1, 'jatintiwari0');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`id`, `category_id`, `username`, `password`, `status`) VALUES
(1, 1, 'U', 'rRsWLIYS35', 2),
(2, 1, 'U', 'rRsWLIYS35', 2),
(3, 1, 'v', 'vc', 2),
(4, 1, 'work', 'work', 2),
(5, 1, 'Adminx', 'Adminx', 2),
(6, 1, 'haddaloht@gmail.com', '8ox61pklkc9', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `txn_id`, `username`, `password`) VALUES
(1, '371447845116', 'U', 'rRsWLIYS35'),
(2, '371447845116', 'U', 'rRsWLIYS35'),
(3, '372567391795', 'v', 'vc'),
(4, '372576335822', 'work', 'work'),
(5, '335921723268', 'Adminx', 'Adminx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
