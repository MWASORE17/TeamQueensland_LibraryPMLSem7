-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 02:16 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libraryonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phoneNumber` varchar(13) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `email`, `name`, `gender`, `phoneNumber`, `address`) VALUES
(1, 'erwinyellow@yahoo.com', 'Erwin', 'male', '082369681099', 'Jl. Address No. Address');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookId` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` varchar(30) NOT NULL,
  `barcode` varchar(30) NOT NULL,
  `qty` int(11) NOT NULL,
  `borrowedQty` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `releaseDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookId`, `name`, `category`, `description`, `author`, `barcode`, `qty`, `borrowedQty`, `adminId`, `releaseDate`) VALUES
(1, 'Secrets for the Mad', 'art', 'deskripsi buku history pertama yang diketikan di dalam deskripsi buku kategori history. buku deskripsi kategori history ini bernama buku1', 'Erwin', '1235678910', 2, 0, 1, '2017-12-17 07:44:46'),
(3, 'The Little Book of Hygge', 'art', 'deskripsi buku travel pertama yang diketikan di dalam deskripsi buku kategori travel. buku deskripsi kategori travelini bernama buku2', 'Erwin', '1234567891', 11, 0, 1, '2017-12-17 07:44:46'),
(4, 'Amsterdam Guide', 'travel', 'deskripsi buku travel pertama yang diketikan di dalam deskripsi buku kategori travel. buku deskripsi kategori travelini bernama buku2', 'Erwin', '123456789012', 11, 0, 1, '2017-12-17 07:44:46'),
(5, 'The Accidental Universe', 'science', 'deskripsi buku travel pertama yang diketikan di dalam deskripsi buku kategori travel. buku deskripsi kategori travelini bernama buku2', 'Erwin', '123436789', 3, 0, 1, '2017-12-17 07:44:46'),
(6, 'Generous Justice', 'religion', 'this is religion Book', 'Erwin', '1826481028', 10, 0, 1, '2017-12-17 07:44:46'),
(7, 'The Power of Now', 'religion', 'This is Religion Book', 'Erwin', '12362741', 10, 0, 1, '2017-12-17 07:44:46'),
(8, 'Sapiens', 'science', 'This is Science Book', 'Erwin', '3266714932', 10, 0, 1, '2017-12-17 07:44:46'),
(9, 'When Breath Becomes Air', 'science', 'This is Science Book', 'Erwin', '72549018', 10, 0, 1, '2017-12-17 07:44:46'),
(10, 'The Atlas of Beauty', 'travel', 'This is Travel Book', 'Erwin', '97162936', 11, 0, 1, '2017-12-17 07:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `bookbook`
--

CREATE TABLE `bookbook` (
  `bookBookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookbook`
--

INSERT INTO `bookbook` (`bookBookId`, `userId`, `bookId`, `valid`, `date`) VALUES
(40, 9, 1, 0, '2017-12-27 22:46:41'),
(41, 9, 3, 0, '2017-12-27 22:46:51'),
(42, 9, 4, 0, '2017-12-27 22:48:24'),
(43, 9, 5, 0, '2017-12-27 22:50:07'),
(44, 9, 5, 0, '2017-12-27 22:50:13'),
(45, 9, 1, 0, '2017-12-27 22:54:17'),
(46, 9, 1, 0, '2017-12-27 22:54:25'),
(47, 9, 1, 0, '2017-12-27 22:55:04'),
(48, 9, 1, 0, '2017-12-27 22:55:12'),
(49, 9, 4, 0, '2017-12-27 22:55:40'),
(50, 9, 4, 0, '2017-12-27 22:55:46'),
(51, 9, 1, 0, '2017-12-27 22:57:48'),
(52, 9, 1, 0, '2017-12-27 22:57:57'),
(53, 9, 1, 0, '2017-12-27 22:57:58'),
(54, 9, 1, 0, '2017-12-27 22:58:09'),
(55, 9, 1, 0, '2017-12-27 22:58:14'),
(56, 9, 1, 0, '2017-12-27 22:58:16'),
(57, 9, 1, 0, '2017-12-27 22:58:21'),
(58, 9, 1, 0, '2017-12-27 22:58:30'),
(59, 9, 1, 0, '2017-12-27 22:58:35'),
(60, 9, 1, 0, '2017-12-27 22:58:50'),
(61, 9, 1, 0, '2017-12-27 22:58:53'),
(62, 9, 1, 0, '2017-12-27 22:59:10'),
(63, 9, 1, 0, '2017-12-27 22:59:17'),
(64, 9, 1, 0, '2017-12-27 22:59:20'),
(65, 9, 1, 0, '2017-12-27 22:59:21'),
(66, 9, 1, 0, '2017-12-27 22:59:22'),
(67, 9, 1, 0, '2017-12-27 22:59:22'),
(68, 9, 1, 0, '2017-12-27 22:59:23'),
(69, 9, 1, 0, '2017-12-27 22:59:24'),
(70, 9, 1, 0, '2017-12-27 22:59:24'),
(71, 9, 1, 0, '2017-12-27 22:59:29'),
(72, 9, 1, 0, '2017-12-27 22:59:30'),
(73, 9, 1, 0, '2017-12-27 22:59:31'),
(74, 9, 1, 0, '2017-12-27 22:59:32'),
(75, 9, 1, 0, '2017-12-27 22:59:32'),
(76, 9, 1, 0, '2017-12-27 22:59:34'),
(77, 9, 1, 0, '2017-12-27 22:59:37'),
(78, 9, 1, 0, '2017-12-27 22:59:38'),
(79, 9, 1, 0, '2017-12-27 22:59:41'),
(80, 9, 1, 0, '2017-12-27 23:02:14'),
(81, 9, 1, 0, '2017-12-27 23:07:49'),
(82, 9, 1, 0, '2017-12-27 23:09:22'),
(83, 9, 1, 0, '2017-12-27 23:09:53'),
(84, 9, 1, 0, '2017-12-27 23:09:58'),
(85, 9, 1, 0, '2017-12-27 23:10:11'),
(86, 9, 4, 0, '2017-12-27 23:10:19'),
(87, 9, 1, 0, '2017-12-27 23:10:24'),
(88, 9, 4, 0, '2017-12-29 23:31:17'),
(89, 9, 4, 0, '2017-12-29 23:32:03'),
(90, 9, 1, 0, '2017-12-30 00:03:26'),
(91, 9, 4, 0, '2018-01-06 00:01:38'),
(92, 9, 4, 0, '2018-01-06 00:01:44'),
(93, 9, 4, 0, '2018-01-06 00:01:50'),
(94, 9, 4, 0, '2018-01-06 00:01:53'),
(95, 9, 4, 0, '2018-01-06 00:01:56'),
(96, 9, 4, 0, '2018-01-06 00:02:17'),
(97, 9, 3, 0, '2018-01-11 20:13:36'),
(98, 9, 1, 0, '2018-01-11 20:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `borrowbook`
--

CREATE TABLE `borrowbook` (
  `borrowBookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `bookBookId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowbook`
--

INSERT INTO `borrowbook` (`borrowBookId`, `userId`, `bookId`, `bookBookId`, `adminId`, `valid`, `date`) VALUES
(1, 9, 3, 97, 1, 0, '2018-01-11 20:13:56'),
(2, 9, 1, 98, 1, 0, '2018-01-11 20:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `returnBookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `borrowBookId` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `penalty` int(11) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`returnBookId`, `userId`, `bookId`, `borrowBookId`, `adminId`, `penalty`, `date`) VALUES
(1, 9, 1, 6, 1, 883000, '2017-12-29 22:44:36'),
(2, 9, 4, 7, 1, 877000, '2017-12-29 22:44:57'),
(3, 9, 4, 8, 1, 0, '2017-12-29 23:31:55'),
(4, 9, 4, 9, 1, 19000, '2017-12-29 23:52:51'),
(5, 9, 1, 10, 1, 8000, '2017-12-30 00:04:59'),
(6, 9, 3, 1, 1, 64000, '2018-01-11 20:16:00'),
(7, 9, 1, 2, 1, 0, '2018-01-11 20:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `userfavorite`
--

CREATE TABLE `userfavorite` (
  `favBookId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userfavorite`
--

INSERT INTO `userfavorite` (`favBookId`, `userId`, `category`) VALUES
(11, 9, 'Art'),
(12, 9, 'Travel'),
(13, 10, 'Science'),
(14, 10, 'Religion');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phoneNumber` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `email`, `password`, `name`, `gender`, `address`, `phoneNumber`) VALUES
(9, 'erwin@yahoo.com', '$2y$10$6AIm5SpMwbgQhq1SeSTzsOrxMGUQWn/UTszjkqE/mkSSzQe1Ag6Se', 'Erwin Huang', 'Male', 'asjl. adress', '082369681099'),
(10, 'erwinhuang@yahoo.com', '$2y$10$poe3h4LUmr5H73iYR60jtOomjreRquFokt/ER0Mmx5gqta10UVl7.', 'Erwin', 'Male', 'jl. odi', '082369681099');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishListId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `bookId` int(11) NOT NULL,
  `valid` tinyint(1) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishListId`, `userId`, `bookId`, `valid`, `date`) VALUES
(38, 9, 1, 0, '2017-12-27 22:45:40'),
(39, 9, 1, 0, '2017-12-27 22:46:04'),
(40, 9, 1, 0, '2017-12-27 22:46:16'),
(41, 9, 3, 0, '2017-12-27 22:46:29'),
(42, 9, 4, 0, '2017-12-27 22:46:31'),
(43, 9, 5, 0, '2017-12-27 22:50:07'),
(44, 9, 1, 0, '2017-12-27 22:58:02'),
(45, 9, 1, 0, '2017-12-27 22:58:07'),
(46, 9, 1, 0, '2017-12-27 23:10:06'),
(47, 9, 4, 0, '2018-01-06 00:01:47'),
(48, 9, 4, 0, '2018-01-06 00:02:23'),
(49, 9, 4, 0, '2018-01-10 23:24:07'),
(50, 9, 1, 0, '2018-01-10 23:24:30'),
(51, 9, 3, 1, '2018-01-11 20:12:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `bookbook`
--
ALTER TABLE `bookbook`
  ADD PRIMARY KEY (`bookBookId`);

--
-- Indexes for table `borrowbook`
--
ALTER TABLE `borrowbook`
  ADD PRIMARY KEY (`borrowBookId`);

--
-- Indexes for table `returnbook`
--
ALTER TABLE `returnbook`
  ADD PRIMARY KEY (`returnBookId`);

--
-- Indexes for table `userfavorite`
--
ALTER TABLE `userfavorite`
  ADD PRIMARY KEY (`favBookId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishListId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bookbook`
--
ALTER TABLE `bookbook`
  MODIFY `bookBookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `borrowbook`
--
ALTER TABLE `borrowbook`
  MODIFY `borrowBookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `returnbook`
--
ALTER TABLE `returnbook`
  MODIFY `returnBookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userfavorite`
--
ALTER TABLE `userfavorite`
  MODIFY `favBookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishListId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
