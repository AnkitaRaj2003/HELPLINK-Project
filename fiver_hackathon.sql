-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 09:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fiver_hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` text NOT NULL,
  `location` varchar(120) NOT NULL,
  `posted_at` datetime NOT NULL DEFAULT current_timestamp(),
  `time` varchar(20) NOT NULL,
  `work` varchar(30) NOT NULL,
  `volunterr_count` int(6) NOT NULL,
  `organization_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `des`, `location`, `posted_at`, `time`, `work`, `volunterr_count`, `organization_id`) VALUES
(3, 'Event 1', 'Hey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjd<br>Hey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjdHey there dafhsdjflasjd', 'Delhi', '2023-08-31 20:50:57', '3pm to 7pm', 'washing', 0, 6),
(4, 'Event 2', 'ajfkdjfkdfjkjfkdfj kajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkaj fkdjfkdfj kjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfk<br>dfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjkajfkdjfkdfjkjfkdfjk', 'Veitnam', '2023-08-31 21:31:36', '4pm to 6pm', 'Walk', 0, 5),
(5, 'Event organization 3', 'shdfkjasjkdjfkshdfkjasjkdjfkshdfkj \r\nasjkdjfkshdfkja sjkdjfkshdfkjasjkdjfkshdfkja sjkdjfkshdfk jasjkdjfkshdfkjasjkdjfk shdfkjasjkdjfkshdfkjasjkdjfksh dfkjasjkdjfkshdfkjasjkdjfk shdfkja \r\nsjkdjfkshdfkja sjkdjfkshdfkjasjk djfkshdfkjasjkdjfkshdfk \r\njasjkdjfkshdfkjasjkdjfks hdfkjasjkdjfkshdfkjasjkdjfkshd fkjasjkdjfkshd fkjasjkdjfkshdfk jasjkdjfkshdfkjasjkd jfkshdfkjasjkdjfk shdfkjasjkdjfkshdfkjasjkdjf kshdfkjasjkdjfks hdfkjasjkdjfkshdfkjasjkdjfks hdfkjasjkdjfkshdfkjasjk djfkshdfkjasjkdjfkshd fkjasjkdjfkshdfkjasjkdjfks hdfkjasjkdjfkshdfkjasjkdjfk', 'Mumbai', '2023-09-01 08:00:05', '5pm to 8pm', 'Bhajan', 0, 5),
(6, 'Ankita meena', 'vhgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgjvhgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgjvhgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgjvhgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgjvhgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgjvhgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgjvhgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgjvhgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj hgjhgjjgj', 'Delhi', '2023-09-01 12:30:33', '5pm to 8pm', 'Walk', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `address` varchar(200) NOT NULL,
  `about` text DEFAULT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `name`, `email`, `password`, `created_at`, `address`, `about`, `img`) VALUES
(4, 'Wishes', 'ankita@gmail.com', '$2y$10$7ZGk9bp.Nt.zYJuZjEZAke/xY/tKAGm7COwU19DQ.EWUX0VzK2zAK', '2023-08-31 11:36:05', 'Delhi', 'hkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdkshhkdsjdksh', 'IMG-64f02dcce95c95.17446421.png'),
(5, 'Organization 3', 'ankita@gmail.com', '$2y$10$9BFO7ubfYrFQi2k2mHqmp.incuAaDfzb1hMwk1b4a.3zImKoa03nO', '2023-08-31 11:52:19', 'Delhi', 'alfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkj', 'IMG-64f0319b36ff85.35006918.png'),
(6, 'Organization 2', 'ankita@gmail.com', '$2y$10$Y0YdKKju9FclFRUTD.oMpeNyEbIRNJDX.HrES6emw4z3Qs.gjc4RW', '2023-08-31 11:54:24', 'delhi', 'alfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkjalfjlsjdfljlasjfdlkj', 'IMG-64f03218dea578.83176221.png');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `id` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(3) NOT NULL,
  `location` varchar(50) NOT NULL,
  `about` text NOT NULL,
  `education` varchar(100) NOT NULL,
  `img` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `name`, `email`, `age`, `location`, `about`, `education`, `img`, `password`, `created_at`) VALUES
(1, 'Ankita Meena', 'ankitameena@gmail.com', 0, '', '', '', '', '$2y$10$EJHFVM8qmzjbxNM5Mq5Vv.4z/HvTM03aanf2CNDuY/TLCWdIn7MSW', '2023-08-28 17:02:09'),
(2, 'Shreya Raj', 'shreyraj@gmail.com', 0, '', '', '', '', '$2y$10$WCul96AuYf.67MjCXlwtuOZtuOdLSKJ74reQq7RgcBwQRXrfAPVxm', '2023-08-28 17:12:03'),
(3, 'user1', 'ankita@gmail.com', 0, '', '', '', '', '$2y$10$PIkCYJY.uEJ6pCFxHOx8g.9B7ly4tWGR.O6r5JcAZIhgk0MawX53u', '2023-08-31 21:39:04'),
(4, 'Ankita', 'ankita@gmail.com', 0, '', '', '', '', '$2y$10$2gc6FatOR2b.tUWlDMqNxe/FllfXN3K.fxQYwp0/DVLHh1kgdPlp2', '2023-09-01 09:33:24'),
(5, 'ankita 3', 'ankita@gmail.com', 12, 'Mumbai', 'hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello hello ', '12th pass', 'IMG-64f166d8218ec1.82878126.png', '$2y$10$s4Rzvjz0klef0APkbHRw0Opuwu3ar.RM.eo7wrCVx13QmmwLEvkpa', '2023-09-01 09:51:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_event_organization` (`organization_id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `fk_event_organization` FOREIGN KEY (`organization_id`) REFERENCES `organization` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
