-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 09:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daily_activity_upt1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `c_admin` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`c_admin`, `nama`, `username`, `password`) VALUES
('adm1', 'Administrator', 'admin', '$2y$10$6E7OAZyYzscaduzr/VcCAurT9Oin3CvlJFocxaIUyOZ0UgXQ1Bzji');

-- --------------------------------------------------------

--
-- Table structure for table `akses_otm`
--

CREATE TABLE `akses_otm` (
  `id` int(11) NOT NULL,
  `nis_siswa` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `no_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akses_otm`
--

INSERT INTO `akses_otm` (`id`, `nis_siswa`, `password`, `no_hp`) VALUES
(1, '201902001', 'ysN08', NULL),
(2, '201902002', 'Ha5sB', NULL),
(3, '201902003', 'CYJy1', NULL),
(4, '201902005', 'ejhqo', NULL),
(5, '201902006', 'PMqVE', NULL),
(6, '201902007', 'VlNCz', NULL),
(7, '201902008', 'uGgAY', NULL),
(8, '201902009', '6jmuu', NULL),
(9, '201902010', 'M8oUk', NULL),
(10, '201902011', 'PlQlq', NULL),
(11, '201902012', 'tqoJd', NULL),
(12, '201902014', 'RcaSp', NULL),
(13, '201902016', 'mtxwu', NULL),
(14, '201902017', 'LvcPw', NULL),
(15, '201902018', 'k9agu', NULL),
(16, '201902020', 'gG1Z7', NULL),
(17, '201902021', 'MK5ha', NULL),
(18, '201902022', '6rjKP', NULL),
(19, '201902023', 'uLuUq', NULL),
(20, '201902024', 'ixpVV', NULL),
(21, '201902025', 'cxClX', NULL),
(22, '201902026', '0zIXO', NULL),
(23, '201902027', 'qK4Z2', NULL),
(24, '201902028', '0AKZo', NULL),
(25, '201902029', 'VXGuO', NULL),
(26, '201902032', 'NDvM4', NULL),
(27, '202002039', 'FmoxH', NULL),
(28, '202002041', 'RtxG1', NULL),
(29, '202002042', 'SDPZn', NULL),
(30, '202002043', 'StBhr', NULL),
(31, '202002044', 'N6CIE', NULL),
(32, '202002046', 'u2Dhi', NULL),
(33, '202002047', 'IdA79', NULL),
(34, '202002051', 'cPcqa', NULL),
(35, '202002053', 'uPBNs', NULL),
(36, '202002054', 'dJh2j', NULL),
(37, '202002055', 'l6ywA', NULL),
(38, '202002057', 'lEE4N', NULL),
(39, '202002058', '28t66', NULL),
(40, '202002059', 'QyOh2', NULL),
(41, '202002060', 'Curyc', NULL),
(42, '202002061', '5wGWr', NULL),
(43, '202002062', 'lMEQL', NULL),
(44, '202002065', 'zcx8u', NULL),
(45, '202002066', 'EwtsR', NULL),
(46, '202002067', 'MuJ1i', NULL),
(47, '202002070', 'VXoLB', NULL),
(48, '202002072', 'rt2uZ', NULL),
(49, '202002073', 'p9b1D', NULL),
(50, '202002074', 'rvCpx', NULL),
(51, '202002077', 'RZevx', NULL),
(52, '202002079', 'Rpofb', NULL),
(53, '202002080', 'M0q7b', NULL),
(54, '202002082', 'y0JCb', NULL),
(55, '202102083', 'ci6Ly', NULL),
(56, '202102084', 'Knutk', NULL),
(57, '202102086', 'au78n', NULL),
(58, '202102087', '83wKj', NULL),
(59, '202102088', '3LU8C', NULL),
(60, '202102089', 'E1nRG', NULL),
(61, '202102090', 'McZqu', NULL),
(62, '202102091', '3HrSo', NULL),
(63, '202102092', 'aQhAu', NULL),
(64, '202102093', 'ulUsn', NULL),
(65, '202102094', 'sA4v0', NULL),
(66, '202102095', 'E29ZY', NULL),
(67, '202102096', 'fLfQL', NULL),
(68, '202102097', 'Uzaam', NULL),
(69, '202102098', 'C13QD', NULL),
(70, '202102102', 'FOtSl', NULL),
(71, '202102103', 'zQy1X', NULL),
(72, '202102104', 'gnkyL', NULL),
(73, '202102105', 'a4t7N', NULL),
(74, '202102106', 'ftRNH', NULL),
(75, '202102108', 'YauSV', NULL),
(76, '202102109', 'zAhOx', NULL),
(77, '202202110', 'ulXt2', NULL),
(78, '202202111', 'VCzBg', NULL),
(79, '202202112', 'LNKKy', NULL),
(80, '202202113', '21ofd', NULL),
(81, '202202114', 'OWVyW', NULL),
(82, '202202115', '0h6cU', NULL),
(83, '202202116', 'CJyUp', NULL),
(84, '202202117', '7QrhF', NULL),
(85, '202202118', 'Rs9DJ', NULL),
(86, '202202119', 'ku74o', NULL),
(87, '202202120', 'zYMKw', NULL),
(88, '202202121', 'mcAJG', NULL),
(89, '202202122', 'W87mP', NULL),
(90, '202202123', '8WRN2', NULL),
(91, '202202124', 'X4iuV', NULL),
(92, '202202125', 'H3KfN', NULL),
(93, '202202127', 'ZBCSh', NULL),
(94, '202202128', 'GROk7', NULL),
(95, '202202129', 'OO5dX', NULL),
(96, '202202130', 'yvDd3', NULL),
(97, '202202131', 'laziw', NULL),
(98, '202202132', 'gjuX4', NULL),
(99, '202202134', 'q11Hy', NULL),
(100, '202202135', 'bJMrr', NULL),
(101, '202202136', '9IFl4', NULL),
(102, '202202137', 'GqFtZ', NULL),
(103, '202202138', '0tyyK', NULL),
(104, '202202139', 'iignQ', NULL),
(105, '202202140', 'Wh0c6', NULL),
(106, '202202141', '8MS8p', NULL),
(107, '202202142', 'n77og', NULL),
(108, '202202143', 'y16OY', NULL),
(109, '202202144', '7QkCk', NULL),
(110, '202202145', '05DLg', NULL),
(111, '202302001', 'zpn7t', NULL),
(112, '202302002', 'NFBWB', NULL),
(113, '202302003', '4onei', NULL),
(114, '202302004', 'mX1dS', NULL),
(115, '202302005', '5ZR9F', NULL),
(116, '202302006', '5sk1o', NULL),
(117, '202302007', 't9nNl', NULL),
(118, '202302008', 'PRc5e', NULL),
(119, '202302009', '8NE7Y', NULL),
(120, '202302010', 'ImUgh', NULL),
(121, '202302012', 'HFrHs', NULL),
(122, '202302013', 'A18xo', NULL),
(123, '202302014', '8m7Qu', NULL),
(124, '202302015', 'msUkR', NULL),
(125, '202302016', 'WlF3I', NULL),
(126, '202302017', 'CCYhZ', NULL),
(127, '202302018', '3IX2r', NULL),
(128, '202302019', '2ui4c', NULL),
(129, '202302020', 'nswdy', NULL),
(130, '202302021', 'JymPJ', NULL),
(131, '202302022', 'hz1Pv', NULL),
(132, '202302023', 'xX6gz', NULL),
(133, '202302024', 'PYE4J', NULL),
(134, '202302025', 'n3J20', NULL),
(135, '202302026', 'bDpXR', NULL),
(136, '202302027', 'otQbb', NULL),
(137, '202302028', 't9gCp', NULL),
(138, '202302029', 'c7AKd', NULL),
(139, '202302030', '24Hc8', NULL),
(140, '202302031', 'BplGw', NULL),
(141, '202302033', 'e7Byg', NULL),
(142, '202302034', 'gXOZ6', NULL),
(143, '202302036', 'ycMxE', NULL),
(144, '202302037', 'GbG75', NULL),
(145, '202302038', 'dWlZh', NULL),
(146, '202302039', 'ScyBC', NULL),
(147, '202302040', 'moeko', NULL),
(148, '202302041', 'fEodi', NULL),
(149, '202302042', 'ws41r', NULL),
(150, '202302043', 'HqUGG', NULL),
(151, '202302044', 'OV4WI', NULL),
(152, '202302045', 'nC060', NULL),
(153, '202302046', 'L67yS', NULL),
(154, '202302047', '03WFB', NULL),
(155, '202402001', 'S6Ysu', NULL),
(156, '202402002', 'YOtLW', NULL),
(157, '202402003', 'dBik1', NULL),
(158, '202402004', 'urtph', NULL),
(159, '202402005', 'QOLYE', NULL),
(160, '202402006', '2wQy0', NULL),
(161, '202402007', 'caDGd', NULL),
(162, '202402008', 'uypRD', NULL),
(163, '202402009', 'Hnmfh', NULL),
(164, '202402010', 'l6Vem', NULL),
(165, '202402011', 'F0yhG', NULL),
(166, '202402012', 'mYLsE', NULL),
(167, '202402013', '24eK3', NULL),
(168, '202402014', 'WA7HP', NULL),
(169, '202402015', 'f7sm9', NULL),
(170, '202402016', 'nQBxR', NULL),
(171, '202402017', 'ysQco', NULL),
(172, '202402018', '3koXr', NULL),
(173, '202402019', '9qfRW', NULL),
(174, '202402020', '8UGQI', NULL),
(175, '202402021', '1g5EA', NULL),
(176, '202402022', 'BWPFA', NULL),
(177, '202402023', 'UYP6p', NULL),
(178, '202402024', 'LP8jo', NULL),
(179, '202402025', 'zies6', NULL),
(180, '202402026', 'JbDXu', NULL),
(181, '202402027', '781Af', NULL),
(182, '202402029', 'rykii', NULL),
(183, '202402030', 'teLcO', NULL),
(184, '202402031', 'bu4vi', NULL),
(185, '202402032', 'd6HdE', NULL),
(186, '202402033', 'JXfNu', NULL),
(187, '202402034', 't2k9Y', NULL),
(188, '202402035', 'WOCvU', NULL),
(189, '202402036', 'XVRZz', NULL),
(190, '202402037', 'uNol7', NULL),
(191, '202402038', 'Ugqpy', NULL),
(192, '202402039', 'Uwnju', NULL),
(193, '202402040', 'OaHng', NULL),
(194, '202402041', 'bEGWH', NULL),
(195, '202402042', 'dF160', NULL),
(196, '202402043', 'WG9uq', NULL),
(197, '202402044', 'aCa3u', NULL),
(198, '202402045', 'oBZE6', NULL),
(199, '202402046', 'RrJaZ', NULL),
(200, '202402047', '3p4L3', NULL),
(201, '202402048', 'IvuyG', NULL),
(202, '202402049', 'yEz3n', NULL),
(203, '202402051', '469wE', NULL),
(204, '202402052', 'JEcS1', NULL),
(205, '202402053', 'KZAwu', NULL),
(206, '202402054', 'XcNuJ', NULL),
(207, '202402055', 'SeiGK', NULL),
(208, '202402056', 'ekaHL', NULL),
(209, '202402057', 'udhNk', NULL),
(210, '202402058', '0CRqZ', NULL),
(211, '202402059', 'WmpAs', NULL),
(212, '202402060', 'suf0J', NULL),
(213, '202402061', 'nGorf', NULL),
(214, '202402062', 'GKd3S', NULL),
(215, '202402063', 'o95Au', NULL),
(216, '202402064', 'trJUy', NULL),
(217, '202402065', '51NMi', NULL),
(218, '202402066', 'SqKG2', NULL),
(219, '202402067', 'JOFVu', NULL),
(220, '202402068', 'xYlRI', NULL),
(221, '202402069', 'WmR7S', NULL),
(222, '202402070', 'E2J09', NULL),
(223, '202402071', 'hYE1k', NULL),
(224, '202402072', 'oHFwA', NULL),
(225, '202402073', '9ywpj', NULL),
(226, '202402074', 'WRBZQ', NULL),
(227, '202402075', 'BLyWp', NULL),
(228, '202402076', 'GJKDQ', NULL),
(229, '202402077', 'wyAar', NULL),
(230, '202402078', '1n4pr', NULL),
(231, '202402079', 'SUtwu', NULL),
(232, '202402080', 'wVlrn', NULL),
(233, '202402081', 'rmmBN', NULL),
(234, '202402082', '1uz7o', NULL),
(235, '202402083', 'urmFM', NULL),
(236, '202402084', 'yIBxl', NULL),
(237, '202402085', 'nhsgE', NULL),
(238, '202402086', 'uuqAP', NULL),
(239, '202402087', 'RdPpE', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(2) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kepsek` varchar(30) NOT NULL,
  `nipkepsek` varchar(30) NOT NULL,
  `namasek` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `alamat`, `kepsek`, `nipkepsek`, `namasek`) VALUES
(1, 'BEKASI', '', '', 'AKHYAR INTERNATIONAL ISLAMIC SCHOOL');

-- --------------------------------------------------------

--
-- Table structure for table `daily_siswa_approved`
--

CREATE TABLE `daily_siswa_approved` (
  `id` int(11) NOT NULL,
  `from_nip` varchar(50) DEFAULT NULL,
  `nis_siswa` varchar(50) DEFAULT NULL,
  `departemen` varchar(50) DEFAULT NULL,
  `title_daily` varchar(1000) DEFAULT NULL,
  `isi_daily` varchar(10000) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status_approve` int(11) DEFAULT NULL,
  `tanggal_dibuat` datetime DEFAULT NULL,
  `tanggal_disetujui_atau_tidak` datetime DEFAULT NULL,
  `stamp` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_kelas`
--

CREATE TABLE `group_kelas` (
  `id` int(11) NOT NULL,
  `nama_group_kelas` char(250) DEFAULT NULL,
  `walas` varchar(250) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_kelas`
--

INSERT INTO `group_kelas` (`id`, `nama_group_kelas`, `walas`, `nip`) VALUES
(1, 'AL-ASHR', 'DIANA HAFSARI NURPRATIWI,  S.Psi.', '2024126'),
(2, 'AL-QADR', 'YUNITA ROSMALIA,  S.Pd', '2024129'),
(3, 'AT-TIIN', 'CUT ALFIANA ANDARINI,  S.Pd', '2021051'),
(4, 'AL-ALAQ', 'NURUL AINI,  S.Pd', '2023503'),
(5, 'AL-BURUUJ', 'DAFFA ALYA\'IDDINI,  S.Pd', '2024144'),
(6, 'AT-THAARIQ', 'FARAH FAHRIAH,  S.Pd.I', '2024127'),
(7, 'AL-FAJR', 'MEIDA AGUSTIN', '2023504'),
(8, 'AL-BALAD', 'TETI LISTIAWATI,  S.Pd.I', '2019028'),
(9, 'AL-MURSALAT', 'EMBUNT MUZDALIFAH,  S.Pd', '2023119'),
(10, 'AL-MAARIJ', 'REGITHA SASKIA,  S.Pd', '2022094'),
(11, 'AL-INSAN', 'INEZ DELLA MAHARANI,  S.Ag', '2024121'),
(12, 'AL-QALAM', 'NURUL ANNISA FIRDAUS,  S.Pd', '2023500'),
(13, '1A', 'LUTHFIANA,  S.Pd', '2021055'),
(14, '1B', 'MUTHIA IZZA AZHARI,  S.Sos', '2023098'),
(15, '1C', 'NADIA IZZATURRAHMAH,  S.Ag', '2024132'),
(16, '2A', 'AIDAH FITRIAH,  S.Pd', '2023099'),
(17, '2B', 'GEMA INTAN FRINCYLIANA Lc.', '2024122'),
(18, '3A', 'NADIA \'AAFIYAH WAHYUASIH,  S.Pd', '2022070'),
(19, '3B', 'SALSABILA AGIS,  S.Pd', '2024118'),
(20, '4A', 'AJENG SEPTIANTI,  S.Pd', '2024135'),
(21, '4B', 'NESYA NURUL AMALIA,  A.Md', '2023117'),
(22, '5A', 'RANGGA SATRIA AKBAR,  S.Ag', '2024123'),
(23, '5B', 'NURUL AMALIA,  S.Si', '2017006'),
(24, '6A', 'AHMAD BAIDOWI,  M.Pd', '2023086'),
(25, '6B', 'NABIILAH IFFATUL HANUUN,  S.Si', '2021060');

-- --------------------------------------------------------

--
-- Table structure for table `group_siswa_approved`
--

CREATE TABLE `group_siswa_approved` (
  `id` varchar(50) NOT NULL DEFAULT '',
  `from_nip` varchar(50) DEFAULT NULL,
  `group_kelas_id` int(11) DEFAULT NULL,
  `departemen` varchar(50) DEFAULT NULL,
  `title_daily` varchar(1000) DEFAULT NULL,
  `isi_daily` varchar(10000) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status_approve` int(11) DEFAULT NULL,
  `tanggal_dibuat` datetime DEFAULT NULL,
  `tanggal_disetujui_atau_tidak` datetime DEFAULT NULL,
  `stamp` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `c_guru` varchar(10) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `temlahir` varchar(20) DEFAULT NULL,
  `tanglahir` date NOT NULL,
  `tgl_join` date NOT NULL,
  `c_jabatan` varchar(50) DEFAULT NULL,
  `jkel` varchar(10) NOT NULL,
  `alamat` text DEFAULT NULL,
  `pendidikan` varchar(100) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `no_hp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`c_guru`, `nip`, `nama`, `temlahir`, `tanglahir`, `tgl_join`, `c_jabatan`, `jkel`, `alamat`, `pendidikan`, `jurusan`, `email`, `username`, `password`, `no_hp`) VALUES
('4c1Xf5dnh', '2024145', 'ARIEF RACHMAN HAKIM', 'Surabaya', '1999-03-10', '2024-10-22', 'Guru SD Tahsin Tahfidz', 'L', 'Perumahan Pondok Cikunir Indah, Jl. Cendana No.8 Kel. Jatibening kec. Pondok Gede Bekasi, Jawa Barat', 'S1', 'Al-Qur\'an Tafsir', '', 'arief', '$2y$10$cnryrteQHpR0Ej7Eil317.AwOOfCE10gASz0d5ZWspwmFm2IAUcK6', NULL),
('AM22724NE', '2019023', 'NOVITA', 'Bekasi', '1995-02-11', '2019-01-03', 'Wakil Kepala Sekolah SD', 'P', 'Jl. Dewi Sartika Gg Pepaya No. 30, RT 004/ RW 005, Margahayu, Bekasi Timur', 'S1 - Sarjana Pendidikan Guru MI', '', '', 'novita', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('CU67858WF', '2021052', 'ANDRI APRIANTO', 'Lampung', '1999-04-17', '2021-12-07', 'Guru Poros Masjid SD', 'L', 'Jl. Masjid Hidayatullah No.20 Jakasetia, Bekasi Selatan', 'Kuliah - STAI Bani Saleh', '', '', 'andri', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('D78eMGDyp', '2024132', 'Nadia Izzaturrahmah', 'Bekasi', '2001-04-20', '2024-07-08', 'Guru Kelas SD 1B', 'P', 'Jl. Ayat no 20 RT 09 RW 08 Jatimakmur, Pondok Gede', 'S1', 'Universitas STIU Darul Hikmah - Tafsir Al-Qur\'an', '', 'Izza', '$2y$10$.ogi.MW4IzxkRmLrBiJjQe9QDPZ3oiUeK6La7u9esHXw8dVLECvq.', '085215408382'),
('EC10672PO', '2018017', 'RAHMAT SUPRIATNA', 'Garut', '1987-11-06', '2018-05-07', 'Guru Poros_Masjid SD', 'P', 'Jl. H. Hasan 1 No. 54A RT.002 RW.021 Pekayon Jaya Bekasi Selatan', 'S2 - Pascasarjana Pendidikan Univ. Ibnu Khaldun', '', '', 'rahmat', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('EN58538CA', '2021054', 'MUHAMMAD FAISAL', 'Bekasi', '1995-03-06', '2021-05-07', 'Guru SD', 'P', 'Jl. Kaliabang tengah Rt 001/004 no 10 Bekasi Utara, Jawa Barat 17125', 'S1 - Sarjana Teknik Informatika', '', '', 'faisal', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('ExgWUxU7E', '2024137', 'Ahmad Fadillah Wijaya ', 'Sosok', '1998-07-02', '2024-07-08', 'Guru SD', 'L', 'Pontianak', 'S1', 'STAIINDO Jakarta, Pendidikan Agama Islam', '', 'Fadil', '$2y$10$0xvcGfWH5gz4mer8MVGwvOv9.HBIMRyT4sQiSvurUvS3cBWCgxacG', '0881011115851'),
('FI22150KY', '2019032', 'NADRA HUSEIN AZIZ', 'Jeddah', '1985-06-03', '2020-10-08', 'Kepala Sekolah SD', 'P', 'Jl. Lembah Pinang IV Blok I IX No. 24, Pondok Kelapa', 'S1 - STBA Medan, Bahasa Inggris', '', '', 'nadra', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', '08'),
('G4Qp9taEo', '2024147', 'INDRA MUHAMMAD AZHAR MUHADJIR', 'Jakarta', '1999-04-12', '2024-10-25', 'Guru SD Tahsin Tahfidz', 'L', 'Jl. Batas Indah Rt005/001, No.76 Kel. Pondok Betung, Kel. Pondok Aren, Tangerang Selatan', 'S1', 'PAI', '', 'azhar', '$2y$10$BjmAnjpzFcTCdtjMfQoNlujmlaSMNIjmuCCuAnhJzmjO6GIpzYN1a', NULL),
('GH91424XO', '2023603', 'MUHAMMAD ZIKRA HIDAYATULLAH ', 'Jakarta ', '2003-09-02', '2023-03-07', 'Guru Poros_Masjid SD', 'P', 'Komplek Pemda Jatiasih , Jl. Cemara 3 Blok A6 No.17 , Jatiasih , Bekasi , Jawa Barat', 'S1, STIU Darul Hikmah Bekasi , Jurusan Ilmu Al-Qur\'an dan Tafsir', '', '', 'zikra', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('GO53476GD', '2023604', 'ASTRI AISIAH ROBIAH', 'Garut', '2001-03-09', '2023-03-07', 'Guru Poros Masjid SD', 'L', 'Jl. R.H. Umar, Gg. H. Nimin, RT. 05/RW. 18, Kp. Ceger, Jakasetia - Bekasi Selatan', 'S1 - STAI Al-Hidayah Tasikmalaya - Pendidikan Bahasa Arab', '', '', 'astri', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('HD36667TI', '2023601', 'ZULPIAN MUSLIM', 'Tasikmalaya', '1999-06-26', '2023-03-07', 'Guru Poros Masjid SD', 'L', 'Kp. Sagobog Ds. Nanggerang Kec. Cigalontang Kab. Tasikmalaya', 'S1, STAI Al-Hidayah Bogor - Pendidikan Agama Islam', '', '', 'zulpian', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('HE56999WK', '2023086', 'AHMAD BAIDOWI', 'Jakarta', '1994-05-06', '2023-03-07', 'Guru Poros Masjid SD', 'L', 'Gg. Bunga, RT 03/04, Kp. Sasak Tiga, Des. Tridaya Sakti, Tambun Selatan, Kab. Bekasi', 'S2, Magister Pendidikan Bahasa Arab UIN Syarif Hidayatullah Jakarta', '', '', 'baidowi', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', '081316469005'),
('HP66083HI', '2023098', 'MUTHIA IZZA AZHARI', 'Bekasi', '2000-11-07', '2023-10-01', 'Guru Poros_Masjid SD', 'P', 'Kp.Rawabebek Gg.Rambutan Rt.001 Rw.011 No.5 Kel. Kotabaru, Kec. Bekasi Barat, Kota Bekasi', 'S1, STID DI Al-Hikmah Jakarta, Komunikasi dan Penyiaran Islam', '', '', 'muthia', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', '081510772395'),
('IB64888RF', '2022083', 'DIAN RAHMAWATI', 'Jakarta', '1997-02-03', '2022-04-07', 'Guru SD', 'P', 'Jl. H. Tibin Kp. Setu Rt. 015/ 002 No. 51 Bintara Jaya Bekasi Barat Kota Bekasi 17136', 'S2 - Univ. Gunadarma - Penerjemahan', '', '', 'dian', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('iM9Ny5M49', '2024146', 'NISKAH HUSNIAH', 'Cianjur', '2000-06-14', '2024-10-23', 'Guru SD Tahsin Tahfidz', 'P', 'Jln. Gondangdia baru Rt.08/09, No.58, Jaticempaka, Pondok gede, Bekasi', 'S1', 'PGMI', '', 'niskah', '$2y$10$aAgfAm92WFoO5aj4E/K19.4Z.FW8qJiUSdYN.Rb8dkciNzyABCdSC', '0895358661383'),
('J8wmdPl7u', '2024134', 'Muti\'ah Mardhiyyah ', 'Sampang', '1997-04-09', '1970-01-01', 'Guru SD', 'P', 'Tarik Lor Rt 15 Rw 04, Tarik, Sidoarjo', 'S1', 'STIU Darul Hikmah, Ilmu Al-Qur\'an Tafsir', '', 'dhiyyah', '$2y$10$NoBm5.h9WELlAVdLr/2gpOkjWs0hRFhXuliuyVJANP3iYQSsVROvO', NULL),
('k1gPu2qOF', '2023117', 'Nesya Nurul Amalia', 'Jakarta ', '1970-01-01', '1970-01-01', 'guru SD', 'P', 'Jalan H.Dehir no. 46 kelurahan jatiluhur kecamatan jatiasih kota bekasi', 'S1', 'LIPIA Jakarta, B. Arab', '', 'nesya', '$2y$10$3/b0ipqEW5d5GiV.6TcWUeW.pGUG1/TA3JJdonwrHncgjT7XAZ.Y6', '082299049132'),
('KI27482IH', '2021061', 'MUHAMMAD FIRLI HERDIANSYAH', 'Jakarta', '2002-08-01', '2021-06-09', 'Guru Poros_Masjid SD', 'P', 'Jl. Arwana II Blok B5 No.1 Rt 009/010 Pondok Gede Permai', 'D2 - Utsman Bin Affan - Bahasa Arab', '', '', 'firli', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('LG44977YX', '2022097', 'AZMI PAHLEVI HERMAWAN', 'Bekasi ', '1997-01-07', '2023-11-12', 'Guru Poros Masjid SD', 'P', 'Komp. Bintara Jaya Permai Blok C No 44 Kel. Bintara Jaya Kec. Bekasi Barat', 'S1 , International University Of Africa Sudan', '', '', 'azmi', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('llg0VWden', '2024136', 'Khoirunnisa Munniawaty Dewisuni', 'Bandung ', '1970-01-01', '2024-07-08', 'Guru SD', 'P', 'Jl. Raya Caman No.25 Rt 02 RW 03 Jatibening, Pondok Gede', 'S1', 'Universitas Padjajaran, Sastra Arab', '', 'Nisa', '$2y$10$Q6HmtnCLASwRCOnfTK1l4Od0HemgOaD6k4.sb.H4qXy1Wgflm.YwG', NULL),
('NwQ6ilOAw', '2024138', 'Bagas Ardianto', 'Jakarta ', '1997-11-09', '2024-07-08', 'Guru SD', 'L', 'Jl. Alia 5A No 09 Rt 003 Rw 025 Kelurahan Harapan Jaya Bekasi Utara Kota Bekasi', 'S2', 'Universitas Indraprasta PGRI, FMIPA', '', 'bagas', '$2y$10$cRRDRW6CpXkSuPneNxyqTu3C.k2JgjQkcXx3lnHMYo0CtBKNNdplm', NULL),
('RV81764TX', '2021055', 'LUTHFIANA', 'Jakarta', '1997-07-12', '2021-05-07', 'Guru SD', 'P', 'Perumahan Duta Bumi I Blok 1A No. 11 RT 01/028, Harapan Indah, Bekasi', 'S1 - Sarjana Pendidikan, Guru SD, Universitas 45', '', '', 'luthfiana', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', '082320822970'),
('Sm1vf0kMD', '2024118', 'Salsabila Agis', 'Purwakarta ', '2000-09-17', '1970-01-01', 'guru SD', 'P', 'perumahan panorama indah blok D2 no 04, Purwakarta, Jawa Barat', 'S1', 'STAI Al Musdariyah, Pendidikan Agama Islam ', '', 'sabil', '$2y$10$fKca9Y.eCBN/b0MQGswvdu4bGXwipfrcMmdNdXAX3AvzGkAVietqi', '085624392994'),
('SQ50864BI', '2021060', 'NABIILAH IFFATUL HANUUN', 'Jakarta', '1999-06-09', '2022-04-08', 'Guru SD', 'L', 'Jl. Pondok Kelapa Selatan No. 6C Rt 01/05 Kel. Pondok Kelapa Kec. Duren Sawit, Jakarta Timur, Jakarta 13450', 'S1 - Sarjana Science MIPA - Univ. Lampung', '', '', 'nabiilah', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', '085283649038'),
('SquiFb3Gu', '2024122', 'Gema Intan Frincyliana', 'Jakarta', '1999-03-09', '2024-01-23', 'Guru SD Kelas 2B', 'P', 'Jalan Swakarsa 2 no. 29 Rt 03/04 Jatibening baru Pondok Gede Bekasi', 'S1', 'Al Azhar University Cairo - Ushuluddin', '', 'Gema', '$2y$10$DDNmqhS7EdjhCtp7O0jnZe3FCkBdlg6C1xZH0ZzceAhyD14MkOK6.', '087814685059'),
('TK96225EH', '2023099', 'AIDAH FITRIAH', 'Jakarta', '1996-11-02', '2024-01-02', 'Guru Poros Masjid SD', 'P', 'Jl. R.H. Umar, Gg. H. Nimin, RT. 05/RW. 18, Kp. Ceger, Jakasetia - Bekasi Selatan', 'S1 - Institut Ilmu al-Qur\'an (IIQ) Jakarta - Pendidikan Agama Islam', '', '', 'aidah', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('uKQ9Q4dJe', '2024133', 'Ghoyyats Fikrus Shorih ', 'bekasi', '2000-10-20', '2024-07-08', 'Guru SD', 'L', 'Perumahan Pondok Gede Permai (PGP) Blok C4 No.17 Jatiasih, Bekasi Selatan', 'S1', 'STAI YAMISA, Pendidikan Agama Islam', '', 'ghoyyats', '$2y$10$.PEc8M6YDtZJv8LcxYIo5OxA2zRjYNaq1BgpnY67wrBQzTc9.2cm6', NULL),
('UO33080YZ', '2022084', 'FAIRUZ NADA NOVALIANA', 'Bekasi', '1998-02-11', '2023-02-07', 'Guru Poros Masjid SD', 'P', 'Jl. Kerinci 2 Blok D.16 No.1 Pondok Melati Indah Jatiwarna Bekasi', 'S1 - Univ. Darussalam Gontor - Studi Agama', '', '', 'nada', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('VH60963KH', '2017006', 'NURUL AMALIA', 'Bekasi', '1985-11-09', '2019-03-04', 'guru SD', 'L', 'Jl. Patriot RT 004/021 No. 70, Jakasampurna Bekasi Barat', 'S1 - Sarjana SAINS Uhamka', '', '', 'nurulamalia', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', '081317725672'),
('WV74387FZ', '2018016', 'TEGUH IMAN MUTAHID UMAM', 'Garut', '1995-09-10', '2019-03-05', 'Kepala_Unit Poros Masjid', 'L', 'Jl. H. Hasan No. 103 Jl. Raya Pekayon Rt 002/021, Bekasi Selatan', 'S1 - Sarjana Pendidikan Islam', '', '', 'teguh', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('xne0SMRh2', '2024123', 'Rangga Satria Akbar', 'bekasi', '1970-01-01', '2024-07-08', 'guru SD', 'L', 'Perumahan Citra Villa RT 04 RW 28, Mangun Jaya, Tambun Selatan', 'S1', 'Sekolah Tinggi Ilmu Al-Qur\'an Zad Cianjur, Ilmu Al', '', 'Rangga', '$2y$10$tCFyzP2X7sWtfEVJ85I2WO11ohI022FpDkqEfz2/IDnY7D2ee0OG.', '089506743776'),
('yg7ElNN0a', '2024131', 'Khasturi Sekar Firdaus', 'Bekasi', '1970-01-01', '2024-07-08', 'guru SD', 'P', 'Harapan Baru Jl. Pisang Ambon No 5 Rt 005 RW 16 Kota Baru, Bekasi Barat Kota Bekasi', 'S1', 'LIPIA Jakarta, Management Bisnis', '', 'firda', '$2y$10$CKA9J25qNGr6Jz1JBmIxd.H5Kzr1.4Qi0Iv2njUly0y/Q2.n0UI2u', NULL),
('YL49843XI', '2023102', 'ZALFA QURRATA A\'YUN', 'Jakarta', '1994-02-07', '2023-05-06', 'Guru SD', 'L', 'Jl. Dahlia Raya No. 200, Jakasampurna , Bekasi Barat', 'S1, IPB - Statistika', '', '', 'zalfa', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('yo4EJCnQl', '2024135', 'Ajeng Septianti', 'bekasi', '1999-09-09', '2024-07-08', 'Guru SD', 'P', 'Jl. Bintara 8 RT 03 RW 03 No 15, Kelurahan Bintara Kecamatan Bekasi Barat', 'S1', 'STKIP Kusuma Negara, Pendidikan Matematika', '', 'ajeng', '$2y$10$hfenI5m5mhqB.6HkpbGDI.RRDAZpr5HJv83fEhkS4L3oHcoEjLjK6', '08568818505'),
('ZB43523SB', '2022070', 'NADIA \'AAFIYAH WAHYUASIH', 'Jakarta', '1998-11-09', '2024-04-03', 'Guru SD', 'P', 'Jl. Lumbu Utara Raya Blok II/159, Perumahan Bumi Bekasi Baru, Rawa Lumbu, Bekasi 17116', 'S1 - UNJ Pendidikan Biologi', '', '', 'nadia', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', '085710133977'),
('ZU17249CG', '2020040', 'RAINI MUKHITOH', 'Kebumen', '1996-06-30', '2020-01-06', 'Guru Poros_Masjid SD', 'P', 'Desa Roworejo RT 04 RW 01 Kec. Kebumen, Kab. Kebumen Jawa Tengah', 'MA - MA Cokroaminoto Banjarnegara', '', '', 'raini', '$2y$10$oml6JoGEO184SnbhAIkxWOn.fVgG.SpRjaitUGAV900DHn6g2x4Gm', NULL),
('ZXgCaekLM', '2024130', 'Anisah Ghina Amalia', 'Cilacap', '1970-01-01', '2024-07-08', 'guru SD', 'P', 'Perumahan Taman Tridaya Indah Jl. Wijaya Kusuma II blok G2 no 17 Tambun Selatan', 'S1', 'Al-Azhar Cairo, Syariah Islam', '', 'gina', '$2y$10$v8rj2dQ8SlE6LwTeyOvM..NHLqKCHD4o5Sx0LDpcVG.uXyf2zi4ZS', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history_password`
--

CREATE TABLE `history_password` (
  `id` int(11) NOT NULL,
  `nis_siswa` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_password`
--

INSERT INTO `history_password` (`id`, `nis_siswa`, `password`) VALUES
(1, '201902001', 'NBDHL'),
(2, '201902002', 'lguSC'),
(3, '201902003', 'ucHbz'),
(4, '201902005', 'Z8CDo'),
(5, '201902006', 'i9pY7'),
(6, '201902007', 'DLnvt'),
(7, '201902008', '9fqLn'),
(8, '201902009', 'U5eeB'),
(9, '201902010', 'gg60Z'),
(10, '201902011', 'oISWO'),
(11, '201902012', 'zEBqP'),
(12, '201902014', 'sYJEe'),
(13, '201902016', '7qfGE'),
(14, '201902017', '6e3s0'),
(15, '201902018', '0Ynlx'),
(16, '201902020', '533P2'),
(17, '201902021', 'fQyud'),
(18, '201902022', 'uQpi5'),
(19, '201902023', 'uiZy8'),
(20, '201902024', 'JMY3u'),
(21, '201902025', 'EfvQW'),
(22, '201902026', 'FWL0p'),
(23, '201902027', 'XAAjD'),
(24, '201902028', '5M0x8'),
(25, '201902029', 'QFz3R'),
(26, '201902032', 'VGO3O'),
(27, '202002039', 'PSlN6'),
(28, '202002041', 'UshjZ'),
(29, '202002042', 'MKqUM'),
(30, '202002043', 'hoGSu'),
(31, '202002044', '3qZAQ'),
(32, '202002046', 'yPwzX'),
(33, '202002047', 'funPv'),
(34, '202002051', 'ZB3CC'),
(35, '202002053', 'ryurc'),
(36, '202002054', 'VjvRH'),
(37, '202002055', '8ayPC'),
(38, '202002057', 'HFdzP'),
(39, '202002058', 'AgbRC'),
(40, '202002059', 'a6Dor'),
(41, '202002060', 'Zmbq8'),
(42, '202002061', 'm2ydS'),
(43, '202002062', 'ZLXCf'),
(44, '202002065', 'QfKQj'),
(45, '202002066', 'chuRi'),
(46, '202002067', 'pHy8j'),
(47, '202002069', '269hI'),
(48, '202002070', 'PUUUt'),
(49, '202002072', 'w1JKZ'),
(50, '202002073', 'F6EZO'),
(51, '202002074', '2xty2'),
(52, '202002077', 'UQ3C4'),
(53, '202002079', 'jMUVb'),
(54, '202002080', 'O4zuy'),
(55, '202002082', 'qJlLS'),
(56, '202102083', 'ue3Do'),
(57, '202102084', 'y8mfI'),
(58, '202102086', 'UeRqd'),
(59, '202102087', 'DtYHW'),
(60, '202102088', 'O3rg3'),
(61, '202102089', 'lyV15'),
(62, '202102090', '1431Y'),
(63, '202102091', 'yJlbh'),
(64, '202102092', 'imjpb'),
(65, '202102093', 'Paahb'),
(66, '202102094', '986aa'),
(67, '202102095', 'FlHh3'),
(68, '202102096', 'ekLjH'),
(69, '202102097', 'wI2t4'),
(70, '202102098', '3CWt1'),
(71, '202102102', '4VN5V'),
(72, '202102103', 'Y9jlO'),
(73, '202102104', 'kNM1g'),
(74, '202102105', 'VXaVl'),
(75, '202102106', 'webuO'),
(76, '202102108', 'NvGOz'),
(77, '202102109', 'zPG7H'),
(78, '202202110', 'cME2X'),
(79, '202202111', 'u2hMI'),
(80, '202202112', '7BiN0'),
(81, '202202113', '2kmAX'),
(82, '202202114', 'KUQMJ'),
(83, '202202115', 'yyvuj'),
(84, '202202116', '1DHNd'),
(85, '202202117', 'Lw4l0'),
(86, '202202118', 'ihnVu'),
(87, '202202119', 'tlB4l'),
(88, '202202120', 'JoaJM'),
(89, '202202121', 'q0bJf'),
(90, '202202122', 'nWRA2'),
(91, '202202123', 'kkrQZ'),
(92, '202202124', 'PNsQN'),
(93, '202202125', '9R30a'),
(94, '202202127', 'u8r7q'),
(95, '202202128', 'O01vc'),
(96, '202202129', 'r0nOu'),
(97, '202202130', 'iQzq6'),
(98, '202202131', 'I33Sx'),
(99, '202202132', 'l11ZM'),
(100, '202202134', 'dKKpr'),
(101, '202202135', 'exLSL'),
(102, '202202136', 'Mfloi'),
(103, '202202137', 'RAGj8'),
(104, '202202138', '0wvQj'),
(105, '202202139', 'gb3hJ'),
(106, '202202140', 'pwumG'),
(107, '202202141', 'EEgQ8'),
(108, '202202142', 'vHhuX'),
(109, '202202143', 'WPUxz'),
(110, '202202144', 'LsPQq'),
(111, '202202145', 'uLUWC'),
(112, '202302001', '9XJdw'),
(113, '202302002', 'vZz5D'),
(114, '202302003', 'cHXis'),
(115, '202302004', 'bdQ8t'),
(116, '202302005', 'tvtFp'),
(117, '202302006', '8PtRS'),
(118, '202302007', 'QVwOy'),
(119, '202302008', 'ar58I'),
(120, '202302009', 'pAinH'),
(121, '202302010', 'YHVqc'),
(122, '202302012', 'CHMaJ'),
(123, '202302013', '2Cfeo'),
(124, '202302014', '3L1ia'),
(125, '202302015', 'zYWvv'),
(126, '202302016', 'k7xp1'),
(127, '202302017', 'Yxc9Z'),
(128, '202302018', 'qu0e2'),
(129, '202302019', 'bqjNz'),
(130, '202302020', '9uQR7'),
(131, '202302021', 'uPlKa'),
(132, '202302022', 'Dn0oq'),
(133, '202302023', 'L4ZMC'),
(134, '202302024', 'OfBWb'),
(135, '202302025', 'avPsJ'),
(136, '202302026', 'RDkA4'),
(137, '202302027', 'mDS9K'),
(138, '202302028', 'Ytn7Q'),
(139, '202302029', 'PjEtD'),
(140, '202302030', 'AzgoA'),
(141, '202302031', 'MqGnv'),
(142, '202302033', 'uAahe'),
(143, '202302034', 'W5LZi'),
(144, '202302036', 's0coh'),
(145, '202302037', 'arOhX'),
(146, '202302038', 'kXCBl'),
(147, '202302039', 'DmaPs'),
(148, '202302040', '9Mbet'),
(149, '202302041', 'ywNSF'),
(150, '202302042', 'DDihI'),
(151, '202302043', 'kyias'),
(152, '202302044', '7yN50'),
(153, '202302045', '9c8Yi'),
(154, '202302046', 'KOEWf'),
(155, '202302047', 'ygWan'),
(156, '202402001', 'bsr94'),
(157, '202402002', 'lrFom'),
(158, '202402003', 'SjpWM'),
(159, '202402004', 'uG9uL'),
(160, '202402005', '8fv8e'),
(161, '202402006', 'J66QH'),
(162, '202402007', 'Yw46t'),
(163, '202402008', 'SjbSW'),
(164, '202402009', 'IhimJ'),
(165, '202402010', 'GCyC0'),
(166, '202402011', 'fL2H5'),
(167, '202402012', 'P857Q'),
(168, '202402013', 'pP4xu'),
(169, '202402014', 'SUIMf'),
(170, '202402015', 'dDSAf'),
(171, '202402016', 'eRZFG'),
(172, '202402017', 'CLlBp'),
(173, '202402018', 'aUfUN'),
(174, '202402019', 'MQw4P'),
(175, '202402020', 'pymwS'),
(176, '202402021', 'ZPJJ7'),
(177, '202402023', 'fvYdB'),
(178, '202402024', 'OFpjL'),
(179, '202402025', 'ZiD41'),
(180, '202402026', 'hfef9'),
(181, '202402027', 'c4gBo'),
(182, '202402032', 'qqe3r'),
(183, '202402033', 'XoyHC'),
(184, '202402034', '9fqV6'),
(185, '202402029', 'Y4yJG'),
(186, '202402030', 'LJLjM'),
(187, '202402031', 'Fchv1'),
(188, '202402035', 'GbrMp'),
(189, '202402036', 'JtndX'),
(190, '202402037', 'Fwbkb'),
(191, '202402038', 't5bcO'),
(192, '202402039', 'FGjgZ'),
(193, '202402040', 'yBb9i'),
(194, '202402041', 'LrAoN'),
(195, '202402042', 'nFaoq'),
(196, '202402043', 'WBC3P'),
(197, '202402044', 'SvyBy'),
(198, '202402045', 'lhjzm'),
(199, '202402046', 'FPkJu'),
(200, '202402047', 'Vl53H'),
(201, '202402048', '2rDtU'),
(202, '202402049', 'qvJz7'),
(203, '202402051', 'vS9Qc'),
(204, '202402022', '89BR6'),
(205, '202402052', 'gOQLh'),
(206, '202402053', 'JQdrX'),
(207, '202402054', 'JJh1y'),
(208, '202101001', 'jP5LA'),
(209, '202101002', 'hH3Ik'),
(210, '202101003', 'bEi7a'),
(211, '202101004', 'PEE4y'),
(212, '202101005', 'l0iZx'),
(213, '202101006', 'yZJyv'),
(214, '202101008', '2Z5Lv'),
(215, '202101009', 'qlu9V'),
(216, '202101010', '4ibx6'),
(217, '202101011', 'aEbH0'),
(218, '202101012', '6f4ov'),
(219, '202101015', 'YeKMB'),
(220, '202101016', 'jj9Xu'),
(221, '202101017', 'Uj12S'),
(222, '202101018', '6Vl3m'),
(223, '202101021', 'L6Ltf'),
(224, '202101022', 'mjcXy'),
(225, '202101023', 'KxuNE'),
(226, '202101024', 'q1l5r'),
(227, '202101025', '2juhO'),
(228, '202101026', '3lPlC'),
(229, '202101027', 'iduyR'),
(230, '202101028', 'gKbuq'),
(231, '202101030', 'mIdGq'),
(232, '202101032', 'rU7yc'),
(233, '202101034', 'G0725'),
(234, '202101064', 'X3019'),
(235, '202101065', 'fpwWg'),
(236, '202101066', 'uucqQ'),
(237, '202101067', 'cMZ0Z'),
(238, '202101068', 'ZOfKG'),
(239, '202101069', 'KmFXR'),
(240, '202101074', 'HXJVX'),
(241, '202101076', '18hey'),
(242, '202101077', 'yOyn9'),
(243, '202201001', 'eUZ1y'),
(244, '202201002', 'Ayhs9'),
(245, '202201005', 'BgWsP'),
(246, '202201007', 'Yblub'),
(247, '202201008', 'zpBUA'),
(248, '202201010', 'Bzygt'),
(249, '202201011', '1L94X'),
(250, '202201012', 'ELRtK'),
(251, '202201013', 'Js2Li'),
(252, '202201014', 'HyibU'),
(253, '202201017', 'wE0JF'),
(254, '202201018', 'PnGPG'),
(255, '202201020', 'Mnydu'),
(256, '202201021', 'eHMVO'),
(257, '202201022', 'u1OAk'),
(258, '202201024', '5M3R8'),
(259, '202201025', 'jfpOP'),
(260, '202201026', 'D6ifX'),
(261, '202201027', 'CRPuO'),
(262, '202201029', 'ytOin'),
(263, '202201030', 'u3xrM'),
(264, '202201031', 'zuZNV'),
(265, '202201032', 'qh9fd'),
(266, '202201033', 'vi7su'),
(267, '202201034', 'CQsYF'),
(268, '202201035', '6chfQ'),
(269, '202201038', 'MOqpU'),
(270, '202201039', 'K4Ike'),
(271, '202201041', 'qwMW8'),
(272, '202201042', 'HjfzF'),
(273, '202201043', 'OQnnj'),
(274, '202201045', '7cmb4'),
(275, '202201046', 'sNEbH'),
(276, '202201047', 'BOgoP'),
(277, '202201049', 'kllI9'),
(278, '202201050', 'W37PD'),
(279, '202201051', 'XkKnp'),
(280, '202201052', 'pOQ7Q'),
(281, '202201053', '5A5oB'),
(282, '202201054', '8zsWO'),
(283, '202201055', 'DS2ew'),
(284, '202201056', '2LicK'),
(285, '202201057', 'o9oQq'),
(286, '202301001', 'eqeku'),
(287, '202301002', 'UGY5C'),
(288, '202301003', 'OMHqv'),
(289, '202301004', 'ynJVK'),
(290, '202301005', 'Pct4L'),
(291, '202301006', 'IwzBn'),
(292, '202301007', 'nAbji'),
(293, '202301008', 'FByAJ'),
(294, '202301010', 'yGsS5'),
(295, '202301011', 'bs5NW'),
(296, '202301012', 'uzLph'),
(297, '202301013', 'V9SCu'),
(298, '202301014', 'J8OkH'),
(299, '202301015', 'XiFAM'),
(300, '202301016', 'UIOmM'),
(301, '202301017', 'j8mfW'),
(302, '202301018', 'muM0L'),
(303, '202301019', 'hxuyu'),
(304, '202301020', 'jUImp'),
(305, '202301021', '03BG6'),
(306, '202301022', 'vYVmV'),
(307, '202301023', '77VkV'),
(308, '202301024', 'bB9J9'),
(309, '202301025', 'xaUco'),
(310, '202301026', '8yFeg'),
(311, '202301027', 'u6doG'),
(312, '202301028', 'Zn8rf'),
(313, '202301029', 'QbKRp'),
(314, '202301030', 'UIsEX'),
(315, '202301031', 'y6vbq'),
(316, '202301032', 'PQiaE'),
(317, '202301033', 'xDXe2'),
(318, '202301034', 'A9eWB'),
(319, '202301035', 'ZBhrf'),
(320, '202301036', '7D8ix'),
(321, '202301037', '8uyjE'),
(322, '202301038', 'qrLPE'),
(323, '202301039', 'DqCjs'),
(324, '202301040', 'geOnH'),
(325, '202301041', 'am8Lc'),
(326, '202301042', 'zKvAs'),
(327, '202301043', 'Wm1Js'),
(328, '202301044', 'ZubIU'),
(329, '202301045', 'tcHO6'),
(330, '202301046', 'AchW9'),
(331, '202301047', 'MDL3P'),
(332, '202301048', 'Rh4qF'),
(333, '202301049', 'gUb2A'),
(334, '202301050', 'pkB3F'),
(335, '202301051', 'r6r01'),
(336, '202301052', 'jhbR5'),
(337, '202301053', 'GzI8A'),
(338, '202301054', 'KyVMk'),
(339, '202301055', 'HSczL'),
(340, '202301056', 'xFumQ'),
(341, '202301057', 'gzOy4'),
(342, '202301058', 'IPKXc'),
(343, '202401047', 'QEMqV'),
(344, '202401046', 'VKD4G'),
(345, '202401048', 'j71I3'),
(346, '202401049', 'Ilz8N'),
(347, '202401050', 'XL5k6'),
(348, '202401002', 'WVCib'),
(349, '202401003', 'uY4Wu'),
(350, '202401004', 'W5o6Z'),
(351, '202401005', '01X8L'),
(352, '202401006', 'f1Zpd'),
(353, '202401008', 'J5jfj'),
(354, '202401009', '9olaq'),
(355, '202401010', 'AA7yW'),
(356, '202401011', 'vOole'),
(357, '202401012', 'GC2vo'),
(358, '202401013', 'tib71'),
(359, '202401014', '0YHf7'),
(360, '202401015', '12t7D'),
(361, '202401016', 'liugQ'),
(362, '202401017', 'VsXZs'),
(363, '202401018', 'uAYYD'),
(364, '202401019', 'X1jyy'),
(365, '202401020', '4FoG5'),
(366, '202401021', 'Zz9Ne'),
(367, '202401022', 'NJCwu'),
(368, '202401023', 'FXP6X'),
(369, '202401024', 'YnKXc'),
(370, '202401025', '8yyP6'),
(371, '202401026', 'sVe2Q'),
(372, '202401027', '3ByCF'),
(373, '202401028', 'DhxCu'),
(374, '202401030', 'FQiz9'),
(375, '202401031', 'mPmaL'),
(376, '202401032', '89QmP'),
(377, '202401033', 'hs1VJ'),
(378, '202401034', 'i62s7'),
(379, '202401035', 'HPXbv'),
(380, '202401036', 'iueNp'),
(381, '202401037', 'uPSIG'),
(382, '202401038', 'nihqe'),
(383, '202401040', 'd52Zn'),
(384, '202401041', 'f3uJV'),
(385, '202401042', 'u1Fku'),
(386, '202401043', '27yst'),
(387, '202401044', 'WKBu7'),
(388, '202401045', 'MOUPv'),
(389, '202401051', '0KWz7'),
(390, '202401052', 'gYore'),
(391, '202401053', 'aIZuR'),
(392, '202401054', 'UxJjg'),
(393, '202401055', 'ZLmhq');

-- --------------------------------------------------------

--
-- Table structure for table `info_pengumuman_pembayaran`
--

CREATE TABLE `info_pengumuman_pembayaran` (
  `id` int(11) NOT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `jenis_info_pembayaran` varchar(250) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `nominal` varchar(50) DEFAULT NULL,
  `status_pembayaran` int(11) DEFAULT 0,
  `tanggal_dibuat` datetime DEFAULT NULL,
  `tanggal_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kepala_sekolah`
--

CREATE TABLE `kepala_sekolah` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kepala_sekolah`
--

INSERT INTO `kepala_sekolah` (`id`, `nip`, `nama`, `username`, `password`) VALUES
(1, '2019032', 'NADRA HUSEIN AZIZ', 'nadra', '$2y$10$13O/Lr6LjewDRkMvwjH4..GxFwXcoVkxJGxBfM8Z75EJfaZdhM4KC');

-- --------------------------------------------------------

--
-- Table structure for table `m_klp`
--

CREATE TABLE `m_klp` (
  `id` int(11) NOT NULL,
  `nm_klp` varchar(50) NOT NULL,
  `c_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `m_klp`
--

INSERT INTO `m_klp` (`id`, `nm_klp`, `c_kelas`) VALUES
(1, '1', ''),
(2, '2', ''),
(3, '3 A', ''),
(4, '3 B', ''),
(5, '4 A', ''),
(6, '4 B', ''),
(7, '5 A', ''),
(8, '5 B', ''),
(9, 'KB', ''),
(10, 'TKA', ''),
(11, 'TKB', ''),
(12, '6 A', ''),
(13, '6 B', '');

-- --------------------------------------------------------

--
-- Table structure for table `penomoranmas`
--

CREATE TABLE `penomoranmas` (
  `kode` varchar(15) DEFAULT NULL,
  `nourut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `penomoranmas`
--

INSERT INTO `penomoranmas` (`kode`, `nourut`) VALUES
('SD', 282),
('PTK', 0);

-- --------------------------------------------------------

--
-- Table structure for table `penomoran_idgroupkelas`
--

CREATE TABLE `penomoran_idgroupkelas` (
  `kode` varchar(50) DEFAULT NULL,
  `nourut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penomoran_idgroupkelas`
--

INSERT INTO `penomoran_idgroupkelas` (`kode`, `nourut`) VALUES
('groupkelas', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reason`
--

CREATE TABLE `reason` (
  `id` int(11) NOT NULL,
  `is_reason` varchar(250) DEFAULT NULL,
  `daily_siswa_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruang_pesan`
--

CREATE TABLE `ruang_pesan` (
  `id` int(11) NOT NULL,
  `room_key` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `daily_id` varchar(50) DEFAULT NULL,
  `room_session` int(11) DEFAULT NULL,
  `created_date_room` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `c_siswa` varchar(10) NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nisn` varchar(15) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `c_kelas` varchar(10) DEFAULT NULL,
  `group_kelas` int(11) DEFAULT NULL,
  `tahun_join` varchar(50) DEFAULT NULL,
  `panggilan` varchar(20) DEFAULT NULL,
  `c_klp` varchar(20) DEFAULT NULL,
  `berat_badan` varchar(10) DEFAULT NULL,
  `tinggi_badan` varchar(10) DEFAULT NULL,
  `ukuran_baju` varchar(50) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `hp` varchar(30) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `pendidikan_ayah` varchar(100) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `ttl_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `pendidikan_ibu` varchar(100) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `ttl_ibu` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`c_siswa`, `nis`, `nisn`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jk`, `c_kelas`, `group_kelas`, `tahun_join`, `panggilan`, `c_klp`, `berat_badan`, `tinggi_badan`, `ukuran_baju`, `alamat`, `telp`, `hp`, `email`, `nama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `ttl_ayah`, `nama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `ttl_ibu`) VALUES
('SD0001', '201902001', '201902001', 'NABIILAH NURSALMA', 'BEKASI', '2015-01-06', 'P', '6SD', 25, '2019', 'NABILAH', '5B', '16', NULL, NULL, 'PERUMAHAN GREEN LEAF BLOK D 16', '0', '85711280007', NULL, 'FIRMAN JOFARI', 'S1', 'WIRASWASTA', 'JAKARTA/ 19 JULI 1981', 'MEISYA HELENDA', 'S1', 'IRT', NULL),
('SD0002', '201902002', '201902002', 'ANDISTRY CALISTA QURRATA AYUNI', 'JAKARTA', '2012-01-09', 'P', '6SD', 25, '2019', 'CALISTA', '5B', '20', NULL, NULL, 'JL. RAWA BEBEK NO. 205 RT/011/001 PULOGEBANG CAKUNG JAKARTA TIMUR', '0', '8568895850', NULL, 'ANDI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 14 JANUARI 1981', 'KHAIRIA MAHDALENA', 'S1', 'IRT', 'JAKARTA/ 12 DESEMBER 1981'),
('SD0003', '201902003', '201902003', 'AUDIE MUMTAZA WIJAYAKUSUMAH', 'BEKASI', '2015-05-04', 'P', '6SD', 25, '2019', 'AUDIE', '5B', '18', NULL, NULL, 'TAMAN CIKAS C 16 NO. 22 PEKAYON JAYA BEKASI SELATAN', '0', '81283274743', NULL, 'ALIF WIJAYAKUSUMAH', 'S2', 'KARYAWAN SWASTA', 'CIANJUR/ 10 MEI 1973', 'RUFAIDAH DEWI T', 'S2', 'PENGAJAR', 'BANDUNG/ 19 SEPTEMBER 1973'),
('SD0005', '201902005', '201902005', 'WULAN KHANSA HUMAIRA', 'BEKASI', '2013-01-10', 'P', '6SD', 25, '2019', 'WULAN', '5B', '27', NULL, NULL, 'JL. WIJAYA BLOK. B NO 13 JAKA SAMPURNA', '0', '81296633300', NULL, 'RYNO YOGA PRATAMA', 'S1', 'WIRAUSAHA', 'JAKARTA/ 15 DESEMBER 1978', 'CYNTHIA DEWI SAVITRI', 'S1', 'IRT', NULL),
('SD0006', '201902006', '201902006', 'NISWA FADILLAH', 'SOLOK', '2014-11-04', 'P', '6SD', 25, '2019', 'NISWA', '5B', '18', NULL, NULL, 'THE GREEN VIEW BLOK D 67', '0', '82111194998', NULL, 'DENY NATURIAN', 'S1', 'WIRASWASTA', 'RUMBAI/ 30 MARET 1984', 'ANA OKTORA', 'S2', 'IRT', 'SOLOK/ 07 OKTOBER 1982'),
('SD0007', '201902007', '201902007', 'KAIZAN AUF AL ARSY', 'CIANJUR', '2013-08-07', 'L', '6SD', 24, '2019', 'KAIZAN', '5A', '15', NULL, NULL, 'VILLA PEKAYON BLOK. A1 NO. 6', '0', '817220195', NULL, 'AGUS TAUFIQ EFENDI', 'S1', 'WIRASWASTA', 'SEMARANG/ 27 SEPTEMBER 1977', 'NOVI EKA DAMAYANTI', 'S1', 'IRT', 'CIANJUR/ 05 NOVEMBER 1982'),
('SD0008', '201902008', '201902008', 'ANISA AWILIA ZAHRA', 'BANDUNG', '2013-12-08', 'P', '6SD', 25, '2019', 'ICHA', '5B', '17', NULL, NULL, 'KOMP. PULO PERMATA SARI BLOK. B5 NO.3 PEKAYON JAYA BEKASI', '0', '81285896381', NULL, 'WILDAN FUJIANSAH', 'S2', 'PNS', 'BANDUNG/ 20 MARET 1986', 'RETI ROHMALIA SARI', 'S1', 'KARYAWAN SWASTA', 'PANDEGLANG/ 17 MARET 1987'),
('SD0009', '201902009', '201902009', 'MEDISHA NAURA SALSABILA', 'BEKASI', '2013-07-07', 'P', '6SD', 25, '2019', 'NAURA', '5B', '20/5', NULL, NULL, 'JL. NURUL HUDA iv NO. 1 RT.02/015 JAKA SAMPURNA BEKASI', NULL, '8161316045', NULL, 'MUHAMAD TOHIRUDIN', 'S1', 'WIRASWASTA', 'JAKARTA/ 13 MARET 1985', 'AMELLA RISMARINA', 'S1', 'IRT', 'KOTABARU/ 14 JULI 1986'),
('SD0010', '201902010', '201902010', 'EILIYAH SHAFA AISHA', 'BEKASI', '2013-04-10', 'P', '6SD', 25, '2019', 'SHAFA', '5B', '26', NULL, NULL, 'JL. MEDAN RAYA BLOK. F NO. 207 JAKA MULYA BEKASI', NULL, '87883613284', NULL, 'ADI GINANJAR', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 10 OKTOBER 1981', 'KRISTIN', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 09 JUNI 1982'),
('SD0011', '201902011', '201902011', 'MUHAMMAD SHAQUEEL PRAKARSA', 'BEKASI', '2013-04-02', 'L', '6SD', 24, '2019', 'SHAQI', '5A', '23', NULL, NULL, 'JL. PONDOK JINGGA MAS V BLOK E 3/19 PONDOK TIMUR MAS BEKASI SELATAN ', NULL, '8561209238', NULL, 'DEDY BAGUS PRAKARSA', 'S2', 'PNS', 'BEKASI/ 23 APRIL 1984', 'ARI ASTRI YUNITA', 'S2', 'PNS', 'JAKARTA/ 04 JUNI 1983'),
('SD0012', '201902012', '201902012', 'NASHRULLAH FAIZ AMMAR', 'BEKASI', '2013-02-11', 'L', '6SD', 24, '2019', 'FAIZ', '5A', '0', NULL, NULL, 'THE GREEN VIEW BLOK C NO. 33A JAKA SETIA BEKASI', '0', '82278291322', NULL, 'WING HARTOPO', 'S2', 'PNS', 'KUDUS/ 14 JUNI 1982', 'RISKA RESTU SADAYA', 'S1', 'GURU', 'JAKARTA/ 06 AGUSTUS 1979'),
('SD0014', '201902014', '201902014', 'NALDO IBRAHIM MUSTAFA', 'BEKASI', '2014-07-04', 'L', '6SD', 24, '2019', 'NALDO', '5A', '21', NULL, NULL, 'PONDOK TIMUR MAS BLOK G 4/11 BEKASI', NULL, '8161621533', NULL, 'ADITYA PRADANA MUSTAFA', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 22 MEI 1985', 'DIYAH TANJUNG SARI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 19 SEPTEMBER 1983'),
('SD0016', '201902016', '201902016', 'AL GHAZI NAUFAL WIJAYA', 'BANDUNG', '2013-08-08', 'L', '6SD', 24, '2019', 'AL GHAZI', '5A', '21', NULL, NULL, 'JL. KETAPANG XI/ PPI BLOK. DD 29 NO. 15 BEKASI', '0', '82298490414', NULL, 'ALMAJI AKUNG WIJAYA', 'S1', 'PNS', 'TEMANGGUNG/ 13 AGUSTUS 1986', 'SYINDI NOPIANI', 'S1', '-', 'JAKARTA/ 04 NOVEMBER 1994'),
('SD0017', '201902017', '201902017', 'ANANDA RAYKA MUFID', 'PURWOKERTO ', '2014-09-03', 'L', '6SD', 24, '2019', 'RAYKA', '5A', '20', NULL, NULL, 'CLUSTER ASFA NO. 14/ JL. H. GOTI JAKA MULYA BEKASI', NULL, '85726440400', NULL, 'KARDI', 'S1', 'KARYAWAN SWASTA', 'JAKARTA/ 03 APRIL 1984', 'VIDYA EKANINGTYAS', 'S1', 'DOKTER', 'PURWOKERTO/ 08 OKTOBER 1986'),
('SD0018', '201902018', '201902018', 'HUSAIN MUHAMMAD ALATAS', 'BEKASI', '2014-03-01', 'L', '6SD', 24, '2019', 'HUSAIN', '5A', '19', NULL, NULL, 'JL. PAKIS 3D BB44 NO.6 RT.04/12 PONDOK  PEKAYON INDAH BEKASI', NULL, '81286276710', NULL, 'MUHAMMAD ALATAS', 'S1', 'KARYAWAN SWASTA', 'BEKASI/ 11 MARET 1984', 'NOORMA SHOLIHAT', 'D IV', 'IRT', 'BEKASI/ 22 NOVEMBER 1985'),
('SD0020', '201902020', '201902020', 'MUHAMMAD FAQIH AL GHIFARI', 'JAKARTA', '2014-08-08', 'L', '6SD', 24, '2019', 'FAQIH', '5A', '16', NULL, NULL, 'JL. CANDRABAGA BLOK. AQ 6 NO. 2 BEKASI', '0', '89661796021', NULL, 'RACHMAD SENTOSA', 'D III', 'WIRASWASTA', 'JAKARTA/ 30 JANUARI 1987', 'NURAINI', 'SMK', 'IRT', 'JAKARTA/ 19 AGUSTUS 1988'),
('SD0021', '201902021', '201902021', 'ARGI MUHAMMAD AZKA DHIYA', 'BEKASI', '2013-01-03', 'L', '6SD', 24, '2019', 'ARGI', '5A', '38', NULL, NULL, 'GOLDEN CITY CLUSTER GREENWOOD BLOK D 2 TELUK PUCUNG BEKASI UTARA', '0', '81310982527', NULL, 'MUHAMMAD BARKAH ADHISATIA', 'D III', 'KARYAWAN SWASTA', 'JAKARTA/ 27 MEI 1983', 'SUWINTRY RACHMAN', 'SMA', 'IRT', 'JAKARTA/ 28 MARET 1977'),
('SD0022', '201902022', '201902022', 'ERINA ZAHIRA', 'BEKASI', '2015-04-02', 'P', '6SD', 25, '2019', 'ERINA', '5B', '18', NULL, NULL, 'JL. PIRUS BLOK. D NO. 427 BEKASI', NULL, '82141522403', NULL, 'HEFFY HERYANTO', 'S1', 'GOJEK', 'JAKARTA/ 29 JANUARI 1973', 'DIAN DANAWATI', 'S1', 'IRT', 'JAKARTA/ 22 SEPTEMBER 1974'),
('SD0023', '201902023', '201902023', 'TAMARANI SAJIDAH FIRSTIANNISA', 'SIDOARJO', '2015-05-03', 'P', '6SD', 25, '2019', 'TAMARA', '5B', '16', NULL, NULL, 'VILLA JAKA SETIA BLOK C NO. 9A BEKASI', '0', '85710250067', NULL, 'YUSUF PRATAMA WIJANARKO', 'S1', 'KARYAWAN SWASTA', 'SURABAYA/ 05 MARET 1992', 'NUR LISTIYA MANGGARANI PUTRI', 'S1', 'IRT', 'SURABAYA/ 25 JUNI 1992'),
('SD0024', '201902024', '201902024', 'THORIQUL ABRAR KARIM', 'JAKARTA', '2015-06-05', 'L', '6SD', 24, '2019', 'THORIQ', '5A', '20', NULL, NULL, 'PERUM PURI ASIH SEJAHTERA JL. MALUKU BLOK B NO. 79 ', '0', '81319790353', NULL, 'ANDRI ISMAYANDRI', 'S2', 'WIRAUSAHA', 'JAKARTA/ 30 DESEMBER 1974', 'NURINI', 'S1', 'IRT', 'SEMARANG/ 20 NOVEMBER 1977'),
('SD0025', '201902025', '201902025', 'ALYAA RAMADHANI PUTRI', 'BEKASI', '2012-02-08', 'P', '6SD', 25, '2019', 'ALYAA', '5B', '15', NULL, NULL, 'JL. GRIYA CENDANA 3 BLOK. A NO. 21 PEKAYON JAYA', NULL, '81218994238', NULL, 'NANA PRIATNA', 'SMA', 'WIRASWASTA', 'CIAMIS/ 03 DESEMBER 1982', 'ANGGRAENI AYU LESTARI', 'S1', 'IRT', 'BEKASI/ 23 AGUSTUS 1987'),
('SD0026', '201902026', '201902026', 'MUHAMMAD RAFA PRATAMA', 'BEKASI', '2014-03-09', 'L', '6SD', 24, '2019', 'RAFA', '5A', NULL, NULL, NULL, 'JL. LETNAN ARSYAD NO. 30 KAYURINGIN', NULL, '81808891911', NULL, 'FAJRI ASDINAL', 'S1', 'WIRASWASTA', 'JAKARTA/ 1 DESEMBER 1981', 'KOMALASARI', 'S1', 'WIRASWASTA', 'BEKASI/ 5 MARET 1986'),
('SD0027', '201902027', '3131177141', 'MUHAMMAD HAMILUL QURANI', 'REMBANG', '2013-02-18', 'L', '6SD', 24, '2019', 'AMIL', '5A', NULL, NULL, 'S', 'PTM BLOK f1 No. 6 JAKASETIA', '081225509168', NULL, NULL, 'ADI HIDAYAT', 'S2', 'PENGAJAR', 'PANDEGLANG/ 11 SEPTEMBER 1984', 'SHUFAIROK', 'S1', 'IRT', 'REMBANG/ 13 JANUARI 1985'),
('SD0028', '201902028', '201902028', 'MUHAMMAD TSAQIB FATHULISLAM', 'BEKASI', '2014-01-02', 'L', '6SD', 24, '2019', 'TSAQIB', '5A', NULL, NULL, NULL, 'Pondok Pekayon Indah Jl. Akasia Raya Blok D2/2 Bekasi Selatan', NULL, '81389510582', ' indah.yulianty84@gmail.com', 'JAJANG SAEPUL MALIK', 'Sarjana Perikanan', 'Konsultan (Freelance)', 'Tasik Malaya/ 24 Maret 1983', ' Indah Yulianty Amelia', 'Sarjana Pertanian', 'GURU', 'Jakarta/ 19 Juli 1984'),
('SD0029', '201902029', '201902029', 'SAGARA BANYU BIRU', 'BEKASI', '2013-06-10', 'L', '6SD', 24, '2019', 'SAGARA', '5A', NULL, NULL, NULL, 'jl. Pulo Sirih Utara Dalam IV Blok DD No 195 rt/rw 005/014 Pekayon Jaya/Bekasi selatan', NULL, '87873821181', NULL, 'WAHYU CONDRO JD', 'D3', 'karyawan swasta', 'Jakarta/ 11 September 1986', 'DITA ADYTIA DAMAYANTI', 'S1', 'Karyawan swasta \nKaryawan swasta', 'Bogor/ 19 Agustus 1986'),
('SD0032', '201902032', '201902032', 'KHEYSA AZZAHRA', 'BARRU', '2014-04-01', 'P', '6SD', 25, '2019', 'KHEYSA', '5B', NULL, NULL, NULL, 'Perumahan Green Leaf Blok F5/ Jatibening/ Bekasi', NULL, '81372611277', ' iswanladoi@gmail.com\n iswanladoi@gmail.com\n iswanladoi@gmail.com', 'ISWAN\nISWAN', 'S1', 'Wiraswasta', 'Ammerung/ 25 Mei 1979', 'Rahmawati', 'S1', 'PNS', ' Litae/ 04 Mei 1983'),
('SD0039', '202002039', '202002039', 'MINDA ISVARA RUSDI', 'Bandung', '2013-10-10', 'P', '5SD', 23, '2020', 'MINDA', '4B', '18.6', '117', 'P', 'Pondok Timur Mas Blok B 1 no. 7 Jaka Setia Bekasi', '087878600250', '87878600240', NULL, 'Prana Adhitya', 'S2', 'Swasta', 'Jakarta/ 19 September 1978', 'Mariati Abdulkadir', 'S2', 'IRT', 'Bandung/ 14 Juni 1978'),
('SD0041', '202002041', '202002041', 'SYATHIR IBRAHIM KAMIL', 'Bekasi', '2014-11-01', 'L', '5SD', 22, '2020', 'IBRAHIM', '4A', '25', NULL, 'L', 'Komp. Pemda Jl. Kresna no.41 RT.01/01 Jati Asih Bekasi', '081317802059', '81298567822', NULL, 'Yandi Arnaz', 'S1', 'BUMN', 'Depok/ 19 April 1988', 'Rita Hartati Lubis', 'S1', 'IRT', 'Jakarta/ 29 Maret 1989'),
('SD0042', '202002042', '202002042', 'MUHAMMAD JANOKO ASMAYODHA CAHYONO', 'Bekasi', '2015-03-12', 'L', '5SD', 22, '2020', 'JANOKO', '4A', NULL, NULL, NULL, 'Pondok Timur Mas Blok R1 no 10 A Bekasi', '08119441520', '83824865284', NULL, 'Farur Anton Cahyono', 'S2', 'Wiraswasta', 'Malang/ 1 Februari 1982', 'Novi Astuti', 'SMA', 'IRT', 'Jakarta/ 4 Februari 1978'),
('SD0043', '202002043', '202002043', 'MUHAMMAD AZZAM ALI GHAITSAN', 'Jakarta', '2013-03-05', 'L', '5SD', 22, '2020', 'GHAITSAN', '4A', '20', '120', 'XL', 'Victoria Garden Boulevard no. 30 Jaka Setia Bekasi', '081277128888', '81256275555', NULL, 'Dadang Somantri', 'SMA', 'TNI AL', 'Subang 10 Mei 1971', 'Niswatul Ulya ST/MM', 'S2', 'Wiraswasta', 'Pontianak 5 Desember 1980'),
('SD0044', '202002044', '202002044', 'SAHLA HAFIZHA DIPUTRI', 'Bekasi', '2014-10-08', 'P', '5SD', 23, '2020', 'SAHLA', '4B', '10', '114', 'L', 'Villa Jakasetia Blok H no 16 Bekasi', '085624106866', '8569902556', NULL, 'Dendi Riyadi Utomo', 'S1', 'BUMN', 'Jakarta 25 Juni 1985', 'Yulaintini', 'S1', 'Swasta', 'Tangerang 15 September 1985'),
('SD0046', '202002046', '202002046', 'SHAQUILA AINUNNAIRA', 'Bekasi', '2014-04-07', 'P', '5SD', 23, '2020', 'NAIRA', '4B', '19', NULL, 'L', 'Pondok Mitra Lestari Blok c2 no % Bekasi', '08159296409', '8562121304', NULL, 'Andi Firdaus', 'S1', 'BUMN', 'Bekasi 31 Maret 1985', 'Riesty Yusnilaningsih', 'S1', 'Swasta', 'Bandung 16 April 1985'),
('SD0047', '202002047', '202002047', 'MUHAMMAD ALFATHAN', 'Bekasi', '2013-08-06', 'L', '5SD', 22, '2020', 'FATHAN', '4A', '23', NULL, 'XL', '[NULL]', NULL, '82227165754', NULL, NULL, NULL, NULL, NULL, 'Nanda Hervika Dwi', 'SMK', 'IRT', 'Jakarta 7 Januari 1988'),
('SD0051', '202002051', '202002051', 'BALQIS ADZRA SHABIRA', 'Serang', '2014-06-02', 'P', '5SD', 23, '2020', 'BALQIS', '4B', NULL, NULL, 'L', 'Villa Jaka Setia Blok H no 7 Bekasi', '081287978451', '81289565771', NULL, 'Ica Putra', 'D3', 'Swasta', 'Pangkalpinang 25 Januari 1986', 'Ita Haryati', 'D3', 'Swasta', 'Serang 21 Mei 1986'),
('SD0053', '202002053', '202002053', 'AINUN MAHYA RAMADHANI', 'Bekasi', '2014-08-07', 'P', '5SD', 23, '2020', 'AINUN', '4B', NULL, NULL, 'XXL', 'Jl Cikas Timur no 1 Blok B 7/5 Taman Cikas Bekasi Selatan', '08129556680', '8111988844', NULL, 'M Sariful Muchlis', 'S1', 'Swasta', 'Jakarta 11 Juni 1977', 'Atin Rianti', 's1', 'IRT', 'Cianjur 13 April 1981'),
('SD0054', '202002054', '202002054', 'KHAIRUNISA RIANTI ANGKASA', 'Bekasi', '2016-02-01', 'P', '5SD', 23, '2020', 'NISA', '4B', '20', '105', 'XL', 'Pondok Pekayon Indah Blok B3 no 7 Bekasi', '081806062013', '818964848', NULL, 'Surianto', 'S1', 'Swasta', 'Belawan 13 Mei 1980', 'Ratih Farlianty', 'S1', 'IRT', 'Jakarta 1 Juli 1978'),
('SD0055', '202002055', '202002055', 'MUHAMMAD RICHIE RIZALDY', 'Bekasi', '2015-01-11', 'L', '5SD', 22, '2020', 'RICHIE', '4A', NULL, NULL, NULL, 'Peumahan Prima Lingkar Asri Blok B 1 no 24 Jatibening ', '08356269363', '85218037132', NULL, 'Danny Yudha Prawira', 'S1', 'Wiraswasta', 'Bogor 13 April 1981', 'Ajeng Nurmala', 'S1', 'Wiraswasta', 'Karawang 2 Agustus 1981'),
('SD0057', '202002057', '202002057', 'SHAFA NUR SABRINA', 'Bekasi', '2014-01-05', 'P', '5SD', 23, '2020', 'SHAFA', '4B', '18', '120', 'M', 'Pondok Cikunir Indah Jl. Rajawali VI no 22 Bekasi', '087882166610', '87880885110', NULL, 'Bayu Firmansyah', 'S1', 'Wiraswasta', 'Purbalingga 8 September 1987', 'Maya Oktaviantari', 'S1', 'IRT', 'Jakarta 2 Oktober 1987'),
('SD0058', '202002058', '202002058', 'HAFIZ R USAMA DORISMAN', 'Jakarta', '2014-11-04', 'L', '5SD', 22, '2020', 'USAMA', '4A', NULL, NULL, NULL, 'Pekayon 2 Jl. Kemang 3 Blok B no 36 Bekasi', '081318003889', '81293973439', NULL, 'Dorisman', 'S1', 'Wiraswasta', 'Padang 5 Maret 1982', 'Desi Mai Fitri', NULL, 'IRT', 'Pariaman 14 Mei 1989'),
('SD0059', '202002059', '202002059', 'KHANSA AQEELA AZZALFA TAMBUNAN', 'Bekasi', '2015-02-07', 'P', '5SD', 23, '2020', 'KHANSA', '4B', NULL, NULL, 'M', 'Jl. Kemang Raya Blok C/6 Pekayon Jaya II Bekasi', '085216597235', '81297376240', NULL, 'Dhika Fajar Pratama', 'S1', 'Wiraswasta', 'Jakarta 7 November 1984', 'Rosa Indah Sari', 'S1', 'IRT', 'Jakarta 5 November 1984'),
('SD0060', '202002060', '202002060', 'IVANI MALAIKA NOUREEN', 'Bekasi', '2013-08-08', 'P', '5SD', 23, '2020', 'IVANI', '4B', '17', '113', 'L', 'Perum Margahayu Blok. A no. 382 Bekasi Timur', '081288680182', '82213444211', NULL, 'Tatang Arifin', 'S1', 'Swasta', 'Ciamis 6 April 1982', 'Indah Eka Septiana', 'SMA', 'IRT', 'Jakarta 19 September 1989'),
('SD0061', '202002061', '202002061', 'MUHAMMAD EMIRSYAH RAFEEF ASSAD', 'Bekasi', '2014-12-06', 'L', '5SD', 22, '2020', 'EMIR', '4A', '20', '115', 'L', 'Jl. Cendana Raya no 16 Jaka Permia Bekasi', '08118818787', '81310070612', NULL, 'Muhammad Assad', 'S2', 'Pengusaha', 'Jakarta/ 16 Januari 1987', 'Afra Nurina Amarilla', 'S2', 'IRT', 'Tarakan 6 Januari 1988'),
('SD0062', '202002062', '202002062', 'ABDURRAHMAN GHANIYY ALHAFIDZ', 'Padang ', '2014-05-04', 'L', '5SD', 22, '2020', 'HAFIDZ', '4A', '22', '117', NULL, 'Jl. Taman Agave V Blok M6/27 Taman Galaxi Bekasi', '08159653394', '81514577689', NULL, 'Tedi Jombang Nugraha', 'S1 ', 'Swasta', 'Padang 30 Maret 1979', 'Pipit Anasthasia', 'S1', 'IRT', 'P Berandan 2 November 1978'),
('SD0065', '202002065', '202002065', 'AQILA SYAZA FALIA', 'Jakarta', '2014-07-03', 'P', '5SD', 23, '2020', 'AQILA', '4B', '20', NULL, 'XL', 'Green Leaf Residence Blok F 10 Bekasi', '081908201067', '8111925858', NULL, 'Jerri Fabian Irman', 'S1', 'Swasta', 'Padang 27 Januari 1989', 'Cut Natahalia Rahmi', 'S1', 'IRT', 'Padang 13 Juni 1989'),
('SD0066', '202002066', '202002066', 'ABRISAM SYAHDAN GUSTIAN', 'Bekasi', '2013-01-10', 'L', '5SD', 22, '2020', 'ICAM', '4A', NULL, NULL, NULL, 'Cluster Lotus Garden LG 1 -  12 Bekasi', '0811970117', '8111006050', NULL, 'Wawan Ganjar Kustiawan', 'S1', 'Swasta', 'Ciamis 27 Juni 1968', 'Winarni Julianti', 'S1', 'IRT', 'Jakarta 20 Juli 1985'),
('SD0067', '202002067', '202002067', 'FATIH BINTANG RAYESPATI', 'Bekasi', '2014-11-08', 'L', '5SD', 22, '2020', 'FATIH', '4A', '39', '121', 'XXL', 'Pondok Pekayon Indah Blok DD 39 Jl. KetapangIV no 12 A Bekasi', '081809117779', '81287788719', NULL, 'Angki Fajar Anggaprawira', 'D3', 'Swasta', 'Tasikmalaya 14 Oktober 1980', 'Swasti Kartikaningrum', 'S1', 'IRT', 'Bekasi 7 September 1984'),
('SD0070', '202002070', '202002070', 'FARHANA MAULIDINA CHOMO', 'Manado', '0001-01-01', 'P', '5SD', 23, '2020', 'HANA', '4B', '20', '117', 'L', 'Jl. Samratulangi no 18 Bitung Sulawesi Utara', '08124451123', '8134003740', NULL, 'HJ Johny Tjomo', 'D3', 'Wiraswasta', 'Kotamubagu 27 Juni 1958', 'GT. Sjamsiah Marsabessy', 'SLTA', 'IRT', 'Minahasa 29 Agustus 1969'),
('SD0072', '202002072', '202002072', 'HANIM FARRAS DAMITSA', 'Banyumas', '2014-05-06', 'P', '5SD', 23, '2020', 'HANIM', '4B', '20', NULL, 'L', 'Jl. Pandu DewanantaBlok 4 no 30 BSK Kayuringin Bekasi', '0812345606062', '81391554222', NULL, 'Harry Firmanzah', 'S1', 'Swasta', 'Bekasi 6 Februari 1986', 'Bekti Indah Pamuji', 'S1', 'IRT', 'Cilacap 13 September 1986'),
('SD0073', '202002073', '202002073', 'MUHAMMAD SHABAZ AURIGA', 'Bekasi', '2019-03-04', 'L', '5SD', 22, '2020', 'AURIGA', '4A', '20', '113', 'M', 'Jl. Letnan Arsyad RT.03/24 no 4 Kayuringin Jaya Bekasi', '081242266681', '895346462706', NULL, 'Taufik Hidayat', 'S1', 'Driver ojol', 'Bekasi 10 Desember 1981', 'Kiki Rizkiah', 'SMA', 'IRT', 'Jakarta 12 Desember 1988'),
('SD0074', '202002074', '202002074', 'RAFANDRA SHIDQIE KENEDY', 'Jakarta', '2016-01-05', 'L', '5SD', 22, '2020', 'RAFA', '4A', '16', NULL, 'L', 'Villa Jaka setia Blok E no. 11 Bekasi', '08129317894', '81806351751', NULL, 'M Risky Kenedy', 'S1', 'PNS', 'Bwi 12 Mei 1979', 'Sella Novi Berliana', 'S1', 'IRT', 'Jakarta 30 November 1982'),
('SD0077', '202002077', '202002077', 'ZAINA ALIMA SABREEN', 'Bekasi', '2014-09-02', 'P', '5SD', 23, '2020', 'ZAINA', '4B', '27', '120', 'l', 'Jl. Platinum 4 Blok J 5/5 Metland Tambun Bekasi', '081284898848', '81336737656', NULL, 'Erlangga', 'S1', 'Wiraswasta', 'Jakarta 14 April 1985', 'Intan Solihah', 'D3', 'IRT', 'Serang 12 Februari 1985'),
('SD0079', '202002079', '202002079', 'SHASHA YUMNA QIRANI', 'Bekasi ', '2013-09-02', 'P ', '5SD', 23, '2020', 'SHASHA', '4B', '15', NULL, 'L', 'JL. MAKAM RT 3 RW 2 NO. 3 KRANJI', NULL, '8811180880', '-', 'JAKA ISMAULANA', 'SMA', 'WIRASWASTA', '12-Jun-86', 'DEVI GERHANA YANTI', 'SMA', 'IRT', '18-Mar-88'),
('SD0080', '202002080', '202002080', 'MUHAMMAD IHSAN ARIA TURSADI', 'Jakarta', '2015-07-06', 'L', '5SD', 22, '2020', 'IHSAN', '4A', '18', '115', 'L', 'Green Jatiasiih Blok A3 Jl. Kampung Bulak Bekasi', '0859225177', '8129982809', NULL, 'Danie Febriansyah Tursadi', 'S1', 'Swasta', 'Bekasi 28 Februari 1974', 'Maya Safira', 'D1', 'IRT', 'Bandung 26 September 1977'),
('SD0082', '202002082', '202002082', 'MUHAMMAD BANIIN SYABITS', 'Jakarta', '0001-01-01', 'L', '5SD', 22, '2020', 'SYABITS', '4A', NULL, NULL, NULL, '[NULL]', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SD0083', '202102083', '202102083', 'ABRAHAM PEPITO', 'Jakarta', '2015-03-05', 'L', '4SD', 20, '2021', 'PEPITO', '3A', '12 Kg', NULL, 'S', 'Pondok Timur Mas F 5 No. 5 Jalan Pondok Jingga Mas IV', '8129824477', '218202934', NULL, 'Muhamad Asiqin Akbar', 'S1', 'Wiraswasta', 'Jakarta/ 8 Maret 1983', 'Noviyanti Nurkomariah ', 'S1', 'Karyawan Swasta', 'Palembang/ 27 November 1981'),
('SD0084', '202102084', '202102084', 'ADELARD ZEROUN ARKAAN APSANRA', 'Bekasi', '2016-02-01', 'L', '4SD', 20, '2021', 'ARKAAN', '3A', NULL, NULL, NULL, 'Komplek Depnaker Taman Wisma Asri Jalan Garuda I Blok L21 No. 5 Teluk Pucung Bekasi Utara 17121', NULL, NULL, NULL, 'Ikhsan Pramana', NULL, 'Karyawan Swasta', NULL, 'Rahmi Hayati', NULL, 'Ibu Rumah Tangga', NULL),
('SD0086', '202102086', '202102086', 'ALBY NAFIAN RABBANI', NULL, '0001-01-01', 'L', '4SD', 20, '2021', 'ALBY', '3A', NULL, NULL, NULL, '[NULL]', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SD0087', '202102087', '202102087', 'ALISHA ISLAMADINA RAHMADHI', 'Bekasi', '2014-08-08', 'P', '4SD', 21, '2021', 'ALISHA', '3B', '14/5 Kg', '-', 'M', 'Jl. Melati 1 Blok B No.27 Perum Margahayu Jaya', '-', '85710112025', NULL, 'Dhimas Agung PRASETYA', 's1', 'Karyawan Swasta', 'Bekasi/ 10 Januari 1989', 'Ellen Rahmawati', 'S1 ', 'Ibu Rumah Tangga', 'Jakarta/ 17 Juni 1989'),
('SD0088', '202102088', '202102088', 'ALVARO VIDI', 'Tasikmalaya', '2015-02-01', 'L', '4SD', 20, '2021', 'ALVARO', '3A', '14', '90', 'S', 'Cluster Asfa no. 14/ Jakamulya/ Bekasi Selatan', '81351937477', '82214502493', NULL, 'Kardi', 'S1', 'Swasta', 'Jakarta/ 3 April 1984', 'Vidya Ekaningtyas', 'S1', 'Dokter', 'Purwokerto/ 8 Oktober 1986'),
('SD0089', '202102089', '202102089', 'AMELIA HABIBATUL MUSTHAFA', 'Bekasi', '2015-09-02', 'P', '4SD', 21, '2021', 'AMEL', '3B', NULL, NULL, NULL, 'Pondok Timur Mas Blok f1 No. 6 Jakasetia', '81225509168', NULL, NULL, 'Adi Hidayat', 'S2', 'Pengajar', 'Pandeglang/ 11 September 1984', 'Shufairok ', 'S1', 'Ibu Rumah Tangga', 'Rembang/ 13 Januari 1985'),
('SD0090', '202102090', '202102090', 'ANNISA SALWA NABILA LUBIS', 'Bekasi ', '2014-06-09', 'P', '4SD', 21, '2021', 'SALWA', '3B', '20 Kg', '110 cm', 'L', 'Jl. Kenari I Blok A1 No 1 Pondok Pekayon Indah', '021-820 4713', '81807123686', NULL, 'Muhammad Fikri Ramdhani ', 'S1', 'Karyawan Swasta', 'Jakarta/ 13 Mei 1987', 'Livi Ayu Oktavia', 'S1', 'karyawan Swasta', 'Jakarta/ 30 Oktober 1987'),
('SD0091', '202102091', '202102091', 'AQILA SYUA ARYANTY ', 'BANDAR LAMPUNG ', '2017-01-04', 'P ', '4SD', 21, '2021', 'AQILA ', '3B', '14', '95', 'L', 'PULO PERMATASARI BLOK A1 NO.19 ', '021-8202785', '815884849', NULL, 'ANDRI BUDHIANTO ', 'S1', 'PEGAWAI BUMN ', '08/25/1791', 'YURIA KARYANTI ', 'D3', 'Ibu Rumah Tangga', '29-Jul-75'),
('SD0092', '202102092', '202102092', 'AR SAKHA DZIKRY TAHER', 'Bekasi ', '2015-11-06', 'L', '4SD', 20, '2021', 'SAKHA', '3A', '13', '87', 'L', 'PONDOK KUNING MAS I BLOK P NO. 3', NULL, '82122669198', '-', 'ISBUDI', 'D3', 'Karyawan Swasta ', '18-Oct-88', 'ADE KUSUMA WARDANI', 'S1 ', 'Ibu Rumah Tangga', '25-Aug-88'),
('SD0093', '202102093', '202102093', 'ATHALLAH MUSYAFFA ZAIN', 'Tangerang', '2016-06-06', 'L', '4SD', 20, '2021', 'AMUZA', '3A', '19', '110', 'L', 'Jl. Swantantra II RT.07/05', '081296447097', '8129460700', NULL, 'Zainudin Triyatno', 'D3', 'Seniman', 'Jakarta 17 Oktober 1977', 'Sumaryati', 'S1 ', 'IRT', 'Jakarta 22 Maret 1984'),
('SD0094', '202102094', '202102094', 'GHAZIYAH MUMTAZAH ZAHRI', 'Medan', '2014-10-09', 'P', '4SD', 21, '2021', 'GHAZIYA', '3B', '11 Kg', '-', 'L', 'Jl. Bronco 1 No D4/5 Kebantenan Indah Jatiasih', '-', '82214666011', NULL, 'Berlianto Haris', 'S2 ', 'Karyawan Maybank Syariah', 'Padang/ 26 Mei 1985', 'Sukma Faizah', 'S1', 'Ibu Rumah Tangga', 'Medan/ 4 Desember 1989'),
('SD0095', '202102095', '202102095', 'HANIFA ANINDYA PRAMESTI', 'BEKASI ', '2016-12-03', 'P ', '4SD', 21, '2021', 'ANIN ', '3B', '11', '96', 'S', 'PERUM PULO PERMATASARI A4/17 ', '0218203302', '8121156778', NULL, 'DIMAS RADITYA ', 'S1', 'Karyawan Swasta ', '25-Jan-81', 'RIYANE RACHMAWATI ', 'S1 ', 'Karyawan swasta ', '9-May-80'),
('SD0096', '202102096', '202102096', 'JASMEENA IRFANNISA', 'Bekasi', '2015-08-10', 'P', '4SD', 21, '2021', 'MEENA', '3B', '20 Kg', '107 cm', 'L', 'Cluster Rosella A7 Jl. Jatiluhur Raya No.117 Jakasampurna', '81511940000', '81511940000', NULL, 'Deni Irpan Helmi', 'S1', 'Wirausaha ', 'Tasikmalaya/ 15 Juni 1983', 'Prilia Lestari', 'S1', 'Karyawan Swasta', 'Cluster Rosella A7 Jl. Jatiluhur Raya No.117'),
('SD0097', '202102097', '202102097', 'KASTARA RIAN ANGKASA', 'Bekasi', '2016-01-05', 'L', '4SD', 20, '2021', 'TARA', '3A', '18', '100', 'L', 'Pondok Pekayon Indah/ Blok B3 No. 7', '81806062013', '818964848', NULL, 'Surianto', 'S1', 'Swasta', 'Belawan/ 13 Mei 1980', 'Ratih Ferlianty', 'S1', 'Ibu Rumah Tangga', 'Jakarta/ 1 Juli 1978'),
('SD0098', '202102098', '202102098', 'KAYLA FATHIYYA ANDHARA SAPPHIRE', 'Jakarta', '2016-02-10', 'P', '4SD', 21, '2021', 'KAYLA', '3B', NULL, NULL, NULL, 'Jl. Rawabebek No. 205 RT. 11/01 Pulogebang Jak-Tim', NULL, '82110069990', NULL, 'Andi', 'S1', 'Karyawan', 'Jakarta/14 Januari 1981', 'Khairia Mahdalena', 'S1', 'Ibu Rumah Tangga', 'Jakarta/ 12 Desember 1981'),
('SD0102', '202102102', '202102102', 'MUHAMMAD IBRAHIM RAHADIAN', 'Bekasi ', '2017-06-08', 'L', '4SD', 20, '2021', 'IBRA', '3A', '19 Kg', '-', 'L/ XL', 'Jl. Duta VI Blok FF No. 8 Kemang Pratama', '-', '8997731084', NULL, 'Nugraha Arianto Putra', 'SMA', 'Karyawan Swasta', 'Jakarta/ 27 September 1999', 'Siti Rafifa Fahdina', 'D3', 'Karyawan Swasta', 'Palembang/ 24 Februari 1990'),
('SD0103', '202102103', '202102103', 'MUHAMMAD ZAFRAN JOBAN', 'JAKARTA', '2016-09-03', 'L', '4SD', 20, '2021', 'ZAFRAN', '3A', '14/5', '92', 'S', 'PONDOK JINGGA MAS I BLOK F2 NO. 5', NULL, '81212701818', '-', 'RIZA WILHANSYAH', 'S1', 'Karyawan Swasta ', '18-Oct-90', 'EVA YULYANTI', 'S1 ', 'Ibu Rumah Tangga', '03-Jul-87'),
('SD0104', '202102104', '202102104', 'REZKY KHOIRY ABDIRRAHMAN', 'Magelang', '2015-10-06', 'L', '4SD', 20, '2021', 'REZKY', '3A', '16', '110', 'M', 'Cluster Taman Firdausi Kav 3 Jatibening Baru', '081311502036', '81288636347', NULL, 'Daryatno Subekti', 'S1', 'PNS Pemprov DKI', 'Mataram 17 Agustus 1982', 'Indah Susanti', 'S1', 'IRT', 'Magelang 23 Desember 1990'),
('SD0105', '202102105', '202102105', 'SHAKILA ZIYA NAZURA', 'Bekasi ', '2015-02-08', 'P ', '4SD', 21, '2021', 'ZIYA', '3B', '15', NULL, 'L', 'VILLA PEKAYON A3 NO. 4', NULL, '8156048582', '-', 'ZULKIFLI', 'S1', 'Karyawan Swasta ', '13-Oct-82', 'DITHIANE FARA FADILAH', 'S1 ', 'KARYAWATI SWASTA', '28-Jul-82'),
('SD0106', '202102106', '202102106', 'UWAIS AHZA RABBANI', 'Bekasi', '2017-04-06', 'L', '4SD', 20, '2021', 'UWAIS', '3A', NULL, NULL, NULL, 'Cluster Intan Gardenia Blok B no 4. Jakasetia.', '81281349979', '81213332120', NULL, 'Wigih Laksana Yudha', 'S1', 'Karyawan Swasta', 'Tulung Agung/ 22 Juni 1984', 'Gendis Ryenda Melati Sekarini', 'D3', 'Pegawai BUMN', 'Bekasi/ 6 Januari 1988'),
('SD0108', '202102108', '202102108', 'BARI AHMAD MAKARIM', 'Jakarta', '2015-09-10', 'L', '4SD', 20, '2021', 'BARI', '3A', '20 kg', '115 cm', 'M', 'PTM blok G2 no 1 A', '085218076715', '85260782581', 'm_donnys@yahoo.com', 'Muhammad Donny Satriawan', 'S1', 'Karyawan swasta', 'Jakarta/ 5 Oktober 1979', 'Irhami', 'S1', 'IRT', 'Lhokseumawe/ 26 Juli 1989'),
('SD0109', '202102109', '202102109', 'MUHAMMAD IRSYAD FAZA', 'Bekasi', '2016-04-03', 'L', '4SD', 20, '2021', 'IRSYAD', '3A', NULL, NULL, NULL, 'Jl. Bintang Raya B. 6 Jakasetia Bekasi Selatan', NULL, '81318407676', NULL, 'Isfi Hendri', 'SLTA', 'Karyawan swasta', 'Payakumbuh/ 5 Februari 1977', 'Esi Endriani', 'SLTA', 'Karyawan swasta', 'Durian Kapas/ 1 Mei 1980'),
('SD0110', '202202110', '202202110', 'ABIMANYU IJLAL RAFIF', 'Sidoarjo', '2016-05-04', 'L', '3SD', 18, '2022', 'ABI', '2A', '17/5 Kg', '-', '-', 'Villa Pekayon Blok A3 / 12', '-', '8122227520', NULL, 'Alifia Rahman', 'S1', 'Karyawan Swasta', 'Jember/ 11 Maret 1986', 'Ajeng IR', 'S1', 'PNS', 'Mojokerto/ 20 Januari 1987'),
('SD0111', '202202111', '202202111', 'ADARA HASYA AFIQAH', 'Bekasi', '2015-09-06', 'P', '3SD', 19, '2022', 'ADARA', '2B', NULL, '104', NULL, 'Jl. Taman Agave IV M5/18 Taman Galaxi Bekasi', '08111901578', '8161845223', NULL, 'Mohammad Fikri', 'S2', 'Swasta', 'Jakarta 26 November 1977', 'Sofia Andam Dewi', 'S1', 'Swasta', 'P. Berandan 15 Februari 1977'),
('SD0112', '202202112', '202202112', 'ADNI AISHA NABIH', 'Surabaya', '2017-08-06', 'P', '3SD', 19, '2022', 'ADNI', '2B', '11/2 Kg', '84 cm', 'S', 'Jl. Lembah Aren VI K7/14 Pondok Kelapa/ Duren Sawit. Jakarta timur', '85336035037', '82330037866', NULL, 'Zakariya Amirudin Al Aziz', 'S1', 'Karyawan Swasta', 'Nganjuk/ 11 Desember 1990', 'Vidya Nurina', 'S1', 'Karyawan Swasta', 'Pasuruan/ 20 Oktober 1991'),
('SD0113', '202202113', '202202113', 'ADZKIYA QALESYA ZAHSY', 'Bekasi', '2016-04-10', 'P', '3SD', 19, '2022', 'QALESYA', '2A', '12/1 Kg', '88 Cm', NULL, 'Jl. Cendana IV no 18. Perumahan Jakapermai.', '82299992553', NULL, NULL, 'Erlangga Perwira N.', 'S1', 'Dokter', 'Bekasi/ 27 April 1991', 'Indah Dwi Rahmah', 'S1', 'Dokter', ' Jepara/ 17 September 1990'),
('SD0114', '202202114', '202202114', 'AIDIL HAMIZAN IBRAHIM PUSPANEGARA', 'Bekasi', '2014-04-10', 'L', '3SD', 18, '2022', 'HAMIZAN', '2A', '12 Kg', '90 Cm', 'M', 'Jl. Pulo Sirih 8 GA 240 Taman Galaxy Indah', '021-8224808', '81294776399', NULL, 'Chandra Pakai Puspanegara', 'D3', 'IT Swasta', 'Bandung/ 3 Maret 1980', 'Feby Mahkota Arisandy', 'D3', 'Ibu Rumah Tangga', 'Palembang/ 4 Februari 1985'),
('SD0115', '202202115', '202202115', 'ALIFIANDRA HARUN AL RASYID', 'Jakarta', '2016-09-11', 'L', '3SD', 18, '2022', 'ALIF', '2A', '0', '0', 'L', 'Jl. Nangka 4 No. 5 RT 004 RW 005. Kota Baru. Bekasi Barat. Bekasi. Jawa Barat', '081299366510', '081299366510', 'devihenri@gmail.com', 'Devi Henri Wibowo', 'S1', 'Karyawan swasta', 'Pekalongan/ 26 oktober 1988', 'Indah Purnamasari', 'S1', 'Karyawan Swasta', 'Jakarta/8 September 1988'),
('SD0116', '202202116', '202202116', 'ANNISA FARHANA SYAKIRA', 'Bekasi', '2016-02-05', 'P', '3SD', 19, '2022', 'ANNISA', '2B', '18', '107', 'L', 'Komp. Masnaga Jl. Palem 5 Blok F no 997 Jaka Mulya Bekasi Selatan', '08121374410', '81315833952', NULL, 'Toto Rusmanto/Mcom/ PhD', 'S3', 'Dosen', 'Cirebon 20 Juni 1970', 'Yeni Noviana Sari', 'D3', 'Swasta', 'Jakarta 27 November 1979'),
('SD0117', '202202117', '202202117', 'ARYA BIMA WARDHANA', 'Jakarta ', '2018-04-01', 'L', '3SD', 18, '2022', 'BIMA', '2A', '18', '103', 'M', 'Komp Grand Prima Bintara Blok B2 no 31 Bekasi Barat', '081311687587', '81937655758', NULL, 'Yususf Gustan Nawawi', 'S2', 'Wiraswasta', 'Jakarta 4 April 1984', 'Mira Tunjung', 'S1', 'IRT', 'Solo 15 Juni 1987'),
('SD0118', '202202118', '202202118', 'ATHIFA FARANISA AADYA', 'Bekasi', '2016-03-02', 'P', '3SD', 19, '2022', 'ATHIFA', '2A', '12 Kg', '-', 'S', 'Jl. Gardenia Utara Blok B3 No. 20 Jakasetia/ Bekasi', '-', '8568011756', NULL, 'Ferra Rahadian', 'S2', 'Karyawan Swasta', 'Semarang/ 9 Juni 1987', 'Ranti Yunizar', 'S1', 'Karyawan Swasta', 'Jakarta/ 4 Juni 1989'),
('SD0119', '202202119', '202202119', 'AZKA ADHYASTHA BOEMI', 'Bekasi', '2017-10-02', 'L', '3SD', 18, '2022', 'AZKA', '2B', '13/2 Kg', '90 Cm', 'M', 'Perumahan Deminimalist Blok C no 10', '021-28088013', '87780212919', NULL, 'Didik Tri Hartadi', 'S1', 'Karyawan Swasta', 'Bekasi/ 3 November 1984', 'Hani Farahani', 'S1', 'Karyawan Swasta', 'Serang/ 15 Maret 1979'),
('SD0120', '202202120', '202202120', 'DANICA CALISTA PUTRI', 'PAMULANG', '2016-12-04', 'P', '3SD', 19, '2022', 'DANICA', '2B', '14', '98', 'S', 'JL. KETAPANG 5 BLOK DD38 NO.17 PD PEKAYON INDAH', '021-8207702', '8170700709', NULL, 'DONI YAHYA', 'S1', 'WIRASWASTA', 'JAKARTA/ 5-Feb-80', 'DEWI MONICA', 'S1', 'SWASTA', 'JAKARTA/ 17-JUN-82'),
('SD0121', '202202121', '202202121', 'DAVIN ARYANARESWARA ALZAIDAN', 'Bekasi', '2018-06-01', 'L', '3SD', 18, '2022', 'DAVIN', '2A', NULL, NULL, NULL, 'Griya Metropolitan 2 Blok E5 No.3 Pekayon Bekasi Selatan Kota Bekasi', NULL, '82133183060', NULL, 'Ari Agung Prihandoyo', 'S2', 'Karyawan Swasta', 'Boyolali/ 7 Januari 1989', 'Widya Ariaty', 'S1', 'Dokter Umum', 'Palembang/ 7 Juli 1988'),
('SD0122', '202202122', '202202122', 'FAUZAN AL FATIH', 'Bekasi', '2017-05-12', 'L', '3SD', 18, '2022', 'FAUZAN', '2B', '10/5 Kg', '-', 'M', 'Taman Cikas Jl. Boulevard Raya Blok A4 no. 3', '-', '815842008976', NULL, 'Wisnu Widodo', 'D3', 'Karyawan Swasta', 'Malang/ 17 September 1983', 'Lindiawati', 'S1', 'Ibu Rumah Tangga', 'Jakarta/ 29 Desember 1982'),
('SD0123', '202202123', '202202123', 'HAFIZ FIKRI MUBAROK', 'Purwakarta', '2015-12-08', 'L', '3SD', 18, '2022', 'HAFIZ', '2B', '12 kg', '100 cm', 'S', 'JL.AMARILIS 1 BLOK AH.26 KEMANG PRATAMA 2 BEKASI/ KEL.BOJONG RAWALUMBU', '081320119880', '081320119880', 'zacky_ii@yahoo.com', 'Zaki mubarok', 'S2', 'Wiraswasta', 'Tanggerang/10 Januari 1980', 'mirna Komalasari', 'S1', 'IRT', 'Bandung/15 Juni 1982'),
('SD0124', '202202124', '202202124', 'KHILYA ADZKIYA', 'Bekasi', '0001-01-01', 'P', '3SD', 19, '2022', 'KHILYA', '2A', NULL, NULL, NULL, '[NULL]', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('SD0125', '202202125', '202202125', 'LAODE MUHAMAD ALFATIH BAKTI', 'Batam', '2017-03-02', 'L', '3SD', 18, '2022', 'LAODE', '2A', '0', '0', 'S', 'Jl. Penegak 1 no.75 Rawa Lumbu Bekasi', '0', '0811858554/085668074991', 'lmbqkti@gmail.com', 'Laode Muhamad Bakti', 'S1', '0', 'Yogyakarta/14 Nov 1981', 'Puspa Sari Anggraini', 'S1', 'IRT', 'Jakarta/ 1 July 1982'),
('SD0127', '202202127', '202202127', 'MUHAMMAD ELVARO RAFARDHAN', 'Bekasi', '2017-04-07', 'L', '3SD', 18, '2022', 'FARDHAN', '2B', NULL, NULL, NULL, 'Taman Cikas Blok C 14 No. 16/ Pekayon Jaya/ Bekasi Selatan/ 17148', NULL, NULL, NULL, 'Rama Bagus Perkasa', NULL, 'Karyawan BUMN', NULL, 'Nadia Imaniar Sidqon', NULL, 'Dokter / Ibu Rumah Tangga', NULL),
('SD0128', '202202128', '202202128', 'MUHAMMAD FITRAH ABDURRAHMAN', 'Bekasi', '2017-06-06', 'L', '3SD', 18, '2022', 'FITRAH', '2B', '14', NULL, 'M', 'Jl. Lumbu Barat 2 B no.77 Kel. Bojong Rawalumbu Bekasi', '085777931736', '85775333210', NULL, 'Fuad Muhammad Muhsin', 'S1', 'Swasta', 'Jakarta 9 oktober 1981', 'Ersa Setiati', 'S1', 'Dokter', 'Jakarta 31 Agustus 1986'),
('SD0129', '202202129', '202202129', 'MUHAMMAD KELLEN AZIZAN KAREEM', 'Jakarta', '2017-03-06', 'L', '3SD', 18, '2022', 'KELLEN', '2A', ' 14/1 Kg', '90', 'L', 'Perumahan Green Leaf Blok 6 No.1 Jl. Suluki Cempaka Jatibening', '-', NULL, NULL, 'Mohamad Abang (Alm)', NULL, NULL, NULL, 'Asmawati', 'D3', 'Swasta', 'Paniai/ 15 Agustus 1983'),
('SD0130', '202202130', '202202130', 'RAFIF AUFA PASARIBU', 'Bekasi', '2016-03-06', 'L', '3SD', 18, '2022', 'RAFIF', '2B', '18', '143', 'L', 'Villa Jakasetia Blok H no 3 Bekasi', '0811873548', '811810791', NULL, 'Romi Adlan Pasaribu', 'S1', 'Swasta', 'Plaju 22 April 1973', 'Devi Leonisa Niko', 'D3', 'IRT', 'Jakarta 15 Agustus 1977'),
('SD0131', '202202131', '202202131', 'SULTHAN BASKORO PRIYANANTA', 'Bekasi', '2017-04-02', 'L', '3SD', 18, '2022', 'SULTHAN', '2B', '13 Kg', '-', 'M', 'Pondok Pekayon Indah Jl. Ketapang VI Blok DD43 No.7 Bekasi ', '021-8205770', '85887154536', NULL, 'Berliyanto', 'S2', 'Dosen', 'Jakarta/ 12 Juni 1988', 'Kalia Barnita', 'S2', 'Ibu Rumah Tangga', 'Jakarta/ 07 Februari 1989'),
('SD0132', '202202132', '202202132', 'THARIQ ZIYAD ABDURRAHMAN', 'Jakarta ', '2016-02-06', 'L', '3SD', 18, '2022', 'THARIQ', '2A', '16', NULL, 'M', 'Jl. Lembah Aren X Blok K16/21 Kav DKI RT.02/09 Pondok Kelapa Jakarta', '08568806057', '8121043828', NULL, 'Adhib Rakhmanto', 'S1', 'Swasta', 'Kulon Progo 1 September 1987', 'Sefty Kurnadia Weny', 'S1', 'IRT', 'Jakarta 12 Februari 1986'),
('SD0134', '202202134', '202202134', 'ZARIN AYU SHIDQIA', 'Bekasi', '2016-01-11', 'P', '3SD', 19, '2022', 'ZARIN', '2B', '12 Kg', '90 Cm', 'M', 'Jl. Cikunir Raya no 101 RT 01/RW 02. Jakamulya', '85718697759', '85728238923', NULL, 'Budi Yatmoko', 'SMP', 'Wiraswasta', 'Sragen/ 8 Agustus 1985', 'Diah Ayu Puspitarini', 'SMK', 'Ibu Rumah Tangga', 'Sragen/ 20 Mei 1992'),
('SD0135', '202202135', '202202135', 'DEVA HAFIDZ YUKITAMA', ' BEKASI', '2015-11-10', 'L', '3SD', 18, '2022', 'DEVA', '2A', '10  kg', ' 110 cm', NULL, ' Jalan Bintara 14 Gang HM Tohir 3 Rt.001/009 No.133K Bekasi Barat 17134', ' -', '8999293580', ' yuktika4januari@gmail.com', ' BIMA WIBAWA ADITAMA', ' S1 TEKNIK', ' SALES ENGINEER', 'Sabang/ 26 September 1991', ' YUKTIKA', ' S1 TEKNIK', ' KARYAWATI', 'Jakarta/ 17 Oktober 1990'),
('SD0136', '202202136', '202202136', 'SHANUM ALULA RINJANI', ' Bekasi', '2018-06-09', 'P', '3SD', 19, '2022', 'SHANUM', '2B', ' ', ' ', NULL, ' Komplek AL/Kemang Ifi Graha Jl. Bonang Baru I Blok A2 No. 17B', '218205771', '82112021461', ' infobagus.sls@gmail.com', ' Bagus Marta Yulian', ' ', ' ', 'Jakarta/ 19 Mei 1991', ' Herlin Devianti', ' S2', ' Wiraswasta', 'Bekasi/ 24 Desember 1987'),
('SD0137', '202202137', '202202137', 'ADELIA AINUNNISA ASYARI', ' Bandung', '2016-04-10', 'P', '3SD', 19, '2022', 'DELLE', '2B', ' 16/20 kg', '110 cm', NULL, ' Pondok Timur Mas (PTM)/ Jl. Pondok Mas Raya/ Blok A/ Nomor 5.', ' -', '8562329397', ' abungasyari@gmail.com', ' Abung Asyari', ' S2', ' Karyawan Swasta', 'Cibinong/ 31 Maret 1981', ' Ingrid Larasati Agustina', ' S3', ' Karyawan Swasta', 'Jakarta/ 21 Januari 1983'),
('SD0138', '202202138', '202202138', 'MUHAMMAD AL FATIH PUTRA KAUTSAR', ' JAKARTA', '2016-05-12', 'L', '3SD', 18, '2022', 'AL FATIH', '2A', '22 kg', '110 cm', NULL, ' JL.KAYUMANIS VIII RT.015 RW.007 NO.81 MATRAMAN JAKARTA TIMUR 13130', ' 021-21012958', '81383276969', ' adiachmadkautsaruigundaryai@gmail.com', ' ACHMAD KAUTSAR/ S.SOS/ S.E', ' S-1', ' KONSULTAN', 'Jakarta/ 19 November 1977', ' LINA MARLINA', ' SMA', ' IBU RUMAH TANGGA', 'Garut/ 6 Juli 1986'),
('SD0139', '202202139', '202202139', 'CALLYSTA RAFIFA AZZAHRA', ' Bekasi', '2015-09-04', 'P', '3SD', 19, '2022', 'CHATTA', '2A', NULL, ' 117cm', NULL, ' Jl. Sersan Idris No.128 Rt.003/Rw.003 Kelurahan Margajaya/ Kecamatan Bekasi Selatan. 17141', ' -', '81317325215', ' imelramadhania17@yahoo.com', ' Panji Dewantoro', ' S1', ' Karyawan Swasta', 'Bandung/ 02 April 1988', ' Imel Ramadhania', ' S1', ' Karyawan BUMD', 'Bekasi/ 15 Mei 1988'),
('SD0140', '202202140', '202202140', 'FATIMAH AZIZAH ARIDIA', ' Jakarta', '2017-07-01', 'P', '3SD', 19, '2022', 'AZIZAH', '2B', ' ', ' ', NULL, ' Perumahan Taman Century 1 Blok N2 Pekayon', ' -', '81298137228', ' superiyan@gmail.com', ' Riyan Tamara', ' S2', ' Karyawan', 'Jakarta/ 28 April 1981', ' Diana Tri Amelia', ' S1 Kedokteran', ' Ibu Rumah Tangga', 'Payakumbuh/ 23 Maret 1983'),
('SD0141', '202202141', '202202141', 'MUHAMMAD ZAIDAN ALTHAFARIZQI', ' Bekasi', '2018-06-05', 'L', '3SD', 18, '2022', 'ZAIDAN', '2B', '17 kg', ' 110 cm', NULL, ' Bintara jaya IV no 13H', '218479922', '87822392644', ' dinahgiyanti@gmail.com', ' Muhamad Khadapi', ' S1', ' Wiraswasta', 'Jakarta/ 12 April 1988', ' Dinah giyanti ruwaida', ' S1', ' Karyawan swasta', 'Jakarta/ 4 Juni 1988'),
('SD0142', '202202142', '202202142', 'KHAFIF FATIH HANIFA', 'Cimahi', '2017-01-09', 'L', '3SD', 18, '2022', 'KHAFIF', '2A', '19.5 kg', '110 cm', NULL, 'Komp. Padasuka Indah B-40/ Padasuka/ Cimahi Tengah/ Cimahi', ' -', '8111010610', ' ahmadzakyramdani@gmail.com', 'Ahmad Zaky Ramdani', 'S2 Tekhnik Elektronika', 'Karyawan Swasta', 'Bandung/ 17 April 1989', 'Ratih Aflita Rahmawati', 'S1 (informatika)', 'Mahasisswa S2/ IRT', 'Cimahi/ 10 Oktober 1992'),
('SD0143', '202202143', '202202143', 'QONITA FAUZAN', 'Tegal', '2016-12-12', 'P', '3SD', 19, '2022', 'QONITA', '2A', NULL, NULL, NULL, '[NULL]', NULL, NULL, NULL, 'Fauzan Bawazir', NULL, NULL, NULL, 'Tantri Novita Sari', NULL, NULL, NULL),
('SD0145', '202202144', '202202144', 'MUHAMMAD ABQARY GIBRAN ADZIM', 'Jakarta', '2015-02-09', 'L', '3SD', 18, '2022', 'GIBRAN', '2B', '14 kg', '105 cm', 'M', 'Perumahan Pondok Cipta Blok E no.35 / Bintara/ Bekasi', '0', '081288738100/087724213524', 'agyfauzul@gmail.com', 'Muhammad Fauzul Adzim', 'SLTA', 'Wiraswasta', 'Jakarta/9 Maret 1981', 'Rizka Fadhila', 'S1', 'Apoteker', 'Bukit tinggi/ 22 Januari 1988'),
('SD0146', '202202145', '202202145', 'KENZO ANDINOV SAAD SUHARJO', 'Jakarta', '2016-08-09', 'L', '3SD', 18, '2022', 'KENZO', '2A', '24 kg', '117 cm', NULL, 'Jl bintara jaya 8 rt 03/09 kavling c10 bintara jaya bekasi barat', NULL, '081398888165/087777788410', 'loidsteelinternational@gmail.com', 'Andi winoto', 'S1', 'Wiraswasta', 'Jakarta/ 2 April 1984', 'Novi wulandari', 'S1', 'IRT', 'Bekasi / 1 Nov 1989'),
('SD0147', '202302001', '202302001', 'ZIDANE BHUMI ARRAZI', 'Bekasi', '2017-04-08', 'L', '2SD', 17, '2023', 'BHUMI', '1B', '19 kg', '105 cm', NULL, 'Jalan Jatiluhur Raya 117/ Cluster Rosella Blok Arelian No.6 Rt.2/3 Jakasampurna Berkasi Barat 17145', NULL, '081717756111', 'shirofah89@gmail.com', 'Muhammad Arif Sulaiman', 'S2 - Ilmu Hukum', 'Lawyer', 'Aceh Timur/ 7 Nov 1983', 'Sitti Musyarrafah', 'S1 - Psikologi Pendidikan', 'IRT', 'Jakarta/ 18 Januari 1989'),
('SD0148', '202302002', '202302002', 'ZILLJIZAN SEFERAGIC ZIDNI ILMA', 'Jakarta', '2018-03-01', 'L', '2SD', 17, '2023', 'JIZAN', '1B', '11 kg', '90 cm', NULL, 'griya kemang raya no.91 . jl kemang raya. jaticempaka bekasi', NULL, '087887991901', 'dinarputripratiwi@gmail.com', 'urida zidni ilma', 'S1 - teknik elektrp', 'swasta', 'Semarang/ 11 Juni 1987', 'dinar putri pratiwi', 's1 - pendidikan anak usia dini', 'IRT', 'Palembang/ 22 Agustus 2009'),
('SD0149', '202302003', '202302003', 'MUHAMMAD ADHYASTHA ALFAREZEL', 'Jakarta', '2018-03-10', 'L', '2SD', 17, '2023', 'DHYAS', '1A', '17 kg', '100 cm', NULL, 'Jl. Pulo sirih tengah 13 blok ea 390', NULL, '081286382262', 'widiyogop@gmail.com', 'Widi Yogo Pratomo', 'S1 Akuntansi Univ. Gunadarma', 'PNS', 'Jakarta/4 Nov 1988', 'Elin Septiana', 'S1 Akuntansi Univ. Gunadarma', 'IRT', 'Lebak/ 22 September 1990'),
('SD0150', '202302004', '202302004', 'FAYZA ALESHA DESWINATA', 'Bandar Lampung', '2017-02-06', 'P', '2SD', 17, '2023', 'FAYZA', '1B', '24 kg', '117 cm', NULL, 'Pondok surya mandala. Jl surya permata XIII blok Y-1 no 9/ RT. 13/13/ jakamulya 17146 bekasi selatan', NULL, '08112267905', 'genkiacmilan@gmail.com', 'Genki Judawinata', 'S1 UNPAD', 'Swasta', 'Bandung/ 25 Oktober 1990', 'Ade Desnia', 'S1 UNPAD', 'PNS', 'Bandar Lampung/ 28 Desember 1991'),
('SD0151', '202302005', '202302005', 'AUDREY LASHIRA PRADITYATAMA', 'Bekasi', '2019-05-04', 'P', '2SD', 16, '2023', 'AUDREY', '1A', '15 kg', '110 cm', NULL, 'Jl Pulo Sirih Tengah 15 Blok EA 302/ Perum Taman Galaxy Indah/ Pekayon Jaya/ Bekasi Selatan', NULL, '081219500151', 'anggarapradityatama@gmail.com', 'Anggara Pradityatama', 'S1 - Sarjana Komunikasi/ London School of Public Relation Jakarta', 'Swasta', 'Bogor/ 16 Desember 1991', 'Siti Angginami Sadida Pane', 'S1 - Sarjana Ekonomi Universitas Bina Nusantara', 'Swasta', 'Jakarta/ 6 Juni 1992'),
('SD0152', '202302006', '202302006', 'ABDURRAHMAN AKHYAR ALFATIH', 'Jakarta', '2017-02-06', 'L', '2SD', 16, '2023', 'FATIH', '1B', '20 kg', '120 cm', NULL, 'Cluster Intan Gardenia No. A4/ Jakasetia/ Bekasi Selatan', NULL, '081212969604', 'feronalizaazis@gmail.com', 'Heru Oktaviana', 'SI - Administrasi Niaga UI', 'Swasta', 'Kuningan/ 10 April 1986', 'Ferona Liza', 'S1 / Sarjana Ekonomi STEKPI', 'IRT', 'jakarta/ 2 September 1988'),
('SD0153', '202302007', '202302007', 'AISYAH SYAFIQAH PUTRI', 'Jakarta', '2018-05-05', 'P', '2SD', 17, '2023', 'FIQAH', '1B', '17 kg', '90 cm', NULL, 'Vila jaka setia blok A No.A No 5', NULL, '089661796021', 'faqihsentosa@gmail.com', 'Rachmad sentosa', 'D 3', 'Wirausaha', 'Jakarta/ 30 Januari 1987', 'Nur aini', 'Smu', 'IRT', 'Jakarta/ 19 Agustus 1988'),
('SD0154', '202302008', '202302008', 'SHOFIYAH JENNAIRA MUWAFFAQAH', 'Bekasi', '2018-03-05', 'P', '2SD', 16, '2023', 'JENNA', '1A', '20 kg', '110 cm', NULL, 'Cikunir/ Jalan H.Mitar no 63 RT 05 RW 02 Kelurahan Jakamulya Kecamatan Bekasi Selatan Kota Bekasi', NULL, '087887579527', 'afriliasuryanis@gmail.com', 'Cahyo Kurniawan', 'S1-Ilmu Hukum', 'Swasta', 'Jakarta/ 14 Maret 1988', 'Afrilia Suryanis', 'S1-Ilmu Komunikasi', 'Jurnalis', 'Jakarta/ 20 April 1989'),
('SD0155', '202302009', '202302009', 'ABIDZAR RAFFASYA RIFA MAHARI', 'Bekasi', '2018-02-01', 'L', '2SD', 17, '2023', 'ABIDZAR', '1A', '18 kg', '119 cm', NULL, 'The Green View A29 galaxy', NULL, '081218182124', 'ririnroska@gmail.com', 'Faisal', 'S1 - ekonomi', 'Swasta', 'Aceh/ 24 November 1975', 'Ririn Roska', 'D3 - Manajemen', 'IRT', 'karang Anyar/ 19 November 1982'),
('SD0156', '202302010', '202302010', 'SHANUM QUEENSHA ARIFIN', 'Bekasi', '2016-10-04', 'P', '2SD', 17, '2023', 'SHANUM', '1A', '27 kg', '123 cm', NULL, 'Komplek pemda jl cemara 1 blok a5 no 15 jati asih bekasi', NULL, '085643910060', 'arifinkritingg@gmail.co.id', 'Arifin', 'S1 teknik mesin ums', 'Swasta', 'Demak/ 5 November 1984', 'Happy meilani', 'S1 ekonomi UNS', 'IRT', 'Sragen/ 27 Mei 1989'),
('SD0158', '202302012', '202302012', 'AUFA RASYID', 'Bandar Lampung', '2018-02-05', 'L', '2SD', 17, '2023', 'AUFA', '1B', '23 Kg', '130 cm', NULL, 'Pondok Pekayon Indah Blok A8 No. 16 Jl. Cendrawasih II Bekasi Selatan', NULL, '081294326789', 'alvinhidayatullah@gmail.com', 'Alvin Hidayatullah', 'S1', 'Wirausaha', 'Jakarta/ 5 Desember 1984', 'Rio Ulfia Hardianti', 'S1', 'IRT', 'Jombang/ 1 Januari 1991'),
('SD0159', '202302013', '202302013', 'KHALISA SYAFA DARA SISPUTRA', 'Jakarta', '2016-09-07', 'P', '2SD', 17, '2023', 'KHALISA', '1A', '18 kg', '101 cm', NULL, 'Perumahan Villa Mas Indah Blok A2 nomer 11 Kelurahan Perwira Kecamatan Bekasi utara', NULL, '081319766555', 'Rama_sisputra@yahoo.com', 'Rama Sisputra', 'S1', 'Wirausaha', 'Jakarta/ 23 Juni 1987', 'Mufida Melati putri', 'S1', 'IRT', 'Surabaya/ 2 Mei 1994'),
('SD0160', '202302014', '202302014', 'KENZO AKBAR NATAWIDJAJA', 'Jakarta', '2018-12-01', 'L', '2SD', 16, '2023', 'KENZO', '1A', '20 kg', '120 cm', NULL, 'Cluster rosella blok K 5b', NULL, '087887270766', 'yudhitya.sn@gmail.com', 'Yudhitya Sjarief Natawidjaja', 'S1', 'Swasta', 'Jakarta/ 21 September 1990', 'Khen madona', 'S1', 'Swasta', 'Jakarta/ 12 Desember 1989'),
('SD0161', '202302015', '202302015', 'ADZKIA FARANISA AYU', 'Temanggung', '2017-05-06', 'P', '2SD', 16, '2023', 'KIA', '1B', '16 Kg', '110 Cm', NULL, 'Perumahan Margahayu Blok A Jl. Cemara 1', NULL, '081288680182', 'tatang.arifin@yahoo.com', 'Tatang Arifin', 'S1', 'Swasta', 'Ciamis/ 4 Juni 1982', 'Indah Eka Septiana', 'SLTA', 'IRT', 'Magelang/ 18 September 1989'),
('SD0162', '202302016', '202302016', 'KANAYA ALESHA DZIKRA', 'Bekasi', '2018-06-04', 'P', '2SD', 16, '2023', 'KANAYA', '1B', '20 kg', '115 cm', NULL, 'Rawalumbu', NULL, '089618478533', 'danidaru5m4n@gmail.com', 'Dani Darusman', 'S1 administrasi publik', 'Wirausaha', 'Ciamis/ 3 Januari 1988', 'Tati kurniati', 'S1 sarjana syariah', 'IRT', 'Sumedang/ 29 Februari 1988'),
('SD0163', '202302017', '202302017', 'SOFIE ALMAHYRA SAKHI', 'Serang', '2017-09-05', 'P', '2SD', 16, '2023', 'SOFIE', '1B', '17 kg', '115 cm', NULL, 'PERUM PONDOK TIMUR MAS BLOK F1 NO 6 BEKASI SELATAN', NULL, '081287978451', 'putraica@gmail.com', 'ICA PUTRA', 'D3', 'SWASTA', 'PANGKALPINANG BANGKA BELITUNG/ 25 Januari 1986', 'ITA HARYATI', 'D3', 'Swasta', 'PANDEGLANG/ 21 Mei 1986'),
('SD0164', '202302018', '202302018', 'KHANSA FAHIMA SULTANSYAH', 'BEKASI', '2007-04-01', 'P', '2SD', 16, '2023', 'KHANSA', '1A', '22 kg', '122 cm', NULL, 'Perum Jatibening 2 Jl.Hanjuang IV atas no.63A Rt.06/Rw.03 Pondok Gede Jt Bening Bekasi/ 17412', NULL, '082213606865', 'rizkiturki@gmail.com', 'RIZKI APRIANSYAH', 'S1 - AGAMA ISLAM / ISTANBUL TURKI', 'GURU / PENERJEMAH BAHASA TURKI', 'Jakarta/ 17 April 1992', 'DHEANITA TRIBUANA', 'S1 - FAK.EKONOMI GUNADARMA', 'IRT', 'Jakarta/ 8 April 1991'),
('SD0165', '202302019', '202302019', 'MAAJED AHMAD HILABI', 'Bekasi', '2017-05-01', 'L', '2SD', 16, '2023', 'MAAJED', '1A', '20 kg', '115 cm', NULL, 'Jl. Lembah Palem V Blok J7 no 11 pondok kelapa Jaktim', NULL, '085101712989', 'madorgiv@gmail.com', 'Ahmad Lutfi Hilabi', 'D1 - Desain Grafis', 'Wirausaha', 'Jeddah/ 26 Agustus 1985', 'Nadra Husein Aziz', 'S1 - Sastra Inggris', 'Guru', 'Jeddah/ 3 Juni 1985'),
('SD0166', '202302020', '202302020', 'MUHAMMAD HANIF MAULANA TURSADI', 'Jakarta', '2017-03-01', 'L', '2SD', 17, '2023', 'HANIF', '1A', '18 kg', '100 cm', NULL, 'Green Jati Asih No. A3 Jl. Subur 1 Komp Pemda Blok B/ Jati Asih Bekasi', NULL, '08595922517', 'danie_282@yahoo.com', 'Danie Febriansyah Tursadi', 'S1', 'Swasta', 'Bekasi/ 28 Februsri 1974', 'Maya Safira', 'D3', 'IRT', 'Bandung/ 26 September 1977'),
('SD0167', '202302021', '202302021', 'MUHAMMAD ANDISTRA ZAYN AS SUDAIS', 'Jakarta', '2016-09-02', 'L', '2SD', 16, '2023', 'ZAYN', '1B', '17 kg', '110 cm', NULL, 'Jl. Rawabebek Gg. Norin RT. 11 RW. 01 No. 205 Kel. Pulogebang Kec. Cakung Jakarta Timur 13950', NULL, '082110069990', 'and1rahman24@yahoo.com', 'Andi', 'S1 - Sarjana Hukum', 'Swasta', 'Jakarta/ 14 Januari 1981', 'Khairia Mahdalena', 'S1 - Sarjana Ekonomi', 'IRT', 'Jakarta/ 12 Desember 1981'),
('SD0168', '202302022', '202302022', 'MUHAMMAD NABIL RAZAN PUSPANEGARA', 'Bekasi', '2016-09-08', 'L', '2SD', 17, '2023', 'NABIL', '1B', '16 kg', '119 cm', NULL, 'Jl pulo sirih timur 8 ca 240 taman galaxy indonesia', NULL, '0817173380', 'febymahkotasandy@gmail.com', 'chandra paksi puspanegara', 'D3', 'Swasta', 'Bandung/ 3 Maret 1980', 'Feby mahkota arisandy', 'D3', 'IRT', 'Palembang/ 2 April 1985'),
('SD0169', '202302023', '202302023', 'HAWWA ANINDYA BARRAH', 'Banyumas', '2017-12-04', 'P', '2SD', 17, '2023', 'BARRAH', '1A', '27 kg', '120 cm', NULL, 'Jl Pandu Dewanata Blok 4 No 30 RT 04 RW 21 Perumahan Bumi Satria Kencana Kelurahan Kayuringin Jaya Bekasi Selatan', NULL, '081234560602', 'hr.firmanzah@gmail.com', 'Harry Firmanzah', 'S1 - Sarjana Ekonomi ABFI Perbanas', 'Karyawan BUMN', 'Bekasi/ 2 Juni 1986', 'Bekti Endah Pamuji', 'S1 - Sarjana Farmasi Muhammadiyah Purwokerto', 'IRT', 'Cilacap/ 9 Desember 1986'),
('SD0170', '202302024', '202302024', 'MUHAMMAD MALIQ AS SUDAIS', 'Bekasi', '2018-06-02', 'L', '2SD', 16, '2023', 'MALIQ', '1A', '21 kg', '110 cm', NULL, 'Cluster Taman Firdausi no 17 Jatibening', NULL, '08159990012', 'septa.faishal@gmail.com', 'Septa Faishal Ismail', 'S1 komputer', 'Swasta', 'Plaju/ 24 September 1982', 'Liyan Fitriyani', 'S1 komunikasi', 'IRT', 'Sumedang/ 6 Maret 1986'),
('SD0171', '202302025', '202302025', 'SALMAN ARRIZKY KURNIAWANTO', 'Bekasi', '2016-06-01', 'L', '2SD', 16, '2023', 'SALMAN', '1A', '16 kg', '120 cm', NULL, 'Jl Jalak Blok DDIII no.8/ Pondok Pekayon Indah/ Pekayon Jaya/ Bekasi Selatan', NULL, '085884973408', 'kurniawanto.84@gmail.com', 'Kurniawanto', 'S1 - Sarjana Teknik ITS', 'Wirausaha', 'Bekasi/ 30 Desember 1984', 'Nanin Wailisahalong', 'S1 - Sarjana Teknik ITS', 'IRT', 'Surabaya/ 29 Januari 1985');
INSERT INTO `siswa` (`c_siswa`, `nis`, `nisn`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jk`, `c_kelas`, `group_kelas`, `tahun_join`, `panggilan`, `c_klp`, `berat_badan`, `tinggi_badan`, `ukuran_baju`, `alamat`, `telp`, `hp`, `email`, `nama_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `ttl_ayah`, `nama_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `ttl_ibu`) VALUES
('SD0172', '202302026', '202302026', 'GHADIYA AVA MARIAM', 'Jakarta', '2018-04-04', 'P', '2SD', 17, '2023', 'GHADIYA', '1B', '20 kg', '117 cm', NULL, 'Jln Pondok Merah Mas Blok D1 No. 10', NULL, '08111074975', 'genta.moerita@gmail.com', 'Sunny Aulia', 'S1-Sarjana Pendidikan Arsitektur', 'Swasta', 'Tanggerang/ 6 Juli 1988', 'Genta Moerita', 'S2-Master Of Business Administration', 'Swasta', 'Padang/ 28 Desember 1987'),
('SD0173', '202302027', '202302027', 'MARYAM KHALISA ARSFA', 'Bekasi', '2018-10-01', 'P', '2SD', 17, '2023', 'MARYAM', '1A', '16 Kg', '112 cm', NULL, 'Jl pulo sirih barat 7 blok fe no 408', NULL, '082110232231', 'aristiaandana@gmail.com', 'Farid Rafli putra', 'S2-Manajemen Bisnis', 'Karyawan swasta', 'Pekanbaru/ 7 Agustus 1990', 'Aristia andana putri', 'S1-Sarjana Teknik', 'IRT', 'Kendari/ 4 November 1990'),
('SD0174', '202302028', '202302028', 'ALNATH ADREENA NURVIA', 'Bekasi', '2017-04-06', 'P', '2SD', 17, '2023', 'ALNATH', '1B', '18 kg', '113 cm', NULL, 'Vila Jaka Setia/ blok B no 7. Bekasi Selatan', NULL, '081310326503', 'nurdin_2007@yahoo.co.id', 'Mohamad Nurdin', 'S1 - Sarjana kelautan (Nautica II)', 'Pelaut', 'Tegal/ 21 Januari 1985', 'Dwi Nivianti', 'S1 - Sarjana Komunikasi (public relation)', 'Wirausaha', 'Jakarta/ 8 Desember 1987'),
('SD0175', '202302029', '202302029', 'MUHAMMAD KALE ALTAIR', 'Batam', '2019-02-06', 'L', '2SD', 16, '2023', 'KALE', '1A', '16 kg', '98 cm', NULL, 'Perumahan puri harapan jl.Enau 3 Blok E 9 no.32 Rt 06/Rw 016 setia Asih bekasi', NULL, '081277828383', 'Altairkale17@gmail.com', 'Harto', 'SMK / sederajat', 'TNL AL', 'Magetan/ 18 Juni 1987', 'Meliana siska E', 'SmK - sedang kuliah', 'Pengajar (metode Qiroati)', 'Cilacap/ 14 Maret 1989'),
('SD0176', '202302030', '202302030', 'ATQEEA SYBILL HENDRAWAN', 'Bekasi', '2017-09-04', 'P', '2SD', 16, '2023', 'QIA', '1A', '17 kg', '120 cm', NULL, 'Jln.pulau yapen 16 no 240', NULL, '081380466922', 'afadjrahannisa@gmail', 'Ade Putra Hendrawan', 'SLTA', 'Wirausaha', 'Saning Bakar/ 28 Juni 1984', 'Hannisa Afadjra', 'SLTA', 'IRT', 'Saning Bakar/ 29 Juli 1990'),
('SD0177', '202302031', '202302031', 'ABU AL BIRUNI IBRAHIM SUHADA', 'Bekasi', '2018-11-02', 'L', '2SD', 16, '2023', 'BIRRU', '1B', '18/2 kg', '112 cm', NULL, 'Cluster Lavesh SA5.16 no 12 Setia Asih - Tarumajaya - Bekasi', NULL, '08118416666', 'ahmadcs89@gmail.com', 'Ahmad Chaerus Suhada', 'S1 - Sarjana Statistika IPB', 'Swasta', 'Bekasi/ 3 Oktober 1989', 'Puspalia Ayudiar Setiawati', 'S1 - Sarjana Statistika IPB', 'IRT', 'Sumedang/ 10 Maret 1990'),
('SD0179', '202302033', '202302033', 'ABQARY KAISANU NARENDRA', 'Bekasi', '2017-04-08', 'L', '2SD', 17, '2023', 'KIANU', '1B', '19 kg', '115 cm', NULL, 'Jl Damar 9 blok C no 163. Perumahan Pekayon 2. Bekasi Selatan', NULL, '081374008874', 'hariendralesmana@gmail.com', 'Hari Endra Lesmana', 'S1 - Sarjana Teknik Pertanian IPB', 'Swasta', 'Sengeti/ 22 Januari 1989', 'Kusuma Ratih', 'S1 - Sarjana Teknologi Industri Pertanian IPB', 'Swasta', 'Bekasi/ 1 September 1989'),
('SD0180', '202302034', '202302034', 'MUHAMMAD BYAN SIN ASIFY', 'Boyolali', '2016-09-06', 'L', '2SD', NULL, '2023', 'BYAN', '1A', '20 kg', '105 cm', NULL, 'Jl. Masjid Hidayatullah No.1C Jakasetia Bekasi Selatan Kota Bekasi', NULL, '085780071007', 'anisaburberry@gmail.com', 'Mochammad Habiby Al Asify', 'S1. Sarjana Akuntansi', 'PNS', 'Bekasi/ 18 Desember 1989', 'Dien Anisa Latif', 'SMA Madrasah Aliyah Negeri & S1 Al Ahwal Akh Syakhsiyyah (no wisuda)', 'Ibu Rumah Tangga', 'Kebumen/ 26 November 1990'),
('SD0182', '202302036', '202302036', 'RAYYAN FATIH SYAMIL DARMAWAN', 'Banda Aceh', '2019-02-01', 'L', '2SD', 16, '2023', 'FATIH', '1B', '17 kg', '106 cm', NULL, 'Grand Kamala Lagoon. Bekasi', NULL, '08129523384', 'rfdarmawan@gmail.com', 'Rachman Ferry Darmawan', 'S1- Sarjana Ekonomi', 'Karyawan Swasta', 'Jakarta/ 27 Juni 1974', 'Rahmawati', 'S1- profesi dokter', 'Dokter', 'Kumba/ 26 Februari 1989'),
('SD0183', '202302037', '202302037', 'ARUNA SAKHI KINANTI', 'Bekasi', '2018-02-11', 'P', '2SD', 16, '2023', 'ARUNA', '1B', '17/5 kg', '110 cm', NULL, 'Jalan matahari 2 blok i no 1 taman galaxi bekasi selatan 17147', NULL, '081356263158', 'Addina.sugiarto@gmail.com', 'Rudi irwanto', 'S1', 'PNS', 'Bekri lampung/ 28 Oktober 1984', 'Addina sugiarto', 'S1', 'IRT', 'Wonosobo jawa tengah/ 22 Maret 1984'),
('SD0184', '202302038', '202302038', 'MUHAMMAD KHALID RIZQIANDRA RAMADHAN', 'BEKASI', '2017-04-06', 'L', '2SD', 16, '2023', 'KHALID', '1A', '10 kg', '121 cm', NULL, 'KEMANG PRATAMA 5 JL CEMPAKA RAYA BJ 02 RT 03 RW 20', NULL, '081219092969', 'cakuwa73@gmail.com', 'CANDRA KUSUMA WARDHANA', 'SI - TEKNIK & MANAJEMEN INDUSTRI - STT TELKOM (TELKOM UNIVERSITY)', 'KARYAWAN BUMN (PT TELKOM INDONESIA)', 'KEDIRI/ 23 April 1973', 'CUCU ANNA SAMSIYAH', 'S1 KEPERAWATAN - UNIV PADJAJARAN', 'IRT', 'BANDUNG/ 29 November 1981'),
('SD0185', '202302039', '202302039', 'FATIMAH AINAYYA KHAIDIR', 'Jakarta', '2018-06-10', 'P', '2SD', 16, '2023', 'FATIMAH', '1A', '24 kg', '120 cm', NULL, 'Jl Rh Umar RT 03 RW 02 Cikunir Kelurahan Jakamulya Kecamatan Bekasi Selatan (Cluster Denaya Safa Marwa Residence)', NULL, '0081290002913', 'khai.dhirr@gmail.com', 'Ahmad Khaidir', 'S1 - Sarjana Sistem Informasi', 'Pegawai Swasta', 'Jakarta/ 13 Agustus 1986', 'Arfaniati Cahya Amran', 'S1 - Ekonomi', 'Wirausaha dan Ibu Rumah Tangga', 'Jakarta/ 17 April 1987'),
('SD0186', '202302040', '202302040', 'FALISHA LATIFAH FARZANA', 'Jakarta', '2017-05-10', 'P', '2SD', 17, '2023', 'LATIFAH', '1B', '19 kg', '108 cm', NULL, 'Jl. Sriwijaya I no. 15. Rt001 RW06/ Jakasampurna/ Bekasi Barat/ kota Bekasi', NULL, '081287799661', 'indriani.zakiah@gmail.com', 'Rizal Fahlevi', 'S1 - Ilmu Komputer Universitas Indonesia', 'Swasta', 'Jakarta/ 1 Juni 1988', 'Zakiah Indriani', 'D3 - Akuntansi UGM', 'Pegawai BUMN', 'Tangerang/ 4 November 1992'),
('SD0187', '202302041', '202302041', 'KISKALMEERA SYAHFANA MUNAJAT', 'Bekasi', '2016-06-12', 'P', '2SD', 16, '2023', 'KIMI', '1A', '26 kg', '123 cm', NULL, 'Komp. Inkoppol jl. Garuda II no.40 Jakasampurna', NULL, '082122822733', 'bidarintanawawi@gmail.com', 'Adit Munajat', 'S1 - Man. Informatika Perbanas', 'Swasta', 'Jakarta/ 5 April 1984', 'Intan Bidari', 'D3 Secretary', 'IRT', 'Jakarta/ 2 Januari 1985'),
('SD0188', '202302042', '202302042', 'ADEEVA ZARA MIHARJA', 'Kotabumi', '2017-06-11', 'P', '2SD', 17, '2023', 'ADEEVA', '1B', '17 kg', '100 cm', NULL, 'Sakura regency 3 blok q5 rt 001 rw 019 jatimulya tambun selatan', NULL, '081295267536', 'friezqaayu65@gmail.com', 'Padmi harja', 'DIII/ STMIK BANI SALEH', 'Wirausaha', 'Ogan lima/ 3 April 1984', 'Friesqa ayuningtias', 'S1 ISTN profesi Apoteker', 'Apoteker', 'Kotabumi/ 9 Februari 1991'),
('SD0189', '202302043', '202302043', 'ABDURRAHMAN IHSAN AKBAR', 'Sukabumi', '2018-12-06', 'L', '2SD', 17, '2023', 'AA IHSAN', '1A', '13/8 kg', '100 cm', NULL, 'Hasan / Anggina Jln. Pondok Jingga Mas III Blok F5 No 19 Jakasetia/ Kec. Bekasi Selatan Kota Bekasi Jawa Barat 17147', NULL, '087856276326', 'sofianhasanh@gmail.com', 'HASAN SOFIAN HERNAWAN', 'S1 Teknik Kimia ITB', 'Karyawan', 'BANDUNG/ 14 Januari 1989', 'Anggina Oktapia Latief', 'S1 Psikologi Univ. Ahmad Dahlan', 'IRT', 'Sukabumi/ 15 oktober 1987'),
('SD0190', '202302044', '202302044', 'MUHAMMAD ABU BAKAR ASH-SHIDDIQ', 'Bekasi', '2018-12-05', 'L', '2SD', 16, '2023', 'MABAS', '1B', '19 kg', '110 cm', NULL, 'The Green View Blok D20 Bekasi Selatan', NULL, '082299502337', 'naradalotus@gmail.com', 'RM Dana Suryo Saputro', 'S1 Sarjana Teknik', 'Karyawan Swasta', 'Jakarta/ 6 Desember 1987', 'Riska Oktayuanita', 'S1 Teknis Industri', 'Ibu Rumah Tangga', 'Slawi/ 28 Oktober 1988'),
('SD0191', '202302045', '202302045', 'ALDEEBARAN SHAQUILE PRATAMA BEY', 'Tangerang', '2017-10-05', 'L', '2SD', 17, '2023', 'AL', '1A', '17 kg', '117 cm', NULL, 'Perumahan Taman Cikunir Indah Jl. Nusantara 6C Blok A1 No 14 RT 06/11', NULL, '082113576280', 'adybey32@gmail.com', 'Ady Pratama Bey', 'S1 - Sarjana Ekonomi STMT Trisakti', 'PNS', 'Jakarta/ 31 Januari 1989', 'Chifik Fahmi Putri Pratama', 'SMA', 'IRT', 'Jakarta/ 27 Agustus 1991'),
('SD0192', '202302046', '202302046', 'ALVARENDRA AGHAOZORA NUGROHO', 'Jakarta', '2017-09-05', 'L', '2SD', 17, '2023', 'AGHA', '1B', '29 kg', '125 cm', NULL, 'Arta Kranji residence blok b23 Kranji Bekasi barat 17135', NULL, '085693260841', 'ariss.nugroho8@gmail.com', 'Aris nugroho', 'S1 - sarjana pendidikan Akuntansi UNJ', 'Swasta', 'Jakarta/ 8 Juni 1988', 'Ndaru pamungkas', 'S1 - pendidikan Akuntansi UNJ', 'IRT', 'Jakarta/ 7 Oktober 1987'),
('SD0193', '202302047', '202302047', 'EZHAR MALIQ ALTHAFURRAHMAN HARAHAP', 'Bekasi', '2018-09-03', 'L', '2SD', 16, '2023', 'EZHAR', '1B', '19/5 kg', '110 cm', NULL, 'Jl. Jambu 1 no. 174 rt 06/07 Perumnas 1 kranji bekasi barat', NULL, '08118823796 - 087831074998', '-', 'Rahmad Sahuli Harahap (alm)', 'D3 tehnik informatika Bsi', '-', 'Meda/ 1 September 1981', 'Ririn Kustanti', 'D3-Keperawatan Angkatan Udara', 'PNS', 'Jakarta/ 16 Mei 1987'),
('SD0196', '202402001', '202402001', 'KAUTSAR', 'Jakarta', '2018-01-12', 'L', '1SD', 15, '2024', 'KAUTSAR', '1A', '14.5 kg', '110 cm', '', 'Vila Jaka Setia C16, RT. 05 RW. 16, Jakasetia, Bekasi Selatan 17147', '', '082125760320', 'harimansadewa@gmail.com', 'Hariman Sadewa', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 16 April 1992', 'Aisyah Nasiri', 'S1', '', 'Ponorogo, 8 Des 1991'),
('SD0197', '202402002', '202402002', 'KEN RASKI DAMARIO', 'Bekasi', '2018-04-07', 'L', '1SD', 15, '2024', 'KEN', '1A', '16 kg', '109 cm', '', 'Jl. Rawa Semut 2 No. 46 RT02 RW13 Jati Asih, Bekasi', '', '082124932313', 'why.novianto@gmail.com', 'Wahyu Novianto Kristiono', 'S1', 'PNS', 'Jakarta, 11 Mei 1980', 'Ani Indri Astuti', 'S1', '', 'Jakarta, 17 Jan 1980'),
('SD0198', '202402003', '202402003', 'BIMANTARA KHALIF IBRAHIM', 'Bekasi', '2018-01-20', 'L', '1SD', 13, '2024', 'BIMA', '1A', '18 kg', '120 cm', '', 'villa pekayon A3 No12', '', '081393392811', 'ajengrosalyne@gmail.com', 'Alifia Rahman', 'S1', 'KARYAWAN SWASTA', 'Jember, 3 Nov 1986', 'Ajeng illastria', 'S2', 'PNS', 'Mojokerto, 20 Jan 1987'),
('SD0199', '202402004', '202402004', 'ARKANA HANIF SHAGUFTA', 'Bekasi', '2017-07-22', 'L', '1SD', 14, '2024', 'ARKA', '1A', '20kg', '120cm', '', 'Jln. MerpatiPos A24 Rt 002/009 Jakamulya Bekasi Selatan 17146', '', '085716226333', 'carolynaranty@gmail.com', 'Fahmi Arie Sidharta', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 21 Nov 1978', 'Ranty Carolyna', 'SMA', '', 'Bandung, 2 Sept 1983'),
('SD0200', '202402005', '202402005', 'AISYAH GHANIYA ALMAIRA', 'Jakarta', '2017-05-18', 'P', '1SD', 13, '2024', 'AISYAH', '1A', '', '', '', 'jl.taman agave V, blok M6/27, taman galaxy, kel.jakasetia, bekasi', '', '08159653394', 't.jombang@gmail.com', 'Tedi Jombang Nugraha', 'S1', 'KARYAWAN SWASTA', 'Padang, 30 Maret 1979', 'Pipit Anasthasia', 'S1', '', 'P.Berandan, 11 Feb 1978'),
('SD0201', '202402006', '202402006', 'ARSYILA GHAIDA AZKADINA', 'Jakarta', '2017-05-18', 'P', '1SD', 15, '2024', 'ARSYILA', '1A', '', '', '', 'Jl taman agave V, Blok M6/27, taman galaxy, kel. Jakasetia, bekasi', '', '08159653394', 't.jombang@gmail.com', 'Tedi Jombang Nugraha', 'S1', 'KARYAWAN SWASTA', 'Padang, 30 Maret 1979', 'Pipit Anasthasia', 'S1', '', 'P.Berandan, 11 Feb 1978'),
('SD0202', '202402007', '202402007', 'KAMILA AMANI', 'Bekasi', '2017-08-23', 'P', '1SD', 14, '2024', 'KAMILA', '1A', '', '', '', 'Jl Delta Barat VII no B52', '', '081290439802', 'farhana.hkm@gmail.com', 'Afan Miqdad', 'S1', 'KARYAWAN SWASTA', 'Cilacap, 11 Sept 1985', 'Farhanah', 'D3', '', 'Jakarta, 16 Feb 1993'),
('SD0203', '202402008', '202402008', 'UWAIS HAMIZAN SYAFIQ', 'Bekasi', '2017-09-10', 'L', '1SD', 14, '2024', 'ABANG UWAIS', '1A', '', '', '', 'Jln. Gurame 5 No. 305 RT. 06/07 Kel. Kayuringin Jaya Kec. Bekasi Selatan', '', '085294779336', 'rohimat2404@gmail.com', 'Rohimat', 'S1', 'KARYAWAN SWASTA', 'Sumedang, 24 April 1980', 'Hilda', 'S1', 'PNS', 'Jakarta, 14 Des 1983'),
('SD0204', '202402009', '202402009', 'NADIEM BENYAMIN', 'Bekasi', '2018-01-18', 'L', '1SD', 14, '2024', 'NADIEM', '1A', '', '', '', 'Jl. Pondok Jingga Mas 7 blok R3/11 Perum Pondok Timur Mas Galaxy, Jaka Setia, Bekasi Selatan 17147', '', '0811222977', 'ambarsari.feny@gmail.com', 'Bima Yogie Purnama', 'S2', '', 'Bekasi, 15 Des 1990', 'Feny Ambarsari', 'S1', 'WIRASWASTA', 'Bekasi, 3 Feb 1991'),
('SD0205', '202402010', '202402010', 'AMIRA AZZAHRA KIMBERLITE', 'Jakarta', '2017-11-07', 'P', '1SD', 15, '2024', 'AMIRA / KIM', '1A', '', '', '', 'Jl Utama 3 BK 19 Kemang Pratama 1 Bekasi', '', '08111554564', 'onal_05@yahoo.com', 'Ir. Ontowiryo Alamsyah Dipl Geoth Tech', 'S2', 'KARYAWAN SWASTA', 'Yogyakarta, 12 mei 1967', 'Vera Melinda Sos.', 'D3', 'WIRASWASTA', 'Jakarta, 2 Juni 1972'),
('SD0206', '202402011', '202402011', 'QIANA NAFIAH MUSHABIRA', 'BEKASI', '2017-11-12', 'P', '1SD', 13, '2024', 'QIANA', '1A', '', '', '', 'JL.MANGGIS RAYA, NO.444, PERUMAHAN DUREN JAYA, BEKASI TIMUR', '', '089646699994', 'fikri77.fm@gmail.com', 'MUHAMMAD FIKRI MUZAKKY', 'S2', 'KARYAWAN SWASTA', 'KANDANGAN, 22 April 1994', 'LUTFIA NISWATUL KHASANAH', 'D3', '', 'JAKARTA, 25 Agust 1992'),
('SD0207', '202402012', '202402012', 'MUHAMMAD SABIQ KHAIRUL', 'Jakarta', '2017-09-09', 'L', '1SD', 15, '2024', 'SABIQ', '1A', '', '', '', 'Jl.pulo sirih timur 6 blok cb no.175 perum taman galaxy indah, Bekasi Selatan', '', '087887336292', 'tanyakaromi99@gmail.com', 'Ali karomi', 'SMA', 'WIRASWASTA', 'Jakarta, 4 April 1991', 'Kamia', 'S1', '', 'Bekasi, 6 Juni 1994'),
('SD0208', '202402013', '202402013', 'MUHAMMAD SALMAN ALFATIH', 'Bekasi', '2017-10-28', 'L', '1SD', 13, '2024', 'SALMAN', '1A', '', '', '', 'Jl. Taman Sikas I B I no. 9 , taman galaxy bekasi', '', '081287807848', 'nuraver.kylla@gmail.com', 'Haryo Tetuko', 'S1', 'WIRASWASTA', 'Tj. Enim, 16 April 1988', 'Nuraver keela', 'SMA', '', 'Bandung, 20 Nov 1987'),
('SD0209', '202402014', '202402014', 'AZKA TSAQIF ALBANI', 'Jakarta', '2017-09-18', 'L', '1SD', 15, '2024', 'AZKA', '1A', '', '', '', 'Jl. H. Hanafi RT 13 RW 02 No. 11 Kel. Pondok Bambu, Kec. Duren Sawit - Jakarta Timur', '', '081315902512', 'banifitriyah@gmail.com', 'Agus Sahbani', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 7 Feb 1977', 'Maryam Fitriyah', 'S1', 'WIRASWASTA', 'Tegal, 7 Mei 1984'),
('SD0210', '202402015', '202402015', 'AQEELA CEISYA HAFIZHAH ARIEF', 'Jakarta', '2017-09-28', 'P', '1SD', 15, '2024', 'CEISYA', '1A', '', '', '', 'Villa Jaka Setia Blok K No 8', '', '082299966651', 'muh.arieff7@gmail.com', 'Muhammad Arief', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 25 July 1984', 'Jihan', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 11 Des 1989'),
('SD0211', '202402016', '202402016', 'MUHAMMAD ARSHAD UWAIS HILABI', 'Jakarta', '2017-05-24', 'L', '1SD', 13, '2024', 'UWAIS HILABI', '1A', '', '', '', 'Jl. Lembah Pinang III Blok i10 No. 12 Pondok Kelapa, Jakarta Timur', '', '081312206891', 'hilman.ismail20@gmail.com', 'Hilman Ismail Hilabi', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 20 April 1991', 'Raifa Dwinanti', 'S1', 'WIRASWASTA', 'Bandung, 1 Sept 1991'),
('SD0212', '202402017', '202402017', 'MUHAMMAD FAQIH ALMA MUQODDAM', 'Bekasi', '2017-11-27', 'L', '1SD', 15, '2024', 'FAQIH', '1A', '', '', '', 'Perumahan Pesona Metropolitan, Cluster Botania 2, Blok E no.23, Kel Bojong Rawalumbu, Kec Rawalumbu,Kota Bekasi', '', '081293555354', 'aliza.pooh@yahoo.com', 'Gema Vikossa', 'S1', '', 'Jakarta, 24 Feb 1985', 'Aliza Ramadhani Putriana', 'S1', '', 'Indramayu, 5 Jan 1988'),
('SD0213', '202402018', '202402018', 'UWAIS ABQARIZAYAN KINAYUNG', 'Bekasi', '2017-10-10', 'L', '1SD', 15, '2024', 'MAS UWAIS', '1A', '', '', '', 'Jalan Pelabuhan Ratu no.56 Pengasinan Rawalumbu Kota Bekasi 17115', '', '081284060054', 'wikrama.ananta@gmail.com', 'Anantawikrama Unggul Kinayung', 'S1', 'WIRASWASTA', 'Semarang, 3 Des 1987', 'Rachmayanti Nurfadila', 'S1', '', 'Bekasi, 24 Juni 1993'),
('SD0214', '202402019', '202402019', 'AZKARIAN FADILLAH', 'Jakarta', '2017-07-05', 'L', '1SD', 13, '2024', 'AZKARIAN', '1A', '', '', '', 'Komplek greenview Blok D 50', '', '081380008431', 'deni.maturian@Gmail.com', 'DENY MATURIAN', 'S1', 'WIRASWASTA', 'Rumbai, 30 Mar 1984', 'ANA OKTORA', 'S2', '', 'Solok, 10 Juli 1982'),
('SD0215', '202402020', '202402020', 'ASHALINA MAUZA NAFEESA ASSAD', 'Bekasi', '2017-12-05', 'P', '1SD', 13, '2024', 'ASHA', '1A', '', '', '', 'Jl. Cendana Raya No.16, Jaka Permai, Kel. Jakasampurna, Bekasi Barat 17145', '', '08118818787', 'muh.assad@gmail.com', 'Muhammad Assad', 'S2', 'WIRASWASTA', 'Jakarta, 16 Jan 1987', 'Afra Nurina Amarilla', 'S2', 'WIRASWASTA', 'Tarakan, 01 Juni 1988'),
('SD0216', '202402021', '202402021', 'MUHAMMAD LUQMAN SALIM', 'Klaten', '2018-02-24', 'L', '1SD', 14, '2024', 'LUQMAN', '1A', '', '', '', 'Jl.Arjuna 4 no.139 jakasetia bekasi selatan', '', '081298724716', 'suksessyam@yahoo.com', 'Agus salim', 'SMA', 'KARYAWAN SWASTA', 'Purworejo, 8 Mar 1987', 'Nursyam', 'SMA', '', 'Klaten, 20 Mar 1991'),
('SD0217', '202402023', '202402023', 'KHAIREEN HAFIZA SULTANSYAH', 'Bekasi', '2018-02-04', 'P', '1SD', 15, '2024', 'KHAIREEN', '1A', '', '', '', 'Jatibening 2 , Bekasi', '', '082213606865', 'rizkiturki@gmail.com', 'Rizki Apriansyah', 'S1', '', 'Jakarta, 17 April 1992', 'Dheanita Tribuana', 'S1', '', 'Jakarta, 8 April 1991'),
('SD0218', '202402024', '202402024', 'ARSYILA HANUM RAHMADINA', 'Jakarta', '2017-09-15', 'P', '1SD', 14, '2024', 'HANUM', '1A', '', '', '', 'Jl. Nangka 4 No. 5 RT 004 RW 005. Kota Baru. Bekasi Barat. Bekasi. Jawa Barat', '', '082138798686', 'indahpw88@gmail.com', 'Devi Henri Wibowo', 'S1', 'KARYAWAN SWASTA', 'Pekalongan, 26 Okt 1988', 'Indah Purnamasari Wulanti', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 9 Agust 1988'),
('SD0219', '202402025', '202402025', 'MUHAMMAD ZAYD ZULKIFLI', 'Jakarta', '2018-06-26', 'L', '1SD', 13, '2024', 'ZAYD', '1A', '', '', '', 'jl. Kemang Utara C no.4 Bangka, Mampang Prapatan, Jakarta Selatan 12710', '', '081318391315', 'raynugraha@gmail.com', 'Ray Zulham Farras Nugraha', 'S1', 'WIRASWASTA', 'Jakarta, 29 Mar 1993', 'Milka Anisya Norasiya', 'S1', '', 'Jakarta, 11 April 1991'),
('SD0220', '202402026', '202402026', 'KALILA KHANSAIRA', 'Jakarta', '2017-10-18', 'P', '1SD', 13, '2024', 'KALILA', '1A', '', '', '', 'Perumahan Jatibening Estate,  Jl. Kutilang II Blok G9 No.4 Jatibening, Pondok Gede  Bekasi Barat - 17412', '', '081212797092', 'annisa.anggraini10@gmail.com', 'Muhamad Rizki Fajar', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 8 Agust 1990', 'Annisa Anggraini', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 10 Okt 1992'),
('SD0221', '202402027', '202402027', 'AKHDAN ZIYAD AZHAR', 'Garut', '2017-02-27', 'L', '1SD', 14, '2024', 'ZIYAD', '1A', '', '', '', 'Jl sentosa IIIA blok N 11 perum bukit kencana, jatimakmur pondokgede kota Bekasi', '', '081280601987', 'ayuakbaririzky@gmail.com', 'Mohammad Fahrul Adzami', 'S1', 'KARYAWAN SWASTA', 'JAKARTA, 6 Okt 1987', 'Rizky Ayu Akbari', 'S1', '', 'GARUT, 28 Okt 1992'),
('SD0222', '202402032', '202402032', 'Abizard Ismail Ali', 'Bekasi', '2017-09-20', 'L', '1SD', 14, '2024', 'Abizard', '1A', '', '', '', 'Komplek pemda Jl kresna No 41 Rt 01 Rw 01 Jatiasih Bekasi', '', '081317802059', 'Ritha_2989@yahoo.com', 'Yandi Arnaz', 'S1', '', 'Depok, 19 April 1988', 'Rita Hartati', 'S1', '', 'Jakarta, 29 Maret 1989'),
('SD0223', '202402033', '202402033', 'Muhammad Atthallah Alghifary', 'Bekasi', '2017-08-18', 'L', '1SD', 13, '2024', 'Atthallah', '1A', '', '', '', 'citra asri townhouse No 6 Sepanjang Jaya Rawalumbu', '', '082114411009', 'regina14.ra@gmail.com', 'Danang Triatmojo', 'S1', 'KARYAWAN SWASTA', 'Gunung Kidul, 23 Jan 1991', 'Regina ayu', 'S1', '', 'Bandung, 14 Maret 1991'),
('SD0224', '202402034', '202402034', 'Aisyah Khumaira Putri Apsanra', 'Bukittinggi', '2017-07-15', 'P', '1SD', 15, '2024', 'Aisyah', '1A', '', '', '', 'Komplek Depnaker taman wisma asri jalan merak 1 blok K27 no.12A Tekuk Pucung Bekasi Utara', '', '081386825912', 'amieamo3@gmail.com', 'Ikhsan Pramana', 'S1', 'KARYAWAN SWASTA', 'Padang', 'Rahmi Hayati', 'D4', '', 'Bukittinggi, 23 juli 1987'),
('SD0225', '202402029', '202402029', 'SUTAN AVERROES ZAHRI', 'Komplek Pondok Timur', '2017-07-30', 'L', '1SD', 13, '2024', 'AVERROES', '1A', '', '', '', 'Komplek Pondok Timur Mas jl Pondok Jingga Mas IV blok E 2 no 23, Jaka Setia, Bekasi Selatan', '', '081230030526', 'bentom002jk@gmail.com', 'Berlianto Haris', 'S2', 'KARYAWAN SWASTA', 'Padang, 26 Mei 1985', 'Sukma Faizah', 'S1', '', 'Medan, 12 April 1989'),
('SD0226', '202402030', '202402030', 'RAYYAN AHSANI RUSYDAN', 'Jakarta', '2017-12-28', 'L', '1SD', 14, '2024', 'RAYYAN', '1A', '', '', '', 'Cluster Taman Firdausi no 3 jl Kemangsari 1 Jatibening', '', '081311502036', 'neorat82@gmail.com', 'Daryatno Subekti', 'S1', '', 'Mataram, 17 Agust 1982', 'Indah Susanti', 'S1', '', 'Magelang, 23 Desember 1990'),
('SD0227', '202402031', '202402031', 'ALVARO RAFAIZAN RAHMAN', 'Tangerang', '2017-02-12', 'L', '1SD', 14, '2024', 'ALVARO', '1A', '', '', '', 'Perumahan Bintara Jaya 2 Blok A 85D, jl. Anjasmoro. Bekasi Barat', '', '081319855141', 'andirahman81@gmail.com', 'Andi Rahman', 'S2', 'WIRASWASTA', 'Jakarta, 8 Okt 1981', 'Lia Khairunnisa', 'S1', 'WIRASWASTA', 'Jakarta, 6 Nov 1990'),
('SD0228', '202402035', '202402035', 'Athoullah Hafizh Afandy', 'Jakarta', '2018-03-02', 'L', '1SD', 15, '2024', 'Atha', '1A', '', '', '', 'Jl. Rawa selatan buntu no.17 Rt.018/004. Jakpus', '', '081291999068', 'reza.afandy@gmail.com', 'Reza Afandy bustaman', 'S2', '', 'Samarinda, 2 Jan 1977', 'Maya Indah Purwati', 'S1', '', 'Jakarta, 28 Mei 1983'),
('SD0229', '202402036', '202402036', 'Adnan Mauza Ramadhan', 'Jakarta', '2023-11-06', 'L', '1SD', 15, '2024', 'Adnan', '1A', '', '', '', 'Vila jakasetia rt 05 rw 16 blok A3', '', '083896614703', 'irmantoman65@gmail.com', 'irmanto', 'SD', 'KARYAWAN SWASTA', 'Tegal, 5 Juli 1989', 'Khaerunisa', '', '', 'Pemalang, 25 Feb 1983'),
('SD0230', '202402037', '202402037', 'Aqueena Khairatun Hisan', 'Bekasi', '2017-07-11', 'P', '1SD', 14, '2024', 'Aqueena', '1A', '', '', '', 'Cluster Mustika Village No. 30 Mustikajaya Bekasi', '', '085716945788', 'dananhadi.sugiyono@gmail.com', 'Danan Hadi', 'D3', 'PNS', 'Jakarta, 23 Juli 1987', 'Tri Astuti', 'S1', '', 'Bekasi, 18 Juli 1986'),
('SD0231', '202402038', '202402038', 'Zahid Sabiq', 'Bekasi', '2017-06-04', 'L', '1SD', 14, '2024', 'Zahid', '1A', '', '', '', 'Jln. Platuk k4 no.4 bumi makmur 4, jati makmur, pondok gede, bekasi, 17413', '', '601136254919', 'hamasahazmi@gmail.com', 'Gibran Habib', 'S1', '', 'Bandung, 12 Oktober 1984', 'Hamasah Azmi', 'S1', '', 'Jakarta, 31 Des 1989'),
('SD0232', '202402039', '202402039', 'Yasmin shahia Rizky', 'Jakarta', '2017-03-30', 'P', '1SD', 13, '2024', 'Yasmin', '1A', '', '', '', 'jl swadaya 3 no. 78A rt 008 rw 001 jaticempaka, pondokgede, Bekasi', '', '081368997100', 'karimahbugrie@gmail.com', 'Rizky Romansyah', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 1 Nov 1987', 'Karimah Jaafar Bugri', 'S1', '', 'Jeddah, 19 Nov 1989'),
('SD0233', '202402040', '202402040', 'Maryam Tazkiya Khaidir', 'Bekasi', '2018-09-03', 'P', '1SD', 14, '2024', 'Maryam', '1A', '', '', '', 'Cluster Denaya Safa Marwah unit omera 3', '', '081290002913', 'arfaniaticahya@yahoo.co.id', 'Ahmad Khaidir', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 13 Agust 1986', 'Arfaniati Cahya Amran', 'S1', 'WIRASWASTA', 'Jakarta, 7 April 1987'),
('SD0234', '202402041', '202402041', 'Rafif Abqary Eryandi', 'Jakarta', '2018-04-19', 'L', '1SD', 15, '2024', 'Rafif', '1', '', '', '', 'Perumahan Pondok Timur Mas, Jl. Pondok Jingga Mas IV, Blok E2, No.20, RT.005/RW.013, Kel. Jaka Setia, Kec. Bekasi Selatan, Kota Bekasi, Jawa Barat', '', '085766060194', 'ekarahmi.erk1592@gmail.com', 'Febriyandi', 'S1', 'KARYAWAN SWASTA', 'Tapan, Sumatera Barat, 24 Feb 1992', 'Eka Rahmi Kahar', 'S2', '', 'Talang, Sumatera Barat, 15 Nov 1992'),
('SD0235', '202402042', '202402042', 'Barkha Ahmad Mishary', 'Bekasi', '2017-06-12', 'L', '1SD', 15, '2024', 'Barkha', '1', '', '', '', 'PTM blok G2 no 1 A', '', '082114422440', 'mymyirhami@gmail.com', 'Muhammad Donny Satriawan', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 10 Mei 1979', 'Irhami', 'S1', '', 'Lhokseumawe, 26 juli 1989'),
('SD0236', '202402043', '202402043', 'Muhammad Ichsan Atharrayhan', 'Jakarta', '2017-10-16', 'L', '1SD', 14, '2024', 'Ichsan', '1', '', '', '', 'Casa Alaia Residence blok c no 32, jakasampurna, bekasi', '', '081297841932', 'bilalmuhammad9394@gmail.com', 'Muhammad Bilal', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 3 Sept 1994', 'Ila Wati', 'S1', 'WIRASWASTA', 'Banyumas, 2 Nov 1995'),
('SD0237', '202402044', '202402044', 'Lashira Alzan Mafaza', 'Jakarta', '2018-07-21', 'P', '1SD', 15, '2024', 'Lashira', '1', '', '', '', 'Pondok Pekayon Indah Jl. Pakis Raya Barat Blok AA8 No14B. Kel. Pekayon Jaya Kecamatan. Bekasi Selatan', '', '08118163314', 'rizha.sakinah@gmail.com', 'Bimo Setyoagung Pribadi', 'S2', 'KARYAWAN SWASTA', 'Jakarta, 3 Okt 1985', 'Rizha Sakinah', 'S1', 'WIRASWASTA', 'Jakarta, 18 April 1990'),
('SD0238', '202402045', '202402045', 'Zaidah Arzaq Ismono', 'Bekasi', '2017-05-20', 'P', '1SD', 13, '2024', 'Zaidah', '1', '', '', '', 'Jl Padang Raya Bok F228 Perumahan Masnaga Raya Jakamulya Bekasi Selatan 17146', '', '081316265159', 'verianvii@gmail.com', 'Indra verian ismono', 'S2', 'WIRASWASTA', 'Kudus, 19 Feb 1972', 'Citra Ayu Mustika', 'S1', 'WIRASWASTA', 'Bekasi, 21 Nov 1990'),
('SD0239', '202402046', '202402046', 'Ayla Tri Rahman Safitri', 'Bekasi', '2017-07-26', 'P', '1SD', 15, '2024', 'Ayla', '1', '', '', '', 'Kp.jati RT 02/03 Ds.Burangkeng Setu-Bekasi bekasi', '', '085775840338', '', 'Agus Rahman', 'SMA', 'WIRASWASTA', 'Jakarta, 10 Juni 1980', 'Iyes Safitri', 'SMA', '', 'Bekasi, 17 Juli 1983'),
('SD0240', '202402047', '202402047', 'Dinanti Amira Mahya', 'Bekasi', '2017-07-10', 'P', '1SD', 13, '2024', 'Dinanti', '1', '', '', '', 'Jl. Palem Timur II Blok CC 18 No.15 PPI Kel. Pekayon Jaya Kec. Bekasi Selatan', '', '085693451414', 'ramalia.desima@yahoo.co.id', 'Anugrah Adityayuda', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 14 April 1989', 'Desima Ramalia', 'S1', 'KARYAWAN SWASTA', 'Palembang, 12 Okt 1990'),
('SD0241', '202402048', '202402048', 'Farzana khairia syamskrida', 'Jakarta', '2017-02-11', 'P', '1SD', 14, '2024', 'Farzana', '1', '', '', '', 'Mayang 3C blok AG 3 no 2', '', '081288880280', 'krida.patty@gmail.com', 'Putut krida patty', 'S1', 'WIRASWASTA', 'Jakarta, 22 Mar 1985', 'Nur syamsiah', 'D3', '', 'Jakarta, 24 Mei 1985'),
('SD0242', '202402049', '202402049', 'Muhammad Rayyan Putra Lutfi', 'Bekasi', '2017-11-25', 'L', '1SD', 13, '2024', 'Rayyan', '1', '', '', '', 'Perumahan Angkasa puri Jalan Kedondong Blok A6 no 9 Jatiasih', '', '081296650656', 'anissatricahyani@gmail.com', 'Habib Lutfi Suhermanto', 'S1', 'POLRI', 'Banyumas, 6 Jan 1989', 'Anissa Tricahyani', 'D3', '', 'Jakarta, 29 Feb 1992'),
('SD0245', '202402051', '202402051', 'Ru\'afi Bassam Abqary', 'Bekasi', '2017-09-26', 'L', '1SD', 13, '2024', 'Ru\'afi atau Ru', '1', '', '', '', 'Jl. Swatantra 1 kav.2 no.21 rt.09 rw.05 Jatiasih, Kota Bekasi 17424', '', '082233441426', 'fenyo27@gmail.com', 'Fahad Asy\'arie (almarhum)', 'S1', 'PNS', 'Tangerang, 25 April 1988', 'Feny Oktaria Dwicahyani', 'S1', 'PNS', 'Bekasi, 14 Okt 1990'),
('SD0246', '202402022', '202402022', 'MALIQA RIZHANI HANANDITA', 'Bekasi', '2017-09-15', 'P', '1SD', 14, '2024', 'IZZA', '1', '', '', '', 'Pondok Ungu Permai Blok KK 2 no 2 Bekasi Utara 17125', '', '08175453618', 'dimasanggoro21@gmail.com', 'Dimas Anggoro Hanandita', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 21 juli 1986', 'Rizky Amelia', 'S1', 'KARYAWAN SWASTA', 'Ambon, 5 Sept 1990'),
('SD0247', '202402052', '202402052', 'Ahmad Umar Hadi', 'Kuala Lumpur', '2018-03-02', 'L', '1SD', 14, '2024', 'Umar', '1', '', '', '', 'Komp. Dephan Mabes TNI Blok K-303, RT/RW : 006/018, Jatimakmur, Pondok gede', '', '08119109109', 'bambang. iwan91@gmail.com', 'Iwan Bambang Setiawan', 'S1', 'TNI', 'Jakarta, 14 Oktober 1968', 'Neng Fatimah', '', '', 'Purwakarta, 3 November 1980'),
('SD0248', '202402053', '202402053', 'Muhammad Afkar Al Fathir', 'Bekasi', '2017-12-11', 'L', '1SD', 13, '2024', 'Afkar', '1', '', '', '', 'Komp. Barata Jl. Cempaka No.234 Rt.01 Rw.06 Harapan Jaya Bekasi Utara', '', '082122919104', 'ramziegunawan@gmail.com', 'Muchamad Ramzie Gunawan', 'D3', 'WIRASWASTA', 'Tangerang, 18 Maret 1991', 'Mahda Dini Pradiqsya', 'D3', '', 'Bekasi, 18 Nov 1991'),
('SD0249', '202402054', '202402054', 'OEMAR BASSAM HANIF', 'Jakarta', '2018-04-19', 'L', '1SD', 13, '2024', 'OEMAR BASSAM', '1', '', '', '', 'Jl Bougenville 5 Blok F1 No.20 Kemang Pratama 3', '', '', '', 'Oemar Mita', 'S1', '', 'Kudus, 14 Mei 1979', 'Febrianti Hanoum', '', '', 'Jakarta, 24 Februari 1985'),
('SD0250', '202402055', '3134143662', 'AHMAD YUSRAN AL HADY', 'JAKARTA', '2014-07-17', 'L', '5SD', 22, '2024', 'YUSRON', '5 A', '', '', '', 'BUMI MUTIARA BLOK JF8 NO 17 RT 2 RW 30 BOJONG KULUR, GUNUNG PUTRI, BOGOR, JAWA BARAT', '', '0817711676', '', 'ANDRE RUSDIANTO', 'S1', 'KARYAWAN SWASTA', 'Jogjakarta, 11 Juni 1976', 'HIZRAH MUSTIKA', 'D3', 'IRT', 'Jakarta, 25 Februari 1985'),
('SD0251', '202402056', '0139390856', 'ANUGRAH ZAHRAN ELFATA', 'PARIAMAN', '2013-09-27', 'L', '5SD', 22, '2024', 'ZAHRAN', '5 A', '', '', '', 'VILLA RIZKI ILHAMI BLOK E1 NO 5 KEL.BOJONGNANGKA KEC.KELAPA DUA KAB.TANGERANG', '', '081363797729', '', 'M.TAUFIK', 'S2', 'DOSEN', 'Toboh, 02 September 1983', 'ELFA SILFIANA AMIR', 'S2', 'WIRAUSAHA', 'Pariaman, 06 Oktober 1988'),
('SD0252', '202402057', '0124644886', 'AYESHA ALTHOFUNNISA ASYARI', 'BEKASI', '2012-11-07', 'P', '5SD', 23, '2024', 'AYESHA', '5 B', '', '', '', 'PONDOK TIMUR MAS (PTM), JL. PONDOK MAS RAYA, BLOK A, NO. 5, RT 09, RW 13, KEL. JAKASETIA, KEC. BEKASI SELATAN, 17147.', '', '085720123381', '', 'ABUNG ASYARI', 'S2', 'DOSEN', 'Cibinong, 31 Maret 1981', 'INGRID LARASATI AGUSTINA', 'S3', 'DOSEN', 'Jakarta, 21 Januari 1983'),
('SD0253', '202402058', '3136379390', 'HILMY ATALLAH ZAEL', 'BEKASI', '2013-09-04', 'L', '5SD', 22, '2024', 'HILMY', '5 A', '', '', '', 'JL. KEMANG PRATAMA 5 BLOK BM 15', '', '08127936273', '', 'MUHAMMAD ZAIEM', 'S1', 'DOKTER', 'Bandung, 23 September 1982', 'ELVIRA', 'S1', 'IRT', 'Bukittinggi, 03 Januari 1984'),
('SD0254', '202402059', '3137812290', 'KEISHA ZAFIRA ARDIANSYAH', 'SEKAMPUNG', '2013-10-23', 'P', '5SD', 23, '2024', 'KEISHA', '5 B', '', '', '', 'DUSUN IV PASAR RT/RW 012/005 SUMBERGEDE, SEKAMPUNG LAMPUNG TIMUR', '', '081273023869', '', 'ARDI ANSYAH', 'S1', 'KARYAWAN SWASTA', 'Lampung Tengah, 22 Juli 1990', 'DIAN PUSPITASARI', 'S2', 'KARYAWAN SWASTA', 'Balerejo, 01 Januari 1970'),
('SD0255', '202402060', '3143990917', 'MOCHAMMAD RIZKY AL FATIH', 'TANGERANG', '2014-01-23', 'L', '5SD', 22, '2024', 'AL', '5 A', '', '', '', 'PERUMAHAN SERPONG GARDEN 1 CLUSTER GREEN BERMIS BLOK G1 NO. 8, CISAUK, KAB. TANGERANG', '', '081311350888', '', 'MOCHAMMAD CHOLIQ', 'SMA', 'PENSIUNAN', 'Malang, 14 Juni 1967', 'SRI HIDAYATI', 'S1', 'IRT', 'Malang, 28 Juni 1970'),
('SD0256', '202402061', '3147911361', 'MUHAMMAD ALFATIH', 'BOGOR', '2014-01-05', 'L', '5SD', 22, '2024', 'FATIH', '5 A', '', '', '', 'JL GADING RAYA II NO:17 005/010', '', '081285459005', '', 'RICO', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 02 Oktober 1985', 'EVA PURNAMA SARI', 'S1', 'IRT', 'Jakarta, 07 September 1986'),
('SD0257', '202402062', '3142553294', 'UWAIS ALWI HAKIM BUDIONO', 'METRO', '2014-02-21', 'L', '5SD', 22, '2024', 'UWAIS', '5 A', '', '', '', 'PURWOREJO KOTAGAJAH LAMPUNG TENGAH', '', '081279797700', '', 'SINGGIH BUDIONO', 'S1', 'WIRAUSAHA', 'Kotagajah, 13 Agustus 1979', 'IRAWATI CITRA KARTIKASARI', 'S1', 'WIRAUSAHA', 'Metro, 29 Juli 1982'),
('SD0258', '202402063', '2122010247', 'ADISHA CHEZNA HAYFA', 'BEKASI', '2015-09-12', 'P', '4SD', 21, '2024', 'ADISHA', '4 B', '', '', '', 'CLUSTER MUSTIKA VILLAGE NO. 30 MUSTIKAJAYA BEKASI', '', '085716945788', '', 'DANAN HADI', 'D3', 'PNS', 'Jakarta, 23 Juli 1987', 'TRI ASTUTI', 'S1', 'WIRAUSAHA', 'Bekasi, 18 Juli 1986'),
('SD0259', '202402064', '23240018', 'ARIQAH SALMIYA QISTHY', 'JAKARTA', '2015-10-07', 'P', '4SD', 21, '2024', 'QISTHY', '4 B', '', '', '', 'TAMAN BOUGENVILLE ESTATE JALAN BOUHINIA 1 BLOK B2/2 CAMAN-JATIBENING-BEKASI', '', '081388888065', '', 'ARI WIBOWO, ST', 'S1', 'KARYAWAN SWASTA', 'Purworejo, 25 Agustus 1980', 'ARIFAH FITRIARDINI, DRG', 'S1', 'IRT', 'Jakarta, 01 Juni 1987'),
('SD0260', '202402065', '3149374408', 'ASHRAF RAIS ALKHALIFI', 'BEKASI', '2014-08-13', 'L', '4SD', 20, '2024', 'ASHRAF', '4 A', '', '', '', 'JL PULO SIRIH UTAMA BLOK A1 NO.21 GALAXY BEKASI SELATAN', '', '085779744504', '', 'IDAM BARIYANTO', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 24 Oktober 1984', 'LESLY ROSSA', 'S1', 'IRT', 'Tembagapura, 04 Oktober 1983'),
('SD0261', '202402066', '0159963513', 'ASIYAH BATRISYIA RAFANI', 'JAKARTA', '2015-05-15', 'P', '4SD', 21, '2024', 'ASIYAH', '4 B', '', '', '', 'PONDOK MAS TIMUR BLOK C 2 NO 7', '', '081264200178', '', 'M EDY KARYANTO', 'S1', 'TNI', 'PEMALANG, 21 Mei 1978', 'PRIMA NIKA HELSIS', 'S1', 'IRT', 'PADANG, 07 September 1982'),
('SD0262', '202402067', '0141203513', 'DANISH AHZA SYAMSKRIDA', 'JAKARTA', '2014-11-28', 'L', '4SD', 20, '2024', 'DANISH', '4 A', '', '', '', 'JLN MAYANG 3C BLOK AG 3 NO 2', '', '081288880280', '', 'PUTUT KRIDA PATTY', 'S1', 'WIRAUSAHA', 'Jakarta, 01 Januari 1970', 'NUR SYAMSIAH', 'S1', 'WIRAUSAHA', 'Jakarta, 01 Januari 1970'),
('SD0263', '202402068', '0159671029', 'KHIRANZA NABILA AZZAHRA', 'JAKARTA', '2015-03-25', 'P', '4SD', 21, '2024', 'KHIRANZA', '4 B', '', '', '', 'KOMPLEK BINAMARGA 1 BLOK BB3 NO. 6 RT. 005/ RW. 001', '', '081288881801', '', 'EDI SETYANTO', 'S1', 'KARYAWAN SWASTA', 'Jakarta, 21 September 1982', 'NIKEN WULAN SUCI', 'S1', 'PNS', 'Jakarta, 02 Juni 1984'),
('SD0264', '202402069', '3151117955', 'MALIKA AYUNINDYA ARRIZQI', 'BEKASI', '2015-08-20', 'P', '4SD', 21, '2024', 'MALIKA', '4 B', '', '', '', 'PERUMAHAN KARANG SATRIA GREEN RESIDEN 2 BLOK A3 NO 1', '', '081310987545', '', 'RESTU HARYWIBOWO', 'S2', 'KARYAWAN SWASTA', 'Jakarta, 20 Januari 1985', 'NURDJAMIYATI', 'D3', 'WIRASWASTA', 'Jakarta, 25 September 1984'),
('SD0265', '202402070', '202401349', 'MUHAMMAD ABDULLAH ZAID', 'BANDAR LAMPUNG', '2013-09-13', 'L', '4SD', 20, '2024', 'ZAID', '4 A', '', '', '', 'DESA SUKARAJA KEC: BUAY MADANG, KAB: OKU TIMUR, SUMATERA SELATAN', '', '081367076337', '', 'SASTRA SEPRI JAYADI', 'SMA', 'WIRAUSAHA', 'Baturaja, 20 September 1987', 'NOVI YUNITA', 'S1', 'IRT', 'Cipta Muda, 10 Juni 1989'),
('SD0266', '202402071', '0157280094', 'MUHAMMAD ABRISAM SYAHIR KHAN', 'JAKARTA', '2015-02-07', 'L', '4SD', 20, '2024', 'KHAN', '4 A', '', '', '', 'PERUMAHAN PURI GADING ALAM RAYA 1BLOJ E1 NO 20 JATIWARNA BEKASI', '', '08119047272', '', 'SYAHRIR', 'S2', 'KARYAWAN SWASTA', 'Medan, 01 September 1972', 'SUNITA', 'SMA', 'IRT', 'Medan, 24 Maret 1978'),
('SD0267', '202402072', '0143770341', 'MUHAMMAD BARA ANDIMESA', 'BEKASI', '2014-12-05', 'L', '4SD', 20, '2024', 'BARA', '4 A', '', '', '', 'JL. NURUL HUDA IV NO. 1 JAKASAMPURNA, BEKASI BARAT, 17137', '', '081910035353', '', 'MUHAMAD TOHIRUDIN', 'S1', 'WIRASWASTA', 'JAKARTA, 13 Maret 1985', 'AMELLA LISMARINA', 'S1', 'KARYAWAN SWASTA', 'KOTA BARU, 14 Juli 1986'),
('SD0268', '202402073', '14594763', 'MUHAMAD GHOZI AL ARQAM', 'BEKASI', '2014-12-11', 'L', '4SD', 20, '2024', 'ARQAM', '4 A', '', '', '', 'CLUSTER KIANA BINTARA BLOK D NO 6 BINTARA JAYA BEKAIS BARAT 17136', '', '081510708767', '', 'HARDIANSYAH PUTRA', 'S1', 'WIRASWASTA', 'Jakarta, 14 Agustus 1989', 'RHADYTIA HANJANI', 'S1', 'IRT', 'Jakarta, 24 April 1989'),
('SD0269', '202402074', '3158350256', 'NAJMAH DA\'IAH FATINAH', 'BEKASI', '2015-04-30', 'P', '4SD', 21, '2024', 'NAJMAH', '4 B', '', '', '', 'JL. MAHONI 17 BLOK D2 NO 2 PONDOK PEKAYON INDAH BEKASI', '', '081389510582', '', 'JAJANG SAEPUL MALIK', 'S1', 'FREELANCE', 'Tasikmalaya, 24 Maret 1983', 'INDAH YULIANTY AMELIA', 'S1', 'GURU', 'Jakarta, 19 Juli 1984'),
('SD0270', '202402075', '0159413045', 'PRINCEZA ZHAFIRA RESVANI', 'JAKARTA', '2015-03-05', 'P', '4SD', 21, '2024', 'CEZA', '4 B', '', '', '', 'JALAN DUKUH V NO 35 RT 2 RW 5 DUKUH KRAMATJATI JAKTIM', '', '081322123481', '', 'RESVANI', 'S2', 'WIRAUSAHA', 'Banda aceh, 04 November 1981', 'CHYNDHIA', 'S1', 'DOKTER UMUM', 'Jakarta, 14 April 1990'),
('SD0271', '202402076', '2122010250', 'SALWA ALFARIZKIA ZANETA', 'BEKASI', '2015-04-10', 'P', '4SD', 21, '2024', 'SALWA', '4 B', '', '', '', 'PERUM GREEN MADANI, JL. PENGASINAN 2 NO.137 RT 2 RW 17, PENGASINAN, RAWALUMBU, BEKASI 17115', '', '081586361981', '', 'FANY PERDANA SIMATUPANG', 'S1', 'KARYAWAN SWASTA', 'Makassar, 14 November 1981', 'RENNY DIAH FARIDASARI', 'S1', 'PEGAWAI BUMN / BUMD', 'Cilacap, 29 November 1987'),
('SD0272', '202402077', '0148826157', 'SHABREEN GYANDEYA MAHAESWARY', 'JAKARTA', '2014-11-21', 'P', '4SD', 21, '2024', 'DEYA', '4 B', '', '', '', 'PERUMAHAN BINTARA ALAM PERMAI JL ALAM UTAMA IV BLOK D NO 7 BINTARA JAYA BEKASI BARAT 17136', '', '081310557128', '', 'PUJO WIDIATNO', 'D3', 'WIRAUSAHA', 'KEBUMEN, 09 Agustus 1981', 'CHIQUITITA HAPSARI', 'S1', 'IRT', 'BEKASI, 03 Oktober 1982'),
('SD0273', '202402078', '3146161994', 'TSANI KAYYISAH ZAEL', 'BUKITTINGGI', '2014-11-07', 'P', '4SD', 21, '2024', 'TSANI', '4 B', '', '', '', 'JL. KEMANG PRATAMA 5 BLOK BM 15', '', '08127936273', '', 'MUHAMMAD ZAIEM', 'S1', 'DOKTER', 'Bandung, 23 September 1982', 'ELVIRA', 'S1', 'IRT', 'Bukittinggi, 03 Januari 1984'),
('SD0274', '202402079', '3156314019', 'ZUBARI AZFAR', 'SHIZUOKA-KEN', '2015-02-13', 'L', '4SD', 20, '2024', 'ZUBARI', '4 A', '', '', '', 'PERUM KOTA PERMATA JL MUTIARA BLOK C5 NO.2', '', '085280712812', '', 'SHILAHUDDIN ALWIRA', 'S1', 'KARYAWAN SWASTA', 'BUKITTINGGI, 27 Januari 1983', 'LOLI YUSASTRI', 'S1', 'IRT', 'BUKITTINGGI, 21 Agustus 1982'),
('SD0275', '202402080', '', 'ARSAKHA RAFFA FIRMANSYAH', 'BEKASI', '2015-07-26', 'L', '3SD', 18, '2024', 'RAFFA', '3 A', '', '', '', 'PONDOK CIKUNIR INDAH JL RAJAWALI VI BLOK D6 NO 22', '', '087882166610', '', 'BAYU FIRMANSYAH', 'S1', 'KARYAWAN SWASTA', 'Purbalingga, 08 September 1987', 'MAYA OKTAVIANTARI', 'S1', 'IRT', 'Jakarta, 02 Oktober 1987'),
('SD0276', '202402081', '23240012', 'ASYAHIIDA KAMILA PRANOTO', 'SEMARANG', '2017-02-09', 'P', '3SD', 19, '2024', 'KAMILA', '3 B', '', '', '', 'PERUMAHAN SETU ASRI BLOK E6 NO. 3 DESA. CIBENING KEC. SETU BEKASI - JAWA BARAT. 17320', '', '08980580672', '', 'AGUS PRANOTO', 'S1', 'KARYAWAN SWASTA', 'Boyolali, 15 April 1995', 'HILAN PRATIWI', 'S1', 'IRT', 'Kendal, 17 Februari 1992'),
('SD0277', '202402082', '3160374269', 'GRANDEVA ELAMERZA RESVANI', 'JAKARTA', '2016-07-22', 'L', '3SD', 18, '2024', 'EEL', '3 A', '', '', '', 'JL DUKUH V NO 35 RT 2 RW 5 KEL DUKUH KEC KRAMATJATI JAKARTA TIMUR', '', '081322123481', '', 'RESVANI', 'S2', 'WIRAUSAHA', 'Aceh, 04 November 1981', 'CHYNDHIA HERADHINA ISKANDAR', 'S1', 'DOKTER UMUM', 'Jakarta, 14 April 1990'),
('SD0278', '202402083', '0132586952', 'KHANSA RIZKI AZALIA', 'TANGERANG', '2015-07-29', 'P', '3SD', 19, '2024', 'KHANSA', '3 B', '', '', '', 'VILLA TANGERANG ELOK BLOK A24 NO 2 RT10/07 TANGERANG', '', '087774767786', '', 'ENDANG DARMAJIE', 'S1', 'WIRAUSAHA', 'Tangerang, 03 Maret 1979', 'AFRIYANTI', 'D3', 'IRT', 'Jakarta, 19 November 1982'),
('SD0279', '202402084', '', 'ZAHIDAH', 'JAKARTA', '2015-03-15', 'P', '3SD', 19, '2024', 'ZAHIDAH', '3 B', '', '', '', 'JLN. PLATUK NO 4 BUMI MAKMUR 4, JATIMAKMUR. PONDOK GEDE, BEKASI, 17413', '', '081310687166', '', 'GIBRAN HABIB', 'S1', 'KARYAWAN SWASTA', 'Bandung, 10 Desember 1984', 'HAMASAH AZMI', 'S1', 'IRT', 'Jakarta, 31 Desember 1989'),
('SD0280', '202402085', '3168903790', 'MUHAMMAD FATIH ANDIMESA', 'BEKASI', '2016-12-12', 'L', '2SD', 17, '2024', 'FATIH', '2', '', '', '', 'JL. NURUL HUDA IV NO. 1 JAKASAMPURNA, BEKASI BARAT, 17137', '', '081910035353', '', 'MUHAMAD TOHIRUDIN', 'S1', 'WIRASWASTA', 'Jakarta, 13 Maret 1985', 'AMELLA LISMARINA', 'S1', 'KARYAWAN SWASTA', 'KOTA BARU, 14 Juli 1986'),
('SD0281', '202402086', '', 'MUHAMMAD RAFKA ALFARIZKI', 'TANGERANG', '2017-03-07', 'L', '1SD', 14, '2024', 'RAFKA', '1', '', '', '', 'VILLA TANGERANG ELOK BLOK A24 NO 2 RT10/07 TANGERANG', '', '087774767786', '', 'ENDANG DARMAJIE', 'S1', 'WIRAUSAHA', 'Tangerang, 03 Maret 1979', 'AFRIYANTI', 'D3', 'IRT', 'Jakarta, 19 November 1982'),
('SD0282', '202402087', '', 'ALIF ARZATA', 'KUALA LUMPUR', '2017-12-21', 'L', '1SD', 15, '2024', 'ALIF', '1', '', '', '', 'KOMPLEK GREEN VIEW NO A11', '', '081802287624', '', 'IWAN BAMBANG', 'S1', 'TNI', 'Jakarta, 14 Oktober 1968', 'NENG FATIMAH', 'SMA', 'WIRASWASTA', 'Purwakarta, 11 Maret 1980');

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `tgl_bln_thn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`id`, `role`, `tgl_bln_thn`) VALUES
(1, 'guru', '10-Mar-2025');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun_ajaran` int(11) NOT NULL,
  `c_role` varchar(50) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id_tahun_ajaran`, `c_role`, `tahun`, `semester`, `status`) VALUES
(1, 'adm1', '2025/2026', '1', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `id` int(11) NOT NULL,
  `code_user` varchar(50) DEFAULT NULL,
  `isi_komentar` varchar(10000) DEFAULT NULL,
  `room_id` varchar(50) DEFAULT NULL,
  `stamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`c_admin`);

--
-- Indexes for table `akses_otm`
--
ALTER TABLE `akses_otm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_siswa_approved`
--
ALTER TABLE `daily_siswa_approved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_kelas`
--
ALTER TABLE `group_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`c_guru`);

--
-- Indexes for table `history_password`
--
ALTER TABLE `history_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_pengumuman_pembayaran`
--
ALTER TABLE `info_pengumuman_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_klp`
--
ALTER TABLE `m_klp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reason`
--
ALTER TABLE `reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruang_pesan`
--
ALTER TABLE `ruang_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`c_siswa`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akses_otm`
--
ALTER TABLE `akses_otm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daily_siswa_approved`
--
ALTER TABLE `daily_siswa_approved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_kelas`
--
ALTER TABLE `group_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `history_password`
--
ALTER TABLE `history_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `info_pengumuman_pembayaran`
--
ALTER TABLE `info_pengumuman_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `m_klp`
--
ALTER TABLE `m_klp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reason`
--
ALTER TABLE `reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ruang_pesan`
--
ALTER TABLE `ruang_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tahun`
--
ALTER TABLE `tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun_ajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
