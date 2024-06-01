/*
Navicat MySQL Data Transfer

Source Server         : koneksi01
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_lifecare

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2024-06-01 10:50:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `artikel`
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL AUTO_INCREMENT,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` varchar(5000) NOT NULL,
  `foto_artikel` varchar(255) NOT NULL,
  PRIMARY KEY (`id_artikel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of artikel
-- ----------------------------
INSERT INTO `artikel` VALUES ('1', 'Kunjungi Rumah Singgah YKAKI, Menkes Ingatkan Pentingnya Deteksi Dini', 'Menteri Kesehatan Budi Gunadi Sadikin mengunjungi Rumah Singgah “Rumah Kita” milik Yayasan Kasih Anak Kanker Indonesia (YKAKI) di Jakarta pada Rabu (28/2). Kunjungan ini bertujuan mengetahui jenis penyakit kanker yang paling umum serta kondisi penderita kanker di rumah singgah. Menkes juga memastikan fasilitas di rumah singgah dalam kondisi baik dan berfungsi optimal.\r\n\r\nMenkes Budi mengungkapkan bahwa limfoma dan leukemia adalah jenis kanker yang paling umum diidap anak-anak di rumah singgah dan sering kali terlambat diidentifikasi. Pemerintah akan memperkuat deteksi dini di puskesmas dengan menyediakan alat kesehatan seperti hemato analyzer, blood chemical analyzer, dan oftalmoskop untuk mendeteksi leukemia, limfoma, dan retinoblastoma. Alat-alat ini akan disebar ke 10.000 puskesmas di Indonesia. \"Jika ada gejala kanker, bisa kita deteksi lebih dini dan langsung dirujuk ke rumah sakit di 514 kabupaten/kota yang akan kita bangun layanan kemoterapi,\" ujar Menkes Budi. Pemerintah juga akan mendidik dokter dan perawat untuk deteksi dini kanker.\r\n\r\nPemerintah berkomitmen penuh dalam penanganan kanker, termasuk kanker pada anak, dengan memastikan penderita mendapatkan pengobatan cepat dan tepat. Langkah pertama, pemerintah akan menyediakan fasilitas kemoterapi di seluruh kabupaten/kota dan provinsi, sehingga penderita kanker di wilayah terpencil tidak perlu jauh-jauh ke pusat kota. Langkah kedua, memperbanyak opsi terapi kanker pada anak. RS Kanker Dharmais akan memulai transplantasi sumsum tulang belakang pada anak dan terapi CAR T-cell untuk kanker darah pada anak. Jika berhasil, metode ini akan diterapkan di rumah sakit lain.\r\n\r\nMenkes Budi menyatakan berbagai upaya pemerintah memerlukan dukungan dari berbagai pihak, termasuk YKAKI. Menkes mengapresiasi dedikasi YKAKI dalam menyediakan fasilitas hunian sementara bagi pasien dan pendamping yang sedang menjalani pengobatan kanker di rumah sakit. Pemerintah juga akan membantu rumah singgah mendapatkan donatur untuk meringankan beban operasional.\r\n\r\nRumah Singgah “Rumah Kita” milik YKAKI menyediakan tempat tinggal sementara bagi pasien kanker dan pendamping selama pengobatan. Sejak berdiri pada 2006, “Rumah Kita” memiliki cabang di berbagai daerah seperti Jakarta, Bandung, Jogjakarta, Semarang, Surabaya, Riau, Makassar, dan Manado. Ketua YKAKI Ira Soelistyo menyatakan selama 17 tahun berdiri, “Rumah Kita” telah menampung 3.700 anak penderita kanker yang didampingi oleh 4.600 pendamping. Dari jumlah tersebut, 1.600 anak atau 50 persen meninggal karena keterlambatan penanganan.\r\n\r\nYKAKI juga menyediakan bantuan pendidikan melalui program Sekolahku, yang memberikan pendidikan gratis kepada anak-anak penderita kanker. Sistem pembelajaran disesuaikan dengan kurikulum sekolah formal dan pasien mendapatkan pelajaran sesuai jenjang pendidikan sebelumnya. Program ini tersedia di beberapa rumah sakit seperti RSCM, RSK Dharmais, RSAB Harapan Kita, RS Fatmawati, dan RSPAD Gatot Subroto di Jakarta.', 'berita1.jpeg');
INSERT INTO `artikel` VALUES ('2', 'Wajib Tahu, 3 Fase saat Sakit Demam Berdarah dan Cara Menanganinya\r\n\r\nBaca artikel CNN Indonesia \"Wajib Tahu, 3 Fase saat Sakit Demam Berdarah dan Cara Menanganinya', 'Jakarta, CNN Indonesia -- Kasus demam berdarah dengue (DBD) di beberapa wilayah di Indonesia kini tengah mengalami kenaikan. Oleh karena itu, penting untuk mengetahui tiga fase yang akan dilalui pasien saat sakit DBD dan cara menanganinya. DBD merupakan jenis penyakit yang memiliki beberapa tingkatan.\r\n\r\nDBD memiliki tiga fase diantaranya fase demam, fase kritis, dan fase pemulihan. Ketiga fase ini perlu diketahui agar dapat dilakukan pemeriksaan serta pengobatan yang lebih optimal.\r\n\r\nDokter Spesialis Penyakit Dalam sekaligus Pengurus PB IDI, Soroy Lardo, mengatakan memahami ciri-ciri atau gejala yang timbul pada setiap fase DBD sangat penting. Pasalnya hal ini akan memengaruhi tindakan apa yang harus dilakukan terhadap pasien.\r\n\r\n\"Pemahaman fase sangat menentukan penanganannya,\" ujar Soroy dalam acara Media Briefing PB IDI yang dilakukan secara daring, Selasa (27/2).\r\n\r\nVirus DBD menginfeksi manusia melalui gigitan nyamuk Aedes Aegypti. Jika tidak ditangani dengan benar akan memperparah penyebaran virus dan berpotensi kematian.\r\n\r\nBerikut adalah fase-fase demam berdarah dan cara tepat menanganinya:\r\n\r\n### Fase demam (febrile phase)\r\nFase pertama ditandai dengan demam tinggi yang tak kunjung mereda hingga 40 derajat Celcius. Fase ini disertai gejala lain seperti mual, muntah, sakit kepala, ruam merah, nyeri otot dan sendi, dan sakit tenggorokan. Pada fase ini terjadi penurunan jumlah trombosit darah dengan cepat hingga kurang dari 100.000 per mikroliter darah.\r\n\r\nFase ini membutuhkan tindakan dokter agar mendapatkan obat dan penanganan yang sesuai.\r\n\r\n### Fase kritis (critical phase)\r\nMenurut Soroy, ini adalah fase DBD yang paling rawan dan membutuhkan perhatian khusus. Pada fase ini, demam akan membaik dan tubuh akan kembali normal, biasanya ditandai dengan suhu tubuh yang menurun. Namun, fase ini paling berbahaya karena dapat menyebabkan pendarahan dan kebocoran plasma darah yang berpotensi kematian. Fase kritis dapat terjadi sejak 3 hingga 7 hari sejak fase pertama timbul. Gejalanya dapat berupa pendarahan pada hidung atau gusi, serta penurunan tekanan darah yang drastis. Fase ini membutuhkan perhatian khusus dari dokter yang ahli.\r\n\r\n### Fase pemulihan (recovery phase)\r\nPada fase ini, cairan yang keluar dari pembuluh darah akan masuk kembali ke dalam pembuluh darah. Trombosit akan meningkat hingga 150.000 mikroliter darah, mendekati kadar normal. \"Setelah trombosit naik, masih ada proses infeksi dan pemulihan. Jadi harus ada pengorganisasian produktivitas kerja agar pekerjaan lebih dibatasi,\" ujar Soroy.\r\n\r\nFase ini tidak membutuhkan banyak perhatian khusus, namun karena kondisi tubuh masih lemah, disarankan untuk lebih banyak istirahat hingga membaik. \"Pada fase perbaikan biasanya disarankan istirahat lima hari. Virus dengue masih ada dalam tubuh sampai waktu 3 minggu,\" lanjut Soroy.', 'berita2.jpeg');
INSERT INTO `artikel` VALUES ('3', 'Protein Hewani Cegah Stunting', 'Hari Gizi Nasional yang diperingati setiap 25 Januari merupakan momentum penting untuk meningkatkan kepedulian dan komitmen dalam membangun gizi menuju bangsa sehat berprestasi melalui gizi seimbang dan produksi pangan berkelanjutan. Hal ini diharapkan dapat mendorong pencapaian RPJMN bidang kesehatan. Dengan mempertimbangkan masalah stunting yang belum mencapai target, serta bukti bahwa konsumsi protein hewani dapat mencegah stunting, peringatan Hari Gizi Nasional ke-63 tahun 2023 mengangkat tema “Protein Hewani Cegah Stunting” dengan slogan “Protein Hewani Setiap Makan” dan “Isi Piringku Kaya Protein Hewani.”\n\nAngka stunting di Indonesia masih tinggi yaitu 24,4% (SSGI 2021), walaupun menurun dari 27,7% (SSGI 2019). Namun, upaya masih diperlukan untuk mencapai target penurunan stunting pada tahun 2024 sebesar 14%. Tren data SSGI 2019-2021 menunjukkan stunting terjadi sejak sebelum lahir dan meningkat paling banyak pada rentang usia 6 bulan (13,8%) ke 12 bulan (27,2%) (SSGI 2019). Ini menekankan pentingnya gizi ibu sejak hamil, menyusui, dan gizi pada MP-ASI balita.\n\nGizi ibu hamil penting untuk mencegah stunting sejak lahir, yang saat ini mencapai 23%. Stunting saat lahir dapat terjadi akibat kekurangan gizi dan anemia sejak remaja hingga kehamilan. Oleh karena itu, asupan gizi ibu hamil yang adekuat sangat penting untuk mencegah ibu hamil dari KEK dan anemia, serta untuk mencegah kelahiran bayi stunting.\n\nGizi ibu menyusui penting untuk memastikan kualitas ASI yang menjadi satu-satunya sumber asupan gizi pada 6 bulan pertama melalui ASI eksklusif. Bayi yang mendapat Inisiasi Menyusui Dini (IMD) akan memperoleh kolostrum yang kaya antibodi, penting untuk meningkatkan imunitas dan bonding antara ibu dan bayi.', 'berita3.jpeg');

-- ----------------------------
-- Table structure for `dokter`
-- ----------------------------
DROP TABLE IF EXISTS `dokter`;
CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dokter` varchar(255) NOT NULL,
  `id_spesialis_d` int(11) NOT NULL,
  `deskripsi_dokter` varchar(255) NOT NULL,
  PRIMARY KEY (`id_dokter`),
  KEY `fk_spesialis` (`id_spesialis_d`),
  CONSTRAINT `fk_spesialis` FOREIGN KEY (`id_spesialis_d`) REFERENCES `spesialis` (`id_spesialis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of dokter
-- ----------------------------
INSERT INTO `dokter` VALUES ('1', 'Budi Santoso', '1', 'Dokter umum dengan pengalaman lebih dari 5 tahun di berbagai klinik dan rumah sakit.');
INSERT INTO `dokter` VALUES ('2', 'Siti Aminah', '2', 'Spesialis mata dengan fokus pada bedah refraktif dan perawatan katarak.');
INSERT INTO `dokter` VALUES ('3', 'Ahmad Fauzi', '3', 'Dokter Obgyn dengan pengalaman 10 tahun dalam menangani kasus kehamilan risiko tinggi.');
INSERT INTO `dokter` VALUES ('4', 'Dian Sari', '4', 'Dokter THT yang ahli dalam bedah endoskopi dan perawatan gangguan tidur.');
INSERT INTO `dokter` VALUES ('5', 'Eko Prasetyo', '5', 'Dokter anak yang berpengalaman dalam menangani penyakit menular dan imunisasi.');
INSERT INTO `dokter` VALUES ('6', 'Rina Wulandari', '6', 'Dokter gigi dengan spesialisasi dalam ortodontik dan perawatan estetika gigi.');
INSERT INTO `dokter` VALUES ('7', 'Agus Saputra', '7', 'Dokter kulit dan kelamin dengan pengalaman 6 tahun dalam perawatan penyakit kulit kronis.');
INSERT INTO `dokter` VALUES ('8', 'Indra Lesmana', '8', 'Spesialis jantung yang fokus pada intervensi non-bedah dan rehabilitasi kardiovaskular.');
INSERT INTO `dokter` VALUES ('9', 'Tri Handayani', '9', 'Dokter neurologi yang berpengalaman dalam perawatan gangguan saraf dan rehabilitasi pasca stroke.');
INSERT INTO `dokter` VALUES ('10', 'Maya Kartika', '10', 'Spesialis urologi dengan fokus pada bedah minimal invasif untuk penyakit urologi.');
INSERT INTO `dokter` VALUES ('11', 'Putri Pertiwi', '11', 'Dokter gizi yang berpengalaman dalam pengelolaan berat badan dan nutrisi klinis.');
INSERT INTO `dokter` VALUES ('12', 'Bayu Nugroho', '12', 'Spesialis ortopedi yang ahli dalam bedah tulang dan sendi serta rehabilitasi pasca operasi.');
INSERT INTO `dokter` VALUES ('13', 'Dewi Lestari', '13', 'Dokter bedah dengan pengalaman luas dalam berbagai prosedur bedah umum dan darurat.');
INSERT INTO `dokter` VALUES ('14', 'Adi Kurniawan', '14', 'Spesialis bedah onkologi dengan fokus pada bedah kanker payudara dan sistem pencernaan.');
INSERT INTO `dokter` VALUES ('15', 'Wulan Maulida', '15', 'Dokter anestesi dengan pengalaman dalam anestesi umum dan regional untuk berbagai jenis operasi.');
INSERT INTO `dokter` VALUES ('16', 'Nanda Pratama', '16', 'Spesialis bedah vaskular yang berpengalaman dalam perawatan penyakit pembuluh darah.');
INSERT INTO `dokter` VALUES ('17', 'Fajar Rahman', '17', 'Dokter akupuntur yang ahli dalam terapi nyeri dan perawatan kesehatan holistik.');
INSERT INTO `dokter` VALUES ('18', 'Ratna Dewanti', '18', 'Spesialis psikiatri dengan fokus pada perawatan gangguan kecemasan dan depresi.');
INSERT INTO `dokter` VALUES ('19', 'Yoga Prasetya', '19', 'Psikolog klinis yang berpengalaman dalam terapi individu dan keluarga.');
INSERT INTO `dokter` VALUES ('20', 'Dita Saraswati', '20', 'Dokter bedah toraks yang ahli dalam bedah paru-paru dan perawatan pasca operasi.');
INSERT INTO `dokter` VALUES ('21', 'Taufik Hidayat', '1', 'Dokter umum dengan pengalaman 4 tahun di klinik kesehatan masyarakat.');
INSERT INTO `dokter` VALUES ('22', 'Rina Wibisono', '2', 'Spesialis mata yang berpengalaman dalam perawatan penyakit retina dan glaukoma.');
INSERT INTO `dokter` VALUES ('23', 'Joko Prabowo', '3', 'Dokter Obgyn dengan pengalaman 12 tahun dalam perawatan prenatal dan bedah ginekologi.');
INSERT INTO `dokter` VALUES ('24', 'Sari Kartika', '4', 'Dokter THT yang ahli dalam perawatan gangguan pendengaran dan alergi hidung.');
INSERT INTO `dokter` VALUES ('25', 'Herman Susanto', '5', 'Dokter anak yang berpengalaman dalam perawatan bayi prematur dan penyakit langka anak.');
INSERT INTO `dokter` VALUES ('26', 'Lestari Rahmawati', '6', 'Dokter gigi yang fokus pada perawatan endodontik dan bedah mulut.');
INSERT INTO `dokter` VALUES ('27', 'Bambang Sudarsono', '7', 'Dokter kulit dan kelamin yang berpengalaman dalam perawatan penyakit menular seksual.');
INSERT INTO `dokter` VALUES ('28', 'Sri Utami', '8', 'Spesialis jantung dengan pengalaman dalam pemasangan alat pacu jantung dan angioplasti.');
INSERT INTO `dokter` VALUES ('29', 'Dewi Nuraini', '9', 'Dokter neurologi yang ahli dalam perawatan epilepsi dan gangguan tidur.');
INSERT INTO `dokter` VALUES ('30', 'Andi Putra', '10', 'Spesialis urologi dengan fokus pada perawatan batu ginjal dan infeksi saluran kemih.');

-- ----------------------------
-- Table structure for `dokter_hari_waktu`
-- ----------------------------
DROP TABLE IF EXISTS `dokter_hari_waktu`;
CREATE TABLE `dokter_hari_waktu` (
  `id_dokter_hari_waktu` int(11) NOT NULL AUTO_INCREMENT,
  `id_dokter` int(11) NOT NULL,
  `id_hari_d` int(11) NOT NULL,
  `id_waktu_d` int(11) NOT NULL,
  PRIMARY KEY (`id_dokter_hari_waktu`),
  KEY `fk_dokter` (`id_dokter`),
  KEY `fk_hari` (`id_hari_d`),
  KEY `fk_waktu` (`id_waktu_d`),
  CONSTRAINT `fk_dokter` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_hari` FOREIGN KEY (`id_hari_d`) REFERENCES `hari` (`id_hari`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_waktu` FOREIGN KEY (`id_waktu_d`) REFERENCES `waktu` (`id_waktu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of dokter_hari_waktu
-- ----------------------------
INSERT INTO `dokter_hari_waktu` VALUES ('1', '1', '1', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('2', '1', '3', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('3', '2', '2', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('4', '2', '4', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('5', '3', '3', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('6', '3', '5', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('7', '4', '4', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('8', '4', '6', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('9', '5', '5', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('10', '5', '1', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('11', '6', '6', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('12', '6', '2', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('13', '7', '1', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('14', '7', '3', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('15', '8', '2', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('16', '8', '4', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('17', '9', '3', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('18', '9', '5', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('19', '10', '4', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('20', '10', '6', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('21', '11', '5', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('22', '11', '1', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('23', '12', '6', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('24', '12', '2', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('25', '13', '1', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('26', '13', '3', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('27', '14', '2', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('28', '14', '4', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('29', '15', '3', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('30', '15', '5', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('31', '16', '4', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('32', '16', '6', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('33', '17', '5', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('34', '17', '1', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('35', '18', '6', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('36', '18', '2', '4');
INSERT INTO `dokter_hari_waktu` VALUES ('37', '19', '1', '1');
INSERT INTO `dokter_hari_waktu` VALUES ('38', '19', '3', '2');
INSERT INTO `dokter_hari_waktu` VALUES ('39', '20', '2', '3');
INSERT INTO `dokter_hari_waktu` VALUES ('40', '20', '4', '4');

-- ----------------------------
-- Table structure for `hari`
-- ----------------------------
DROP TABLE IF EXISTS `hari`;
CREATE TABLE `hari` (
  `id_hari` int(11) NOT NULL AUTO_INCREMENT,
  `nama_hari` varchar(255) NOT NULL,
  PRIMARY KEY (`id_hari`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of hari
-- ----------------------------
INSERT INTO `hari` VALUES ('1', 'Senin');
INSERT INTO `hari` VALUES ('2', 'Selasa');
INSERT INTO `hari` VALUES ('3', 'Rabu');
INSERT INTO `hari` VALUES ('4', 'Kamis');
INSERT INTO `hari` VALUES ('5', 'Jumat');
INSERT INTO `hari` VALUES ('6', 'Sabtu');

-- ----------------------------
-- Table structure for `medcek`
-- ----------------------------
DROP TABLE IF EXISTS `medcek`;
CREATE TABLE `medcek` (
  `id_medcek` int(11) NOT NULL AUTO_INCREMENT,
  `paket_medcek` varchar(255) NOT NULL,
  `nama_medcek` varchar(255) NOT NULL,
  `harga_medcek` varchar(255) NOT NULL,
  `detail_singkat_medcek` varchar(255) NOT NULL,
  `detail_medcek` varchar(255) NOT NULL,
  `prosedur_medcek` varchar(255) NOT NULL,
  PRIMARY KEY (`id_medcek`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of medcek
-- ----------------------------

-- ----------------------------
-- Table structure for `notifikasi`
-- ----------------------------
DROP TABLE IF EXISTS `notifikasi`;
CREATE TABLE `notifikasi` (
  `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT,
  `judul_notifikasi` varchar(255) NOT NULL,
  `isi_notifikasi` varchar(255) NOT NULL,
  `tgl_notifikasi` date NOT NULL,
  PRIMARY KEY (`id_notifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of notifikasi
-- ----------------------------

-- ----------------------------
-- Table structure for `spesialis`
-- ----------------------------
DROP TABLE IF EXISTS `spesialis`;
CREATE TABLE `spesialis` (
  `id_spesialis` int(11) NOT NULL AUTO_INCREMENT,
  `nama_spesialis` varchar(255) NOT NULL,
  PRIMARY KEY (`id_spesialis`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of spesialis
-- ----------------------------
INSERT INTO `spesialis` VALUES ('1', 'Dokter Umum');
INSERT INTO `spesialis` VALUES ('2', 'Dokter Mata');
INSERT INTO `spesialis` VALUES ('3', 'Dokter Obgyn');
INSERT INTO `spesialis` VALUES ('4', 'Dokter THT');
INSERT INTO `spesialis` VALUES ('5', 'Dokter Anak');
INSERT INTO `spesialis` VALUES ('6', 'Dokter Gigi');
INSERT INTO `spesialis` VALUES ('7', 'Dokter Kulit dan Kelamin');
INSERT INTO `spesialis` VALUES ('8', 'Dokter Jantung');
INSERT INTO `spesialis` VALUES ('9', 'Dokter Neurologi (Otak dan Saraf)');
INSERT INTO `spesialis` VALUES ('10', 'Dokter Urologi');
INSERT INTO `spesialis` VALUES ('11', 'Dokter Gizi');
INSERT INTO `spesialis` VALUES ('12', 'Dokter Ortopedi');
INSERT INTO `spesialis` VALUES ('13', 'Dokter Bedah');
INSERT INTO `spesialis` VALUES ('14', 'Dokter Bedah Onkologi');
INSERT INTO `spesialis` VALUES ('15', 'Dokter Anestesi');
INSERT INTO `spesialis` VALUES ('16', 'Dokter Bedah Vaskular');
INSERT INTO `spesialis` VALUES ('17', 'Dokter Akupuntur');
INSERT INTO `spesialis` VALUES ('18', 'Psikiatri');
INSERT INTO `spesialis` VALUES ('19', 'Psikologi');
INSERT INTO `spesialis` VALUES ('20', 'Dokter Bedah Toraks');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `access_token` varchar(450) NOT NULL,
  `refresh_token` varchar(450) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`access_token`),
  KEY `fk_user` (`user_id`),
  CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcyMTE1NDcsInN1YiI6IjIifQ.SUyk719ZtPZLq8I5OAdlXTuJ_1BKPfSDpT-vZEtQ1Tk', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc4MTQ1NDcsInN1YiI6IjIifQ.TxFUCQFiFdSLqH3mTFXo8k7nBc7xU_FIz-y6eRDvFKw', '1', '2024-06-01 09:42:27');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcyMTI2NzIsInN1YiI6IjIifQ.ddC0gpT7pSbjLFLeWVoFKvOmq2dS55p_Khhnb6xMKA8', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc4MTU2NzIsInN1YiI6IjIifQ.jZ6mpTzuVB6TMmRXAGgObLDMKMgmumPCPeuO8HqL5Vk', '1', '2024-06-01 10:01:12');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcyMTI4MjcsInN1YiI6IjIifQ.YsGgyt3C9B9qBD9gqsaDzyWr34fgl_8GMKfZ19j-x3w', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc4MTU4MjcsInN1YiI6IjIifQ.Q6xSQr1u4g6LefU7r2AE2hWrcPu9l3DSsLsJmPvAPmk', '1', '2024-06-01 10:03:47');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcyMTQ2NjgsInN1YiI6IjIifQ.yawo3B-ORdSG7KX2F8Z5KBlK1joFuIKRYuoRAYx01CU', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc4MTc2NjgsInN1YiI6IjIifQ.e74Wh_CPseYXj6e2tP_fHKSX_Ud2WMJXEU-nvxN6q1g', '1', '2024-06-01 10:34:28');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcyMTQ3MzMsInN1YiI6IjIifQ.wR_WyUcsn5IElq5evp4GWC-_C79P8WEVDhsCFoDVYfA', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc4MTc3MzMsInN1YiI6IjIifQ.RhbhvQIL-wfBlozE3x1ipbeEsrbj_5j68xkGxVifs60', '1', '2024-06-01 10:35:33');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcyMTQ5MDYsInN1YiI6IjIifQ.sCRAd37xWhT0dUSt7agjn2NX5RPT6K_j6EijPSJZZkA', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc4MTc5MDYsInN1YiI6IjIifQ.4DD2pWzMQOIE9A4I_lrH_tsqkm4wJXOw-eUM2Mb1de8', '1', '2024-06-01 10:38:26');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcyMTQ5NjEsInN1YiI6IjIifQ.-FwMG1sz-0l6PWI5jWql6SffcFfSs2XITlMluJNM-7k', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc4MTc5NjEsInN1YiI6IjIifQ.WyV_MGA1s0OzNSnoDjDNe4Bb6zziPFWmNpsb9fgvnDY', '1', '2024-06-01 10:39:21');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcyMTQzMzEsInN1YiI6IjIifQ.fjbI4TIsuJGCBlrg_qej6raY0elCZQxp6ZYwgEyAIHM', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc4MTczMzEsInN1YiI6IjIifQ.L9NczRuDCwAEONIqByekNlktk_n5rEutPKS4atOU8Qg', '1', '2024-06-01 10:28:51');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTY1NjU4MDEsInN1YiI6IjIifQ.S2pyIZLRStVNg1z84wqjwX9uMkV7jvH_PDQkuqi_K9I', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTcxNjg4MDEsInN1YiI6IjIifQ.QbQ4S9I3vmrOL5k7uQ-BWtyyGzA9R2ooUBD2-cL6NYo', '1', '2024-05-24 22:20:01');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTY4MjQwMjksInN1YiI6IjIifQ.1RXNhdy8MdbPhrWe8C0uYikVpYNMKKrynu_IOa-FD6I', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc0MjcwMzAsInN1YiI6IjIifQ.TxCEOtYfNZswR52pE_rQjW335Sk0HBvnNJE80y9ELig', '1', '2024-05-27 22:03:50');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTY5NDg3NDUsInN1YiI6IjIifQ.HU5FKu3_POcUFCLshYItB3NI3h6AltjEMHjZoVEijSI', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc1NTE3NDUsInN1YiI6IjIifQ.YeqzkrXL5SWuv5TGXo_WPcvVRTVCm0bDEyCkpYIpTsc', '1', '2024-05-29 08:42:25');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTY5NTc0MjMsInN1YiI6IjIifQ.p8wLPlffQDEKx9MY3mUKkv5gSYiKb62Au71fcypUHVI', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc1NjA0MjMsInN1YiI6IjIifQ.2kjuPjWO_WrTa8RU3abkuAOy5Jf9OIji6UxUI3nG3DE', '1', '2024-05-29 11:07:03');
INSERT INTO `token` VALUES ('2', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTY5NTg0MzgsInN1YiI6IjIifQ.PuPxLOLmfCpg2FLTl-PFflgl09PRtIQRMGb22ZMk9J0', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MTc1NjE0MzgsInN1YiI6IjIifQ.7SZUmWgRst8I5FpCAWk6XfUNbKssh9ogagzN0nQWg6M', '1', '2024-05-29 11:23:58');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) NOT NULL,
  `nik_user` varchar(255) NOT NULL,
  `tmpt_lahir_user` varchar(255) NOT NULL,
  `tl_user` date NOT NULL,
  `jk_user` varchar(255) NOT NULL,
  `alamat_user` varchar(255) NOT NULL,
  `telp_user` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  `pass_user` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'string', 'string', 'string', '2024-05-24', 'string', 'string', 'string', 'string', '$2b$12$/6ZZyKIIeknqJCuU9KhaMOQ1fqi7AAlXLIPJ1UYPkGBO/fAFhTjIO', 'string');
INSERT INTO `user` VALUES ('2', 'ratu', '3217', 'bdg', '2024-05-24', 'perempuan', 'bdg', '0813', 'ratu@gmail.com', '$2b$12$mdwt3qtDrP/o5G2jMV37.eWe9SqOL/S4jtz1ksNfhSQcsBeWrE4km', 'ratusyakh');
INSERT INTO `user` VALUES ('3', 'mine', '32171', 'bdg', '2024-05-24', 'p', 'bdg', '0897', 'mine@mail.com', '$2b$12$3rIVdLwmB.3RCJeIjOw.ZObVPsJfkMLNHjzdH1qjngRKukGh8lSFa', 'miineeu');
INSERT INTO `user` VALUES ('4', 'faya', '123', 'bdg', '2024-05-24', 'p', 'bdg', '0232', 'fay@mail.com', '$2b$12$TtPamgSZE84uHl3seJk/CO5N0p/cLuY4uWkB.weyxqBIh8vYZO6O2', 'faayyeeay');
INSERT INTO `user` VALUES ('5', 'lysa', '2341', 'bks', '2024-05-24', 'p', 'bdg', '0854', 'lysa@mail.com', '$2b$12$KeN1GW2BHJVShX8IZEN83ukzUEqN.5c0tbzW1zH.4xFQvIwo3XZB2', 'lysaa');
INSERT INTO `user` VALUES ('6', 'tia', '1', 'jkt', '2024-05-24', 'p', 'halim', '2312', 'tiamaniez2004@gmail.com', '$2b$12$YQD38FvrCE5oarkae470o.2s9UbIwJOVNBRA5Z.yKi9cuPor6UQ1m', 'tiaifanian');

-- ----------------------------
-- Table structure for `waktu`
-- ----------------------------
DROP TABLE IF EXISTS `waktu`;
CREATE TABLE `waktu` (
  `id_waktu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_waktu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_waktu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of waktu
-- ----------------------------
INSERT INTO `waktu` VALUES ('1', '08.00 - 10.00');
INSERT INTO `waktu` VALUES ('2', '13.00 - 15.00');
INSERT INTO `waktu` VALUES ('3', '16.00 - 18.00');
INSERT INTO `waktu` VALUES ('4', '19.00 - 21.00');
