-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2019 at 04:56 PM
-- Server version: 5.5.38
-- PHP Version: 5.3.10-1ubuntu3.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `simfoni`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(255) NOT NULL,
  `nip_admin` varchar(255) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `nip_admin`, `username_admin`, `password_admin`) VALUES
(1, 'adhi lesmana', '10060025', 'admin', '9375bb9c73446dacd66c13d534dde4bc');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
  `id_guest` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(2) NOT NULL,
  `id_semester` varchar(255) NOT NULL,
  `id_kelas` varchar(255) NOT NULL,
  `id_kelas2` varchar(255) NOT NULL,
  `id_kelas3` varchar(255) NOT NULL,
  `id_kelas4` varchar(255) NOT NULL,
  `id_mapel1` varchar(255) NOT NULL,
  `id_guru` varchar(255) NOT NULL,
  `tema_guest` varchar(255) NOT NULL,
  `nama_guest` varchar(255) NOT NULL,
  `hasil_guest` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `waktu_2` date NOT NULL,
  `biaya_guest` text NOT NULL,
  `laporan` varchar(255) NOT NULL,
  `proposal` varchar(255) NOT NULL,
  PRIMARY KEY (`id_guest`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id_guest`, `id_jenjang`, `id_semester`, `id_kelas`, `id_kelas2`, `id_kelas3`, `id_kelas4`, `id_mapel1`, `id_guru`, `tema_guest`, `nama_guest`, `hasil_guest`, `waktu_1`, `waktu_2`, `biaya_guest`, `laporan`, `proposal`) VALUES
(1, '3', '1', '5', '6', '', '', '26', '17', 'Pengaplikasian geometri Transformasi pada program mathlab', 'Aditya Aziz Fikhri, S.Tr.Kom', 'Siswa mampu mengaplikasikan geometri transformasi pada program mathlab', '2018-12-08', '2018-12-08', '100', 'Format Guest Teacher_Rancangan dan Laporan.docx', 'PROPOSAL GUEST TEACHER MAPEL mtk minat KELAS XI IPA rev.docx'),
(2, '3', '2', '4', '', '', '', '26', '17', 'Distribusi Binomial', 'Muhammad Rizqi (Mahasiswa STIS)', 'Siswa mampu menentukan peluang pada  Distribusi Binomial', '2019-01-09', '2019-01-09', '100', 'Format Guest Teacher_Rancangan dan Laporan kelas XI IPA.docx', ''),
(4, '1', '1', '17', '16', '', '', '35', '8', 'Baca Puisi', 'Sherina', 'Siswa mampu memahami dan mempraktekkan cara baca puisi yang baik dan benar', '2018-11-30', '2018-11-30', '90000', 'Laporan Guest Teacher Bahasa Indonesia.docx', 'prpospsal guest teacher kls VA dan VB.docx'),
(5, '2', '1', '23', '', '', '', '2', '10101068', 'Menulis Puisi', 'Erintan Maghfirah', 'Siswa dapat menulis puisi', '2018-12-14', '2018-12-14', '100', 'Format-Guest-Teacher_Rancangan-dan-Laporan.doc', 'PROPOSAL-Guess-Teacher-tulis-puisi-smp.docx'),
(6, '3', '2', '2', '1', '', '', '17', '23', 'Sejarah perjuangan mempertahankan kemerdekaan di kota juang, bireuen', 'Abdul hamid', 'Siswa bisa mendengar langsung kisah perjuangan para veteran didalam memperjuangkan kemerdekaan negara kita sehingga menumbuhkan semangat bela negara dan cinta tanah air', '2019-01-28', '2019-01-28', '0', '', ''),
(7, '3', '1', '5', '6', '', '', '24', '51', 'Sifat koligatif larutan (Demonstrasi pembuatan eskrim)', 'Haikal Amri, S.Si', 'Siswa mampu mengaplikasikan teknik pembuatan eskrim berdasarkan konsep penurunan titik beku larutan', '2018-12-12', '2018-12-12', '100', 'LAPORAN.docx', ''),
(8, '3', '1', '4', '', '', '', '21', '18', 'kontraksi otot pada katak', 'Ratna sari S.Si', 'siswa mampu mengamati kontraksi otot yang terjadi pada katak', '2018-11-02', '2018-11-02', '83', 'laporan guest teacher.doc', ''),
(9, '3', '1', '3', '', '', '', '27', '5', 'Koperasi', 'Nurmala', 'Siswa mampu mengetahui sistem pembagian SHU di Koperasi', '2018-10-25', '2018-10-25', '50000', 'Guest teacher Ekonomi baru.docx', ''),
(10, '2', '1', '22', '', '', '', '5', '64', 'kegiatan ekonomi/kegiatan produksi', 'iskandar', 'a.	Tujuan  â€¢	Memberikan motivasi dan inspirasi kepada siswa â€¢	Membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guest teacher yang bersangkutan â€¢	Mengubah mindset siswa tentang seoarang guru hanyalah mereka yang mengajar di se', '2018-12-13', '2018-12-13', '0', 'anto-LAPORAN-GUEST-TEACHER.docx', ''),
(13, '3', '1', '5', '6', '7', '', '14', '43', 'menulis teks Editorial', 'Ariadi B. Jangka', 'siswa mampu menulis teks editorial', '2018-10-22', '2018-10-22', '100', '', ''),
(14, '2', '1', '22', '', '', '', '4', '41', 'Aplikasi konsep bejana berhubungan untuk menyamakan ketinggian', 'Sulaiman', 'Tujuan: Memberikan motivasi dan inspirasi kepada siswa, Membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guest teacher yang bersangkutan, serta Mengubah mindset siswa tentang seoarang guru hanyalah mereka yang mengajar di sekolah a', '2018-12-06', '2018-12-06', '86000', 'LAPORAN GUEST TEACHER IPA Fisika Semester Ganjil 2018-2019.docx', ''),
(15, '1', '1', '17', '', '', '', '39', '36', 'Denah dan Skala', 'Zulkarnain dan Zakaria', '1. -	Siswa mampu menggambar denah dengan baik, 2. -	Siswa mengetahui penerapan dari materi yang dipelajari dalam kehidupan sehari-hari', '2018-11-22', '2018-11-22', '90000', '', ''),
(16, '2', '1', '25', '', '', '', '11', '16', 'Desain grafis pengolah gambar vektor (CorelDraw)', 'Awi AW Advertising', 'Tujuan: mengetahui pentingnya aplikasi pengolah gambar vektor (CorelDRAW12) dalam kehidupan sehari-hari seperti membuat logo, desain sertifikat, dan lain-lain.', '2018-08-20', '2018-08-20', '100000', 'Laporan Guest Teacher TIK Kelas IX.docx', ''),
(17, '2', '1', '20', '21', '', '', '6', '38', 'Hukum Mawaris', 'Tgk turmizi Syeh', 'Tujuan dari kegiatan ini adalah untuk membuat proses pembelajaran lebih menarik dengan mendengarkan langsung dari marasumber yang bersangkutan. Selain itu memberikan pemahaman kepada siswa/i terkait tema tentang bilangan pecahan yang berkaitan dengan huku', '2018-10-08', '2018-10-10', '151000', 'Laporan Guest Teacher bab pecahan.docx', ''),
(20, '1', '1', '15', '', '', '', '33', '58', 'Asmaul Husna al-Quddus / Membuat Kaligrafi Lafaz Asmaul Husna', 'Tgk. Agus Salim', 'Tujuannya adalah memberikan motivasi dan inspirasi kepada siswa, membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guru tamu yang bersangkutan dan mengubah mindset siswa tentang seorang guru hanyalah mereka yang mengajar di sekolah ', '2018-11-22', '2018-11-22', '91000', 'RIVANDA-LAPORAN GUEST TEACHER.doc', ''),
(21, '2', '1', '21', '', '', '', '2', '3', 'Teks Prosedural', 'Saifannur', 'Tujuan dari kegiatan ini adalah untuk membuat proses pembelajaran lebih menarik dengan melihat langsung dari marasumber yang bersangkutan. Selain itu siswa dapat melihat langsung prosedur yang dikerjakan dalam kehidupan nyata.', '2018-12-12', '2018-12-12', '86000', 'LAPR-2018-Guest-Teacher-7-Deli.docx', ''),
(22, '2', '1', '25', '24', '', '', '1', '9', 'Haji dan Umrah', 'Tgk Zulfikar Abdullah', 'Tujuan dari kegiatan ini adalah untuk membuat proses pembelajaran lebih menarik dengan mendengarkan langsung dari marasumber yang bersangkutan. Selain itu memberikan pemahaman kepada siswa/i terkait tema tentang â€Haji dan Umrahâ€ atau penjelasan tentan', '2018-12-12', '2018-12-12', '86', '', ''),
(23, '2', '2', '20', '', '', '', '1', '9', 'Hormat dan Patuh kepada Orang tua dan Guru', 'Tgk Thayyibul Layakbal', 'Agar siswa memahami makna hormat dan patuh kepada orang tua dan guru', '2019-01-23', '2019-01-23', '100', '', ''),
(24, '2', '2', '21', '', '', '', '1', '9', 'Hormat dan Patuh kepada Orang tua dan Guru', 'Tgk Thayyibul Layakbal', 'Agar siswa memahami makna hormat dan patuh kepada orang tua dan guru', '2019-01-25', '2019-01-25', '100', '', ''),
(25, '2', '1', '25', '', '', '', '5', '45', 'Kualitas dan Kuantitas Penduduk Indonesia  dan Dunia', 'Sariyunus, S.Si', 'siswa mendapat materi baru dan langsung karyawan BPS yang telah melakukan berbagai survei di bidang kependudukan  di Indonesia', '2018-12-12', '2018-12-12', '86000', 'Tia-lap.geust teacher ganjil.docx', ''),
(26, '2', '2', '24', '', '', '', '', '45', 'Kualitas dan Kuantitas Penduduk Indonesia  dan Asia', 'Muhammad Rizqi', 'siswa mendapat materi baru dan langsung mahasiswa STIS yang telah melakukan berbagai survei di bidang kependudukan  di Indonesia', '2019-01-09', '2019-01-09', '86000', 'Tia-lap.geust teacher genap.docx', ''),
(27, '3', '2', '3', '', '', '', '16', '60', 'Kesehatan Reproduksi Remaja', 'Muaddah, S.SiT., S.Pd', 'Untuk menambah wawasan tentang kesehatan reproduksi dan juga bisa mengetahui cara mencegah berbagai penyakit dalam kesehatan reproduksi', '2019-01-17', '2019-01-17', '90', '', ''),
(28, '3', '1', '7', '', '', '', '16', '60', 'Pencak Silat', 'Yusliadi', 'Membentuk kepribadian yang Ksatria, berani, disiplin serta bertanggung jawab yang tinggi', '2018-12-06', '2018-12-06', '90', '', ''),
(29, '3', '1', '7', '', '', '', '28', '21', 'Procedure text', 'Muliani', 'Mendiskusikan konsep prosedur text dan menuliskan teks prosedur sehingga siswa mampu membandingkan fungsi sosial, struktur teks dan fitur bahasa teks berbentuk procedure.', '2018-10-15', '2018-10-15', '0', '', ''),
(30, '3', '2', '7', '', '', '', '28', '21', 'Analytical exposition text', 'Zamzami Zainuddin, M.A.', 'Mendiskusikan konsep analytical exposition text dan menuliskan teks analytical exposition sehingga siswa mampu membandingkan fungsi sosial, struktur teks dan fitur bahasa teks berbentuk analytical exposition.', '2019-02-18', '2019-02-18', '100000', '', ''),
(31, '1', '2', '19', '', '', '', '37', '49', 'Rangkaian Listrik', 'Kiki Mustika', 'Mengenal perbedan cara kerja Rangkaian listrik seri, paralel dan campuran', '2019-01-17', '2019-01-17', '100000', 'Laporan Guest Teacher_Rancangan dan Laporan.docx', ''),
(32, '1', '2', '17', '', '', '', '41', '8', 'Semangat Kerja (Perlunya Memenuhi Kebutuhan Hidup)', 'Zuriyatina', 'Munculnya empati dan rasa menghargai terhadap orang lain dan menumbuhkan semangat belajar yang maksimal demi kehidupan di kemudian hari', '2019-02-04', '2019-02-04', '90000', 'Laporan Guest Teacher PKN.docx', ''),
(34, '3', '2', '4', '', '', '', '21', '18', 'sistem pernapasan', 'Arief Yanda', 'siswa mamapu menganalisis mekanisme pernapasan pada manusia', '2019-01-30', '2019-01-30', '86', '', ''),
(35, '3', '2', '4', '', '', '', '24', '51', 'Uji kadar cuka makan berdasarkan metose titrasi asam basa', 'Nanda Saputri, S.Pd', 'Tujuan dari  kegiatan ini untuk menambahkan semangat siswa dalam belajar kimia dan menumbuhkan rasa tanggung jawab siswa dalam setiap kelompok. Manfaat dari kegiatan ini, siswa mampu mendemonstrasikan ujia kadar cuka makan yang digunakan dalam kehidupan s', '2019-02-01', '2019-02-01', '86', 'LAPORAN TITRASI ASAM BASA.docx', ''),
(36, '3', '2', '1', '2', '', '', '14', '47', 'Mengenal hikayat', 'Rasyidin, S.Sn., M.Sn.', 'Siswa dapatmengenal hikayat khususnya hikayat Aceh', '2019-02-08', '2019-02-08', '100', 'LAPORAN-GUEST-TEACHER-hikayat.doc', ''),
(37, '3', '2', '1', '', '', '', '15', '26', 'Sistem Pertidaksamaan Dua Variabel', 'Rahmayani, S.Pd', 'Siswa mampu menggunakan software Geogebra dalam menyelesaikan masalah yang berkaitan dengan Sistem Pertidaksamaan Dua Variabel ', '2019-02-13', '2019-02-13', '100000', 'geogebra.docx', ''),
(38, '3', '2', '3', '', '', '', '28', '34', 'analytical exposition text', 'Asnawi', 'siswa mampu menulis teks analytical exposition berdasarkan materi yang diperoleh', '2019-02-01', '2019-02-01', '100', '', ''),
(39, '2', '2', '20', '21', '', '', '3', '12', 'JOB', 'Fitriani', 'siswa mampu mengetahui salah satu pekerjaan yang ada disekitar sekolah dan mengetahui seluk beluk pekerjaan tersebut', '2019-02-25', '2019-03-01', '200', '', ''),
(40, '1', '2', '13', '', '', '', '39', '50', 'Alat ukur panjang', 'Rohani', 'Diharapkan setelah siswa mendapat pembelajaran dari guru tamu, siswa dapat mengetahui bahwa apa yang mereka pelajari di sekolah memang sering digunakan dalam kehidupan sehari-hari. Dalam hal ini, siswa dapat mengetahui alat ukur yang digunakan penjahit. S', '2019-02-19', '2019-02-19', '85000', 'LAPORAN-GUEST-TEACHER-NURLAILI (PENJAHIT).docx', ''),
(41, '2', '2', '24', '', '', '', '', '10101070', 'Sharing is Caring (BIMKOS)', 'M. Ikram Mirwan & M. Fariz Albar Nabudi ', 'Tujuan dari kegiatan ini adalah untuk meningkatkan rasa kepedulian dan kepemilikan siswa terhadap sekolah melalui diskusi santai bersama alumni. Selain itu, siswa didorong untuk memiliki tujuan dan target masa depan.', '2019-01-21', '2019-01-21', '0', 'Laporan Guest Teacher Bimkos Kelas IX Kutai.docx', ''),
(42, '2', '2', '25', '', '', '', '', '10101070', 'Sharing is Caring (BIMKOS)', 'Para alumni SMA Sukma Bangsa Bireuen angkatan 2018', 'Tujuan dari kegiatan ini adalah untuk meningkatkan rasa kepedulian dan kepemilikan siswa terhadap sekolah melalui diskusi santai bersama alumni. Selain itu, siswa didorong untuk memiliki tujuan dan target masa depan.', '2019-02-11', '2019-02-11', '0', 'Laporan Guest Teacher Bimkos Kelas IX Samsai.docx', ''),
(43, '2', '1', '24', '', '', '', '6', '11', 'Pengolahan data statistik', 'Sari Yunus, S.Si.', 'Memberikan pemahaman kepada para siswa bahwasanya data primer yang diambil oleh pihak BPS dapat dijadikan bahan data untuk pengambilan kebijakan pemerintah.', '2018-11-29', '2018-11-29', '83000', 'Laporan Guest Teacher Math kelas 9 kutai.docx', ''),
(44, '2', '2', '24', '', '', '', '4', '41', 'Asam, Basa, dan Garam', 'Indra', 'a.	Tujuan  â€¢	Memberikan motivasi dan inspirasi kepada siswa â€¢	Membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guest teacher yang bersangkutan â€¢	Mengubah mindset siswa tentang seoarang guru hanyalah mereka yang mengajar di se', '2019-02-12', '2019-02-12', '0', 'LAPORAN GUEST TEACHER IPA Fisika Semester Genap  2018-2019.docx', ''),
(45, '2', '1', '22', '', '', '', '9', '35', 'Pengolahan bahan pangan serealia, kacang-kacangan dan umbi menjadi makanan atau minuman', 'Desi Arisna', 'Tujuan kegiatan ini adalah untuk meningkatkan kualitas pembelajaran,  memberikan ilmu dan pengalaman baru untuk siswa dalam proses mengolah kacang kedelai menjadi susu kedelai dengan berbagai rasa', '0000-00-00', '0000-00-00', '106000', 'Laporan Guest Teacher SMP .docx', ''),
(46, '3', '2', '5', '6', '7', '', '12', '25', 'Mawaris', 'Ustazah Syafridah', 'Siswa memahami manfaat dan tujuan mempelajari ilmu faraid serta dapat menghitung pembagian harta warisan.', '2019-02-28', '2019-02-28', '100', '', ''),
(47, '3', '2', '1', '', '', '', '23', '39', 'Penerapan hukum Newton pada konstruksi jalan dan jembatan', 'Muthmainnah, S.T, M.T', 'menambah wawasan siswa tentang penerapan hukum Newton dalam perencanaan konstruksi jalan dan jembatan', '2019-02-16', '2019-02-16', '100', '', ''),
(48, '2', '1', '22', '', '', '', '', '10101072', 'Present Continuous Tense', 'Maria Syuhada', 'ïƒ˜	Kegiatan ini bertujuan untuk mengajarkan kepada siswa tentang materi present continuous serta mengaplikasikannya dalam kehidupan sehari-hari.', '2018-10-22', '2018-10-22', '0', '', ''),
(49, '3', '1', '3', '', '', '', '28', '34', 'Hope vs Wish', 'Maulina Sari', 'Kegiatan ini bertujuan untuk mengajarkan kepada siswa tentang perbedaan penggunaan â€œhopeâ€ and â€œwishâ€. Melalui kegiatan ini siswa diharapkan bisa menggunakan kata-kata â€œhopeâ€ and â€œwishâ€ dengan tepat dan dapat mengaplikasikannya dalam kehidu', '2018-10-17', '2018-10-17', '0', 'Laporan Guest Teacher SMA.docx', '');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `nip_guru` varchar(255) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10101074 ;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `id_jenjang`, `nama_guru`, `nip_guru`) VALUES
(1, '3', 'Adhi Lesmana', '10060025'),
(2, '2', 'Aftaul Musla', '10181008'),
(3, '2', 'Agus Suarni', '10101066'),
(4, '2', 'Ainal Mardhiah', '10130191'),
(5, '3', 'Alimuddin', '10101059'),
(6, '1', 'Amarul Mukhtar', '10181002'),
(7, '1', 'Asmaul Husna', '10131085'),
(8, '1', 'Asrita', '10101056'),
(9, '2', 'Basiran', '10081051'),
(10, '2', 'Bilkisti Resa S', '10156016'),
(11, '2', 'Chandra Nurmansyah', '10101064'),
(12, '2', 'Cut Afrianti', '10101060'),
(13, '1', 'Cut Hafsah', '10081088'),
(14, '2', 'Dhia Rahmat', '10151001'),
(15, '3', 'Dian Ferdiansyah', '10141001'),
(16, '2', 'Dwi Wulandary', '10081054'),
(17, '3', 'Emi Rosita', '10130194'),
(18, '3', 'Erlinawati', '10071031'),
(19, '1', 'Erninawaty', '10101071'),
(20, '3', 'Evans Rinaldi', '10141004'),
(21, '3', 'Fachrurrazi', '10091053'),
(22, '3', 'Faisal', '10146006'),
(23, '3', 'Fanny Safrizal', '10131087'),
(24, '3', 'Helka Pratiwi', '10176002'),
(25, '3', 'Helmiati', '10061019'),
(26, '3', 'Herlina Sari', '10081089'),
(27, '2', 'Hidayatul Munawarah', '12061009'),
(28, '3', 'Hijriati Meutia', '10141003'),
(29, '1', 'Husnul Khatimah', '10166003'),
(30, '1', 'Ika Meutia', '10081044'),
(31, '3', 'Jamilah  Akbar', '10061013'),
(32, '3', 'Kartika Hakim', '10156002'),
(33, '1', 'Kawsarina', '10166009'),
(34, '3', 'Mardiana', '10176005'),
(35, '2', 'Mariam Chairunnisaak', '10176007'),
(36, '1', 'Marina Nova Wahyuni', '12101107'),
(37, '1', 'Martunis', '10121081'),
(38, '2', 'Masyittah', '11121004'),
(39, '3', 'Meldawati', '10061015'),
(40, '1', 'Meutia Hesti Paldana', '10151004'),
(41, '2', 'Muhammad Edi Saputra', '10101065'),
(42, '1', 'Muhammad Rizal', '10111075'),
(43, '3', 'Mukhlisanur', '10121083'),
(44, '1', 'Munira', '10156010'),
(45, '2', 'Mutia Lisa Purnama', '10091055'),
(46, '2', 'Nazlyansyah', '10176003'),
(47, '3', 'Noer Asiyah', '10151005'),
(48, '1', 'Nurdiana', '10156017'),
(49, '1', 'Nurhilza', '10141005'),
(50, '1', 'Nurlaili ', '10111078'),
(51, '3', 'Nurul Aulia', '10181006'),
(52, '1', 'Nurul Hikmah', '10156018'),
(53, '1', 'Putri Maulida', '10111076'),
(54, '1', 'Rahma Liza', '10176008'),
(55, '1', 'Rahmi', '10181017'),
(56, '3', 'Rika Julia Koto', '10176009'),
(57, '1', 'Rina Marhani', '10156003'),
(58, '1', 'Rivanda', '10171001'),
(59, '1', 'Rizka Qonita', '10176011'),
(60, '3', 'Safrida', '10061010'),
(61, '2', 'Sufrida', '10061021'),
(62, '1', 'Suhendri', '10161003'),
(63, '1', 'Sulastri', '10176004'),
(64, '2', 'Suriyanto', '10101062'),
(65, '3', 'Yunda Nafsiah', '10181020'),
(66, '2', 'Noer Asiyah', '10151005@'),
(10101070, '2', 'Meidiana', 'Meidiana'),
(10101071, '1', 'Naula Aulia', '10181022'),
(10101072, '2', 'Mardiana', '10176005@'),
(10101073, '2', 'Rika Julia Koto', '10176009@');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE IF NOT EXISTS `jenjang` (
  `id_jenjang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jenjang` varchar(255) NOT NULL,
  PRIMARY KEY (`id_jenjang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`id_jenjang`, `nama_jenjang`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_jenjang`) VALUES
(1, 'X IPA', '3'),
(2, 'X IPS', '3'),
(3, 'XI IPS', '3'),
(4, 'XI IPA', '3'),
(5, 'XII IPA A', '3'),
(6, 'XII IPA B', '3'),
(7, 'XII IPS', '3'),
(8, 'I - CANANGA ADORATA', '1'),
(9, 'I - MANGIFERA INDICA', '1'),
(10, 'II - DURIO', '1'),
(11, 'II - AGLAONEMA', '1'),
(12, 'III - ADENIUM', '1'),
(13, 'III - COCOS NUCIFERA', '1'),
(14, 'IV - BAMBUSA', '1'),
(15, 'IV - MICHELIA CHAMPACA', '1'),
(16, 'V - PHASEOLUS RADIATUS', '1'),
(17, 'V - BAUHINIA PURPUREA', '1'),
(18, 'VI - ELAEIS GUINEENSIS', '1'),
(19, 'VI - CITRUS', '1'),
(20, 'VII GOWA', '2'),
(21, 'VII DELI', '2'),
(22, 'VIII DEMAK', '2'),
(23, 'VIII ACEH', '2'),
(24, 'IX KUTAI', '2'),
(25, 'IX SAMUDRA PASAI', '2');

-- --------------------------------------------------------

--
-- Table structure for table `kelas2`
--

CREATE TABLE IF NOT EXISTS `kelas2` (
  `id_kelas2` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas2` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kelas2`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `kelas2`
--

INSERT INTO `kelas2` (`id_kelas2`, `nama_kelas2`, `id_jenjang`) VALUES
(1, 'X IPA', '3'),
(2, 'X IPS', '3'),
(3, 'XI IPS', '3'),
(4, 'XI IPA', '3'),
(5, 'XII IPA A', '3'),
(6, 'XII IPA B', '3'),
(7, 'XII IPS', '3'),
(8, 'I - CANANGA ADORATA', '1'),
(9, 'I - MANGIFERA INDICA', '1'),
(10, 'II - DURIO', '1'),
(11, 'II - AGLAONEMA', '1'),
(12, 'III - ADENIUM', '1'),
(13, 'III - COCOS NUCIFERA', '1'),
(14, 'IV - BAMBUSA', '1'),
(15, 'IV - MICHELIA CHAMPACA', '1'),
(16, 'V - PHASEOLUS RADIATUS', '1'),
(17, 'V - BAUHINIA PURPUREA', '1'),
(18, 'VI - ELAEIS GUINEENSIS', '1'),
(19, 'VI - CITRUS', '1'),
(20, 'VII GOWA', '2'),
(21, 'VII DELI', '2'),
(22, 'VIII DEMAK', '2'),
(23, 'VIII ACEH', '2'),
(24, 'IX KUTAI', '2'),
(25, 'IX SAMUDRA PASAI', '2');

-- --------------------------------------------------------

--
-- Table structure for table `kelas3`
--

CREATE TABLE IF NOT EXISTS `kelas3` (
  `id_kelas3` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas3` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kelas3`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `kelas3`
--

INSERT INTO `kelas3` (`id_kelas3`, `nama_kelas3`, `id_jenjang`) VALUES
(1, 'X IPA', '3'),
(2, 'X IPS', '3'),
(3, 'XI IPS', '3'),
(4, 'XI IPA', '3'),
(5, 'XII IPA A', '3'),
(6, 'XII IPA B', '3'),
(7, 'XII IPS', '3'),
(8, 'I - CANANGA ADORATA', '1'),
(9, 'I - MANGIFERA INDICA', '1'),
(10, 'II - DURIO', '1'),
(11, 'II - AGLAONEMA', '1'),
(12, 'III - ADENIUM', '1'),
(13, 'III - COCOS NUCIFERA', '1'),
(14, 'IV - BAMBUSA', '1'),
(15, 'IV - MICHELIA CHAMPACA', '1'),
(16, 'V - PHASEOLUS RADIATUS', '1'),
(17, 'V - BAUHINIA PURPUREA', '1'),
(18, 'VI - ELAEIS GUINEENSIS', '1'),
(19, 'VI - CITRUS', '1'),
(20, 'VII GOWA', '2'),
(21, 'VII DELI', '2'),
(22, 'VIII DEMAK', '2'),
(23, 'VIII ACEH', '2'),
(24, 'IX KUTAI', '2'),
(25, 'IX SAMUDRA PASAI', '2');

-- --------------------------------------------------------

--
-- Table structure for table `kelas4`
--

CREATE TABLE IF NOT EXISTS `kelas4` (
  `id_kelas4` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas4` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kelas4`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `kelas4`
--

INSERT INTO `kelas4` (`id_kelas4`, `nama_kelas4`, `id_jenjang`) VALUES
(1, 'X IPA', '3'),
(2, 'X IPS', '3'),
(3, 'XI IPS', '3'),
(4, 'XI IPA', '3'),
(5, 'XII IPA A', '3'),
(6, 'XII IPA B', '3'),
(7, 'XII IPS', '3'),
(8, 'I - CANANGA ADORATA', '1'),
(9, 'I - MANGIFERA INDICA', '1'),
(10, 'II - DURIO', '1'),
(11, 'II - AGLAONEMA', '1'),
(12, 'III - ADENIUM', '1'),
(13, 'III - COCOS NUCIFERA', '1'),
(14, 'IV - BAMBUSA', '1'),
(15, 'IV - MICHELIA CHAMPACA', '1'),
(16, 'V - PHASEOLUS RADIATUS', '1'),
(17, 'V - BAUHINIA PURPUREA', '1'),
(18, 'VI - ELAEIS GUINEENSIS', '1'),
(19, 'VI - CITRUS', '1'),
(20, 'VII GOWA', '2'),
(21, 'VII DELI', '2'),
(22, 'VIII DEMAK', '2'),
(23, 'VIII ACEH', '2'),
(24, 'IX KUTAI', '2'),
(25, 'IX SAMUDRA PASAI', '2');

-- --------------------------------------------------------

--
-- Table structure for table `konselor`
--

CREATE TABLE IF NOT EXISTS `konselor` (
  `id_konselor` int(11) NOT NULL AUTO_INCREMENT,
  `nama_konselor` varchar(255) NOT NULL,
  `nip_konselor` varchar(255) NOT NULL,
  `username_konselor` varchar(255) NOT NULL,
  `password_konselor` varchar(255) NOT NULL,
  PRIMARY KEY (`id_konselor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `konselor`
--

INSERT INTO `konselor` (`id_konselor`, `nama_konselor`, `nip_konselor`, `username_konselor`, `password_konselor`) VALUES
(1, 'konselor', 'konselor', 'konselor', '1c1861bcfa010bce718bf4bf46d64f84');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `nama_level` varchar(255) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Table structure for table `manajemen`
--

CREATE TABLE IF NOT EXISTS `manajemen` (
  `id_manajemen` int(11) NOT NULL AUTO_INCREMENT,
  `nama_manajemen` varchar(255) NOT NULL,
  `nip_manajemen` varchar(255) NOT NULL,
  `username_manajemen` varchar(255) NOT NULL,
  `password_manajemen` varchar(255) NOT NULL,
  PRIMARY KEY (`id_manajemen`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `manajemen`
--

INSERT INTO `manajemen` (`id_manajemen`, `nama_manajemen`, `nip_manajemen`, `username_manajemen`, `password_manajemen`) VALUES
(1, 'manajemen', 'manajemen', 'manajemen', 'fcfce9432eb70d62ea41d979f1576b00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE IF NOT EXISTS `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `id_jenjang`, `nama_mapel`) VALUES
(1, '2', 'Agama & Budi Pekerti'),
(2, '2', 'Bahasa dan Sastra Indonesia'),
(3, '2', 'Bahasa Inggris'),
(4, '2', 'IPA Terpadu'),
(5, '2', 'IPS Terpadu'),
(6, '2', 'Matematika'),
(7, '2', 'Pendidikan Jasmani Olahraga & Kesehatan'),
(8, '2', 'PPKN'),
(9, '2', 'Prakarya'),
(10, '2', 'Seni Budaya'),
(11, '2', 'Teknologi Komputer dan Jaringan'),
(12, '3', 'Agama Islam'),
(13, '3', 'Bahasa Arab'),
(14, '3', 'Bahasa dan Sastra Indonesia'),
(15, '3', 'Matematika'),
(16, '3', 'Olahraga'),
(17, '3', 'PPKN'),
(18, '3', 'Prakarya'),
(19, '3', 'Seni Budaya'),
(20, '3', 'Sejarah Indonesia'),
(21, '3', 'Biologi'),
(22, '3', 'English for Sciences'),
(23, '3', 'Fisika'),
(24, '3', 'Kimia'),
(25, '3', 'Lintas Minat Ekonomi'),
(26, '3', 'Matematika Peminatan'),
(27, '3', 'Ekonomi'),
(28, '3', 'English for Social'),
(29, '3', 'Geografi'),
(30, '3', 'Lintas Minat Biologi'),
(31, '3', 'Sejarah'),
(32, '3', 'Sosiologi'),
(33, '1', 'Agama'),
(34, '1', 'Bahasa Inggris'),
(35, '1', 'Bahasa Indonesia'),
(36, '1', 'Culture'),
(37, '1', 'IPA'),
(38, '1', 'IPS'),
(39, '1', 'Matematika'),
(40, '1', 'Olahraga'),
(41, '1', 'PPKN'),
(42, '1', 'SBK');

-- --------------------------------------------------------

--
-- Table structure for table `mapel1`
--

CREATE TABLE IF NOT EXISTS `mapel1` (
  `id_mapel1` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel1` varchar(255) NOT NULL,
  PRIMARY KEY (`id_mapel1`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `mapel1`
--

INSERT INTO `mapel1` (`id_mapel1`, `id_jenjang`, `nama_mapel1`) VALUES
(1, '2', 'Agama & Budi Pekerti'),
(2, '2', 'Bahasa dan Sastra Indonesia'),
(3, '2', 'Bahasa Inggris'),
(4, '2', 'IPA Terpadu'),
(5, '2', 'IPS Terpadu'),
(6, '2', 'Matematika'),
(7, '2', 'Pendidikan Jasmani Olahraga & Kesehatan'),
(8, '2', 'PPKN'),
(9, '2', 'Prakarya'),
(10, '2', 'Seni Budaya'),
(11, '2', 'Teknologi Komputer dan Jaringan'),
(12, '3', 'Agama Islam'),
(13, '3', 'Bahasa Arab'),
(14, '3', 'Bahasa dan Sastra Indonesia'),
(15, '3', 'Matematika'),
(16, '3', 'Olahraga'),
(17, '3', 'PPKN'),
(18, '3', 'Prakarya'),
(19, '3', 'Seni Budaya'),
(20, '3', 'Sejarah Indonesia'),
(21, '3', 'Biologi'),
(22, '3', 'English for Sciences'),
(23, '3', 'Fisika'),
(24, '3', 'Kimia'),
(25, '3', 'Lintas Minat Ekonomi'),
(26, '3', 'Matematika Peminatan'),
(27, '3', 'Ekonomi'),
(28, '3', 'English for Social'),
(29, '3', 'Geografi'),
(30, '3', 'Lintas Minat Biologi'),
(31, '3', 'Sejarah'),
(32, '3', 'Sosiologi'),
(33, '1', 'Agama'),
(34, '1', 'Bahasa Inggris'),
(35, '1', 'Bahasa Indonesia'),
(36, '1', 'Culture'),
(37, '1', 'IPA'),
(38, '1', 'IPS'),
(39, '1', 'Matematika'),
(40, '1', 'Olahraga'),
(41, '1', 'PPKN'),
(42, '1', 'SBK');

-- --------------------------------------------------------

--
-- Table structure for table `mapel2`
--

CREATE TABLE IF NOT EXISTS `mapel2` (
  `id_mapel2` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel2` varchar(255) NOT NULL,
  PRIMARY KEY (`id_mapel2`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `mapel2`
--

INSERT INTO `mapel2` (`id_mapel2`, `id_jenjang`, `nama_mapel2`) VALUES
(1, '2', 'Agama & Budi Pekerti'),
(2, '2', 'Bahasa dan Sastra Indonesia'),
(3, '2', 'Bahasa Inggris'),
(4, '2', 'IPA Terpadu'),
(5, '2', 'IPS Terpadu'),
(6, '2', 'Matematika'),
(7, '2', 'Pendidikan Jasmani Olahraga & Kesehatan'),
(8, '2', 'PPKN'),
(9, '2', 'Prakarya'),
(10, '2', 'Seni Budaya'),
(11, '2', 'Teknologi Komputer dan Jaringan'),
(12, '3', 'Agama Islam'),
(13, '3', 'Bahasa Arab'),
(14, '3', 'Bahasa dan Sastra Indonesia'),
(15, '3', 'Matematika'),
(16, '3', 'Olahraga'),
(17, '3', 'PPKN'),
(18, '3', 'Prakarya'),
(19, '3', 'Seni Budaya'),
(20, '3', 'Sejarah Indonesia'),
(21, '3', 'Biologi'),
(22, '3', 'English for Sciences'),
(23, '3', 'Fisika'),
(24, '3', 'Kimia'),
(25, '3', 'Lintas Minat Ekonomi'),
(26, '3', 'Matematika Peminatan'),
(27, '3', 'Ekonomi'),
(28, '3', 'English for Social'),
(29, '3', 'Geografi'),
(30, '3', 'Lintas Minat Biologi'),
(31, '3', 'Sejarah'),
(32, '3', 'Sosiologi'),
(33, '1', 'Agama'),
(34, '1', 'Bahasa Inggris'),
(35, '1', 'Bahasa Indonesia'),
(36, '1', 'Culture'),
(37, '1', 'IPA'),
(38, '1', 'IPS'),
(39, '1', 'Matematika'),
(40, '1', 'Olahraga'),
(41, '1', 'PPKN'),
(42, '1', 'SBK');

-- --------------------------------------------------------

--
-- Table structure for table `mapel3`
--

CREATE TABLE IF NOT EXISTS `mapel3` (
  `id_mapel3` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel3` varchar(255) NOT NULL,
  PRIMARY KEY (`id_mapel3`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `mapel3`
--

INSERT INTO `mapel3` (`id_mapel3`, `id_jenjang`, `nama_mapel3`) VALUES
(1, '2', 'Agama & Budi Pekerti'),
(2, '2', 'Bahasa dan Sastra Indonesia'),
(3, '2', 'Bahasa Inggris'),
(4, '2', 'IPA Terpadu'),
(5, '2', 'IPS Terpadu'),
(6, '2', 'Matematika'),
(7, '2', 'Pendidikan Jasmani Olahraga & Kesehatan'),
(8, '2', 'PPKN'),
(9, '2', 'Prakarya'),
(10, '2', 'Seni Budaya'),
(11, '2', 'Teknologi Komputer dan Jaringan'),
(12, '3', 'Agama Islam'),
(13, '3', 'Bahasa Arab'),
(14, '3', 'Bahasa dan Sastra Indonesia'),
(15, '3', 'Matematika'),
(16, '3', 'Olahraga'),
(17, '3', 'PPKN'),
(18, '3', 'Prakarya'),
(19, '3', 'Seni Budaya'),
(20, '3', 'Sejarah Indonesia'),
(21, '3', 'Biologi'),
(22, '3', 'English for Sciences'),
(23, '3', 'Fisika'),
(24, '3', 'Kimia'),
(25, '3', 'Lintas Minat Ekonomi'),
(26, '3', 'Matematika Peminatan'),
(27, '3', 'Ekonomi'),
(28, '3', 'English for Social'),
(29, '3', 'Geografi'),
(30, '3', 'Lintas Minat Biologi'),
(31, '3', 'Sejarah'),
(32, '3', 'Sosiologi'),
(33, '1', 'Agama'),
(34, '1', 'Bahasa Inggris'),
(35, '1', 'Bahasa Indonesia'),
(36, '1', 'Culture'),
(37, '1', 'IPA'),
(38, '1', 'IPS'),
(39, '1', 'Matematika'),
(40, '1', 'Olahraga'),
(41, '1', 'PPKN'),
(42, '1', 'SBK');

-- --------------------------------------------------------

--
-- Table structure for table `mapel4`
--

CREATE TABLE IF NOT EXISTS `mapel4` (
  `id_mapel4` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel4` varchar(255) NOT NULL,
  PRIMARY KEY (`id_mapel4`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `mapel4`
--

INSERT INTO `mapel4` (`id_mapel4`, `id_jenjang`, `nama_mapel4`) VALUES
(1, '2', 'Agama & Budi Pekerti'),
(2, '2', 'Bahasa dan Sastra Indonesia'),
(3, '2', 'Bahasa Inggris'),
(4, '2', 'IPA Terpadu'),
(5, '2', 'IPS Terpadu'),
(6, '2', 'Matematika'),
(7, '2', 'Pendidikan Jasmani Olahraga & Kesehatan'),
(8, '2', 'PPKN'),
(9, '2', 'Prakarya'),
(10, '2', 'Seni Budaya'),
(11, '2', 'Teknologi Komputer dan Jaringan'),
(12, '3', 'Agama Islam'),
(13, '3', 'Bahasa Arab'),
(14, '3', 'Bahasa dan Sastra Indonesia'),
(15, '3', 'Matematika'),
(16, '3', 'Olahraga'),
(17, '3', 'PPKN'),
(18, '3', 'Prakarya'),
(19, '3', 'Seni Budaya'),
(20, '3', 'Sejarah Indonesia'),
(21, '3', 'Biologi'),
(22, '3', 'English for Sciences'),
(23, '3', 'Fisika'),
(24, '3', 'Kimia'),
(25, '3', 'Lintas Minat Ekonomi'),
(26, '3', 'Matematika Peminatan'),
(27, '3', 'Ekonomi'),
(28, '3', 'English for Social'),
(29, '3', 'Geografi'),
(30, '3', 'Lintas Minat Biologi'),
(31, '3', 'Sejarah'),
(32, '3', 'Sosiologi'),
(33, '1', 'Agama'),
(34, '1', 'Bahasa Inggris'),
(35, '1', 'Bahasa Indonesia'),
(36, '1', 'Culture'),
(37, '1', 'IPA'),
(38, '1', 'IPS'),
(39, '1', 'Matematika'),
(40, '1', 'Olahraga'),
(41, '1', 'PPKN'),
(42, '1', 'SBK');

-- --------------------------------------------------------

--
-- Table structure for table `minggu`
--

CREATE TABLE IF NOT EXISTS `minggu` (
  `id_minggu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_minggu` varchar(255) NOT NULL,
  PRIMARY KEY (`id_minggu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `id_guru` varchar(255) NOT NULL,
  `username_pengguna` varchar(255) NOT NULL,
  `password_pengguna` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pengguna`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `id_jenjang`, `id_guru`, `username_pengguna`, `password_pengguna`) VALUES
(2, '3', '1', '10060025', 'c40f2d0052f5568b2999db42055e5665'),
(3, '2', '2', '10181008', 'abf7e93504cc2e54f324e7fd1e7c5ae3'),
(4, '2', '3', '10101066', '4fd242bbc6147be90726f875c7a9fdc4'),
(5, '2', '4', '10130191', 'd6f864ef13d1bc4143f8880d40bb3c67'),
(6, '3', '5', '10101059', 'da87a1ba120671438271dc2f38e1d0fa'),
(7, '1', '6', '10181002', 'd5eae02dd41ea80edd57dd47b9c6fe61'),
(8, '1', '7', '10131085', '39ae638603d245e33ec73d9176ca5f3c'),
(9, '1', '8', '10101056', '5ef3b52bf2d948fb88bd38aa5e244246'),
(10, '2', '9', '10081051', 'b73e118a61c0f941fd65fcd83042bd45'),
(11, '2', '10', '10156016', '202cb962ac59075b964b07152d234b70'),
(12, '2', '11', '10101064', 'c93e523c9de241217ae50d9993dc9171'),
(13, '2', '12', '10101060', 'd4bace5286ca829a792009b9d872cec9'),
(14, '1', '13', '10081088', 'bee4e26ab268e5f6d46e5cc43eb06fe0'),
(15, '2', '14', '10151001', '202cb962ac59075b964b07152d234b70'),
(16, '3', '15', '10141001', '69e3512f7d6ff609c8b727e541e22187'),
(17, '2', '16', '10081054', '9f3698714c015829f49b9d7eb98bc130'),
(18, '3', '17', '10130194', 'e7ef93079f12fc72b6f27e43a8a2cd10'),
(19, '3', '18', '10071031', 'f6f4deb7dad1c2e5e0b4d6569dc3c1c5'),
(20, '1', '19', '10101071', 'a18630ab1c3b9f14454cf70dc7114834'),
(21, '3', '20', '10141004', 'fa8012d58e6e95476342cc3e0d7eefa3'),
(22, '3', '21', '10091053', 'e172dd95f4feb21412a692e73929961e'),
(23, '3', '22', '10146006', '64a2fd0be26fb64fd8c8de070a057eca'),
(24, '3', '23', '10131087', '150fb021c56c33f82eef99253eb36ee1'),
(25, '3', '24', '10176002', 'a128aefa86a385f4bd4d0e2117d685e6'),
(26, '3', '25', '10061019', '83cd3db234e8bcd817deb25b7fa35d89'),
(27, '3', '26', '10081089', '7e676e9e663beb40fd133f5ee24487c2'),
(28, '2', '27', '12061009', 'df9fb0582a14b228722e6ae5ab9223e8'),
(29, '3', '28', '10141003', '932dc0ab07639877fb7865eddc0b2d76'),
(30, '1', '29', '10166003', '62b6bba5f9984cd924fddbc45115e623'),
(31, '1', '30', '10081044', '5b5226ce1132c9c269f6b9eebb66f452'),
(32, '3', '31', '10061013', 'c49dcec621d5f55847e515f01756da03'),
(33, '3', '32', '10156002', '28776c3b57c16e4ac1b8876753afb6d4'),
(34, '1', '33', '10166009', '1ae3b93b94b3548c663a16f1e1df17f7'),
(35, '3', '34', '10176005', '4a0cc115e3acfa4d0210f85517467884'),
(36, '2', '35', '10176007', '0aefd4faf3a600f6844c0bfab60ce647'),
(37, '1', '36', '12101107', '63ec5fcb2bd10faa0f09879c1348f80d'),
(38, '1', '37', '10121081', 'f42ea9afe1b23e59388fcbfcd5da2430'),
(39, '2', '38', '11121004', 'a76adc76393163ec32ed1259adfaf634'),
(40, '3', '39', '10061015', '316a37cdabdbcc35f76b9fe638d79f63'),
(41, '1', '40', '10151004', '556c48640c368af6f43a861cf738e3c9'),
(42, '2', '41', '10101065', '10e3607404ebf321cd83455722236621'),
(43, '1', '42', '10111075', 'fcfce9432eb70d62ea41d979f1576b00'),
(44, '3', '43', '10121083', 'ed14f4a4d7ecddb6dae8e54900300b1e'),
(45, '1', '44', '10156010', 'a3a7ce7bb5d62a4360e8b3acb8862fe0'),
(46, '2', '45', '10091055', '0e516da8a58e7c5ab2a33db270569851'),
(47, '2', '46', '10176003', '846d658de5b859d18a00d3a6da0bf555'),
(48, '3', '47', '10151005', 'c34fab86d03d29e0954c7deef4b16c38'),
(49, '1', '48', '10156017', '202cb962ac59075b964b07152d234b70'),
(50, '1', '49', '10141005', '3e9285464b7e2890bf186db889d8df4b'),
(51, '1', '50', '10111078', 'bc5766ab6d36025412287a7703e9f46b'),
(52, '3', '51', '10181006', '5b169de75ba2f6ed26ba8a5e40e525f2'),
(53, '1', '52', '10156018', '202cb962ac59075b964b07152d234b70'),
(54, '1', '53', '10111076', '929282b23fb4d654fd89c095c9718ca2'),
(55, '1', '54', '10176008', '5ae15c0b29eeb4809a9ee2503bf8347b'),
(56, '1', '55', '10181017', 'bde64ce866da91cc9c6274db983b366c'),
(57, '3', '56', '10176009', '23196f3f9048e53738e709e72b8ce0c7'),
(58, '1', '57', '10156003', '11efdd6dc0f5c95b727234ed887d00b8'),
(59, '1', '58', '10171001', '3cee8986703b2f3fb548971eb87fd992'),
(60, '1', '59', '10176011', '7d0da5a3f09b2a76560c2eb32af1f8c4'),
(61, '3', '60', '10061010', '4dc13c8aa6371cbcb715d66f351ca293'),
(62, '2', '61', '10061021', '64d80296eea28b71d98bf3dbe5b59de4'),
(63, '1', '62', '10161003', 'be6871919074c89a4a134d2772f8b338'),
(64, '1', '63', '10176004', '750e2d8d2cfeebb5256364d3c8151d33'),
(65, '2', '64', '10101062', 'e357bafbcb020b8d1994192dda6d97e3'),
(66, '3', '65', '10181020', 'c04ca5bc943ed811dee44210a3378223'),
(67, '2', '47', '10151005@', 'c34fab86d03d29e0954c7deef4b16c38'),
(69, '2', '10101070', 'meidiana', '89e90c20f48d4bd2e835c9716e2089a5'),
(70, '1', '10101071', '10181022', 'ba8591319c235430b8a23e409790686f'),
(71, '2', '34', '10176005@', '4a0cc115e3acfa4d0210f85517467884'),
(72, '2', '56', '10176009@', '23196f3f9048e53738e709e72b8ce0c7');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id_project` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `id_semester` varchar(255) NOT NULL,
  `id_kelas` varchar(255) NOT NULL,
  `id_kelas2` varchar(255) NOT NULL,
  `id_kelas3` varchar(255) NOT NULL,
  `id_kelas4` varchar(255) NOT NULL,
  `id_guru` varchar(255) NOT NULL,
  `tema_project` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `waktu_2` date NOT NULL,
  `id_mapel1` varchar(255) NOT NULL,
  `id_mapel2` varchar(255) NOT NULL,
  `id_mapel3` varchar(255) NOT NULL,
  `id_mapel4` varchar(255) NOT NULL,
  `hasil_project` varchar(255) NOT NULL,
  `biaya_project` text NOT NULL,
  `laporan` varchar(255) NOT NULL,
  `proposal` varchar(255) NOT NULL,
  PRIMARY KEY (`id_project`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id_project`, `id_jenjang`, `id_semester`, `id_kelas`, `id_kelas2`, `id_kelas3`, `id_kelas4`, `id_guru`, `tema_project`, `waktu_1`, `waktu_2`, `id_mapel1`, `id_mapel2`, `id_mapel3`, `id_mapel4`, `hasil_project`, `biaya_project`, `laporan`, `proposal`) VALUES
(1, '3', '1', '5', '6', '', '', '17', 'Penerapan integral pada kehidupan Nyata serta membuat caption photo', '2018-09-24', '2018-10-06', '15', '26', '22', '', 'Benda-benda yang berkaitan dengan luas, volume dan panjang kurva serta caption photo kegiatan siswa', '22', 'Edited-Format-Class-Project_Rancangan-dan-Laporan-Kegiatan-MTK-xii-ipa.docx', ''),
(2, '1', '1', '16', '17', '', '', '8', 'Indahnya Keberagaman Indonesia', '2018-11-20', '2018-12-10', '', '', '', '', 'Naskah Drama dan tampilan drama', '0', '', ''),
(3, '2', '1', '23', '22', '', '', '', 'Membuat Poster', '2018-10-01', '2018-10-22', '2', '9', '', '', 'Poster (karya)', '320', 'LAPORAN-KEGIATAN-CLASS-PROJECT-bahasa indonesia-prakarya.docx', ''),
(4, '3', '1', '4', '', '', '', '39', 'merancang dan membuat model roller coaster', '2018-11-12', '2018-11-24', '23', '26', '', '', 'Produk ( miniatur roller coaster', '185', '', ''),
(5, '3', '1', '1', '', '', '', '51', 'Uji larutan elektrolit pada tanah dan berbagai macam jenis air yang menyebabkan hilangnya keanekaragaman hayati', '2018-11-09', '2018-11-22', '21', '14', '', '', 'laporan yang telah disiapkan serinci mungkin tentang uji larutan elektrolit dan non elektrolit pada berbagai jenis limbah rumah tangga ', '136', 'LAPORAN KEGIATAN CLASS PROJECT X IPA -.docx', ''),
(6, '3', '1', '4', '', '', '', '51', 'Uji asam basa pada makanan dan minuman kemasan serta dampak konsumsi dari makanan tersebut', '2018-11-05', '2018-11-19', '21', '', '', '', 'Laporan yang telah disiapkan serinci mungkin tentang bahayanya kelebihan asam dalam tubuh', '154', 'LAPORAN KEGIATAN CLASS PROJECT XI IPA.docx', ''),
(7, '3', '1', '5', '6', '', '', '18', 'Uji kadar alkohol pada tapai beras dengan menggunakan pembungkus yang berbeda', '2018-10-29', '2018-11-19', '21', '', '', '', 'Produk akhir yang dihasilkan berupa Produk Tapai dan   Laporan', '152', 'LAPORAN KEGIATAN CLASS PROJECT XII IPA A DAN B.docx', ''),
(8, '3', '1', '2', '', '', '', '60', 'Membuat Peluru ( Atletik Tolak Peluru )', '2018-10-15', '2018-10-16', '', '', '', '', 'Bola Peluru Ukuran Putra dan putri', '0', '', ''),
(9, '2', '1', '25', '', '', '', '38', 'Pola Gambar', '2018-11-23', '2018-11-30', '6', '', '', '', 'Karya berbentuk benda dan presentasi/tampilan secara berkelompok', '0', 'Format-Class-Project_-Laporan-Kegiatan.docx', ''),
(10, '1', '1', '11', '', '', '', '58', 'Melakukan wawancara tentang kesadaran melakukan ibadah salat pada siswa/i kelas VI Citrus ', '2018-11-28', '2018-11-28', '35', '', '', '', 'Laporan', '0', 'RIVANDA-LAPORAN CLASS PROJECT MELAKUKAN WAWANCARA TENTANG KESADARAN MELAKUKAN IBADAH SALAT PADA SISWA KELAS VI CITRUS.doc', ''),
(11, '3', '2', '7', '', '', '', '21', 'Caption', '2019-01-19', '2019-01-20', '20', '17', '', '', 'Video hasil karya siswa dilengkapai dengan text caption yang mengambarkan isi video', '100000', '', ''),
(12, '3', '2', '2', '', '', '', '18', 'Penerapan bioteknologi konvensional berupa proses fermentasi anaerob  dengan membuat roti pizza', '2019-01-21', '2019-01-21', '30', '27', '', '', 'hasil akhir berupa produk roti pizza', '191', '', ''),
(13, '1', '2', '10', '', '', '', '19', 'membuat jam analog', '0000-00-00', '0000-00-00', '39', '42', '', '', 'dalam bentuk produk berupa jam analog', '0', '', ''),
(14, '1', '2', '11', '', '', '', '58', 'MEMBUAT KARTU AGENDA IBADAH', '2019-02-08', '2019-02-08', '33', '', '', '', 'KARTU AGENDA IBADAH', '0', '', ''),
(15, '1', '2', '16', '17', '', '', '7', 'Ilustrasi ekosistem ', '2019-01-30', '2019-02-15', '', '', '', '', 'siswa mampu membuat ilustrasi ekosistem disebuah lingkungan yang didalamnya terdapat komponen biotik dan komponen abiotik', '0', 'ASMAUL HUSNA-LAPORAN CLASS PROJECT MEMBUAT ILUSTRASI EKOSISTEM PADA SISWA KELAS V PHACEOLUS RADIATUS DAN V BAUHINIA PURPUREA.doc', ''),
(16, '3', '2', '5', '6', '', '', '34', 'recount text', '2019-01-18', '2019-01-20', '17', '20', '', '', 'video', '1000', '', ''),
(17, '3', '2', '2', '', '', '', '65', 'pembuatan miniatur gunung api dan proses erupsi gunung api', '2019-02-27', '2019-03-13', '', '', '', '', 'miniatur gunung api', '200', '', ''),
(18, '1', '2', '13', '', '', '', '50', 'Sifat Benda', '2019-02-21', '2019-02-21', '35', '39', '', '', 'Tabel hasil percobaan dan kesimpulan percobaan', '27000', 'NURLAILI LAPORAN CLASS PROJECT SIFAT BENDA.docx', ''),
(19, '3', '2', '6', '', '', '', '60', 'Anatomi Tubuh Manusia', '2019-02-06', '2019-02-27', '', '', '', '', 'Kerangka Tubuh Manusia (Produk)', '200', '', ''),
(20, '2', '1', '24', '', '', '', '11', 'Pola bergambar', '2018-11-15', '2018-11-15', '6', '11', '', '', 'Rangkaian pola bergambar', '0', '', ''),
(21, '2', '1', '25', '24', '', '', '', 'telur asin berbagai rasa', '0000-00-00', '0000-00-00', '9', '4', '', '', 'telur asin ', '0', 'class projeck prakarya dan biologi.docx', ''),
(22, '3', '2', '3', '4', '', '', '25', 'Membuat peta dan mencari tokoh', '2019-02-26', '2019-03-01', '12', '', '', '', 'Peta masa pemerintahan Bani Umayyah dan Bani Abbasiyah serta tokoh ilmuwan Islam pada masa kejayaan Islam', '20', '', ''),
(23, '2', '1', '22', '', '', '', '10101072', 'Invitation Card', '2018-10-29', '2018-10-29', '', '', '', '', 'ïƒ˜	Kartu Undangan', '0', 'Laporan Class Project SMP.docx', '');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `id_semester` int(11) NOT NULL AUTO_INCREMENT,
  `nama_semester` varchar(255) NOT NULL,
  PRIMARY KEY (`id_semester`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id_semester`, `nama_semester`) VALUES
(1, 'Ganjil 2018/2019'),
(2, 'Genap 2018/2019');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `id_kelas` varchar(255) NOT NULL,
  `nis_siswa` varchar(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `alamat_siswa` varchar(255) NOT NULL,
  `ayah_siswa` varchar(255) NOT NULL,
  `ibu_siswa` varchar(255) NOT NULL,
  `hp_siswa` varchar(255) NOT NULL,
  `kerja_siswa` varchar(255) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=661 ;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_jenjang`, `id_kelas`, `nis_siswa`, `nama_siswa`, `alamat_siswa`, `ayah_siswa`, `ibu_siswa`, `hp_siswa`, `kerja_siswa`) VALUES
(1, '3', '7', '10165001', 'Alifa Azeda', 'Komplek PU Desa Geulumpang Payong, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Azhar Daud', 'Eni Yulita', '81360259576', 'Wiraswasta & PNS'),
(2, '3', '7', '10165002', 'Amira Addina Zahra', 'Mns. Tgk. Digadong, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Armiya', 'Nurul Fajri, SH', '85206227700', 'PNS'),
(3, '3', '7', '10165003', 'Arief Johansyah', 'Dsn Kruetmameh, Desa Geudong Alue, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Faisal, SE.Ak', 'Eliza Zuhra, S.Pd', '85261872179', 'Karyawan Bank & Guru'),
(4, '3', '7', '10165005', 'Cut Putroe Sausan', 'Desa Glg. Baroe, Kec. Kota Juang, Kab. Bireuen, Aceh', 'T. Juwirman Syah, SE', 'Yulia Fitri, S.Ag', '81360472424', 'PNS'),
(5, '3', '7', '10165007', 'Dinda Fairus Naila', 'Desa Glumpang Payong, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Taufik', 'Farrah Dina', '85275333164', 'PNS & IRT'),
(6, '3', '7', '10165008', 'Farid Zulfikar', 'Mns. Blang, Kec. Kota Juang, kab. Bireuen, Aceh', 'Bachtiar Abdullah', 'Ainul Mardiah', '85260899796', 'Wiraswasta & PNS'),
(7, '3', '7', '10165009', 'Faris Iza Firdaus', 'Desa Juli Cot Meurak, Desa Cot Meurak, Kec. Juli, kab. Bireuen, Aceh', 'Zainuddin', 'Susi Inda', '85260541966', 'PNS'),
(8, '3', '7', '10165017', 'Intan Zahara', 'Mns Dayah, kec. Kota Juang, kab. Bireuen, Aceh', 'Ridwan Dahlan', 'Hazanah, S.Pd', '85362922267', 'Pedagang & Guru'),
(9, '3', '7', '10165019', 'M. Fadhil', 'DS II Blang Raya Desa Mns. Blang, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Muchtarruddin', 'Rahmawati', '82167831695', 'Wiraswasta & Guru'),
(10, '3', '7', '10165020', 'M. Fardian Bilqisthi', 'Jl. Pendidikan, Desa Mns. Dayah, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Drs. Marwan, M.Pd', 'Irni Aryani, A.Md.Keb', '85277801975', 'PNS (Dosen) & PNS (Bidan)'),
(11, '3', '7', '10165023', 'M. Zikram Nauval', 'Depan SDN 11 Desa Geudong-Geudong Kec. Kota Juang, Kab. Bireuen, Aceh', 'Zulkarnaini (Alm)', 'Nurjannah', '81399005788', 'Guru'),
(12, '3', '7', '10165025', 'Maulana', 'Jl. Jangka No. 3, Dusun Keuchik Lah, Desa Keude Matang Glumpang Dua, Kec. Peusangan, Kab. Bireuen, Aceh.', 'H. Uskar Walidin', 'Hj. Maryani', '85361391077', 'Wiraswasta & IRT'),
(13, '3', '7', '10165027', 'Miftahul Faza', 'Desa Juli Tambo tanjong, Kec. Juli, Kab. Bireuen, Aceh', 'Drs. M. Isa, M.Pd', 'Nurmasyitah', '85296181239', 'PNS & IRT'),
(14, '3', '7', '10165028', 'Muhammad Alfurqan', 'Jalan Ule Balang Ben No. 12, Desa Meunasah Blang, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Safren Yusuf', 'Meiliza Musa', '81360262212', 'Wiraswasta & IRT'),
(15, '3', '7', '10165032', 'Muhammad Rafli', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Ismail', 'Pertiwi, S.Pd', '85277254465', 'Pegawai BUMN & Guru'),
(16, '3', '7', '10165047', 'Rizki Ananda', 'Desa Meunasah Dayah, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Tarmizi', 'Dewi Darmawati', '85260032981', 'PNS & IRT'),
(17, '3', '7', '10165050', 'Siti Alisya', 'Meunasah Dayah Matang Glumpang Dua, kec. peusangan, Kab. Bireuen, Aceh', 'Rifian', 'Novi Diana', '85277487717', 'Wiraswasta & Dosen'),
(18, '3', '7', '10165051', 'Siti Laiya Humaira', 'Desa Mns Blang, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Nurdin Muhammad', 'Asmiati', '85262464981', 'Wiraswasta & IRT'),
(19, '3', '7', '10165054', 'Venica', 'Jl. Letda Ishak Ismail Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Marvin Ong', 'Suyeni Raja', '81360331188', 'Wiraswasta & IRT'),
(20, '3', '7', '10165058', 'Yuyun Sulistian', 'Desa Balee Aroen Mns. Blang Bireuen Kec. Kota Juang, Kab. Bireuen, Aceh', 'Fadli Alda', 'Aisyah', '85260860076', 'Wiraswasta & PNS'),
(21, '3', '7', '10165063', 'Wilda Safitri', 'Jl. Medan - B. Aceh, Desa Geulanggang Gampong, Kab. Bireuen', 'Doni Arianta', 'Uniar', '85372052003', 'Wiraswasta'),
(22, '3', '7', '10165064', 'Amalya Amnina', 'Desa Mns. Capa Kec, Kota Juang, kab. Bireuen, Aceh', 'Muhammad Ambia', 'Elly Farida', '85260598859', 'Polri & IRT'),
(23, '3', '7', '10165066', 'Muammar Zaidan', 'Jl. T. Imum Rakyat No. 90 b.  Mns Capa  Kec. Kota Juang  Kab. Bireuen.', 'Juliadi', 'Tri Rahmayani', '82304512323', 'Wiraswasta'),
(24, '3', '7', '10175063', 'Nakiatul Misqa', 'Meunasah Dayah, Kota Juang, Kab.Bireuen, Aceh', 'M. Yunus', 'Martilla', '85372021915', 'Swasta'),
(25, '3', '6', '10165004', 'Athira', 'Dusun Ulee Gampong, Desa Geudong Alue, Kec. Kota Juang, kab. Bireuen, Aceh', 'dr. Zulkarnaen Adam', 'dr. Era Muliana, M.Ked (PD) SpPD', '81377489007', 'Dokter PNS'),
(26, '3', '6', '10165006', 'Dara Syafira', 'Desa Cot Tarom Baroh, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Syarifuddin', 'Hermawati', '85362539384', 'Wiraswasta & IRT'),
(27, '3', '6', '10165011', 'Firjatullah', 'Dusun Jeumpa Puteh Juli KM.2 Desa Juli Seutuy Kec. Juli, Kab. Bireuen, Aceh', 'Abdullah, S.Pd', 'Katijah, S.Pd', '85372675848', 'Guru'),
(28, '3', '6', '10165012', 'Ghaitsa Al-Zahira Zulvita', 'Desa Mata Mamplam-Balestuy- Matang Glumpang Dua. Kec. Peusangan. Kab. Bireuen, Aceh', 'Zulkifli, SST.MT', 'Rosnita, AMD.Keb', '85294387445', 'PNS (Staf pengajar Poltek Lhokseumawe) & PNS'),
(29, '3', '6', '10165015', 'Hilwa Salsabila', 'Desa Glg. Gampong, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Darkasyi', 'Asriany Nur', '85276110100', 'Wiraswasta & PNS'),
(30, '3', '6', '10165021', 'M. Rafli Syahputra', 'Jl. Meunasah Pulo Kiton, Desa Pulo Kiton, Kec. Kota Juang, kab. Bireuen, Aceh', 'Mustafa Kamal', 'Ainul Mardhiah', '85371577158', 'Karyawan Swasta & Guru'),
(31, '3', '6', '10165024', 'Maghfirah', 'Desa Meunasah Blang, Kec. Kota Juang, Kab. Bireuen, Aceh', 'M. Daud', 'Irwati', '85262185301', 'PNS & IRT'),
(32, '3', '6', '10165030', 'Muhammad Fatih Assilmy', 'Jl. Tgk. Dipulo No.14 Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Dedi Kuswana', 'Nurlaili', '85260996240', 'Free Lance & IRT'),
(33, '3', '6', '10165031', 'Muhammad Kautsar', 'Komplek Green Balam Town House No.3 Jln. Balam Ring Road gagak hitam sunggal, Desa Sei Sikambing B, Kec, Sunggal, Kab. Medan, Sumatra Utara', 'Iskandar', 'Mardalena', '81319602221', 'Pegawai Swasta & IRT'),
(34, '3', '6', '10165034', 'Mujirahmatillah', 'Jl. Banda Aceh - Medan No. 5 Dusun Timur Desa Cot Gapu Kec. Kota Juang, Kab. Bireuen, Aceh', 'Drs. Hazmi', 'Cut Mardian, S.Pd', '85260822125', 'PNS'),
(35, '3', '6', '10165035', 'Nabila Phoenna', 'Desa Mns. Capa Kec, Kota Juang, kab. Bireuen, Aceh', 'IR. Jafar', 'Eliana', '82272703549', 'PNS & IRT'),
(36, '3', '6', '10165036', 'Nailus Sarah', 'Desa Pulo Naleueng Kec. Peusangan, Kab. Bireuen, Aceh', 'Mawardi, S.P', 'Hasdiana, S.Pd', '85277996742', 'Wiraswasta & Guru'),
(37, '3', '6', '10165037', 'Nanda Riska', 'Desa Cot Rabo Tunong, Kec. Peusangan, Kab. Bireuen, Aceh', 'Iskandar', 'Jummiati, S.Pd', '85296019444', 'Jualan & PNS'),
(38, '3', '6', '10165038', 'Nur Haliza', 'Desa Cot Gapu, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Mustafa', 'Dra. Roslali', '81360977941', 'PNS'),
(39, '3', '6', '10165044', 'Raja Farhan', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Jailani Muhammad', 'Cut Nurlaizar', '81360854875', 'Pensiunan BRI & IRT'),
(40, '3', '6', '10165052', 'Siti Shali Zuana', 'Jl. Teungku Teungoh No. 2 Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Supriadi', 'Asrawani Abbas', '81269175563', 'Jualan & Guru SMA'),
(41, '3', '6', '10165055', 'Wildan Mumtaz', 'Desa Cot keutapang, Kec. Jeumpa, Kab. bireuen, Aceh', 'Basiran, S.Ag', 'Hidayani Safari Zanna', '81375238758', 'Guru SSB Bireuen & IRT'),
(42, '3', '6', '10165057', 'Yonesha Naziha', 'Jalan Karang Rejo, Desa Bandar, Kec. Kota Juang, Kab. Bireuen', 'Yusrizal', 'Nora Erlina', '8527553955', 'Wiraswasta & Dagang'),
(43, '3', '6', '10175002', 'Rayhal Reychan', 'Pulo Ara, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Asnawi Muhammad', 'Purnama Sari', '85260140686', 'Karyawan Swasta & IRT'),
(44, '3', '5', '10165010', 'Fira Salsabila', 'Jl. Kol M. Syah Asyeik No. 80, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Edisyah, S.Pd', 'Khairi', '85372026272', 'Guru & IRT'),
(45, '3', '5', '10165013', 'Ghina Gheffira', 'Jl. Tgk. Di Beurawang No. 19 Desa Cot Trieng, Kec. Kuala, Kab. Bireuen, Aceh', 'Mirza Fuady', 'Ritahayati', '811672053', 'Wiraswasta dan PNS kantoran'),
(46, '3', '5', '10165014', 'Hassan Al Muhshi', 'Jalan Pante Dusun Damai Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Muhammad Al Muttaqin, S.Pd, M.Pd', 'Hasnawati, S.Pd', '85277685050', 'PNS'),
(47, '3', '5', '10165016', 'Intan Syaravina', 'Dusun Tgk Cut Ali, Desa Meunasah Timu, Kec. Peusangan, Kab. Bireuen, Aceh', 'Sugimin', 'Ramlah Alatif, S.Pd', '85213903048', 'Sopir & PNS (guru)'),
(48, '3', '5', '10165018', 'Luthfia Hani', 'Desa Mns. Tambo, Kec. Peudada, Kab. Bireuen, Aceh', 'Mufizal, SE', 'Enik, AMk', '85373262258', 'PNS'),
(49, '3', '5', '10165022', 'M. Rivanza Aqsal', 'Desa Meusah Capa, Kec Kota Juang, kab. Bireuen, Aceh', 'M. Ajis Fandila', 'Erlina', '85277117999', 'Wiraswasta & IRT'),
(50, '3', '5', '10165026', 'Maulana Wahri Nauval', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Ir. Musmulyadi', 'Hafniati, S.Pd', '82367266375', 'Karyawan BRI & PNS'),
(51, '3', '5', '10165029', 'Muhammad Farhan', 'Desa Gampong Baro, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Suyono', 'Nurhayati', '82361308384', 'Guru'),
(52, '3', '5', '10165040', 'Rafi Ramanda', 'Desa Geulanggang Gampong, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Helmi Sukran', 'Dra. Ainun Mardhiah', '85296660024', 'PNS'),
(53, '3', '5', '10165042', 'Raini Hasna', 'Juli Mns Teugoh Km.5, Kec. Juli, Kab, Bireuen, Aceh', 'Zulfikar', 'Yusniati', '85262577351', 'Wiraswasta & Bidan (PNS)'),
(54, '3', '5', '10165045', 'Rayan Maulana', 'Geulanggang Teugoh, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Nurli Ibrahim', 'Mutiawati', '85277689734', 'Jualan & IRT'),
(55, '3', '5', '10165046', 'Rifki Safir Al Zikran', 'Jl. Langgar No. 21, Desa Bandar, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Bukhari, SE', 'Nurmalawati, S.Ag', '81360421682', 'PNS (Guru)'),
(56, '3', '5', '10165048', 'Sherina Aditya', 'Desa Cot Trieng, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Surwandi', 'Mugi Rahayu', '85262742989', 'Wiraswasta & IRT'),
(57, '3', '5', '10165049', 'Silvia Wanda', 'Desa Kommes, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Ridwan', 'Eliana', '82364122020', 'Wiraswasta & IRT'),
(58, '3', '5', '10165059', 'T. Rahmat Miftahuddin', 'Jl. Bireuen-Takengon Km.6 Desa Juli Mee Teungoh, Kec. Juli, Kab. Bireuen, Aceh', 'T. Marwazy Putra Juli', 'Fauziah Razali', '82368586738', 'PNS (Guru) & IRT'),
(59, '3', '5', '10165062', 'Annisa Maulidia', 'Desa Geudong Alue, kec kota Juang, kab. Bireuen, Aceh', 'Anwar', 'Asrita', '81269541300', 'PNS dan Guru'),
(60, '3', '5', '10165065', 'Rahmi Rahmadhani', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Ridwan', 'Maimunah', '85270419668', 'Wiraswasta & PNS'),
(61, '3', '5', '10175001', 'Ditta Permata Rizalmi', 'KM. 40 Desa Negeri Antara, Kec. Pintu Rime Gayo, Kab. Bener Meriah, Aceh', 'Edi Afrizal', 'Sulasmi', '85358626397', 'Wiraswasta & IRT'),
(62, '3', '3', '10175006', 'Syibral Malasyi', 'Jln. Listrik Bireuen', 'Musrizal ', 'Idaryani', '82360031002', 'Wiraswasta'),
(63, '3', '3', '10175007', 'Muhammad Habban Farisy', 'Cot Tarom Tunong, Jeumpa Bireuen', 'Jufri', 'Nazar Kusuma', '81360099391', 'Wiraswasta'),
(64, '3', '3', '10175009', 'Hairi Rifki Tirmiara', 'Cot Keutapang Bireuen', 'Ilyas Putra', 'Hairani', '85277763777', 'Petani'),
(65, '3', '3', '10175012', 'Natasya Wihelsa', 'Komplek Lap. Voa Bireuen', 'Asnawi', 'Helmiati', '82362475458', 'Wiraswasta'),
(66, '3', '3', '10175014', 'Ridha Sadiqul Akbar', 'Geulanggang Gampong', 'Amirudin ', 'Cut Agustina', '81269472200', 'Wiraswasta'),
(67, '3', '3', '10175018', 'Vina Chairina', 'Geulanggang Kulam, Kota Juang, Bireuen', 'M. Nasir', 'Fatimah', '85260271117', 'Petani/ Kepala Desa'),
(68, '3', '3', '10175025', 'Syifa Puteri Amanda', 'Cot Meurak', 'Asnawir Azhar', 'Endang Fitrianty', '85261321805', 'Wiraswasta'),
(69, '3', '3', '10175028', 'Zahra Radhia', 'Mns. Reuleut, Kota Juang, Bireuen', 'Rosmiati', 'Ridwan', '85262939801', 'PNS'),
(70, '3', '3', '10175029', 'Hewitt Lais', 'Pulo Ara, Geudong Teungah, Bireuen', 'Falines Lais', 'Meynawaty Thomas', '85262471118', 'Pedagang'),
(71, '3', '3', '10175031', 'Annisa Geubrina', 'Geulanggang Gampoeng Kota Juang Bireuen', 'Yusmadi, SH', 'Kamariah, SH', '85320044656', 'PNS Hakim'),
(72, '3', '3', '10175034', 'Sultan Azzuri Srinanda', 'Krueng Juli Timu, Kuala, Bireuen', 'Sri Kumar', 'Afrina', '85297667828', 'Wiraswasta'),
(73, '3', '3', '10175038', 'Rahmad Maulana', 'Jl. Medan-Banda Aceh, Pulo Lawang, Jeumpa Bireuen', 'Mustafa', 'Azimah', '85358454151', 'Pengemudi'),
(74, '3', '3', '10175039', 'Putri Inayatillah', 'Gp. Paseh, Kec. Juli Bireuen', 'Mukhtar, SH', 'Mehran', '81377490891', 'Pensiunan'),
(75, '3', '3', '10175040', 'Ahmad Khalil Athari ', 'Jl. T. Imum Rakyat No 10B, Komes Bireuen', 'Juliadi', 'Tri Rahmayani', '85206571050', 'Wiraswasta'),
(76, '3', '3', '10175041', 'Natasha Rizqina', 'Mns. Dayah Kota Juang Bireuen', 'Ir. Zulkifli', 'Cut Shamira', '85240572678', 'Wiraswasta'),
(77, '3', '3', '10175042', 'Risnizal Syaula ', 'Cot Trieng, Kec. Kuala, Kab. Bireuen', 'Nyak Arismawan ', 'Nilawati', '81377299253', 'Pedagang Kelontong'),
(78, '3', '3', '10175043', 'Alya Natasya Riva', 'Blang Asan, Matang Glumpang Dua', 'Rizanur', 'Eva Safitri', '85233526789', 'Wartawan'),
(79, '3', '3', '10175044', 'Farhan Al Raschel', 'Cot Keumude, Peusangan, Bireuen', 'Iskandar, ST', 'Mardhiah, S. ST', '85362313460', 'Wiraswasta'),
(80, '3', '3', '10175045', 'Khalil Munazza Simamora', 'Geulanggang Gampong, Kota Juang, Bireuen', 'M. Siddiq Simamora', 'Rosmani ', '82378937913', 'Karyawan Swasta'),
(81, '3', '3', '10175048', 'Sultan Azis ', 'Meunasah Dayah, Bireuen', 'Saiful Amri', 'Evi Naimah', '81361612755', 'Pedagang'),
(82, '3', '3', '10175052', 'Muhammad Haikal Akmal', 'Meunasah Pulo Peudada, Bireuen', 'Drs. Mukhlis', 'Aklima, A. Md', '85260980577', 'PNS'),
(83, '3', '3', '10175054', 'Adhana Nashia Umaira', 'Juli Meunasah Seutuy, Bireuen', 'Rinaldi', 'Yulizar', '81362812888', 'Wiraswasta'),
(84, '3', '3', '10175055', 'Israk Miftahul Fajar', 'Cot Tarom Tunong Kec. Jeumpa Kab. Bireuen', 'Nazaruddin', 'Agusdiana', '85262650402', 'PNS'),
(85, '3', '3', '10175058', 'Nurul Salsabila', 'Meunasah Blang, Bireuen', 'M. Rusli', 'Linda Wati', '85276655440', 'Pedagang'),
(86, '3', '3', '10175059', 'Khairun Nisak', 'Abeuk Tingkeum, Dsn. Pante Sukon, Jeumpa Bireuen', 'Suherman', 'Rohana', '81269126689', 'Tukang Batu '),
(87, '3', '3', '10175061', 'Sophia Amelia Putri', 'Jl. Tgk Dibale, Desa Cot Trieng, Kec. Kuala, Kab. Bireuen, Aceh', 'Taufik Adam', 'Rince Fitria', '8118197688', 'Karyawan Swasta'),
(88, '3', '4', '10175005', 'Daffa Fawwaaz Ramadhan', 'Jln. Medan-Banda Aceh, Meunasah Blang, Kota Juang, Bireuen', 'Mahlil', 'Debby Yulita', '85260553537', 'Swasta'),
(89, '3', '4', '10175008', 'Idza Nofica ', 'Mns. Blang Bireuen', 'Mukhlis', 'Salmiah', '85260542225', 'Wiraswasta'),
(90, '3', '4', '10175010', 'Abdi Dzil Ikram', 'Dusun Makmur, Desa Lhok Awe Teungah, Bireuen', 'Munzir Mustafa', 'Sastri Hastuti', '85262104217', 'Wiraswasta'),
(91, '3', '4', '10175011', 'Tina Levia', 'Geudong Teungah Bireuen', 'Saifullah, S. Ag', 'Fauzah, AMKL', '8116702245', 'PNS'),
(92, '3', '4', '10175013', 'Nabila Rizki', 'Juli Seutuy, Dusun Jeumpa Puteh Bireuen', 'Bakhtiar ', 'Mursyidah', '81360058432', 'PNS'),
(93, '3', '4', '10175015', 'Arsyiva Putri Azhari', 'Cot Keutapang Bireuen', 'Azhari Nurdin', 'Dewi Lazuwarni', '85261837287', 'Wiraswasta'),
(94, '3', '4', '10175016', 'Lakaeisya Sy Lathifah', 'Geulanggang Gampong Kota Juang Bireuen', 'Sofyannur', 'Yenni Dahlia', '8116706127', 'PNS'),
(95, '3', '4', '10175017', 'Sumaiya Shofiya', 'Meunasah Reuleut, Bireuen', 'Munawar', 'Yulia Rahmawati', '85260531871', 'POLRI'),
(96, '3', '4', '10175019', 'Aqil Munazza', 'Jln. Telkom No. 68 B, Pulo Ara, Kota Juang, Bireuen', 'Alm. Maimun, BSC', 'Ratna, S.Pd', '85262655563', 'tidak ada data'),
(97, '3', '4', '10175020', 'Arifurrahman', 'Geudong-geudong, Kec. Kota Juang, Kab. Bireuen', 'Fakhrizal.B, S. Pd', 'Miranda', '85359824466', 'PNS'),
(98, '3', '4', '10175021', 'Asyura Miranda', 'Cot Tarom Tunong, Bireuen', 'Muhammadar', 'Faridah', '81310702476', 'Wiraswasta'),
(99, '3', '4', '10175023', 'Fania Farah Sabila', 'Jln. Bakti No. 44, Bireuen', 'Adnan', 'Hafsah', '85260636528', 'Wiraswasta'),
(100, '3', '4', '10175024', 'Sitty Zahwa Triyusa', 'Geudong-geudong, Kec. Kota Juang, Kab. Bireuen', 'M. Yunus. B', 'Salmawati', '85262354045', 'PNS'),
(101, '3', '4', '10175026', 'Adam Rany Salabi ', 'Cureh Barat, Geulanggang Gampong Bireuen', 'Muntasir', 'Faridah Noor Salabi', '81377257171', 'Guru'),
(102, '3', '4', '10175027', 'Farras Althaf Nibras', 'Jln. Cut Meutia, No. 635, Bandar Bireuen, Kota Juang Bireuen', 'Eka Saputra', 'Lusiana', '81360000998', 'Wiraswasta'),
(103, '3', '4', '10175030', 'Aufa Rizqia Haz', 'Desa Blang Dalam, Kec. Jeumpa, Kab. Bireuen', 'Hamdani. M, S.Pd', 'Azwarni, S.Pd', '81360089078', 'PNS'),
(104, '3', '4', '10175032', 'Nadya Ega Salsabila', 'Geulanggang Baro, Kota Juang Bireuen', 'Alie Basyah', 'Hayaton Wardani', '82304613555', 'PNS'),
(105, '3', '4', '10175035', 'Trisya Darsianggi', 'Geulanggang Teungah, Kota Juang, Bireuen', 'Darmansyah', 'Nursyamsi, S.Pd', '85260050794', 'Wiraswasta'),
(106, '3', '4', '10175037', 'M. Iqbal ', 'Cot Geulumpang, Kec. Kuala, Bireuen', 'Ramli', 'Mawardiati', '8126353834', 'Wiraswasta'),
(107, '3', '4', '10175046', 'Hananda Fairezi', 'Kommes Meunasah Capa Bireuen', 'Faisal', 'Hasmawati', '85260636496', 'Guru'),
(108, '3', '4', '10175047', 'Nabila Amalia', 'Mns. Blang, Bireuen', 'M. Daud, S.Ag', 'Irwati, SE', '81360587207', 'PNS'),
(109, '3', '4', '10175049', 'Aufa Rizky Zubair', 'Geulanggang Gampong, Bireuen', 'M. Zubir', 'Nurliawati', '85260498674', 'PNS'),
(110, '3', '4', '10175050', 'Maghfirah. ZA.', 'Juli Km. 7 Blang Keutumba, Bireuen', 'Zainal Abidin', 'Nurlaili', '8126969070', 'PNS'),
(111, '3', '4', '10175053', 'Asyraf Aufa', 'Gampoeng Baro, Kota Juang Bireuen', 'Broto Sekar Negoro ', 'Asma Wardah ', '85296960265', 'Wiraswasta'),
(112, '3', '4', '10175056', 'Haura Amanatillah', 'Meunasah Capa', 'Haji Mukhlis', 'Tati Marlina, S. Si', '81360393932', 'Wiraswasta'),
(113, '3', '4', '10175057', 'Hilmiy Daffa Hibatullah ', 'Geudong Alue Bireuen', 'Rizal Mahfud ', 'Ika Utami Arhayanti', '85260100387', 'Usaha Dagang'),
(114, '3', '4', '10175060', 'Firas Al-Faiz', 'Cot Gapu Bireuen', 'Zulkarnaini Hasan', 'Cut Meutia Rahmayati', '8126579750', 'Karyawan BRI'),
(115, '3', '4', '10175062', 'Muhammad Fariz Zanetti', 'Jl. Listrik No.5, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Faisal', 'Rina', '82363270460', 'Wiraswasta'),
(116, '3', '2', '10185003', 'ABDUL FATAH', 'DESA JULI SEUTUY', 'MAHMUD USMAN', 'SITTY AISYAH', '81361268037', 'WIRASWASTA'),
(117, '3', '2', '10185004', 'ALYSSA NOVRANDA', 'PAYA CUT', 'DADANG S', 'CUT DAHLIANUR', '8113279041', 'POLRI'),
(118, '3', '2', '10185008', 'GAZZA GHAZALI', 'DESA COT TRIENG', 'MIRZA FUADY, ST', 'RITAHAYATI', '8116707375', 'WIRASWASTA'),
(119, '3', '2', '10185011', 'SITI NYAK NEHA', 'COT KEUTAPANG', 'KHAIRUN EDON TANI SITORUS', 'NURFATHIAH', '82274895390', 'TANI'),
(120, '3', '2', '10185012', 'KHAIRA RISKA', 'ABEUK TINGKEUM', 'MAIMUN ZAINUDDIN', 'NURAINI YUSUF', '85270435031', 'PETANI'),
(121, '3', '2', '10185013', 'ANNISATUR RAIHAN', 'DESA COT BADA, KEC. JEUMPA', 'H. BAKHTIAR, S.Pd', 'HJ. HASTATI', '81360255850', 'GURU'),
(122, '3', '2', '10185022', 'TURHAMUN TURFIZAL', 'DUSUN SELATAN', 'TURFIZAL SYAFARI', 'FAUZIAH', '82168682424', 'WIRASWASTA'),
(123, '3', '2', '10185025', 'SULTAN AULYA', 'COT KEUTAPANG', 'M.RIZAL', 'SUKMA WATI', '81362622260', 'WIRASWASTA'),
(124, '3', '2', '10185026', 'LATIVA ZUHRA', 'DUSUN TENGAH, COT GAPU', 'M.NATSIR, S.Ag', 'BET LINA, SE', '85262674272', 'PNS'),
(125, '3', '2', '10185027', 'CHAIRUN NISA', 'BIREUEN, MEUNASAH CAPA', 'RIDWAN HASAN', 'STARIANA', '81260774679', 'WIRASWASTA'),
(126, '3', '2', '10185029', 'LUDFIAN ADRIANSYAH', 'JULI COT MEURAK BIREUEN', 'ALM. M. ADNAR', 'RIANA MARIA', '82366773813', 'JUALAN'),
(127, '3', '2', '10185030', 'MUHAMMAD KHALIQ ALFAROZI', 'DESA. COT TAROM TUNONG', 'FAZIL', 'JUARNI', '85260261815', 'WIRASWASTA'),
(128, '3', '2', '10185031', 'XAVIN ADDIS MUSBAR', 'DESA COT KEUTAPANG, BIREUEN', 'ILDANI MUSBAR ILYAS (ALMARHUM)', 'MILA SUSANTI', '81269668169', 'PNS'),
(129, '3', '2', '10185033', 'CARISSA', 'MEUNASAH BLANG, BIREUEN', 'FAUZAN', 'SUSI ANGGRIANI', '811674064', 'WIRASWASTA'),
(130, '3', '2', '10185034', 'EDWARD HIDAYAT', 'JL. RAMAI NO 50', 'EDY HIDAYAT', 'DEWI', '81372407532', 'WIRASWASTA'),
(131, '3', '2', '10185037', 'NINDA MERSA LINA', 'BTN KUPULA INDAH', 'SAIFUL AZHAR', 'FITRIANA', '81361373091', 'WIRASWASTA'),
(132, '3', '2', '10185038', 'FARIDH', 'JULI SEUTUY KM.2', 'ABDULLAH, S.Pd', 'KATIJAH, S.Pd', '85260342585', 'PNS'),
(133, '3', '2', '10185040', 'FAHRAYZI DARSIANDI', 'GEULANGGANG TEUNGAH', 'DARMANSYAH', 'NURSYAMSI', '85361199077', 'WIRASWASTA'),
(134, '3', '2', '10185041', 'DINDA BILQIST ZULIANSYAH', 'JLN TGK DOMAJID NO 15, BALEE ARUN, MEUNASAH BLANG', 'WATIM', 'DARMAYANTI WULANDARI', '81290063205', 'WIRASWASTA'),
(135, '3', '2', '10185042', 'ADILLA ZAKIAH', 'JLN GAYO JULI KMS JULI, MEUNASAH TEUNGOH', 'ZULFIKAR', 'YUSNIATI', '85262597235', 'WIRASWASTA'),
(136, '3', '2', '10185044', 'SAFRIZAL AL-FADHIL', 'NICAH', 'AURIA H. MURDANI', 'SUTIANI', '85361917009', 'DAGANG'),
(137, '3', '2', '10185045', 'RIFKA NABILA', 'DESA GEULANGGANG KULAM', 'HAFIZ AFRIZAL', 'ROHANA', '82363192020', 'BURUH'),
(138, '3', '2', '10185046', 'FARAH DIBA', 'LHOK AWE TEUNGEUH DUSUN MULIA', 'MUKHTAR', 'RAHMAWATI', '82366961526', 'PEGAWAI SWASTA'),
(139, '3', '1', '10185001', 'M. AKMAL', 'JULI MEUNASAH TEUNGOH', 'ISKANDAR', 'YUNIAR WATI', '85277898610', 'SOPIR'),
(140, '3', '1', '10185002', 'HARIS PUTRA BARONA', 'PANTE PISANG', 'SURYADI H.HASAN', 'MAISARAH', '85211013212', 'WIRASWASTA'),
(141, '3', '1', '10185005', 'HAFIFATUNNUR', 'PEUDADA, BIREUEN', 'MUHAMMAD NUR', 'CHUZAIMAH', '85261454398', 'PNS'),
(142, '3', '1', '10185006', 'NATASYA AULIA PUTRI', 'MEUNASAH DAYAH, MATANGGLUMPANG DUA', 'M. MUSHAUWIR', 'JUMIATI', '81360142812', 'PNS'),
(143, '3', '1', '10185007', 'SARAH NADIA', 'JL. PESANTREN DARUL ISTIQAMAH LR. BAKTI', 'H. NASIR TAHER', 'HJ. MARHAMAH', '85260038716', 'WIRASWASTA'),
(144, '3', '1', '10185009', 'OKTADUTA MUHAMMAD', 'JLN. BANDA ACEH-MEDAN KM.218\r\r\nCOT GAPU, BIREUEN', 'dr. MUHAMMAD, Sp.M', 'SARI FITRI', '82160065555', 'DOKTER'),
(145, '3', '1', '10185010', 'MAYA SIRURRIFKA', 'COT KEUTAPANG', 'AMIRUDDIN SE.M.SI.AK', 'ADNEN NURDIN', '8116701716', 'PNS'),
(146, '3', '1', '10185014', 'DIAN NUR FATHINAH', 'DESA MEUNASAH CAPA', 'TRIWIYANTO', 'INA SUSANNA', '81360652242', 'PNS'),
(147, '3', '1', '10185015', 'SITI HUMAIRA', 'JL. MESJID NO 2. DESA GEUDONG-GEUDONG', 'ALM ZULKARNEN ABBAS', 'MURNIATI', '85277361773', 'WIRASWASTA'),
(148, '3', '1', '10185016', 'MAYA NUR HIKMAH ADONAEN', 'MATANGGLUMPANG DUA, MEUNASAH TIMU', 'AGUNG SUHARTONO GANA', 'HAFNI ZAHARA', '81310060444', 'WIRASWASTA'),
(149, '3', '1', '10185017', 'FARAH DEVA RACHMAN', 'DESA MEUNASAH TIMU', 'JUNAIDI AR (ALM)', 'NURMALIS', '81370877022', 'tidak ada data'),
(150, '3', '1', '10185018', 'NAZIRA', 'MEUNASAH ALUE', 'SARDANI', 'KHAIRIAH', '85361529772', 'PNS'),
(151, '3', '1', '10185019', 'RIZKA MAULIZA', 'BLANG DALAM', 'SARDANI', 'MURNIATI', '85270357755', 'GURU'),
(152, '3', '1', '10185020', 'WILDA', 'DUSUN TGK MUDA SANDANG DESA COT UNOE KEC. KUALA KAB. BIREUEN', 'ARMIADI', 'AGUSTIANUR', '81360596596', 'WIRASWASTA'),
(153, '3', '1', '10185021', 'FINKANAIA WAHAB', 'JL.T.A. HAMID NO.7 KOMMES-MEUNASAH CAPA', 'ABDUL WAHAB DAULAY', 'SRI HERLINA WATI', '819890281', 'WIRASWASTA'),
(154, '3', '1', '10185023', 'ALDYA HUMAIRA', 'JL. TGK DIPULO. NO 14. PULO KITON', 'JANUAR ABRIAN', 'FENNY WAHYUNI', '82367287892', 'DAGANG'),
(155, '3', '1', '10185024', 'MOUNTTIE SYURGA', 'DESA MEUNASAH DAYAH- BIREUEN', 'IR.JAFAR', 'ELIANA', '81360039659', 'PNS'),
(156, '3', '1', '10185028', 'ADRI SEGARA', 'ASMIL KODIM 0111/BIREUEN', 'JAILANI', 'NURLINA', '85270829568', 'TNI-AD'),
(157, '3', '1', '10185032', 'M. SULTHAN MUNA AKBARSYAH', 'DESA GELANGGANG GAMPONG', 'H. NASRULLAH', 'MULIYANI', '81361794888', 'PNS'),
(158, '3', '1', '10185035', 'DIVA MAULANA. Z', 'MEUNASAH BLANG', 'ZAMRI', 'ANISAH', '81360274247', 'PNS'),
(159, '3', '1', '10185036', 'RAHMAT AZRIMA', 'JALAN BIREUEN- TAKENGON KM.2', 'AZHARI (ALM)', 'FATIMAH', '85260051036', 'PNS'),
(160, '3', '1', '10185039', 'MUHAMMAD FARHAN', 'UJONG BLANG BIREUEN', 'EDIHAR', 'ROSMILA', '81362680422', 'WIRASWASTA'),
(161, '3', '1', '10185043', 'INDAH MARISA', 'JULI TAMBO TANJONG', 'MULYADI', 'ELVIDA', '81269699007', 'BUMN'),
(162, '3', '1', '10195001', 'CECILIA OTTO WONGSODINATA', 'Jl. Langgar No. 2/4 Kec. Kota Juang Kab. Bireuen', 'Alexandra', 'Ridza Jusri', '8116123238', 'Wiraswasta'),
(163, '2', '25', '10164002', 'Adila Mizana', 'Desa Mns. Blang Bireuen, Dusun Blang Raya. Kec. Kots Juang', 'Sulaiman', 'Masnidar', '85262912468', 'Wiraswasta'),
(164, '2', '25', '10164003', 'Agil Fathur Rachman', 'Asrama Kodim 0111 bireue blang bladeh', 'Vari Yanto', 'Rena Rozana', '82166796960', 'TNI'),
(165, '2', '25', '10164004', 'Agus Triana Putri', 'Dusun Geudong Sagoe, Desa Geudong, Kota Juang, Bireuen', 'Surya Dirja', 'Nurhayati', '8126992964', 'Wiraswasta'),
(166, '2', '25', '10164007', 'Alya Nabila', 'Jl.Utama, Desa Pulo Ara, Lr. Jeumpa', 'Haji Zulkifli', 'Hajjah Suhartini', '85358229386', 'Wiraswasta'),
(167, '2', '25', '10164010', 'Auva Rizkina', 'Dusun nek Paya, Desa Cot Gadong, Kec. Jeumpa, Kab. Bireuen', 'Tgk. Iskandar', 'Karmila', '85260414426', 'Wiraswasta'),
(168, '2', '25', '10164013', 'Edric Felicio', 'Lr. Dewi, No.188, Desa Pulo Ara geudogng tengoh, Kec. Kota Juang, Kab. Bireuen', 'Edi Yung', 'Susita', '82273130111', 'Wiraswasta'),
(169, '2', '25', '10164014', 'Em Brypo Baginda', 'Desa Juli cot meurak, Kec. Juli, Kab. Bireuen', 'Muhammad Hidayat', 'Nurhayati', '8126960732', 'Pns'),
(170, '2', '25', '10164020', 'Intan Zakya', 'Dusun Pulo Sukon, Desa Abeuk Tingkeum, Kec. Jeumpa. Kb. Bireuen', 'Ibrahim', 'Kemalawati', '82367955808', 'Pns'),
(171, '2', '25', '10164021', 'Kashrina Masyid Azka', 'Jl. Medan-B.Aceh, Dusun Selatan, No.2 Desa Cot Gapu', 'Iskandar Abdul karim (Alm)', 'Hayatun', '81360289834', 'PNS'),
(172, '2', '25', '10164023', 'Khairuna Zikri', 'Bireue. Meunasah Dayah, Kota Juang', 'Usman', 'Khuzainah', '81360092293', 'PNS'),
(173, '2', '25', '10164028', 'Muhammad Firdausi', 'Desa Cot Keutapag, Kec. Jeumpa. Kab.Bireuen', 'Ismail', 'Pertiwi', '85277254465', 'Karyawan Swasta'),
(174, '2', '25', '10164030', 'Muhammad Zaki', 'Dusun Sayed, Desa Cot Tarom Baroh, Kec. Jeumpa, Kab.Bireuen', 'Abdullah', 'Suyatmi', '85359742609', 'Swasta'),
(175, '2', '25', '10164031', 'Nabiel Azzam', 'Keude Matang Glumpang dua, Kec. Peusangan, kab. bireuen', 'Dr. Yurizal, M.Kes', 'Idialita, S.Pd', '8126966538', 'PNS'),
(176, '2', '25', '10164033', 'Nazhilla Sabrina', 'B lang Bladeh, Kec, Jeumpa, Kab.Bireuen', 'Azmier', 'Maryani', '85277575274', 'PNS'),
(177, '2', '25', '10164034', 'Novi Rahmadani', 'Jl. Kol. Husen Yusuf, No.3 Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Darkasyi', 'Nuraini', '81360022111', 'PNS'),
(178, '2', '25', '10164035', 'Rania Abharina', 'Kp. Baru, Kota Juang, Kab. Bireuen', '(Alm)Saifuddin Gani, SH', 'Yenni Solfiani', '81370001556', 'tidak ada data'),
(179, '2', '25', '10164039', 'Tasya Nurahmah', 'desa Krueng Baroe Babah Krueng, Kec. Peusangan,Kab. Bireuen', 'baharuddin Syah', 'Rahmayani', '81265461449', 'Wiraswasta'),
(180, '2', '25', '10164043', 'Sartika Aprilia', 'BTN Keupula Indah, Geulangang gampong  Kec. Kota Juang  Kab.  Bireuen', 'Ismail', 'Sakdiah', '85277911600', 'TNI-AD'),
(181, '2', '25', '10174001', 'Dina Maghfirah', 'Jl. Medan-Banda Aceh  Mns Capa.  Kec. KLota Juang Kab. Bireuen', 'Bakhtiar', 'Hernawati', '81360373176', 'Jualan'),
(182, '2', '25', '10174003', 'Azizurrahman', 'Desa Blang Cot Tunong, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Ansari Puteh, ST.M.Si', 'Azizah', '8126907393', 'Wiraswasta'),
(183, '2', '25', '10184002', 'Suratman', 'Asrama Kodim 0111 Bireuen, Desa Blang Bladeh, Kec. Jeumpa, Kab. Bireuen', 'afrijon', 'Artati', '82166796960', 'Wiraswasta'),
(184, '2', '25', '10184007', 'FERIZAL', 'Bireuen Meunasah Dayah', 'Efendi Sulaiman', 'Rosdiana A.Thaleb', '81269442999', 'Sopir'),
(185, '2', '25', '10184048', 'ALLYA', 'Desa Meuse, Kec.Kuta Blang, Kab.Bireuen, Aceh', 'JUFRI ABD', 'NURMADIAH', '82369212778', 'Wiraswasta'),
(186, '2', '24', '10164001', 'Abizar Al Aqsha', 'Jl. Gayo, Lr. Tgk.Malem, No.007, Komes, Kab. Bireuen', 'Edwar Jufri', 'Aswina', '811676645', 'PNS'),
(187, '2', '24', '10164005', 'Ahya Jazira', 'Meunasah meusjid, Kec.Peudada, Kab.Bireuen', 'Oya Muhammad Akar, S.Ag', 'Imalia, S.Ag', '82366271785', 'Wiraswasta'),
(188, '2', '24', '10164006', 'Alya Diva Namaira', 'Desa Seuneubok Gunci, Kec. Juli', 'Iskandar', 'Yuslina,S. Pd', '85260511970', 'Wiraswasta'),
(189, '2', '24', '10164011', 'Azkya Kamila Maharani', 'Jl.Petua Banta, No.7, Meunasah Blang, Bireuen', 'Dr.H.Athaillah Abdul Latief', 'Nur Saadah,S.Psi', '8122611980', 'PNS'),
(190, '2', '24', '10164015', 'Firda Amelia Salsabilla', 'Geulanggang Teungoh, Kec.Kota Juang, Kab.Bireuen', 'Safwan', 'Vina Rhimandiani H', '85360086786', 'PNS'),
(191, '2', '24', '10164016', 'Ghaffari Orida Putra', 'Jl.Medan-B.Aceh, No.7, Desa Cot Tarom Tunong, Kec. Jeumpa, Kab.Bireuen', 'Samanrida', 'Fatriawati', '85328686632', 'Wiraswasta'),
(192, '2', '24', '10164017', 'Haura Azelia', 'Dusun Bahagia, desa Lhok Awe-Awe, Kec. Kuala, Kab. Bireuen', 'Munizar, SE', 'Siti Junaida, A.Md', '82165514181', 'PNS'),
(193, '2', '24', '10164019', 'Ifa Ghinaya', 'Lhok Awe Tengoh, Kec.Juang. Kab.bireuen', 'M. Nasir', 'Nurhusna', '85260201033', 'PNS'),
(194, '2', '24', '10164022', 'Keyzia Vania Elsya', 'Jl.Medan-B.Aceh, Matang, Kec.Peusangan. Kab.Bireuen', 'Helmi Abdullah', 'Nina Zurita', '85260545633', 'tidak ada data'),
(195, '2', '24', '10164024', 'M. Reza Mahendra', 'Lhok Awe awe, Kec. Kuala, Kab.Bireuen, Aceh', 'Suryadi', 'Nilawati', '85276657624', 'Wiraswasta'),
(196, '2', '24', '10164025', 'M.Hadi Mahiru Zihni', 'Meunasah Tunong, Kec.Peudada, Kab.Bireuen', 'M.Fadhil, S.Ag', 'Maulidiana', '85277745044', 'PNS'),
(197, '2', '24', '10164026', 'Mahdalena', 'Bireuen, Meunasah Blang. Kec. Kota Juang', 'Mukhlis', 'Salmiah', '85260542225', 'Wiraswasta'),
(198, '2', '24', '10164027', 'Mellisa', 'Jl. Andalas, No. 43/73, Jl. panglima Polem', 'Lulimin', 'Lina', '81377471817', 'Wiraswasta'),
(199, '2', '24', '10164032', 'Nabila Rifqi', 'Desa cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Ismail Ali', 'Hafritawati', '85277081528', 'Wiraswasta'),
(200, '2', '24', '10164036', 'Rio Andika Zein', 'Juli Cot Meurak, Kab. Bireuen', 'Fauzi Zein', 'Risnatalia Siregar', '81360271799', 'Wiraswasta'),
(201, '2', '24', '10164038', 'Syifa Syahirah', 'Jl.Tgk Habib Puteh No.14, gampong Baro, Kec. Kota Juang, Kab.Bireuen', 'Drs.Ridwan', 'Elizar', '811685800', 'PNS'),
(202, '2', '24', '10164040', 'Yobel Precious Fusin', 'Jl. Andalas No.8 Bireuen, Kota Juang', 'Willy Fusin', 'Fitty Kusuma', '85371602777', 'Wiraswasta'),
(203, '2', '24', '10164044', 'Putri Ullir Rahmah', 'Cot Keutapang,  Kec. Jempa  Kab. Bireuen', 'Efensi M. Yakob', 'Fajriah', '85206477234', 'Wiraswasta'),
(204, '2', '24', '10174062', 'T. Arif Rifqi', 'Meunasah Reulet. Kec. Kota Juang. Kab. Bireuen', 'T. Isrin', 'Ivayanita', '85274665599', 'PNS'),
(205, '2', '24', '10174065', 'Anas Arrazi', 'Desa Glg. Gampong, Kec. Kota Juang, Kab. Bireuen. Aceh', 'Saifullah, MC,S.Ag, M.Pd', 'Fauzah, Amkl', '81269907915', 'PNS'),
(206, '2', '24', '10184001', 'M. Dafa Raihansyah', 'Komp. PU, Desa Geulumpang Payong, Kec. Jeumpa, Kab. Bireuen', 'Taufik', 'Farrah Dina', '85275333164', 'PNS'),
(207, '2', '24', '10184044', 'Najwa Najmina', 'Jalan Habib Puteh No 33, Gampong Baroe, Kota Juang. Bireuen', 'Bukhari', 'Fauziah', '85261319026', 'PNS'),
(208, '2', '24', '10184049', 'Teuku Fatih Inayatsyah', 'Komplek BTN Kupula Indah, Lrg. Pertama No. 4 B, Desa Glg.Gampong Kec.Kota Juang', 'Teuku Nagoursyah, SH., M. Si', 'Dr. Nyak Hayati, M. M. Ked. PD., Sp', '85260782003', 'PNS'),
(209, '2', '23', '10174006', 'M. ARAYKI', 'Asrama Kodim. Desa Blang Bladeh. Kec. Jeumpa. Kab. Bireuen', 'Jamaluddin', 'Haslinda, A. Mk', '85206393155', 'TNI'),
(210, '2', '23', '10174007', 'NYAK QURRATU AINI', 'Jln. Medan - B. Aceh, Mns. Blang No. 58B. Desa Meunasah Blang. Kelurahan Blang Raya. Kec.Kota JUang. Kab. Bireuen', 'Dr. Sayuti, ST., M.Sc', 'dr. Malahayati, Sp.KK', '85270672369', 'PNS'),
(211, '2', '23', '10174010', 'MICHAEL JONATHAN', 'Jln. Al Muslim. Desa Keude Matang Glumpang Dua. Kec Peusangan. Kab. Bireuen', 'Novadi', 'Yennywaty', '85210102030', 'Pedagang'),
(212, '2', '23', '10174014', 'YASMIN YUMNA', 'Jln. T. Malem No. 6 Kommes. Desa Bireuen Mns. Capa. Kec. Kota Juang. Kab. Bireuen', 'Zahrul Fuadi', 'Khairina', '8126553461', 'PNS'),
(213, '2', '23', '10174015', 'STELLA NATHANIA', 'Jln. Panglima Polem. No. 28. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Sukimin', 'Lie Aie', '85276625518', 'Pedagang'),
(214, '2', '23', '10174017', 'A. HARIS HAKIM', 'Jln. Inpres 1 Dusun Pusu Lawah. Desa geudong Geudong. Kec Kota Juang. Kab. Bireuen', 'Fakhrizal B, S.Pd', 'Miranda', '85359824466', 'Pengawas Sekolah Dinas P&K Prov. Aceh'),
(215, '2', '23', '10174018', 'MUHAMMAD AULIA', 'Dusun Teladan. Desa Cot Keutapang. Kec. Jeumpa. Kab. Bireuen', 'Masriadi', 'Zulfridiana, S. Pd', '85277239970', 'Wiraswasta'),
(216, '2', '23', '10174021', 'THARIQ AL WAFI', 'Jl. Pante Dusun Damai. Desa PuloKiton. Kec Kota Juang. Kab. Bireuen', 'M. Al Muttaqin, S.Pd., M.Pd', 'Hasnawati, S.Pd', '85260509595', 'PNS'),
(217, '2', '23', '10174023', 'SAID NAUFAL RIZA', 'Jl. Tgk. Muda Lasin No. 7. Desa Meunasah Blang. Kec Kota Juang. Kab. Bireuen', 'Said Qadri', 'Noviza', '8116803888', 'PNS'),
(218, '2', '23', '10174024', 'MUHAMMAD HANIF', 'Jln. Tgk. Dipulo No. 20. Desa Pulo Kiton. Kec. Kota Juang. Kec. Bireuen', 'H. Rizal, SE', 'Hj. Zulfah', '85294169065', 'Wiraswasta'),
(219, '2', '23', '10174025', 'NAIFA SHABIRA', 'Jln. Cot Meurak 2 No. 07. Desa Juli Cot Meurak. Kec. Juli. Kab Bireuen', 'Mubarik Juli Saputra, ST., MT', 'Inda Sri Mulyani, ST', '811674329', 'PNS'),
(220, '2', '23', '10174026', 'DIEFA ADILLA HAZ', 'Desa Blang Dalam. Kec. Jeumpa. Kab. Bireuen', 'Hamdani M', 'Azwarni', '81360089078', 'PNS'),
(221, '2', '23', '10174028', 'SIVA NARISKA', 'Meunasah Blang. Kec. Kota Juang. Kab. Bireuen', 'Saiful Hasballah', 'Dewi Shinta', '811681940', 'Wiraswasta'),
(222, '2', '23', '10174031', 'RIFA FAUHAN', 'Dusun Lampoh Dayah. Desa Juli Meunasah Tambo. Kec. Juli. Kab. Bireuen', 'Drs. Marzuki (Alm)', 'Fahmina, S. Pd', '85277403891', 'Guru'),
(223, '2', '23', '10174035', 'THANIA UMIRA', 'Jln. Medan-B. Aceh No.1. Desa Blang Cot Baroh. Kec Jeumpa. Kab. Bireuen', 'Chairul Bahri', 'Yulia Fonna', '81360070805', 'PNS'),
(224, '2', '23', '10174038', 'RAHEL ADELIA SETIAWAN', 'ASPOL Bireuen. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Bambang Setiawan', 'Feranida', '85260038779', 'POLRI'),
(225, '2', '23', '10174046', 'LUQMANUL HAKIM', 'Jl. Ayah Thaleb 70. Meunasah Dayah. Kec. Kota JUang. Kab. Bireuen', 'Ir. Zulkifli Adam', 'Cut Shamira', '85240572678', 'Wiraswasta'),
(226, '2', '23', '10174047', 'M. ANGGA PRATAMA', 'Asrama Polisi. Desa Bandar. Kec. Kota Juang. Kab. Bireuen', 'M. Aris Arianto (Alm)', 'Erfi Julita', '82362470568', 'Pegawai Honorer BPM'),
(227, '2', '23', '10174048', 'RISNA AMANDA', 'Meunasah TGK. Digadong. Kec Kota Juang. Kab. Bireuen', 'Junaidi', 'Noni Suminarti', '82368087922', 'Karyawan Swasta'),
(228, '2', '23', '10174049', 'NAVIFA FACHRI NASUTION', 'Jl. Jangka. Meunasah Timu. Kec. Matangglumpang Dua. Kab. Bireuen', 'dr. Muhammad Sayuti, Sp.B(K) BD', 'dr. Eva Susanti', '81260162744', 'PNS'),
(229, '2', '23', '10174050', 'NASYA DWI LESTARI', 'Jln. Medan - B. Aceh. Kr. Panjo. Kec Kuta Blang. Kab. Bireuen', 'Ridwan', 'Kartika', '85277419851', 'Wiraswasta'),
(230, '2', '23', '10174053', 'TAMLICHA', 'Gampong Kuala Jeumpa. Kec. Jeumpa. Kab. Bireuen', 'Maksal Mina', 'Dahlia', '81281416635', 'ASN'),
(231, '2', '23', '10174054', 'DWI SALSABILLA', 'Desa Meunasah Blang. Kec. Kota Juang. Kab. Bireuen', 'Isra Muddin', 'Agustina', '81370749639', 'Pedagang Ikan'),
(232, '2', '23', '10174055', 'ZIAN UKMUL HAFIDH', 'Jln. T. Bil Huda. Dusun Bahagia. Desa Lhok Awe Awe. Kec. Kuala. Kab. Bireuen', 'Taufik', 'Jumpa Wati', '82361078295', 'Wiraswasta'),
(233, '2', '23', '10174056', 'NAHWA AL ISLAMI AL HAQ', 'Lr. Amal. Dusun Makmur. Desa Gp. Baro. Kec. Kota Juang. Kab. Makmur', 'Didik Novianto', 'Muntaqiah', '82360131178', 'Pedagang'),
(234, '2', '23', '10174057', 'NASYWAN', 'Desa Juli Cot Meurak. Kec. Juli. Kab Bireuen', 'Marzuki', 'Dara Meutia, S.Sos', '8126955201', 'POLRI'),
(235, '2', '23', '10174063', 'CHILY MELINDA', 'Jln. Ramai No. 159. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Fajar Halim', 'Lie Mie Lan', '85277892450', 'Wiraswasta'),
(236, '2', '23', '10174066', 'ZAHRINA AMALIA', 'Jln. Letkol M.Syeh Asyiek, No.09, Desa Karang Rejo, Kec. Kota Juang, Kab, Bireuen, Aceh', 'Erwis, Aptnh', 'Elviani Novasari', '8116740156', 'PNS'),
(237, '2', '23', '10184042', 'HAIKAL RAMADHAN', 'Jl. Laksamana Malahayati, Kampung Baru', 'Awaluddin', 'Risna Yuliyana', '8118075633', 'Pegawai Swasta'),
(238, '2', '23', '10184047', 'MUHAMMAD SYAUQI', 'Jln Pendidikan Geudong Alue Kec.KOta JUang Bireuen', 'Zaldi Ap S.Sos', 'Eli Maulida A. M. Kep', '81269615506', 'PNS'),
(239, '2', '22', '10174005', 'MUHAMMAD AUFA', 'Dusun Blang Raya. Desa Mns. Blang. Kec. Kota Juang. Kab. Bireuen', 'Zamri, SE', 'Anisah, SH', '81360274247', 'PNS'),
(240, '2', '22', '10174008', 'ILHAM ADIDIAN TRIWIJAKSANA', 'Jln. Jangka Lr. Cut ali No. 39. Desa Meunasah Timu. Kec. Peusangan. Kab. Bireuen', 'Daryadi', 'Yusdiana, S.Pd', '82328430313', 'TNI'),
(241, '2', '22', '10174009', 'RIZKI RAMADHAN', 'Desa Meunasah Dayah. Kec. Kota Juang. Kab. Bireuen', 'Munzilin', 'Fitria Ningrum', '85362437560', 'Guru Honorer TPA'),
(242, '2', '22', '10174011', 'NATHANIEL ABED KIANTO', 'Jln. Andalas No. 6. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Joshua Abed Kianto', 'Patricia Fusin', '85277457690', 'IRT'),
(243, '2', '22', '10174012', 'GRACE WILDY', 'Jln. Bengkel No.175 d/t. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Fuardy Kartolo', 'Wilin', '81362198898', 'Wiraswasta'),
(244, '2', '22', '10174013', 'RAJWA RAJIYYA', 'Jl. T. Malem No. 6 Kommes. Desa Bireuen Mns. Capa. Kec. Kota Juang. Kab. Bireuen', 'Zahrul Fuadi', 'Khairina', '8126553461', 'PNS'),
(245, '2', '22', '10174016', 'T.M. AL ASYARI AL-MUCHTARI', 'Dusun Tgk. Mat Areh. Desa Bireuen Mns. Blang. Kec. Kota Juang. Kab. Bireuen', 'H. Mukhtaruddin, SE', 'Hj. Marhumah Yacob, A.Md', '85277888123', 'PNS'),
(246, '2', '22', '10174019', 'MUHAMMAD FAUZI', 'Jln. Tgk Mustafa No. 1. Desa Meunasah Blang. Kec. Kota Juang. Kab. Bireuen', 'H. Abu Bakar, SH', 'Hj. Asmawati Berdan', '85290628747', 'Wiraswasta'),
(247, '2', '22', '10174020', 'NAAYELA FAIZA', 'Lr. Amal No. 13. Dusun Makmur. Gampong Baro. Kec. Kota Juang. Kab. Bireuen', 'Ir. Zulfandisyah', 'Ir. Hj. Meutianur', '85296960571', 'Wiraswasta'),
(248, '2', '22', '10174022', 'RENAL ZAKY MUHAMMAD', 'Jl.Tgk. Teungoh. Dusun Aman. Pulo Kiton. Kec Kota Juang. Kab. Bireuen', 'yusrizal', 'Sri Malinda, SE', '85260509970', 'Polisi'),
(249, '2', '22', '10174027', 'NASHA AL-MUNIRA', 'Dusun Darussalam. Desa Geulanggang Baro. Kec Kota Juang. Kab. Bireuen', 'Munir, SH', 'Gusti Ahmad, S. Sos', '85260722459', 'PNS'),
(250, '2', '22', '10174029', 'DILLA AMANDA RIZALMI', 'Desa Negeri Antara KM.40. Kec. Pintu Rime Gayo. Kab. Bener Meriah', 'Edi Afrizal, SE', 'Sulasmi', '8126966882', 'Wiraswasta'),
(251, '2', '22', '10174032', 'INAS AMIRAH', 'Gp.Geudong Alue. Kec. Kota Juang. Kab. Bireuen', 'Bakhtiar', 'Sri Martuti', '811685056', 'Anggota DPRK Aceh Besar'),
(252, '2', '22', '10174033', 'THIFAL AULIA', 'Jln. T. Dibaroh No. 7. Dusun Kommes. esa Bireuen Mns. Capa. Kec. Kota Juang. Kab. Bireuen', 'Rahmat Kurniawan', 'Sisca Rozanna', '85261468567', 'PNS'),
(253, '2', '22', '10174034', 'ABIL GHOUZAN EFFENDY', 'Dusun Dua. Juli Keude Teungoh. Kec. Juli. Kab Bireuen', 'Des Dwiputra Effendy', 'Nova Roslita', '82132987889', 'Dokter'),
(254, '2', '22', '10174036', 'ULVI HIDAYATI', 'Jl.Pemuda No. 35. Geudong Geudong. Kec. Kota Juang. Kab. Bireuen', 'Safrizal, S.Pd', 'Azizah', '85222937582', 'Guru'),
(255, '2', '22', '10174039', 'MUHAMMAD NAUVAL RAZAN', 'Jln. Bakti No. 46. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Nusriadi', 'Nurlaili, S. Kep', '85358440747', 'PNS'),
(256, '2', '22', '10174040', 'NURUL HIDAYATI MAULIDNA', 'Jln. Bireuen-Takengon KM 2.7. Desa Juli Meunasah Jok. Kec. Juli. Kab. Bireuen', 'Umar', 'Juliana, A.Ma', '85260561054', 'PNS'),
(257, '2', '22', '10174041', 'FARAHDILA SAPUTRI', 'Desa Cot Keutapang. Kec. Jeumpa. Kab Bireuen', 'Afwadi', 'Nilawati', '8,53E+11', 'Karyawan Swasta'),
(258, '2', '22', '10174042', 'TEUKU MUHAMMAD ARRIL JULIANSYAH', 'Jl. Kol. Ali Basyah No. 5. Dusun Makmur. Kp. Baru. Kec Kota Juang. Kab. Bireuen', 'T. Munir', 'Cut Danda Lina', '82332953799', 'Purnawirawan'),
(259, '2', '22', '10174043', 'FARIZ HIRZY', 'Desa Cot Keutapang. Kec. Keumpa. Kab Bireuen', 'Basiran', 'Hidayani Safari Zanna', '81375238758', 'Guru'),
(260, '2', '22', '10174044', 'SILVA SAFITRI', 'Desa Geulanggang Teungoh. Kec Kota Juang. Kab. Bireuen', 'Kasdin', 'Sumiati', '85260611247', 'POLRI'),
(261, '2', '22', '10174045', 'NYAK QORI ZIKRIAH', 'Jl. Veteran Dusun Tengah. Desa Cot Gapu. Kec. Kota Juang. Kab. Bireuen', 'Bahagia, S. Pd', 'Dra. Reihan Laili', '81362782244', 'Guru'),
(262, '2', '22', '10174051', 'PUTRI SUHAILA', 'Jln. Balee Aron. No. 15. Meunasah Blang. Kec. Kota Juang. Kab. Bireuen', 'Amril Usman', 'Fitriani', '85260734398', 'PNS'),
(263, '2', '22', '10174052', 'CUT ZIA KAIZA', 'Meunasah Dayah. Kec Kota Juang. Kab. Bireuen', 'Teuku Safrizal', 'Khairanniswaty, SH', '81361603333', 'Wiraswasta'),
(264, '2', '22', '10174058', 'BIFAWAN AULIA', 'Juli KM.11. Desa Teupin Mane. Kec. Juli. Kab.Bireuen', 'Mery Azwanda', 'Yeni Marni', '85275555546', 'Wiraswasta'),
(265, '2', '22', '10174059', 'NASYWA TADZKIYA', 'Bireuen Mns.Tgk. Digadong. kota Juang. Bireuen', 'Zubir', 'Meutia', '85260313965', 'Guru'),
(266, '2', '22', '10174060', 'AWFA FARRAH DHIBA', 'Blang Mee Barat. Kec. Jeunieb. Kab. Bireuen', 'Azhari', 'Zuraida', '81360256089', 'POLRI'),
(267, '2', '22', '10174061', 'MUHAMMAD FATAYA BILQISTHI', 'Jln. Pendidikan, Dusun Teupum. Desa Mns. Dayah. Kec. Kota Juang. Kab. Bireuen', 'DR. Marwan Hamid, M.Pd', 'Irni Aryani Amd.Keb', '85277801975', 'PNS'),
(268, '2', '22', '10184041', 'M. AL BARIQ ILL SAUWIR', 'Jl. HB. Puteh, Gampong Baroe', 'Harisman', 'Mardhiah', '81269770070', 'Wiraswasta'),
(269, '2', '22', '10184050', 'T. M. Zaffa Abrar', 'Dusun Cureh Kupula Indah No. F.63 Desa Geulanggang Gampong Kec. Kota JUang Kab. Bireuen', 'Zubir Putra', 'Wardah', '81362134476', 'PNS'),
(270, '2', '21', '10184004', 'FATIATURRAHMANI', 'Desa Beunyot, Kec. Juli, Kab. Bireuen', 'Fauzan. AR', 'Cinta Andriani', '85361536176', 'Wiraswasta'),
(271, '2', '21', '10184005', 'MUHAMMAD ZIDAN', 'Aspol Bireuen', 'Noviansyah', 'Siti Aflah', '82364180821', 'Polri'),
(272, '2', '21', '10184006', 'MISBAHUL JANNAH', 'Desa Geudong Alue', 'Muslim Syammaun, S.Sos', 'Nur Aflah, SE', '82304511978', 'Pensiun PNS'),
(273, '2', '21', '10184008', 'DARA ZASKIA', 'Jln. Meunasah, Pulo Kiton', 'Mustafa Kamal', 'Ainul Mardhiah', '81360150637', 'Karyawan Swasta'),
(274, '2', '21', '10184009', 'NASYWA KHANSA', 'Dusun Komes Bireuen, Meunasah Capa, Kec. Kota Juang', 'Furkan', 'Sinta Malfina', '85260797003', 'Wiraswasta'),
(275, '2', '21', '10184010', 'CLARA OTTO WONGSODINATA', 'Geudong-Geudong', 'Alexandra', 'Ridza Jusri', '8116123238', 'Wiraswasta'),
(276, '2', '21', '10184013', 'TAUFIQ ATMAJA', 'Asrnil Gabungan Kodim 0111, Bireuen', 'Eka Rizinandi', 'Yuyun', '85229487471', 'TNI-AD'),
(277, '2', '21', '10184014', 'ZARATU FARSIA HUMAIRA', 'Gp. Bireuen Meunasah Tgk. Digadong', 'Irwan Nabawi', 'Rauza', '85277473751', 'Karyawan'),
(278, '2', '21', '10184017', 'MUHAMMAD REZA ALGHIFARI', 'Meunasah Blang', 'Jailani', 'Monika Fuanny', '85296692266', 'Wiraswasta'),
(279, '2', '21', '10184021', 'FARIQ AUVA AL MUHTARAM', 'Jln. Andalas No. 11', 'Safrizal Rusli', 'Dahlia', '85260114447', 'swasta'),
(280, '2', '21', '10184023', 'ADEL SAUSAN ALBIRRA', 'Jln. Cut Mutia No. 635', 'Eka Saputra', 'Lusiana', '81360000998', 'Wiraswasta'),
(281, '2', '21', '10184024', 'AKMAL KAUSHAR', 'Mns. Blang Bireuen, Kec. Kota Juang', 'Muhammad Yani', 'Darwati', '82360060007', 'PNS'),
(282, '2', '21', '10184026', 'KHAIRAL ABDI', 'Jln. Medan-Banda Aceh simpang sukma', 'Muhammadar', 'Faridah', '82267866672', 'Wiraswasta'),
(283, '2', '21', '10184028', 'SILVIA MAGHFIRAH', 'Geudong-geudong', 'Muhajir Chaniago', 'Zulfia', '81269904090', 'Wiraswasta'),
(284, '2', '21', '10184032', 'ANINDA BELTA SHAKIRA', 'Mns. Timu, Matang Geulumpang Dua', 'T. Arzani, S.E', 'Nuraidar, Amd. Keb', '85260871476', 'Wiraswasta'),
(285, '2', '21', '10184034', 'AMMAR FATIN', 'Blang Bladeh', 'Akmal', 'Mila Karmila', 'tidak ada data', 'Dokter'),
(286, '2', '21', '10184037', 'ZITA NADHIRA', 'Desa Pante Gajah, Kec. Peusangan', 'Munzir', 'Yusnita', '82362549245', 'Pegawai BRI cabang Bireuen'),
(287, '2', '21', '10184038', 'NAJWA ZAMHAHIRA', 'Cot Tarom Tunong', 'H. Bukhari', 'Hj. Heralisda', '811672966', 'Wiraswasta'),
(288, '2', '21', '10184039', 'ROYYAN AULIA NANDA', 'Juli Cot Meurak', 'Busyri Syafari', 'Rosmani', '85213682368', 'Karyawan BUMN'),
(289, '2', '21', '10194001', 'RAISHA AYUMI', 'Desa Padang Kasab Kec. Peulimbang Kab. Bireuen', 'Muhammad Dahlan', 'Ruslaini', '8126908032', 'WIRASWASTA'),
(290, '2', '20', '10184003', 'ISLAH LUQYANA GEUBRINA', 'Jln. Cot Meurak Utama No. 23 Bireuen', 'IR. Ibrahim Ahmad, M.Si', 'Dr. Syamsyidar, S.H., S.Ps', '811673076', 'Kepala BAPPEDA Bireuen'),
(291, '2', '20', '10184011', 'HAIDAL-AL QASIMY', 'Desa Meunasah Blang, Kec. Peudada', 'Radhi', 'Rostina', '85230122463', 'Pns'),
(292, '2', '20', '10184012', 'M. FARHAN HAJID NABIL', 'Blangcot Tunong', 'Dwi Purnomo', 'Herawati', '82179999140', 'Polri'),
(293, '2', '20', '10184015', 'M.ASYRAF', 'Jln. Gayo KM 1 Komes Mns. Capa Bireuen', 'Zahirsyah', 'Liza Rozana', '81360996777', 'swasta'),
(294, '2', '20', '10184016', 'VICTOR ONG', 'Jln. Letda Ishak Ibrahim No. 322 Bireuen', 'Marvin Ong', 'Suyenni Raja', '81259331188', 'Wiraswasta'),
(295, '2', '20', '10184018', 'AISHA SYAKIRAH', 'Jln. Karang Rejo No. 31', 'Eriek Julana Alda', 'Elly Fitriani, A.Md. Keb', '85260750303', 'Wiraswasta'),
(296, '2', '20', '10184019', 'NAJWA FARHATUN NAURA', 'Geulanggang Gampong', 'Fery Irawan', 'Yusrawati', '85358868216', 'Guru'),
(297, '2', '20', '10184020', 'MUHAMMAD RASEUKI', 'Juli Seutuy', 'Budi Raziannur', 'Novi Putri, SE', '81360080718', 'Wiraswasta'),
(298, '2', '20', '10184022', 'GHEA GHAITSA', 'Desa Cot Trieng, Kec. Kuala Kab. Bireuen', 'Mirza Fuady, S.T', 'Ritahayati, S.T', '8116707375', 'Wiraswasta'),
(299, '2', '20', '10184025', 'NAYLA HAFIZA', 'Mns. Blang, Bireuen', 'Ir. Yanfitri, S.T', 'Yulia Sari', '81360680754', 'PNS'),
(300, '2', '20', '10184027', 'ARFI HAURA AQILA', 'Geudong-geudong', 'Amar Agensyah', 'Mufitra Septaria Murfi, S.P', '85260973787', 'PNS'),
(301, '2', '20', '10184029', 'VINCA CHIRSTY', 'Bandar Bireuen', 'Sufendy', 'Susi', '85296274444', 'Wiraswasta'),
(302, '2', '20', '10184030', 'M. DZAKKI', 'Desa Cot Bada, Blang Bladeh', 'Herman. M. Saleh', 'Maulida Hanum', '85260320472', 'Mekanik Dinamo'),
(303, '2', '20', '10184031', 'SYAFA MAULIDINA', 'Blang Bladeh, Jln. Ganepo', 'Adi Sutrisno', 'Murnia Wati', '85260825398', 'TNI-AD'),
(304, '2', '20', '10184033', 'NAZILA KHAIRISA', 'Cot Keutapang', 'Husaini', 'Rosmini', '82221906133', 'Wiraswasta'),
(305, '2', '20', '10184035', 'IBNU SINA', 'Dusun Blang Raya, Mns. Blang Bireuen', 'Sayuti', 'Dr. Malahayati, SPPK', 'tidak ada data', 'Dosen'),
(306, '2', '20', '10184036', 'SHUFIA ZUHRA', 'Meunasah Blang', 'MUKHTARUDDIN', 'RAHMAWATI', '82364048333', 'PEDAGANG'),
(307, '2', '20', '10184040', 'SITI RASYILA', 'Meunasah Blang', 'Suryadi', 'Erlina Sari', '85277248082', 'Wiraswasta'),
(308, '2', '20', '10184043', 'SINGGI ULFA MUSTIRA', 'Desa Paya Timu, Kec. Peudada', 'Muslem AR', 'Ratna Juwita', '85277457687', 'Dagang'),
(309, '2', '20', '10184045', 'Muhammad Farhan Musa Kesuma', 'Bireuen Meunasah Blang', '-', 'Rosmanidar, S.Pd', 'tidak ada data', 'tidak ada data'),
(310, '2', '20', '10184046', 'AVICENA PANACEA DERRYL', 'Komp. Sekolah Sukma Bangsa Dusun A Bahagia Desa Panggoi Kec.Muara Dua ', 'Khairil Azhar', 'Deni Rahayu', '81297427961', 'Wiraswasta'),
(311, '2', '20', '10194002', 'Mughli Rasya Alkatiry', 'Dusun Satu Gp. Beurawang Kec. Jeumpa Kab. Bireuen', 'Sudarman', 'Fathiyah', '81269608644', 'Karyawan Swasta'),
(312, '1', '19', '10130005', 'Aliyah Hanifah', 'Jl. Tgk Pulo Dibaroh No. 11 Kommes', 'Mukhlis', 'Tati Marlina', '081360393932/081360123030', 'Wiraswasta'),
(313, '1', '19', '10130006', 'Alvi Syahrin', 'Glg. Teungoh Dsn. Barat', 'Jalaluddin H.M Nusyah', 'Erlina A. Mahmud', '085370648088/085260722740', 'Wiraswasta'),
(314, '1', '19', '10130008', 'Amela Ulya Asfia', 'Mns. Timu Matangglumpang Dua', 'Asril Har', 'Cut Lifia Fitriani', '85261777463', 'Wiraswasta'),
(315, '1', '19', '10130011', 'Asyka Ridhollah', 'Geudong geudong', 'Erwin', 'Wirdalena', 'tidak ada data', 'Wiraswasta'),
(316, '1', '19', '10130013', 'Cheryl Marsya', 'Asrama Kodim 0111 Blang Bladeh Bireuen', 'Asep Novie Herdiana', 'Evie Dahlianti', '085260252741/085207112889', 'TNI - AD'),
(317, '1', '19', '10130014', 'Cut Inayati Fasya', 'BTN KUpula indah No. F68 Bireuen', 'T. Fakhriadi', 'Syafriyanti Nasution', '85262085886', 'PNS'),
(318, '1', '19', '10130015', 'Devrina Suci Aulia', 'Asgab Kodim 0111/Brn', 'Rafiudin', 'Irawati', '85373972483', 'TNI-AD'),
(319, '1', '19', '10130016', 'Faika Dila Saputri', 'Desa Cot Keutapang', 'Afwadi', 'Nilawati', '0811678643/085260725737', 'Swasta'),
(320, '1', '19', '10130017', 'Faizatunnisa', 'Dsn. Teladan Cot Keutapang', 'Munandar', 'Hafni Zahara', '081263699982/085260033555/085201064553', 'PNS'),
(321, '1', '19', '10130020', 'Khalil Sy Basyarah', 'BTN Kupula Indah, Glg. Gampong. Bireuen.', 'Sofyannur', 'Yenni Dahlia', '85261244412', 'PNS'),
(322, '1', '19', '10130024', 'M. Azril Maulana. BB', 'Juli Km 2,5 Bireuen', 'Edi M. Jalil BB', 'Fitria', '85222937678', 'Wiraswasta'),
(323, '1', '19', '10130026', 'M. Fajril Maulana Putra', 'Apotek mitra Jl. Ramai No. 7 Kota Bireuen', 'Faisal', 'Marralenni', '081361209168/081360014747', 'Wiraswasta');
INSERT INTO `siswa` (`id_siswa`, `id_jenjang`, `id_kelas`, `nis_siswa`, `nama_siswa`, `alamat_siswa`, `ayah_siswa`, `ibu_siswa`, `hp_siswa`, `kerja_siswa`) VALUES
(324, '1', '19', '10130027', 'Muhammad Faris Islami', 'Jl. Laksamana malahayati No. 6A Lhok Awe Tengoh', 'Afrianto', 'Susetia Ivana', '081360058285/081360404444', 'PNS'),
(325, '1', '19', '10130028', 'Muhammad Fazhal Al-Fuzari', 'Jl. H. Abubakar No.16 Bandar Bireuen', 'Fadli', 'Susanti', '85277792642', 'PNS'),
(326, '1', '19', '10130029', 'Muhammad Irgie Ashabul Kahfi', 'Jl. Banda Aceh - Medan No. 17 A Bireuen', 'Hendra Saputra', 'Erlita', '085260645757/082162006555', 'Wiraswasta'),
(327, '1', '19', '10130036', 'Najla Nahriya Fariha M. Syauqi', 'Komplek Villa Jeumpa Beutari Gp. Glg. Baro', 'M. Syauqi', 'Rukayah Ayu', '8126925274', 'Hakim Mahkamah Syariah'),
(328, '1', '19', '10130037', 'Nashiratul Khansa', 'dusun II cinta makmur, Cot trieng. Bireuen', 'Munawardi', 'Tini Agustina', '85260109284', 'PNS'),
(329, '1', '19', '10130041', 'Qayzia Salsabila Mulya', 'Dsn. Lagang Glg. Teungoh', 'Mulyadi Sulaiman', 'Susilawati', '85260688228', 'PNS'),
(330, '1', '19', '10130042', 'Raghib Fillah', 'Jl. Gayo Km. 10 Desa Beunyot', 'Faisal Yusuf', 'Syafridah', 'tidak ada data', 'PNS'),
(331, '1', '19', '10130048', 'Said Deyyan Denansyah', 'Desa Geudong Geudong', 'Dedi Ferdiansyah', 'Murnani', '085260113378/085277599995', 'Swasta'),
(332, '1', '19', '10130052', 'Shafara Natasya', 'Gp. Juli Cot Mesjid', 'Mulia Darma', 'Salma Ismail', '85277737187', 'PNS'),
(333, '1', '19', '10130055', 'T. Zahy Nuramal', 'Desa Glg. Baro', 'T. Mirza Iskandar', 'Eliawati', '85213713443', 'Swasta'),
(334, '1', '19', '10130058', 'Wildan Alfasya', 'Mns. Dayah No 14 Bireuen', 'Mawardi', 'Asmalina', '0811673433/0811674089', 'Wiraswasta'),
(335, '1', '19', '10163057', 'Abiyu Ramzy Aslam', 'Jl. Pemuda, Lr. Wali Abu Geudong- geudong', 'Abdul Salam', 'Rosmina', '8126550061', 'tidak ada data'),
(336, '1', '19', '10163059', 'Mochammad Alfayeed', 'Gampong Bireuen Mns Reuleut, Kec. Kota Juang  kab. Bireuen', 'Abdul Hamid, STP. MM', 'Nurfazillah, A.Md Kep', '85262807464', 'PNS'),
(337, '1', '19', '10173068', 'REVAN', 'Jl. Mawar No. 22, Bireuen', 'Piter', 'Nia Susanti', '81320049513', 'Wiraswasta'),
(338, '1', '19', '10173070', 'Chelsea Alamanda', 'Desa Meunasah Dayah, Dusun Tgk. Di Ibu, Kec. Kota Juang, Kab. Bireuen', 'Sabaruddin', 'Ida Iryanti', '82148811215', 'Wiraswasta'),
(339, '1', '19', '10173073', 'Shadrina Kayla Putri', 'Lj. Tgk Di Bale, Desa Cot Trieng, Kec. Kuala, Kab. Bireuen. Aceh', 'Taufik Adam', 'Rince Fitria', '8118197688', 'Karyawan Swasta'),
(340, '1', '18', '10130002', 'Ahmad Khair Azmi', 'Dsn. Tgk. Dihagu Gp. Paseh Kec. Juli Kab. Bireuen', 'Muhammad Haris', 'Hanisah', 'tidak ada data', 'Wiraswasta'),
(341, '1', '18', '10130003', 'Aisyah Azahra', 'karang rejo, kota bireuen, desa bandar bireueun', 'Azhary M. Jamil', 'Andalusia', '085260760331/081377258696', 'Wiraswasta'),
(342, '1', '18', '10130007', 'Alyya Nurul Azkia', 'Jl. Sekolah Sukma Bangsa Desa Cot Keutapang', 'Fadli', 'Yasri Umaini', '085260255209/081260931223', 'Wiraswasta'),
(343, '1', '18', '10130009', 'Annisa Humaira Hamdani', 'Jl. Peutua Raja Pulokiton', 'Hamdani Abdul Gani', 'Hanifah', '085277464745/0811673426', 'PNS'),
(344, '1', '18', '10130010', 'Arina Shulha', 'Desa Cot Keutapang', 'Unzir Daud', 'Nurhayati', '085277703911/085370565511', 'PNS'),
(345, '1', '18', '10130012', 'Aufa Salsabila', 'Desa Glp. Payong', 'Samsul Bahri', 'Raihan Putri', '81269332336', 'Wiraswasta'),
(346, '1', '18', '10130018', 'Feisha Indriasahnie', 'Gampong Baro', 'Andri Gunandar', 'Yuyun Sachronie', '085275852591/085277779483', 'Dagang'),
(347, '1', '18', '10130019', 'Khairal Wara', 'Desa Cot Keutapang', 'M. Yusuf', 'Muna Zulva', '811678475', 'Wiraswasta'),
(348, '1', '18', '10130021', 'Khalis Muzakky', 'Mns. Blang', 'Suryahadi', 'Ruwaeda', '81360350005', 'Swasta'),
(349, '1', '18', '10130022', 'Muhammad Aliif', 'Jl Veteran No 14, Dusun Tengah, Cot Gapu, Kota Juang. Bireuen.', 'Martsafari', 'Nini Purnasari', '81269135073', 'Karyawan BUMD'),
(350, '1', '18', '10130023', 'Muhammad Aziz', 'Bireuen Mns. Blang', 'Mustafa ZA', 'Dewi Fitriani', '82364476948', 'Wiraswasta'),
(351, '1', '18', '10130025', 'Muhammad El Faizi', 'Jl. Peutua Banta No. 9 Mns. Blang', 'Nurdin A Birton', 'Mursyidah A Lathief', '0811673758 / 0644324144', 'Wiraswasta'),
(352, '1', '18', '10130030', 'Muhammad Al Fatih', 'BTN Kupula Indah Blok F4 Cot Gapu', 'Safrizal', 'Nurliana', '82160166160', 'PNS'),
(353, '1', '18', '10130032', 'Muhammad Arif Rizki', 'Jl. M. Zeen 29 Mns. Blang, Kota Juang. Bireuen.', 'Faisal M. Kasim', 'Sri Uniyati', '81360098018', 'Wiraswasta'),
(354, '1', '18', '10130033', 'Muhammad Danish', 'Dusun cinta damai, cot trieng, kecamatan kuala. Bireuen.', 'H. Sayuti Rusli', 'Fitri Zuhariyati', '811670604', 'Wiraswasta'),
(355, '1', '18', '10130035', 'Najla Khansa', 'Desa Blang Raya Bireuen Mns Blang', 'Abdullah Idris', 'Mayam', '081361364809/085213520067', 'Pensiunan'),
(356, '1', '18', '10130039', 'Nurul Azizah', 'Mns. Reulet Bireuen', 'Azhari', 'Siti Sabariah Cut', '85260433987', 'PNS'),
(357, '1', '18', '10130044', 'Rajwa Sausan', 'Jl. Kol. Husen Yusuf Ibrahim Kota Juang Bireuen', 'Yuswardi', 'Fitriati', '081269794411/08126908572', 'Wiraswasta'),
(358, '1', '18', '10130045', 'Rasya Hubillah', 'Jln medan-Banda Aceh. lr tgk imum hasyem, menasah blang bireuen.', 'Riza fahmi', 'Yusefa', '085211671025/082165139196', 'PNS'),
(359, '1', '18', '10130047', 'Safira Fieza Aqilla', 'Mns. Tgk Digadong', 'Tarmizi', 'Desi Kamisna', '85260057097', 'Swasta'),
(360, '1', '18', '10130053', 'Sulthan Rafi Zubair', 'Jl. Kapten Dsn. Cureh Timur', 'M. Zubair', 'Nurliawati', '85260498664', 'PNS'),
(361, '1', '18', '10130056', 'Teuku Muhammad Firmansyah', 'Geulanggang Baro, ds sejahtera, kota juang. Bireuen', 'T. Juwirmansyah', 'Yulia Fitri', '082160065773/081360472424', 'PNS'),
(362, '1', '18', '10130057', 'Teuku Alvin Pratama', 'Mns. Tgk. Digadong', 'Teuku Mirza Agusni', 'Rahmil Izzati', '082361798989/085262921818', 'Wiraswasta'),
(363, '1', '18', '10130195', 'Aura Ghadiza Effendy', 'Jl. Takengon Km 4 Juli Bireuen', 'Dwi Putra Effendy', 'Nova Roslita', '085230054604/082132987889', 'Dokter'),
(364, '1', '18', '10153023', 'Leonardi Wangsa', 'Jl. Panglima Polem No.2 Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Gunawan Wangsa', 'Leny', '85260822586', 'Wiraswasta'),
(365, '1', '18', '10163060', 'Ukhti Syakira', 'Geulanggang Baroe, Kec. Kota Juang  Kab. Bireuen', 'Zairidan Jaya', 'Galuh Rini Gayattri', '85277864823', 'PNS'),
(366, '1', '18', '10173075', 'Muhammad Sulthan Rasya', 'Perum. BTN Bireuen Indah, Jln. Merpati No. 25, Desa Buket Teukueh, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Jafar Siddik', 'Dwi Wulandary', '82363102685', 'Wiraswasta'),
(367, '1', '17', '10143003', 'Aishara ', 'Jl. Malikussaleh No. 4 Meunasah Capa Kota Juang Bireuen', 'Jamaluddin', 'Sriwahyuni', 'tidak ada data', 'Pedagang'),
(368, '1', '17', '10143005', 'Alfi Yaturrahma', 'Komplek Puskesmas kota Juang Buket Teukuh Kab. Bireuen', 'Muhammd Daud', 'Rosdani', '8527733773', 'Wiraswasta'),
(369, '1', '17', '10143006', 'Alia Karima', 'Jl. TM Yahya Mns. Dayah Kec. Kota Juang Kab. Bireuen', 'Ir. Zulkifli Adam', 'Cut Shamira', '85240572678', 'Wiraswasta'),
(370, '1', '17', '10143009', 'Aqil Ghoufar Effendy', 'Jl. Gayo KM. 4,2 Juli Keude Dua Kec. Juli Bireuen', 'Des Dwiputra Effendy', 'Nova Roslita', 'tidak ada data', 'Dokter'),
(371, '1', '17', '10143010', 'Ariva Gebrilia Putri', 'Kommes Mns Capa Kec. Kota Juang Kab. Bireuen', 'Rudi Syahputra', 'Lili Suryani', 'tidak ada data', 'POLRI'),
(372, '1', '17', '10143012', 'Azniel Askhya Dayahna', 'Meunasah Dayah Kec. Kota Juang Kab. Bireuen', 'Mahyiddin Abdullah', 'Ningsaih', '85277551351', 'Wiraswasta'),
(373, '1', '17', '10143022', 'Lathifa Azka Humaira', 'Jl. T. Hamzah Bendahara No. 15 Karang Rejo Kec. Kota Juang Bireuen', 'H. Azhary M. Jamil', 'drg. Hj. Andalusia', 'tidak ada data', 'Wiraswasta'),
(374, '1', '17', '10143023', 'M. Abiyyu Syahrezi', 'Desa Geudong2 Kec. Kota Juang Bireuen', 'Ahzar', 'Endang Syahriani', '8126912007', 'Pegawai BUMN'),
(375, '1', '17', '10143024', 'M. Fatih Ar Rafiqi', 'Desa Geulanggang Baru Dsn Damai Kec. Jeumpa Kab. Bireuen', 'H Safrel Zein Mahmud', 'Susi Dewi', '811670', 'tidak ada data'),
(376, '1', '17', '10143028', 'Muchraja Muna Sidqin', 'Geulanggang Gampong Kec. Jeumpa Kab. Bireuen', 'Nasrullah', 'Muliyani', '81361794888', 'PNS'),
(377, '1', '17', '10143029', 'Muhammad Azly Maulana', 'Geulumpang Payong Kec. Jeumpa Kab. Bireuen', 'Surya Bakti', 'Julia Rahmi', '85260851411', 'PNS'),
(378, '1', '17', '10143030', 'Muhammad Haikal', 'Ds. Geudong-geudong Kec. Juang Kab. Bireuen', 'Azhari Mahmud', 'Nurasmah', '85260715076', 'wiraswasta'),
(379, '1', '17', '10143031', 'Muhammad Nadiaz Yuliawan', 'Asrama Kompi Bantuan Yonif 113 Kec. Kota Juang Kab. Bireuen', 'Yossafat Yoga Ibrahim', 'Muryani', '81263261949', 'TNI-AD'),
(380, '1', '17', '10143033', 'Muhammad Rafi', 'Dusun Sayed Desa Cot Tarom Baroh Kec. Jeumpa Kab. Bireuen', 'Abdullah AR', 'Suyatmi', '85359742609', 'tidak ada data'),
(381, '1', '17', '10143034', 'Musayyaratul Barrarah', 'Asrama Kodim 0111 Bireuen Blang Bladeh Kab. Jeumpa Kab. Bireuen', 'Denny Yulinora', 'Sri Wahyuni', 'tidak ada data', 'TNI-AD'),
(382, '1', '17', '10143041', 'Said Ghevin Denansyah', 'Geudong-geudong Desa Kuta trieng Kec. Kota Juang Kab. Bireuen', 'Dedi Ferdiansyah, ST', 'Murnani', 'tidak ada data', 'PNS'),
(383, '1', '17', '10143049', 'Sulthan Arif Maulana', 'Lr. Ziarah Juli Cot Meurak Kec. Juli Bireuen', 'Asriadi', 'Rahmi', '81269313020', 'POLRI'),
(384, '1', '17', '10143051', 'T. Romi Mubariq', 'Geulempang Payong Kec. Jeumpa Bireuen', 'T. Khairullah', 'Mimizanna', '81269211616', 'Karyawan swasta'),
(385, '1', '17', '10143052', 'Tiara Salsabila', 'Dusun Blang Raya Mns. Blang Kab. Bireuen', 'Razali', 'Rahmah', '85296501302', 'Pedagang'),
(386, '1', '17', '10143054', 'Zata Zamharira', 'Jl. Merak II Desa Juli Cot Meurak Kec. JUli Kab. Bireuen', 'Mubarik Juli Saputra', 'Ibda Sri Mulyani', 'tidak ada data', 'tidak ada data'),
(387, '1', '17', '10143055', 'Zia Siti Zayyana', 'Dusun Timur Geulanggang Teungoh Kec. Kota Juang Kab. Bireuen', 'Harry Zuanda', 'Misnawaty', 'tidak ada data', 'Pegawai BUMN'),
(388, '1', '17', '10143060', 'M. Farsya Bilqisthi', 'Jl. Pendidikan Mns Dayah Kec. Kota Juang Bireuen', 'Drs. Marwan', 'Irni Aryani', 'tidak ada data', 'PNS'),
(389, '1', '17', '10153029', 'Muhammad Raja Naufal', 'Jl. Medan-Banda Aceh Km 231, Desa Pante Pisang, kec. Peusangan , Kab. Bireuen', 'Jafni', 'Fitriani', '8126952935', 'PNS'),
(390, '1', '17', '10163063', 'Alfa Munira', 'Desa Cot Keutapang, Kec.Jeumpa, Bireuen', 'Mukhlis (Alm)', 'Sufiani', '85359270870', 'PNS'),
(391, '1', '17', '10173066', 'DENYS MAULIDIN', 'Bireuen Meunasah Capa', 'Subarni', 'Efi Safitri', '85277795711', 'Pedagang'),
(392, '1', '17', '10173067', 'EGBERT AURICK LIMANDU', 'Jl. Andalas No. 76, Desa Bandar Bireuen', 'Chen Kin', 'Suryani', '8116710418', 'Wiraswasta'),
(393, '1', '17', '10173072', 'Abdul Kadir Ilham', 'Jln. Angsa, Komp. Pajak, Dusun III Tampok Tengoh, Kec. Banda Sakti, Kota Lhokseumawe. Aceh', 'Akhiruddin', 'Suci Handayani', '85373655747', 'Wiraswasta'),
(394, '1', '17', '10193001', 'Bhara Wirasena Marantika', 'Jl. Komplek Perkantoran Kab. Aceh Barat Daya ', 'Awang Bayu Marantika, SH', 'Era Reni Estuti', '85360474444', 'Polri'),
(395, '1', '16', '10143001', 'Afkaar Hanif', 'Dusun Kommes Mns. Capa Kec. Kota Juang Kab. Bireuen', 'Salahuddin', 'Khairunnisa', '81360121600', 'Swasta'),
(396, '1', '16', '10143004', 'Akmal Syarif Faiza', 'Jl. Pendidikan Dusun Blang Raya Mns. Blang Kec. Kota Juang Kab. Bireuen', 'Mursalin', 'Andi Fajri', '85260079481', 'Guru'),
(397, '1', '16', '10143007', 'Alif Fiyanda Saputra', 'Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Amiruddin', 'Adnen Nurdin', '82362679006', 'PNS'),
(398, '1', '16', '10143011', 'Asyqar Nibras Muda', 'Juli Cot Merak Kec. Juli Kab. Bireuen', 'Murshal Ridha SE', 'dr. Lindawati', 'tidak ada data', 'tidak ada data'),
(399, '1', '16', '10143013', 'Cut Namira', 'Jl. Sukma Bangsa Dusun Tgk Di Cot Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Yusrisia Abdullah', 'Cut Fatimah', '81360496143', 'Pegawai BUMN'),
(400, '1', '16', '10143014', 'Divaul Kamila Ramadhani', 'Jl. Melur Pulo Ara Kec. Kota Juang Bireuen', 'Sofyan Ali', 'Linda Lisniati', '85310978031', 'Wiraswasta'),
(401, '1', '16', '10143015', 'Divia Ramadhani', 'Dusun Mutiara Mns. Dayah Bireuen Kec. Kota Juang Kab. Bireuen', 'Dodi Irwansyah', 'Novita Astuti', 'tidak ada data', 'Wiraswasta'),
(402, '1', '16', '10143017', 'Fathir Rizkyadi', 'Mns Dayah Kec. Kota Juang Kab. Bireuen', 'Mawardi', 'Dedek Suryana', '81374357711', 'PNS'),
(403, '1', '16', '10143018', 'Francesco Rau', 'Jl. Gayo No. 6 Kommes Kec. Kota Juang Kab. Bireuen', 'Mukhtar Nasri', 'Yenny', 'tidak ada data', 'Kontraktor'),
(404, '1', '16', '10143019', 'Husnil Mubarak', 'Dusun Garuda Mns. Pulo Peudada Bireuen', 'Mukhtar', 'Siti Aminah', '85358441517', 'PNS'),
(405, '1', '16', '10143020', 'Ivan Jarvis', 'Keude Matang Glumpang II Kec. Peusangan Kab. Bireuen', 'Trianto', 'Nining', '8126364767', 'Wirausaha'),
(406, '1', '16', '10143025', 'M. Iqram', 'Blang Dalam Kec. Jeumpa Kab. Bireuen', 'Efendi', 'Fajriah', 'tidak ada data', 'Wiraswasta'),
(407, '1', '16', '10143027', 'Mawla Alya Farras', 'Jln. Ismuha Lr. Petua Adam No. 7 Kota Juang Bireuen', 'Irwan Nabawi', 'Rouza M. Nasir', '85277473751', 'PNS'),
(408, '1', '16', '10143032', 'Muhammad Rafa Fahlevi', 'Dusun Seulanga No. 7 Mns Dayah Kab. Kota Juang Kab. Bireuen', 'Helmiadi M. Thaib', 'Azizah', 'tidak ada data', 'Wiraswasta'),
(409, '1', '16', '10143037', 'Raiqa Zahira', 'Meunasah dayah Kec. Kota Juang Kab. Bireuen', 'Saiful Bahri', 'Linda Yatna', '85277142550', 'Wiraswasta'),
(410, '1', '16', '10143038', 'Rifqa Daruva', 'Jl. Medan-B. Aceh Cot Tarom Tunong Kec. Jeumpa Kab. Bireuen', 'Mummadar', 'Faridah', 'tidak ada data', 'Wiraswasta'),
(411, '1', '16', '10143040', 'Risya Zafira Naqiba Ginting', 'Jl. Komisaris Moh. Isa No. 14 Mns Dayah Kec. Kota Juang Kab. Bireuen', 'dr Syafruddin Ginting', 'dr Rini Noviyanti', '85277461979', 'PNS'),
(412, '1', '16', '10143042', 'Sadiatun Nufus Jesri', 'Jl. Andalas No.26 Desa Bandar Bireuen Kec. Kota Juang Kab. Bireuen', 'Jefrie Hasni', 'Sri Herawati', 'tidak ada data', 'tidak ada data'),
(413, '1', '16', '10143044', 'Salman Al Haitami', 'Blang Cut Tunong Kec. Jeumpa Kab. Bireuen', 'Fajri', 'Rahimah', '85373808822', 'Wiraswasta'),
(414, '1', '16', '10143045', 'Shadiq Al-Fayed', 'Jln. Karang Rejo No. 31 Bandar Bireuen Kec. Kota Juang Kab. Bireuen ', 'Eriek Julana Alda', 'Elly Fitriani', '85260740303', 'tidak ada data'),
(415, '1', '16', '10143047', 'Sultan Arif', 'Mns. Dayah Kec. Kota Juang Kab. Bireuen', 'Saiful Amri', 'Evi Naimah', '85275808755', 'Swasta'),
(416, '1', '16', '10143050', 'Syifaul Aqila', 'Jln. Darul Istiqamah No. 4 Glg Gampong Kota Juang Bireuen', 'Darkasyi', 'Asriany Nur', '811670583', 'Wiraswasta'),
(417, '1', '16', '10143053', 'Zalfa Raisal', 'Jl. Tgk Dipulo No. 55 Gampong Baro Kec. Kota Juang Bireuen\r\r\n', 'Mursal', 'Era Safitri', '811670303', 'Wiraswasta'),
(418, '1', '16', '10143056', 'Ziyad Al Wafi', 'Mns Tgk. Digadong Kec. Kota Juang Kec. Bireuen', 'Azwar', 'muaddah', 'tidak ada data', 'PNS'),
(419, '1', '16', '10153028', 'Muhammad Rafiq Rajasa', 'Jl Sekolah Sukma, Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Fajar Rajasa, SE', 'Raudatul Jannah, SE', '81370164640', 'Pegawai BUMD'),
(420, '1', '16', '10173065', 'MALQAN GHAISAN AZMI', 'Jl Medan - B. Aceh No. 5, Mns Tunong, Kec. Peudada, Bireuen', 'Ulul Azmi', 'Khaliza', '82363024436', 'PNS'),
(421, '1', '16', '10183003', 'Syathir Mutawalli', 'Jl. Tgk Mustafa No.13A, Desa Mns Blang, Kec. Kota Juang, Kab. Bireuen', 'Ulil Amri', 'Fitriani', '81360191448', 'Pegawai BUMN'),
(422, '1', '16', '10183071', 'MARIO MALTA SIHOMBING', 'Desa Pulo, Peudada', 'MARO ATE MAROLOP', 'ERLITA', '82319159276', 'IRT'),
(423, '1', '15', '10153001', 'Ahmed Deedad Sadli', 'Jln Medan-banda Aceh, Matang Glumpang Dua , Kec., Peusangan, Kab. Bireuen', 'Sadli', 'Munadia', '85277848586', 'Wiraswasta'),
(424, '1', '15', '10153003', 'Ananda Luthfiyyah Rajasa', 'Jl. Sekolah Sukma, Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Fajar Rajasa, SE', 'Raudatul Jannah, SE', '81370164640', 'Pegawai BUMD'),
(425, '1', '15', '10153006', 'Azizi Pratama', 'Dusun II Cinta Makmur, Desa Cot Trieng kec. Kuala, Kab. Bireuen', 'Syam Wahyuni', 'Sri Suddin', '85297933629', 'Wiraswasta'),
(426, '1', '15', '10153008', 'Bivitri Laisya Al Katiry', 'Dusun Satu, Desa Beurawang Kec. Jeumpa, Kab. Bireuen', 'Sudarman', 'Fathiyah', '81269608644', 'Wiraswasta'),
(427, '1', '15', '10153009', 'Btari Aiesha Medina', 'Cot Iju  Kec. Peusangan Kab. Bireuen', 'H. Hamdan, S.Sos', 'Hj. Yanti Marlina, S.Pd', '85373610062', 'Wiraswasta'),
(428, '1', '15', '10153010', 'Carryn Christy', 'Jln Andalas No 50. Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Sufendy', 'Susi Kesuma', 'tidak ada data', 'Wiraswasta'),
(429, '1', '15', '10153011', 'Chelsia Liuren', 'Jl Andalas no 77 Bireuen, Kec. Bandar. Kab. Bireuen', 'halim', 'sandy', '85296025555', 'Wiraswasta'),
(430, '1', '15', '10153018', 'Ghafar Ghaffari', 'Cot Trieng, Kec. Kuala, Kab. Bireuen', 'Mirza Fuady', 'Ritahayati', '85372836666', 'Wiraswasta'),
(431, '1', '15', '10153022', 'Khansa Syifa', 'Cot Keumude , Kec. Peusangan, Kab. bireuen', 'iskandar, ST, MT', 'Mardhiah, S.ST', '85277612238', 'PNS'),
(432, '1', '15', '10153025', 'M. Sulthaan Khaafidh Al Mulki', 'Jl. Cut Mutia No 635 kec. Bandar, Bireuen', 'Eka Saputra', 'Lusiana', '82166660939', 'Wiraswasta'),
(433, '1', '15', '10153026', 'Muhammad Afdhal Khaira', 'Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Jamal', 'Serihartati, A.Md. Keb', '85262127857', 'Wiraswasta'),
(434, '1', '15', '10153032', 'Muksalmina', 'Mns. Blang Kec. Kota Juang, Kab. Bireuen', 'Mustafa. ZA', 'Dewi Fitriani', '82364476948', 'Wiraswasta'),
(435, '1', '15', '10153033', 'Mulkan  Sidqii', 'Jln Banda Aceh-Medan No 7 Desa Pulo Ara Geudong Teungoh, kec. Kota Juang, Kab. Bireuen', 'Bakhtiar', 'Hernawati', '81360373176', 'Jualan'),
(436, '1', '15', '10153040', 'Raihan Mubarak', 'Desa Paya lipah Matang Glp II Peusangan. Bireuen', 'Sayuti Adi Kesuma', 'Sri Suherna', '85277559969', 'Jualan'),
(437, '1', '15', '10153041', 'Cut Rania Zalfa Athira', 'Desa Cot Keutapang Bireuen, Kec. Jeumpa, Kab. Bireuen', 'Azhari, AR', 'Cut Adinda fuadilla Alhumaira', '82276740333', 'Wiraswasta'),
(438, '1', '15', '10153043', 'Rifqy Abrar', 'Juli Km 5 , desa Juli Tgk di Lampoh , Kec. Juli, Kab. Bireuen', 'Nurdin, S.Sos', 'Dahliana, S.Pd', '85277197583', 'PNS'),
(439, '1', '15', '10153044', 'Salsabila Askafia', 'Desa Menasah Alue, Kec. Peudada, Kab. Bireuen', 'Astakari A. Gani', 'Fitri YAni, S.Pd', '85260962393', 'Tehnisi'),
(440, '1', '15', '10153047', 'Syarifah Nayla Ramadhani', 'Desa bireuen Mns Capa, Kec. Kota Juang, Kab. Bireuen', 'Said Abdurrahman, S.Sos', 'Nurhayati', '8126948717', 'PNS'),
(441, '1', '15', '10153048', 'Syifa Andria', 'Dusun Balee Labang, desa Blang Cot Tunong, kec. Jeumpa, Kab. Bireuen', 'Syukri', 'Marlina', '85260097801', 'Wiraswasta'),
(442, '1', '15', '10153052', 'Tazkyatul Khaira', 'Dusun Damai, Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen', 'Abdinur', 'Kasmira', '85277616732', 'Wiraswasta'),
(443, '1', '15', '10153053', 'Wafiq Albariki', 'Dusun utara, Cot gapu Kota Juang. Bireuen', 'H. Sulaimanur, S.Ag', 'Murniati, Amk', '81360050509', 'PNS'),
(444, '1', '15', '10153054', 'Yusuf', 'Lipah Cut, kec.Jeumpa. Kab. bireuen', 'Bachtiar', 'Erlita', '85372450271', 'Pegawai Swasta'),
(445, '1', '15', '10153055', 'Zahratussyita Muhammad', 'Klinik Mata Gading, Jl. Medan-Banda Aceh Km. 218  Cot Gapu, Kec. Kota Juang, Bireuen.', 'dr. Muhammad, Sp. M', 'Sari Fitri', '82166446644', 'Dokter Spesialis Mata'),
(446, '1', '15', '10153056', 'Teuku Zayed Ahmadinejad', 'Desa Cot Keutapang, Bireuen', 'Azhari. Ar', 'Cut Adinda Fuadilla Alhumaira', 'tidak ada data', 'Wiraswasta'),
(447, '1', '15', '10173062', 'AMIRA NUR KARIMA', 'Desa Mns Tgk Digadong, Kec. Kota Juang, Bireuen', 'Armiya', 'Nurul Fajri', '85206227700', 'PNS'),
(448, '1', '15', '10173064', 'SAYED ZAIZIL MAHFUDH', 'Matang Glumpang Dua', 'Said Mahdi', 'Syarifah Radhiah', 'tidak ada data', 'tidak ada data'),
(449, '1', '15', '10173074', 'Radhwa Khairan', 'Jl. Gajah No. 87, Desa Pulo Ara Geudong Teungoh, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Mohammad Isnaeni Wilaga Somantri, ST', 'Dr. Irike Ayumi', '81389745676', 'Wiraswasta'),
(450, '1', '15', '10183065', 'Nayla Aura Karimadinata', 'Aspol, Polres Bireuen, Cot Buket Kec. Peusangan  Kab. Bireuen', 'Joko Kusumadinata', 'Dela Puspita Arini', '85310382006', 'Polri'),
(451, '1', '15', '10183076', 'AURA HUMAIRA PUTRI GUNAWAN', 'Polres Bireuen Desa Cot Buket', 'Gugun Hardi Gunawan', 'Nunung Widiyawati Dotulong', '81245405868', 'Polri'),
(452, '1', '15', '10193002', 'Anjani Sekar Wangi Marantika', 'Jl. Komplek Perkantoran Kab. Aceh Barat Daya', 'Awang Bayu Marantika, SH', 'Era Reni Estuti', '81377403767', 'Polri'),
(453, '1', '14', '10153002', 'Alya Mukhbita', 'Jl Veteran No. I A desa Cot gapu, Kec. Kota Juang, Kab. Bireuen', 'dr. Khairul Fuadi', 'Drg. Putrihayati', '8126486346', 'PNS (Dokter)'),
(454, '1', '14', '10153004', 'Aufa Syahreza Fakhri', 'Jl Tgk. Umar, Desa Matang Sagoe, Kec. Peusangan, kab. Bireuen', 'dr. Heriadi Fakhri, Sppd', 'Nuriah, S.Pd', '8116710477', 'PNS (Dokter)'),
(455, '1', '14', '10153005', 'Aurelia Ramadhini', 'Dusun Teungoh . Geulangang Teungoh, Kota Juang . Bireuen', 'Sudirman, S.T', 'Renni Pramita, S.Si', '85260000524', 'Wiraswasta'),
(456, '1', '14', '10153007', 'Basith Rafiq Fauzal', 'Jalan meurak V No 5 Dusun Selatan Juli cot meurak timue', 'tufrizal syafari', 'fauziah', '81360904451', 'PNS'),
(457, '1', '14', '10153012', 'Davin Koemardi', 'Jl Mawar No. 36 Desa Bandar, Kec. Kota Juang, Kab. Bireuen', 'Boerhan Koemardi', 'Susanni', '81373087999', 'Wiraswasta'),
(458, '1', '14', '10153014', 'Fairuz Maulana Putra Haz', 'Desa Blang Dalam, Kec. Jeumpa, Kab Bireuen', 'Hamdani, M', 'Azwarni', '85277811340', 'PNS'),
(459, '1', '14', '10153015', 'Fatin Muhsina', 'BTN Kupula Indah Blok E/40, Desa Geulanggang Gampong, Kec. Kota Juang, Kab. Bireuen', 'Arief Hidayat', 'Yetti Yunus', '81360500764', 'PNS'),
(460, '1', '14', '10153016', 'Faza Dina Hawari', 'Dusun Tgk Affan, Desa Matang Glp Dua, Kec. Peusangan, Kab. Bireuen', 'Ir. Ansor Hawari', 'dr. cut Masdalena, M.ked Coph, Spm', '85260491973', 'Wiraswasta'),
(461, '1', '14', '10153017', 'Fita Munayya', 'Jl Medan-Banda Aceh, lrg Keuchik Doyat. No. 4 Bireuen. Mns Blang', 'Wahyudi', 'fauza, SE', '811677489', 'PNS'),
(462, '1', '14', '10153019', 'Haikal Hafiz', 'Jl teungoh dusun Aman, desa Pulo Kiton kec. kota juang, kab. Bireuen', 'yusrizal', 'sri malinda, SE', '85260509970', 'Polri'),
(463, '1', '14', '10153021', 'Khansa Suci Alaina', 'Ds. Mns dayah Kec. Kota juag kab. bireuen', 'Afrianto', 'Feni Mardiansyah', '81360266686', 'Polri'),
(464, '1', '14', '10153024', 'Liyana Iklil', 'Dusun Seulanga, Desa Mns. dayah, Kec. Kota Juang, Kab. Bireuen', 'Safriadi, ST, Msi', 'Herawati, S.Pd', '85210734488', 'PNS'),
(465, '1', '14', '10153031', 'Muhammad Tajul Ulya', 'Desa Cot Rabo Tunong, Kec. Peusangan Kab. Bireuen', 'Afriadi, S.Sos', 'Epa Fitria, S.Pd', '85260042881', 'Polri'),
(466, '1', '14', '10153035', 'Nadya Ukhtiana', 'Desa Cot Keutapang, kec. Jeumpa , Kab. Bireuen', 'Ismail', 'Pertiwi', '85277254465', 'Karyawan BUMN'),
(467, '1', '14', '10153036', 'Nailul Fitri', 'Jl Kuala Raja No. 44 Desa Pulo Kiton , Kec. Kota Juang, Kab. Bireuen', 'Saiful Amri', 'Eliana, S.Pd.I', '85260152142', 'Pegawai Swasta'),
(468, '1', '14', '10153037', 'Najwa Hawa Disa', 'Jln Cut Hasan No.4 Kommes, Desa Mns. Capa, kec. Kotqa Juang, Kab. Bireuen', 'Sardin, S.Pd', 'Azkannisa', '81360898923', 'Guru'),
(469, '1', '14', '10153038', 'Nasywa Caesar', 'Asmil Kompi Bant, Desa Bandar Baru, kec. Kota Juang, Kab. Bireuen', 'Badaruddin', 'Erlinawati', '85260187424', 'TNI-AD'),
(470, '1', '14', '10153042', 'Ridho Murti', 'Geudong-Geudong, Kec. Kota Juang, Kab. Bireuen', 'Ismail', 'Sakdiah', '85277911600', 'TNI-AD'),
(471, '1', '14', '10153045', 'Shahibil Al- Rafif', 'Dusun Lam Rusa, Desa Paseh, Kec. Juli, Kab. Bireuen', 'Muhammad Haris', 'Hanisah', '81314103020', 'Wiraswasta'),
(472, '1', '14', '10153049', 'T. Faiz Akbar', 'Jln. medan-Banda Aceh, desa Glp Payong Kec, Jeumpa Kab. bireuen', 'T. Romel Eriansyah', 'Dara Nuzulla, A.Md', '85360545506', 'PNS'),
(473, '1', '14', '10153057', 'Zulfa Adira Qinaya', 'Mns Tgk Digadong, Desa Telaga Manis Tgk Digadong, Kec. Kota Juang. Kab. Bireuen', 'Agus Kusmawan', 'Eno Meli Nurhayati', '85353713938', 'Wiraswasta'),
(474, '1', '14', '10153061', 'Gerrard Christian Kartolo', 'Jalan Andalas  No.90  Kec. Kota Juang  Kab. Bireuen', 'Fuardy Kartolo', 'Wilim', '81973714446', 'Wiraswasta'),
(475, '1', '14', '10163058', 'Mayumi Balillah al Hadroh', 'Jln. Ramai Kec. Kota Juang, Bireuen', 'Retmawandi', 'Yusneti', '85270207520', 'Wiraswasta'),
(476, '1', '14', '10163061', 'Wildan Fayyadh', 'Juli Cot Mesjid Km.2 Bireuen', 'dr. Muhammad Adi', 'dr. Rachmi, Spog', '8116709384', 'PNS'),
(477, '1', '14', '10163065', 'Miranda Ulva', 'Geulanggang Gampong  Kec. Kota Juang  Kab. Bireuen', 'Dr. Saifullah, M.Pd', 'Fauzah, SKM', '8116702245', 'tidak ada data'),
(478, '1', '14', '10173063', 'MUHAMMAD DAFFA AL - HAZIQ', 'Cot Gapu, kec. Kota Juang, Bireuen', 'Dedi Purnama', 'Rahmawati', '81362300106', 'PNS'),
(479, '1', '14', '10183001', 'Ririn Dhea Arini', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Adni Saidi', 'Husniati', '82304051624', 'Wiraswasta'),
(480, '1', '14', '10183070', 'ALFA ZAYYAN GHIFARI', 'Dusun Panjoe Gp. Geulumpang Payong Kec.Jeumpa Kab.Bireuen', 'M. AKHYAR', 'RAHMI MEUTIA', '82273129699', 'PNS'),
(481, '1', '14', '10183074', 'M. ASYRAF SYAHRIZAL', 'Gampong Baro Jl. Habib Puteh No 12C Bireuen\r\r\n', 'Dr. Syahrizal, Sp. THT - KL', 'Isnaq Mutia, Amd', '811647326', 'PNS'),
(482, '1', '13', '10163003', 'ALFIA FARADISA', 'Tingkem Manyang, Kec. Kuta blang, Kab. Bireuen', 'Ikandar Muda, A.Md', 'Zahara, S.Pd.i', '82364545006', 'Wiraswasta'),
(483, '1', '13', '10163004', 'ALYA DIAN SHATARA', 'Kuala Jeumpa  Kec. Jeumpa  kab. Bireuen', 'Silvano Qortamia', 'Agusliana', '81370844767', 'Wiraswasta'),
(484, '1', '13', '10163005', 'AMIRA NAILA SYAKIRA', 'Mns. Releut  Kec. Kota Juang  Kab. Bireuen', 'Muliadi', 'Sukmawati', '82277589847', 'PNS'),
(485, '1', '13', '10163007', 'AURA LATISYA AQUINA', 'Desa Pulo Ara  Kec, Kota Juang  kab. Bireuen', 'M. Hidyat', 'Cut Qhatron Nada', '85260722727', 'Karyawan swasta'),
(486, '1', '13', '10163008', 'CUT HAURA KHALISHAH', 'Geulumpang Payung  Kec. Jeumpa  Kab. Bireuen', 'Teuku Johan', 'Herwindayani', '85260120019', 'Polri'),
(487, '1', '13', '10163009', 'CUT IMA SHABIRA FARHANI', 'Pulo ara geudong teungoh  Kec. Kota Juang  Kab. Bireuen', 'Farizal', 'Sy. Dahri Hanum', '85260870407', 'PNS'),
(488, '1', '13', '10163010', 'ERIC JARVIS', 'Jl. Tgk Abdul Rahmat, Matang GLP dua, Kec. Peusangan  Kab. Bireuen', 'Trianto', 'Nining', '8126364767', 'Wiraswasta'),
(489, '1', '13', '10163011', 'FAIRUZ KHALISAH', 'Mns. Blang  Kec. Kota Juang  Kab. Bireuen', 'Mukhtar', 'Murniana. S.P', '81269288435', 'Wiraswasta'),
(490, '1', '13', '10163013', 'FITRIYATI', 'Kuala Jeumpa  Kec. Jeumpa  kab. Bireuen', 'Maksal Mina', 'Dahlia', '85277621957', 'PNS'),
(491, '1', '13', '10163016', 'HABIBURRISYAD', 'Desa Beurawang  Kec. Jeumpa  kab. Bireuen', 'Muchlisin', 'Khairul Husna', '85277428558', 'PNS'),
(492, '1', '13', '10163017', 'HAFIZ RIFIANSYAH', 'Desa Abeuk Usong  Kec. Jeumpa  kab. Bireuen', 'Asep Novie Herdiana', 'Evie Dahlianti, A.Md Keb', '85260252741', 'TNI-AD'),
(493, '1', '13', '10163019', 'HIZRI USWA', 'Geulanggang Gampong, Kec. Kota Juang  Kab. Bireuen', 'Feri Irawan, S.Si. M.Pd', 'Yusrawati, S.Pd', '85373650664', 'Guru'),
(494, '1', '13', '10163021', 'Intan Sharah Jazilla', 'Mns. Abeuk Tingkeum  Kec. Jeumpa  kab. Bireuen', 'Muhammad Zaki', 'Hermawati, BSc', '81266154940', 'Wiraswasta'),
(495, '1', '13', '10163023', 'Kayla Anisa Faiha', 'Pulo ara  Kec. Kota Juang  kab. Bireuen', 'Budi Syafrizal', 'Indriani', '811676605', 'Peg. BUMN'),
(496, '1', '13', '10163026', 'Khansa Lathifa', 'Dusun Komes . Meunasah capa  Kec. Kota Juang  Kab. Bireuen', 'M. Nasir Sp. S.Pdi', 'Neli Fauziana. S.E', '85277177107', 'Wiraswasta'),
(497, '1', '13', '10163028', 'Loetito Nanggroe', 'matang sagoe, Kec. Peusangan  Kab. Bireuen', 'Alvi Doni', 'Kurniati', '82362050590', 'Wiraswasta'),
(498, '1', '13', '10163031', 'M. Nazhif Alghazi', 'Meunasah Blang  Kec. Kota Juang  Kab. Bireuen', 'Fahrul Razi', 'Yulia Putri', '85207112881', 'Wiraswasta'),
(499, '1', '13', '10163032', 'M. Rachel AL Habsy', 'Dusun blang raya desa mns blang  Kec. Kota Juang  Kab. Bireuen', 'Eddi Yuswadi', 'Suci Diana', '8116700607', 'Wiraswasta'),
(500, '1', '13', '10163037', 'Muhammad Syauki Al-Ghifari', 'Geudong-Geudong  Kec. Kota Juang  Kab. Bireuen', 'M. Zaman, SH', 'Fitriah, S.Pd', '82169101222', 'Wiraswasta'),
(501, '1', '13', '10163039', 'Muhammad Wildan Hafiz', 'Jl Tgk Di Cot Jrat  Komp, Pusara Indah NO. 10 Reuelut. Bireuen', 'Rakhmayadi, ST', 'Muslimah, A.Md', '81361326033', 'Karyawan swasta'),
(502, '1', '13', '10163040', 'Muhammad  zahriyal', 'Mns. Reuleut   Kec. Kota Juang  Kab. Bireuen', 'Rusdi', 'Sulfitri, S. Kep', '81370827220', 'PNS'),
(503, '1', '13', '10163047', 'Safra Ulya Hasya', 'Cot Tarom Baroh  Kec. Jeumpa  Kab. Bireuen', 'Saifuddin', 'Hidayati', '85373970109', 'PNS'),
(504, '1', '13', '10163049', 'Saskya Dwi Anggreini', 'Blang-Blahdeh,  Kec. Jeumpa  Kab. Bireuen', 'Syawaluddin', 'Devi Fitriani', '81370705366', 'TNI-AD'),
(505, '1', '13', '10163050', 'Syafiq Shandiatha Fawwaz', 'meunasah Tgk Gadong,  Kec. Kota Juang  Kab. Bireuen', 'Novi Keny Yandi, ST', 'Santi Windiya Puspitasari, Amk', '85217091170', 'Wiraswasta'),
(506, '1', '13', '10163053', 'Teuku Ahmad Nasywan', 'Desa Geulanggang Gampong  Kec. Kota Juang  Kab. Bireuen', 'Fakrurrazi', 'Karlina Dewi', '85260099146', 'PNS'),
(507, '1', '13', '10163054', 'Tiara Larisa Putri', 'Mns. Dayah   Kec. Kota Juang  Kab. Bireuen', 'Julfikar, SP', 'Putri Indri Sari', '85260643530', 'PNS'),
(508, '1', '13', '10163056', 'Zahira Zawiya Putri Zalia', 'Jl andalas. No 11 Bandar Bireuen  Kec. Kota Juang  kab. Bireuen', 'Safrizal Rusli', 'Dahlia', '8126960517', 'Wiraswasta'),
(509, '1', '13', '10173058', 'AHMAD BALYA BAYHAQI', 'Jl. Medan - Banda Aceh, Lr. MDI Puteri No. 4, Desa Geulanggang Teungoh, Kec. Kota Juang, Bireuen', 'Shafwandi', 'Fanny Indriany Polontalo', '81290658445', 'Karyawan swasta'),
(510, '1', '13', '10173060', 'MUHAMMAD KHALIL', 'Dusun teladan, Desa Cot Keutapang, Kec. Jeumpa, Bireuen', 'Munandar', 'Hafni Zahara', '81263699982', 'PNS'),
(511, '1', '13', '10183072', 'ARSYA ZHILLA', 'Jl. T. Chik Ditiro Lr. T. Malem No. 10 Kommes', 'YUSLI ANNUR, ST', 'GITA ANDEVA, A. Md', '8116706771', 'Konsultan Arsitek'),
(512, '1', '12', '10163001', 'Aira Sabilla', 'Desa Cot Keutapang   Kec. jeumpa  Kab. Bireuen', 'Khairuddin Hasan', 'Nurjannah', '85260167574', 'Perawat'),
(513, '1', '12', '10163002', 'Akhdan Ziyad', 'Meunasah Reuleut , Kec. Kota Juang  Kab. Bireuen', 'Muyasir', 'Dini Fijryati', '81360406091', 'PNS'),
(514, '1', '12', '10163006', 'Arifa Fitra', 'Cot Keutapang,  Kec. jeumpa  Kab. Bireuen', 'Unzir Daud, A.Mk', 'Nurhayati', '82370565511', 'PNS'),
(515, '1', '12', '10163014', 'Gheena Ameera', 'Gampong Bireuen Meunasah Reuleut  Kec. Kota Juang  Kab. Bireuen', 'Abdul Hamid, STP. MM', 'Nurfazillah, A.Md Kep', '85262807464', 'PNS'),
(516, '1', '12', '10163015', 'Habib Aula', 'Ds. Blang Blahdeh Asmil Kodim 0111/BRN  Kec. Jeumpa Kab. Bireuen', 'Ginanjar Saputro', 'Wirma Pelita', '82368930007', 'TNI AD'),
(517, '1', '12', '10163020', 'Humaira Aditya', 'Kp. Cot Trieng.  Kec. Jeumpa  Kab. Bireuen', 'Surwandi', 'Mugi Rahayu', '85262742989', 'Wiraswasta'),
(518, '1', '12', '10163022', 'Izza kamila', 'Aspol Karang Rejo, Desa Bandar Bireuen Kec. Kota Juang  kab. Bireuen', 'Bukhari', 'Tuti Liana, S.E.', '82272345333', 'Polri'),
(519, '1', '12', '10163024', 'Kayyisah Lathifah Ginting', 'Meunasah Dayah Kec. Kota Juang.  Kab. Bireuen', 'dr. Syafruddin Ginting', 'dr. Rini Noviyanti', '85277461979', 'PNS'),
(520, '1', '12', '10163025', 'Khansa Aurelia', 'Mns Capa  Kec. Kota Juang  Kab. Bireuen', 'Ir. Jafar', 'Eliana', '82272703549', 'PNS'),
(521, '1', '12', '10163027', 'Leonardo Tandia', 'Jalan Ramai No.27 Bandar Bireuen  Kec. Kota Juang  Kab. Bireuen', 'Suwanto', 'Linawati', '85296889667', 'Wiraswasta'),
(522, '1', '12', '10163029', 'M. Akyas Al Muharriri', 'Meunasah Blang, Dusun Blang raya, Kec. Kota Juang  kab. Bireuen', 'Ilyas', 'Susilawati', '85207077356', 'Pedagang'),
(523, '1', '12', '10163030', 'M. Fatihul Ihsan', 'Asrama Polisi Polsek Peudada. Desa Meunasah baro. Kec. Peudada  kab. Bireuen', 'Hadriman, S.Sos', 'Afrida, A.Md', '85372909718', 'Polri'),
(524, '1', '12', '10163033', 'Mudawali Almaliki', 'Geulanggang Baroe, Kec. Kota Juang,  Kab. Bireuen', 'Jaswadi H Wahab', 'Muna Sarah Tursina', '85260809970', 'Wiraswasta'),
(525, '1', '12', '10163034', 'Muhammad Nawwaf Ayyasi', 'Meunasah Dayah, kec. Kota Juang  Kab. Bireuen', 'Muhammad Nawawi, S. HI, MH.', 'Raika Wahdini, S. HI', '81269611611', 'PNS'),
(526, '1', '12', '10163035', 'Muhammad Rizki Asfia', 'Meunasah timu, Matang Glp Dua  Kec. Peusangan  Kab. Bireuen', 'Asril Har Skm', 'dr. Cut Lifia Fitriani', '85261022236', 'Wiraswasta'),
(527, '1', '12', '10163036', 'Muhammad Rizky Alvatta', 'Mns Dayah  Kec. Kota Juang  Kab. Bireuen', 'Junaidi', 'Musdalaila', '82363684900', 'Pedagang'),
(528, '1', '12', '10163038', 'Muhammad Taufiq', 'Desa Blangkeutum  Kec. Juli  Kab. Bireuen', 'Eka Satria', 'Mona Sari', '8,53E+12', 'Polri'),
(529, '1', '12', '10163041', 'Muhammad Zhafran Azra', 'Jl. Jangka No. 60 Matang Glp Dua, Meunasah Timue, Kec. Peusangan  Kab. Bireuen', 'Andry Zulkarnaen', 'Farah Meutia', '85260050013', 'PNS'),
(530, '1', '12', '10163042', 'Naylatul Salwa', 'Asama Kodim  Blang Blahdeh  Kec. Jeumpa  kab. Bireuen', 'Purwanto', 'Muliana', '85360722678', 'TNI-AD'),
(531, '1', '12', '10163043', 'Naysyila Syahirah', 'Juli Tambo Tanjong  Kec. Juli  Kab. Bireuen', 'Mirza, S. Kom', 'Anisah, S.Pd', '85277405151', 'PNS'),
(532, '1', '12', '10163044', 'Qafka Shafiqa Mulya', 'Geulanggang Teungoh,  Kec. Kota Juang  Kab. Bireuen', 'Mulyadi, ST. MT', 'Susilawati, A.Md', '8126955225', 'PNS'),
(533, '1', '12', '10163045', 'Rafa Anggara', 'Blang Cot Baroh  Kec. Jeumpa  Kab. Bireuen', 'M. Syah Ibrahim', 'Murniyati', '85262664433', 'Karsyawan RSUD dr. Fauziah Bireuen'),
(534, '1', '12', '10163046', 'Resya Zaidan Fayyadh', 'Desa Gampong Baroe,  Kec. Kota Juang  Kab. Bireuen', 'Safrizal', 'Sari Dewi', '81269020448', 'Wiraswasta'),
(535, '1', '12', '10163048', 'Saif Azizi Srinanda', 'Krueng Juli Timu  Kec. Kuala  Kab. Bireuen', 'Srikumar', 'Afrina', '85260321574', 'PNS'),
(536, '1', '12', '10163051', 'Syakira Hasna', 'Desa Cot Kutapanag, Kec. Jeumpa  Kab. Bireuen', 'Tgk. H.M Yusuf', 'Muna Zulva', '82368750005', 'Wiraswasta'),
(537, '1', '12', '10163052', 'Syifa Humairah', 'Geulempang Payong  Kec. Jeumpa  Kab. Bireuen', 'Surya Bakti', 'Julia Rahmi', '85260851411', 'PNS'),
(538, '1', '12', '10163055', 'Yusuf Muharram', 'Jl. T.A Rasyid No.5  Kommes  Kec. Kota Juang  Kab. Bireuen', 'Ir. Yanfitri MT', 'Ratna dewi', '81314382007', 'tidak ada data'),
(539, '1', '12', '10173059', 'BRYANT CLERESTA UTAMA', 'Jl. Medan B. Aceh, Dsn. Cureh Barat, Kec. Kota Juang, Bireuen', 'Hendrik Utama', 'Sanni', '85262341333', 'Mekanik'),
(540, '1', '12', '10173061', 'ZAYYAN AYYASY KELANA', 'Jl. Banda Aceh - Medan (Samping kantor BPS Bireuen)\r\r\nDesa Cot Keutapang, Kec. Kota Juang, Bireuen', 'Abdul Razak Kelana Ibrahim', 'Yenni Rachmi', '85338360292', 'Dokter'),
(541, '1', '12', '10183068', 'Fathi Yakan Alkafi', 'Geulanggang Kulam Kec.Kota Juang, Kab.Bireuen', 'Kamaruddin, S.Pd. M.M', 'Hildani, A. Md', '81260850605', 'PNS'),
(542, '1', '12', '10183075', 'MUHAMMAD RAYYAN', 'Desa Cot Trieng Kec.Kuala Kab.Bireuen', 'Maswadi', 'Zakiah', '81360300171', 'PNS'),
(543, '1', '11', '10173002', 'ARFAN HASHIF', 'Dusun Pante Bahagia, Desa Lhok awe Teungoh, Kec. Kota Juang, Bireuen', 'Mukhtar', 'Ismawati', '81322612738', 'Wiraswasta'),
(544, '1', '11', '10173004', 'AQNATUNNISWAH', 'Dusun Ule Gle, Desa Beunyot, Kec. Juli, Bireuen', 'Faisal', 'Syafridah', '85260342114', 'Guru'),
(545, '1', '11', '10173007', 'AURA SYAKILA', 'Dsn Karang Rejo, Desa Bandar Bireuen Kec. Kota Juang, Bireuen', 'Ramadhani', 'Yuyanti', '85362212450', 'POLRI'),
(546, '1', '11', '10173008', 'AQIL AZIZI', 'Desa Blang Cot Baroh, Kec. Jeumpa, Bireuen', 'Junaidi M Nur', 'Rosnita', '85372747430', 'Tukang kayu'),
(547, '1', '11', '10173012', 'FARISYA KAMILA', 'Desa Blang Cot Tunong, Kec. Jeumpa, Bireuen', 'Junaidi', 'Nurmasyitah', '85206908908', 'Wiraswasta'),
(548, '1', '11', '10173013', 'FIRANNAZWAN WAHAB', 'Desa Mns. Capa, Kec. Kota Juang, Bireuen', 'Abdul Wahab Daulay', 'Sri Herlina Wati', '81973900666', 'Wiraswasta'),
(549, '1', '11', '10173014', 'FATHUR RAHMAN', 'Dusun Blang Raya, Desa Mns. Blang, Kec. Kota Juang, Bireuen', 'Affandi', 'Husna', '85260609420', 'PNS'),
(550, '1', '11', '10173016', 'FIRYAL NABILA', 'Desa Blang Cot Tunong, Kec. Jeumpa, Bireuen', 'Fajri', 'Rahimah', '85373808822', 'Wiraswasta'),
(551, '1', '11', '10173017', 'GWYNETHA MEYVANIA LISA', 'Jl. Andalas No. 59, Desa Bandar Bireuen, Kec. Kota Juang, Bireuen', 'Mulyadi Lisa', 'Ema Wahyuni', 'tidak ada data', 'Wiraswasta'),
(552, '1', '11', '10173018', 'HAZIQ AKRAM', 'Jl. Sukma, Desa Cot Keutapang, Kec. Jeumpa, Bireuen', 'Balya', 'Fitriani', '85201064581', 'Wiraswasta'),
(553, '1', '11', '10173022', 'KAHFI WAHYU PRATAMA', 'Asmil Kibant Yonif 113/JS Bireuen, Desa Bandar Bireuen, kec. Kota Juang, Bireuen', 'Edi Suratman', 'Nuranisa', '82231782037', 'TNI-AD'),
(554, '1', '11', '10173024', 'KEVIN PRATAMA', 'Lr. Pribadi Dusun Capa Utara, Desa Mns. Capa, Kec. Kota Juang, Bireuen', 'Fahrizal', 'Laura Feniza', '85260777383', 'POLRI'),
(555, '1', '11', '10173027', 'MUHAMMAD ZAIDAN AZRA', 'Jl. Gayo Km. 1, Desa Mns. Capa, Kec. Kota Juang, Bireuen', 'Andry Zulkarnaen', 'Farah Meutia', '85260050013', 'PNS'),
(556, '1', '11', '10173028', 'M KHALILUL MUSYFIQ', 'Komper Villa Jeumpa Beutari, Desa Geulanggang Baro, Kec. Kota Juang, Bireuen', 'M Syauqi', 'Rukayah Ayu', '81360087530', 'Hakim'),
(557, '1', '11', '10173032', 'T. MUHAMMAD JIBRIL', 'Bireuen Mns Reuleut', 'Yusaini', 'Nurhayati', 'tidak ada data', 'PNS'),
(558, '1', '11', '10173033', 'MUHAMMAD FUDAIL', 'JL. Habib Puteh, No. 27, Gampong Baro, Kec. Kota Juang, Bireuen', 'Muhajir', 'Elfia Sari', '82216059668', 'Karyawan swasta'),
(559, '1', '11', '10173034', 'MUHAMMAD HARIS AUFA', 'Lr. Tgk Azhari, Cot Trieng, Bireuen', 'Muhammad Dastur', 'Mardhiati', '85260085799', 'Guru'),
(560, '1', '11', '10173035', 'MUHAMMAD AL GHIFARI', 'Desa Cot Tarom Tunong, Kec. Jeumpa, Bireuen', 'Basri', 'Tety Sapoera', '82361054576', 'Wiraswasta'),
(561, '1', '11', '10173036', 'MUHAMMAD FAIDZUL IZZI', 'Jl. B.Aceh-Medan, Desa Mns Blang, Kec. Kota Juang, Bireuen', 'Suryahadi', 'Ruwaeda', '81360350005', 'Pegawai BRI'),
(562, '1', '11', '10173040', 'NAJWA NABILA', 'Desa Pulo Ara, Kec. Peudada, Bireuen', 'Basri', 'Darmiati', '82361816488', 'Wiraswasta'),
(563, '1', '11', '10173043', 'RAVI QUNNAS', 'Geudong-geudong, Bireuen', 'Erwin', 'Wirdalena', '82364684773', 'Wiraswasta'),
(564, '1', '11', '10173046', 'RAIHAN ULFA', 'Dsn Teladan, Desa Cot Keutapang', 'Rahmadsyah', 'Iftriati', '8126918677', 'POLRI'),
(565, '1', '11', '10173048', 'SAIF AL AZIZI', 'Jl. Gayo Km 3.5, Dusun Teungoh, JUli Keude Dua, bireuen', 'Safwan', 'Rakhmil Izzati', '85275016351', 'Wiraswasta'),
(566, '1', '11', '10173049', 'SAID NADHIF RIZA', 'Jl. Tgk Muda Lasin No. 7, Desa Mns. Blang, Kec. Kota Juang, Bireuen', 'Said Qadri', 'Noviza', '85373155888', 'PNS'),
(567, '1', '11', '10173050', 'SHAVIQ RIZKY ADITYA', 'Asrama Kodim 0111 Blang Bladeh, Bireuen', 'Syawaluddin', 'Devi Fitriani', '81370705366', 'TNI-AD'),
(568, '1', '11', '10173051', 'SULTHAN PARISYA AL-KATIRY', 'Dusun Satu, Desa Beurawang, Kec. Jeumpa, Bireuen', 'Sudarman', 'Fathiyah', '81269608644', 'Karyawan swasta'),
(569, '1', '11', '10173056', 'YASMIN ATHAMIMI', 'Jl. Laksamana Malahayati No.1, Desa Pulo Kiton, Kec. Kota Juang, Bireuen', 'Bahrumsyah', 'Ernawati', '85275303337', 'Wiraswasta'),
(570, '1', '11', '10183067', 'AURA SALSABILA', 'BTN Keupula Indah, Geulanggang Gampong, Kec.Kota Juang Kab.Bireuen', 'Koharudin', 'Sri Maydelsa Yusuf, S.Pd', '85277225585', 'Wiraswasta'),
(571, '1', '10', '10173003', 'AQEELA NAWAL FATHINA', 'Jl. Tgk Muda Lasen, Desa Mns. Blang, kec. Kota Juang, Bireuen', 'Mursal Ridha', 'Lindawati', '85260040405', 'PNS'),
(572, '1', '10', '10173005', 'AZKA AL FATA', 'Jl. Tgk Imum Syik Mudalasin No. 11, Desa Mns. Blang, Kec. Kota Juang, Bireuen', 'Safriyady', 'Eka Junizar', '85260762888', 'Karyawan BUMN'),
(573, '1', '10', '10173006', 'ATAYA EL RAFIF', 'Jl. Tgk Raja Blang, Dsn Babut Taqwa, Mns Tgk Digadong, Kec. Kota Juang, Bireuen', 'Azwar', 'Muaddah', '85260050553', 'PNS'),
(574, '1', '10', '10173009', 'CARRICK CLASSICO', 'Keude Matang Glp. Dua, Kec. Peusangan, Bireuen', 'Feri', 'Lilis', '81376531838', 'Wirausaha'),
(575, '1', '10', '10173010', 'DINAYRA PUTRI', 'Desa Mns. Dayah, Kec. Kota Juang, Bireuen', 'Dodi Irwansyah', 'Novita Astuti', '85277274790', 'Wiraswasta'),
(576, '1', '10', '10173011', 'DINASTI ARADHANA NASUTION', 'Dusun Sejahtera, Gampong baro, kec. Kota Juang, Bireuen', 'Irpan NST', 'Fatmawati', '85260034709', 'TNI'),
(577, '1', '10', '10173015', 'FATIH MURADI RUZIQ', 'Desa Cot Tarom Tunong, Kec. Jeumpa, Bireuen', 'Iqbal Hasri', 'Suniati', '85277246904', 'Polisi'),
(578, '1', '10', '10173020', 'KAISAL KIRAM', 'Desa Mns. Capa, Kec. Kota Juang. Bireuen', 'Nasruddin', 'Eva Erlia', '85277558280', 'Wiraswasta'),
(579, '1', '10', '10173023', 'KHANSA LUTHFYA INDAH', 'Jl. Kol Mohd Ali Basyah No. 05, Karang Rejo, Desa Bandar Bireuen, Kec. Kota Juang, Bireuen', 'Yusbiran', 'Mulyati', '85260323201', 'PNS'),
(580, '1', '10', '10173025', 'MUHAMMAD LUTHFI', 'Desa Cot Keutapang, Kec. Jeumpa, Bireuen', 'Muhammad Taufiq', 'Dewi Maya Sari', '85277125260', 'Dokter'),
(581, '1', '10', '10173026', 'MUHAMMAD HANIF', 'Desa Meunasah Tambo, Kec. Peudada, Bireuen', 'Muslim', 'Aina Sufiati', '85260113696', 'Security BRI, Unit Samalanga'),
(582, '1', '10', '10173029', 'M. GHAISAN AL-AZZAM', 'Jl. Syik Mudalansin, Dusun Blang Raya, Desa Mns. Blang, Bireuen', 'Eddi Yuswadi', 'Suci Diana', '8116700607', 'Wiraswasta'),
(583, '1', '10', '10173030', 'MUHAMMAD RAFAN UMAR', 'Keude Matang Glp. Dua, Kec. Peusangan, Bireuen', 'Umar Dhani', 'Syarifah Hanum', '81360006613', 'Dokter'),
(584, '1', '10', '10173031', 'MUHAMMAD AQIL SYAUQI', 'Jl. Pendidikan No. 15, Desa Mns Dayah, Kec. Kota Juang, Bireuen', 'Alviandri', 'Vina Vatia', '85275878004', 'Karyawan swasta'),
(585, '1', '10', '10173038', 'MUHAMMAD AQILSUJA', 'Desa Cot Tarom Tunong, Kec. Jeumpa, Bireuen', 'Rahmat', 'Milza Sari', '85277680090', 'Wiraswasta'),
(586, '1', '10', '10173039', 'MIFZAL GUSTAV AZMI', 'Mns Tunong, Jl. Medan B. Aceh No. 5, Kec. Peudada, Bireuen', 'Ulul Azmi', 'Khaliza', '82363024436', 'PNs'),
(587, '1', '10', '10173041', 'NAILA RAMADHANI', 'Desa Blang Bladeh, Kec. Jeumpa, Bireuen', 'Jailani', 'Sri Wardiana', '85221390521', 'PNS'),
(588, '1', '10', '10173042', 'RAIZA FATIH ALNAZWAR', 'Aspol Karang Rejo, Kec. Kota Juang, Bireuen', 'Rahimansyah', 'Syaflizar', '85260524447', 'Polisi'),
(589, '1', '10', '10173044', 'REYAN EL FACHRI', 'Desa Blang Cot Tunong, Kec. Jeumpa, Bireuen', 'Zulkhairi', 'Maria Ulfa', '82277717717', 'Wiraswasta'),
(590, '1', '10', '10173045', 'RIFQA HUMAIRA', 'Desa Mns. Reuleut, Kec. Kota Juang, Bireuen', 'Mirzanur', 'Herdiana', '85373500981', 'Wiraswasta'),
(591, '1', '10', '10173047', 'REVAN MAULANA', 'Dusun Kruet Mameh, Geudong Alue, Kec. Kota Juang, Bireuen', 'Faisal', 'Eliza Zuhra', '85261872179', 'Karyawan Swasta'),
(592, '1', '10', '10173052', 'SUQIA RAHMAH', 'Desa Mns Pulo, Kec. Peudada, Bireuen', 'Mukhtar', 'Siti Aminah', '85358441517', 'PNS'),
(593, '1', '10', '10173053', 'TSAQIF AL-WAFI', 'Jl. Karang Rejo No. 31, Desa Bandar Bireuen, Kec. Kota Juang, Bireuen', 'Eriek Julana Alda', 'Elly Fitriani', '85260740303', 'Wiraswasta'),
(594, '1', '10', '10173054', 'ULFA KHAIRA FITRI', 'Asrama Kompi Bantuan Yonif 113/JS, Desa Bandar Bireuen, Kec. Kota Juang, Bireuen', 'Zulkifli', 'Lasnawati', '85260181831', 'TNI-AD'),
(595, '1', '10', '10173055', 'VANESA LIVIANA VENI', 'Desa Mns. Capa, Kec. Kota Juang, Bireuen', 'Rudi Syahputra', 'Lili Suryani', '85358222220', 'Polisi'),
(596, '1', '10', '10173057', 'YAZID AL - BUSTAMI', 'Jl. Sukma, Desa Cot Keutapang, Kec. Jeumpa, Bireuen', 'Mahrizal M Nur', 'Ratna Wati', 'tidak ada data', 'PNS'),
(597, '1', '10', '10183002', 'MUHAMMAD FATHIN ARFA', 'Jl. T. Malem No. 6 Kommes, Desa meunasah Capa, Kec. Kota Juang, Kab. Bireuen', 'Zahrul Fuadi', 'Khairina', '811670294', 'PNS'),
(598, '1', '10', '10183004', 'BALWA TAJUSA', 'Jl. Tgk Mustafa no. 23A, Desa Mns Blang, Kec. Kota Juang, Kab. Bireuen', 'Ulil Amri', 'Fitriani', '81360191448', 'Pegawai BUMN'),
(599, '1', '10', '10183069', 'FARIZA DHEANDRA ZAHRA', 'Asrama Polres Bireuen', 'Joko Utomo, SH, SIK', 'FITRIA PUTRI AGUSTINA, Amd', '81390422009', 'Polri'),
(600, '1', '10', '10183073', 'M. ALTHAF SYAHRIZAL', 'Gampong Baro Jl. Habib Puteh No 12C Bireuen\r\r\n', 'Dr. Syahrizal, Sp. THT - KL', 'Isnaq Mutia Amd', '811647326', 'PNS'),
(601, '1', '8', '10183007', 'MUHAMMAD ASYRAF RAHFAN', 'Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Saifannur', 'Rahmiati', '85277958881', 'Karyawan Swasta'),
(602, '1', '8', '10183008', 'KEIFA ARDILLA', 'Desa Juli Tambo Tanjong, Kec. Juli Kab. Bireuen', 'Jusfardi', 'Faqrah Mykela', '82369687527', 'Pegawai Bank'),
(603, '1', '8', '10183009', 'MUBARAK ASKAFIA', 'Desa Menasah Alue, Kec. Peudada Kab. Bireuen', 'Astakari  Agani', 'Fitri Yani', '85260374923', 'Tehnisi'),
(604, '1', '8', '10183012', 'AUFA MUNA', 'Paya Meuneng Peusangan Bireuen', 'Sayuti Adi Kesuma', 'Sri Suherna', '85372025678', 'Wiraswasta'),
(605, '1', '8', '10183013', 'ZINOYA HILMIRA', 'Jl. Banda Aceh - Medan Desa MeunasahTeungoh Kec. Peudada Kab. Bireuen', 'Zulhilmi', 'Zahara Fona', '85277685553', 'PNS'),
(606, '1', '8', '10183014', 'ZIFANA NAIRA LATISYA', 'Jl. Mayor Abdullah Yacob No. 61 Dusun Sejahtera Desa Pulo Ara Geudong Teungoh Kec. Kota Juang Kab. Bireuen', 'Zulfan', 'Khairul Husna', 'tidak ada data', 'Wiraswasta'),
(607, '1', '8', '10183015', 'NADA NADHIFA', 'Desa Mns. Dayah Bireuen', 'Saiful Bahri', 'Linda Yatna', '85277142550', 'wiraswasta'),
(608, '1', '8', '10183020', 'ADAM FAIZ', 'Jln. Medan - BandaTgk Syeh Umar dusun Tgk Mustafa desa mns blang kota juang bireuen', 'Martunis', 'Mursyidah', '8126908982', 'wiraswasta'),
(609, '1', '8', '10183022', 'MUHAMMAD RIFAI', 'Juli Setuy Bireuen', 'Anwar', 'Susi Yanti', '8126931949', 'Wiraswasta'),
(610, '1', '8', '10183023', 'MUHAMMAD RAZAN', 'Meunasah Blang Kota Juang Bireuen', 'Murdani', 'Muliawati', '85260321552', 'PNS'),
(611, '1', '8', '10183024', 'RAFA KHAIRI ARKAN', 'Lhok Awe Teungoh Kec. Kota Juang Bireuen', 'Mulyadi Sabil', 'Vika Novita', '85296647001', 'Wiraswasta'),
(612, '1', '8', '10183025', 'JASMINE NAURATUL FANNY', 'Jl. Medan - Banda Aceh Cot Keutapang Jeumpa Bireuen', 'Basiran', 'Hidayani Safari Zanna', '85296740036', 'Guru'),
(613, '1', '8', '10183026', 'MUHAMMAD BIMA ALFAREZI', 'Asmil Kodim 0111 Blang Bladeh Jeumpa Bireuen', 'Agus Kurniawan', 'Zahniar', '85361150684', 'TNI-AD'),
(614, '1', '8', '10183029', 'IZA NAZIRA', 'Glp. Payong Jeumpa Bireuen', 'Kamarullah', 'Julianti', '82368208664', 'Guru'),
(615, '1', '8', '10183030', 'DESTINY CINTA RIZVIE', 'Cot Keutapang Jeumpa Bireuen', 'Syafrizal', 'Siti Alpiyah', '81260245204', 'PNS'),
(616, '1', '8', '10183033', 'MIFZAL HAFIZ', 'Desa Cot Rabo Tunong Kec. Peusangan Bireuen', 'Afriadi', 'Epa Fitria', '85260042881', 'Polri'),
(617, '1', '8', '10183037', 'MUNAYA KAMILA', 'Aspol Kota Juang Bireuen', 'Yusri', 'Ferina', '85207077354', 'Polri'),
(618, '1', '8', '10183039', 'HAFIDH AL KIRAM', 'Cot Keutapang Jeumpa Bireuen', 'Zainal Efendi', 'Cut Risma Candra Dewi', '85277693002', 'Polri'),
(619, '1', '8', '10183040', 'ZIAD MUBARRAK', 'Mns Blang Kota Juang Bireuen', 'M. Daud', 'Irwati', '81360587207', 'PNS'),
(620, '1', '8', '10183041', 'CUT ADILA FARADINA', 'Desa Geulanggang Gampong Kota Juang Bireuen', 'Fakrurrazi', 'Karlina Dewi', '85260099146', 'PNS'),
(621, '1', '8', '10183042', 'ABBAS RAFIUDDIN', 'BTN Kupula Indah Cot Gapu Kota Juang Bireuen', 'Muhammad Ari Syahputra', 'Cut Evita', '81167000121', 'Advokat'),
(622, '1', '8', '10183043', 'MUHAMMAD FARIS MAULANA', 'Desa Cot Gadong Jeumpa Bireuen', 'Muntasir', 'Mahdalena', '85277681956', 'PNS'),
(623, '1', '8', '10183044', 'FARHANATUL HAFIDHAH', 'Meunasah Reuleut Kota Juang Bireuen', 'Irmawan', 'Erna', '81269447021', 'PNS'),
(624, '1', '8', '10183045', 'MUHAMMAD ZAFRIN AL GHIFARI', 'Geulanggang Gampong Kota Juang Bireuen', 'Andri Saputra', 'Iramayanti', '8116701187', 'PNS'),
(625, '1', '8', '10183050', 'KEYSHA ATHA HUMAIRA', 'Dusun Kommes Mns. CApa Kota Juang Bireuen', 'Islamsyah', 'Desi Mehriani', '85361862707', 'Wiraswasta'),
(626, '1', '8', '10183056', 'GHINAA AQIILAH', 'Cot Keutapang Jeumpa Bireuen', 'Badlisyah', 'Wardiah', '85261629480', 'Wiraswasta'),
(627, '1', '8', '10183061', 'NIZHAM JIRATULLAH SARIZ', 'Mns Tgk Digadong Kota Juang Bireuen', 'Hendra Saputra', 'Yuyun Rizkiyani', '85277676767', 'Polri'),
(628, '1', '8', '10183062', 'NAJWA ZHAAFIRAH CAESAR', 'Cot Trieng Bireuen', 'Badaruddin', 'Erlinawati', '85260187424', 'TNI-AD'),
(629, '1', '8', '10183064', 'ATHARIZ RAFIIANDRA CHALIEF', 'Aspol, Polres Bireuen, Cot Buket Kec. Peusangan  Kab. Bireuen', 'Joko Kusumadinata', 'Dela Puspita Arini', '85310382006', 'Polri'),
(630, '1', '8', '10183066', 'MUHAMMAD ALFI', 'Desa Cot Keutapang, kec. Jeumpa  Kab. Bireuen', 'Khairuddin Hasan', 'Nurjannah Daud', '85260535681', 'Jualan'),
(631, '1', '9', '10183006', 'AMIRA NURUL FAZLIA', 'Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Fadli M. Jamil', 'Yasri Umaini', '81361184566', 'Wiraswasta'),
(632, '1', '9', '10183010', 'YUSUF AL QARDHAWI', 'Jl. Bireuen-Takengon, KM. 2 No. 10 Juli Seutuy Bireuen', 'Mudhar Juli Saputra', 'Intan Maysarah', '8116708553', 'Wiraswasta'),
(633, '1', '9', '10183011', 'JOLIN KOEMARDI', 'Jl. Mawar No. 36 Bireuen', 'Boerhan Koemardi', 'Susanni', '81373087999', 'Wiraswasta'),
(634, '1', '9', '10183016', 'MUHAMMAD DWI NOVIAN', 'Jangka Bireuen', 'Yossafat Yoga Ibrahim Muhammad', 'Muryani', 'tidak ada data', 'TNI AD');
INSERT INTO `siswa` (`id_siswa`, `id_jenjang`, `id_kelas`, `nis_siswa`, `nama_siswa`, `alamat_siswa`, `ayah_siswa`, `ibu_siswa`, `hp_siswa`, `kerja_siswa`) VALUES
(635, '1', '9', '10183017', 'AERILYN BELLVANIA', 'Asrama Polisi Karang Rejo Bandar Bireuen Kota Juang Bireuen', 'Eri Junizar', 'Sutari', '85262034300', 'polisi'),
(636, '1', '9', '10183018', 'ZULFIKRI', 'Cot Keutapang Jeumpa Bireuen', 'Muhammad Taufiq', 'Dewi Maya Sari', '85277125260', 'Wiraswasta'),
(637, '1', '9', '10183019', 'BENAZIR ZAHIRAH TAUFIQ', 'Simp. 4 Beurawang. Jln. M. TawiDusun 2 Cinta Makmur Cot Trieng Kuala Bireuen', 'Taufiq', 'Asrita', '8126923703', 'Pegawai swasta'),
(638, '1', '9', '10183021', 'MUHAMMAD ADIL', 'Juli Cot Mesjid Bireuen', 'Mulia Darma', 'Salma Ismail', '85277737187', 'PNS'),
(639, '1', '9', '10183027', 'FARIZ ASYRAF', 'Cot Rabo Tunong Peusangan Bireuen Aceh', 'Muhammad Sulaiman', 'Anna Sofianti', '81264803828', 'Karyawan BUMN'),
(640, '1', '9', '10183028', 'PRAGATA ZHAFIF MAHAWIRA', 'Meunasah Dayah Kota Juang Bireuen', 'M. Nur Choliq', 'Mega Munawaroh', '85361508650', 'TNI-AD'),
(641, '1', '9', '10183031', 'SHAQUILLE ARSYADIWA FAWWAZ', 'Mns. Tgk Digadong Kota Juang Bireuen', 'Novi Kenny Yandi', 'Santi Windiya Puspitasari', '81377177887', 'Wiraswasta'),
(642, '1', '9', '10183032', 'MUHAMMAD AL FARASYI', 'Dusun Teratai Desa Geulanggang Baro Kota Juang Bireuen', 'Jaswadi', 'Muna Sarah Tursina', '85260809970', 'Wiraswasta'),
(643, '1', '9', '10183034', 'AIDILA NATASYA', 'Dusun Masjid Buket Teukuh Kota Juang Bireuen', 'Iskandar Muda', 'Zahara', '82364545006', 'Wiraswasta'),
(644, '1', '9', '10183035', 'MUHAMMAD ALIF IZAZ', 'Mns. Capa Kota Juang Bireuen', 'Yusli Annur', 'Gita Andeva', '8116708116', 'Wiraswasta'),
(645, '1', '9', '10183036', 'WARDATUL ULAA', 'Dususn blang raya mns. blang kota juang bireuen', 'Saiful Amri', 'Eliana', '85260152142', 'Karyawan Swasta'),
(646, '1', '9', '10183038', 'QAIREEN SHAHQUITTA', 'Mns Tgk Digadong Kota Juang Bireuen', 'Adi Saska Jalil', 'Isrinawati', '85260382451', 'Karyawan Swasta'),
(647, '1', '9', '10183046', 'IZZAH BADRINA HASRA', 'Blang Cot Tunong Jeumpa Bireuen', 'Haswandi', 'Rahmawati', '85360061213', 'PNS'),
(648, '1', '9', '10183047', 'FATHIR SYAWALUL RIZAL', 'Geulanggang Baro Kota Juang Bireuen', 'Safwan Rizal', 'Martinah', '85260713004', 'Polri'),
(649, '1', '9', '10183048', 'RAISA ZHAFIRA', 'Dusun Jeumpa Puteh Juli Seutuy Bireuen', 'Budi Razianur', 'Novi Putri', '8126902436', 'Wiraswasta'),
(650, '1', '9', '10183049', 'INAYYAH FAUZIA HABIBIE', 'Meunasah Blang Kota Juang Bireuen', 'Habibie', 'Rohana', '8116711979', 'Karyawan BUMN'),
(651, '1', '9', '10183051', 'MAHMOUD RIZIQ ALBANNA', 'Mns. Tgk Digadong Kota Juang Bireuen', 'MuhammadRavi', 'Muliyawati', '85277258777', 'Wiraswasta'),
(652, '1', '9', '10183052', 'MUHAMMAD AUFA', 'Mns. Tgk Digadong Kota Juang Bireuen', 'Imran MD', 'Rita Lestamiana', '8116701067', 'PNS'),
(653, '1', '9', '10183053', 'AUREN LEODRA UTAMA', 'Dusun Cureh Barat Kota Juang Bireuen', 'Hendrik Utama', 'Sanni', '85262341333', 'Mekanik '),
(654, '1', '9', '10183054', 'CHE THARA ALAMANDA', 'Mns. Dayah Kota Juang Bireuen', 'Sabaruddin Abdullah', 'Ida Iryanti', '85270834043', 'Wiraswasta'),
(655, '1', '9', '10183055', 'SAIF ASHRAF', 'Desa Lancok Pante Ara Kuala Bireuen', 'Mursal', 'Erawanti', '85277695147', 'Wiraswasta'),
(656, '1', '9', '10183057', 'NADHA FILZAH DAYAHNA', 'Mns. Dayah Kota Juang Bireuen', 'Mahyuddin', 'Ningsih Shalatiah', '81375622877', 'Wiraswasta'),
(657, '1', '9', '10183058', 'LUXVI LATIVA', 'Kuta Baro Kuala Bireuen', 'Ridwan', 'Idawahyuni', '85277569509', 'Wiraswasta'),
(658, '1', '9', '10183059', 'ATHALLAH ABIYU SIDDIK', 'Desa Buket Teukuh Kota Juang Bireuen', 'Jafar Siddik', 'Dwi Wulandary', '85296018382', 'Wiraswasta'),
(659, '1', '9', '10183060', 'FRANKLIN RAU', 'KOmmes Kota Juang Bireuen', 'Mukhtar Nasri', 'Rita', '85362873399', 'Wiraswasta'),
(660, '1', '9', '10183063', 'MYIESHA NAFEEZA AMIRA', 'Cot Keutapang Jeumpa Bireuen', 'Amiruddin', 'Adnen Nurdin', '82369770171', 'PNS');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) NOT NULL,
  `nip_user` varchar(255) NOT NULL,
  `level_user` varchar(255) NOT NULL,
  `username_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE IF NOT EXISTS `visit` (
  `id_visit` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `id_semester` varchar(255) NOT NULL,
  `id_kelas` varchar(255) NOT NULL,
  `id_kelas2` varchar(255) NOT NULL,
  `id_kelas3` varchar(255) NOT NULL,
  `id_kelas4` varchar(255) NOT NULL,
  `id_guru` varchar(255) NOT NULL,
  `tema_visit` varchar(255) NOT NULL,
  `hasil_visit` varchar(255) NOT NULL,
  `lokasi_visit` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `waktu_2` date NOT NULL,
  `id_mapel1` int(11) NOT NULL,
  `id_mapel2` int(11) NOT NULL,
  `id_mapel3` int(11) NOT NULL,
  `id_mapel4` int(11) NOT NULL,
  `biaya_visit` text NOT NULL,
  `laporan` varchar(255) NOT NULL,
  `proposal` varchar(255) NOT NULL,
  PRIMARY KEY (`id_visit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`id_visit`, `id_jenjang`, `id_semester`, `id_kelas`, `id_kelas2`, `id_kelas3`, `id_kelas4`, `id_guru`, `tema_visit`, `hasil_visit`, `lokasi_visit`, `waktu_1`, `waktu_2`, `id_mapel1`, `id_mapel2`, `id_mapel3`, `id_mapel4`, `biaya_visit`, `laporan`, `proposal`) VALUES
(1, '1', '1', '17', '16', '', '', '8', 'Menuliskan Informasi Penting dari narasumber', 'Siswa mampu menuliskan point-point penting tentang pengolahan coklat di Pabrik Socolattte', 'Pabrik Coklat Socolattte di Paru, Sigli', '2018-11-29', '2018-11-29', 35, 40, 0, 0, '1600', 'FORMAT LAPORAN KEGIATAN SCHOOL VISIT ke Socolatte.doc', ''),
(2, '1', '1', '11', '10', '', '', '58', 'Mengenal Situs Sejarah Islam ', 'Tujuan dari kegiatan ini adalah dapat melihat secara langsung makam seorang tokoh pembawa ajaran Islam dan dapat mendengar secara langsung cerita tentang Islam pada masa dahulu.  Adapun manfaat kegiatan tersebut adalah untuk menambah wawasan siswa terhada', 'Makam Malikussalih Aceh Utara', '2018-11-07', '2018-11-07', 33, 0, 0, 0, '1341000', 'RIVANDA-LAPORAN SCHOOL VISIT KE MAKAM MALIKUSSALEH.doc', ''),
(3, '1', '2', '18', '19', '', '', '49', '  Menulis laporan (B.Indonesia), Mengenal Jenis hewan langka (IPA), Cooking class (SBK), Permainan tradisional (Olahraga)  ', '  Menambah pengetahuan dan pengalaman belajar siswa serta meningkatkan keakraban antar sesama siswa dan guru dalam rangka kegiatan perpisahan siswa kelas 6  ', '  Medan (PizzaHut, Galeri Rahmat, Istina Maimun, Dusun Kreatif, Pabrik Sari Roti) ', '2019-02-07', '2019-02-09', 37, 42, 35, 40, '6000000', 'School Visit Medan.docx', ''),
(4, '2', '2', '23', '22', '', '', '12', ' Recount Text ', ' siswa membuat laporan perjalanan dalam bentuk Recount Text ', ' Banda Aceh da sekitarnya ', '2019-02-11', '2019-02-16', 2, 11, 0, 0, '0', 'LAPORAN KEGIATAN SCHOOL VISIT.docx', ''),
(5, '2', '2', '23', '22', '', '', '66', '    Menulis Puisi    ', '   Siswa mampu menceritakan kembali dalam bentuk puisi tempat-tempat yang mereka kunjungi selama di Banda Aceh.    ', '    Benteng Indera Patra, Museum Aceh, Rumoh aceh, Museum Tsunami, dan Kuta Malaka    ', '2019-02-14', '2019-02-16', 2, 5, 7, 0, '0', 'LAPORAN-KEGIATAN-SCHOOL-VISIT SMP.docx', ''),
(6, '2', '2', '21', '20', '', '', '16', 'Laporan Perjalanan', 'â€¢	Siswa mampu menuliskan laporan perjalanan ke tempat-tempat yang mereka kunjungi di Banda Aceh', 'Banda Aceh', '2019-02-14', '2019-02-16', 3, 6, 5, 7, '0', 'Laporan School Visit TIK_Banda Aceh.docx', ''),
(7, '2', '2', '20', '21', '', '', '10101070', 'Empati dan Hubungan Interpersonal', 'Siswa mengetahui perannya sebagai individu dalam hubungan interpersonal, serta mampu mengasah dan meningkatkan rasa empati dengan berkunjung ke tempat-tempat bersejarah.', 'Banda Aceh dan Sekitarnya', '2019-02-14', '2019-02-16', 5, 10, 0, 0, '0', 'Laporan Kegiatan School Visit SMP (Bimkos).docx', ''),
(8, '2', '2', '24', '25', '', '', '9', 'PAI = Aplikasi Shalat Jamak Qashar', '1. Menambah pengalaman belajar siswa.     2. Menambah wawasan siswa tentang pengolahan makanan dan minuman kemasan beserta pemasarannya       3. Mempraktikkan Shalat Jamaâ€™ Qashar     4. Mengasah kemampuan menulis siswa dengan metode menulis laporan', '1. Tanjung Morawa = PT Medan Jaya Pangan Mutu   2. Medan Amplas = PT ASW/Hatari      3. Berastagi Sumut = Mikie Holiday', '2019-02-14', '2019-02-16', 1, 2, 0, 0, '0', '', ''),
(9, '2', '1', '', '', '', '', '11', 'Kewirausahaan Hidroponik', 'Guru dapat pemahaman bagaimana mengembangkan kewirauasahaan pertanian menggunakan sistem Hidroponik. selain itu, guru dapat mengembangkannya di sekolah', 'Lhokseumawe', '2018-11-03', '2018-11-03', 4, 0, 0, 0, '281000', '', ''),
(10, '2', '2', '20', '21', '', '', '64', 'situs sejarah di aceh', 'â€¢	Siswa mampu menuliskan tempat-tempat yang mereka kunjungi selama di Banda Aceh. â€¢	Siswa mampu mengidentifikasi situs-situs sejarah di aceh', 'banda aceh', '2019-02-14', '2019-02-16', 5, 10, 7, 0, '0', 'LAPORAN-KEGIATAN-SCHOOL-VISIT IPS.docx', ''),
(11, '2', '2', '20', '21', '', '', '38', 'Perbandingan dan Aritmatika Sosial', '*Siswa mampu menuliskan tempat-tempat yang mereka kunjungi selama di Banda Aceh yang berkaitan dengan perbandingan senilai, berbalik nilai, maupun mengenai diskon.  *Menambah pemahaman dan pengalaman siswa secara nyata berkaitan dengan materi perbandingan', 'Perjalanan Bireuen-Banda Aceh, Suzuya, dan Gramedia', '2019-02-14', '2019-02-16', 6, 3, 11, 0, '0', 'LAPORAN SCHOOL VISIT BANDA.docx', ''),
(12, '2', '2', '20', '21', '', '', '45', 'Kondisi alam Indonesia', 'Siswa dapat mengunjungi langsung berbagai kenampakan alam seperti gunung, laut dan kemudian mengetahui berbagai fenomena alam yang terjadi ditempat tersebut. Siswa juga mengunjungi mesium Tsunami sehingga dapat melihat berbagai dampak dari fenomena alam y', 'Mesium Tsunami dan Pantai Pasir Putih', '2019-02-13', '2019-02-15', 2, 3, 7, 10, '0', 'LAPORAN-KEGIATAN-SCHOOL-VISIT.docx', ''),
(13, '2', '2', '24', '25', '', '', '41', 'Asam, Basa, dan Garam', 'a.	Tujuan dan Manfaat kegiatan Siswa dapat melihat langsung usaha hidroponik, serta cara menggunakan PH meter, cara mendapatkan air bersih, dan cara merawat sayuran. ', 'Cot Bada, Bireuen.', '2019-02-18', '2019-02-18', 0, 0, 0, 0, '0', 'SCHOOL VISIT KE HIDROPONIK.docx', ''),
(14, '1', '2', '10', '11', '', '', '19', 'Mengenal pemanfaatan sumber daya alam lingkungan sekitar menjadi benda yang bermanfaat bagi masyarakat', 'siswa mengetahui dan Mengenal pemanfaatan sumber daya alam lingkungan sekitar menjadi benda yang bermanfaat bagi masyarakat', 'pabrik batu bata Juli Pasee, Bireuen', '2019-02-27', '2019-02-27', 35, 39, 0, 0, '662', '', ''),
(15, '1', '2', '11', '', '', '', '10101071', 'Lingkungan', 'Siswa mampu mengetahui cara pembuatan batu bata dan mampu menghubungkan kegiatan tersebut dengan materi Lingkungan. ', 'Pabrik pembuatan batu bata Gampong Paseh', '2019-02-27', '2019-02-27', 35, 0, 0, 0, '277000', '', ''),
(16, '2', '2', '20', '21', '', '', '45', 'Kondisi alam Indonesia', 'siswa dapat melihat langsung keadaan alam Indonesia dan melihat dampak dari fenomena alam yang terjadi di Indonesia', 'Mesium Tsunami ', '2019-02-14', '2019-03-16', 2, 3, 11, 10, '1', '', ''),
(17, '2', '2', '22', '23', '', '', '38', 'Recount Text', 'â€¢	Siswa mampu menuliskan tempat-tempat yang mereka kunjungi selama di Banda, â€¢	Siswa mampu merangkaikan dalam bentuk Recount Text terkait kunjungan mereka tersebut ', 'â€¢	Mesjid Raya Baiturrahman Banda Aceh, â€¢	Benteng Indra Patra, â€¢	Pantai Pasir Putih, â€¢	Museum Aceh, â€¢	Museum Tsunami, â€¢	Gramedia dan â€¢	Kuta Malaka', '2019-02-14', '2019-02-16', 6, 11, 0, 0, '1000', '', ''),
(18, '2', '2', '22', '', '', '', '10101072', 'Recount Text', 'Siswa mampu merangkaikan dalam bentuk Recount Text terkait kunjungan mereka tersebut', 'Mesjid Raya Baiturrahman Banda Aceh, Benteng Indra Patra,Pasir Putih, Museum Aceh, Museum Tsunami, Gramedia dan Kuta Malaka', '2019-02-14', '2019-02-16', 3, 6, 6, 0, '0', 'LAPORAN-KEGIATAN-SCHOOL-VISIT SMP SEM GENAP.docx', '');

-- --------------------------------------------------------

--
-- Table structure for table `visit_home`
--

CREATE TABLE IF NOT EXISTS `visit_home` (
  `id_visit_home` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenjang` varchar(255) NOT NULL,
  `id_semester` varchar(255) NOT NULL,
  `id_kelas` varchar(255) NOT NULL,
  `id_guru` varchar(255) NOT NULL,
  `id_siswa` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `tujuan_visit_home` varchar(255) NOT NULL,
  `hasil_visit_home` varchar(255) NOT NULL,
  `lanjutan_visit_home` varchar(255) NOT NULL,
  PRIMARY KEY (`id_visit_home`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `visit_home`
--

INSERT INTO `visit_home` (`id_visit_home`, `id_jenjang`, `id_semester`, `id_kelas`, `id_guru`, `id_siswa`, `waktu_1`, `tujuan_visit_home`, `hasil_visit_home`, `lanjutan_visit_home`) VALUES
(2, '1', '2', '9', '59', '614', '2019-02-09', 'Untuk memperoleh informasi dari orangtua terkait kegiatan sehari-hari dan kegiatan belajar siswa dirumah serta mendiskusikan hal-hal mengenai penyebab seringnya Iza tidak memperoleh informasi yang telah disampaikan wali kelas kepada orangtua', 'Orangtua Iza mengatakan karena kesibukan ayah Iza dan terlebih ibu Iza yang juga disibukkan dengan kegiatan mengurus kedua adik Iza yang masih bayi sehingga perhatian dan kontrol mereka terhadap perkembangan Iza sangatlah kurang.', 'Orangtua menyanggupi untuk lebih bisa membagi waktu dan memperhatikan berbagai keperluan dan perkembangan Iza di sekolah. Orangtua juga mengatakan untuk kedepannya akan lebih sering mengecek segala informasi yang diberikan oleh wali kelas');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
