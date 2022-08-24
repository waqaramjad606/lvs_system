-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 11:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lvs_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(6) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `cnic_no` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `home_address` varchar(50) DEFAULT NULL,
  `permanent_address` varchar(50) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `status` int(1) DEFAULT 0 COMMENT '0=pending,1=complete',
  `dob` date DEFAULT NULL,
  `ever_applied_loan` int(2) DEFAULT NULL,
  `marital_status` varchar(20) DEFAULT NULL,
  `criminal_record` int(2) DEFAULT NULL,
  `guarantor_name_1` varchar(25) DEFAULT NULL,
  `guarantor_cnic_1` varchar(25) DEFAULT NULL,
  `guarantor_phone_1` varchar(20) DEFAULT NULL,
  `guarantor_name_2` varchar(20) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `guarantor_cnic_2` varchar(20) DEFAULT NULL,
  `guarantor_phone_2` varchar(20) DEFAULT NULL,
  `organization_id` varchar(10) DEFAULT NULL,
  `loan_duration` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `fname`, `lname`, `cnic_no`, `phone`, `home_address`, `permanent_address`, `issue_date`, `status`, `dob`, `ever_applied_loan`, `marital_status`, `criminal_record`, `guarantor_name_1`, `guarantor_cnic_1`, `guarantor_phone_1`, `guarantor_name_2`, `updated_at`, `created_at`, `guarantor_cnic_2`, `guarantor_phone_2`, `organization_id`, `loan_duration`) VALUES
(9, 'lvs', 'system', '0900786010011', '900078601', 'gift university', 'gift university', '2022-05-20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 16:09:39', '2022-05-09 17:32:29', NULL, NULL, NULL, NULL),
(11, 'gift', 'university', '3410197557581', '900078601', 'gift university near board office gujranwala', 'gift university near board office gujranwala', '2004-01-06', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 14:46:05', '2022-05-11 13:48:50', NULL, NULL, NULL, NULL),
(12, 'waqar', 'amjad', '3410179447581', '900078601', 'shalimar town', 'waleed block 33', '1998-06-20', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 23:58:25', '2022-07-19 23:58:25', NULL, NULL, NULL, NULL),
(13, 'IJAZ AHMAD', 'HAMBLE SHAFQAT TARAR', '3410178447581', '900078601', 'gift university Aboard office gujranwala', 'gift university Aboard office gujranwala', '2022-07-25', 0, '2000-01-24', NULL, 'single', NULL, 'xyx', '3410178447581', '900078601', 'xyz2', '2022-07-24 13:13:51', '2022-07-24 13:13:51', '3410178447581', '900078601', '2', NULL),
(14, 'IJAZ AHMAD', 'HAMBLE SHAFQAT TARAR', '3410178447581', '9000786011', 'gift university', 'pcd gujranwala', '2000-07-24', 0, '2000-06-24', NULL, 'single', NULL, 'fatim', '3410167009071', '078651516181', 'eiman', '2022-07-24 13:41:02', '2022-07-24 13:41:02', '341017860191', '03117878016', '2', NULL),
(16, 'Maaz', 'Safdar', '3410157555285', '900078601', 'QDS', 'gift university near board office gujranwala', NULL, 0, '2000-01-11', NULL, 'single', NULL, 'fatim', '3410157555285', '900078601', 'eiman', '2022-08-24 16:43:59', '2022-08-24 16:43:59', '3410157555285', '900078601', '4', '1.5 years');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_05_02_071558_user', 1),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2022_07_07_024941_organizations', 2),
(5, '2022_07_19_035051_nadra_information', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nadra_informations`
--

CREATE TABLE `nadra_informations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cnic` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `criminal_record` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applied_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `is_verify` int(2) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nadra_informations`
--

INSERT INTO `nadra_informations` (`id`, `cnic`, `first_name`, `last_name`, `address`, `phone_no`, `gender`, `dob`, `criminal_record`, `applied_status`, `is_verify`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, '3410157555284', 'Uzma', 'Ahsan', 'House#01, Block A2, Shafae City, City Housing', '03046900014', 'Female', '0000-00-00', 'CLEAR', '0', 1, NULL, '2022-08-24 20:43:14', '2022-08-24 15:43:14'),
(3, '3410157555285', 'Maaz', 'Safdar', 'House#02, Block A2, Shafae City, City Housing', '03046900015', 'Male', '0000-00-00', 'CLEAR', '0', 1, NULL, '2022-08-24 21:32:09', '2022-08-24 16:32:09'),
(4, '3410157555286', 'Hooran', 'Ammar', 'House#03, Block A2, Shafae City, City Housing', '03046900016', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(5, '3410157555287', 'Arslan', 'Ammar', 'House#04, Block A2, Shafae City, City Housing', '03046900017', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(6, '3410157555288', 'Aimen ', 'Latif', 'House#05, Block A2, Shafae City, City Housing', '03046900018', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(7, '3410157555289', 'Danial', 'Allah Ditta', 'House#06, Block A2, Shafae City, City Housing', '03046900019', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(8, '3410157555290', 'Laiba', 'Allah Rakha', 'House#07, Block A2, Shafae City, City Housing', '03046900020', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(9, '3410157555291', 'Arslan', 'Durani', 'House#08, Block A2, Shafae City, City Housing', '03046900021', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(10, '3410157555292', 'Arooj', 'Safdar', 'House#09, Block A2, Shafae City, City Housing', '03058242395', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(11, '3410157555293', 'Moez', 'Ammar', 'House#10, Block A2, Shafae City, City Housing', '03058242396', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(12, '3410157555294', 'Arass', 'Anwar', 'House#11, Block A3, Shafae City, City Housing', '03058242397', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(13, '3410157555295', 'Adeel ', 'Kamar', 'House#12, Block A3, Shafae City, City Housing', '03058242398', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(14, '3410157555296', 'Saira', 'Jameel', 'House#13, Block A3, Shafae City, City Housing', '03058242399', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(15, '3410157555297', 'Umar', 'Khan', 'House#14, Block A3, Shafae City, City Housing', '03058242400', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(16, '3410157555298', 'Areej', 'Ali', 'House#15, Block A3, Shafae City, City Housing', '03058242401', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(17, '3410157555299', 'Taimoor', 'Aslam', 'House#16, Block A3, Shafae City, City Housing', '03058242401', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(18, '3410157555300', 'Fatima', 'Rafique', 'House#17, Block A3, Shafae City, City Housing', '03056400301', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(19, '3410157555301', 'Sufiyan', 'Shafakat', 'House#18, Block A3, Shafae City, City Housing', '03056400302', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(20, '3410157555302', 'Anoosha', 'Zafar', 'House#19, Block A3, Shafae City, City Housing', '03056400303', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(21, '3410157555303', 'Fahad', 'Akhtar', 'House#20, Block A3, Shafae City, City Housing', '03056400304', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(22, '3410157555304', 'Bisma', 'Salman', 'House#21, Block A3, Shafae City, City Housing', '03056400305', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(23, '3410157555305', 'Tayyab', 'Ahmad', 'House#22, Block A3, Shafae City, City Housing', '03056400306', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(24, '3410157555306', 'Hina', 'Umar', 'House#23, Block A3, Shafae City, City Housing', '03056400307', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(25, '3410157555307', 'Aleem', 'Ali', 'House#24, Block A3, Shafae City, City Housing', '03056400308', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(26, '3410157555308', 'Zubair', 'Usman', 'House#25, Block A3, Shafae City, City Housing', '03056400309', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(27, '3410157555309', 'Talha', 'Nawaz', 'House#26, Block A3, Shafae City, City Housing', '03056400310', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(28, '3410157555310', 'Rabeeya', 'Zafar', 'House#27, Block A3, Shafae City, City Housing', '03056400311', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(29, '3410157555311', 'Ahmad', 'Abbas', 'House#28, Block A3, Shafae City, City Housing', '03056400312', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(30, '3410157555312', 'Tayyaba', 'Anjum', 'House#29, Block A3, Shafae City, City Housing', '03056400313', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(31, '3410157555313', 'Hamza ', 'Sarwar', 'House#30, Block A3, Shafae City, City Housing', '03056400314', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(32, '3410157555314', 'Esha', 'Maqsood', 'House#1, Block B2, Shafae City, City Housing', '03056400315', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(33, '3410157555315', 'Humayun', 'Saeed', 'House#2, Block B2, Shafae City, City Housing', '03056400316', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(34, '3410157555316', 'Sania', 'Irfan', 'House#3, Block B2, Shafae City, City Housing', '03056400317', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(35, '3410157555317', 'Sami', 'Azam', 'House#4, Block B2, Shafae City, City Housing', '03056400318', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(36, '3410157555318', 'Sasha', 'Ahsan', 'House#5, Block B2, Shafae City, City Housing', '03056400319', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(37, '3410157555319', 'Feroz', 'Amjad', 'House#6, Block B2, Shafae City, City Housing', '03056400320', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(38, '3410157555320', 'Mahira', 'Sharma', 'House#1, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228869', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(39, '3410157555321', 'Hina', 'Qadeer', 'House#2, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228870', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(40, '3410157555322', 'Tariq', 'Mehmood', 'House#3, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228871', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(41, '3410157555323', 'Maryam', 'Nawaz', 'House#4, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228872', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(42, '3410157555324', 'Hamza ', 'Shehbaz', 'House#5, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228873', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(43, '3410157555325', 'Maryam', 'Augranzaib', 'House#6, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228874', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(44, '3410157555326', 'Jahanger', 'Iqbal', 'House#7, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228875', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(45, '3410157555327', 'Aurangzaib', 'Malik', 'House#8, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228876', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(46, '3410157555328', 'Mishal', 'Noor', 'House#9, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228877', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(47, '3410157555329', 'Rehman', 'Abdullah', 'House#10, Line#1, Block Q9, Rahwali Gujranwala Cantt', '033077228878', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(48, '3410157555330', 'Merub', 'Sohail', 'House#11, Line#2, Block Q9, Rahwali Gujranwala Cantt', '033077228879', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(49, '3410157555331', 'Ibrahim', 'Zuhaib', 'House#12, Line#2, Block Q9, Rahwali Gujranwala Cantt', '033077228880', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(50, '3410157555332', 'Fatima', 'Qamar', 'House#13, Line#2, Block Q9, Rahwali Gujranwala Cantt', '033077228881', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(51, '3410157555333', 'Ubaid', 'Samar', 'House#14, Line#2, Block Q9, Rahwali Gujranwala Cantt', '033077228882', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(52, '3410157555334', 'Rubina', 'Zia', 'House#15, Line#2, Block Q9, Rahwali Gujranwala Cantt', '033077228883', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(53, '3410157555335', 'Falak', 'Shabir', 'House#16, Line#2, Block Q9, Rahwali Gujranwala Cantt', '033077228884', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(54, '3410157555336', 'Sara', 'Falak', 'House#17, Line#2, Block Q9, Rahwali Gujranwala Cantt', '033077228885', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(55, '3410157555337', 'Mustansar', 'Hussain', 'House#18, Line#2, Block Q9, Rahwali Gujranwala Cantt', '03215850693', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(56, '3410157555338', 'Hafsa', 'Saeed', 'House#19, Line#2, Block Q9, Rahwali Gujranwala Cantt', '03215850694', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(57, '3410157555339', 'Hamza ', 'Taimoor', 'House#20, Line#2, Block Q9, Rahwali Gujranwala Cantt', '03215850695', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(58, '3410157555340', 'Sobia', 'Zahoor', 'House#1, Line#4, Block T5, Rahwali Gujranwala Cantt', '03215850696', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(59, '3410157555341', 'Murtaza', 'Ikhlaq', 'House#2, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850697', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(60, '3410157555342', 'Laraib', 'Ayub', 'House#3, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850698', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(61, '3410157555343', 'Adress', 'F arooq', 'House#4, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850699', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(62, '3410157555344', 'Asma', 'Adress', 'House#5, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850700', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(63, '3410157555345', 'Shahnawaz', 'Firdous', 'House#6, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850701', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(64, '3410157555346', 'Shumaila', 'Firdous', 'House#7, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850702', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(65, '3410157555347', 'Babar', 'Azam', 'House#8, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850703', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(66, '3410157555348', 'Nimra', 'Muneeb', 'House#9, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850704', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(67, '3410157555349', 'Hamad', 'Naveed', 'House#10, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850705', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(68, '3410157555350', 'Nimra', 'Hamdan', 'House#16, Line#2, Block T5, Rahwali Gujranwala Cantt', '03215850706', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(69, '3410157555351', 'Hamdan', 'Sarwar', 'Muhalla Barkat Colony, Street No.9 near Kashmir Road Shama Gujranwala', '03215850707', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(70, '3410157555352', 'Khadija', 'Shamas', 'Muhalla Barkat Colony, Street No.10 near Kashmir Road Shama Gujranwala', '03215850708', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(71, '3410157555353', 'Musa', 'Ahsan', 'Muhalla Barkat Colony, Street No.11 near Kashmir Road Shama Gujranwala', '03215850709', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(72, '3410157555354', 'Anabia', 'Khuram', 'Muhalla Barkat Colony, Street No.12 near Kashmir Road Shama Gujranwala', '03215850710', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(73, '3410157555355', 'Waqas', 'Ilyas', 'Muhalla Barkat Colony, Street No.13 near Kashmir Road Shama Gujranwala', '03019368383', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(74, '3410157555356', 'Tayeeba', 'Asad', 'Muhalla Barkat Colony, HouseNo.8 near Kashmir Road Shama Gujranwala', '03019368384', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(75, '3410157555357', 'Asad', 'Saad', 'Muhalla Barkat Colony, HouseNo.21 near Kashmir Road Shama Gujranwala', '03019368385', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(76, '3410157555358', 'Almas', 'Tahir', 'Muhalla Barkat Colony, HouseNo.22 near Kashmir Road Shama Gujranwala', '03019368386', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(77, '3410157555359', 'Faiq', 'Usama', 'Muhalla Barkat Colony, HouseNo.23 near Kashmir Road Shama Gujranwala', '03019368387', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(78, '3410157555360', 'Rubab', 'Yasir', 'Muhalla Barkat Colony, HouseNo.24 near Kashmir Road Shama Gujranwala', '03019368388', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(79, '3410157555361', 'Yasir', 'Zahoor', 'Muhalla Barkat Colony, HouseNo.25 near Kashmir Road Shama Gujranwala', '03019368389', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(80, '3410157555362', 'Mahnoor', 'Ayaz', 'Muhalla Barkat Colony, HouseNo.26 near Kashmir Road Shama Gujranwala', '03019368390', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(81, '3410157555363', 'Awais', 'Shahid', 'Muhalla Barkat Colony, HouseNo.27 near Kashmir Road Shama Gujranwala', '03019368391', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(82, '3410157555364', 'Abwa', 'Maaz', 'Muhalla Barkat Colony, HouseNo.28 near Kashmir Road Shama Gujranwala', '03019368392', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(83, '3410157555365', 'Mahir', 'Jahanger', 'Muhalla Barkat Colony, HouseNo.29 near Kashmir Road Shama Gujranwala', '03019368393', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(84, '3410157555366', 'Wania', 'Zeeshan', 'Muhalla Barkat Colony, HouseNo.30 near Kashmir Road Shama Gujranwala', '03081021122', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(85, '3410157555367', 'Sarim', 'Raheel', 'Muhalla Barkat Colony, HouseNo.31 near Kashmir Road Shama Gujranwala', '03081021123', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(86, '3410157555368', 'Raheela', 'Rayan', 'Muhalla Barkat Colony, HouseNo.32 near Kashmir Road Shama Gujranwala', '03081021124', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(87, '3410157555369', 'Rayan', 'Azlan', 'Muhalla Barkat Colony, Street No.33 near Kashmir Road Shama Gujranwala', '03081021125', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(88, '3410157555370', 'Sajal', 'Aly', 'Muhalla Barkat Colony, Street No.34 near Kashmir Road Shama Gujranwala', '03081021126', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(89, '3410157555371', 'Danish', 'Taimoor', 'Muhalla Barkat Colony, Street No.35 near Kashmir Road Shama Gujranwala', '03081021127', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(90, '3410157555372', 'Ayeeza', 'Danish', 'Muhalla Barkat Colony, Street No.36 near Kashmir Road Shama Gujranwala', '03081021128', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(91, '3410157555373', 'Zohan', 'Haseeb', 'House#01, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03081021129', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(92, '3410157555374', 'Qayla', 'Dawar', 'House#02, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03081021130', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(93, '3410157555375', 'Dawar', 'Hassan', 'House#03, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03081021131', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(94, '3410157555376', 'Ayra', 'Bilal', 'House#04, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03081021132', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(95, '3410157555377', 'Mesam', 'Adeel', 'House#05, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03081021133', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(96, '3410157555378', 'Daneen', 'Athar', 'House#06, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03054033050', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(97, '3410157555379', 'Osaib', 'Khalid', 'House#07, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03054033051', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(98, '3410157555380', 'Rameesha', 'Waseem', 'House#08, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03054033052', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(99, '3410157555381', 'Waseem', 'Afzal', 'House#09, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03054033053', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(100, '3410157555382', 'Farwa', 'Ahmed', 'House#10, Street#A1, near CIA Staff CollegeRoad, Gujranwala', '03054033054', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(101, '3410157555383', 'Farukh', 'Rasheed', 'House#11, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033055', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(102, '3410157555384', 'Hina', 'Shoukat', 'House#12, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033056', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(103, '3410157555385', 'Najeem', 'Waleed', 'House#13, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033057', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(104, '3410157555386', 'Javeria', 'Afzal', 'House#14, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033058', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(105, '3410157555387', 'Zahid', 'Aslam', 'House#15, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033059', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(106, '3410157555388', 'Zaianb', 'Qayum', 'House#16, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033060', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(107, '3410157555389', 'Qayum', 'Seerat', 'House#17, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033061', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(108, '3410157555390', 'Seerat', 'Rasheed', 'House#18, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033062', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(109, '3410157555391', 'Rashid', 'Minhaj', 'House#19, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033063', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(110, '3410157555392', 'Aimen ', 'Danyal', 'House#20, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033064', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(111, '3410157555393', 'Taha', 'Ijaz', 'House#21, Street#A2, near CIA Staff CollegeRoad, Gujranwala', '03054033065', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(112, '3410157555394', 'Aimen', 'Zaman', 'House# 01, Block 7F, Madina town Gujranwala', '03054033066', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(113, '3410157555395', 'Shaheen', 'Amir', 'House# 02, Block 7F, Madina town Gujranwala', '03054033067', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(114, '3410157555396', 'Aleena', 'Arif', 'House# 03, Block 7F, Madina town Gujranwala', '03054033068', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(115, '3410157555397', 'Ahmed', 'Saqib', 'House# 04, Block 7F, Madina town Gujranwala', '03127104202', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(116, '3410157555398', 'Saba', 'Qamar', 'House# 05, Block 7F, Madina town Gujranwala', '03127104203', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(117, '3410157555399', 'Asim', 'Azhar', 'House# 06, Block 7F, Madina town Gujranwala', '03127104204', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(118, '3410157555400', 'Noor', 'Zafar', 'House# 07, Block 7F, Madina town Gujranwala', '03127104205', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(119, '3410157555401', 'Suleman', 'Awais', 'House# 08, Block 7F, Madina town Gujranwala', '03127104206', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(120, '3410157555402', 'Sheetal', 'Arif', 'House# 09, Block 7F, Madina town Gujranwala', '03127104207', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(121, '3410157555403', 'Aman', 'Hashim', 'House# 10, Block 7F, Madina town Gujranwala', '03127104208', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(122, '3410157555404', 'Momina', 'Iqbal', 'House# 11, Block 7F, Madina town Gujranwala', '03127104209', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(123, '3410157555405', 'Farhan', 'Ikhtaq', 'House# 12, Block 7F, Madina town Gujranwala', '03127104210', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(124, '3410157555406', 'Sehar', 'Mahir', 'House# 13, Block 7F, Madina town Gujranwala', '03127104211', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(125, '3410157555407', 'Sharif', 'Sadique', 'House# 14, Block 7F, Madina town Gujranwala', '03127104212', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(126, '3410157555408', 'Aima', 'Hassan', 'House# 15, Block 7F, Madina town Gujranwala', '03127104213', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(127, '3410157555409', 'Zafar', 'Khalid', 'House# 16, Block 7F, Madina town Gujranwala', '03127104214', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(128, '3410157555410', 'Maha', 'Sohail', 'House# 17, Block 7F, Madina town Gujranwala', '03127104215', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(129, '3410157555411', 'Usama', 'Shehryar', 'House# 18, Block 7F, Madina town Gujranwala', '03497006469', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(130, '3410157555412', 'Hamna', 'Shehbaz', 'House# 19, Block 7F, Madina town Gujranwala', '03497006470', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(131, '3410157555413', 'Adil', 'Arif', 'House# 20, Block 7F, Madina town Gujranwala', '03497006471', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(132, '3410157555414', 'Amna', 'Yaseen', 'House# 21, Block 7F, Madina town Gujranwala', '03497006472', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(133, '3410157555415', 'Taimoor', 'Saif', 'House# 22, Block 7F, Madina town Gujranwala', '03497006473', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(134, '3410157555416', 'Sofia', 'Asghar', 'House#1, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03497006474', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(135, '3410157555417', 'Asim', 'Ilyas', 'House#2, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03497006475', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(136, '3410157555418', 'Javeria', 'Asif', 'House#3, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03497006476', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(137, '3410157555419', 'Zaryab', 'Ahmed', 'House#4, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03497006477', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(138, '3410157555420', 'Nimra', 'Zaryab', 'House#5, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03497006478', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(139, '3410157555421', 'Hassan', 'Naveed', 'House#6, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03497006479', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(140, '3410157555422', 'Maliaka', 'Maqsood', 'House#7, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03497006480', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(141, '3410157555423', 'Maqsood', 'Rayaz', 'House#8, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03497006481', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(142, '3410157555424', 'Shiyna', 'Omer', 'House#9, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234625', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(143, '3410157555425', 'Ahsan', 'Azan', 'House#10, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234626', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(144, '3410157555426', 'Ayesha', 'Ijaz', 'House#11, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234627', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(145, '3410157555427', 'Uzair', 'Asad', 'House#12, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234628', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(146, '3410157555428', 'Samra', 'Nadeem', 'House#13, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234629', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(147, '3410157555429', 'Yayha', 'Saood', 'House#14, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234630', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(148, '3410157555430', 'Sidra', 'Noraiz', 'House#15, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234631', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(149, '3410157555431', 'Mozzam', 'Ishfaq', 'House#16, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234632', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(150, '3410157555432', 'Iqra', 'Kashif', 'House#17, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234633', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(151, '3410157555433', 'Mohsin', 'Shahid', 'House#18, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234634', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(152, '3410157555434', 'Momina', 'Feezan', 'House#19, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03451234635', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(153, '3410157555435', 'Qasim', 'Irshad', 'House#20, Block#Y near Al Khidmat Hospital Qila Deedar Singh', '03046663222', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(154, '3410157555436', 'Ifra', 'Faisal', 'House#34, Street#A10, X Block Garden Town, Gujranwala', '03046663223', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(155, '3410157555437', 'Asif', 'Usman', 'House#35, Street#A10, X Block Garden Town, Gujranwala', '03046663224', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(156, '3410157555438', 'Minahil', 'Imran', 'House#36, Street#A10, X Block Garden Town, Gujranwala', '03046663225', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(157, '3410157555439', 'Asim', 'Abid', 'House#37, Street#A10, X Block Garden Town, Gujranwala', '03046663226', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(158, '3410157555440', 'Minaal', 'Mohsin', 'House#38, Street#A10, X Block Garden Town, Gujranwala', '03046663227', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(159, '3410157555441', 'Zubair', 'Ashir', 'House#39, Street#A10, X Block Garden Town, Gujranwala', '03007470118', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(160, '3410157555442', 'Amara', 'Ayaan', 'House#40, Street#A10, X Block Garden Town, Gujranwala', '03007470119', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(161, '3410157555443', 'Waleed', 'Javad', 'House#11, Street#A8, X Block Garden Town, Gujranwala', '03007470120', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(162, '3410157555444', 'Zoya', 'Khizar', 'House#12, Street#A8, X Block Garden Town, Gujranwala', '03007470121', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(163, '3410157555445', 'Haseeb', 'Arham', 'House#13, Street#A8, X Block Garden Town, Gujranwala', '03007470122', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(164, '3410157555446', 'Hania', 'Amir', 'House#14, Street#A8, X Block Garden Town, Gujranwala', '03007470123', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(165, '3410157555447', 'Ashar', 'Talha', 'House#15, Street#A8, X Block Garden Town, Gujranwala', '03007470124', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(166, '3410157555448', 'Sania', 'Irfan', 'House#16, Street#A8, X Block Garden Town, Gujranwala', '03007470125', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(167, '3410157555449', 'Zain', 'Aga', 'House#17, Street#A8, X Block Garden Town, Gujranwala', '03007470126', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(168, '3410157555450', 'Fiza', 'Ismaeel', 'House#18, Street#A8, X Block Garden Town, Gujranwala', '03007470127', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(169, '3410157555451', 'Hamid', 'Rehaan', 'House#19, Street#A8, X Block Garden Town, Gujranwala', '03168865542', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(170, '3410157555452', 'Rabbia', 'Aqib', 'House#20, Street#A8, X Block Garden Town, Gujranwala', '03168865543', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(171, '3410157555453', 'Javeed', 'Ishaq', 'House#21, Street#D8, Wapda Town Gujranwala', '03168865544', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(172, '3410157555454', 'Ramsha', 'Essa', 'House#22, Street#D8, Wapda Town Gujranwala', '03168865545', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(173, '3410157555455', 'Sohail', 'Nasir', 'House#22, Street#D8, Wapda Town Gujranwala', '03168865546', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(174, '3410157555456', 'Haram', 'Salman', 'House#23, Street#D8, Wapda Town Gujranwala', '03168865547', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(175, '3410157555457', 'Rahim', 'Luqman', 'House#24, Street#D8, Wapda Town Gujranwala', '03168865548', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(176, '3410157555458', 'Zunaira', 'Nouman', 'House#25, Street#D8, Wapda Town Gujranwala', '03168865549', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(177, '3410157555459', 'Habib', 'Hashir', 'House#26, Street#D8, Wapda Town Gujranwala', '03168865550', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(178, '3410157555460', 'Iman', 'Subhan', 'House#27, Street#D8, Wapda Town Gujranwala', '03168865551', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(179, '3410157555461', 'Shahzeb', 'Mujeeb', 'House#28, Street#D8, Wapda Town Gujranwala', '03168865552', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(180, '3410157555462', 'Muqadas', 'Asfand', 'House#29, Street#D8, Wapda Town Gujranwala', '03168865553', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(181, '3410157555463', 'Zeeshan', 'Zulfiqar', 'House#30, Street#D8, Wapda Town Gujranwala', '03361000073', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(182, '3410157555464', 'Maheen', 'Awais', 'House#01, Street#E8, Wapda Town Gujranwala', '03361020074', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(183, '3410157555465', 'Irtaza', 'Haider', 'House#02, Street#E8, Wapda Town Gujranwala', '03361036075', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(184, '3410157555466', 'Pakiza', 'Altaf', 'House#03, Street#E8, Wapda Town Gujranwala', '03361230765', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(185, '3410157555467', 'Mustafa', 'Sameer', 'House#04, Street#E8, Wapda Town Gujranwala', '03361562277', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(186, '3410157555468', 'Farah', 'Shayan', 'House#05, Street#E8, Wapda Town Gujranwala', '03361265978', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(187, '3410157555469', 'Muavia', 'Waqar', 'House#06, Street#E8, Wapda Town Gujranwala', '03361525279', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(188, '3410157555470', 'Isha', 'Fahad', 'House#07, Street#E8, Wapda Town Gujranwala', '03361236580', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(189, '3410192618931', ' Abdul Akbar ', 'Moulana  Akbar Chitr', '66/3,I&T; Centre,G-8/1', '03352273400', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(190, '3410192618933', 'Haider Ali Khan', 'Muhammad Ali Khan', '1-23,West Zakia Aziz Plaza,Blue Area', '03002299417', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(191, '3410192618935', 'Saleem Rehman', 'Muhammad Rehman', '5,Farooq Plaza,F-10 Markaz,Double Road', '03212256549', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(192, '3410192618937', 'Murad Saeed', 'Muhammad Saeed', 'Plot No.7,I&T; Centre,G-8/1', '03342821421', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(193, '3410192618939', 'Sahibzada Sibghatull', 'Muhammad Sibghatulla', '7-11,Muhammadia Plaza,Block-4,Main Civic Centre,G-6', '03012211522', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(194, '3410192618941', 'Mehboob Shah', 'Nazir Shah', 'Flat 28,3rd Floor,Taj Mehal Arcade,F-10 Markaz', '03002821859', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(195, '3410192618943', 'Muhammad Bashir Khan', 'Muhammad Wali Khan', '#1,Street 90,Off Embassy Road,G-6/3', '03012823136', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(196, '3410192618945', 'Junaid Akbar', 'Muhammad Akbar', '80-Khayaban-e-Iqbal,F-6/2', '03022823136', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(197, '3410192618947', 'Sher Akbar Khan', 'Khushkhal Khan', '80 Margalla Road,F-6/2', '03442276392', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(198, '3410192618949', 'Afreen Khan', 'Hilmand Khan', 'House No.4,Street No.24,Sector F-6/2', '03002101948', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(199, '3410192618951', 'Muhammad Nawaz Khan', 'Muhammad Shahzeb kha', '# 16,Level-02,18-Trade Centre,F-11 Markaz', '03032277947', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(200, '3410192618953', 'Saleh Muhammad', ' Muhammad Nawab', '76-W,Omer Building,1st Floor,Jinnah Avenue,Blue Area', '03052822123', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(201, '3410192618955', 'Muhammad Sajjad', 'Muhammad Iqbal', 'Suit #6,7&8,Ground Floor,Eagle Plaza #75,West Blue Area', '03004446830', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(202, '3410192618957', 'Murtaza Javed Abbasi', 'Muhammad Javed Abbas', 'Sector H-8/4', '03012277564', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(203, '3410192618959', 'Ali Khan Jadoon', 'Abbas Khan Jadoon', '13-J,Markaz F-7,Jinnah Super', '03052272406', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(204, '3410192618961', 'Omar Ayub Khan', 'Muhammad Ayub Khan', 'B-8,Main Civic Centre,G-6', '03002276777', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(205, '3410192618963', 'Asad Qaiser', 'Muhammad Qaiser', '26-D,2nd Floor,Kashmir Plaza,F-6/4,Jinnah Avenue,Blue Area', '03352252738', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(206, '3410192618965', 'Usman Khan', 'Pirzada Khan', 'House no 8,Plot #52,I&T; Centre,G-8/1', '03312206414', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(207, '3410192618967', 'ALI ZAHID', 'Muhammad ZAHID', '1-B,Mezzanine,69-E,Adeel Plaza,Fazal-e-Haq Road,Blue Area', '03002650152', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(208, '3410192618969', 'Mujahid Ali', 'Muhammad Ali', '2nd Flr,Nasr Chamber,Block-19,Markaz F-7', '03124432041', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(209, '3410192618971', 'Amir Haider Azam Kha', 'Muhammad Azam Khan', '#70,St.#14,I-9 Industrial Area', '03112272200', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(210, '3410192618973', 'Ali Muhammad', ' Muhammad Faqeer hus', '23-West,Jinnah Avenue,Blue Area', '03012277962', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(211, '3410192618975', 'Anwar Taj', 'Muhammad Taj', 'Basement 3-B,69 East Adeel Plaza,Blue Area,Fazal-e-Haq Road', '03002262503', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(212, '3410192618977', 'Fazal Muhammad Khan', ' Muhammad Saifullah ', '1-B,Street 55,F-8/4', '03212277076', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(213, '3410192618979', 'IMRAN KHATTAK', 'Kamil KHATTAK', '14-D,Manzoor Plaza,Blue Area,Fazal-ul-Haq Road,Near Tabaq Hotel', '03042875573', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(214, '3410192618981', 'NOOR ALAM KHAN', 'Muhammad ALAM KHAN', '#6,2nd Floor,United Plaza,Fazal-ul-Haq Road,Blue Area', '03224433528', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(215, '3410192618983', 'ARBAB AMIR AYUB', 'Muhammad AMIR AYUB', 'Plot #402-403,Sector I-9,Industrial Area', '03042824556', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(216, '3410192618985', 'NASIR KHAN', 'Hayat KHAN', 'House #1-A,Street-22,F-7/1', '03052273246', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(217, '3410192618987', 'SHER ALI ARBAB', 'Muhammad ARBAB', '#32,Mezz. Floor,Meverly Centre,Blue Area', '03002279982', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(218, '3410192618989', 'Shaukat Ali ', 'Muhammad Liaqat Ali', '3-A,Block-F,Super Market,F-6/1', '03124434295', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(219, '3410192618991', 'Khial Zaman', 'Fakhar Zaman', 'Plot No.199-200,Sector I-9,Industrial Area', '03132271954', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(220, '3410192618993', 'Shahid Ahmad', 'Shoaib Ahmad', 'Ground Floor,Kashmir Plaza,Blue Area', '03022874861', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(221, '3410192618995', 'Muhammad Anwar', 'Muhammad Hameed', '#2,1st Flr,Islamabad Centre,Fazal-e-Haq Road', '03052820930', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(222, '3410192618997', 'Asad Mehmood', 'Muhammad Mehmood', 'Mezzanine #7,Umer Plaza,76-West Main Blue Area', '03012204555', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(223, '3410192618999', 'Ali Amin Khan', 'Muhammad Amin Khan', 'Plot #3-F,Sector G-7,Markaz,Sitara Market', '03002873806', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(224, '3410192619001', 'Muhammad Yaqoob Shei', 'Muhammad Yasir Sheik', '9-E,Super Market,F-6/1', '03122277569', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(225, '3410192619003', 'Gul Zafar Khan', 'Rafi Khan', '16 Malik Complex,4th Floor,80 East Jinnah Avenue', '03212873813', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(226, '3410192619005', 'Zain ul Haq Alqadri', 'Shafi Ullah Alqadri', 'Shop #9,Block 8,Civic Centre,Melody Market,G-6', '03202280736', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(227, '3410192619007', 'Mohammad Iqbal Khan', 'Mohammad Pervaiz Kha', 'H.No.73,St.61,Sector F-10/3', '03042827907', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(228, '3410192619009', 'Munir Khan Orakzai', 'Shahid Khan Orakzai', 'Hotel Holiday Inn,Civic Centre', '03022820654', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(229, '3410192619011', 'Sajid Hussain Turi', 'Dillawer Hussain Tur', 'House No.1,Street No.44,F-7/1', '03448120428', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(230, '3410192619013', 'Jawad Hussain', 'Muhammad Ameer Hussa', 'No.7,2nd Floor,Malik Complex,80-East Plaza,Blue Area', '03424419282', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(231, '3410192619015', 'Mohsin Javed', 'Muhammad Javed', 'D-14,Shop 1,I-9,Markaz', '03092651033', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(232, '3410192619017', 'Muhammad Jamal ud Di', 'Muhammad Moin ud Din', '26,Block 12-C,Jinnah Super F/7', '03234431215', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(233, '3410192619019', 'Muhammad Ali', 'Muhammad Fayyaz', 'Flat#11,2nd Flr,Changaiz Plaza,I-9 Markaz,Opp:Wilson Factory', '03312872512', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(234, '3410192619021', 'Abdul Shakoor', 'Muhammad Akram', '21-E,Huma Plaza,Blue Area', '03002872511', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(235, '3410192619023', 'Raja Khurram shahzad', 'Raja nawaz Bhatti', '21-E,Huma Plaza,Fazal-e-Haq Road,Blue Area,Opp.Poly Clinic Hos.', '03122821114', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(236, '3410192619025', 'ASAD UMER', 'Muhammad imtiaz', 'H No.8,Parkview Plaza,Markaz F-10', '03122826607', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(237, '3410192619027', 'TAHIR SADIQ', 'Muhammad SADIQ Mugha', 'Main Market,Abpara', '03012275644', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(238, '3410192619029', 'SADAQAT ALI KHAN', 'Muhammad Amir KHAN', 'Office#3,1st Floor,Empire,Center,Block-13/9,Jinnah Super', '03022273301', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(239, '3410192619031', 'GHULAM SARWAR KHAN', 'GHULAM MUHAMMAD KHAN', '04,Ghosia Plaza,Aabpara,Khayaban-e-Suharwardy', '03214446508', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(240, '3410192619033', 'Aamir Mehmood Kiani', 'Muhammad Mehmood Kia', '#203 Arain House,St.#1,I-10/3,Industrial Area,P.O.Box: 1929', '03224446508', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(241, '3410192619035', 'ZULFIQAR ALI KHAN', 'Muhammad Elahi KHAN', '#203 Arain House,St.#1,I-10/3,Industrial Area,P.O.Box: 1929', '03139201639', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(242, '3410192619037', 'CHAUDHARY FARRUKH AL', 'CHAUDHARY  ALTAF', '40 Jang Plaza,2nd Floor,Blue Area', '03009206654', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58');
INSERT INTO `nadra_informations` (`id`, `cnic`, `first_name`, `last_name`, `address`, `phone_no`, `gender`, `dob`, `criminal_record`, `applied_status`, `is_verify`, `remember_token`, `created_at`, `updated_at`) VALUES
(243, '3410192619039', 'FAWAD AHMED', 'Muhammad Jawad AHMED', '40 Jang Building 1st Floor,A.K.Fazlul Haq Road,Blue Area', '03132278036', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(244, '3410192619041', 'HUSSAIN ELAHI', 'Muhammad ELAHI KHAN', '11 Mez. Floor,Bewal Plaza,12-D,Blue Area', '03352275669', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(245, '3410192619043', 'Syed Faiz ul Hassan', 'Syed Ibrar hussain', '13-14,Muhammadi Plaza,F-6,Nazimuddin Road,Jinnah Avenue,Blue Area', '03092262580', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(246, '3410192619045', 'CHAUDHRY ABID RAZA', 'CHAUDHRY RAZA Haq', '#5,1st Floor,Sahwez Centre,Ayub Market,F-8,Markaz,P.O.Box: 295', '03022826674', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(247, '3410192619047', 'CHAUDHRY ARMGHAN SUB', 'CHAUDHRY ASHRAF SUBH', '5-B,Street-8,F-7/3', '03052276644', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(248, '3410192619049', 'KHAWAJA MUHAMMAD ASI', 'KHAWAJA MUHAMMAD HAN', '17,Street 15,F-6/3', '03082290977', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(249, '3410192619051', 'SYED IFTIKHAR UL HAS', 'SYED JAMAL UL HASSAN', 'House No.59,Street No.2,E-7', '03218260080', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(250, '3410192619053', 'RANA SHAMIM AHMED KH', 'RANA AZMAT KHAN', '2,Street 39,F-6/1', '03442275929', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(251, '3410192619055', 'Maula Akber Aziz', 'Muhammad Akber Aziz', 'House No.270,Street 22,E-7', '03352274902', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(252, '3410192619057', 'Ahsan Iqbal Chaudhar', 'Muhammad Iqbal Chaud', '1,St.35,G-6/2', '03112201203', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(253, '3410192619059', 'NISAR AHMED CHEEMA', 'Muhammad AHMED CHEEM', '2nd Flr,Evacuee Trust Complex,F-5,Agha Khan Road', '03442214804', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(254, '3410192619061', 'Usman Ibrahim ', 'Muhammad Ibrahim', '199-B,Street-50,F-10/4', '03052872818', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(255, '3410192619063', 'ZULIFIQAR AHMAD', 'AWAIS AHMAD', 'A-4,4th Floor,ATS Centre,Fazal-e-Haq Road,Blue Area', '03012823185', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(256, '3410192619065', 'Azhar Qayyum Nahra', 'Muhammad Qayyum Nahr', 'Software Technology Park,4th Floor,Constitution Avenue', '03067821987', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(257, '3410192619067', 'Haji Imtiaz Ahmed Ch', 'Muhammad Ahmed Choud', '64-West Masco Plaza,Blue Area', '03112851033', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(258, '3410192619069', 'NASIR IQBAL BOSAL', 'Haji IQBAL BOSAL', 'Block 2,I&T; Centre,G-9/4', '03029871342', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(259, '3410192619071', 'CH SHOUKAT ALI BHATT', ' CH ASGHAR BHATTI', 'Plot #180-181,Industrial Area,I-10/3', '03062298359', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(260, '3410192619073', 'MUKHTAR AHMAD MALIK', 'MATEEN AHMAD MALIK', '#12,2nd Floor,Kausar Plaza,G-10 Markaz', '03122279789', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(261, '3410192619075', 'MOHSIN NAWAZ RANJHA', 'MUHAMMAD NAWAZ RANJH', 'House No.21,St.No.56,F-6/4', '03212824993', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(262, '3410192619077', 'CH MUHAMMAD HAMID HA', 'CH MUHAMMAD HAMEED', '68-W,Sama Plaza,Blue Area,P.O.Box No.2931', '03002822344', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(263, '3410192619079', 'SYED JAVED HUSNAIN', 'SYED SAJJAD HUSNAIN', '# 6,Block 21-N,Near GPO,Garden Road,Civic Centre', '03222822565', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(264, '3410192619081', 'UMAR ASLAM KHAN', 'MUHAMMAD ASLAM KHAN', '7&8 Mezzanine Floor,ATS Centre,Fazlul Haq Road,Blue Area', '03002262355', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(265, '3410192619083', 'MALIK EHSAN ULLAH ', 'MALIK  ZIA ULLAH ', '48,Khayaban-e-Iqbal,Sector F-8/2', '03112279230', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(266, '3410192619085', 'AMJID ALI KHAN', 'SHABAB ALI KHAN', '90 West,Jinnah Avenue,6th Floor,Razia Sharif Plaza,Blue Area', '03122852797', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(267, '3410192619087', 'MUHAMMAD ASFANDYAR', 'MUHAMMAD SANA ULLAH', 'Suite # 4A,1st Floor,16-B,Panther Trading Plaza,F-8 Markaz', '03212279481', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(268, '3410192619089', 'Muhammad Afzal Khan', 'Muhammad Ajmal Khan', 'Street No.6,Ramna 5,Diplomatic Enclave-1,P.O.Box: 1144', '03242272890', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(269, '3410192619091', 'GHULAM MUHAMMAD', 'MUHAMMAD JAVED', 'Ataturk Avenue,G-5/2', '03114442605', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(270, '3410192619093', 'QAISER AHMED SHEIKH', 'Muhammad WAQAR SHEIK', '# 45,Beverly Centre,Blue Area', '03122272706', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(271, '3410192619095', 'MUHAMMAD ASIM NAZIR', 'MUHAMMAD  NAZIR', '3-ATS Centre,Blue Area,Fazlul Haq Road', '03112826280', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(272, '3410192619097', 'CH MUHAMMAD SHAHBAZ ', 'CH MUHAMMAD BABAR', '5th Floor,Software Tech.Park,Constitution Avenue', '03214430755', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(273, '3410192619099', 'RAZA NASRULLAH', 'MUHAMMAD NASRULLAH', 'Plot # 33,Sector # 10,1-9,Industrial Area', '03004440756', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(274, '3410192619101', 'RANA SANA ULLAH KHAN', 'RANA SHAHZEB  KHAN', 'Plot No.33,Street No.10,I-9,Industrial Area', '03322823338', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(275, '3410192619103', 'Khurram Shahzad', 'Muhammad Shahzad', '7,1st Floor,Beverly Centre,Blue Area', '0304475585', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(276, '3410192619105', 'FARRUKH HABIB', 'MUHAMMAD HABIB', '52 A/2,Street 54,F-7/4', '03218139881', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(277, '3410192619107', 'FAIZ ULLAH', 'SAMI ULLAH', '4,Block 9-E,F/6,Blue Area,Near Duty Free Shop', '03062828723', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(278, '3410192619109', 'Raja Riaz Ahmad', 'Raja Affaq Ahmad', 'House No.2-C,Street No.55,Sector F-6/4,P.O.Box 1497', '03212278247', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(279, '3410192619111', 'CHAUDHARY KHALID JAV', 'CHAUDHARY JAVED', '1-D,Rehmat Plaza,Blue Area', '03114436520', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(280, '3410192619113', 'MUHAMMAD JUNAID ', 'MUHAMMAD  ANWAR ', 'Plot #389,I-9,Industrial Area', '03012277769', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(281, '3410192619115', 'MUHAMMAD RIAZ KHAN', 'MUHAMMAD ASAD ULLAH ', 'B-7,Ali Complex,77-Blue Area', '03012275294', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(282, '3410192619117', 'SAHIBZADA MEHBOOB SU', 'MUHAMMAD AWAIS SULTA', '32-Hill Road,F-6/3', '03002270834', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(283, '3410192619119', 'Qayyum Rafeeq', 'RAFEEQ HUSSAIN', '99-E/A,Zero Point,Satellite Town', '03222820345', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(284, '3410192619121', 'Muhammad ameer sulta', 'Muhammad Taimoor ', '1,Diplomatic Enclave', '03012211773', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(285, '3410192619123', 'CH MUHAMMAD BARJEES ', 'CH MUHAMMAD  TAHIR', '315-B,Margalla Towers,F-10', '03008534081', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(286, '3410192619125', 'IJAZ AHMAD SHAH', 'MUHAMMAD AHMAD SHAH', '74/2,I&T; Centre,G-8/4', '03112297880', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(287, '3410192619127', 'RAHAT AMAN ULLAH BHA', 'MUHAMMAD AMAN ULLAH ', '#1133,Street 41,G-10/4', '03114432047', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(288, '3410192619129', 'RANA TANVEER HUSSAIN', 'RANA JAMEEL HUSSAIN', 'Plot No.40-42,Sector I-9,St.No.10,Industrial Area', '03114411172', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(289, '3410192619131', 'JAVED LATIF', 'MUHAMMAD LATIF ', '215,St.7,Industrial Area I-9', '03026730221', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(290, '3410192619133', ' ARFAN DOGAR', 'SARDAR DOGAR', 'House no 21,Marble Plaza,Near Sui Gas Office,I-9 Markaz', '03012276052', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(291, '3410192619135', 'MUHAMMAD RIAZ', 'MUHAMMAD AFZAL', '#1,18-D West, Mushtaq Mansion, Blue Area', '03112276052', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(292, '3410192619137', 'MUHAMMAD HAMZA', 'MUHAMMAD SHEHBAZ ', '#1,18-D West,Mushtaq Mansion,Blue Area', '03029208209', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(293, '3410192619139', 'WAHEED KHAN', 'MUHAMMAD ALAM KHAN', '2nd Floor,Saeed Plaza,Jinnah Avenue,Blue Area', '03042270141', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(294, '3410192619141', 'MUHAMMAD HAMMAD ', 'MUHAMMAD MAZHAR', 'State Life Building-9,3rd Flr.,Buland Markaz,33-E,Blue Area', '03114490730', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(295, '3410192619143', 'ABDULLAH Pervaiz', 'Ali Pervaiz', '150,Industrial Triangle,Kahuta Road', '03014446599', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(296, '3410192619145', 'SHAH ROHALE ', 'SHAH ASGHAR', '1287,Street No.12,I-10/2', '0305819224', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(297, '3410192619147', 'SARDAR AYAZ ', 'SARDAR  SADIQQUE', 'House #8,Street 88,G-6/3', '03442261841', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(298, '3410192619149', 'Shafqat Subhan', ' MUHAMMAD SUBHAN Mah', '14/Y,Jauhar Road,F-8,Markaz', '03442270762', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(299, '3410192619151', 'IMRAN AHMED ', 'MUHAMMAD AHMED KHAN ', '2-B/1,Nazimuddin Road,F-7/1,P.O.Box: 3010', '03012298583', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(300, '3410192619153', 'MUHAMMAD SHEHBAZ ', ' MUHAMMAD SHARIF', 'Suite #3,Ch. Yaqoob Plaza,F-10 Markaz', '03112275589', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(301, '3410192619155', 'MOHAMMAD PERVAIZ MAL', 'MOHAMMAD ZORAIZ MALI', '8,Street 31,F-7/1', '03112213148', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(302, '3410192619157', 'RANA MUBASHIR IQBAL', 'RANA IQBAL', '342-B,Street 16,G-10/2', '03222650572', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(303, '3410192619159', 'MALIK KARAMAT ALI', 'MALIK SALAMAT ALI', '#9-A,Block 12-C,Markaz F-7,Jinnah Super Market', '03042294044', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(304, '3410192619161', 'MUHAMMAD AFZAL', 'MUHAMMAD WAHABDIN', 'Ibrar Plaza,7-E,Markaz F-10', '03022263923', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(305, '3410192619163', 'SAAD WASEEM', 'MUHAMMAD WASEEM', 'House No.19,Street No.30,F-8/1', '03022263927', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(306, '3410192619165', 'RASHEED AHMAD KHAN', 'SALEH KHAN', 'Basement No.2,Ali Complex,Block 77,Blue Area', '03022263928', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(307, '3410192619167', 'RANA MUHAMMAD ISHAQ ', 'RANA MUHAMMAD GHAFOO', 'House-49,Street 20,Sector F-7/2(Near Rana Market)', '03022263929', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(308, '3410192619169', 'SARDAR TALIB HASSAN ', 'SARDAR TALHA HASSAN ', '19,2nd Floor,Imran Plaza,F-10 Markaz', '03022263930', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(309, '3410192619171', 'NADEEM ABBAS', 'AFSAR ABBAS', 'Flat #8,2nd Floor,United Plaza,Fazal-ul-Haq Road,Blue Area', '03022263931', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(310, '3410192619173', 'RIAZ UL HAQ', 'FALAH UL HAQ', '7-8,68-W,F-7/G-7,Samna Plaza,Blue Area', '03022263932', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(311, '3410192619175', 'RAO MUHAMMAD', ' AJMAL KHAN', '16-2nd Floor-Islamabad,Business Centre,1-10 Markaz', '03022263933', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(312, '3410192619177', 'MUHAMMAD MUEEN ', 'MUHAMMAD MUHAYYUDIN', 'House no8,Pearl Centre,F-6,Super Market', '03022263934', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(313, '3410192619179', 'AHMAD RAZA ', 'MUHAMMAD ILYAS ', 'Off.No.6,Salma Plaza,F-10 Markaz', '03112275532', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(314, '3410192619181', 'rana iradat ', 'ZAMEER khan', 'Marble Plaza,Shop#24,Near Sui Gas Office,I-9 Markaz', '03112275550', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(315, '3410192619183', 'SYED IMRAN SHAH', 'SYED  AHMAD SHAH', 'BM 2,NISP Centre,83-West,Fazal-e-Haq Road,Blue Area', '03112275551', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(316, '3410192619185', 'Chaudry Muhammad Ash', 'Chaudry Muhammad ASL', 'Office No.10,1st Floor,Irfan Mansion,F-10 Markaz', '03112275552', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(317, '3410192619187', 'MUHAMMAD MUJTABA', ' MUHAMMAD AZMAT', '7,Block-8,Super Market,Markaz F-6', '03112275553', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(318, '3410192619191', 'SYED FAKHAR ', 'SYED IMAM ULLAH', 'Plaza 2nd Floor,F-10 Markaz,Super Trade Centre', '03112275554', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(319, '3410192619193', 'MUHAMMAD ZORAIZ', 'MUHAMMAD ZAVEER', '#14,Block 14-Y,Shahnaz Centre,F-8 Markaz', '03112275555', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(320, '3410192619195', 'ZAHOOR HUSSAIN QURES', 'FAISAL QURESHI', 'SSG House,332,G-8/2', '03112275556', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(321, '3410192619197', 'CHAUDHRY IFTIKHAR NA', 'CHAUDHRY  NAZIR', '75-East,Blue Area,Fazal-ul-Haq Road', '03112275557', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(322, '3410192619199', 'AHMAD HUSSAIN', 'ABUBAKAR HUSSAIN', '16,2nd Floor,Business Centre,I-10 Markaz', '03112275558', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(323, '3410192619201', 'MALIK MUHAMMAD AMIR ', 'MALIK MUHAMMAD NADEE', 'Shop #31,Covered Market,G-6/3', '03112275559', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(324, '3410192619203', 'MAKHDOOM SHAH ', ' MAHMOOD SHAH ', 'Sagheer Market,Rainbow Plaza,F-10/4', '03214430751', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(325, '3410192619205', 'ZAIN HUSSAIN ', ' HUSSAIN QURESHI', 'Mezzanine 13-14,Malik Complex,80-West,Jinnah Avenue,Blue Area', '03214430756', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(326, '3410192619207', 'MUHAMMAD IBRAHIM KHA', 'MUHAMMAD BILAL KHAN', '22,Sector G-10/3,Ibn-e-Sina Road', '03214430757', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(327, '3410192619209', 'RANA MUHAMMAD QASIM ', 'RANA MUHAMMAD SHAKEE', '921,Street 28,G-9/1', '03214430758', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(328, '3410192619211', 'ABDUL REHMAN KHAN ', 'ABDUL WALI KHAN', 'Plot No.H,137-H,I-9,Industrial Area', '03234431215', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(329, '3410192619213', 'MIAN MUHAMMAD SHARAF', 'MIAN MUHAMMAD KHAQAN', 'H.No.4,Street-5,Sector F-6/3', '03234431216', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(330, '3410192619215', 'Choudhary Faqir Ahma', 'Choudhary LATIF Ahma', 'U.N.Boulevard G-5,Deplomatic Enclave-1', '03234431217', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(331, '3410192619217', 'Sajid Mehdi', 'DAUD Mehdi', 'Street No.6,Diplomatic Enclave,G-5/4,P.O.Box No.1073', '03234431218', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(332, '3410192619219', 'TAHIR ZAQIR', 'MUHAMMAD ZAQIR ', 'St.#6,Diplomatic Enclave,G-5/4,P.O.Box No.1073', '03234431219', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(333, '3410192619221', 'Aurangzeb Khan ', 'JAHANZEB Khan ', '#2,1st Floor,Crystal Plaza,F-8 Markaz', '03442261840', 'Male', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(334, '3410192619225', 'MUHAMMAD FARAZ ALAM', 'MUHAMMAD Alam ', 'House No:2,Street No:27,Sector F-6/2', '03442261843', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(335, '3410192619227', 'EHSAN UL HAQ ', 'AMIR UD DIN', 'House No.30,Street No.12,F-6/3', '03442261844', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(336, '3410192619231', 'FAIQ HASSAN', ' HASSAN TANVIR', '#2,89 Bilal Plaza,Blue Area,Jinnah Avenue', '03012211770', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(337, '3410192619233', 'MUHAMMAD FAROOQ ', 'MUHAMMAD  AZAM ', '#17,Street-52,F-7/4', '03012211774', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(338, '3410192619235', 'Chaudhary Tariq ', 'Chaudhary Bashir ', 'H.No. 374,St.# 13,F-10/2', '03012211775', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(339, '3410192619237', 'MIAN NAJEEB UD DIN ', 'MIAN HANAN ULLAH', '16th Floor,State Life Bldg.#5,Blue Area', '03012211776', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(340, '3410192619238', 'AROOJ', 'MAKHDOOM HASSAN', '16th Floor,State Life Bldg.#5,Blue Area', '03012211777', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(341, '3410192618932', 'SABEEN ', 'Syed Mobeen Ahmed', '10,Potohar Plaza,Blue Area', '03012211778', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(342, '3410192618934', 'AROOSH FAYYAZ', 'SHEIKH FAYYAZ UD DIN', '#208,2nd Floor,Royal Centre,Fazal-e-Haq Road,Blue Area', '03012211779', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(343, '3410192618936', 'BAKHTAWAR KHUSRO ', 'Makhdoom Khusro Bukh', '#7,2nd Floor,Changez Palace,Markaz I-9', '03012211780', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(344, '3410192618938', 'AMARA MUSTAFA', 'SYED MUSTAFA MAHMUD', 'House No.F-58,G/6-4,Khayaban-e-Suharwardy', '03012211781', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(345, '3410192618940', 'RABIA JAVED', 'JAVED IQBAL ', '317,Street 58,F-10/3', '03012211782', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(346, '3410192618942', 'FAJAR MURTAZA', 'SYED MURTAZA MAHMUD', 'Block 3-D,Kohistan Road,F-8', '03012211783', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(347, '3410192618944', 'RAFIA SHABBIR', 'Muhammad Shabbir Ali', '6,Block-7,Super Market,F-6/1', '03012211784', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(348, '3410192618946', 'NIMRA IRSHAD', 'IRSHAD AHMAD KHAN', 'Mauve Area,G-8/4', '03012211785', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(349, '3410192618948', 'NAWAL RAZA', 'RAZA RABANI KHAR', '9-A,Maz.Floor,Potohar Plaza,Blue Area', '03122821111', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(350, '3410192618950', 'ATEERA IFTIKHAR', 'Iftakhar Ahmed ', 'Shop #3,Iftikhar Plaza,Fazal-e-Haq Road,Blue Area', '03122821115', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(351, '3410192618952', 'SEHRISH MAKHDOOM', 'Makhdom Zada ', 'S.N.C. Centre,Blcok 12-D,Blue Area', '03122821116', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(352, '3410192618954', 'ALIYA AAMIR', 'AAMIR TALAL KHAN', 'House no1,Aaly Plaza,7th Avenue,Blue Area,Shalimar-6', '03122821117', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(353, '3410192618956', 'SANIA ABDUL MAJEED', 'Abdul Majeed Khan', '96-Khayaban-e-Iqbal,F-8/2', '03122821118', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(354, '3410192618958', 'MAHEEN NIAZ', 'NIAZ AHMED', 'Aabpara Market,G-6/1/4,Aslam Market', '03122821119', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(355, '3410192618960', 'SHARQA SHERAZ', 'Khawja Sheraz Mehmoo', 'Irfan Mansion,F-10 Markaz', '03122821120', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(356, '3410192618962', 'ROMAISA AMJAD', 'MUHAMMAD AMJAD FAROO', 'G-9/4,Peshawar Mor', '03122821121', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(357, '3410192618964', 'ZARTAJ GUL', 'AFFAN KHAN', ',Plot No.2L,I-9,Markaz,Near Sui Gas Office', '03122821122', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(358, '3410192618966', 'SANA SIRDAR', 'Sirdar Muhammad Khan', 'Markaz F-7-1,School Road,Jinnah Super Market', '03122821123', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(359, '3410192618968', 'HIRA JAFFAR', ' MUHAMMAD JAFFAR KHA', 'H.203,St.10,E-7', '03122821124', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(360, '3410192618970', 'GUL MEENA', ' NASRULLAH KHAN ', 'H.No.2-B,Street-9,F-8/3', '03122821125', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(361, '3410192618972', 'MEERAB RIAZ', 'RIAZ MEHMOOD KHAN ', '8,1st Floor,Block 1-J,Shalimar Plaza,F-10 Markaz', '03122821126', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(362, '3410192618974', 'JANNAT SAIF', 'Muhammad SAIF', '20-A,Jasmine Plaza,G-8,Markaz', '03122821127', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(363, '3410192618976', 'SIBGHA EHSAN', 'Ehsan ur Rehman Maza', 'Mustafa Mansion,Double Road,Qadir City Centre,F-10 Markaz', '03122821128', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(364, '3410192618978', 'AMBER ABID', 'Abid Hussain Bhayo', '98-E,Panorama Centre,Blue Area', '03122821129', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(365, '3410192618980', 'JAWERIA WALEED', 'WALEED ANJUM', '98-E,Panorama Centre,Blue Area', '03122821130', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(366, '3410192618982', 'BAREERA IJAZ', 'MUHAMMAD IJAZ AHMED', '6,Ist Floor,I-X Irfan Mansion,F-10 Markaz', '03122821131', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(367, '3410192618984', 'HADIA AZMAT', 'MUHAMMAD AZMAT', '7-8,Melody House,Civic Centre', '03122821132', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(368, '3410192618986', 'MEHRU NISA AFTAB', 'Aftab ShahbaN', 'House 47,Street 55,G-9/4', '03212256548', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(369, '3410192618988', 'GANIA MIR', 'Mir Amer Ali Khan ', '1-Chughtai Plaza,35-East Block,Blue Area,Fazal-e-Haq Road', '03212256550', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(370, '3410192618990', 'LAIBA KHALID', 'Khalid Ahmed Khan ', '7-M,Shahid Plaza,Blue Area', '03212256551', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(371, '3410192618992', 'MAHNOOR ALI', 'Ali Muhammad Khan ', 'House No.4,Street 48,F-7/4', '03212256552', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(372, '3410192618994', 'SADIA KHURSHEED', 'Syed Khursheed Ahmed', '6th Floor,State Life Building,Blue Area', '03212256553', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(373, '3410192618996', 'MADIHA NAUMAN', 'NAUMAN ISLAM SHAIKH', 'H.No109-West,Sardar Begum Chamber,Blue Area', '03212256554', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(374, '3410192618998', 'Nafisa Shah', 'MUHAMMAD GHAFFAR SHA', '11,Block 12-D,Jinnah Super F-7', '03212256555', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(375, '3410192619000', 'SALEHA SHAH', ' SYED FAZAL ALI SHAH', '8-10,Ellahi Chambers,G-6/1-1,Khayaban-e-Serverdhi', '03212256556', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(376, '3410192619002', 'MAIDA JAVED', 'Syed Javed Ali Shah ', '#6,7-N,Park Plaza,Qadeer City Centre,F-10,Markaz', '03212256557', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(377, '3410192619004', 'Syeda Humaira', 'Syed Abrar Ali Shah', '#7,Street 27,Sector F-6/2', '03212256558', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(378, '3410192619006', 'Zara Zulfiqar', 'Zulfiqar Ali ', 'Suite 15,3rd Floor,Royal Inn Plaza,F-8,Markaz', '03212256559', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(379, '3410192619008', 'TAHIRA ASIF', 'Asif Ali ', 'Suite #1,Kohsar Plaza,F-10 Markaz', '03212256560', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(380, '3410192619010', 'MOMINA MUSTAFA', 'Syed Ghulam Mustafa ', 'Room No.281-E/7,Gomal Road', '03212256561', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(381, '3410192619012', 'AMINA NAVEED', 'Naveed ABRAR KHAN', 'H.No.21,St.-18,F-6/2', '03212256562', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(382, '3410192619014', 'Shazia RAZA', 'MUHAMMAD RAZA ANSARI', '6-A,United Plaza,96 East,Blue Area', '03002299416', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(383, '3410192619016', 'SHAHANA ROSHANNUDIN', 'Roshanuddin SHAH', '4th Floor,Abbas Centre,Fazal-e-Haq Road,Blue Area', '03002299418', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(384, '3410192619018', 'AREEQA ALI', 'Ali Nawaz Shah', '37 Industrial Triangle,Humak', '03002299419', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(385, '3410192619020', 'MOIZMA MUNAWAR', 'Mir Munwar Ali Talpu', 'Block 13-S,2nd Floor,Near F.G. College For Women,F-7/2,P.O.Box: 1163', '03002299420', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(386, '3410192619022', 'DUA YOUSAF', 'Nawab Muhammad Yousu', '#58,F-7/2,Main Margalla Road', '03002299421', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(387, '3410192619024', 'NOOR FATIMA', 'MUHAMMAD TAIMOOR ', '101,1st Floor,Azeem Mansion,87-W,Fazlul Haq Road,Blue Area', '03002299422', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(388, '3410192619026', 'SARA FALAQ', 'FALAQ CHEEMA', '3-B,Street No.16,F-8/3', '03002299423', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(389, '3410192619028', 'ZEHRA BIBI', 'Fazal Hussain ', 'Plot No.33,Street No.10,I-9,Industrial Area', '03002299424', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(390, '3410192619030', 'ASMA TARIQ', 'MUHAMMAD TARIQ ', '7,Mezzanine Floor,79-E,Al-Rehman Chambers,Blue Area', '03002299425', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(391, '3410192619032', 'ZUNAIRA HUSSAIN', 'Syed HUSSAIN SALEEEM', 'Block 14-B,Markaz F/8,P.O.Box 1649', '03002299426', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(392, '3410192619034', 'SABA SABIR', 'Sabir Hussain', 'H.No.25,Street 35,F-6/1', '03002299427', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(393, '3410192619036', 'RAIMA ', 'Shaikh Rahimuddin', 'Suite 905,Uni Plaza,I.I.Chundrigar Road', '03002299428', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(394, '3410192619038', 'SUNDAS QAMAR', 'Syed  Qamar', '72-West,1st Flr.,Benazir Plaza,Jinnah Avenue,Blue Area', '03002299429', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(395, '3410192619040', 'MIRHA FATEH', 'MUHAMMAD FATEH', '1st Floor,NIC Building,63 Jinnah Avenue,Blue Area', '03002299430', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(396, '3410192619042', 'Fehmida Mirza', 'MUHAMMAD MOHIB MIRZA', '28-Kaghan Road,F-8/4', '03002299431', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(397, '3410192619044', 'AYEZA AYAZ', 'Syed Ayaz Ali ', 'Plot 81-F,St.#6,I-10/3,Industrial Area', '03002299432', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(398, '3410192619046', 'Shams un Nisa', 'MUHAMMAD DANIAL ', 'Block-14,Super Market,F-6 Markaz', '03002299433', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(399, '3410192619048', 'SiDRA BATOOL', 'Sikandar AlI', 'Plot No.159,St. # 2,I-9/2 Industrial Area', '03002299434', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(400, '3410192619050', 'NIDA IRFAN', 'Irfan Ali Leghari', 'House No.23,Street 25,F-8/2', '03002299435', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(401, '3410192619052', 'ASIYA RAFIQUE', 'Rafique Ahmed ', '10-Hill Road,F-6/3', '03002299436', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(402, '3410192619056', 'SOBIA JAMIL', 'Jamil Ahmed Khan', '20-East,Ghousia Plaza,Blue Area', '03002299438', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(403, '3410192619058', 'SYEDA DANIA', 'Syed Rafiullah', 'House #275,Gomal Road,E/7', '03002299439', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(404, '3410192619060', 'AYESHA AKRAM', 'MUHAMMAD AKRAM', '33-Buland Markaz,,1st Floor,Blue Area', '03002299440', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(405, '3410192619062', 'AQSA IQBAL', 'Iqbal Muhammad Ali K', '#11,Block-25,Huma Plaza,Mezz. Floor,Fazal-ul-Haq Road,Blue Area', '03002299441', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(406, '3410192619064', 'AIMEN FAHEEM', 'Faheem Khan', 'Block-14,Civic Centre,G-6,P.O.Box:1135', '03002299442', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(407, '3410192619066', 'ALEENA SAIF', 'Saif Ur Rehman', '# 235,Street 54,Sector I-8/3', '03002299443', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(408, '3410192619068', 'MINAHIL IMRAN', 'Imran Ahmed Khan ', '6-Ginza Centre,104-W,Jinnah Avenue,Blue Area', '03002299444', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(409, '3410192619070', 'SHAZER ALI', 'Syed Ali Haider Zaid', 'Flat #1,Block 14/L,Markaz G/7', '03002299445', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(410, '3410192619072', 'ESHA AAMIR', 'Aamir Hussain', 'H.No.270,St. 22,E-7', '03002299446', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(411, '3410192619074', 'MARYAM ABDUL SHAKOOR', 'Abdul Shakoor ', 'Zeshan Plaza,Block 16,G-8 Markaz', '03002299447', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(412, '3410192619076', 'ZEENAT ARIF', 'ARIF UR REHMAN ALVI', '54 Street 5,F-8/3', '03002299448', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(413, '3410192619078', 'NADIA ABDUL QADIR', 'Abdul Qadir Patel', 'Suite #9,Block 12-C,Jinnah Super Market,F-7 Markaz', '03002299449', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(414, '3410192619080', 'IRHA FAISAL', 'Muhammad Faisal ', 'Malik Complex,2nd Floor,Suite 7,Jinnah Avenue,Blue Area', '03002299450', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(415, '3410192619082', 'LARAIB ATTAULLAH', 'Attaullah', '62,Bazar Road,G-6/4', '03002299451', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(416, '3410192619084', 'AMAN AMIN', 'SYED AMIN UL HAQUE', 'Bank Square Plaza,Karachi Co.,G-9 Markaz', '0301221153', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(417, '3410192619086', 'FARHANA AFTAB', 'Aftab Jehangir', 'Plot #176-177,Industrial Area,Sector I-10/3', '03012211523', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(418, '3410192619088', 'ARMISH USAMA', 'Usama Qadri', 'House 24,St.28,F-6/1', '03012211524', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(419, '3410192619090', 'BUSHRA ASLAM', 'Muhammad Aslam Khan', '1/44,Zaki Center,Near Faizabad,I-8,Markaz', '03012211525', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(420, '3410192619092', 'FARIA KHALID', 'Khalid Maqbool Siddi', 'Office # 1/98-E,Panorama Centre,Jinnah Avenue,Blue Area', '03012211526', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(421, '3410192619094', 'RIDA NAJEEB', 'Muhammad Najeeb Haro', 'Shop No.4,98-E,Panorama Centre,Jinnah Avenue,Blue Area', '03012211527', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(422, '3410192619096', 'ANFAL ABDUL WASAY', 'Abdul Wasay', '111,Fazle Haq Road,Blue Area', '03012211528', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(423, '3410192619098', 'HOORAIN ISRAR', 'Muhammad Israr Taree', '# 2B, Street 50, Marvi Road, Shalimar F-7/4', '03012211529', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(424, '3410192619100', 'SANAM SHAHZAIN', 'Nawabzada Shahzain B', 'Suite No.4,1st Floor,104-West,Ginza Centre,Blue Area', '03012211530', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(425, '3410192619102', 'IQRA HUSSAIN', 'Khalid Hussain', 'Block-18,Shop-18,Jinnah Super Market', '03012211531', 'Female', '0000-00-00', 'AVAILABLE', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(426, '3410192619104', 'AREEJ JAMALI', 'Mir Khan Muhammad Ja', 'Mauve Area,G-10/4', '03012211522', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(427, '3410192619106', 'MAHAM KAMAL', 'Kamal Uddin', '6,Street No.9,G-8/2-2', '03012211523', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(428, '3410192619108', 'ARZO SALAHUDDIN', 'Salahuddin', '#4,2nd Floor,Block-6,Civic Centre,Melody Market', '03012211524', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(429, '3410192619110', 'SAMIYA ASMATULLAH', 'Asmatullah', '3,Kohsar Market,F-6/3', '03012211525', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(430, '3410192619112', 'HUMAIRA QASIM', 'Qasim Khan Soori', '9-Hameed Chambers,Aabpara', '03012211526', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(431, '3410192619114', 'HAFSA AGHA', 'Agha Hassan Baloch', '29,Mezzanine,Beverly Centre,Near Nefdec Cinema,Blue Area', '03012211527', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(432, '3410192619116', 'ZAINAB MEHMOOD', 'Syed Mehmood Shah', 'Plot # 234,Street #7,I-9/2 Industrial Area', '03012211528', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(433, '3410192619118', 'MALAIKA HASHIM', 'Muhammad Hashim', '31,Street #31,F-6/3', '03012211529', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(434, '3410192619120', 'MUBBARA AKHTAR', 'Muhammad Akhtar ', 'Basement 2-B,Potohar Plaza,Blue Area', '03012211530', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(435, '3410192619122', 'Zubaida Jalal', 'Ehsanullah JALAL', 'House No.10,St.No.41,F-6/1', '03012211531', 'Female', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(436, '3410192619123', 'Hamza Sarwar', 'Sarwar Iqbal', 'House No.10,St.No.41,F-6/2', '03012211532', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(437, '3410192619125', 'M.Adrees', 'Alyan Khan', 'House No.10,St.No.41,F-6/3', '03012211533', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(438, '3410192619127', 'Kamal Ashraf', 'Ashraf Asad', 'House No.10,St.No.41,F-6/4', '03012211534', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(439, '3410192619129', 'M.Shakeel', 'Asghar Ali', 'House No.10,St.No.41,F-6/5', '03012211535', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58'),
(440, '3410192619131', 'Arslan Tariq', 'Tariq Jameel', 'House No.10,St.No.41,F-6/6', '03012211536', 'Male', '0000-00-00', 'CLEAR', '0', 0, NULL, '2022-08-12 05:02:16', '2022-08-24 20:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `location`, `type`, `img_path`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'meezan bank', 'garden town gujranwala', 'bank', 'uploads/image1.jpg', '0', NULL, '2022-07-17 08:11:12', '2022-08-24 21:35:18'),
(3, 'bank of punjab', 'gift university', 'bank', 'uploads/test.jpg', '1', NULL, '2022-07-17 08:12:14', '2022-08-24 21:35:18'),
(4, 'roshani homes', 'rahwali cantt gujranwala', 'ngo', '', '1', NULL, '2022-08-24 21:37:14', '2022-08-24 16:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '2',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `cnic_no`, `email`, `password`, `user_type`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'muhammad tayyab', NULL, 'admin@gmail.com', '$2y$10$ndGOR1TCqcXyqlNTKD3APO9ki3TcOMU6WPpBKXwD2DaQy67Xxqvra', '1', '1', NULL, '2022-05-11 16:36:44', '2022-05-11 11:36:44'),
(3, 'demo user', '3410180012938', 'demo@gmail.com', '123456', '2', '0', NULL, '2022-05-12 19:16:26', '2022-05-12 14:16:26'),
(5, 'sub-admin', NULL, 'subadmin@gmail.com', '$2y$10$0MOvOdF2pKU4tsV9CIPNj.FXsBPfuzvab4qGhkmjwSWTID9fWfIzy', '2', '1', NULL, '2022-05-12 19:16:33', '2022-05-12 14:16:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nadra_informations`
--
ALTER TABLE `nadra_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_cnic_no_unique` (`cnic_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nadra_informations`
--
ALTER TABLE `nadra_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
