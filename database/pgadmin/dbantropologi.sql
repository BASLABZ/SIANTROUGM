/*
SQLyog Ultimate v9.01 
MySQL - 5.5.27 : Database - dbantropologi
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbantropologi` /*!40100 DEFAULT CHARACTER SET latin1 */;

-- USE `dbantropologi`;

/*Table structure for table `question_ofset` */

DROP TABLE IF EXISTS `question_ofset`;

CREATE TABLE `question_ofset` (
  `id_soal` smallint(10) NOT NULL AUTO_INCREMENT,
  `coursename_id` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `question_ofset` */

/*Table structure for table `ref_announcement` */

DROP TABLE IF EXISTS `ref_announcement`;

CREATE TABLE `ref_announcement` (
  `announcement_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `announcement_info` mediumtext,
  `operator_id_fk` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ref_announcement` */

insert  into `ref_announcement`(`announcement_id`,`announcement_info`,`operator_id_fk`) values (1,'attention',1),(2,'attention 2',3);

/*Table structure for table `ref_courseclass` */

DROP TABLE IF EXISTS `ref_courseclass`;

CREATE TABLE `ref_courseclass` (
  `courseclass_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `courseclass_categories` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`courseclass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `ref_courseclass` */

insert  into `ref_courseclass`(`courseclass_id`,`courseclass_categories`) values (3,'IR 1'),(4,'IR 2'),(5,'IDAGM'),(6,'DK'),(7,'DK 1'),(8,'DK 1');

/*Table structure for table `ref_coursename` */

DROP TABLE IF EXISTS `ref_coursename`;

CREATE TABLE `ref_coursename` (
  `coursename_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `coursename_title` mediumtext,
  `coursename_info` text,
  `silabus_id_fk` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`coursename_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `ref_coursename` */

insert  into `ref_coursename`(`coursename_id`,`coursename_title`,`coursename_info`,`silabus_id_fk`) values (1,'Dasar Kedokteran','dilaksankan dalam enam bulan saja',1),(2,'IDentifikasi ANggota gerak Manusia','Materi lengkap',1),(3,'Identifikasi Tulang Pelvis','Tidak Ada remidi dalam kursus  ini gais',2),(4,'Antrophometry','blablaaa',1),(11,'Identifikasi Ras','Peserta bisa mengikuti kursus ini apabila sudah melewati tahap  kursus Identifikasi Tulang',2),(12,'tambahiseng','lalalaa',2);

/*Table structure for table `ref_institution` */

DROP TABLE IF EXISTS `ref_institution`;

CREATE TABLE `ref_institution` (
  `institution_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `institution_name` varchar(50) DEFAULT NULL,
  `institution_address` text,
  PRIMARY KEY (`institution_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `ref_institution` */

insert  into `ref_institution`(`institution_id`,`institution_name`,`institution_address`) values (1,'Universitas Teknologi Yogyakarta','JOMBOR'),(2,'Universitas Negeri Yogyakarta','Jl Colombo'),(3,'Universitas Gadjah Mada','Jalan Medika Sekip Utara'),(4,'STMIK Ahmad Yani','Ringroad Barat Kasihan Bantul Yogyakarta'),(5,'Universitas Atmajaya','Babarsari Yogyakarta'),(6,'Universitas Islam Indonesia','Jalan Kaliurang');

/*Table structure for table `ref_lesson_program` */

DROP TABLE IF EXISTS `ref_lesson_program`;

CREATE TABLE `ref_lesson_program` (
  `lesson_program_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `silabus_id` smallint(10) DEFAULT NULL,
  `lesson_program_description` text,
  `lesson_program_time` date DEFAULT NULL,
  `lesson_program_literature` mediumtext,
  `trainer_id_fk` smallint(10) DEFAULT NULL,
  `silabus_id_fk` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`lesson_program_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ref_lesson_program` */

insert  into `ref_lesson_program`(`lesson_program_id`,`silabus_id`,`lesson_program_description`,`lesson_program_time`,`lesson_program_literature`,`trainer_id_fk`,`silabus_id_fk`) values (1,NULL,'hhahhahaha','2016-12-02','gagagagaga',1,2);

/*Table structure for table `ref_level` */

DROP TABLE IF EXISTS `ref_level`;

CREATE TABLE `ref_level` (
  `level_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `level_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ref_level` */

insert  into `ref_level`(`level_id`,`level_name`) values (1,'SA'),(2,'Sekretaris Laboratorium'),(4,'Kepala Laboratorium'),(5,'Dosen Pengajar'),(6,'Member'),(7,'Peserta Kursus');

/*Table structure for table `ref_menu` */

DROP TABLE IF EXISTS `ref_menu`;

CREATE TABLE `ref_menu` (
  `menu_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) DEFAULT NULL,
  `menu_url` varchar(60) DEFAULT NULL,
  `menu_parent` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `ref_menu` */

insert  into `ref_menu`(`menu_id`,`menu_name`,`menu_url`,`menu_parent`) values (1,'Master Data',NULL,0),(2,'Data Operator','operator.php',1),(3,'Data Menu','menu.php',1),(4,'Data Level','level.php',1),(5,'Data Silabi','silabus.php',1),(7,'Data Nama Kursus','coursename.php',1),(8,'Data Kelas Kursus','courseclass.php',1),(9,'Data Registrasi Member','member-registration-approve.php',17),(10,'Data SAP','lesson-program.php',1),(11,'Daftar Instansi','institution.php',1),(12,'Data Ruangan','rooms.php',1),(14,'Data Program Studi','studyprogram.php',1),(15,'Data Pengajar','trainer.php',1),(16,'Data Pengumuman','announcement.php',1),(17,'Transaksi',NULL,0),(18,'Data Presensi','presence.php',17),(19,'Data Jadwal','schedule.php',17),(21,'Ketersediaan Kursus','detailcourse.php',17),(23,'Data Laporan',NULL,0),(24,'Detail Kursus','coursedetail.php',17),(25,'Konfirmasi','',0),(26,'Konfirmasi Pembayaran','',25),(27,'Absen Peserta','presence.php',17),(28,'Kumpulan Materi','coursematerial-file.php',17),(29,'cobaa','coba.php',17),(30,'Data Materi Kursus','coursematerial.php',1);

/*Table structure for table `ref_operator` */

DROP TABLE IF EXISTS `ref_operator`;

CREATE TABLE `ref_operator` (
  `operator_id` smallint(10) NOT NULL AUTO_INCREMENT,
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
  `operator_levelid_fk` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`operator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `ref_operator` */

insert  into `ref_operator`(`operator_id`,`operator_name`,`operator_username`,`operator_password`,`operator_placeofbirth`,`operator_dateofbirth`,`operator_gender`,`operator_address`,`operator_phonenumber`,`operator_email`,`operator_hint_question`,`operator_answer_question`,`operator_image`,`operator_login`,`operator_levelid_fk`) values (1,'Dita Paraditya','paraditya','e10adc3949ba59abbe56e057f20f883e','yogyakarta','07-18-1995','Wanita','tamsis','08755','ditapraditya1@gmail.com','siapa nama gadis ibu kandung anda?','kistyaningsih','ditakk.jpg','Y',1),(4,'Muhammad Iqbal','prayoga','46f227e9cf17e2e1e88b14e679047bd9','Subang','1996-07-25','Pria','Sorowajan goreng','087666362','iqbalganteng@gmail.com','siapa nama gadis ibu kandung anda?','ropiah','3.jpg','Y',2),(5,'Okky Caesariyanto','okcaesar','08686c4c6c5a71c293fa44ad27916b65','Yogyakarta','1998-10-06','Pria','Suryoputran PB III /73 Yogyakarta','089676251627','okkycaesar@gmail.com','siapa nama gadis ibu kandung anda?','yuyun','','N',5);

/*Table structure for table `ref_rooms` */

DROP TABLE IF EXISTS `ref_rooms`;

CREATE TABLE `ref_rooms` (
  `rooms_id` int(11) NOT NULL AUTO_INCREMENT,
  `rooms_name` varchar(30) DEFAULT NULL,
  `rooms_note` text,
  PRIMARY KEY (`rooms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `ref_rooms` */

insert  into `ref_rooms`(`rooms_id`,`rooms_name`,`rooms_note`) values (1,'A21','Lab Arsitektur'),(2,'A22',''),(3,'A23',''),(4,'A24',''),(5,'A25',''),(6,'B21',''),(7,'B22',''),(8,'C11','');

/*Table structure for table `ref_silabus` */

DROP TABLE IF EXISTS `ref_silabus`;

CREATE TABLE `ref_silabus` (
  `silabus_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `silabus_purpose` text,
  `silabus_period` date DEFAULT NULL,
  `silabus_topic` text,
  `operator_id_fk` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`silabus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ref_silabus` */

insert  into `ref_silabus`(`silabus_id`,`silabus_purpose`,`silabus_period`,`silabus_topic`,`operator_id_fk`) values (1,'Menerapkan pendidikan dasar kedokteran bagi mahasiswa','2016-08-11','Dasar Kedokteran',1),(2,'Peserta mampu menerapkan metode identifikasi Tulang dengan lugas','2016-09-12','Identifikasi Tulang anggota gerak manusia',4),(3,'Setelah mengikuti perkuliahan peserta kursus diharapkan dapat memiliki pengetahuan,ketrampilan, dan sikap yang positif terhadap teori dan pengelolaan tulang-tulang manusia','2016-10-10','Anggota Gerak badan Manusia',1),(4,'sssss','2016-11-03','ssss',1);

/*Table structure for table `ref_studyprogram` */

DROP TABLE IF EXISTS `ref_studyprogram`;

CREATE TABLE `ref_studyprogram` (
  `studyprogram_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `studyprogram_name` varchar(25) DEFAULT NULL,
  `studyprogram_note` text,
  PRIMARY KEY (`studyprogram_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `ref_studyprogram` */

insert  into `ref_studyprogram`(`studyprogram_id`,`studyprogram_name`,`studyprogram_note`) values (1,'Manajemen Informatika','D3 Akreditasi A'),(2,'Teknik Sipil','S1 Akreditasi B'),(3,'Teknik Arsitektur','S1 Akreditasi B'),(4,'Teknik Informatika','S1 Akreditasi B'),(5,'Sistem Informasi','S1 Akreditasi B'),(6,'Manajemen','S1 Akreditasi B'),(7,'Akutansi','D3');

/*Table structure for table `ref_trainer` */

DROP TABLE IF EXISTS `ref_trainer`;

CREATE TABLE `ref_trainer` (
  `trainer_id` smallint(10) NOT NULL AUTO_INCREMENT,
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
  `trainer_status` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `ref_trainer` */

insert  into `ref_trainer`(`trainer_id`,`trainer_name`,`trainer_username`,`trainer_password`,`trainer_placeofbirth`,`trainer_dateofbirth`,`trainer_gender`,`trainer_religion`,`trainer_address`,`trainer_phonenumber`,`trainer_email`,`trainer_website`,`trainer_position`,`trainer_image`,`trainer_status`) values (1,'Janatin Hastuti','janatin','93279e3308bdbbeed946fc965017f67a','Bantul Yogyakarta','1971-04-12','Wanita','Islam','Imogiri YK','087655432413','janatinhastuti@gmail.com','ugm.ac.id','Koordinator Penelitian','16.png','N'),(2,'Kistyaningsih','kistyaning','230d8e9790aa4e27740d4437f551102c','Ponorogo','1967-05-01','Wanita','Islam','','085878885316','kistyaningsih@gmail.com','kistyaningsih@gmail.com','Dosen Pengajar','','N'),(3,'Rianto M.Eng','rianto','a6e4daced59fde8a6cb93dc0b3b3c544','Bantul Yogyakarta','1970-02-12','Pria','Islam','','087726522255','riantex@gmail.com','rianto.@mail.com','Dosen Pengajar','','N'),(4,'Purwanto M.Kom','purwanto12','f63f4fbc9f8c85d409f2f59f2b9e12d5','Gorontalo','0000-00-00','Pria','Islam','Jakarta','087723141543','purwanto@yahoo.com','pur@mail.com','jajajaja','b88c510f0ecda050541039eb5315cf74.jpg','N');

/*Table structure for table `tbl_member` */

DROP TABLE IF EXISTS `tbl_member`;

CREATE TABLE `tbl_member` (
  `member_id` smallint(10) NOT NULL AUTO_INCREMENT,
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
  `member_status_login` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_member` */

insert  into `tbl_member`(`member_id`,`member_name`,`member_address`,`member_useremail`,`member_phonenumber`,`member_password`,`member_placeofbirth`,`member_dateofbirth`,`member_gender`,`member_religion`,`member_position`,`institution_id_fk`,`studyprogram_id_fk`,`member_image`,`member_hint_question`,`member_answer_question`,`member_status_active`,`member_levelid_fk`,`member_confirm_date`,`member_register_date`,`member_status_login`) values (2,'Muhammad Iqbal','Subang','iqbal@gmail.com','0877765','473501052\n','Subang','1996-07-25','Pria','Islam','Mahasiswa',NULL,NULL,'iqbale.jpg','Siapa nama gadis ibu kandung anda?','Ropiah','',6,NULL,NULL,NULL),(3,'Susanto','Ngestiharjo','elfirasusanto@gmail.com','0810382788','994815361\n','Yogyakarta','1994-08-24','Wanita','Islam','Mahasiswa',NULL,NULL,NULL,'Siapa nama gadis ibu kandung anda?','Yuli','',6,NULL,NULL,NULL),(5,'Aliasari','Sedayu','amandaaliasari2@gmail.com','0987654333','2068760360\n','Purworejo','1994-12-29','Wanita','Islam','Mahasiswa',NULL,NULL,NULL,'Siapa nama gadis ibu kandung anda?','Sri Sumarni','',6,NULL,NULL,NULL),(6,'Janatin Hastuti','Bantul','janatin@gmail.com','098766665','1664957544\n','Yogyakarta','1970-04-12','Wanita','Islam','Dosen Peneliti',NULL,NULL,NULL,'Siapa nama gadis ibu kandung anda?','Sari','',6,NULL,NULL,NULL),(7,'RR Kistyaningsih','njjjjjjjj','kiskis@yahoo.com','08726252422323','','Yogyakarta','1967-05-01','Wanita','Islam','Tata Usaha',NULL,NULL,NULL,'Siapa nama gadis ibu kandung anda?','Kasih','',6,NULL,NULL,NULL),(8,'Aziz Zulianto','Jl.Gajah Glagahsari Yogyakarta','aziz.zuli@gmail.com','089786545434','','Lampung','1994-07-22','Pria','Islam','Mahasiswa',NULL,NULL,NULL,'Siapa nama gadis ibu kandung anda?','Indah','',6,NULL,NULL,NULL),(9,'Rino Kusnanto','Celeban, Yogyakarta','rino.kusnanto@gmail.com','083876538373','430398031\n','Yogyakarta','1993-04-20','Pria','Islam','Programmer',NULL,NULL,'m1.jpg','Siapa anda?','rino','',6,NULL,NULL,NULL),(10,'Iqbal Prayoga','Subang Indonesia','muhammadiqbal@gmail.com','087763435343','1032938210\n','Subang','1996-07-25','Pria','Islam','Programmer',NULL,NULL,'Red-from-Angry-Birds-Movie.jpg','Siapa nama gadis ibu kandung anda?','Ropiahh','',6,NULL,NULL,NULL);

/*Table structure for table `tbl_trainee` */

DROP TABLE IF EXISTS `tbl_trainee`;

CREATE TABLE `tbl_trainee` (
  `trainee_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `member_id_fk` smallint(10) DEFAULT NULL,
  `institution_id_fk` smallint(10) DEFAULT NULL,
  `trainee_status` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`trainee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_trainee` */

insert  into `tbl_trainee`(`trainee_id`,`member_id_fk`,`institution_id_fk`,`trainee_status`) values (5,9,1,'N'),(6,10,1,'N'),(11,5,2,'N'),(12,2,1,'N');

/*Table structure for table `trx_cname_cclass` */

DROP TABLE IF EXISTS `trx_cname_cclass`;

CREATE TABLE `trx_cname_cclass` (
  `coursename_id_fk` smallint(10) DEFAULT NULL,
  `courseclass_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_cname_cclass` */

insert  into `trx_cname_cclass`(`coursename_id_fk`,`courseclass_id_fk`) values (1,6),(1,6);

/*Table structure for table `trx_confirmation_ofpayment` */

DROP TABLE IF EXISTS `trx_confirmation_ofpayment`;

CREATE TABLE `trx_confirmation_ofpayment` (
  `confirmation_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `confirmation_category` varchar(30) DEFAULT NULL,
  `confirmation_date` datetime DEFAULT NULL,
  `confirmation_accountnumber` varchar(30) DEFAULT NULL,
  `confirmation_proofpayment` varchar(30) DEFAULT NULL,
  `confirmation_status` enum('Y','N') DEFAULT NULL,
  `confirmation_note` text,
  PRIMARY KEY (`confirmation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_confirmation_ofpayment` */

/*Table structure for table `trx_coursematerial` */

DROP TABLE IF EXISTS `trx_coursematerial`;

CREATE TABLE `trx_coursematerial` (
  `coursematerial_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `coursematerial_title` mediumtext,
  `coursematerial_file` varchar(100) DEFAULT NULL,
  `coursematerial_dateofposted` date DEFAULT NULL,
  PRIMARY KEY (`coursematerial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `trx_coursematerial` */

insert  into `trx_coursematerial`(`coursematerial_id`,`coursematerial_title`,`coursematerial_file`,`coursematerial_dateofposted`) values (1,'ini adalah ini adlah ini adlah','jdjdjdjdjd.pdf','2015-03-26');

/*Table structure for table `trx_detailpresence` */

DROP TABLE IF EXISTS `trx_detailpresence`;

CREATE TABLE `trx_detailpresence` (
  `detailpresence_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `trainee_id_fk` smallint(10) DEFAULT NULL,
  `trainee_name` varchar(60) DEFAULT NULL,
  `trainee_gender` enum('Wanita','Pria') DEFAULT NULL,
  `detailpresence_status` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`detailpresence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_detailpresence` */

/*Table structure for table `trx_institution_studyprogram` */

DROP TABLE IF EXISTS `trx_institution_studyprogram`;

CREATE TABLE `trx_institution_studyprogram` (
  `institution_id_fk` smallint(10) DEFAULT NULL,
  `studyprogram_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_institution_studyprogram` */

insert  into `trx_institution_studyprogram`(`institution_id_fk`,`studyprogram_id_fk`) values (2,3),(3,2),(3,3),(3,4),(3,6),(1,2),(1,3),(1,4),(1,5);

/*Table structure for table `trx_level_menu` */

DROP TABLE IF EXISTS `trx_level_menu`;

CREATE TABLE `trx_level_menu` (
  `level_id_fk` smallint(10) DEFAULT NULL,
  `menu_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_level_menu` */

insert  into `trx_level_menu`(`level_id_fk`,`menu_id_fk`) values (3,16),(3,18),(6,17),(6,21),(6,25),(6,26),(2,9),(2,17),(2,18),(2,25),(2,26),(2,27),(4,23),(1,2),(1,3),(1,4),(1,5),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,14),(1,15),(1,16),(1,19),(1,26),(1,30);

/*Table structure for table `trx_operator_level` */

DROP TABLE IF EXISTS `trx_operator_level`;

CREATE TABLE `trx_operator_level` (
  `operator_id` smallint(10) DEFAULT NULL,
  `level_id` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_operator_level` */

/*Table structure for table `trx_payment` */

DROP TABLE IF EXISTS `trx_payment`;

CREATE TABLE `trx_payment` (
  `payment_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `payment_uniquecode` varchar(30) DEFAULT NULL,
  `payment_approve` datetime DEFAULT NULL,
  `member_id_fk` smallint(10) DEFAULT NULL,
  `courseclass_id_fk` smallint(10) DEFAULT NULL,
  `payment_total` int(11) DEFAULT NULL,
  `payment_note` text,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_payment` */

/*Table structure for table `trx_presence` */

DROP TABLE IF EXISTS `trx_presence`;

CREATE TABLE `trx_presence` (
  `presence_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `presence_date` date DEFAULT NULL,
  `schedule_id_fk` smallint(10) DEFAULT NULL,
  `courseclass_id_fk` smallint(10) DEFAULT NULL,
  PRIMARY KEY (`presence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_presence` */

/*Table structure for table `trx_schedule` */

DROP TABLE IF EXISTS `trx_schedule`;

CREATE TABLE `trx_schedule` (
  `schedule_id` smallint(10) NOT NULL AUTO_INCREMENT,
  `coursename_id_fk` smallint(10) DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `schedule_coursestatus` varchar(15) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_finish` time DEFAULT NULL,
  `courseclass_id_fk` smallint(10) DEFAULT NULL,
  `rooms_id_fk` smallint(10) DEFAULT NULL,
  `coursematerial_id_fk` smallint(10) DEFAULT NULL,
  `trainer_id_fk` smallint(10) DEFAULT NULL,
  `schedule_note` text,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `trx_schedule` */

insert  into `trx_schedule`(`schedule_id`,`coursename_id_fk`,`schedule_date`,`schedule_coursestatus`,`time_start`,`time_finish`,`courseclass_id_fk`,`rooms_id_fk`,`coursematerial_id_fk`,`trainer_id_fk`,`schedule_note`) values (4,4,'2016-10-12','Tersedia','09:08:00','15:00:00',1,5,1,1,'qqqq'),(5,2,'2016-10-27','Tersedia','12:00:00','14:30:00',5,8,1,1,''),(6,3,'2016-12-22','Up Coming','15:00:00','17:00:00',2,5,1,1,''),(7,11,'2016-11-23','Tersedia','10:00:00','12:00:00',3,5,1,3,'');

/*Table structure for table `trx_schedule_trainer` */

DROP TABLE IF EXISTS `trx_schedule_trainer`;

CREATE TABLE `trx_schedule_trainer` (
  `schedule_id_fk` smallint(10) DEFAULT NULL,
  `trainer_id_fk` smallint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `trx_schedule_trainer` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
