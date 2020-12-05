-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2020 at 03:39 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_ajax`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `auther` varchar(200) NOT NULL,
  `pages` varchar(200) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `auther`, `pages`, `image`) VALUES
(1, 'javascript', 'Lorem ipsum', '200', 'http://localhost/example-ajax/imgs/1.png'),
(2, 'php', 'ipsum', '400', 'http://localhost/example-ajax/imgs/2.png'),
(3, 'css', 'lorim', '100', 'http://localhost/example-ajax/imgs/3.png'),
(4, 'html', 'nobody', '250', 'http://localhost/example-ajax/imgs/1.png'),
(5, 'mysql', 'anas alpure', '300', 'http://localhost/example-ajax/imgs/2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
