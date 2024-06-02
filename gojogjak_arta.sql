-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2024 at 09:26 AM
-- Server version: 8.0.34
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gojogjak_arta`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int NOT NULL,
  `foto` varchar(50) NOT NULL,
  `user_admin` varchar(20) NOT NULL,
  `pass_admin` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `foto`, `user_admin`, `pass_admin`, `level`, `nama`) VALUES
(4, 'cfa8c65063a61952ed5c288413c84b55.jpg', 'admin', 'admin1881', '1', 'Ilham Riky Rismawan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bukti`
--

CREATE TABLE `tbl_bukti` (
  `id_bukti` int NOT NULL,
  `id_pesan` int NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_bukti`
--

INSERT INTO `tbl_bukti` (`id_bukti`, `id_pesan`, `file`) VALUES
(27, 47, 'Tugas_Aplikasi_Replikasi_5210311012.pdf'),
(28, 48, 'Pocong.jpeg'),
(29, 49, 'unnamed.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daerah`
--

CREATE TABLE `tbl_daerah` (
  `id_provinsi` int NOT NULL,
  `id_daerah` int NOT NULL,
  `nama_daerah` varchar(35) NOT NULL,
  `biaya` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_daerah`
--

INSERT INTO `tbl_daerah` (`id_provinsi`, `id_daerah`, `nama_daerah`, `biaya`) VALUES
(1, 1, 'Blitar', 50000),
(2, 2, 'Semarang', 150000),
(3, 3, 'Bogor', 200000),
(5, 4, 'Sleman', 175000),
(1, 5, 'Surabaya', 65000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel`
--

CREATE TABLE `tbl_hotel` (
  `id_hotel` int NOT NULL,
  `hotel` varchar(100) NOT NULL,
  `harga` int NOT NULL,
  `ket_hotel` text NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`id_hotel`, `hotel`, `harga`, `ket_hotel`, `foto`) VALUES
(9, 'Bobobox Pods Malioboro', 200000, '<div class=\"p-txt\" style=\"text-align: justify;\" data-v-6d209bf7=\"\">Bobobox Pods Malioboromerupakan salah satu penginapan yang mengusung konsep hotel kapsul. Di sini, kamu akan dimanjakan oleh sejumlah fasilitas di dalam podnya seperti lampu LED dan pengeras suara Bluetooth. Untuk bermalam di Bobobox Pods Malioboro, harga per malamnya mulai dari Rp 200 ribuan aja.</div>\r\n<div class=\"lazyComponent_wrap\" style=\"text-align: justify;\" data-v-6d209bf7=\"\">\r\n<div class=\"activity-card\" data-v-3078153b=\"\">\r\n<div class=\"bury-point-comp\" data-v-3078153b=\"\">\r\n<div class=\"card-img\" data-v-58d2589f=\"\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"p-txt\" style=\"text-align: justify;\" data-v-6d209bf7=\"\">Alamat: Jl. Malioboro No.39, Sosromenduran, Gedong Tengen, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55271</div>', 'hotel-1.webp'),
(10, 'The Cabin Hotel Bhayangkara', 200000, '<p style=\"text-align: justify;\">Berhenti di Cabin Hotel Bhayangkara untuk menikmati keindahan Yogyakarta. Hotel ini memiliki semua yang Anda butuhkan untuk menginap dengan nyaman.</p>\r\n<p style=\"text-align: justify;\">Fasilitas yang tersedia termasuk layanan kamar 24 jam, keamanan 24 jam, resepsionis 24 jam, penyimpanan bagasi, dan Wi-Fi di area umum. Kamar yang nyaman memastikan tidur yang nyenyak dengan fasilitas seperti televisi LCD, kamar bebas rokok, AC, layanan bangun, dan meja tulis.</p>\r\n<p style=\"text-align: justify;\">Hotel ini juga menawarkan berbagai kegiatan rekreasi. Jelajahi semua yang Yogyakarta tawarkan dengan menjadikan Cabin Hotel Bhayangkara sebagai tempat menginap Anda.</p>', 'Desain tanpa judul (2).png'),
(11, 'Grand Senyum Hotel', 500000, '<p style=\"text-align: justify;\">Menginap di Grand Senyum Hotel menempatkan Anda di pusat kota Yogyakarta, hanya beberapa langkah dari Jalan Malioboro dan 3 menit berjalan kaki dari Tugu Yogyakarta. Hotel ini berjarak 1,8 km dari Malioboro Mall dan 16,3 km dari Candi Prambanan.</p>\r\n<p style=\"text-align: justify;\">Nikmati fasilitas rekreasi seperti kolam renang outdoor atau pemandangan dari teras. Hotel ini juga menyediakan akses internet nirkabel gratis dan layanan concierge. Anda dapat menikmati hidangan di restoran hotel atau memanfaatkan layanan kamar pada jam-jam tertentu. Akhiri hari Anda dengan minuman di bar/lounge. Sarapan prasmanan gratis tersedia setiap hari mulai pukul 06.00 hingga 10.00.</p>\r\n<p style=\"text-align: justify;\">Fasilitas unggulan hotel ini termasuk layanan laundry/dry cleaning, resepsionis 24 jam, dan penitipan koper. Hotel juga memiliki 2 ruang pertemuan yang dapat digunakan untuk berbagai acara. Parkir mandiri gratis tersedia di lokasi.</p>\r\n<p style=\"text-align: justify;\">Rasakan kenyamanan seperti di rumah sendiri di salah satu dari 57 kamar ber-AC yang dilengkapi dengan televisi layar datar. Akses internet nirkabel gratis tersedia untuk kenyamanan Anda. Kamar mandi dilengkapi dengan shower, perlengkapan mandi gratis, dan sandal. Fasilitas lainnya mencakup brankas dan meja tulis; tempat tidur lipat/ekstra tersedia dengan biaya tambahan jika diminta.</p>', '0222x120009t5tm94CB9E_R_600_400_R5.webp'),
(12, 'Luxury Malioboro Yogyakarta Hotel', 659000, '<p style=\"text-align: justify;\">Luxury Malioboro Yogyakarta Hotel berlokasi strategis, hanya 10 menit berjalan kaki dari kawasan perbelanjaan Jalan Malioboro. Hotel ini memiliki kamar ber-AC dan menyediakan akses Wi-Fi gratis di area lobi.</p>\r\n<p style=\"text-align: justify;\">Kamar-kamar di Horaios Malioboro Hotel dilengkapi dengan TV kabel layar datar dan kamar mandi dalam yang memiliki perlengkapan mandi gratis serta fasilitas shower.</p>\r\n<p style=\"text-align: justify;\">Hotel ini berjarak 30 menit berkendara dari Bandara Internasional Adi Sucipto. Anda bisa mengatur antar-jemput bandara dan penyewaan mobil melalui staf hotel. Layanan binatu dan menyetrika juga tersedia dengan biaya tambahan.</p>\r\n<p style=\"text-align: justify;\">Alamat: Jalan Gowongan Kidul, No 57, Yogyakarta, Daerah Istimewa Yogyakarta, 55271, Indonesia.</p>', '220c10000000ospd4ED88_R_600_400_R5.webp'),
(13, 'Hotel Tjokro Style', 510000, '<div class=\"hotelDescription_descriptionInfo-desc__w89d1\" style=\"text-align: justify;\">Terletak di kota Yogyakarta, Tjokro Style Yogyakarta hanya berjarak 5 menit berkendara dari Museum Trick Eye 3D De Mata dan Art and Culture in Yogyakarta. Hotel ini sangat cocok untuk keluarga dan hanya berjarak 3,2 km dari Jalan Malioboro dan 4,8 km dari Malioboro Mall.<br /><br />Puaskan selera makan Anda dengan makan siang atau makan malam di Citrus, restoran yang menyajikan masakan internasional. Anda juga bisa memanfaatkan layanan kamar pada jam tertentu jika ingin makan di kamar. Di penghujung hari, bersantailah dengan menikmati minuman di bar/lounge atau bar tepi kolam renang.<br /><br />Hotel ini memiliki berbagai fasilitas unggulan, termasuk pusat bisnis, layanan check-in ekspres, dan koran gratis di lobi. Jika Anda merencanakan kegiatan di Yogyakarta, hotel ini menyediakan ruang seluas 275 meter persegi yang terdiri dari ruang konferensi dan 3 ruang rapat. Antar-jemput ke bandara tersedia dengan biaya tambahan (atas permintaan), dan parkir valet gratis tersedia di lokasi.<br /><br />Nikmati kenyamanan seperti di rumah sendiri di salah satu dari 99 kamar berpenyejuk udara yang dilengkapi dengan televisi layar datar. Akses Internet nirkabel gratis tersedia untuk menjaga koneksi Anda, dan saluran kabel tersedia untuk hiburan. Kamar mandi pribadi dengan shower dilengkapi dengan perlengkapan mandi gratis dan kloset. Fasilitas lainnya termasuk telepon, brankas, dan meja tulis.</div>', '0202o120009r68iey93C5_R_960_660_R5_D.webp'),
(14, 'H -Boutique Hotel Jogjakarta', 610000, '<p style=\"text-align: justify;\">Dengan menginap di H Boutique Hotel Jogjakarta di kota Yogyakarta, Anda akan berada terhubung dengan pusat perbelanjaan, hanya beberapa langkah dari Galleria Mall dan 1 menit berkendara dari Universitas Gadjah Mada. Hotel ini berjarak 1,5 km dari Jalan Malioboro dan 1,7 km dari Tugu Yogyakarta.</p>\r\n<p style=\"text-align: justify;\">Nikmati fasilitas rekreasi seperti rental sepeda atau pemandangan di teras. Hotel ini juga menyediakan akses Internet nirkabel gratis, layanan concierge, dan pemanggang barbekyu. Anda dapat menikmati hidangan di restoran hotel, atau tetap tinggal di kamar dengan memanfaatkan layanan kamar 24 jam. Akhiri hari Anda dengan menikmati minuman di bar/lounge. Sarapan prasmanan gratis tersedia setiap hari mulai pukul 06.00 hingga 10.00.</p>\r\n<p style=\"text-align: justify;\">Fasilitas unggulan lainnya di hotel ini termasuk pusat bisnis, koran gratis di lobi, dan layanan laundry/dry cleaning. Hotel ini juga memiliki 6 ruang pertemuan yang dapat digunakan untuk beragam acara. Antar-jemput ke bandara tersedia dengan biaya tambahan (tersedia 24 jam), dan parkir valet gratis tersedia di lokasi.</p>\r\n<p style=\"text-align: justify;\">Nikmati kenyamanan seperti di rumah sendiri di salah satu dari 90 kamar berpenyejuk udara yang dilengkapi dengan lemari es dan televisi layar datar. Akses Internet nirkabel gratis tersedia untuk menjaga koneksi Anda, serta hiburan dengan saluran kabel. Kamar mandi memiliki shower dengan shower rainfall dan perlengkapan mandi gratis. Fasilitas lainnya termasuk telepon, mesin pembuat kopi/teh, dan air minum kemasan gratis.</p>', '220k0g0000008317m47AE_R_960_660_R5_D.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id_paket` int NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga_paket` int NOT NULL,
  `ket_paket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_paket`
--

INSERT INTO `tbl_paket` (`id_paket`, `nama_paket`, `harga_paket`, `ket_paket`) VALUES
(1, 'Jogja Beach Bay', 250000, '<p><span style=\"color: #ffcc00;\">Dimulai dengan kunjungan ke Pantai Parangtritis dilanjutkan ke Pantai Indrayanti. Terakhir, Anda akan diajak ke Goa Pindul.</span></p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -19px; top: -17px;\"><span style=\"color: #ffcc00;\">&nbsp;</span></div>'),
(7, 'Yogyakarta Culture', 450000, '<p><span style=\"color: #ffcc00;\">Mengunjungi Keraton Yogyakarta yang merupakan pusat kebudayaan Jawa, serta Taman Sari. Wisata dilanjutkan ke Malioboro.&nbsp;</span></p>'),
(8, 'Merapi Uncover', 1750000, '<p><span style=\"color: rgb(255, 204, 0);\">Menjelajahi&nbsp; Gunung Merapi. Perjalanan dimulai dari Kaliurang, melanjutkan dengan Lava Tour menggunakan jeep untuk melihat sisa-sisa erupsi Merapi.</span></p>'),
(9, 'Adventure Cave Tour', 2000000, '<p><span style=\"color: rgb(255, 204, 0);\">Menyusuri Goa Kalisuci, melanjutkan eksplorasi ke Goa Cerme. Perjalanan diakhiri di Goa Pindul.</span></p>'),
(10, 'Cultural Workshop', 1270000, '<p><span style=\"color: #ffcc00;\">Perjalanan ke Desa Batik Giriloyo lalu ke Desa Kasongan. Perjalanan diakhiri dengan kunjungan ke Desa Wayang Kulit Gendeng.</span></p>'),
(11, 'Mountain Escape', 5000000, '<p><span style=\"color: #ffcc00;\">Anda akan&nbsp;mendaki Gunung Merbabu. Setelah itu, kunjungi Taman Nasional Gunung Merapi&nbsp; Diakhiri dengan kunjungan ke Desa Kaliurang.</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `id_pesan` int NOT NULL,
  `id_user` int NOT NULL,
  `id_paket` int NOT NULL,
  `id_hotel` int NOT NULL,
  `id_daerah` int NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_tour` date NOT NULL,
  `status` char(2) NOT NULL DEFAULT 'S1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`id_pesan`, `id_user`, `id_paket`, `id_hotel`, `id_daerah`, `tgl_pesan`, `tgl_tour`, `status`) VALUES
(47, 30, 1, 10, 2, '2024-05-28', '2024-05-31', 'S2'),
(48, 30, 1, 11, 3, '2024-05-29', '2024-05-31', 'S1'),
(49, 30, 11, 10, 3, '2024-05-29', '2024-05-31', 'S2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int NOT NULL,
  `nama_provinsi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Jawa Timur'),
(2, 'Jawa tengah'),
(3, 'Jawa Barat'),
(4, 'Jakarta'),
(5, 'Yogyagarta'),
(6, 'Banten');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_rek` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jekel` varchar(1) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `foto`, `nama_user`, `email_user`, `no_hp`, `no_rek`, `nama_rek`, `username`, `password`, `tgl_lahir`, `jekel`, `alamat`) VALUES
(28, 'Pocong.jpeg', 'Putri Fitriani', 'putri123@gmail.com', '08171723733', '12345567', 'BCA', 'putri', 'putri123', '0000-00-00', 'P', 'Bekasi\r\nCikarang Barat'),
(29, '', '', '', '', '', '', '', '', '0000-00-00', '', ''),
(30, 'ledok-sambi-by-@kapanewonpakem (1).jpg', 'Dava', 'dava@gmail.tol', '089172727', '81827', 'dava', 'davai', 'dava123', '1980-05-15', 'L', 'Jonggol');

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `id` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `konten` varchar(500) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempat`
--

INSERT INTO `tempat` (`id`, `nama`, `konten`, `gambar`) VALUES
(9, '5 Wisata Alam untuk Menghirup Udara Segar di Jogja', '<p>Berikut adalah 5 destinasi wisata alam yang cocok untuk menghirup udara segar di Jogja:</p>\r\n<ol>\r\n<li>\r\n<p>Gunung Merapi Gunung Merapi tidak hanya menawarkan keindahan alam yang megah, tetapi juga pengalaman petualangan yang tak terlupakan. Para pengunjung dapat menikmati trekking menyusuri lereng gunung, menikmati pemandangan alam yang memukau, dan merasakan udara segar yang menyegarkan.</p>\r\n</li>\r\n</ol>', '1.jpg'),
(10, '5 Kuliner Jogja Hits yang Selalu Dipenuhi Wisatawa', '<div class=\"components__NormalWidth-sc-hglo4q-0 ejoxAk\" data-key=\"663fc657a78dfd0016974b20-46-19\">\r\n<div class=\"Viewweb__StyledView-sc-b0snvl-0 eBqMbV  mt15 mb15\" data-key=\"663fc657a78dfd0016974b20-46-19\">\r\n<p id=\"1.-gudeg-sagan\">1. Gudeg sagan</p>\r\n</div>\r\n</div>\r\n<p>Gudeg Sagan berlokasi di Jalan Prof. Dr. Herman Yohanes 53 Sagan, Yogyakarta. Tempat ini menawarkan suasana yang lebih mewah dibanding tempat makan gudeg pada umumnya. Gudeg di sini terkenal di kalangan wisata, sehingga tempat. Keu', '01hxmhzs7etybee89sy7v9fbb1.jpg'),
(11, '5 Fakta Keraton Yogyakarta, Tempat Tinggal Raja hi', '<p>Keraton Yogyakarta adalah istana dari Kesultanan Ngayogyakarta Hadiningrat yang berlokasi di Kecamatan Kraton, Kota Yogyakarta. Keraton ini didirikan oleh Sri Sultan Hamengkubuwono I pada 1755, setelah Kerajaan Mataram Islam terpecah menjadi dua. Fungsi Keraton Yogyakarta kurang lebih sama dengan Keraton Surakarta, yaitu dijadikan tempat tinggal para rajanya yang sampai saat ini masih menjalankan tradisi kesultanan. Selain itu, kompleks bangunannya juga dijadikan objek wisata bersejarah di Ko', 'kraton-jogja-768x513.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  ADD PRIMARY KEY (`id_bukti`),
  ADD KEY `id_pesan` (`id_pesan`);

--
-- Indexes for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
  ADD PRIMARY KEY (`id_daerah`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_paket` (`id_paket`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_paket_2` (`id_paket`),
  ADD KEY `id_paket_3` (`id_paket`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  MODIFY `id_bukti` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  MODIFY `id_hotel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  MODIFY `id_paket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `id_pesan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tempat`
--
ALTER TABLE `tempat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  ADD CONSTRAINT `tbl_bukti_ibfk_1` FOREIGN KEY (`id_pesan`) REFERENCES `tbl_pesan` (`id_pesan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
  ADD CONSTRAINT `tbl_daerah_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tbl_provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD CONSTRAINT `tbl_pesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `tbl_paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_3` FOREIGN KEY (`id_hotel`) REFERENCES `tbl_hotel` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_4` FOREIGN KEY (`id_daerah`) REFERENCES `tbl_daerah` (`id_daerah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
