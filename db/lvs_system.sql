-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 08:33 PM
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
  `organization_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `fname`, `lname`, `cnic_no`, `phone`, `home_address`, `permanent_address`, `issue_date`, `status`, `dob`, `ever_applied_loan`, `marital_status`, `criminal_record`, `guarantor_name_1`, `guarantor_cnic_1`, `guarantor_phone_1`, `guarantor_name_2`, `updated_at`, `created_at`, `guarantor_cnic_2`, `guarantor_phone_2`, `organization_id`) VALUES
(9, 'lvs', 'system', '0900786010011', '900078601', 'gift university', 'gift university', '2022-05-20', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 16:09:39', '2022-05-09 17:32:29', NULL, NULL, NULL),
(11, 'gift', 'university', '3410197557581', '900078601', 'gift university near board office gujranwala', 'gift university near board office gujranwala', '2004-01-06', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 14:46:05', '2022-05-11 13:48:50', NULL, NULL, NULL),
(12, 'waqar', 'amjad', '3410179447581', '900078601', 'shalimar town', 'waleed block 33', '1998-06-20', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 23:58:25', '2022-07-19 23:58:25', NULL, NULL, NULL),
(13, 'IJAZ AHMAD', 'HAMBLE SHAFQAT TARAR', '3410178447581', '900078601', 'gift university Aboard office gujranwala', 'gift university Aboard office gujranwala', '2022-07-25', 0, '2000-01-24', NULL, 'single', NULL, 'xyx', '3410178447581', '900078601', 'xyz2', '2022-07-24 13:13:51', '2022-07-24 13:13:51', '3410178447581', '900078601', '2');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nadra_informations`
--

INSERT INTO `nadra_informations` (`id`, `cnic`, `first_name`, `last_name`, `address`, `phone_no`, `gender`, `dob`, `criminal_record`, `applied_status`, `remember_token`, `created_at`) VALUES
(3, '3410178447581', 'IJAZ AHMAD', 'HAMBLE SHAFQAT TARAR', 'Block # 45, Fayyaz Plaza, Near Pia Office, Gujranwala', '3048593375', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 16:07:54'),
(4, '34101-2524971-3', 'CH. M.A QAYUM', 'RANA SHAHZAD HAFEEZ', '75-Model Town, Gujranwala', '3008640006', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(5, '34101-9759002-7', 'MR. MUHAMMAD ABDULLA', 'RIZWAN HASSAN', 'Shop-36,Madina Furniture Mkt.,Near makki Masjid, Gujranwala', '3008640007', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(6, '34101-2392199-5', 'MIRZA DAWOOD BAIG', 'KAHAWAR MAQBOOL', 'Rafiq Chowk,Darul Ehsan Town, Gujranwala', '3008640008', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(7, '34101-2611110-5', 'MUHAMMAD WAQAS ANWAR', 'KHASIF ANWAR', 'Korangi Creek Campus - Paf Base, Gujranwala', '3008640009', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(8, '34101-2460933-1', 'HUMAYUN SALEEM', 'JAMSHED KHAN', '705, Bhittai ColonyKorangi Crossing,Gujranwala', '3008640010', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(9, '34101-5275955-7', 'MUHAMMAD IQBAL BUTT', 'MUKHTAR AHMED', 'Galaxy Shopping Centre, Ferozpur Road, Gujranwala', '3008640011', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(10, '34101-3564359-1', 'ABDUL QADIR PHULARWA', 'MR. IRFAN MASOOD AHM', 'Pacci Kotli, Daska Road, Gujranwala', '3008640012', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(11, '34101-9764655-9', 'ABDUL RAHIM', 'RAZA IRFAN', '480/3,Karimabad Market, Gujranwala', '3008640013', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(12, '34101-2480725-5', 'ASIM JAWAID', 'AWAIS AHMAD', 'M-98, Iqbal Cloth Market, New Memon Masjid, Gujranwala', '3008640014', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(13, '35200-7730013-9', 'MUHAMMAD SHAMIM KHAN', 'MUHAMMAD HASSAM', 'Home number 78, Qila Didar Singh', '3008640015', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(14, '34101-9854213-7', 'MR. FAROOQ AHMED', 'TABRAIZ GONDAL', 'Home number 78, Qila Didar Singh', '3216490000', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(15, '34101-4190836-9', 'MR. MUHAMMAD BABAR L', 'ZIA ULLAH', 'Home number 12, Qila Didar Singh', '3216490001', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(16, '34101-1026066-9', 'MR. TARIQ RASHEED', 'RAZI HUSSNAIN', 'Home number 7, Qila Didar Singh', '3216490002', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(17, '34101-2371148-1', 'IFTIKHAR AHMAD', 'MUHAMMAD ARSHAD', 'Home number 8, Qila Didar Singh', '3216490003', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(18, '34201-0346220-3', 'MUHAMMAD UMAR', 'WAHEED-UL-ZAMAN', 'Home number 18, Qila Didar Singh', '3216490004', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(19, '34101-2339962-3', 'MUHAMMAD BASHIR', 'MR. RIZWAN ISHAQ', 'Home number 29, Qila Didar Singh', '3216490005', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(20, '34101-8550589-3', 'AFAQ AYUB', 'FARHAN AHMAD KHAN', 'Home number 78, Qila Didar Singh', '3216490006', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(21, '34101-2543613-3', 'SHAHZAD SAEED', 'MASOOD AHMAD', 'Home number 458, Qila Didar Singh', '3216490007', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(22, '34101-2599061-9', 'HAIDER SAEED MUGHAL', 'EHSAN ULLAH', 'Home number 178, Qila Didar Singh', '3216490008', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(23, '34101-2842475-5', 'KHURRAM SHAHBAZ', 'FAISAL SHAHZAD', 'Home number 30, Qila Didar Singh', '3216490009', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(24, '34101-2474319-5', 'MUHAMMAD AJMAL AWAN', 'ASIF MAHMOOD BHATTI', 'Home number 145, Qila Didar Singh', '3216490010', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(25, '34101-8901799-5', 'HAJI MUHAMMAD SHAKEE', 'ZAHEER BABER', 'Home number 458, Qila Didar Singh', '3216490011', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(26, '34101-2299494-7', 'KHALID NAEEM', 'MUHAMMAD AYUB', 'Home number 49, Qila Didar Singh', '3216490012', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(27, '34101-7985074-5', 'MUSTNEER AHMAD', 'GHULAM GHOUS', 'Home number 1, Qila Didar Singh', '3216490013', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(28, '34101-2702963-5', 'MIRZA ABDUL QAYYUM', 'SOHAIL AHMAD', 'Home number 5, Qila Didar Singh', '3216490014', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(29, '34101-6373687-7', 'SH.USMAN TARIQ', 'JAWAD AHMAD BUTT', 'Home number 69, Qila Didar Singh', '3216490015', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(30, '34101-2317075-3', 'MIAN ABDUL HALEEM', 'JAVED IQBAL', 'Home number 18, Qila Didar Singh', '3216490016', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(31, '34101-2586183-5', 'MR. MUHAMMAD FAROOQ', 'MUHAMMAD AYUB', 'Home number 71, Qila Didar Singh', '3216490017', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(32, '34101-6228470-9', 'MUDASSAR RIAZ BAJWA', 'MUHAMMAD UMAR', 'Home number 89, Qila Didar Singh', '3216490018', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(33, '34101-3750953-9', 'SAGHEER HUSSAIN', 'MR. MURAD AMIN', 'Home number 43, Qila Didar Singh', '3216490019', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(34, '34101-2443522-1', 'MR. TARIQ IQBAL', 'AHMED USMAN AMIN', 'Home number 118, Qila Didar Singh', '3216490020', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(35, '34101-4671909-7', 'RANA NASIR MAHMOOD', 'SHEIKH MUHAMMAD IMRA', 'Home number 55, Qila Didar Singh', '3216490021', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(36, '34101-4998107-9', 'HAFIZ ABDUL WAHEED', 'AMJAD HUSSAIN', 'Home number 93, Qila Didar Singh', '3218640059', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(37, '34101-2537144-1', 'SOHAIL AFZAL', 'GHULAM DASTAGIR BUTT', 'Block # 45, Fayyaz Plaza, Near Pia Office, Gujranwala', '3218640060', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(38, '34201-0570176-5', 'JEHANGIR GULL', 'HAJI ABDUL SATTAR CH', '75-Model Town, Gujranwala', '3218640061', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(39, '34101-0565758-3', 'TARIQ NAVEED LONE', 'IRFAN ALI', 'Shop-36,Madina Furniture Mkt.,Near makki Masjid, Gujranwala', '3218640062', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(40, '34101-4078674-9', 'SH. MUHAMMAD ASLAM S', 'TANVEER AHMAD', 'Rafiq Chowk,Darul Ehsan Town, Gujranwala', '3218640063', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(41, '34101-2303666-9', 'MUHAMMAD MEHTAB AZEE', 'QAMAR JAVED RATHORE', 'Korangi Creek Campus - Paf Base, Gujranwala', '3218640064', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(42, '34101-2512841-7', 'QAMAR UL HAQ', 'ANSAR MEHMOOD TOOR', '705, Bhittai ColonyKorangi Crossing,Gujranwala', '3218640065', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(43, '34201-6797942-6', 'ASMA NAZIR', 'MUHAMMAD TAYYAB MUSH', 'Galaxy Shopping Centre, Ferozpur Road, Gujranwala', '3218640066', 'FEMALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(44, '34101-3634840-9', 'SARFRAZ AHMED', 'CH. MUHAMMAD SAEED', 'Pacci Kotli, Daska Road, Gujranwala', '3218640067', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(45, '34101-2724997-7', 'MUHAMMAD AMJAD', 'HAFIZ MUHAMMAD IMRAN', '480/3,Karimabad Market, Gujranwala', '3218640068', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(46, '34101-7677323-5', 'BILAL MEHMOOD', 'KASHIF IQBAL', 'M-98, Iqbal Cloth Market, New Memon Masjid, Gujranwala', '3218640069', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(47, '34101-2427842-5', 'MR. KHALID IQBAL', 'MUHAMMAD FARUKH JAVE', 'Home number 78, Qila Didar Singh', '3218640070', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(48, '42401-1994061-3', 'MALIK MUHAMMAD JAHEN', 'MUHAMMAD USMAN NASEE', 'Home number 78, Qila Didar Singh', '3218640071', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(49, '34101-7755485-7', 'ENGG. MUHAMMAD ARSHA', 'MR. ARIF MAHMOOD', 'Home number 12, Qila Didar Singh', '3218640072', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(50, '34101-2731760-7', 'MR. INAYAT ULLAH BUT', 'MUHAMMAD ZULIFQAR', 'Home number 7, Qila Didar Singh', '3218640073', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(51, '34101-2390597-9', 'DAWOOD TAYYEB BUTT', 'MUHAMMAD ABDULLAH', 'Home number 8, Qila Didar Singh', '3218640074', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(52, '34101-4576427-7', 'MR. MUHAMMAD ASGHAR', 'RIAZ AHMED', 'Home number 18, Qila Didar Singh', '3218640075', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(53, '34101-6162103-3', 'FAYYAZ AHMED BAJWA', 'TARIQ ANJUM', 'Home number 29, Qila Didar Singh', '3218640076', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(54, '34101-4675008-7', 'MR. MUHAMMAD ASHRAF ', 'UMAR FAROOQ', 'Home number 78, Qila Didar Singh', '3218640077', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(55, '34101-4110741-9', 'UMAIR PERVAIZ', 'FAHEEM SAJJAD', 'Home number 458, Qila Didar Singh', '3218640078', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(56, '34101-9201381-7', 'MR. MUHAMMAD NASEEM', 'MUHAMMAD RAFIQUE', 'Home number 178, Qila Didar Singh', '3218640079', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(57, '34101-2682629-3', 'MUHAMMAD YASEEN', 'SHEIKH MUHAMMAD NAEE', 'Home number 30, Qila Didar Singh', '3218640080', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(58, '34101-6105821-1', 'MR. TAHIR NASEER DAR', 'ABDUL HAMEED', 'Home number 145, Qila Didar Singh', '3218640081', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(59, '34101-2499268-7', 'MR. MUHAMMAD IMRAN S', 'MUHAMMAD AZEEM', 'Home number 458, Qila Didar Singh', '3218640082', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(60, '34101-3335804-9', 'NAVEED IQBAL', 'MUHAMMAD ADREES', 'Home number 49, Qila Didar Singh', '3218640083', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(61, '34104-7509361-3', 'MUHAMMAD ARSHAD', 'HAJI MUHAMMAD SAEED', 'Home number 1, Qila Didar Singh', '3218640084', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(62, '34101-2688797-3', 'KH. MUTAHIR KALEEM', 'AKHTAR ALI', 'Home number 5, Qila Didar Singh', '3218640085', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(63, '34101-5920358-5', 'MR. MUHAMMAD ASGHAR', 'MUHAMMAD RAMZAN', 'Home number 69, Qila Didar Singh', '3218640086', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(64, '34101-2727679-3', 'MR. SARFRAZ AHMED', 'MUHAMMAD AHMAD', 'Home number 18, Qila Didar Singh', '3218640087', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(65, '34101-2020370-3', 'NASIR AHMED', 'ARSALAN NAYYER KHAN', 'Home number 71, Qila Didar Singh', '3218640088', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(66, '34101-2303285-7', 'MR. GHULLAM HUSSAIN', 'MUHAMMAD GULSHAD', 'Home number 89, Qila Didar Singh', '3218640089', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(67, '34101-6621003-3', 'SAJID JAVED', 'ABID HUSSAIN', 'Home number 43, Qila Didar Singh', '3218640090', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(68, '34101-5715816-5', 'MUHAMMAD ISLAM ASHRA', 'MUHAMMAD ANWAR', 'Home number 118, Qila Didar Singh', '3218640091', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(69, '34101-2443522-1', 'MR. TARIQ IQBAL', 'RAEES AHMED', 'Home number 55, Qila Didar Singh', '3218640092', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(70, '34101-2535966-3', 'MIRZA SHAFQAT SOHAIL', 'MUHAMMAD RAMZAN', 'Home number 93, Qila Didar Singh', '3218640093', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(71, '34101-9710123-9', 'MR. MUHAMMAD SALEEM', 'ZAFAR IQBAL', 'Block # 45, Fayyaz Plaza, Near Pia Office, Gujranwala', '3218640094', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(72, '34101-2686064-5', 'MR. AQEEL AHMED.', 'KHALID RASHEED', '75-Model Town, Gujranwala', '3218640095', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(73, '34101-1888045-5', 'KH. SHEHARYAR SAEED', 'ABDUL MALIK KHAN', 'Shop-36,Madina Furniture Mkt.,Near makki Masjid, Gujranwala', '3218749961', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(74, '34101-1836519-3', 'MUHAMMAD ZAHEER', 'MUHAMMAD KHIZAR', 'Rafiq Chowk,Darul Ehsan Town, Gujranwala', '3218749962', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(75, '34101-4589252-3', 'SH. MUHAMMAD AKBAR', 'NAZIR AHMED CHOHAN', 'Korangi Creek Campus - Paf Base, Gujranwala', '3218749963', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(76, '34101-0956876-3', 'SH. MAHMOOD IQBAL', 'CH. MUHAMMAD WASEEM', '705, Bhittai ColonyKorangi Crossing,Gujranwala', '3218749964', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(77, '34101-7614730-7', 'MUHAMMAD HANIF', 'SHAHBAZ ABDULLAH KHA', 'Galaxy Shopping Centre, Ferozpur Road, Gujranwala', '3218749965', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(78, '34101-7877096-9', 'MR. AMJAD FAROOQ', 'MUHAMMAD SADIQ', 'Pacci Kotli, Daska Road, Gujranwala', '3218749966', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(79, '34101-2410407-5', 'ASAD ELAHI', 'MUHAMMAD YOUSAF', '480/3,Karimabad Market, Gujranwala', '3218749967', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(80, '34101-1065900-1', 'ABDUL RAZAQ', 'MUHAMMAD AFZAL ALI', 'M-98, Iqbal Cloth Market, New Memon Masjid, Gujranwala', '3218749968', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(81, '34101-3355641-1', 'MR. SULEMAN HAMEED', 'UMAR KHALID', 'Home number 78, Qila Didar Singh', '3218749969', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(82, '34101-2562764-3', 'MIRZA AMJED IJAZ', 'HASSAN NAVEED', 'Home number 78, Qila Didar Singh', '3218749970', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(83, '35401-0284753-5', 'MR. TAHIR MEHMOOD', 'NAEEM AHMAD', 'Home number 12, Qila Didar Singh', '3218749971', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(84, '34101-4600792-5', 'MUHAMMAD IQBAL', 'SYED MUHAMMAD ILYAS', 'Home number 7, Qila Didar Singh', '3218749972', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(85, '34104-2321866-3', 'MR. TARIQ AYUB DAR', 'MUHAMMAD AYUB', 'Home number 8, Qila Didar Singh', '3218749973', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(86, '34101-2495050-9', 'MUHAMMAD RAFIQUE', 'MUHAMMAD TARIQ', 'Home number 18, Qila Didar Singh', '3218749974', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(87, '34201-4760401-7', 'SH. JAVED IQBAL.', 'MUHAMMAD SALEEM', 'Home number 29, Qila Didar Singh', '3218749975', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(88, '34101-2517352-3', 'MUHAMMAD YASIR', 'MUHAMMAD YASIR LATIF', 'Home number 78, Qila Didar Singh', '3218749976', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(89, '34101-2344238-9', 'MR. YOUSAF IBRAHIM', 'MOHAMMAD NADEEM', 'Home number 458, Qila Didar Singh', '3218749977', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(90, '34101-2691581-5', 'MR. M. ABID JAVED BU', 'IBAD AHMAD', 'Home number 178, Qila Didar Singh', '3218749978', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(91, '34101-2419791-3', 'MAHFOOZ-UR-REHMAN', 'ABID MEHMOOD', 'Home number 30, Qila Didar Singh', '3218749979', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(92, '34101-6135784-5', 'BASIT IKRAM', 'FAISAL MAHMOOD TAHIR', 'Home number 145, Qila Didar Singh', '3218749980', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(93, '42401-1994061-3', 'MIAN MAQSOOD-UL-HASS', 'MR. USMAN ASLAM', 'Home number 458, Qila Didar Singh', '3218749981', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(94, '34101-8779904-7', 'MALIK MUHAMMAD JAHAN', 'MR. SOHAIL SHEHZAD', 'Home number 49, Qila Didar Singh', '3218749982', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(95, '34104-0876135-8', 'LUBNA SAJJAD RANA', 'MUHAMMAD RAMZAN', 'Home number 1, Qila Didar Singh', '3218749983', 'FEMALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(96, '34101-2572745-3', 'Muhammad Khizar', 'MUHAMMAD AKMAL', 'Home number 5, Qila Didar Singh', '3218749984', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(97, '34101-2364769-1', 'KH. ZARAR KALEEM', 'MR. MUHAMMAD SHOAIB ', 'Home number 69, Qila Didar Singh', '3218749985', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(98, '34101-6808517-7', 'CH. HAFIZ-UR-REHMAN', 'MR. MAJID KHAN', 'Home number 18, Qila Didar Singh', '3218749986', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(99, '34101-2670618-9', 'JAMIL AKHTAR', 'MUHAMMAD IRFAN', 'Home number 71, Qila Didar Singh', '3218749987', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(100, '34101-6087505-7', 'IFTIKHAR AHMED', 'MUHAMMAD ISLAM', 'Home number 89, Qila Didar Singh', '3218749988', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(101, '34101-4941034-9', 'MUHAMMAD SHOAIB BUTT', 'SALMAN JAVAID', 'Home number 43, Qila Didar Singh', '3218749989', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(102, '34101-8010282-9', 'ABAID-UR-REHMAN', 'MIAN MUHAMMAD ARSHAD', 'Home number 118, Qila Didar Singh', '3218749990', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(103, '34101-2303333-1', 'CH. MUHAMMAD ASLAM', 'FAIZ RASOOL', 'Home number 55, Qila Didar Singh', '3218749991', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(104, '34101-4726276-5', 'MUZAFFAR HUSSAIN KHA', 'MR. MUHAMMAD AMJAD K', 'Home number 93, Qila Didar Singh', '3218749992', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(105, '34101-2676015-3', 'BABAR WAHEED', 'RIZWAN', 'Block # 45, Fayyaz Plaza, Near Pia Office, Gujranwala', '3218749993', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(106, '34101-2417970-7', 'AZEEM SHAHZAD', 'MUHAMMAD USMAN', '75-Model Town, Gujranwala', '3216417599', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(107, '34101-9377547-7', 'KHURRAM SHAHZAD', 'MUHAMMAD ANSAR', 'Shop-36,Madina Furniture Mkt.,Near makki Masjid, Gujranwala', '3216417600', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(108, '34101-2379627-9', 'IRFAN IDREES', 'HAMAYUN RASHEED', 'Rafiq Chowk,Darul Ehsan Town, Gujranwala', '3216417601', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(109, '34101-2545840-7', 'MUHAMMAD SARWAR', 'MUHAMMAD AKRAM', 'Korangi Creek Campus - Paf Base, Gujranwala', '3216417602', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(110, '34104-4660596-7', 'MUHAMMAD AZAM', 'ALI RAZA BUTT', '705, Bhittai ColonyKorangi Crossing,Gujranwala', '3216417603', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(111, '34101-2393289-9', 'AFAQ AHMAD', 'RAZA-UR-REHMAN', 'Galaxy Shopping Centre, Ferozpur Road, Gujranwala', '3216417604', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(112, '34101-1816172-7', 'YASIR IKRAM', 'MUHAMMAD IDREES', 'Pacci Kotli, Daska Road, Gujranwala', '3216417605', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(113, '34101-3974472-3', 'MUHAMMAD ANWAR DAR', 'NAZAM ALI', '480/3,Karimabad Market, Gujranwala', '3216417606', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(114, '34101-7310321-1', 'ABDUL RAUF', 'WASIM NAWAZ', 'M-98, Iqbal Cloth Market, New Memon Masjid, Gujranwala', '3216417607', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(115, '34101-5753878-5', 'MR. ABDUL RAUF', 'MIAN MUHAMMAD WAHEED', 'Home number 78, Qila Didar Singh', '3216417608', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(116, '34101-2642560-1', 'MR. LIAQAT ALI', 'SHAHID AKBAR', 'Home number 78, Qila Didar Singh', '3216417609', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(117, '34101-8749017-5', 'SHOAIB MUNIR', 'MUHAMMAD BOOTA', 'Home number 12, Qila Didar Singh', '3216417610', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(118, '34101-1859097-9', 'SH. MUHAMMAD ALI', 'ASIM SHAHAZAD', 'Home number 7, Qila Didar Singh', '3216417611', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(119, '34101-2514469-3', 'ZAHID IQBAL BUTT', 'IMRAN SHAHZAD', 'Home number 8, Qila Didar Singh', '3216417612', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(120, '34101-2689281-7', 'MALIK MUHAMMAD AMIN ', 'NABEEL GULL KAHN', 'Home number 18, Qila Didar Singh', '3216417613', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(121, '34101-2428857-9', 'WAQAS JAVED', 'MUHAMMAD TAHIR', 'Home number 29, Qila Didar Singh', '3216417614', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(122, '34101-3376533-6', 'FARAH ASGHAR', 'ABDUL REHMAN YOUSAF', 'Home number 78, Qila Didar Singh', '3216417615', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(123, '34101-2877296-5', 'MUHAMMAD HAMEED', 'TALHA SADIQ', 'Home number 458, Qila Didar Singh', '3216417616', 'MALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(124, '34101-2454167-6', 'TAHIRA PERVEEN', 'SHAUKAT HAMEED', 'Home number 178, Qila Didar Singh', '3216417617', 'MALE', '0000-00-00', 'CLEAR', '0', NULL, '2022-07-24 15:26:38'),
(125, '34101-2454157-8', 'BUSHRA SALEEM', 'SH.MUHAMMAD SHOAIB', 'Home number 30, Qila Didar Singh', '3216417618', 'FEMALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(126, '34101-3195679-6', 'MUNAZZA NAVEED SHEIK', 'MUHAMMAD ASIF', 'Home number 145, Qila Didar Singh', '3216417619', 'FEMALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38'),
(127, '34101-4169076-4', 'SHAISTA AYUB', 'SHEIKH ABID SIDDIQUE', 'Home number 458, Qila Didar Singh', '3216417620', 'FEMALE', '0000-00-00', 'AVAILABLE', '0', NULL, '2022-07-24 15:26:38');

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
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `location`, `type`, `img_path`, `status`, `remember_token`, `created_at`) VALUES
(2, 'meezan bank', 'garden town gujranwala', 'bank', 'uploads/image1.jpg', '0', NULL, '2022-07-17 08:11:12'),
(3, 'bank of punjab', 'gift university', 'bank', 'uploads/test.jpg', '1', NULL, '2022-07-17 08:12:14');

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
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nadra_informations`
--
ALTER TABLE `nadra_informations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
