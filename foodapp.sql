-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2022 at 09:49 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `name`, `password`) VALUES
(1, 'ag12', 'ahmed gamal', '1234'),
(2, 'ahmed_11', 'ahmed gamal', '0114789'),
(3, 'aa_46', 'ahmed ali', 'ahmedali');

-- --------------------------------------------------------

--
-- Table structure for table `desert`
--

CREATE TABLE `desert` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(800) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desert`
--

INSERT INTO `desert` (`id`, `name`, `description`, `image`) VALUES
(1, 'cake with choclate', 'Dessert is something sweet, such as fruit or a pudding, that you eat at the end of a meal.', 'C:\\Users\\ahmed_gamal\\Downloads\\cake.jpg'),
(2, 'ice crame dessert', 'ice crame dessert using cake and fruits', 'C:\\Users\\ahmed_gamal\\Downloads\\ice crame deseert.jpg'),
(3, 'Coctail', 'some fruits mixed with drinks', 'C:\\Users\\ahmed_gamal\\Downloads\\coctail.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(800) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`id`, `name`, `description`, `image`) VALUES
(1, 'Tea', 'Tea is an aromatic beverage prepared by pouring hot or boiling water over cured or', 'C:\\Users\\ahmed_gamal\\Downloads\\herbal-tea.png'),
(2, 'Coffe', 'Coffee is a brewed drink prepared from roasted coffee beans', 'C:\\Users\\ahmed_gamal\\Downloads\\coffee-cup.png'),
(3, 'RedBull', 'ريد بول مشروب غازي يعود منشؤه إلى النمسا ألا انه أن يلقى رواجاً عالمياُ في أيامنا هذه.', 'C:\\Users\\ahmed_gamal\\Downloads\\redbull.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(800) NOT NULL,
  `image` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `name`, `description`, `image`) VALUES
(2, 'snacks', 'A snack is a small portion of food generally eaten between meals.', 'C:\\Users\\ahmed_gamal\\Downloads\\snacks.png'),
(3, 'steck', 'From Middle English stiche, from Old English stycce (“a piece, bit”)', 'C:\\Users\\ahmed_gamal\\Downloads\\steck.jpg'),
(4, 'burger', 'hamburger (or burger for short) is a food, which in American English is considered a sandwich', 'C:\\Users\\ahmed_gamal\\Downloads\\Vegetarian-bean-burger.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`,`username`);

--
-- Indexes for table `desert`
--
ALTER TABLE `desert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `desert`
--
ALTER TABLE `desert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
