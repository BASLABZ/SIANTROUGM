-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2017 at 04:32 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siantrougm`
--

-- --------------------------------------------------------

--
-- Table structure for table `question_ofset`
--

CREATE TABLE IF NOT EXISTS `question_ofset` (
`id_soal` smallint(10) NOT NULL,
  `coursename_id` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ref_announcement`
--

CREATE TABLE IF NOT EXISTS `ref_announcement` (
`announcement_id` smallint(10) NOT NULL,
  `announcement_info` mediumtext,
  `operator_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_announcement`
--

INSERT INTO `ref_announcement` (`announcement_id`, `announcement_info`, `operator_id_fk`) VALUES
(1, 'attention', 1),
(2, 'attention 2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ref_courseclass`
--

CREATE TABLE IF NOT EXISTS `ref_courseclass` (
`courseclass_id` smallint(10) NOT NULL,
  `courseclass_categories` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_courseclass`
--

INSERT INTO `ref_courseclass` (`courseclass_id`, `courseclass_categories`) VALUES
(3, 'IR 1'),
(4, 'IR 2'),
(5, 'IDAGM'),
(6, 'DK'),
(7, 'DK 1'),
(8, 'DK 1');

-- --------------------------------------------------------

--
-- Table structure for table `ref_coursename`
--

CREATE TABLE IF NOT EXISTS `ref_coursename` (
`coursename_id` smallint(10) NOT NULL,
  `coursename_title` mediumtext,
  `coursename_info` text,
  `silabus_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_coursename`
--

INSERT INTO `ref_coursename` (`coursename_id`, `coursename_title`, `coursename_info`, `silabus_id_fk`) VALUES
(1, 'Dasar Kedokteran', 'dilaksankan dalam enam bulan saja', 1),
(2, 'IDentifikasi ANggota gerak Manusia', 'Materi lengkap', 1),
(3, 'Identifikasi Tulang Pelvis', 'Tidak Ada remidi dalam kursus  ini gais', 2),
(4, 'Antrophometry', 'blablaaa', 1),
(11, 'Identifikasi Ras', 'Peserta bisa mengikuti kursus ini apabila sudah melewati tahap  kursus Identifikasi Tulang', 2),
(12, 'tambahiseng', 'lalalaa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ref_institution`
--

CREATE TABLE IF NOT EXISTS `ref_institution` (
`institution_id` smallint(10) NOT NULL,
  `institution_name` varchar(50) DEFAULT NULL,
  `institution_address` text
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_institution`
--

INSERT INTO `ref_institution` (`institution_id`, `institution_name`, `institution_address`) VALUES
(1, 'Universitas Teknologi Yogyakarta', 'JOMBOR'),
(2, 'Universitas Negeri Yogyakarta', 'Jl Colombo'),
(3, 'Universitas Gadjah Mada', 'Jalan Medika Sekip Utara'),
(4, 'STMIK Ahmad Yani', 'Ringroad Barat Kasihan Bantul Yogyakarta'),
(5, 'Universitas Atmajaya', 'Babarsari Yogyakarta'),
(6, 'Universitas Islam Indonesia', 'Jalan Kaliurang');

-- --------------------------------------------------------

--
-- Table structure for table `ref_lesson_program`
--

CREATE TABLE IF NOT EXISTS `ref_lesson_program` (
`lesson_program_id` smallint(10) NOT NULL,
  `silabus_id` smallint(10) DEFAULT NULL,
  `lesson_program_description` text,
  `lesson_program_time` date DEFAULT NULL,
  `lesson_program_literature` mediumtext,
  `trainer_id_fk` smallint(10) DEFAULT NULL,
  `silabus_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_lesson_program`
--

INSERT INTO `ref_lesson_program` (`lesson_program_id`, `silabus_id`, `lesson_program_description`, `lesson_program_time`, `lesson_program_literature`, `trainer_id_fk`, `silabus_id_fk`) VALUES
(1, NULL, 'hhahhahaha', '2016-12-02', 'gagagagaga', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ref_level`
--

CREATE TABLE IF NOT EXISTS `ref_level` (
`level_id` smallint(10) NOT NULL,
  `level_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_level`
--

INSERT INTO `ref_level` (`level_id`, `level_name`) VALUES
(1, 'SA'),
(2, 'Sekretaris Laboratorium'),
(4, 'Kepala Laboratorium'),
(5, 'Dosen Pengajar'),
(6, 'Member'),
(7, 'Peserta Kursus');

-- --------------------------------------------------------

--
-- Table structure for table `ref_menu`
--

CREATE TABLE IF NOT EXISTS `ref_menu` (
`menu_id` smallint(10) NOT NULL,
  `menu_name` varchar(30) DEFAULT NULL,
  `menu_url` varchar(60) DEFAULT NULL,
  `menu_parent` smallint(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_menu`
--

INSERT INTO `ref_menu` (`menu_id`, `menu_name`, `menu_url`, `menu_parent`) VALUES
(1, 'Master Data', NULL, 0),
(2, 'Data Operator', 'operator.php', 1),
(3, 'Data Menu', 'menu.php', 1),
(4, 'Data Level', 'level.php', 1),
(5, 'Data Silabi', 'silabus.php', 1),
(7, 'Data Nama Kursus', 'coursename.php', 1),
(8, 'Data Kelas Kursus', 'courseclass.php', 1),
(9, 'Data Registrasi Member', 'member-registration-approve.php', 17),
(10, 'Data SAP', 'lesson-program.php', 1),
(11, 'Daftar Instansi', 'institution.php', 1),
(12, 'Data Ruangan', 'rooms.php', 1),
(14, 'Data Program Studi', 'studyprogram.php', 1),
(15, 'Data Pengajar', 'trainer.php', 1),
(16, 'Data Pengumuman', 'announcement.php', 1),
(17, 'Transaksi', NULL, 0),
(18, 'Data Presensi', 'presence.php', 17),
(19, 'Data Jadwal', 'schedule.php', 17),
(21, 'Ketersediaan Kursus', 'detailcourse.php', 17),
(23, 'Data Laporan', NULL, 0),
(24, 'Detail Kursus', 'coursedetail.php', 17),
(25, 'Konfirmasi', '', 0),
(26, 'Konfirmasi Pembayaran', '', 25),
(27, 'Absen Peserta', 'presence.php', 17),
(28, 'Kumpulan Materi', 'coursematerial-file.php', 17),
(29, 'cobaa', 'coba.php', 17),
(30, 'Data Materi Kursus', 'coursematerial.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ref_operator`
--

CREATE TABLE IF NOT EXISTS `ref_operator` (
`operator_id` smallint(10) NOT NULL,
  `operator_name` varchar(60) DEFAULT NULL,
  `operator_username` varchar(30) DEFAULT NULL,
  `operator_password` char(32) DEFAULT NULL,
  `operator_placeofbirth` varchar(80) DEFAULT NULL,
  `operator_dateofbirth` varchar(80) DEFAULT NULL,
  `operator_gender` enum('Wanita','Pria') DEFAULT NULL,
  `operator_address` text,
  `operator_phonenumber` varchar(14) DEFAULT NULL,
  `operator_email` varchar(60) DEFAULT NULL,
  `operator_hint_question` varchar(35) DEFAULT NULL,
  `operator_answer_question` varchar(30) DEFAULT NULL,
  `operator_image` varchar(30) DEFAULT NULL,
  `operator_login` enum('Y','N') DEFAULT NULL,
  `operator_levelid_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_operator`
--

INSERT INTO `ref_operator` (`operator_id`, `operator_name`, `operator_username`, `operator_password`, `operator_placeofbirth`, `operator_dateofbirth`, `operator_gender`, `operator_address`, `operator_phonenumber`, `operator_email`, `operator_hint_question`, `operator_answer_question`, `operator_image`, `operator_login`, `operator_levelid_fk`) VALUES
(1, 'Dita Paraditya', 'paraditya', 'e10adc3949ba59abbe56e057f20f883e', 'yogyakarta', '07-18-1995', 'Wanita', 'tamsis', '08755', 'ditapraditya1@gmail.com', 'siapa nama gadis ibu kandung anda?', 'kistyaningsih', 'ditakk.jpg', 'Y', 1),
(4, 'Muhammad Iqbal', 'prayoga', '46f227e9cf17e2e1e88b14e679047bd9', 'Subang', '1996-07-25', 'Pria', 'Sorowajan goreng', '087666362', 'iqbalganteng@gmail.com', 'siapa nama gadis ibu kandung anda?', 'ropiah', '3.jpg', 'Y', 2),
(5, 'Okky Caesariyanto', 'okcaesar', '08686c4c6c5a71c293fa44ad27916b65', 'Yogyakarta', '1998-10-06', 'Pria', 'Suryoputran PB III /73 Yogyakarta', '089676251627', 'okkycaesar@gmail.com', 'siapa nama gadis ibu kandung anda?', 'yuyun', '', 'N', 5);

-- --------------------------------------------------------

--
-- Table structure for table `ref_rooms`
--

CREATE TABLE IF NOT EXISTS `ref_rooms` (
`rooms_id` int(11) NOT NULL,
  `rooms_name` varchar(30) DEFAULT NULL,
  `rooms_note` text
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_rooms`
--

INSERT INTO `ref_rooms` (`rooms_id`, `rooms_name`, `rooms_note`) VALUES
(1, 'A21', 'Lab Arsitektur'),
(2, 'A22', ''),
(3, 'A23', ''),
(4, 'A24', ''),
(5, 'A25', ''),
(6, 'B21', ''),
(7, 'B22', ''),
(8, 'C11', '');

-- --------------------------------------------------------

--
-- Table structure for table `ref_silabus`
--

CREATE TABLE IF NOT EXISTS `ref_silabus` (
`silabus_id` smallint(10) NOT NULL,
  `silabus_purpose` text,
  `silabus_period` date DEFAULT NULL,
  `silabus_topic` text,
  `operator_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_silabus`
--

INSERT INTO `ref_silabus` (`silabus_id`, `silabus_purpose`, `silabus_period`, `silabus_topic`, `operator_id_fk`) VALUES
(1, 'Menerapkan pendidikan dasar kedokteran bagi mahasiswa', '2016-08-11', 'Dasar Kedokteran', 1),
(2, 'Peserta mampu menerapkan metode identifikasi Tulang dengan lugas', '2016-09-12', 'Identifikasi Tulang anggota gerak manusia', 4),
(3, 'Setelah mengikuti perkuliahan peserta kursus diharapkan dapat memiliki pengetahuan,ketrampilan, dan sikap yang positif terhadap teori dan pengelolaan tulang-tulang manusia', '2016-10-10', 'Anggota Gerak badan Manusia', 1),
(4, 'sssss', '2016-11-03', 'ssss', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ref_studyprogram`
--

CREATE TABLE IF NOT EXISTS `ref_studyprogram` (
`studyprogram_id` smallint(10) NOT NULL,
  `studyprogram_name` varchar(25) DEFAULT NULL,
  `studyprogram_note` text
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_studyprogram`
--

INSERT INTO `ref_studyprogram` (`studyprogram_id`, `studyprogram_name`, `studyprogram_note`) VALUES
(1, 'Manajemen Informatika', 'D3 Akreditasi A'),
(2, 'Teknik Sipil', 'S1 Akreditasi B'),
(3, 'Teknik Arsitektur', 'S1 Akreditasi B'),
(4, 'Teknik Informatika', 'S1 Akreditasi B'),
(5, 'Sistem Informasi', 'S1 Akreditasi B'),
(6, 'Manajemen', 'S1 Akreditasi B'),
(7, 'Akutansi', 'D3');

-- --------------------------------------------------------

--
-- Table structure for table `ref_trainer`
--

CREATE TABLE IF NOT EXISTS `ref_trainer` (
`trainer_id` smallint(10) NOT NULL,
  `trainer_name` varchar(60) DEFAULT NULL,
  `trainer_username` varchar(30) DEFAULT NULL,
  `trainer_password` char(32) DEFAULT NULL,
  `trainer_placeofbirth` varchar(45) DEFAULT NULL,
  `trainer_dateofbirth` date DEFAULT NULL,
  `trainer_gender` enum('Wanita','Pria') DEFAULT NULL,
  `trainer_religion` varchar(15) DEFAULT NULL,
  `trainer_address` text,
  `trainer_phonenumber` varchar(14) DEFAULT NULL,
  `trainer_email` varchar(60) DEFAULT NULL,
  `trainer_website` varchar(65) DEFAULT NULL,
  `trainer_position` varchar(35) DEFAULT NULL,
  `trainer_image` varchar(50) DEFAULT NULL,
  `trainer_status` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_trainer`
--

INSERT INTO `ref_trainer` (`trainer_id`, `trainer_name`, `trainer_username`, `trainer_password`, `trainer_placeofbirth`, `trainer_dateofbirth`, `trainer_gender`, `trainer_religion`, `trainer_address`, `trainer_phonenumber`, `trainer_email`, `trainer_website`, `trainer_position`, `trainer_image`, `trainer_status`) VALUES
(1, 'Janatin Hastuti', 'janatin', '93279e3308bdbbeed946fc965017f67a', 'Bantul Yogyakarta', '1971-04-12', 'Wanita', 'Islam', 'Imogiri YK', '087655432413', 'janatinhastuti@gmail.com', 'ugm.ac.id', 'Koordinator Penelitian', '16.png', 'N'),
(2, 'Kistyaningsih', 'kistyaning', '230d8e9790aa4e27740d4437f551102c', 'Ponorogo', '1967-05-01', 'Wanita', 'Islam', '', '085878885316', 'kistyaningsih@gmail.com', 'kistyaningsih@gmail.com', 'Dosen Pengajar', '', 'N'),
(3, 'Rianto M.Eng', 'rianto', 'a6e4daced59fde8a6cb93dc0b3b3c544', 'Bantul Yogyakarta', '1970-02-12', 'Pria', 'Islam', '', '087726522255', 'riantex@gmail.com', 'rianto.@mail.com', 'Dosen Pengajar', '', 'N'),
(4, 'Purwanto M.Kom', 'purwanto12', 'f63f4fbc9f8c85d409f2f59f2b9e12d5', 'Gorontalo', '0000-00-00', 'Pria', 'Islam', 'Jakarta', '087723141543', 'purwanto@yahoo.com', 'pur@mail.com', 'jajajaja', 'b88c510f0ecda050541039eb5315cf74.jpg', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE IF NOT EXISTS `tbl_member` (
`member_id` smallint(10) NOT NULL,
  `member_name` char(30) NOT NULL,
  `member_address` text NOT NULL,
  `member_useremail` varchar(50) NOT NULL,
  `member_phonenumber` varchar(14) NOT NULL,
  `member_password` char(32) NOT NULL,
  `member_placeofbirth` varchar(30) NOT NULL,
  `member_dateofbirth` date NOT NULL,
  `member_gender` enum('Wanita','Pria') NOT NULL,
  `member_religion` varchar(9) DEFAULT NULL,
  `member_position` varchar(60) DEFAULT NULL,
  `institution_id_fk` smallint(10) DEFAULT NULL,
  `studyprogram_id_fk` smallint(10) DEFAULT NULL,
  `member_image` varchar(60) DEFAULT NULL,
  `member_hint_question` varchar(50) NOT NULL,
  `member_answer_question` varchar(20) NOT NULL,
  `member_status_active` enum('active','inactive','pending','ignore') NOT NULL,
  `member_levelid_fk` smallint(10) NOT NULL,
  `member_confirm_date` date DEFAULT NULL,
  `member_register_date` date DEFAULT NULL,
  `member_status_login` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`member_id`, `member_name`, `member_address`, `member_useremail`, `member_phonenumber`, `member_password`, `member_placeofbirth`, `member_dateofbirth`, `member_gender`, `member_religion`, `member_position`, `institution_id_fk`, `studyprogram_id_fk`, `member_image`, `member_hint_question`, `member_answer_question`, `member_status_active`, `member_levelid_fk`, `member_confirm_date`, `member_register_date`, `member_status_login`) VALUES
(2, 'Muhammad Iqbal', 'Subang', 'iqbal@gmail.com', '0877765', '473501052\n', 'Subang', '1996-07-25', 'Pria', 'Islam', 'Mahasiswa', NULL, NULL, 'iqbale.jpg', 'Siapa nama gadis ibu kandung anda?', 'Ropiah', '', 6, NULL, NULL, NULL),
(3, 'Susanto', 'Ngestiharjo', 'elfirasusanto@gmail.com', '0810382788', '994815361\n', 'Yogyakarta', '1994-08-24', 'Wanita', 'Islam', 'Mahasiswa', NULL, NULL, NULL, 'Siapa nama gadis ibu kandung anda?', 'Yuli', '', 6, NULL, NULL, NULL),
(5, 'Aliasari', 'Sedayu', 'amandaaliasari2@gmail.com', '0987654333', '2068760360\n', 'Purworejo', '1994-12-29', 'Wanita', 'Islam', 'Mahasiswa', NULL, NULL, NULL, 'Siapa nama gadis ibu kandung anda?', 'Sri Sumarni', '', 6, NULL, NULL, NULL),
(6, 'Janatin Hastuti', 'Bantul', 'janatin@gmail.com', '098766665', '1664957544\n', 'Yogyakarta', '1970-04-12', 'Wanita', 'Islam', 'Dosen Peneliti', NULL, NULL, NULL, 'Siapa nama gadis ibu kandung anda?', 'Sari', '', 6, NULL, NULL, NULL),
(7, 'RR Kistyaningsih', 'njjjjjjjj', 'kiskis@yahoo.com', '08726252422323', '', 'Yogyakarta', '1967-05-01', 'Wanita', 'Islam', 'Tata Usaha', NULL, NULL, NULL, 'Siapa nama gadis ibu kandung anda?', 'Kasih', '', 6, NULL, NULL, NULL),
(8, 'Aziz Zulianto', 'Jl.Gajah Glagahsari Yogyakarta', 'aziz.zuli@gmail.com', '089786545434', '', 'Lampung', '1994-07-22', 'Pria', 'Islam', 'Mahasiswa', NULL, NULL, NULL, 'Siapa nama gadis ibu kandung anda?', 'Indah', '', 6, NULL, NULL, NULL),
(9, 'Rino Kusnanto', 'Celeban, Yogyakarta', 'rino.kusnanto@gmail.com', '083876538373', '430398031\n', 'Yogyakarta', '1993-04-20', 'Pria', 'Islam', 'Programmer', NULL, NULL, 'm1.jpg', 'Siapa anda?', 'rino', '', 6, NULL, NULL, NULL),
(10, 'Iqbal Prayoga', 'Subang Indonesia', 'muhammadiqbal@gmail.com', '087763435343', '1032938210\n', 'Subang', '1996-07-25', 'Pria', 'Islam', 'Programmer', NULL, NULL, 'Red-from-Angry-Birds-Movie.jpg', 'Siapa nama gadis ibu kandung anda?', 'Ropiahh', '', 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trainee`
--

CREATE TABLE IF NOT EXISTS `tbl_trainee` (
`trainee_id` smallint(10) NOT NULL,
  `member_id_fk` smallint(10) DEFAULT NULL,
  `institution_id_fk` smallint(10) DEFAULT NULL,
  `trainee_status` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trainee`
--

INSERT INTO `tbl_trainee` (`trainee_id`, `member_id_fk`, `institution_id_fk`, `trainee_status`) VALUES
(5, 9, 1, 'N'),
(6, 10, 1, 'N'),
(11, 5, 2, 'N'),
(12, 2, 1, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `trx_cname_cclass`
--

CREATE TABLE IF NOT EXISTS `trx_cname_cclass` (
  `coursename_id_fk` smallint(10) DEFAULT NULL,
  `courseclass_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx_cname_cclass`
--

INSERT INTO `trx_cname_cclass` (`coursename_id_fk`, `courseclass_id_fk`) VALUES
(1, 6),
(1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `trx_confirmation_ofpayment`
--

CREATE TABLE IF NOT EXISTS `trx_confirmation_ofpayment` (
`confirmation_id` smallint(10) NOT NULL,
  `confirmation_category` varchar(30) DEFAULT NULL,
  `confirmation_date` datetime DEFAULT NULL,
  `confirmation_accountnumber` varchar(30) DEFAULT NULL,
  `confirmation_proofpayment` varchar(30) DEFAULT NULL,
  `confirmation_status` enum('Y','N') DEFAULT NULL,
  `confirmation_note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trx_coursematerial`
--

CREATE TABLE IF NOT EXISTS `trx_coursematerial` (
`coursematerial_id` smallint(10) NOT NULL,
  `coursematerial_title` mediumtext,
  `coursematerial_file` varchar(100) DEFAULT NULL,
  `coursematerial_dateofposted` date DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx_coursematerial`
--

INSERT INTO `trx_coursematerial` (`coursematerial_id`, `coursematerial_title`, `coursematerial_file`, `coursematerial_dateofposted`) VALUES
(1, 'ini adalah ini adlah ini adlah', 'jdjdjdjdjd.pdf', '2015-03-26');

-- --------------------------------------------------------

--
-- Table structure for table `trx_detailpresence`
--

CREATE TABLE IF NOT EXISTS `trx_detailpresence` (
`detailpresence_id` smallint(10) NOT NULL,
  `trainee_id_fk` smallint(10) DEFAULT NULL,
  `trainee_name` varchar(60) DEFAULT NULL,
  `trainee_gender` enum('Wanita','Pria') DEFAULT NULL,
  `detailpresence_status` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trx_institution_studyprogram`
--

CREATE TABLE IF NOT EXISTS `trx_institution_studyprogram` (
  `institution_id_fk` smallint(10) DEFAULT NULL,
  `studyprogram_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx_institution_studyprogram`
--

INSERT INTO `trx_institution_studyprogram` (`institution_id_fk`, `studyprogram_id_fk`) VALUES
(2, 3),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `trx_level_menu`
--

CREATE TABLE IF NOT EXISTS `trx_level_menu` (
  `level_id_fk` smallint(10) DEFAULT NULL,
  `menu_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx_level_menu`
--

INSERT INTO `trx_level_menu` (`level_id_fk`, `menu_id_fk`) VALUES
(3, 16),
(3, 18),
(6, 17),
(6, 21),
(6, 25),
(6, 26),
(2, 9),
(2, 17),
(2, 18),
(2, 25),
(2, 26),
(2, 27),
(4, 23),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 14),
(1, 15),
(1, 16),
(1, 19),
(1, 26),
(1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `trx_operator_level`
--

CREATE TABLE IF NOT EXISTS `trx_operator_level` (
  `operator_id` smallint(10) DEFAULT NULL,
  `level_id` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trx_payment`
--

CREATE TABLE IF NOT EXISTS `trx_payment` (
`payment_id` smallint(10) NOT NULL,
  `payment_uniquecode` varchar(30) DEFAULT NULL,
  `payment_approve` datetime DEFAULT NULL,
  `member_id_fk` smallint(10) DEFAULT NULL,
  `courseclass_id_fk` smallint(10) DEFAULT NULL,
  `payment_total` int(11) DEFAULT NULL,
  `payment_note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trx_presence`
--

CREATE TABLE IF NOT EXISTS `trx_presence` (
`presence_id` smallint(10) NOT NULL,
  `presence_date` date DEFAULT NULL,
  `schedule_id_fk` smallint(10) DEFAULT NULL,
  `courseclass_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trx_schedule`
--

CREATE TABLE IF NOT EXISTS `trx_schedule` (
`schedule_id` smallint(10) NOT NULL,
  `coursename_id_fk` smallint(10) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `schedule_coursestatus` varchar(15) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_finish` time DEFAULT NULL,
  `courseclass_id_fk` smallint(10) DEFAULT NULL,
  `rooms_id_fk` smallint(10) DEFAULT NULL,
  `coursematerial_id_fk` smallint(10) DEFAULT NULL,
  `trainer_id_fk` smallint(10) DEFAULT NULL,
  `schedule_note` text
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trx_schedule`
--

INSERT INTO `trx_schedule` (`schedule_id`, `coursename_id_fk`, `schedule_date`, `schedule_coursestatus`, `time_start`, `time_finish`, `courseclass_id_fk`, `rooms_id_fk`, `coursematerial_id_fk`, `trainer_id_fk`, `schedule_note`) VALUES
(4, 4, '2016-10-12', 'Tersedia', '09:08:00', '15:00:00', 1, 5, 1, 1, 'qqqq'),
(5, 2, '2016-10-27', 'Tersedia', '12:00:00', '14:30:00', 5, 8, 1, 1, ''),
(6, 3, '2016-12-22', 'Up Coming', '15:00:00', '17:00:00', 2, 5, 1, 1, ''),
(7, 11, '2016-11-23', 'Tersedia', '10:00:00', '12:00:00', 3, 5, 1, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `trx_schedule_trainer`
--

CREATE TABLE IF NOT EXISTS `trx_schedule_trainer` (
  `schedule_id_fk` smallint(10) DEFAULT NULL,
  `trainer_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question_ofset`
--
ALTER TABLE `question_ofset`
 ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `ref_announcement`
--
ALTER TABLE `ref_announcement`
 ADD PRIMARY KEY (`announcement_id`);

--
-- Indexes for table `ref_courseclass`
--
ALTER TABLE `ref_courseclass`
 ADD PRIMARY KEY (`courseclass_id`);

--
-- Indexes for table `ref_coursename`
--
ALTER TABLE `ref_coursename`
 ADD PRIMARY KEY (`coursename_id`);

--
-- Indexes for table `ref_institution`
--
ALTER TABLE `ref_institution`
 ADD PRIMARY KEY (`institution_id`);

--
-- Indexes for table `ref_lesson_program`
--
ALTER TABLE `ref_lesson_program`
 ADD PRIMARY KEY (`lesson_program_id`);

--
-- Indexes for table `ref_level`
--
ALTER TABLE `ref_level`
 ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `ref_menu`
--
ALTER TABLE `ref_menu`
 ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `ref_operator`
--
ALTER TABLE `ref_operator`
 ADD PRIMARY KEY (`operator_id`);

--
-- Indexes for table `ref_rooms`
--
ALTER TABLE `ref_rooms`
 ADD PRIMARY KEY (`rooms_id`);

--
-- Indexes for table `ref_silabus`
--
ALTER TABLE `ref_silabus`
 ADD PRIMARY KEY (`silabus_id`);

--
-- Indexes for table `ref_studyprogram`
--
ALTER TABLE `ref_studyprogram`
 ADD PRIMARY KEY (`studyprogram_id`);

--
-- Indexes for table `ref_trainer`
--
ALTER TABLE `ref_trainer`
 ADD PRIMARY KEY (`trainer_id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
 ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `tbl_trainee`
--
ALTER TABLE `tbl_trainee`
 ADD PRIMARY KEY (`trainee_id`);

--
-- Indexes for table `trx_confirmation_ofpayment`
--
ALTER TABLE `trx_confirmation_ofpayment`
 ADD PRIMARY KEY (`confirmation_id`);

--
-- Indexes for table `trx_coursematerial`
--
ALTER TABLE `trx_coursematerial`
 ADD PRIMARY KEY (`coursematerial_id`);

--
-- Indexes for table `trx_detailpresence`
--
ALTER TABLE `trx_detailpresence`
 ADD PRIMARY KEY (`detailpresence_id`);

--
-- Indexes for table `trx_payment`
--
ALTER TABLE `trx_payment`
 ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `trx_presence`
--
ALTER TABLE `trx_presence`
 ADD PRIMARY KEY (`presence_id`);

--
-- Indexes for table `trx_schedule`
--
ALTER TABLE `trx_schedule`
 ADD PRIMARY KEY (`schedule_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question_ofset`
--
ALTER TABLE `question_ofset`
MODIFY `id_soal` smallint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ref_announcement`
--
ALTER TABLE `ref_announcement`
MODIFY `announcement_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ref_courseclass`
--
ALTER TABLE `ref_courseclass`
MODIFY `courseclass_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ref_coursename`
--
ALTER TABLE `ref_coursename`
MODIFY `coursename_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ref_institution`
--
ALTER TABLE `ref_institution`
MODIFY `institution_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `ref_lesson_program`
--
ALTER TABLE `ref_lesson_program`
MODIFY `lesson_program_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ref_level`
--
ALTER TABLE `ref_level`
MODIFY `level_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ref_menu`
--
ALTER TABLE `ref_menu`
MODIFY `menu_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `ref_operator`
--
ALTER TABLE `ref_operator`
MODIFY `operator_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `ref_rooms`
--
ALTER TABLE `ref_rooms`
MODIFY `rooms_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ref_silabus`
--
ALTER TABLE `ref_silabus`
MODIFY `silabus_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ref_studyprogram`
--
ALTER TABLE `ref_studyprogram`
MODIFY `studyprogram_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ref_trainer`
--
ALTER TABLE `ref_trainer`
MODIFY `trainer_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
MODIFY `member_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_trainee`
--
ALTER TABLE `tbl_trainee`
MODIFY `trainee_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `trx_confirmation_ofpayment`
--
ALTER TABLE `trx_confirmation_ofpayment`
MODIFY `confirmation_id` smallint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_coursematerial`
--
ALTER TABLE `trx_coursematerial`
MODIFY `coursematerial_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `trx_detailpresence`
--
ALTER TABLE `trx_detailpresence`
MODIFY `detailpresence_id` smallint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_payment`
--
ALTER TABLE `trx_payment`
MODIFY `payment_id` smallint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_presence`
--
ALTER TABLE `trx_presence`
MODIFY `presence_id` smallint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `trx_schedule`
--
ALTER TABLE `trx_schedule`
MODIFY `schedule_id` smallint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
