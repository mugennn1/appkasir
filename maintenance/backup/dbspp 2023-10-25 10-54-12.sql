
-- Database Backup --
-- Ver. : 1.0.1
-- Host : Server Host
-- Generating Time : Oct 25, 2023 at 10:54:12:AM


CREATE TABLE `bayar` (
  `id_bayar` int(10) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(10) NOT NULL,
  `id_bayar_metode` int(10) NOT NULL,
  `keterangan` text NOT NULL,
  `bukti` varchar(200) NOT NULL,
  `status_verifikasi` varchar(100) NOT NULL,
  `nominal_bayar` int(17) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO bayar VALUES
("1","3","1","-","2023_10_12_05_33_10_1.png","Sudah Verifikasi","466","2023-10-12","2023-10-12 11:33:10","2023-10-12 11:33:10",""),
("2","3","2","via btn","2023_10_12_05_36_35_2.png","Sudah Verifikasi","2000000","2023-10-12","2023-10-12 11:36:35","2023-10-12 11:36:35",""),
("3","1","1","via btn","2023_10_17_04_47_15_43f61-16731383832255-1920.avif","Sudah Verifikasi","500000","2023-10-17","2023-10-17 10:47:15","2023-10-17 10:47:15",""),
("4","8","2","-","2023_10_19_05_27_20_logo_smk.png","Sudah Verifikasi","5000000","2023-10-19","2023-10-19 11:27:20","2023-10-19 11:27:20",""),
("5","7","2","-","2023_10_19_05_27_47_neuvillette_transparent_by_taemuepuan_dgavr9i.png","Sudah Verifikasi","500000","2023-10-18","2023-10-19 11:27:47","2023-10-19 11:27:47",""),
("6","6","1","-","2023_10_19_05_28_20_1305768.jpg","Sudah Verifikasi","500000","2023-10-17","2023-10-19 11:28:20","2023-10-19 11:28:20",""),
("7","1","1","-","2023_10_19_05_29_41_Untitled10_20231018083455.png","Sudah Verifikasi","500000","2023-10-16","2023-10-19 11:29:41","2023-10-19 11:29:41",""),
("8","12","1","-","2023_10_19_05_30_20_1307995.jpg","Sudah Verifikasi","500000","2023-10-15","2023-10-19 11:30:20","2023-10-19 11:30:20",""),
("9","20","1","-","2023_10_19_05_30_54_43f61-16731383832255-1920.avif","Sudah Verifikasi","500000","2023-10-14","2023-10-19 11:30:54","2023-10-19 11:30:54",""),
("10","15","2","--","2023_10_19_05_32_41_WhatsApp Image 2023-09-20 at 09.32.28.jpg","Sudah Verifikasi","466000","2023-10-12","2023-10-19 11:32:41","2023-10-19 11:32:41",""),
("11","8","1","-","2023_10_19_05_34_31_logo_smk.png","Sudah Verifikasi","446000","2023-10-10","2023-10-19 11:34:31","2023-10-19 11:34:31",""),
("12","21","2","-","2023_10_19_05_35_34_1.png","Sudah Verifikasi","446000","2023-10-02","2023-10-19 11:35:34","2023-10-19 11:35:34",""),
("13","19","2","-","2023_10_19_05_36_00_43f61-16731383832255-1920.avif","Sudah Verifikasi","446000","2023-11-11","2023-10-19 11:36:00","2023-10-19 11:36:00",""),
("14","2","1","-","2023_10_19_05_36_42_Untitled10_20231018083455.png","Sudah Verifikasi","446000","2023-10-19","2023-10-19 11:36:42","2023-10-19 11:36:42",""),
("15","19","1","-","2023_10_19_05_37_06_AdobeStock_276345533_Preview.png","Sudah Verifikasi","446000","2023-10-30","2023-10-19 11:37:06","2023-10-19 11:37:06",""),
("16","10","1","-","2023_10_19_05_37_34_2.png","Sudah Verifikasi","446000","2023-11-11","2023-10-19 11:37:34","2023-10-19 11:37:34",""),
("17","21","2","-","2023_10_19_05_37_59_1.png","Sudah Verifikasi","466000","2023-10-10","2023-10-19 11:37:59","2023-10-19 11:37:59",""),
("18","13","2","-","2023_10_19_05_38_26_logo_smk.png","Sudah Verifikasi","466000","2023-10-27","2023-10-19 11:38:26","2023-10-19 11:38:26",""),
("19","3","1","-","2023_10_19_05_38_51_Untitled10_20231018083455.png","Sudah Verifikasi","466000","2023-10-31","2023-10-19 11:38:51","2023-10-19 11:38:51",""),
("20","16","1","-","2023_10_19_05_39_12_neuvillette_transparent_by_taemuepuan_dgavr9i.png","Sudah Verifikasi","466000","2023-11-13","2023-10-19 11:39:12","2023-10-19 11:39:12","");

CREATE TABLE `bayar_alokasi` (
  `id_bayar_alokasi` int(10) NOT NULL AUTO_INCREMENT,
  `id_bayar` int(10) NOT NULL,
  `id_tagihan` int(10) NOT NULL,
  `total_alokasi` int(17) NOT NULL,
  `dialokasikan_oleh` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar_alokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO bayar_alokasi VALUES
("1","1","27","466","Otomatis Oleh Sistem","2023-10-12 11:33:10","2023-10-12 11:33:10",""),
("2","2","27","445534","Otomatis Oleh Sistem","2023-10-12 11:36:35","2023-10-12 11:36:35",""),
("3","2","28","446000","Otomatis Oleh Sistem","2023-10-12 11:36:35","2023-10-12 11:36:35",""),
("4","2","29","446000","Otomatis Oleh Sistem","2023-10-12 11:36:35","2023-10-12 11:36:35",""),
("5","2","31","446000","Otomatis Oleh Sistem","2023-10-12 11:36:35","2023-10-12 11:36:35",""),
("6","2","30","216466","Otomatis Oleh Sistem","2023-10-12 11:36:35","2023-10-12 11:36:35",""),
("7","3","1","446000","Otomatis Oleh Sistem","2023-10-17 10:47:15","2023-10-17 10:47:15",""),
("8","3","2","54000","Otomatis Oleh Sistem","2023-10-17 10:47:15","2023-10-17 10:47:15",""),
("9","4","66","446000","Otomatis Oleh Sistem","2023-10-19 11:27:20","2023-10-19 11:27:20",""),
("10","4","67","446000","Otomatis Oleh Sistem","2023-10-19 11:27:20","2023-10-19 11:27:20",""),
("11","4","70","446000","Otomatis Oleh Sistem","2023-10-19 11:27:20","2023-10-19 11:27:20",""),
("12","4","68","446000","Otomatis Oleh Sistem","2023-10-19 11:27:20","2023-10-19 11:27:20",""),
("13","4","69","2500000","Otomatis Oleh Sistem","2023-10-19 11:27:20","2023-10-19 11:27:20",""),
("14","4","71","446000","Otomatis Oleh Sistem","2023-10-19 11:27:20","2023-10-19 11:27:20",""),
("15","4","72","270000","Otomatis Oleh Sistem","2023-10-19 11:27:20","2023-10-19 11:27:20",""),
("16","5","53","446000","Otomatis Oleh Sistem","2023-10-19 11:27:47","2023-10-19 11:27:47",""),
("17","5","54","54000","Otomatis Oleh Sistem","2023-10-19 11:27:47","2023-10-19 11:27:47",""),
("18","6","40","446000","Otomatis Oleh Sistem","2023-10-19 11:28:20","2023-10-19 11:28:20",""),
("19","6","41","54000","Otomatis Oleh Sistem","2023-10-19 11:28:20","2023-10-19 11:28:20",""),
("20","7","2","392000","Otomatis Oleh Sistem","2023-10-19 11:29:41","2023-10-19 11:29:41",""),
("21","7","5","108000","Otomatis Oleh Sistem","2023-10-19 11:29:41","2023-10-19 11:29:41",""),
("22","11","72","176000","Otomatis Oleh Sistem","2023-10-19 11:34:31","2023-10-19 11:34:31",""),
("23","11","73","270000","Otomatis Oleh Sistem","2023-10-19 11:34:31","2023-10-19 11:34:31",""),
("24","14","14","446000","Otomatis Oleh Sistem","2023-10-19 11:36:42","2023-10-19 11:36:42",""),
("25","19","30","466000","Otomatis Oleh Sistem","2023-10-19 11:38:51","2023-10-19 11:38:51","");

CREATE TABLE `bayar_metode` (
  `id_bayar_metode` int(10) NOT NULL AUTO_INCREMENT,
  `metode` varchar(100) NOT NULL,
  `nomor_rekening` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar_metode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO bayar_metode VALUES
("1","Transfer ke Bank BTN Rekening SMK Triatma Jaya Badung","00555-0130-0000028","2023-09-19 08:52:11","2023-09-19 08:52:11",""),
("2","Transfer ke Bank BTN Rekening OSIS SMK Triatma Jaya Badung","00555-0188-0000085","2023-09-19 08:52:11","2023-09-19 08:52:11","");

CREATE TABLE `biaya` (
  `id_biaya` int(10) NOT NULL AUTO_INCREMENT,
  `id_periode` int(10) NOT NULL,
  `deskripsi_biaya` varchar(200) NOT NULL,
  `jumlah_biaya` int(17) NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `tingkat` int(2) DEFAULT NULL,
  `id_jurusan` int(10) DEFAULT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_biaya`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO biaya VALUES
("1","2","SPP Juli 2023","446000","2023-07-20","12","1","2023-08-29 11:56:00","2023-08-29 11:56:00",""),
("2","2","SPP Agustus 2023","446000","2023-08-20","12","1","2023-08-29 11:58:34","2023-08-29 11:58:34",""),
("3","2","SPP September 2023","446000","2023-09-20","12","1","2023-08-29 12:01:13","2023-08-29 12:01:13",""),
("5","2","Uang Studi Tur","2500000","2023-09-22","12","1","2023-08-30 09:58:36","2023-08-30 09:58:36",""),
("6","2","SPP Oktober 2023","446000","2023-09-20","12","1","2023-08-30 11:43:15","2023-08-30 11:43:15",""),
("7","2","SPP November 2023","446000","2023-11-20","12","1","2023-08-30 11:43:59","2023-08-30 11:43:59",""),
("8","2","SPP Desember 2023","446000","2023-12-20","12","1","2023-08-30 11:44:45","2023-08-30 11:44:45",""),
("9","2","SPP Januari 2024","446000","2024-01-20","12","1","2023-08-30 11:45:45","2023-08-30 11:45:45",""),
("10","2","SPP Februari 2024","446000","2024-02-20","12","1","2023-08-30 11:47:04","2023-08-30 11:47:04",""),
("11","2","SPP Maret 2024","446000","2024-03-20","12","1","2023-08-30 11:49:22","2023-08-30 11:49:22",""),
("12","2","SPP April 2024","446000","2024-04-20","12","1","2023-08-30 11:49:58","2023-08-30 11:49:58",""),
("13","2","SPP Mei 2024","446000","2024-05-20","12","1","2023-08-30 11:50:51","2023-08-30 11:50:51",""),
("14","2","SPP Juni 2024","446000","2024-06-20","12","1","2023-08-30 11:51:22","2023-08-30 11:51:22","");

CREATE TABLE `jurusan` (
  `id_jurusan` int(10) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO jurusan VALUES
("1","Pengembangan Perangkat Lunak & Gim","2023-09-05 08:40:54","2023-09-05 08:40:54",""),
("2","Tata Kecantikan","2023-09-05 08:40:54","2023-09-05 08:40:54",""),
("3","Tata Boga","2023-09-05 08:40:54","2023-09-05 08:40:54",""),
("4","Perhotelan","2023-09-05 08:40:54","2023-09-05 08:40:54","");

CREATE TABLE `periode` (
  `id_periode` int(10) NOT NULL AUTO_INCREMENT,
  `periode` varchar(100) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_periode`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO periode VALUES
("1","Tahun Ajar 2022/2023","2022-07-01","2023-06-30","2023-07-26 11:25:45","2023-07-26 11:25:45",""),
("2","Tahun Ajar 2023/2024","2023-07-01","2024-06-30","2023-07-26 12:39:26","2023-07-26 12:39:26",""),
("3","Tahun Ajar 2024/2025","2024-07-01","2025-06-30","2023-08-22 11:09:57","2023-08-22 11:09:57",""),
("6","Tahun Ajar 2021/2022","2021-07-01","2022-06-30","2023-08-23 09:15:35","2023-08-23 09:15:35","");

CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `id_jurusan` int(10) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO siswa VALUES
("1","4952","GEDE ANDI PERAYOGA","XII RPL","12","1","Jl. Gatsu Timur Denpasar","087787878","andi.gg@gmail.com","2023-08-23 11:44:03","2023-08-23 11:44:03",""),
("2","4964","ZAID ASSYA YUDAH","XII RPL","12","1","Jl. Kubu Gunung","082144377147","zaid.animelover@gmail.com","2023-08-23 11:44:09","2023-08-23 11:44:09",""),
("3","4950","Aline Syahfitri","XII RPL","12","1","Denpasar","081936440715","aline.imoet@gmail.com","2023-08-23 11:44:25","2023-08-23 11:44:25",""),
("6","4957","Ferrel Feivel","XII PPLG","12","1","Denpasar","081936440715","ferrel.aja@gmail.com","2023-09-05 09:42:19","2023-09-05 09:42:19",""),
("7","4966","Dewa Made Martha Abimayu","XII PPLG","12","1","Badung","0878602654511","abi.mayu@gmail.com","2023-09-05 09:47:57","2023-09-05 09:47:57",""),
("8","4951","Bezaliel Cahya Yehuda","XII PPLG","12","1","Jl. Gunung Andakasa Gg. Srikaya II, No. 1","0878602654511","bebeksukatoya@gmail.com","2023-09-05 12:26:20","2023-09-05 12:26:20",""),
("9","5000","Meylan Calysta","XI TKC","11","2","Lingkungan Pengipian Kerobokan Kelod","+62 821-4554-0769","mwehheheheeh11@gmail.com","2023-09-12 09:13:43","2023-09-12 09:13:43",""),
("10","6000","Sukri","XII TKC","12","2","Pulau hantu :v","+62 821-4430-9939","cicakterbang@gmail.com","2023-09-12 09:16:05","2023-09-12 09:16:05",""),
("11","6758","Mama Devi","XII TKC","12","2","Gang hantu :v","08134235465","gaktau@gmail.com","2023-09-12 09:17:10","2023-09-12 09:17:10",""),
("12","7000","jawir","XII TKC","12","2","gak tauuu","08946263287","weleeee@gmail.com","2023-09-12 09:18:51","2023-09-12 09:18:51",""),
("13","8001","Mugen","XII TKC","12","2","yyyyyyy","0987654321","12345@gmail.com","2023-09-12 09:20:04","2023-09-12 09:20:04",""),
("14","8002","Mugen :3","XII TB 1","12","3","Lingkungan Pengipian Kerobokan Kelod","0898765456743","jeonaline6@gmail.com","2023-09-12 09:21:18","2023-09-12 09:21:18",""),
("15","8003","kaze","XII TB 1","12","3","wertghdiudhfhdifuh","0987654321","jujuuuuu@gmail.com","2023-09-12 09:23:16","2023-09-12 09:23:16",""),
("16","8004","lynnn","XII TB 1","12","3","ieuefhwfsdbfsfhfhewufh","098765678983e4","wakuwaku@gmail.com","2023-09-12 09:24:10","2023-09-12 09:24:10",""),
("17","8005","mikuuu","XII TB 1","12","3","ureiwofrghjedfjbgjkdfgb","0987656766","dgyfdeuwhdbs@gmail.com","2023-09-12 09:25:36","2023-09-12 09:25:36",""),
("18","8006","lipaa","XII TB 1","12","3","gryweoufoefoefhuwgf","098747675","uwuwuwuwuw@gmail.com","2023-09-12 09:26:23","2023-09-12 09:26:23",""),
("19","8007","Mwahaha","XII PH","12","4","hgfydufgidefhugdiogur","0876647543875","youuuuuu@gmail.com","2023-09-12 09:27:26","2023-09-12 09:27:26",""),
("20","8008","jay","XII PH","12","4","hurgiwgefweufhf","0764994534","aowkwkwkkwkk@gmail.com","2023-09-12 09:28:23","2023-09-12 09:28:23",""),
("21","8009","yuiiii","XII PH","12","4","fgsieufqefhoahfoudgfr","0987548793","umuuuuu@gmail.com","2023-09-12 09:29:08","2023-09-12 09:29:08",""),
("22","8010","lalala","XII PH","12","4","uywequfufoefjdqeuiefuefhuefhufhuefhueffehu","09876789865465784","gyefheffefw@gmail.com","2023-09-12 09:30:26","2023-09-12 09:30:26","");

CREATE TABLE `tagihan` (
  `id_tagihan` int(10) NOT NULL AUTO_INCREMENT,
  `id_biaya` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `potongan` int(20) NOT NULL DEFAULT 0,
  `total_terbayar` int(20) NOT NULL DEFAULT 0,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tagihan`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tagihan VALUES
("1","1","1","XII RPL","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("2","2","1","XII RPL","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("3","3","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("4","5","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("5","6","1","XII RPL","","0","108000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("6","7","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("7","8","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("8","9","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("9","10","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("10","11","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("11","12","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("12","13","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("13","14","1","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("14","1","2","XII RPL","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("15","2","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("16","3","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("17","5","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("18","6","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("19","7","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("20","8","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("21","9","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("22","10","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("23","11","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("24","12","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("25","13","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("26","14","2","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("27","1","3","XII RPL","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("28","2","3","XII RPL","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("29","3","3","XII RPL","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("30","5","3","XII RPL","","0","682466","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("31","6","3","XII RPL","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("32","7","3","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("33","8","3","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("34","9","3","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("35","10","3","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("36","11","3","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("37","12","3","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("38","13","3","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("39","14","3","XII RPL","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("40","1","6","XII PPLG","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("41","2","6","XII PPLG","","0","54000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("42","3","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("43","5","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("44","6","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("45","7","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("46","8","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("47","9","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("48","10","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("49","11","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("50","12","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("51","13","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("52","14","6","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("53","1","7","XII PPLG","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("54","2","7","XII PPLG","","0","54000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("55","3","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("56","5","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("57","6","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("58","7","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("59","8","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("60","9","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("61","10","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("62","11","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("63","12","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("64","13","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("65","14","7","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("66","1","8","XII PPLG","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("67","2","8","XII PPLG","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("68","3","8","XII PPLG","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("69","5","8","XII PPLG","","0","2500000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("70","6","8","XII PPLG","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("71","7","8","XII PPLG","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("72","8","8","XII PPLG","","0","446000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("73","9","8","XII PPLG","","0","270000","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("74","10","8","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("75","11","8","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("76","12","8","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("77","13","8","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38",""),
("78","14","8","XII PPLG","","0","0","2023-10-12 11:30:38","2023-10-12 11:30:38","");

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO user VALUES
("1","Agus Ariyantox","adminx","adminx","2","2023-08-29 12:18:05","2023-08-29 12:18:05","");