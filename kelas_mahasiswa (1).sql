-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 05:49 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelas_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwalkelas`
--

CREATE TABLE `jadwalkelas` (
  `id` int(11) NOT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `kampus` varchar(100) DEFAULT NULL,
  `lantai` int(11) DEFAULT NULL,
  `nama_ruangan` varchar(50) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `mata_kuliah` varchar(100) DEFAULT NULL,
  `dosen` varchar(100) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwalkelas`
--

INSERT INTO `jadwalkelas` (`id`, `hari`, `kampus`, `lantai`, `nama_ruangan`, `kelas`, `mata_kuliah`, `dosen`, `jam_mulai`, `jam_selesai`) VALUES
(2, 'Senin', 'Kampus 1', 2, 'LAB. 202(LASINRANG)', 'IK22_D', 'STARPROB', 'Nurul Fuady Adhalia H', '08:30:00', '10:10:00'),
(3, 'Senin', 'Kampus 1', 2, 'LAB. 202(LASINRANG)', 'IK22_B', 'STATPROB', 'Nurul Fuady Adhalia H. ', '10:20:00', '12:00:00'),
(4, 'Senin', 'Kampus 1', 2, 'LAB. 203(LASIMING)', 'IK22_C', 'STATPROB', 'Mardhiyyah Rafrin . ', '08:30:00', '10:10:00'),
(5, 'Senin', 'Kampus 1', 2, 'LAB. 203(LASIMING)', 'IK22_A', 'STATPROB', 'Irmayani ', '10:20:00', '12:00:00'),
(13, 'Rabu', 'Kampus 1', 2, 'RLAB. 202(LASINRANG)', 'IK22_B', 'RPL', 'Putri Ayu Maharani ', '10:20:00', '12:00:00'),
(14, 'Rabu', 'Kampus 1', 2, 'LAB. 20(LASINRANG)', 'IK22_C', 'RPL', 'Putri Ayu Maharani ', '10:20:00', '12:00:00'),
(15, 'Rabu', 'Kampus 1', 2, 'LAB. 203(LASIMING)', 'IK22_A', 'RPL', 'Putri Ayu Maharani ', '08:30:00', '10:20:00'),
(16, 'Rabu', 'Kampus 1', 2, 'LAB. 203(LASIMING)', 'IK22_D', 'RPL', 'Putri Ayu Maharani ', '10:20:00', '12:00:00'),
(17, 'Rabu', 'Kampus 1', 2, 'LAB. 204(BAU MASSEPE)', 'IK22_B', 'WEB', 'Mardhiyyah Rafrin  ', '08:30:00', '10:20:00'),
(18, 'Rabu', 'Kampus 1', 2, 'LAB. 204(BAU MASSEPE)', 'IK22_C', 'WEB', 'Mardhiyyah Rafrin  ', '10:20:00', '12:00:00'),
(19, 'Rabu', 'Kampus 1', 2, 'LAB. 205(ANDI MAKKASAU)', 'IK22_D', 'WEB', 'Mardhiyyah Rafrin  ', '08:30:00', '10:20:00'),
(20, 'Rabu', 'Kampus 1', 2, 'LAB. 205(ANDI MAKKASAU)', 'IK22_A', 'WEB', 'Mardhiyyah Rafrin  ', '10:20:00', '12:00:00'),
(21, 'Kamis', 'Kampus 1', 2, 'LAB. 202(LASINRANG)', 'IK22_B', 'PENCIT', 'Naili Suri Intizhami ', '08:30:00', '10:20:00'),
(22, 'Kamis', 'Kampus 1', 2, 'LAB. 202(LASINRANG)', 'IK22_C', 'PENCIT', 'Naili Suri Intizhami  ', '10:20:00', '12:00:00'),
(23, 'Kamis', 'Kampus 1', 2, 'LAB. 203(LASIMING)', 'IK22_D', 'PENCIT', 'Naili Suri Intizhami ', '08:30:00', '10:20:00'),
(24, 'Kamis', 'Kampus 1', 2, 'LAB. 203(LASIMING)', 'IK22_A', 'PENCIT', 'Naili Suri Intizhami  ', '10:20:00', '12:00:00'),
(25, 'Jumat', 'Kampus 1', 2, 'LAB. 202(LASINRANG)', 'IK22_D', 'KEMDATIN', 'Muh. Ikhsan Amar', '13:30:00', '15:20:00'),
(26, 'Jumat', 'Kampus 1', 2, 'LAB. 202(LASINRANG)', 'IK22_A', 'KEMDATIN', 'Muh. Ikhsan Amar', '15:20:00', '17:00:00'),
(27, 'Jumat', 'Kampus 1', 2, ' LAB. 203(LASIMING)', 'IK22_C', 'KEMDATIN', 'Muh. Ikhsan Amar', '13:30:00', '15:20:00'),
(28, 'Jumat', 'Kampus 1', 2, 'LAB. 203(LASIMING)', 'IK22_B', 'KEMDATIN', 'Muh. Ikhsan Amar', '15:20:00', '17:00:00'),
(34, 'Senin', 'Kampus 2', 2, 'Ruangan 202', 'IK22_A', 'DAA', 'Eka Qadri Nuranti ', '13:30:00', '15:10:00'),
(35, 'Senin', 'Kampus 2', 2, 'Ruangan 205', 'IK22_B', 'PENCIT', 'Naili Suri Intizhami', '13:30:00', '15:10:00'),
(36, 'Senin', 'Kampus 2', 2, 'Ruangan 203', 'IK22_C', 'WEB', 'Mardhiyyah Rafrin', '13:30:00', '15:10:00'),
(37, 'Senin', 'Kampus 2', 2, 'Ruangan 206', 'IK22_D', 'RPL', 'Putri Ayu Maharani', '13:30:00', '15:10:00'),
(38, 'Senin', 'Kampus 2', 2, 'Ruangan 205', 'IK22_A', 'PENCIT', 'Naili Suri Intizhami', '15:20:00', '17:00:00'),
(39, 'Senin', 'Kampus 2', 2, 'Ruangan 202', 'IK22_B', 'DAA', 'Eka Qadri Nuranti ', '15:20:00', '17:00:00'),
(40, 'Senin', 'Kampus 2', 2, 'Ruangan 206', 'IK22_C', 'RPL', 'Putri Ayu Maharani', '15:20:00', '17:00:00'),
(41, 'Senin', 'Kampus 2', 2, 'Ruangan 205', 'IK22_D', 'WEB', 'Naili Suri Intizhami', '15:20:00', '17:00:00'),
(42, 'Selasa', 'Kampus 2', 1, 'Ruangan 102', 'IK22_A', 'WEB', 'Mardhiyyah Rafrin', '08:30:00', '10:10:00'),
(43, 'Selasa', 'Kampus 2', 1, 'Ruangan 104', 'IK22_B', 'RPL', 'Putri Ayu Maharani', '08:30:00', '10:10:00'),
(44, 'Selasa', 'Kampus 2', 1, 'Ruangan 101', 'IK22_C', 'DAA', 'Eka Qadri Nuranti ', '08:30:00', '10:10:00'),
(45, 'Selasa', 'Kampus 2', 1, 'Ruangan 103', 'IK22_D', 'PENCIT', 'Naili Suri Intizhami', '08:30:00', '10:10:00'),
(46, 'Selasa', 'Kampus 2', 1, 'Ruangan 104', 'IK22_A', 'RPL', 'Putri Ayu Maharani', '10:20:00', '12:00:00'),
(47, 'Selasa', 'Kampus 2', 1, 'Ruangan 102', 'IK22_B', 'WEB', 'Mardhiyyah Rafrin', '10:20:00', '12:00:00'),
(48, 'Selasa', 'Kampus 2', 1, 'Ruangan 103', 'IK22_C', 'PENCIT', 'Naili Suri Intizhami', '10:20:00', '12:00:00'),
(49, 'Selasa', 'Kampus 2', 1, 'Ruangan 101', 'IK22_C', 'DAA', 'Eka Qadri Nuranti ', '10:20:00', '12:00:00'),
(50, 'Rabu', 'Kampus 2', 1, 'Ruangan 104', 'IK22_A', 'STATPROB', 'Irmayani', '07:30:00', '09:10:00'),
(51, 'Rabu', 'Kampus 2', 2, 'Ruangan 202', 'IK22_C', 'STATPROB', 'Rifki', '07:30:00', '09:10:00'),
(52, 'Kamis', 'Kampus 2', 1, 'Ruangan 102', 'IK22_A', 'KEMDATIN', 'Muh. Ikhsan Amar', '13:30:00', '15:10:00'),
(53, 'Kamis', 'Kampus 2', 1, 'Ruangan 101', 'IK22_B', 'AI', 'Eka Qadri Nuranti ', '13:30:00', '15:10:00'),
(54, 'Kamis', 'Kampus 2', 1, 'Ruangan 103', 'IK22_C', 'RTI', 'Naili Suri Intizhami', '13:30:00', '15:10:00'),
(55, 'Kamis', 'Kampus 2', 1, 'Ruangan 104', 'IK22_D', 'STATPROB', 'Nurul', '13:30:00', '15:10:00'),
(57, 'Selasa', 'Kampus1', 2, 'LAB. 202(LASINRANG)', 'IK22_D', 'KEMDATIN', 'Reza', '14:12:00', '02:22:00');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `nomor` int(11) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `kelas`, `nomor`, `nim`, `nama`) VALUES
(1, 'IK22_A', 1, '221011001', 'THOARIQ MUSADDIK'),
(2, 'IK22_A', 2, '221011004', 'FADHIYA MUTHIA ANNISA'),
(3, 'IK22_A', 3, '221011009', 'AHMAD IRFANDI'),
(4, 'IK22_A', 4, '221011010', 'IBNU AL-GAZALI BURHAN'),
(5, 'IK22_A', 5, '221011016', 'MUHAMMAD DZAKY'),
(6, 'IK22_A', 6, '221011021', 'MUH. ABUBAKAR TUNRU'),
(7, 'IK22_A', 7, '221011024', 'ANDI MUHAMMAD MARIO HUSAYFA'),
(8, 'IK22_A', 8, '221011027', 'PUTRI FELIZA RAMADHANI'),
(9, 'IK22_A', 9, '221011031', 'OSAMA IYAD AL GHOZY'),
(10, 'IK22_A', 10, '221011032', 'REYNALDI PRASETYA RAHMAN'),
(11, 'IK22_A', 11, '221011038', 'NADA ISTIANA HABIBI'),
(12, 'IK22_A', 12, '221011040', 'SHAPIRA NUR MALIKA'),
(13, 'IK22_A', 13, '221011041', 'MUHAMMAD RIVALDI JEFRI'),
(14, 'IK22_A', 14, '221011043', 'NURUL ULMI MUSTAFA'),
(15, 'IK22_A', 15, '221011055', 'ANDI INDRA'),
(16, 'IK22_A', 16, '221011059', 'MUHAMMAD FATHIR MAULANA NELWAN'),
(17, 'IK22_A', 17, '221011062', 'INGGRID FEBRIANTI'),
(18, 'IK22_A', 18, '221011064', 'MICHAEL YONATHAN'),
(19, 'IK22_A', 19, '221011066', 'MUHAMMAD SYAKIR AMIN'),
(20, 'IK22_A', 20, '221011069', 'MUHAMMAD RIVKY'),
(21, 'IK22_A', 21, '221011070', 'ANSHAR AMANAH'),
(22, 'IK22_A', 22, '221011072', 'SITTI RAHMA YUNUS'),
(23, 'IK22_A', 23, '221011074', 'FAHRUL'),
(24, 'IK22_A', 24, '221011079', 'RIFDAH PRITAMA SAPUTRI'),
(25, 'IK22_A', 25, '221011095', 'MAULANA SHUFI MADANI'),
(26, 'IK22_A', 26, '221011099', 'PANJI SATRIO PUTRA HERIYONO'),
(27, 'IK22_A', 27, '221011107', 'NIRWANA'),
(28, 'IK22_A', 28, '221011111', 'NURUL HIKMAH ASKAR'),
(29, 'IK22_A', 29, '221011115', 'ADRIL'),
(30, 'IK22_A', 30, '221011116', 'WILDAN AN MILLAH MAHSYAR'),
(31, 'IK22_A', 31, '221011118', 'EDWIN TANGARAN'),
(32, 'IK22_B', 1, '221011002', 'MUHAIMIN NUZUL'),
(33, 'IK22_B', 2, '221011005', 'LAYLI ROSALINA'),
(34, 'IK22_B', 3, '221011007', 'SYAHRAENI SALSABILA SIRAJUDDIN'),
(35, 'IK22_B', 4, '221011012', 'AINUN FATWA'),
(36, 'IK22_B', 5, '221011017', 'WIDYA PUSPITA SARI'),
(37, 'IK22_B', 6, '221011018', 'ALFITO TEGAR GIFFARI'),
(38, 'IK22_B', 7, '221011023', 'ARIF HIDAYAT'),
(39, 'IK22_B', 8, '221011028', 'TRISTIA DESIANA PAREGRIN'),
(40, 'IK22_B', 9, '221011034', 'ARYA DARMAWAN'),
(41, 'IK22_B', 10, '221011035', 'ANDI SRIRAHAYU PUTRI RASYID'),
(42, 'IK22_B', 11, '221011042', 'MUHAMMAD FADEL HASYIM'),
(43, 'IK22_B', 12, '221011048', 'ANDI MAGFIRAH MAQBUL'),
(44, 'IK22_B', 13, '221011053', 'GARIZAH FAUZIYAH HUMAIMA'),
(45, 'IK22_B', 14, '221011056', 'HUBAIB SHIDDIQI'),
(46, 'IK22_B', 15, '221011057', 'DIKRIANI'),
(47, 'IK22_B', 16, '221011061', 'MUHAMMAD REZA FAHLEVI SYAHRUL'),
(48, 'IK22_B', 17, '221011067', 'MUHAMMAD ARIL ALFAREZI'),
(49, 'IK22_B', 18, '221011068', 'DISKY FAHRUL RIFAIH'),
(50, 'IK22_B', 19, '221011080', 'HARFIA'),
(51, 'IK22_B', 20, '221011082', 'FIRMAN SAPUTRA'),
(52, 'IK22_B', 21, '221011087', 'MUHAMMAD HAYKAL YUNUS'),
(53, 'IK22_B', 22, '221011090', 'MUHAMMAD ANUGRAH'),
(54, 'IK22_B', 23, '221011096', 'JIAN JENISTIANI'),
(55, 'IK22_B', 24, '221011102', 'ABYAN AQIL'),
(56, 'IK22_B', 25, '221011104', 'ANDRI'),
(57, 'IK22_B', 26, '221011110', 'ALFIRA ZALSABILA'),
(58, 'IK22_B', 27, '221011113', 'ANDI MUHAMMAD KASYFUL ANWAR'),
(59, 'IK22_C', 1, '221011006', 'MUHAMMAD AHYAWARA'),
(60, 'IK22_C', 2, '221011008', 'ARYANDI'),
(61, 'IK22_C', 3, '221011011', 'ST. NUR. AISYAH. S'),
(62, 'IK22_C', 4, '221011014', 'STEVELIN FRISKA'),
(63, 'IK22_C', 5, '221011019', 'GUSNADI MULIAWARMAN'),
(64, 'IK22_C', 6, '221011020', 'AGUS PRASETYO'),
(65, 'IK22_C', 7, '221011025', 'NUR INAYA BAHAR'),
(66, 'IK22_C', 8, '221011036', 'ANNISYA EKAPRATIWI APRILIA'),
(67, 'IK22_C', 9, '221011037', 'AHMAD GUFFRAN'),
(68, 'IK22_C', 10, '221011039', 'ADE PUTRI BUSTAN'),
(69, 'IK22_C', 11, '221011045', 'MUHAMMAD IRSYAD ERLANGGA'),
(70, 'IK22_C', 12, '221011050', 'REZA AFRIANSYAH'),
(71, 'IK22_C', 13, '221011052', 'ADITYA MULYADI'),
(72, 'IK22_C', 14, '221011060', 'MUHAMMAD BINTANG'),
(73, 'IK22_C', 15, '221011063', 'M. FAUZAN ISKANDAR'),
(74, 'IK22_C', 16, '221011065', 'ROBERT SMITH YONATHAN'),
(75, 'IK22_C', 17, '221011081', 'ASBAR SELLE'),
(76, 'IK22_C', 18, '221011085', 'M. FAHLAN ANDAR'),
(77, 'IK22_C', 19, '221011086', 'AHMAD MUAHYAT'),
(78, 'IK22_C', 20, '221011088', 'ANDI ADNIAR ANDI BARA'),
(79, 'IK22_C', 21, '221011091', 'MAHARANI REVA AWLIYA'),
(80, 'IK22_C', 22, '221011092', 'ALIF SAPUTRAISAN SYAH'),
(81, 'IK22_C', 23, '221011100', 'MUH. ARI FARHAN'),
(82, 'IK22_C', 24, '221011101', 'ANUGERAH'),
(83, 'IK22_C', 25, '221011105', 'RISTAMANDA. R'),
(84, 'IK22_C', 26, '221011114', 'MUH. DIMAS SAPUTRA AKMAL'),
(85, 'IK22_C', 27, '221011117', 'MUHAMMAD ALFIAN HAKIM'),
(86, 'IK22_D', 1, '221011003', 'MUHAMMAD ALFARIZI RIDWAN GUZASIAH'),
(87, 'IK22_D', 2, '221011013', 'NURIYYAH IFFAH ARMANSYAH'),
(88, 'IK22_D', 3, '221011015', 'MUHAMMAD FARUQ AL-FAUZI S.'),
(89, 'IK22_D', 4, '221011022', 'NIRMALASARI RODITO SULNAS'),
(90, 'IK22_D', 5, '221011026', 'INDAH MARDIYAH USMAN ISAH'),
(91, 'IK22_D', 6, '221011029', 'ALIFWAN ANANTA PUTRA'),
(92, 'IK22_D', 7, '221011030', 'LEGIASTUTI PEBRIANTI'),
(93, 'IK22_D', 8, '221011044', 'MUHAMMAD ALDI ALFATIH'),
(94, 'IK22_D', 9, '221011046', 'ISMAIL'),
(95, 'IK22_D', 10, '221011047', 'NABILAH PUTRI ALI'),
(96, 'IK22_D', 11, '221011049', 'NUR AINI SRI OKTAVIANI BAHAR'),
(97, 'IK22_D', 12, '221011051', 'AMALIAH NURUL FADILLAH'),
(98, 'IK22_D', 13, '221011054', 'MUHAMMAD DICKY ARMANSYAH'),
(99, 'IK22_D', 14, '221011058', 'MELISAH'),
(100, 'IK22_D', 15, '221011071', 'MUHAMMAD AGUNG PRAYOGI'),
(101, 'IK22_D', 16, '221011073', 'MUHAMMAD ISHAK'),
(102, 'IK22_D', 17, '221011075', 'NUR FADILAH HAKIM'),
(103, 'IK22_D', 18, '221011076', 'MUHAMMAD ARI DANENDRA'),
(104, 'IK22_D', 19, '221011078', 'JESLINA KONDO'),
(105, 'IK22_D', 20, '221011083', 'M. SAHRUL RAMADHAN AL ZANI'),
(106, 'IK22_D', 21, '221011084', 'NURUL AULIA'),
(107, 'IK22_D', 22, '221011089', 'NURUL MEYTI DEA PUTRI M'),
(108, 'IK22_D', 23, '221011093', 'HURULHAENI'),
(109, 'IK22_D', 24, '221011094', 'NURUL NISA ABDUL SALAM'),
(110, 'IK22_D', 25, '221011098', 'MUHAMMAD ASRIL ZAIF'),
(111, 'IK22_D', 26, '221011103', 'FIRMAN IMRAN'),
(112, 'IK22_D', 27, '221011106', 'RHERE AZHARY BUDIANTY'),
(113, 'IK22_D', 28, '221011108', 'YUSRI NUR FAIDZIN'),
(114, 'IK22_D', 29, '221011109', 'NURJAMALIYAH J.'),
(115, 'IK22_D', 30, '221011112', 'MOHAMAD BINTANG ZAKY ZHAFRAN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `namalengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('dosen','mahasiswa','admin') NOT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `nidn` varchar(20) DEFAULT NULL,
  `departemen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `namalengkap`, `username`, `password`, `role`, `nim`, `prodi`, `nidn`, `departemen`) VALUES
(1, 'onoki', 'onoki@gmail.com', '$2y$10$k7AQSFKLLfpTUpMf1EJAKumODskW4DN3RT/k9q28O42NMrc7AXFo6', 'mahasiswa', ' 2222222', 'Ilkom', NULL, NULL),
(2, 'dosen1', 'dosen@gmail.com', '$2y$10$XcvuHRMZvL2KjRbVDJ4W8ulbUSkJhfKplKAq3m0F0tnTbW0p68KPa', 'dosen', ' 2222222', 'Ilkom', '31323', 'mm'),
(3, 'admin', 'admin@gmail.com', '$2y$10$/ARnnvbwCw0lWVQETR.j5.XXZAUMg/0kDWL5i4wz34jwJZsyDfqdO', 'admin', ' 2222222', 'Ilkom', '31323', 'mm'),
(6, 'reza', 'reza@gmail', '$2y$10$H0cUqPprw1PgsyXskD6lUuLXwNeaE5sudlvd63aPeFnDsfv6QtyLC', 'mahasiswa', '33333', 'Ilkom', '', ''),
(7, 'Reza', 'agdga@gmail.com', '$2y$10$oTXdqg6qbvMHnBeFNxO7eOSBTWftUC6q0CKRb0w2NSe9XqF8244Sy', 'mahasiswa', '1212', 'ilkom', '', ''),
(8, 'dosen2', 'dosen2@gmail.com', '$2y$10$zRikdH/Fuq12/oUj4Mc7oOkFf5UmlqIc1nlz5NcwnOVVKQfxIaIXC', 'dosen', '', '', '11111', NULL),
(9, 'Aryandi', 'aryandi@gmail.com', '$2y$10$WWsGBIy9oejW2yz7ezlv/en2aH.jfgDKyer1VPsD0TrrOzvNpOk72', 'mahasiswa', '221011008', 'Ilkom', '', NULL),
(10, 'andi', 'andi@gmail.com', '$2y$10$qzPWqROB9L/tc6TrjACZ1OwW7P5Y42uY7HSyF3JIMf.92fMwC.psW', 'mahasiswa', '33333', 'ilkom', '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwalkelas`
--
ALTER TABLE `jadwalkelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwalkelas`
--
ALTER TABLE `jadwalkelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
