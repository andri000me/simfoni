-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2020 pada 03.36
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simfoni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `nip_admin` varchar(255) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `nip_admin`, `username_admin`, `password_admin`) VALUES
(1, 'adhi lesmana', '10060025', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapustaka`
--

CREATE TABLE `datapustaka` (
  `id_datapustaka` int(11) NOT NULL,
  `id_semester` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `kegiatan` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `waktu_2` date NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `sasaran` varchar(255) NOT NULL,
  `biaya` varchar(255) NOT NULL,
  `laporan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `datapustaka`
--

INSERT INTO `datapustaka` (`id_datapustaka`, `id_semester`, `id_jenjang`, `kegiatan`, `waktu_1`, `waktu_2`, `tujuan`, `sasaran`, `biaya`, `laporan`) VALUES
(1, '1', '1', 'Literacy Walker', '2019-09-16', '2019-09-16', 'Kantor Polisi', 'Siswa/i SD kelas I-Samarinda', '100.000', '16 September 2019.docx'),
(2, '1', '1', 'Literacy Walker', '2019-09-03', '2019-09-03', 'Dinas Perpustakaan dan Arsip Bireuen', 'Siswa/i SD kelas II-Keumude', '100.000', '03 September 2019.docx'),
(3, '1', '1', 'Literacy Walker', '2019-09-17', '2019-09-17', 'Dinas Perpustakaan dan Arsip Bireuen', 'Siswa/i SD kelas II-Manggeh', '100.000', '17 September 2019.docx'),
(4, '1', '1', 'Literacy Walker', '2019-10-24', '2019-09-24', 'Rumah Sakit Jiwa Bireuen', 'Siswa/i SD kelas VI-Keuranji', '100.000', '24 Oktober 2019.docx'),
(5, '3', '3', 'APISI Scholar Life: School Library and Literacy Festival', '2019-11-02', '2019-11-03', 'Temu pustakawan sekolah dan diskusi perkembangan sekolah di Jakarta', 'Pustakawan ', '0', 'Laporan APISI scholar life.docx'),
(6, '3', '2', 'Seminar Dan Workshop â€œKompetensi Pustakawan di Era Industri 4.0â€', '2019-10-17', '2019-10-18', 'Memahami tentang tantangan yang dihadapi perpustakaan di era industri 4,0, dan mengetahui kompetensi apa yang harus dikuasai oleh pustakawan di era industri 4.0.', 'Pustakawan', '820.000', 'Laporan Mengikut Seminar dan Workshop.docx'),
(7, '3', '1', 'Workshop Mendongeng â€œBercerita Dari Hatiâ€ ', '2019-10-19', '2019-10-19', 'Meningkatkan kesadaran akan pentingnya mendongeng bagi anak dan mengenalkan tentang tata cara mendongeng yang benar.', 'Guru dan Orang tua', '2.556.000', 'laporan workshop mendongeng.docx'),
(8, '3', '1', 'LIterasi Merdeka SD', '2019-08-16', '2019-08-16', 'Meningkatkan daya kreativitas siswa/i dalam berkarya dan menulis', 'Siswa dan Guru SD ', '1.640.000', ' '),
(9, '3', '2', 'LIterasi Merdeka SMP', '2019-08-16', '2019-08-16', 'Meningkatkan daya kreativitas siswa/i dalam berkarya dan menulis', 'Siswa dan Guru SMP', '715.000', ' '),
(10, '3', '3', 'LIterasi Merdeka SMA', '2019-08-16', '2019-08-16', 'Meningkatkan daya kreativitas siswa/i dalam berkarya dan menulis', 'Siswa dan Guru SMA', '780.000', ' ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guest`
--

CREATE TABLE `guest` (
  `id_guest` int(11) NOT NULL,
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
  `proposal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guest`
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
(13, '3', '1', '5', '6', '7', '', '14', '43', 'menulis teks Editorial', 'Ariadi B. Jangka', 'siswa mampu menulis teks editorial', '2018-10-22', '2018-10-22', '100', 'laporan guest teacher teks editorial.doc', ''),
(14, '2', '1', '22', '', '', '', '4', '41', 'Aplikasi konsep bejana berhubungan untuk menyamakan ketinggian', 'Sulaiman', 'Tujuan: Memberikan motivasi dan inspirasi kepada siswa, Membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guest teacher yang bersangkutan, serta Mengubah mindset siswa tentang seoarang guru hanyalah mereka yang mengajar di sekolah a', '2018-12-06', '2018-12-06', '86000', 'LAPORAN GUEST TEACHER IPA Fisika Semester Ganjil 2018-2019.docx', ''),
(15, '1', '1', '17', '', '', '', '39', '36', 'Denah dan Skala', 'Zulkarnain dan Zakaria', '1. -	Siswa mampu menggambar denah dengan baik, 2. -	Siswa mengetahui penerapan dari materi yang dipelajari dalam kehidupan sehari-hari', '2018-11-22', '2018-11-22', '90000', '', ''),
(16, '2', '1', '25', '', '', '', '11', '16', 'Desain grafis pengolah gambar vektor (CorelDraw)', 'Awi AW Advertising', 'Tujuan: Mengetahui pentingnya aplikasi pengolah gambar vektor (CorelDRAW12) dalam kehidupan sehari-hari seperti membuat logo, desain sertifikat, dan lain-lain.', '2018-08-20', '2018-08-20', '100.000', 'Laporan Guest Teacher TIK Kelas IX.docx', ''),
(17, '2', '1', '20', '21', '', '', '6', '38', 'Hukum Mawaris', 'Tgk turmizi Syeh', 'Tujuan dari kegiatan ini adalah untuk membuat proses pembelajaran lebih menarik dengan mendengarkan langsung dari marasumber yang bersangkutan. Selain itu memberikan pemahaman kepada siswa/i terkait tema tentang bilangan pecahan yang berkaitan dengan huku', '2018-10-08', '2018-10-10', '151000', 'Laporan Guest Teacher bab pecahan.docx', ''),
(20, '1', '1', '15', '', '', '', '33', '58', 'Asmaul Husna al-Quddus / Membuat Kaligrafi Lafaz Asmaul Husna', 'Tgk. Agus Salim', 'Tujuannya adalah memberikan motivasi dan inspirasi kepada siswa, membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guru tamu yang bersangkutan dan mengubah mindset siswa tentang seorang guru hanyalah mereka yang mengajar di sekolah ', '2018-11-22', '2018-11-22', '91000', 'RIVANDA-LAPORAN GUEST TEACHER.doc', ''),
(21, '2', '1', '21', '', '', '', '2', '3', 'Teks Prosedural', 'Saifannur', 'Tujuan dari kegiatan ini adalah untuk membuat proses pembelajaran lebih menarik dengan melihat langsung dari marasumber yang bersangkutan. Selain itu siswa dapat melihat langsung prosedur yang dikerjakan dalam kehidupan nyata.', '2018-12-12', '2018-12-12', '86000', 'LAPR-2018-Guest-Teacher-7-Deli.docx', ''),
(22, '2', '1', '25', '24', '', '', '1', '9', 'Haji dan Umrah', 'Tgk Zulfikar Abdullah', 'Tujuan dari kegiatan ini adalah untuk membuat proses pembelajaran lebih menarik dengan mendengarkan langsung dari marasumber yang bersangkutan. Selain itu memberikan pemahaman kepada siswa/i terkait tema tentang â€Haji dan Umrahâ€ atau penjelasan tentan', '2018-12-12', '2018-12-12', '86.000', 'Laporan-Guest-Teacher - PAI Sem. Ganjil 2018-2019.docx', ''),
(23, '2', '2', '20', '', '', '', '1', '9', 'Hormat dan Patuh kepada Orang tua dan Guru', 'Tgk Thayyibul Layakbal', 'Agar siswa memahami makna hormat dan patuh kepada orang tua dan guru', '2019-01-23', '2019-01-23', '86.000', 'Laporan-Guest-Teacher PAI Sem. Genap 2018-2019.docx', ''),
(24, '2', '2', '21', '', '', '', '1', '9', 'Hormat dan Patuh kepada Orang tua dan Guru', 'Tgk Thayyibul Layakbal', 'Agar siswa memahami makna hormat dan patuh kepada orang tua dan guru', '2019-01-25', '2019-01-25', '86.000', 'Laporan-Guest-Teacher PAI Sem. Genap 2018-2019.docx', ''),
(25, '2', '1', '25', '', '', '', '5', '45', 'Kualitas dan Kuantitas Penduduk Indonesia  dan Dunia', 'Sariyunus, S.Si', 'siswa mendapat materi baru dan langsung karyawan BPS yang telah melakukan berbagai survei di bidang kependudukan  di Indonesia', '2018-12-12', '2018-12-12', '86000', 'Tia-lap.geust teacher ganjil.docx', ''),
(26, '2', '2', '24', '', '', '', '', '45', 'Kualitas dan Kuantitas Penduduk Indonesia  dan Asia', 'Muhammad Rizqi', 'siswa mendapat materi baru dan langsung mahasiswa STIS yang telah melakukan berbagai survei di bidang kependudukan  di Indonesia', '2019-01-09', '2019-01-09', '86000', 'Tia-lap.geust teacher genap.docx', ''),
(27, '3', '2', '3', '', '', '', '16', '60', 'Kesehatan Reproduksi Remaja', 'Muaddah, S.SiT., S.Pd', 'Untuk menambah wawasan tentang kesehatan reproduksi dan juga bisa mengetahui cara mencegah berbagai penyakit dalam kesehatan reproduksi', '2019-01-17', '2019-01-17', '90', '', ''),
(28, '3', '1', '7', '', '', '', '16', '60', 'Pencak Silat', 'Yusliadi', 'Membentuk kepribadian yang Ksatria, berani, disiplin serta bertanggung jawab yang tinggi', '2018-12-06', '2018-12-06', '90', '', ''),
(29, '3', '1', '7', '', '', '', '28', '21', 'Procedure text', 'Muliani', 'Mendiskusikan konsep prosedur text dan menuliskan teks prosedur sehingga siswa mampu membandingkan fungsi sosial, struktur teks dan fitur bahasa teks berbentuk procedure.', '2018-10-15', '2018-10-15', '0', 'LAPORAN KEGIATAN GUEST TEACHER-razi.docx', ''),
(31, '1', '2', '19', '', '', '', '37', '49', 'Rangkaian Listrik', 'Kiki Mustika', 'Mengenal perbedan cara kerja Rangkaian listrik seri, paralel dan campuran', '2019-01-17', '2019-01-17', '100000', 'Laporan Guest Teacher_Rancangan dan Laporan.docx', ''),
(32, '1', '2', '17', '', '', '', '41', '8', 'Semangat Kerja (Perlunya Memenuhi Kebutuhan Hidup)', 'Zuriyatina', 'Munculnya empati dan rasa menghargai terhadap orang lain dan menumbuhkan semangat belajar yang maksimal demi kehidupan di kemudian hari', '2019-02-04', '2019-02-04', '90000', 'Laporan Guest Teacher PKN.docx', ''),
(34, '3', '2', '4', '', '', '', '21', '18', 'sistem pernapasan', 'Arief Yanda', 'siswa mamapu menganalisis mekanisme pernapasan pada manusia', '2019-01-30', '2019-01-30', '86', '', ''),
(35, '3', '2', '4', '', '', '', '24', '51', 'Uji kadar cuka makan berdasarkan metose titrasi asam basa', 'Nanda Saputri, S.Pd', 'Tujuan dari  kegiatan ini untuk menambahkan semangat siswa dalam belajar kimia dan menumbuhkan rasa tanggung jawab siswa dalam setiap kelompok. Manfaat dari kegiatan ini, siswa mampu mendemonstrasikan ujia kadar cuka makan yang digunakan dalam kehidupan s', '2019-02-01', '2019-02-01', '86', 'LAPORAN TITRASI ASAM BASA.docx', ''),
(36, '3', '2', '1', '2', '', '', '14', '47', 'Mengenal hikayat', 'Rasyidin, S.Sn., M.Sn.', 'Siswa dapatmengenal hikayat khususnya hikayat Aceh', '2019-02-08', '2019-02-08', '100', 'LAPORAN-GUEST-TEACHER-hikayat.doc', ''),
(37, '3', '2', '1', '', '', '', '15', '26', 'Sistem Pertidaksamaan Dua Variabel', 'Rahmayani, S.Pd', 'Siswa mampu menggunakan software Geogebra dalam menyelesaikan masalah yang berkaitan dengan Sistem Pertidaksamaan Dua Variabel ', '2019-02-13', '2019-02-13', '100000', 'geogebra.docx', ''),
(38, '3', '2', '3', '', '', '', '28', '34', 'analytical exposition text', 'Asnawi', 'siswa mampu menulis teks analytical exposition berdasarkan materi yang diperoleh', '2019-02-01', '2019-02-01', '100', '', ''),
(39, '2', '2', '20', '21', '', '', '3', '12', 'JOB', 'Aida Zurisma', 'siswa mampu mengetahui salah satu pekerjaan yang ada disekitar sekolah dan mengetahui seluk beluk pekerjaan tersebut', '2019-04-25', '2019-05-02', '150.000', 'guest teacher.docx', ''),
(40, '1', '2', '13', '', '', '', '39', '50', 'Alat ukur panjang', 'Rohani', 'Diharapkan setelah siswa mendapat pembelajaran dari guru tamu, siswa dapat mengetahui bahwa apa yang mereka pelajari di sekolah memang sering digunakan dalam kehidupan sehari-hari. Dalam hal ini, siswa dapat mengetahui alat ukur yang digunakan penjahit. S', '2019-02-19', '2019-02-19', '85000', 'LAPORAN-GUEST-TEACHER-NURLAILI (PENJAHIT).docx', ''),
(41, '2', '2', '24', '', '', '', '', '10101070', 'Sharing is Caring (BIMKOS)', 'M. Ikram Mirwan & M. Fariz Albar Nabudi ', 'Tujuan dari kegiatan ini adalah untuk meningkatkan rasa kepedulian dan kepemilikan siswa terhadap sekolah melalui diskusi santai bersama alumni. Selain itu, siswa didorong untuk memiliki tujuan dan target masa depan.', '2019-01-21', '2019-01-21', '0', 'Laporan Guest Teacher Bimkos Kelas IX Kutai.docx', ''),
(42, '2', '2', '25', '', '', '', '', '67', 'Sharing is Caring (BIMKOS)', 'Para alumni SMA Sukma Bangsa Bireuen angkatan 2018', 'Tujuan dari kegiatan ini adalah untuk meningkatkan rasa kepedulian dan kepemilikan siswa terhadap sekolah melalui diskusi santai bersama alumni. Selain itu, siswa didorong untuk memiliki tujuan dan target masa depan.', '2019-01-28', '2019-01-28', '0', 'Laporan Guest Teacher Bimkos Kelas IX Samsai.docx', ''),
(43, '2', '1', '24', '', '', '', '6', '11', 'Pengolahan data statistik', 'Sari Yunus, S.Si.', 'Memberikan pemahaman kepada para siswa bahwasanya data primer yang diambil oleh pihak BPS dapat dijadikan bahan data untuk pengambilan kebijakan pemerintah.', '2018-11-29', '2018-11-29', '83000', 'Laporan Guest Teacher Math kelas 9 kutai.docx', ''),
(44, '2', '2', '24', '', '', '', '4', '41', 'Asam, Basa, dan Garam', 'Indra', 'a.	Tujuan  â€¢	Memberikan motivasi dan inspirasi kepada siswa â€¢	Membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guest teacher yang bersangkutan â€¢	Mengubah mindset siswa tentang seoarang guru hanyalah mereka yang mengajar di se', '2019-02-12', '2019-02-12', '0', 'LAPORAN GUEST TEACHER IPA Fisika Semester Genap  2018-2019.docx', ''),
(45, '2', '1', '22', '', '', '', '9', '35', 'Pengolahan bahan pangan serealia, kacang-kacangan dan umbi menjadi makanan atau minuman', 'Desi Arisna', 'Tujuan kegiatan ini adalah untuk meningkatkan kualitas pembelajaran,  memberikan ilmu dan pengalaman baru untuk siswa dalam proses mengolah kacang kedelai menjadi susu kedelai dengan berbagai rasa', '2018-10-22', '2018-10-22', '106000', 'Laporan Guest Teacher SMP .docx', ''),
(46, '3', '2', '5', '6', '7', '', '12', '25', 'Mawaris', 'Ustazah Syafridah', 'Siswa memahami manfaat dan tujuan mempelajari ilmu faraid serta dapat menghitung pembagian harta warisan.', '2019-02-28', '2019-02-28', '100', '', ''),
(47, '3', '2', '1', '', '', '', '23', '39', 'Penerapan hukum Newton pada konstruksi jalan dan jembatan', 'Muthmainnah, S.T, M.T', 'menambah wawasan siswa tentang penerapan hukum Newton dalam perencanaan konstruksi jalan dan jembatan', '2019-02-16', '2019-02-16', '100', '', ''),
(48, '2', '1', '22', '', '', '', '3', '69', 'Present Continuous Tense', 'Maria Syuhada', 'ïƒ˜	Kegiatan ini bertujuan untuk mengajarkan kepada siswa tentang materi present continuous serta mengaplikasikannya dalam kehidupan sehari-hari.', '2018-10-22', '2018-10-22', '0', 'Laporan Guest Teacher SMP .docx', ''),
(49, '3', '1', '3', '', '', '', '28', '34', 'Hope vs Wish', 'Maulina Sari', 'Kegiatan ini bertujuan untuk mengajarkan kepada siswa tentang perbedaan penggunaan â€œhopeâ€ and â€œwishâ€. Melalui kegiatan ini siswa diharapkan bisa menggunakan kata-kata â€œhopeâ€ and â€œwishâ€ dengan tepat dan dapat mengaplikasikannya dalam kehidu', '2018-10-17', '2018-10-17', '0', 'Laporan Guest Teacher SMA.docx', ''),
(52, '2', '2', '22', '', '', '', '6', '38', 'gradien/kemiringan', 'Sulaiman', 'Menambah pemahaman siswa dalam mengaplikasikan materi kemiringan/gradien dalam kehidupan nyata seperti dalam membuat atap rumah. Selain itu, siswa juga dapat mendengarkan langsung paparan yang disampaikan oleh narasumber yang terlibat langsung dengan bida', '2019-03-20', '2019-03-20', '91.000', 'Laporan Guest Teacher bab kemiringan.docx', ''),
(53, '1', '2', '19', '', '', '', '33', '58', 'Sejarah Rasulullah Saw', 'Zahratun Nabila', 'Memberikan motivasi dan inspirasi kepada siswa. Membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guru tamu yang bersangkutan. Mengubah mindset siswa tentang seorang guru hanyalah mereka yang mengajar di sekolah atau bimbingan belaj', '2019-04-11', '2019-04-11', '91000', 'RIVANDA-LAPORAN GUEST TEACHER -SEJARAH NABI MUHAMMAD SAW.doc', ''),
(54, '1', '2', '17', '', '', '', '39', '36', 'Bangun Ruang', 'Muthmainnah', '1. Siswa mampu memahami bentuk-bentuk bangun ruang dengan baik, 2. Siswa mengetahui penerapan dari materi yang dipelajari dalam kehidupan sehari-hari', '2019-02-04', '2019-02-04', '90.000', 'Laporan Guest Teacher Matematika Kelas V (smt 2).doc', ''),
(55, '1', '2', '13', '', '', '', '35', '50', 'Pramuka', 'Yusrizal', 'Diharapkan setelah siswa mendapat pembelajaran dari guru tamu, siswa dapat mengenal kegiatan kepramukaan.', '2019-04-18', '2019-04-18', '90000', 'LAPORAN-GUEST-TEACHER-NURLAILI (PRAMUKA).docx', ''),
(56, '1', '2', '17', '', '', '', '42', '40', 'membuat boneka dari kaos kaki', 'Fitri', 'Mengetahui teknik yang benar dalam menjahit dan ïƒ˜	Menambah  pengalaman siswa dalam membuat karya seni kerajinan tangan', '2019-02-05', '2019-02-05', '83.000', 'LAPORAN GUEST TEACHER SBK KLS 5.docx', ''),
(57, '3', '2', '2', '', '', '', '29', '65', 'mitigasi dan adaptasi bencana alam', 'Dikky Setiadi, S.Pd', 'ïƒ˜	Siswa mampu menerapkan dan mengaplikasikan sikap antisipatif dalam mengahadapi bencana alam', '2019-04-24', '2019-04-24', '86000', 'LAPORAN GUEST TEACHER GEO YUNDA.docx', ''),
(58, '2', '1', '24', '25', '', '', '8', '70', 'Penerapan Nilai-nilai Pancasila dalam Kehidupan Bermasyarakat, Berbangsa dan Bernegara', 'Muhammad Fuadi, S.Sos', 'ïƒ˜	Siswa mampu menerapkan nilai-nilai pancasila dalam kehidupan bermasyarakat, berbangsa dan bernegara', '2018-11-06', '2018-11-21', '100.000', '', ''),
(59, '1', '2', '10', '', '', '', '39', '19', 'Praktik jual beli menggunakan mata uang rupiah', 'Saifannur', 'agar siswa dapat lebih memahami cara menggunakan uang dan dapat mempraktikkannya ke dalam kehidupan sehari-hari', '2019-04-15', '2019-04-15', '79000', 'V_20190415_083550.mp4', ''),
(60, '3', '2', '3', '4', '', '', '14', '43', 'bermain drama', 'Dewi Karwina, S.Pd.', 'mementaskan drama', '2019-04-13', '2019-04-13', '100.000,00', 'laporan guest teacher bahasa indonesia 1.docx', ''),
(61, '1', '1', '10', '', '', '', '39', '19', 'Perkalian dan pembagian dan sosialisasi makanan sehat', 'Saifanur (Bang Ipan)', '-	Mengenalkan siswa tentang kaitan antara materi perkalian dan pembagian dengan menyajikan makanan.  -	Mensosialisasikan pada siswa tentang makanan dan minuman yang berbahaya untuk di konsumsi oleh anak-anak.', '2018-12-12', '2018-12-12', '90.000', 'LAPORAN GUEST TEACHER kelas 2 Durio.docx', ''),
(62, '1', '1', '15', '', '', '', '36', '29', 'Membuat Thimphan Makanan Khas Aceh', 'Ibu Ana', 'Siswa dapat mengenal budaya daerah sendiri melalui makanan khas daerahnya ', '2018-12-12', '2018-12-12', '80.000', 'GUEST TEACHER HUSNUL.docx', ''),
(63, '1', '2', '15', '', '', '', '37', '29', 'Keanekaragaman Hayati pada Ekosistem Sawah', 'Bapak Lukmanul Hakim S.P', 'dapat menambah wawasan siswa mengenai budidaya tanaman padi dan Agroekosistemnya.', '2019-05-20', '2019-05-20', '85.000', 'GUEST TEACHER HUSNUL.docx', ''),
(64, '1', '1', '12', '', '', '', '35', '48', 'Siklus Hidup Nyamuk', 'Marzuki, SKM', 'Siswa dapat memahami dan menuliskan siklus/tahapan  hidup nyamuk.', '2018-12-10', '2018-12-10', '100.000', 'LAPORAN KEGIATAN GUEST TEACHER 3 ADENIUM SIKLUS NYAMUK.docx', ''),
(65, '3', '2', '3', '', '', '', '32', '31', 'Peran Bawaslu dalam Pilpres dan Pileg 2019 serta situasi terkini masyarakat terkait dua event tersebut', 'Rifki Maulana (Founder Balai Baca, Staff Bawaslu Kota Juang)', 'Siswa dapat mengetahui dan memahami peran dari Bawaslu dalam Pileg dan Pilpres serta berbagai situasi  kondisi sosiologis masyarakat di Bireuen dimasa kampanye Pilpres dan Pileg', '2019-05-08', '2019-05-08', '0', '', ''),
(66, '1', '2', '12', '', '', '', '35', '48', 'Pramuka', 'Yusrizal', 'Siswa dapat mengetahui tentang pramuka dan beberapa kegiatan dalam pramuka.', '2019-05-04', '2019-05-04', '86.000', 'LAPORAN KEGIATAN GUEST TEACHER PRAMUKA.docx', ''),
(67, '1', '1', '8', '', '', '', '41', '53', 'Kasih sayang dalam keluarga ( Melalui kegiatan Mendongeng)', 'Ahmad', 'Dengan mendengarkan dongeng yang disampaikan guru tamu siswa memahami bagaimana hubungan kasih sayang antara orang tua dan anak atau sebaliknya.', '2018-11-12', '2018-11-12', '100.000,00', '', ''),
(68, '1', '2', '12', '', '', '', '34', '68', 'Break Time', 'Novi Susanti, S.Pd', 'a.	Tujuan  1.	Memberikan motivasi dan inspirasi kepada siswa. 2.	Membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guru tamu yang bersangkutan. 3.	Mengubah mindset siswa tentang seorang guru hanyalah mereka yang mengajar di sekolah ', '2019-04-09', '2019-04-09', '85.000', 'NAULA_LAPORAN GUEST TEACHER.doc', ''),
(69, '1', '1', '8', '', '', '', '41', '53', 'Kasih sayang dalam keluarga ( Melalui kegiatan Mendongeng)', 'Ahmad', 'Kegiatan iniKegiatan ini bertujuan untuk memberi gambaran kepada siswa tentang besarnya kasih sayang dan pengorbanan orang tua kepadanya melalui media dongeng. Manfaat dari kegiatan ini yaitu memberi pesan kepada siswa tentang pentingnya hubungan keluarga', '2018-09-12', '2018-09-12', '100.000,00', 'WhatsApp Image 2019-08-21 at 15.16.46.jpeg', ''),
(70, '3', '3', '7', '', '', '', '15', '76', 'Aplikasai Jarak Pada Geometri Ruang ', 'Arsitektur (Miswari)', 'siswa menemukan manfaat mempelajari materi geometri ruang dalam aplikasi kehidupan seperti seorang arsitek merancang bangunan atau tukang bangunan yang membuat bangunan', '2019-08-12', '2019-08-12', '100000', '', ''),
(71, '3', '3', '26', '7', '', '', '20', '23', 'Sejarah perjuangan mempertahankan kemerdekaaan Indonesia', 'Pak Veteran', 'Siswa mengetahui langsung dari para saksi kisah para pejuang zaman dahulu didalam mempertahankan kemerdekaan', '2019-08-23', '2019-08-23', '100000', 'Laporan Guest Teacher PPKN koto kls X.docx', ''),
(72, '3', '3', '1', '', '', '', '17', '56', 'Wawasan Nusantara dalam konteks NKRI', 'Yustia Septiana', 'Siswa mengetahui peran warga negara dalam mengimplementasikan wawasan nusantara', '2019-10-09', '2019-10-09', '100.000', '', ''),
(73, '3', '3', '3', '3', '', '', '14', '78', 'Mengelola informasi dalam ceramah', 'Teungku Adzan', 'Siswa mampu mengidentifikasi permaslahan aktual yang disajikan dalam ceramah', '2019-09-23', '2019-09-23', '100.000', 'LAPR-2019-Guest-Teacher-SMA 19-20.docx', ''),
(74, '3', '3', '7', '', '', '', '29', '65', 'manfaat penginderaan jauh dalam bidang kemiliteran', 'tentara (TNI-AD)', 'menambah pengetahuan siswa mengenai manfaat penginderaan jauh dalam bidang kemiliteran', '2019-10-29', '2019-10-29', '100.000', 'LAPORAN GUEST TEACHER PENGINDERAAN JAUH.docx', ''),
(75, '3', '3', '2', '1', '', '', '12', '25', 'Manasik haji', 'Tengku Khaidir', 'Siswa dapat mempraktekkan ibadah haji sesuai materi yang telah dipelajari', '2019-10-16', '2019-10-16', '100.000', 'Ibadah Haji oleh Tengku khaidir.docx', ''),
(76, '2', '3', '41', '', '', '', '8', '70', 'Sumpah Pemuda dalam Bingkai Bhineka Tunggal Ika', 'Zakiatul Ula', 'Siswa mampu menerapkan semangat sumpah pemuda dalam kehidupan berbangsa, bernegara dan bermasyarakat.', '2019-08-07', '2019-08-07', '100.000', 'Laporan Guest Teacher PPKN koto kls VIII.docx', ''),
(78, '3', '4', '4', '', '', '', '24', '51', 'Membuat larutan dengan konsentrasi tertentu', 'Anna Zikrina S.Pd', 'Siswa mampu membuat larutan kimia dari padatan yang telah di sediakan oleh guru. ', '2019-08-09', '2019-08-09', '100.000', 'LAPORAN guest teacher larutan.docx', ''),
(79, '2', '3', '39', '40', '', '', '11', '16', 'TIK_Mengelola paragraf dalam program aplikasi Pengolah Kata', 'Muhammad Dahlan', 'Tujuan: Kegiatan ini bertujuan untuk meningkatkan kualitas program pembelajaran yang sesuai dengan kehidupan sehari-hari melalui pargraf yang dirangkum dari pengalaman narasumber tinggal dan belajar di Jepang.', '2019-07-23', '2019-07-23', '100.000', 'Guest Teacher TIK Mengetik paragraf di Ms. Word Kelas VII_Juli 2019.docx', ''),
(80, '3', '3', '1', '', '', '', '22', '34', 'Descriptive Text about historical place', 'Sejarawan', 'Siswa mendapatkan informasi tentang tempat/bangunan bersejarah dan mampu menuliskannya dalam bentuk teks deskriptif', '2019-09-09', '2019-09-09', '100.000', 'Laporan Guest Teacher SMA kelas X IPA.docx', ''),
(81, '2', '3', '42', '41', '', '', '3', '69', 'Instruction and Instruction', 'Petugas Satlantas', 'Siswa mampu mengenali peraturan dalam berlalu lintas serta mampu mengkomunikasikannya dalam bahasa inggris', '2019-07-31', '2019-07-31', '100.000', 'Laporan Guest Teacher instruction & prohibition SMP 19-20.docx', ''),
(82, '2', '4', '40', '', '', '', '3', '69', 'Job Description', 'Chef', 'Siswa mampu memahami tentang berbagai macam pekerjaan', '2020-02-12', '2020-02-12', '100.000', '', ''),
(83, '2', '4', '39', '40', '', '', '5', '75', 'interaksi sosial dan lembaga sosial', 'Hamdani, Hasanuddin Usman', 'Siswa dapat memahami tugas lembaga sosial dalam hal ini lembaga politik, dan membedakan fungsi eksekutif, legislatif dan yudikatif', '2020-01-13', '2020-01-18', '100.000', '', ''),
(84, '2', '3', '41', '42', '', '', '5', '75', 'Mobilitas sosial', 'Nanda Fatma, Adi Sutrisno', 'siswa belajar langsung dari guru tamu tentang pengalaman guru tamu melakukan mobilitas sosial secara dirncanakan atau tidak', '2019-07-29', '2019-08-03', '100.000', '', ''),
(85, '1', '3', '36', '', '', '', '35', '71', 'Teknik membaca puisi', 'Rasyidin, M.Sn', 'Siswa mampu menguasai Teknik membaca puisi meliputi ekpresi, mimik wajah, dan intonasi membaca  puisi.', '2019-08-19', '2019-08-19', '100.000', 'Laporan Kegiatan Guest Teacher Kelas V Jambee Teknik membaca puisi.docx', ''),
(86, '2', '3', '42', '41', '', '', '10', '74', 'Apresiasi seni tari', 'Candra', 'Meningkatkan wawasan dan motivasi siswa dalam berkarya seni tari. ', '2019-07-31', '2019-07-31', '100.000', 'LAPORAN GUEST TEACHER SENI BUDAYA.docx', ''),
(87, '2', '3', '44', '43', '', '', '4', '4', 'Rangkaian listrik', 'Nurjannah, S.Pd', 'Menjadikan pembelajaran materi rangkaian listrik lebih menarik dengan cara mengajar guest teacher yang fun dan menjadikan belajar materi listrik ini terasa mudah', '2019-08-19', '2019-08-29', '100.000', 'Laporan Guest Teacher IPA Terpadu Ainal kls IX.docx', ''),
(88, '1', '3', '33', '', '', '', '40', '72', 'Kesehatan gigi dan mulut', 'Agustina', 'Tujuan: Untuk meningkatkan pengetahuan, sikap, dan kemampuan anak untuk berperilaku hidup sehat dibidang kesehatan gigi dan mulut yang mencakup; Mampu memelihara kesehatan gigi dan mulut, mampu mencegah terjadinya penyakitgigi dan mulut. Manfaat dar kegia', '2019-08-20', '2019-08-20', '100.000', 'LAPORAN GUEST TEACHER.docx', ''),
(89, '2', '4', '41', '42', '', '', '4', '4', 'Getaran, gelombang dan bunyi', 'Ivan Virdaus, A.Md', 'Menambah motivasi dan inspirasi bagi siswa. Memberikan pemahaman aplikasi materi getaran, gelombang dan bunyi di laut', '2020-01-21', '2020-02-12', '100.000', '', ''),
(90, '3', '3', '4', '', '', '', '23', '80', 'Kesetimbangan benda tegar', 'Maimunah, S.Pd', 'Siswa dapat memahami kesetimbangan benda tegar dan aplikasinya', '2019-09-26', '2019-09-26', '100.000', 'LAPORAN GUEST TEACHER HUKUM HOOKE.docx', ''),
(91, '3', '3', '4', '', '', '', '15', '77', 'Transformasi Geometri', 'Laiyina Ukhti,S. Pd., M. Si', 'Siswa dapat memahami pemanfaatan transformasi geometri dalam kehidupan sehari-hari. ', '2019-11-08', '2019-11-08', '100.000', 'LAPORAN guest teacher matematika.docx', ''),
(92, '1', '3', '27', '', '', '', '35', '49', 'Profesi ', 'Drg. Sri Artati', 'Mempelajari kesehatan gigi dan mulu', '2019-09-02', '2019-09-02', '100.000', 'LAPORAN GUEST TEACHER.docx', ''),
(93, '1', '1', '9', '', '', '', '35', '30', 'mengenal profesi pemangkas rambut', 'Diah', 'mengenal profesi pemangkas rambut dengan lebih mendalam sehingga terbuka pemikiran mereka bahwa cita â€“ cita tidak sebatas menjadi seorang dokter atau tentara', '2018-12-12', '2018-12-12', '90.000', 'LAPORAN  GT Pemangkas rambut (I Mangifera indica).docx', ''),
(94, '1', '4', '27', '', '', '', '41', '49', 'Peristiwa Alam', 'Tim Pemadam kebakaran', 'Membekalkan siswa dengan  pengetahuan tentang tindakan keselamatan ketika terjadi kebakaran', '2020-03-03', '2020-03-03', '100.000', '', ''),
(95, '1', '3', '29', '', '', '', '42', '68', 'Permainan Tradisional Aceh', 'Anwar Mizan', 'Siswa diharapkan mampu megenal dan memainkan permainan tradisional Aceh yang hampir punah. Maka, siswa akan mendapatkan pengetahuan yang lebih banyak dan bisa memainkan kembali permainan tersebut dilingkungannya. ', '2019-10-07', '2019-10-07', '92000', '', ''),
(96, '1', '3', '37', '', '', '', '34', '68', 'Cerita Dongeng', 'Yustia Septiana, S.Pd', 'Siswa diharapkan mampu mengenal berbagai macam cerita dongen dan mengetahui cara menyampaikan dongeng dengan menarik. Maka, siswa bisa menggunakan berbagai macam tips tentang penyampaian dongeng yang dikemas dengan cara yang menarik.', '2019-11-06', '2019-11-06', '92000', '', ''),
(97, '1', '3', '28', '', '', '', '35', '19', 'kebersihan tubuhku khususnya kesehatan gigi', 'drg. Sri Hartati', 'siswa mengetahui cara membersihkan gigi yang baik dan benar dan memahami tujuan dari menjaga kebersihan dan kesehatan gigi. siswa memahami tentang pertumbuhan gigi.', '2019-08-21', '2019-08-21', '86.000', 'LAPORAN GUEST TEACHER kelas 1B.docx', ''),
(98, '1', '4', '28', '', '', '', '35', '19', 'peristiwa alam tentang bencana kebakaran', 'Ridwan', 'siswa mengetahui bagaimana cara menghadapi bencana kebakaran khususnya cara memadamkan api dan cara mencegah terjadinya kebakaran', '2020-03-17', '2020-03-17', '100.000', '', ''),
(100, '1', '3', '37', '38', '', '', '37', '30', 'Perkembangbiakan Makhluk Hidup', 'Hidayatul Munawarah, M. Pd.', 'Siswa dapat memahami cara perkembangbiakan tumbuhan dengan cara hidroponik . Siswa dapat menanam tumbuhan hidroponik.', '2019-07-29', '2019-07-30', '100.000', 'LAPORAN  GT Hidroponik.docx', ''),
(101, '2', '3', '43', '44', '', '', '3', '12', 'Procedure text', 'Mahmudi', 'siswa diharapkan mampu menangkap secara langsung bentuk text procedure yang dikemukakan oleh fotografer. dalam hal ini, fotografer akan menjelaskan teknik pengambilan gambar. ', '2019-08-05', '2019-08-09', '100,000.00', 'MUDI.docx', ''),
(102, '1', '3', '37', '38', '', '', '37', '30', 'Perkembangbiakan Manusia', 'Bidan Desa', 'Siswa memahami proses perkembangbiakan makhluk hidup dan cara memelihara organ reproduksi', '2019-08-26', '2019-08-27', '100.000', '', ''),
(103, '1', '3', '37', '38', '', '', '37', '30', 'Penyesuaian Mahkluk Hidup terhadap Lingkungan', 'Animal Bireuen Community', 'siswa dapat mengetahui cara hewan beradaptasi dengan lingkungan dari pengalaman penyayang binatang di Animal Bireuen Community', '2019-09-09', '2019-09-10', '100.000', '', ''),
(105, '1', '4', '37', '38', '', '', '37', '30', 'Listrik', 'Pegawai PLN', 'siswa dapat mengetahui cara merangkai listrik dalam rangkaian tertutup', '2020-01-27', '2020-02-07', '100.000', '', ''),
(106, '1', '3', '33', '34', '', '', '35', '8', 'Mengenal Alat-alat pertanian', 'Tukang giling padi keliling', 'Siswa mengenal alat-alat pertanian dan mengetahui proses penggilingan padi hingga menjadi beras', '2019-10-13', '2019-10-19', '100000', '', ''),
(107, '3', '3', '4', '', '', '', '21', '18', 'Dunia tumbuhan', 'yulia rahmawati', 'siswa mampu memahami dunia tumbuhan', '2019-08-09', '2019-08-09', '100.000', '', ''),
(108, '1', '4', '33', '', '', '', '36', '8', 'Makanan tradisional', 'Asma', 'Siswa mengetahui cara mengolah pulut panggang sebagai salah satu makanan tradisional aceh', '2020-01-12', '2020-01-18', '100000', 'Laporan Guest Teacher Culture (November 2019).docx', ''),
(110, '2', '3', '43', '', '', '', '6', '79', 'Bangun Ruang Sisi Lengkung', 'Ikhsan (Petugas SPBU)', 'Siswa mengetahui penerapan Bangun Ruang Sisi Lengkung dalam kehidupan sehari-hari', '2019-08-21', '2019-08-22', '100.000', '', ''),
(111, '2', '4', '41', '42', '', '', '6', '79', 'Statistika', 'Sari Yunus (Pegawai BPS)', 'Siswa mengetahui beberapa metode mengumpulkan data serta mengolah data yang digunakan oleh petugas BPS saat melakukan survey ', '2019-10-01', '2019-10-05', '100.000', '', ''),
(112, '1', '3', '34', '35', '', '', '40', '81', 'Pencak Silat', 'erlina', 'siswa dapat mengetahui teknik dasar pencak silat dan siswa dapat melakuknya dengan menggunakan teknik yang benar', '2019-12-11', '2019-12-11', '100.0000', '', ''),
(113, '1', '3', '31', '32', '', '', '35', '82', 'PERKEMBANGBIAKAN TUMBUHAN (MEMBUAT TEMPE DARI KACANG KEDELAI)', 'FAUZIAH (KAK YAH)', 'Mengetahui tahapan pembuatan tempe dan manfaatnya untuk kesehatan tubuh', '2019-09-05', '2019-09-09', '100.000', 'LAPORAN GUEST TEACHER_3.doc', ''),
(114, '1', '3', '35', '36', '', '', '41', '57', 'Hak dan kewajiban dalam masyarakat', 'Muslem', 'Siswa mampu memahami tentang hak dan kewajiban di dalam masyarakat dengan cara mendengarkannya langsung dari pak geuchik', '2019-09-16', '2019-09-16', '100.000', '', ''),
(115, '1', '4', '32', '', '', '', '35', '82', 'Tanamkan pengetahuan pertolongan pertama pada anak-anak', 'Taufik Hidayat (pmi bireuen)', 'Agar siswa mengetahui cara mempertahankan penderita tetap hidup atau terhindar dari maut.', '2019-01-05', '2019-01-05', '100.000', '', ''),
(116, '1', '3', '38', '', '', '', '39', '50', 'Bilangan bulat negatif', 'Elga Safitri, S.Pd', 'Mendapat pengetahuan dan metode baru dari guru tamu', '2019-07-25', '2019-07-25', '100000', 'LAPORAN-GUEST-TEACHER-NURLAILI (BILANGAN BULAT NEGATIF).docx', ''),
(117, '1', '4', '37', '', '', '', '39', '50', 'Statistik', 'Karlina Dewi', 'Siswa dapat mengetahui tentang data', '2020-01-16', '2020-01-16', '100000', '', ''),
(118, '2', '3', '40', '39', '', '', '4', '83', 'Sumber Energi (Zat Gizi dalam Makanan)', 'Ahli Gizi', 'Untuk memberikan pemahaman bagi siswa tentang kandungan gizi di dalam berbagai jenis makanan dan fungsi  zat gizi  makanan bagi tubuh', '2019-09-11', '2019-09-11', 'Rp 100.000', '', ''),
(120, '1', '3', '36', '35', '', '', '42', '40', 'motif hias geometris dan non geometris', 'Zainal , S.Pd', 'siswa mampu membuat sendiri motif hias serta dapat mempercantik  desin interior suatu ruangan ( kelas ).', '0000-00-00', '0000-00-00', '100.000', '', ''),
(121, '1', '4', '38', '', '', '', '42', '40', 'Tari nusantara', 'Candra', 'siswa mampu mengetahui ragam gerak dasar menari dalam beberapa tarian di sumatera.', '0000-00-00', '0000-00-00', '100.000', '', ''),
(122, '1', '3', '37', '38', '', '', '35', '53', 'Menulis teks informasi (Berita)', 'Muhajir Juli', 'siswa mampu menulis teks informasi dan memahami kemampuan berbahasa dengan pekerjaan kuli tinta', '2019-08-21', '2019-08-21', '1000.000', '', ''),
(123, '1', '4', '38', '37', '', '', '35', '53', 'menghayati peran (ekpresi, mimik dan intonasi)', 'guru teater', 'siswa mampu mengepresikan setiap peran dengan penghayatan dan mimik yang benar', '2020-01-28', '2020-01-28', '100.000,-', '', ''),
(124, '1', '3', '34', '', '', '', '35', '53', 'meyimpulkan informasi  yang di dengar tentang tema kesehatan', 'Muhammad Hafiz', 'siswa mampu menyimpulkan informasi yang di dengar tentang menjaga kesehatan diri', '2019-08-23', '2019-08-23', '100.000', '', ''),
(125, '2', '3', '44', '', '', '', '6', '11', 'Bangun Ruang Sisi Lengkung', 'M. Ihsan (Petugas SPBU)', 'Siswa mendapatkan informasi mengenai tatacara pengisian bahan bakar di Stasiun Pengisian Bahan Bakar Umum (SPBU) dan keterkaitannya dengan volume tangki  minyak.', '2019-08-30', '2019-08-30', '86000', '', ''),
(126, '2', '4', '44', '', '', '', '6', '11', 'Transformasi', 'Ruswin Agustya (Tim Rukyah Permata Hati)', 'memberikan pemahaman kepada siswa tentang hubungan transformasi dengan Alam Ghaib', '2020-01-31', '2020-01-31', '86000', '', ''),
(127, '1', '3', '36', '', '', '', '38', '36', 'Interaksi manusia dengan lingkungan', 'Bapak Fajri', '1. -	Siswa mampu memahami perbedaan interaksi manusia dengan lingkungan alam dan sosial, 2. -	Siswa mengetahui bagaimana cara perangkat desa berinteraksi dengan warga di lingkungan masyarakat.', '2019-11-19', '2019-11-19', '85.000', 'Laporan Guest Teacher IPS Kelas VB (smt 1).doc', ''),
(129, '3', '3', '1', '2', '', '', '14', '43', 'mengembangkan cerita rakyat (hikayat) ke dalam bentuk cerpen', 'Firdaus Adiannur', 'siswa mampu menulis cerpen berdasarkan cerita rakyat (Hikayat)', '2019-09-16', '2019-09-16', '100.000', '', ''),
(130, '3', '4', '7', '26', '', '', '14', '43', 'Menulis Surat Lamaran Kerja', 'Muhammad Dahlan', 'Tujuan: Kegiatan ini bertujuan untuk meningkatkan kualitas program pembelajaran melalui menulis surat lamaran pekerjaan dari pengalaman narasumber tinggal dan belajar di Jepang.', '2019-08-08', '2019-08-08', '100.000', 'laporan guest teacher surat lamaran kerja.docx', ''),
(131, '3', '3', '4', '3', '', '', '22', '32', 'Expressing opinions', 'Fitri', 'Students are able to express their opinion and give reasoning to support their opinions ', '2019-09-11', '2019-09-11', '100,000', 'PROPOSAL GUEST TEACHER BAHASA INGGRIS KELAS XI IPA.docx', ''),
(133, '2', '3', '43', '44', '', '', '1', '9', 'Zakat', 'BAZIS BIREUEN', 'Agar para siswa mengetahui Lembaga Zakat yang ada di daerahnya, dan mengetahaui tata laksana dari zakat tersebut', '2019-11-21', '2019-11-21', '100000', 'Laporan-Guest-Teacher - PAI Sem. Ganjil 2019-2020.docx', ''),
(134, '2', '4', '40', '39', '', '', '1', '9', 'Menghrmati Orang tua dan Guru', 'Tgk Zulfikar Abdullah', 'Agar para siswa mengetahui adab terhadap Orang tua dan Guru serta dapat mengamalkannya dalam kehidupan sehari-hari', '2020-02-18', '2020-02-20', '100000', '', ''),
(136, '2', '3', '39', '40', '', '', '7', '88', 'pengenalan gerakan dan pencegahan cedera dalam silat', 'wahyu ilham, s.pd', 'meningkatkan pengetahuan, sikap dan kemampuan anak untuk mengenal dan mempelajari tahapan gerakan serta pemahaman pencegahan cedera dalam silat', '2019-11-15', '2019-11-16', '100.000', 'LAPORAN KEGIATAN GUEST TEACHER silat.docx', ''),
(137, '1', '3', '37', '', '', '', '33', '58', 'Sedekah dan Infaq', 'Muhammad Rizki, S.H', 'Memberikan motivasi dan inspirasi kepada siswa, membuat proses pembelajaran lebih menarik dengan mendengar langsung dari guru tamu yang bersangkutan, mengubah mindset siswa tentang seorang guru hanyalah mereka yang mengajar di sekolah atau bimbingan belaj', '2019-08-26', '2019-08-26', '100.000', 'RIVANDA-SEDEKAH DAN INFAQ-GUEST TEACHER.doc', ''),
(138, '2', '3', '41', '42', '', '', '2', '66', 'Membuat poster', 'Mariam Chairunnisaak, S.Pd.', 'Siswa dapat membuat poster dengan baik dan benar', '2019-10-01', '2019-10-20', '100.000', 'LAPORAN-GUEST-TEACHER-poster.doc', ''),
(139, '2', '4', '41', '42', '', '', '2', '66', 'Berpidato dengan baik dan benar', 'Ust. Faisal', 'siswa dapat berpidato dengan baik dan benar', '2020-03-01', '2020-03-15', '100.000', '', ''),
(140, '3', '3', '4', '', '', '', '16', '60', 'Pertolongan Pertama', 'Muhammad Reza Fahlevi', 'mencegah terjadinya hal yang lebih buruk pada siswa / korban dan menenangkan penderita jika terjadi kecelakaan..', '2019-09-05', '2019-09-05', '100.000', 'Laporan_Guest Teacher PMI Penjasorkes.docx', ''),
(141, '3', '3', '2', '', '', '', '28', '21', 'Introducing self skill', 'Sukmasoviati, S.Pd.,M.TESOL.', 'Students are able to acknowledge himself/herself in order to recognize his/her true potencial. Students are also able to tell his/her talent to the others so that they can support in weakness and contribute in strengness.', '2019-09-11', '2019-09-11', '100,000', 'LAPORAN KEGIATAN GUEST TEACHER-razi-sukmasoviati 2019.docx', ''),
(142, '2', '3', '43', '44', '', '', '43', '67', 'Organisasi', 'Nurul Yana Daba', 'Menambah pengetahuan siswa mengenai organisasi-organisasi yang ada di sekitar Bireuen dan memperluas pandangan mereka tentang kehidupan orang-orang yang terpinggirkan, baik dalam hal ekonomi, sosial, maupun pendidikan.', '2019-09-10', '2019-09-11', '100.000', 'Laporan Guest Teacher Bimkos Kelas IX.docx', ''),
(143, '2', '3', '39', '40', '', '', '6', '38', 'Bilangan bulat dan pecahan', 'Zuhratul Jannah', 'memberikan pemahaman langsung terkait tema tentang bilangan bulat dan pecahan yang sangat banyak kaitannya dalam kehidupan disekeliling kita', '2019-11-07', '2019-11-07', '100.000', 'Laporan Guest Teacher bab 1 Bilangan bulat dan pecahan.docx', ''),
(144, '1', '3', '35', '', '', '', '36', '85', 'Sejarah berdirinya Kota Bireuen', 'Ria Faradipa, Amd.Keb', 'Menambah wawasan siswa pada mata pelajaran Culture dan Meningkatkan semangat belajar siswa', '2019-09-07', '2019-09-07', '90,000,-', 'LAPORAN GUEST TEACHER KELAS V GIRI PELAJARAN CULTURE  SEJARAH KOTA BIREUEN.docx', ''),
(145, '1', '3', '36', '', '', '', '37', '7', 'organ pencernaan manusia (gizi seimbang)', 'Dr.Nazirah MPH.M', 'menjelaskan organ pencernaan, menu gizi seimbang dan cara memelihara organ pencernaan sehingga terbebas dari gangguan atau penyakit pencernaan', '2019-11-08', '2019-11-08', '100,000', 'LAPORAN GUEST TEACHER KLS V Jambee.docx', ''),
(146, '1', '3', '35', '36', '', '', '37', '57', 'Makanan bergizi seimbang', 'dr. Nazirah', 'Siswa mampu memahami tentang makanan yang baik dikonsumsi untuk meningkatkan kecerdasan', '2019-10-18', '2019-10-18', '186.000,00', 'LAPORAN KEGIATAN GUEST TEACHER IPA.docx', ''),
(147, '1', '3', '31', '32', '', '', '33', '86', 'Makna Zikir dan Doa Setelah Shalat', 'TGK. HASYIMI', 'Dapat memahami Makna Zikir dan Doa setelai Shalat, Dapat mempraktekkan Tata cara Zikir dan Doa yang benar selesai Shalat. Manfaat setelah kegiatan Siswa jadi lebih semangat dalam berdoa dan berzikir, siswa lebih antusias dalam mengingat Bacaan Zikir', '2019-11-15', '2019-11-15', '100.000,-', '', ''),
(148, '2', '3', '44', '', '', '', '2', '3', 'Teks cerpen', 'Deni Putra', 'Siswa mampu menuls cerpen dari hasil pengalaman orang lain', '2019-11-20', '2019-11-20', '100.000', 'LAPR-2019-Guest-Teacher-SMP 19-20.docx', ''),
(149, '1', '3', '33', '', '', '', '34', '91', 'My Living Room', 'Fatimah Zuhra, S.Pd', 'Siswa dapat mengetahui berbagai macam benda yang terdapat di ruangan tamu dalam bahasa Inggris.', '2019-11-13', '2019-11-13', '86.000', 'LAPORAN KEGIATAN GUEST TEACHER.docx', ''),
(150, '1', '4', '36', '', '', '', '36', '87', 'Legenda Paya Nie', 'Adelina, S. Pd.', 'Peserta didik dapat mengetahui Legenda Paya Nie', '2019-11-06', '2019-11-06', '100.000', 'Laporan Guet Teacher Upload.docx', ''),
(151, '1', '3', '33', '', '', '', '36', '8', 'Makanan Tradisional Aceh', 'Hasni', 'ïƒ˜	Mengenal salah satu contoh kuliner Aceh yang cukup terkenal danïƒ˜	Menumbuhkan rasa cinta terhadap budaya daerah dan bangsa sendiri', '2019-11-15', '2019-11-15', '100000', '', ''),
(152, '2', '4', '40', '39', '', '', '6', '38', 'Bunga tabungan', 'banker', 'untuk memberikan pemahaman nyata kepada siswa terkait bank dan tabungan', '2020-03-04', '2020-03-04', '100.000', '', ''),
(153, '2', '4', '42', '41', '', '', '4', '83', 'IPA TERPADU', '-', 'Mengetahui cara bertanam hidroponik', '2020-01-15', '2020-01-15', '100.000', '', ''),
(154, '2', '4', '42', '41', '', '', '11', '16', 'Pengolahan Grafik di Microsoft Excel', 'Noviansyah (Polisi lalu lintas)', 'Tujuannya adalah dapat menggambarkan secara nyata tentang peran polisi dalam kehidupan sehari-hari serta bagaimana tingkat pelanggaran lalu lintas di Kabupaten Bireuen Tahun 2019. Selain itu diharapkan juga dapat menumbuhkan kesadaran siswa untuk tertib.', '2020-01-21', '2020-01-21', '100.000', '', ''),
(155, '3', '4', '2', '', '', '', '28', '21', 'Narrative', 'Abdul Munim, SPd.I.', 'Students are able to acknowledge Social function, generic structure and language feature of narrative text.', '2020-03-12', '2020-03-12', '100,000', '', ''),
(156, '3', '4', '26', '7', '', '', '12', '25', 'Mawaris', 'Ustazah Safrida', 'Siswa mengetahui cara menghitung warisan', '2020-03-13', '2020-03-13', '100.000', 'Guest Teacher Mawaris.docx', ''),
(157, '3', '4', '4', '', '', '', '24', '51', 'Uji daya hantar listrik pada buah jeruk nipis dan tomat', 'Ulul Azmi', 'siswa dapat mengetahui bahwa kandungan asam pada buah jeruk nipis dan tomat dapat menghantarkan arus listrik', '2020-01-28', '2020-01-28', '100.000,00', 'LAPORAN guest teacher daya hantar listrik.docx', ''),
(158, '3', '4', '4', '', '', '', '16', '60', 'Narkoba', 'Ismuhar & Ahzan', 'â€¢	Menunjukkan perilaku hidup sehat dengan tidak mengkonsumsi narkoba dan psikotropika', '2020-03-14', '2020-03-14', '100.000', 'Laporan_Guest Teacher BNN.docx', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `nip_guru` varchar(255) NOT NULL,
  `status_guru` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `id_jenjang`, `nama_guru`, `nip_guru`, `status_guru`) VALUES
(1, '3', 'Adhi Lesmana', '10060025', 'TIDAK AKTIF'),
(2, '2', 'Aftaul Musla', '10181008', 'TIDAK AKTIF'),
(3, '2', 'Agus Suarni', '10101066', 'TIDAK AKTIF'),
(4, '2', 'Ainal Mardhiah', '10130191', 'OJT'),
(5, '3', 'Alimuddin', '10101059', 'TIDAK AKTIF'),
(6, '1', 'Amarul Mukhtar', '10181002', 'TIDAK AKTIF'),
(7, '1', 'Asmaul Husna', '10131085', 'SDK'),
(8, '1', 'Asrita', '10101056', 'SDK'),
(9, '2', 'Basiran', '10081051', 'SDK'),
(10, '2', 'Bilkisti Resa S', '10156016', 'TIDAK AKTIF'),
(11, '2', 'Chandra Nurmansyah', '10101064', 'SDK'),
(12, '2', 'Cut Afrianti', '10101060', 'TIDAK AKTIF'),
(13, '1', 'Cut Hafsah', '10081088', 'SDK'),
(14, '2', 'Dhia Rahmat', '10151001', 'SDK'),
(15, '3', 'Dian Ferdiansyah', '10141001', 'SDK'),
(16, '2', 'Dwi Wulandary', '10081054', 'SDK'),
(17, '3', 'Emi Rosita', '10130194', 'TIDAK AKTIF'),
(18, '3', 'Erlinawati', '10071031', 'SDK'),
(19, '1', 'Erninawaty', '10101071', 'TIDAK AKTIF'),
(20, '3', 'Evans Rinaldi', '10141004', 'TIDAK AKTIF'),
(21, '3', 'Fachrurrazi', '10091053', 'SDK'),
(22, '3', 'Faisal', '10146006', 'SDK HONORER'),
(23, '3', 'Fanny Safrizal', '10131087', 'TIDAK AKTIF'),
(24, '3', 'Helka Pratiwi', '10176002', 'SDK'),
(25, '3', 'Helmiati', '10061019', 'SDK'),
(26, '3', 'Herlina Sari', '10081089', 'SDK'),
(27, '2', 'Hidayatul Munawarah', '12061009', 'TIDAK AKTIF'),
(28, '3', 'Hijriati Meutia', '10141003', 'SDK'),
(29, '1', 'Husnul Khatimah', '10166003', 'SDK'),
(30, '1', 'Ika Meutia', '10081044', 'SDK'),
(31, '3', 'Jamilah  Akbar', '10061013', 'SDK'),
(32, '3', 'Kartika Hakim', '10151003', 'SDK'),
(33, '1', 'Kawsarina', '10166009', 'TIDAK AKTIF'),
(34, '3', 'Mardiana', '10176005', 'OJT'),
(35, '2', 'Mariam Chairunnisaak', '10176007', 'TIDAK AKTIF'),
(36, '1', 'Marina Nova Wahyuni', '12101107', 'SDK'),
(37, '1', 'Martunis', '10121081', 'TIDAK AKTIF'),
(38, '2', 'Masyittah', '11121004', 'SDK'),
(39, '3', 'Meldawati', '10061015', 'SDK'),
(40, '1', 'Meutia Hesti Paldana', '10151004', 'SDK'),
(41, '2', 'Muhammad Edi Saputra', '10101065', 'TIDAK AKTIF'),
(42, '1', 'Muhammad Rizal', '10111075', 'TIDAK AKTIF'),
(43, '3', 'Mukhlisanur', '10121083', 'SDK'),
(44, '1', 'Munira', '10156010', 'TIDAK AKTIF'),
(45, '2', 'Mutia Lisa Purnama', '10091055', 'TIDAK AKTIF'),
(46, '2', 'Nazlyansyah', '10176003', 'TIDAK AKTIF'),
(47, '3', 'Noer Asiyah', '10151005', 'TIDAK AKTIF'),
(48, '1', 'Nurdiana', '10156017', 'OJT'),
(49, '1', 'Nurhilza', '10141005', 'SDK'),
(50, '1', 'Nurlaili ', '10111078', 'SDK'),
(51, '3', 'Nurul Aulia', '10186006', 'SDK'),
(52, '1', 'Nurul Hikmah', '10156018', 'TIDAK AKTIF'),
(53, '1', 'Putri Maulida', '10111076', 'SDK'),
(54, '1', 'Rahma Liza', '10176008', 'TIDAK AKTIF'),
(55, '1', 'Rahmi', '10181017', 'SDK'),
(56, '3', 'Rika Julia Koto', '10176009', 'TIDAK AKTIF'),
(57, '1', 'Rina Marhani', '10156003', 'TIDAK AKTIF'),
(58, '1', 'Rivanda', '10171001', 'SDK'),
(59, '1', 'Rizka Qonita', '10176011', 'SDK'),
(60, '3', 'Safrida', '10061010', 'SDK'),
(61, '2', 'Sufrida', '10061021', 'TIDAK AKTIF'),
(62, '1', 'Suhendri', '10161003', 'TIDAK AKTIF'),
(63, '1', 'Sulastri', '10176004', 'TIDAK AKTIF'),
(64, '2', 'Suriyanto', '10101062', 'TIDAK AKTIF'),
(65, '3', 'Yunda Nafsiah', '10181020', 'OJT'),
(66, '2', 'Noer Asiyah', '10151005@', 'SDK'),
(67, '2', 'Meidiana', 'Meidiana', 'SDK HONORER'),
(68, '1', 'Naula Aulia', '10186022', 'TIDAK AKTIF'),
(69, '2', 'Mardiana', '10176005@', 'OJT'),
(70, '2', 'Rika Julia Koto', '10176009@', 'TIDAK AKTIF'),
(71, '1', 'Ismayanti', '10196023', 'TIDAK AKTIF'),
(72, '1', 'Turangga Restu Ilvaly', '10196026', 'SDK'),
(73, '2', 'Nining Hasdiana', '10196024', 'TIDAK AKTIF'),
(74, '2', 'Nadia Ulfa', '10196025', 'TIDAK AKTIF'),
(75, '2', 'Syarifah Nurhayati', '10176010', 'TIDAK AKTIF'),
(76, '2', 'Rahmi', '10181017@', 'SDK'),
(77, '3', 'Vera Wahyuni', '11161003', 'OJT'),
(78, '3', 'Agus Suarni', '10101066@', 'TIDAK AKTIF'),
(79, '2', 'Herlina Sari', '10081089@', 'SDK'),
(80, '3', 'Nurdiana', '10156017@', 'OJT'),
(81, '1', 'Amrul Hakim', '10156009', 'SDK'),
(82, '1', 'Nining Hasdiana', '10196024@', 'TIDAK AKTIF'),
(83, '2', 'Husnul Khatimah', '10166003@', 'SDK'),
(84, '2', 'Nurdiana', '10156017#', 'OJT'),
(85, '1', 'Fera Yunita', '10196027', 'OJT'),
(86, '1', 'Norafianti', '10196028', 'TIDAK AKTIF'),
(87, '1', 'Sri Novayanti', '10196029', 'TIDAK AKTIF'),
(88, '2', 'M. Farhan Anshuri', '10196030', 'TIDAK AKTIF'),
(89, '3', 'Rika Julianti', '10196032', 'OJT'),
(91, '1', 'Maya Asoma', '10186011', 'TIDAK AKTIF'),
(93, '3', 'Agus Suarni MS', '10101066', 'TIDAK AKTIF'),
(94, '3', 'Maina Sara', '11071018', 'SDK'),
(95, '3', 'Hekal Febrian', '10196035', 'TIDAK AKTIF'),
(96, '3', 'Hayaturrahmi', '10206039', 'TIDAK AKTIF'),
(97, '3', 'Rahmi', '10181017@@', 'SDK'),
(98, '3', 'Rahmi,S.Pd.,Gr.', '10186017', 'SDK'),
(100, '3', 'Saiful Anwar', '10081067', 'NON SDK'),
(102, '3', 'Badlisyah', '10081057', 'NON SDK'),
(103, '3', 'Faisal M.Syah', '10081074', 'NON SDK'),
(104, '3', 'Ishak Abu Bakar ', '10071038', 'NON SDK'),
(105, '3', 'Jailani', '10081075', 'NON SDK'),
(106, '3', 'Jasmani', '10081058', 'NON SDK'),
(107, '3', 'Junaidi Ali', '10081076', 'NON SDK'),
(108, '3', 'Mahyeddin Rusli', '10081059', 'NON SDK'),
(109, '3', 'Mawardi', '10081078', 'NON SDK'),
(110, '3', 'Muhammad Ali Kemi', '10081060', 'NON SDK'),
(111, '3', 'Muhammad', '10081080', 'NON SDK'),
(112, '3', 'Muhammad Sulaiman', '-', 'NON SDK'),
(113, '3', 'Mulyadi', '10081081', 'NON SDK'),
(114, '3', 'Mukhlis', '12081050', 'NON SDK'),
(115, '3', 'M. Sanusi', '10081077', 'NON SDK'),
(116, '3', 'Nurhayati', '-', 'NON SDK'),
(117, '3', 'Rohani', '10081065', 'NON SDK'),
(118, '3', 'Rohana Ismail', '10191001', 'NON SDK'),
(119, '3', 'Ruslan', '10061030', 'NON SDK'),
(120, '3', 'Saifannur ', '10081066', 'NON SDK'),
(121, '3', 'Supriani Rasyid', '10081069', 'NON SDK'),
(122, '3', 'Syeh Mustafa Kamal', '10081085', 'NON SDK'),
(123, '3', 'Wardiah', '10081070', 'NON SDK'),
(124, '3', 'Zakaria Rasyid', '10111074', 'NON SDK'),
(125, '3', 'Zulkarnaini ', '10201005', 'NON SDK'),
(126, '1', 'Aderiana Masthura, S.Si.', '10206046', 'SDK HONORER'),
(127, '1', 'Arafah Nuzula, S.Mat.', '10206045', 'SDK HONORER'),
(128, '1', 'Ashil Ulayya, S.Pd.', '10206047', 'SDK HONORER'),
(129, '1', 'Dian Manya, S.Pd. ', '10206044', 'SDK HONORER'),
(130, '1', 'Desy Zuriyanti, S.Pd.', '10206049', 'SDK HONORER'),
(131, '3', 'Faisal, S.Pd.I', '10146006', 'SDK HONORER'),
(132, '1', 'Fitriani, S.E.', '10206043', 'SDK HONORER'),
(133, '2', 'Firdaus Adiannur, S.Pd.', '10206048', 'SDK HONORER'),
(134, '2', 'Husna, S.Pd.', '10206040', 'SDK HONORER'),
(135, '2', 'Intan Alia Yuskar, S. Pd.', '10206055', 'SDK HONORER'),
(136, '1', 'Liza Faradilla, S.Pd.', '10206050', 'SDK HONORER'),
(137, '3', 'Nizar Saputra, M.TESOL.', '10206052', 'SDK HONORER'),
(138, '1', 'Rasyidin, B.Is.Hons', '10206051', 'SDK HONORER'),
(139, '2', 'Sri Mulyati, S.S.', '10206054', 'SDK HONORER'),
(140, '3', 'Sabri', '10206041', 'SDK HONORER'),
(141, '1', 'Idawati, S. Pd.I.', '10196031', 'SDK HONORER'),
(142, '1', 'Dewi Rahmayanti, S.Pd.I', '10206056', 'SDK HONORER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id_hari` int(11) NOT NULL,
  `hari` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id_hari`, `hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat'),
(6, 'Sabtu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `id_hari` varchar(255) NOT NULL,
  `id_jam` varchar(255) NOT NULL,
  `id_ruang` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_jenjang`, `id_hari`, `id_jam`, `id_ruang`, `keperluan`) VALUES
(15, '3', '1', '10.30-12.30 WIB', '6', 'XII IPA'),
(17, '3', '2', '08.00-10.00 WIB', '6', 'XII IPS'),
(23, '3', '1', '08.00 - 10.00 WIB', '6', 'XI IPS'),
(24, '2', '1', '08.00 - 10.00 WIB', '7', 'CLASS PROJECT IX (PROJECT C)'),
(33, '2', '2', '08.00 - 10.00 WIB', '7', 'Class Project VII (Project B)'),
(34, '2', '3', '08.00 - 10.00 WIB', '7', 'Class Project VIII (Project B)'),
(35, '2', '3', '10.30 - 12.30 WIB', '7', 'Class Project VII (Project C)'),
(36, '3', '3', '10.30 - 12.30 WIB', '6', 'X IPS'),
(37, '2', '4', '08.00 - 10.00 WIB', '7', 'Class Project VII (Project A)'),
(38, '2', '4', '10.30 - 12.30 WIB', '7', 'Class Project IX (Project B)'),
(39, '2', '5', '08.00 - 10.00 WIB', '7', 'Class Project VIII (Project A)'),
(40, '3', '5', '08.00 - 10.00 WIB', '6', 'X IPA'),
(41, '2', '6', '07.30 - 10.30 WIB ', '6', 'VIII Al-Ghafiqi'),
(42, '2', '6', '10.30 - 12.30 WIB', '6', 'VIII Abraham Maslow'),
(43, '2', '6', '08.00 - 10.00 WIB', '7', 'Class Project IX (Project A)'),
(44, '2', '6', '10.30 - 12.30 WIB', '7', 'Class Project VIII (Project C)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenjang`
--

CREATE TABLE `jenjang` (
  `id_jenjang` int(11) NOT NULL,
  `nama_jenjang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenjang`
--

INSERT INTO `jenjang` (`id_jenjang`, `nama_jenjang`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jk`
--

CREATE TABLE `jk` (
  `id_jk` int(11) NOT NULL,
  `nama_jk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jk`
--

INSERT INTO `jk` (`id_jk`, `nama_jk`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'IPA'),
(2, 'IPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `id_semester` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `topik` varchar(255) NOT NULL,
  `bentuk` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `waktu_2` date NOT NULL,
  `biaya` varchar(255) NOT NULL,
  `laporan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `id_jenjang`, `id_semester`, `nama`, `topik`, `bentuk`, `waktu_1`, `waktu_2`, `biaya`, `laporan`) VALUES
(1, '1', '3', 'Erninawati, S.Si dan Ika Meutia, S.Si', 'Penguatan Pendidikan Karakter', 'FGBB (Forum Guru Belajar Bersama) internal bulanan', '2019-07-25', '2019-07-25', '-', 'FGBB SD ke 1_Juli 2019.docx'),
(2, '1', '3', 'Erninawati, S.Si dan Ika Meutia, S.Si', 'Manajemen Konflik Berbasis Kelas', 'FGBB (Forum Guru Belajar Bersama) internal bulanan', '2019-09-19', '2019-09-19', '-', 'FGBB SD ke 2_19 Sept 2019.docx'),
(3, '2', '3', 'Cut Afrianti, S.Pd', 'Ice Breaking untuk KBM yang Menyenangkan', 'FGBB (Forum Guru Belajar Bersama) internal bulanan', '2019-07-20', '2019-07-20', '-', 'FGBB SMP 1_Agustus 2019.docx'),
(4, '2', '3', 'Masyittah, S.Pd', 'Metode Mengajar Mapel Matematika', 'FGBB (Forum Guru Belajar Bersama) internal bulanan', '2019-09-07', '2019-09-07', '-', 'FGBB SMP ke 2_07 September 2019.docx'),
(5, '1', '3', 'Jamilah Akbar, MEd.  & Marina Nova Wahyuni, S.Si', 'Sehari Menulis \" Menjadi Guru\"', 'Workshop menulis refleksi menjadi guru bagi seluruh SDK dan Non SDK SSB Bireuen', '2019-10-05', '2019-10-05', '250.000', ''),
(6, '3', '3', 'Jamilah Akbar, MEd.  & Fakhurrazi, MA', 'Sehari Menulis \"Menjadi Guru\"', 'Worshop menulis refleksi menjadi guru bagi seluruh SDK dan Non SDK SSB Bireuen', '2019-10-05', '2019-10-05', '500.000', ''),
(7, '2', '3', 'Jamilah Akbar, MEd.  & Chandra Nurmansyah, S.Si', 'Sehari Menulis \" Menjadi Guru\"', 'Worshop menulis refleksi menjadi guru bagi seluruh SDK dan Non SDK SSB Bireuen', '2019-10-05', '2019-10-05', '-', ''),
(8, '1', '3', 'Jamilah Akbar, MEd.  & Marina Nova Wahyuni, S.Si', 'Pembentukan tim FGBB per rumpun dan Penguatan arah target sekolah khusus mapel Math, Sains dan Bahasa Indonesia', 'FGBB', '2019-10-21', '2019-10-21', '-', ''),
(9, '2', '3', 'Jamilah Akbar, MEd.  & Chandra Nurmansyah, S.Si', 'Pembentukan tim FGBB per rumpun dan Penguatan arah target sekolah khusus mapel Math, Sains dan Bahasa Indonesia', 'FGBB (Forum Guru Belajar Bersama)', '2019-10-21', '2019-10-21', '-', ''),
(10, '3', '3', 'Jamilah Akbar, MEd.  & Fachurrazi, MA', 'Pembentukan tim FGBB per rumpun dan Penguatan arah target sekolah khusus mapel Math, Sains dan Bahasa Indonesia', 'FGBB (Forum Guru Belajar Bersama)', '2019-10-21', '2019-10-21', '-', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_jenjang`, `status`) VALUES
(1, 'X IPA', '3', 'Tidak Aktif'),
(2, 'X IPS', '3', 'Tidak Aktif'),
(3, 'XI IPS', '3', 'Tidak Aktif'),
(4, 'XI IPA', '3', 'Tidak Aktif'),
(5, 'XII IPA A', '3', 'Tidak Aktif'),
(6, 'XII IPA B', '3', 'Tidak Aktif'),
(7, 'XII IPS', '3', 'Tidak Aktif'),
(8, 'I - CANANGA ADORATA', '1', 'Tidak Aktif'),
(9, 'I - MANGIFERA INDICA', '1', 'Tidak Aktif'),
(10, 'II - DURIO', '1', 'Tidak Aktif'),
(11, 'II - AGLAONEMA', '1', 'Tidak Aktif'),
(12, 'III - ADENIUM', '1', 'Tidak Aktif'),
(13, 'III - COCOS NUCIFERA', '1', 'Tidak Aktif'),
(14, 'IV - BAMBUSA', '1', 'Tidak Aktif'),
(15, 'IV - MICHELIA CHAMPACA', '1', 'Tidak Aktif'),
(16, 'V - PHASEOLUS RADIATUS', '1', 'Tidak Aktif'),
(17, 'V - BAUHINIA PURPUREA', '1', 'Tidak Aktif'),
(18, 'VI - ELAEIS GUINEENSIS', '1', 'Tidak Aktif'),
(19, 'VI - CITRUS', '1', 'Tidak Aktif'),
(20, 'VII GOWA', '2', 'Tidak Aktif'),
(21, 'VII DELI', '2', 'Tidak Aktif'),
(22, 'VIII DEMAK', '2', 'Tidak Aktif'),
(23, 'VIII ACEH', '2', 'Tidak Aktif'),
(24, 'IX KUTAI', '2', 'Tidak Aktif'),
(25, 'IX SAMUDRA PASAI', '2', 'Tidak Aktif'),
(26, 'XII IPA', '3', 'Tidak Aktif'),
(27, 'I QUINI', '1', 'Tidak Aktif'),
(28, ' I SAMARINDA', '1', 'Tidak Aktif'),
(29, 'II MANGGEH', '1', 'Tidak Aktif'),
(30, ' II KEUMUDE', '1', 'Tidak Aktif'),
(31, 'III KEULAYU', '1', 'Tidak Aktif'),
(32, 'III MAMPLAM', '1', 'Tidak Aktif'),
(33, ' IV SEUTUI', '1', 'Tidak Aktif'),
(34, 'IV MEURIA', '1', 'Tidak Aktif'),
(35, 'V GIRI', '1', 'Tidak Aktif'),
(36, ' V JAMBEE', '1', 'Tidak Aktif'),
(37, 'VI TIMON', '1', 'Tidak Aktif'),
(38, 'VI KEURANJI', '1', 'Tidak Aktif'),
(39, 'VII ABRAHAM MASLOW', '2', 'Tidak Aktif'),
(40, 'VII Al GHAFIQY', '2', 'Tidak Aktif'),
(41, 'VIII HAMKA', '2', 'Tidak Aktif'),
(42, 'VIII ADAM OSBORNE', '2', 'Tidak Aktif'),
(43, 'IX AL BIRUNI ', '2', 'Tidak Aktif'),
(44, 'IX HARUN AR RASYID', '2', 'Tidak Aktif'),
(52, 'ALUMNI SD', '1', 'Alumni'),
(53, 'ALUMNI SMP', '2', 'Alumni'),
(54, 'ALUMNI SMA', '3', 'Alumni'),
(55, 'X IPA 1', '3', 'Aktif'),
(56, 'I - AL IJLIYA', '1', 'Aktif'),
(57, 'I - AL ZAHRAWI', '1', 'Aktif'),
(58, 'I - JABIR HAYYAN', '1', 'Aktif'),
(59, 'II - AVERROES', '1', 'Aktif'),
(60, 'II - UMAR KHAYYAM', '1', 'Aktif'),
(61, 'III - AL JAZARI', '1', 'Aktif'),
(62, 'III - IBNU BAITHAR', '1', 'Aktif'),
(63, 'IV - AL BATTANI', '1', 'Aktif'),
(64, 'IV - IBNU FIRNAS', '1', 'Aktif'),
(65, 'V - AL-JAHIZ', '1', 'Aktif'),
(66, 'V - IBNU HAITHAM', '1', 'Aktif'),
(67, 'VI - AT-THABARI', '1', 'Aktif'),
(68, 'VI - IBNU AN-NAFIS', '1', 'Aktif'),
(69, 'VII AL BIRUNI', '2', 'Aktif'),
(70, 'VII HARUN AR RASYID', '2', 'Aktif'),
(71, 'VIII ABRAHAM MASLOW', '2', 'Aktif'),
(72, 'VIII Al GHAFIQY', '2', 'Aktif'),
(73, 'IX ADAM OSBORNE', '2', 'Aktif'),
(74, 'IX HAMKA', '2', 'Aktif'),
(75, 'X IPA 2', '3', 'Aktif'),
(76, 'X IPS', '3', 'Aktif'),
(77, 'XI IPA', '3', 'Aktif'),
(78, 'XI IPS', '3', 'Aktif'),
(79, 'XII IPA', '3', 'Aktif'),
(80, 'XII IPS', '3', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas2`
--

CREATE TABLE `kelas2` (
  `id_kelas2` int(11) NOT NULL,
  `nama_kelas2` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas2`
--

INSERT INTO `kelas2` (`id_kelas2`, `nama_kelas2`, `id_jenjang`, `status`) VALUES
(1, 'X IPA', '3', 'Tidak Aktif'),
(2, 'X IPS', '3', 'Tidak Aktif'),
(3, 'XI IPS', '3', 'Tidak Aktif'),
(4, 'XI IPA', '3', 'Tidak Aktif'),
(5, 'XII IPA A', '3', 'Tidak Aktif'),
(6, 'XII IPA B', '3', 'Tidak Aktif'),
(7, 'XII IPS', '3', 'Tidak Aktif'),
(8, 'I - CANANGA ADORATA', '1', 'Tidak Aktif'),
(9, 'I - MANGIFERA INDICA', '1', 'Tidak Aktif'),
(10, 'II - DURIO', '1', 'Tidak Aktif'),
(11, 'II - AGLAONEMA', '1', 'Tidak Aktif'),
(12, 'III - ADENIUM', '1', 'Tidak Aktif'),
(13, 'III - COCOS NUCIFERA', '1', 'Tidak Aktif'),
(14, 'IV - BAMBUSA', '1', 'Tidak Aktif'),
(15, 'IV - MICHELIA CHAMPACA', '1', 'Tidak Aktif'),
(16, 'V - PHASEOLUS RADIATUS', '1', 'Tidak Aktif'),
(17, 'V - BAUHINIA PURPUREA', '1', 'Tidak Aktif'),
(18, 'VI - ELAEIS GUINEENSIS', '1', 'Tidak Aktif'),
(19, 'VI - CITRUS', '1', 'Tidak Aktif'),
(20, 'VII GOWA', '2', 'Tidak Aktif'),
(21, 'VII DELI', '2', 'Tidak Aktif'),
(22, 'VIII DEMAK', '2', 'Tidak Aktif'),
(23, 'VIII ACEH', '2', 'Tidak Aktif'),
(24, 'IX KUTAI', '2', 'Tidak Aktif'),
(25, 'IX SAMUDRA PASAI', '2', 'Tidak Aktif'),
(26, 'XII IPA', '3', 'Tidak Aktif'),
(27, 'I QUINI', '1', 'Tidak Aktif'),
(28, ' I SAMARINDA', '1', 'Tidak Aktif'),
(29, 'II MANGGEH', '1', 'Tidak Aktif'),
(30, ' II KEUMUDE', '1', 'Tidak Aktif'),
(31, 'III KEULAYU', '1', 'Tidak Aktif'),
(32, 'III MAMPLAM', '1', 'Tidak Aktif'),
(33, ' IV SEUTUI', '1', 'Tidak Aktif'),
(34, 'IV MEURIA', '1', 'Tidak Aktif'),
(35, 'V GIRI', '1', 'Tidak Aktif'),
(36, ' V JAMBEE', '1', 'Tidak Aktif'),
(37, 'VI TIMON', '1', 'Tidak Aktif'),
(38, 'VI KEURANJI', '1', 'Tidak Aktif'),
(39, 'VII ABRAHAM MASLOW', '2', 'Tidak Aktif'),
(40, 'VII Al GHAFIQY', '2', 'Tidak Aktif'),
(41, 'VIII HAMKA', '2', 'Tidak Aktif'),
(42, 'VIII ADAM OSBORNE', '2', 'Tidak Aktif'),
(43, 'IX AL BIRUNI ', '2', 'Tidak Aktif'),
(44, 'IX HARUN AR RASYID', '2', 'Tidak Aktif'),
(52, 'ALUMNI SD', '1', 'Alumni'),
(53, 'ALUMNI SMP', '2', 'Alumni'),
(54, 'ALUMNI SMA', '3', 'Alumni'),
(55, 'X IPA 1', '3', 'Aktif'),
(56, 'I - AL IJLIYA', '1', 'Aktif'),
(57, 'I - AL ZAHRAWI', '1', 'Aktif'),
(58, 'I - JABIR HAYYAN', '1', 'Aktif'),
(59, 'II - AVERROES', '1', 'Aktif'),
(60, 'II - UMAR KHAYYAM', '1', 'Aktif'),
(61, 'III - AL JAZARI', '1', 'Aktif'),
(62, 'III - IBNU BAITHAR', '1', 'Aktif'),
(63, 'IV - AL BATTANI', '1', 'Aktif'),
(64, 'IV - IBNU FIRNAS', '1', 'Aktif'),
(65, 'V - AL-JAHIZ', '1', 'Aktif'),
(66, 'V - IBNU HAITHAM', '1', 'Aktif'),
(67, 'VI - AT-THABARI', '1', 'Aktif'),
(68, 'VI - IBNU AN-NAFIS', '1', 'Aktif'),
(69, 'VII AL BIRUNI', '2', 'Aktif'),
(70, 'VII HARUN AR RASYID', '2', 'Aktif'),
(71, 'VIII ABRAHAM MASLOW', '2', 'Aktif'),
(72, 'VIII Al GHAFIQY', '2', 'Aktif'),
(73, 'IX ADAM OSBORNE', '2', 'Aktif'),
(74, 'IX HAMKA', '2', 'Aktif'),
(75, 'X IPA 2', '3', 'Aktif'),
(76, 'X IPS', '3', 'Aktif'),
(77, 'XI IPA', '3', 'Aktif'),
(78, 'XI IPS', '3', 'Aktif'),
(79, 'XII IPA', '3', 'Aktif'),
(80, 'XII IPS', '3', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas3`
--

CREATE TABLE `kelas3` (
  `id_kelas3` int(11) NOT NULL,
  `nama_kelas3` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas3`
--

INSERT INTO `kelas3` (`id_kelas3`, `nama_kelas3`, `id_jenjang`, `status`) VALUES
(1, 'X IPA', '3', 'Tidak Aktif'),
(2, 'X IPS', '3', 'Tidak Aktif'),
(3, 'XI IPS', '3', 'Tidak Aktif'),
(4, 'XI IPA', '3', 'Tidak Aktif'),
(5, 'XII IPA A', '3', 'Tidak Aktif'),
(6, 'XII IPA B', '3', 'Tidak Aktif'),
(7, 'XII IPS', '3', 'Tidak Aktif'),
(8, 'I - CANANGA ADORATA', '1', 'Tidak Aktif'),
(9, 'I - MANGIFERA INDICA', '1', 'Tidak Aktif'),
(10, 'II - DURIO', '1', 'Tidak Aktif'),
(11, 'II - AGLAONEMA', '1', 'Tidak Aktif'),
(12, 'III - ADENIUM', '1', 'Tidak Aktif'),
(13, 'III - COCOS NUCIFERA', '1', 'Tidak Aktif'),
(14, 'IV - BAMBUSA', '1', 'Tidak Aktif'),
(15, 'IV - MICHELIA CHAMPACA', '1', 'Tidak Aktif'),
(16, 'V - PHASEOLUS RADIATUS', '1', 'Tidak Aktif'),
(17, 'V - BAUHINIA PURPUREA', '1', 'Tidak Aktif'),
(18, 'VI - ELAEIS GUINEENSIS', '1', 'Tidak Aktif'),
(19, 'VI - CITRUS', '1', 'Tidak Aktif'),
(20, 'VII GOWA', '2', 'Tidak Aktif'),
(21, 'VII DELI', '2', 'Tidak Aktif'),
(22, 'VIII DEMAK', '2', 'Tidak Aktif'),
(23, 'VIII ACEH', '2', 'Tidak Aktif'),
(24, 'IX KUTAI', '2', 'Tidak Aktif'),
(25, 'IX SAMUDRA PASAI', '2', 'Tidak Aktif'),
(26, 'XII IPA', '3', 'Tidak Aktif'),
(27, 'I QUINI', '1', 'Tidak Aktif'),
(28, ' I SAMARINDA', '1', 'Tidak Aktif'),
(29, 'II MANGGEH', '1', 'Tidak Aktif'),
(30, ' II KEUMUDE', '1', 'Tidak Aktif'),
(31, 'III KEULAYU', '1', 'Tidak Aktif'),
(32, 'III MAMPLAM', '1', 'Tidak Aktif'),
(33, ' IV SEUTUI', '1', 'Tidak Aktif'),
(34, 'IV MEURIA', '1', 'Tidak Aktif'),
(35, 'V GIRI', '1', 'Tidak Aktif'),
(36, ' V JAMBEE', '1', 'Tidak Aktif'),
(37, 'VI TIMON', '1', 'Tidak Aktif'),
(38, 'VI KEURANJI', '1', 'Tidak Aktif'),
(39, 'VII ABRAHAM MASLOW', '2', 'Tidak Aktif'),
(40, 'VII Al GHAFIQY', '2', 'Tidak Aktif'),
(41, 'VIII HAMKA', '2', 'Tidak Aktif'),
(42, 'VIII ADAM OSBORNE', '2', 'Tidak Aktif'),
(43, 'IX AL BIRUNI ', '2', 'Tidak Aktif'),
(44, 'IX HARUN AR RASYID', '2', 'Tidak Aktif'),
(52, 'ALUMNI SD', '1', 'Alumni'),
(53, 'ALUMNI SMP', '2', 'Alumni'),
(54, 'ALUMNI SMA', '3', 'Alumni'),
(55, 'X IPA 1', '3', 'Aktif'),
(56, 'I - AL IJLIYA', '1', 'Aktif'),
(57, 'I - AL ZAHRAWI', '1', 'Aktif'),
(58, 'I - JABIR HAYYAN', '1', 'Aktif'),
(59, 'II - AVERROES', '1', 'Aktif'),
(60, 'II - UMAR KHAYYAM', '1', 'Aktif'),
(61, 'III - AL JAZARI', '1', 'Aktif'),
(62, 'III - IBNU BAITHAR', '1', 'Aktif'),
(63, 'IV - AL BATTANI', '1', 'Aktif'),
(64, 'IV - IBNU FIRNAS', '1', 'Aktif'),
(65, 'V - AL-JAHIZ', '1', 'Aktif'),
(66, 'V - IBNU HAITHAM', '1', 'Aktif'),
(67, 'VI - AT-THABARI', '1', 'Aktif'),
(68, 'VI - IBNU AN-NAFIS', '1', 'Aktif'),
(69, 'VII AL BIRUNI', '2', 'Aktif'),
(70, 'VII HARUN AR RASYID', '2', 'Aktif'),
(71, 'VIII ABRAHAM MASLOW', '2', 'Aktif'),
(72, 'VIII Al GHAFIQY', '2', 'Aktif'),
(73, 'IX ADAM OSBORNE', '2', 'Aktif'),
(74, 'IX HAMKA', '2', 'Aktif'),
(75, 'X IPA 2', '3', 'Aktif'),
(76, 'X IPS', '3', 'Aktif'),
(77, 'XI IPA', '3', 'Aktif'),
(78, 'XI IPS', '3', 'Aktif'),
(79, 'XII IPA', '3', 'Aktif'),
(80, 'XII IPS', '3', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas4`
--

CREATE TABLE `kelas4` (
  `id_kelas4` int(11) NOT NULL,
  `nama_kelas4` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas4`
--

INSERT INTO `kelas4` (`id_kelas4`, `nama_kelas4`, `id_jenjang`, `status`) VALUES
(1, 'X IPA', '3', 'Tidak Aktif'),
(2, 'X IPS', '3', 'Tidak Aktif'),
(3, 'XI IPS', '3', 'Tidak Aktif'),
(4, 'XI IPA', '3', 'Tidak Aktif'),
(5, 'XII IPA A', '3', 'Tidak Aktif'),
(6, 'XII IPA B', '3', 'Tidak Aktif'),
(7, 'XII IPS', '3', 'Tidak Aktif'),
(8, 'I - CANANGA ADORATA', '1', 'Tidak Aktif'),
(9, 'I - MANGIFERA INDICA', '1', 'Tidak Aktif'),
(10, 'II - DURIO', '1', 'Tidak Aktif'),
(11, 'II - AGLAONEMA', '1', 'Tidak Aktif'),
(12, 'III - ADENIUM', '1', 'Tidak Aktif'),
(13, 'III - COCOS NUCIFERA', '1', 'Tidak Aktif'),
(14, 'IV - BAMBUSA', '1', 'Tidak Aktif'),
(15, 'IV - MICHELIA CHAMPACA', '1', 'Tidak Aktif'),
(16, 'V - PHASEOLUS RADIATUS', '1', 'Tidak Aktif'),
(17, 'V - BAUHINIA PURPUREA', '1', 'Tidak Aktif'),
(18, 'VI - ELAEIS GUINEENSIS', '1', 'Tidak Aktif'),
(19, 'VI - CITRUS', '1', 'Tidak Aktif'),
(20, 'VII GOWA', '2', 'Tidak Aktif'),
(21, 'VII DELI', '2', 'Tidak Aktif'),
(22, 'VIII DEMAK', '2', 'Tidak Aktif'),
(23, 'VIII ACEH', '2', 'Tidak Aktif'),
(24, 'IX KUTAI', '2', 'Tidak Aktif'),
(25, 'IX SAMUDRA PASAI', '2', 'Tidak Aktif'),
(26, 'XII IPA', '3', 'Tidak Aktif'),
(27, 'I QUINI', '1', 'Tidak Aktif'),
(28, ' I SAMARINDA', '1', 'Tidak Aktif'),
(29, 'II MANGGEH', '1', 'Tidak Aktif'),
(30, ' II KEUMUDE', '1', 'Tidak Aktif'),
(31, 'III KEULAYU', '1', 'Tidak Aktif'),
(32, 'III MAMPLAM', '1', 'Tidak Aktif'),
(33, ' IV SEUTUI', '1', 'Tidak Aktif'),
(34, 'IV MEURIA', '1', 'Tidak Aktif'),
(35, 'V GIRI', '1', 'Tidak Aktif'),
(36, ' V JAMBEE', '1', 'Tidak Aktif'),
(37, 'VI TIMON', '1', 'Tidak Aktif'),
(38, 'VI KEURANJI', '1', 'Tidak Aktif'),
(39, 'VII ABRAHAM MASLOW', '2', 'Tidak Aktif'),
(40, 'VII Al GHAFIQY', '2', 'Tidak Aktif'),
(41, 'VIII HAMKA', '2', 'Tidak Aktif'),
(42, 'VIII ADAM OSBORNE', '2', 'Tidak Aktif'),
(43, 'IX AL BIRUNI ', '2', 'Tidak Aktif'),
(44, 'IX HARUN AR RASYID', '2', 'Tidak Aktif'),
(52, 'ALUMNI SD', '1', 'Alumni'),
(53, 'ALUMNI SMP', '2', 'Alumni'),
(54, 'ALUMNI SMA', '3', 'Alumni'),
(55, 'X IPA 1', '3', 'Aktif'),
(56, 'I - AL IJLIYA', '1', 'Aktif'),
(57, 'I - AL ZAHRAWI', '1', 'Aktif'),
(58, 'I - JABIR HAYYAN', '1', 'Aktif'),
(59, 'II - AVERROES', '1', 'Aktif'),
(60, 'II - UMAR KHAYYAM', '1', 'Aktif'),
(61, 'III - AL JAZARI', '1', 'Aktif'),
(62, 'III - IBNU BAITHAR', '1', 'Aktif'),
(63, 'IV - AL BATTANI', '1', 'Aktif'),
(64, 'IV - IBNU FIRNAS', '1', 'Aktif'),
(65, 'V - AL-JAHIZ', '1', 'Aktif'),
(66, 'V - IBNU HAITHAM', '1', 'Aktif'),
(67, 'VI - AT-THABARI', '1', 'Aktif'),
(68, 'VI - IBNU AN-NAFIS', '1', 'Aktif'),
(69, 'VII AL BIRUNI', '2', 'Aktif'),
(70, 'VII HARUN AR RASYID', '2', 'Aktif'),
(71, 'VIII ABRAHAM MASLOW', '2', 'Aktif'),
(72, 'VIII Al GHAFIQY', '2', 'Aktif'),
(73, 'IX ADAM OSBORNE', '2', 'Aktif'),
(74, 'IX HAMKA', '2', 'Aktif'),
(75, 'X IPA 2', '3', 'Aktif'),
(76, 'X IPS', '3', 'Aktif'),
(77, 'XI IPA', '3', 'Aktif'),
(78, 'XI IPS', '3', 'Aktif'),
(79, 'XII IPA', '3', 'Aktif'),
(80, 'XII IPS', '3', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konselor`
--

CREATE TABLE `konselor` (
  `id_konselor` int(11) NOT NULL,
  `nama_konselor` varchar(255) NOT NULL,
  `nip_konselor` varchar(255) NOT NULL,
  `username_konselor` varchar(255) NOT NULL,
  `password_konselor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konselor`
--

INSERT INTO `konselor` (`id_konselor`, `nama_konselor`, `nip_konselor`, `username_konselor`, `password_konselor`) VALUES
(1, 'konselor', 'konselor', 'konselor', '1c1861bcfa010bce718bf4bf46d64f84');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'SD'),
(2, 'SMP'),
(3, 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lomba`
--

CREATE TABLE `lomba` (
  `id_lomba` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_jk` int(11) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `lokasi_lomba` varchar(255) NOT NULL,
  `nama_lomba` varchar(255) NOT NULL,
  `tahun_lomba` varchar(255) NOT NULL,
  `penyelenggara_lomba` varchar(255) NOT NULL,
  `hasil_lomba` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lomba`
--

INSERT INTO `lomba` (`id_lomba`, `id_jenjang`, `id_tp`, `id_jk`, `nama_siswa`, `lokasi_lomba`, `nama_lomba`, `tahun_lomba`, `penyelenggara_lomba`, `hasil_lomba`) VALUES
(1, 1, 6, 2, 'Kayla Haura Tsabita', 'Jakarta', 'Nasional', '2014', '', 'Finalis'),
(2, 1, 6, 2, 'Kayla Haura Tsabita', 'Banda Aceh ', 'FLS2N (Nyanyi Solo)', '2014', '', 'Juara 1'),
(3, 1, 6, 1, 'T.M Firmansyah', 'Banda Aceh ', 'Olimpiade Sains Kuark', '2014', '', '10 Besar'),
(4, 1, 7, 1, 'Khairal Abdi', 'Banda Aceh ', 'Olimpiade Sains Kuark', '2015', '', '10 Besar'),
(5, 1, 8, 2, 'Kayla Haura Tsabita', 'Banda Aceh ', 'FLS2N (Nyanyi Solo)', '2015', '', '10 Besar'),
(6, 1, 8, 2, 'Yasmin Yumna', 'Banda Aceh ', 'Olimpiade Sains Nasional', '2016', '', 'Harapan 1'),
(7, 1, 9, 2, 'Yasmin Yumna', 'Banda Aceh ', 'Olimpiade Sains Nasional', '2016', '', 'Harapan 1'),
(8, 2, 12, 2, 'Syarifah  Izzati', 'Banda Aceh', 'Tenis Meja Putri', '2007', '', 'Juara Harapan'),
(9, 2, 2, 0, 'Tim', 'Banda Aceh', 'Asah Trampil Kepramukaan', '2009', '', 'Juara 1'),
(10, 2, 2, 0, 'Tim', 'Banda Aceh', 'Pentas Seni SMP Putri', '2010', '', 'Juara 1'),
(11, 2, 8, 1, 'Hafidh Tiftazani', 'Jepang', 'Kontigen Indonesia Jambore Pramuka ke Jepang', '2015', '', 'Peserta'),
(12, 2, 10, 2, 'Azkya Kamila Maharani', 'Banda Aceh', 'Lomba Cipta Cerpen Tingkat Nasional Bertema ï¿½Kisah di Sekolahï¿½ Bersama Jejak Publisher dan Antariksa 2018', '2018', 'Penerbit Antariksa', 'Penulis Carpen Terpilih'),
(13, 2, 10, 2, 'Khasrina Masyid Azka', 'Banda Aceh', 'Lomba Cipta Cerpen Tingkat Nasional Bertema ï¿½Kisah di Sekolahï¿½ Bersama Jejak Publisher dan Antariksa 2018', '2018', 'Penerbit Antariksa', 'Penulis Carpen Terpilih'),
(14, 2, 10, 1, 'Diva Maulana Z', 'Langsa', 'Langsa Archery Open Tournament', '2018', '', 'Juara 2'),
(15, 2, 10, 2, 'Ahya Jazira', 'Banda Aceh', 'OSN IPS Tingkat Provinsi', '2018', 'Pemerintah Aceh', 'Perwakilan/Kontingen Kabupaten Bireuen'),
(16, 2, 10, 1, 'T.M Al \'Asyari Al Muchtari', 'Banda Aceh', 'OSN Matematika Tingkat Provinsi', '2018', '', 'Juara I'),
(17, 2, 10, 1, 'Muhammad Hafizh Ramadhan', 'Takengon', 'POPDA Aceh Tengah Cabang Basket', '2018', 'Pemerintah Aceh', 'Perwakilan/Kontingen Kabupaten Bireuen'),
(18, 2, 10, 1, 'Hafidh Mudarakna', 'Takengon', 'POPDA Aceh Tengah Cabang Taekwondo', '2018', 'Pemerintah Aceh', 'Perwakilan/Kontingen Kabupaten Bireuen'),
(19, 2, 10, 1, 'Adri Segera', 'Takengon', 'POPDA Aceh Tengah Cabang Taekwondo', '2018', 'Pemerintah Aceh', 'Perwakilan/Kontingen Kabupaten Bireuen'),
(20, 2, 10, 1, 'T.M  Al Asy\'ari Al-Muchtari', 'Banda Aceh', 'Olimpiade Sains Nasional (OSN)  Matematika ', '2018', '', 'Juara 1'),
(21, 2, 5, 1, 'Rahmat Aulia', 'Banda Aceh', 'Kejuaraan Taekwondo', '2013', 'PengProv Taekwondo Sumatra Utara', 'Juara 3'),
(22, 2, 6, 1, 'Wildan Mumtaz', 'Lhokseumawe', 'Kejuaraan Taekwondo', '2014', 'PengCab Taekwondo Lhokseumawe', 'Juara 3'),
(23, 2, 6, 1, 'M. Rafli', 'Lhokseumawe', 'Kejuaraan Taekwondo', '2014', 'PengCab Taekwondo Lhokseumawe', 'Juara 3'),
(24, 2, 6, 1, 'M. Alief Rianza', 'Lhokseumawe', 'Kejuaraan Taekwondo', '2014', 'PengCab Taekwondo Lhokseumawe', 'Juara 3'),
(25, 3, 13, 0, 'Tim ', 'Banda Aceh', 'Festival Tari Saman Se - Aceh', '2007', '', 'Juara 2'),
(26, 3, 13, 0, 'Tim ', 'Beijing', 'Festival Asia Pasific di Beijing', '2008', '', 'Gold Medal'),
(27, 3, 1, 0, 'Tim ', 'Sabang', 'Kejuaraan Kempo Se - Aceh di Sabang', '2008', '', 'Medali Perak dan Perunggu'),
(28, 3, 2, 1, 'Rahmad Maulizar', 'Medan', 'Pekan Matematika Se - Sumatera di Unand', '2009', '', 'Peringkat 100 dari 400 Peserta'),
(29, 3, 2, 0, 'Tim ', 'Medan', 'Pekan Akuntansi Se- Sumatera Bagian Utara', '2009', '', 'Juara 3'),
(30, 3, 2, 1, 'Ichwan Azmi', 'Banda Aceh', 'Lomba Flash Mosa Story Telling', '2010', '', 'Juara 1'),
(31, 3, 2, 0, 'Tim ', 'Medan', 'Lomba Indomie Jingle Daere 3', '2010', '', 'Finalis Provinsi Aceh'),
(32, 3, 3, 0, 'Tim ', 'Lhokseumawe', 'Lomba Nasyid Putri Se - Aceh di Yapena', '2010', '', 'Juara 2'),
(33, 3, 3, 0, 'Tim ', 'Medan', 'Pekan Akuntansi Se - Sumatera Bagian Utara', '2010', '', 'Juara 1'),
(34, 3, 3, 0, 'Tim ', 'Banda Aceh', 'Cerdas Cermat Mipa Unsiyah', '2010', '', 'Semi Final'),
(35, 3, 3, 0, 'Tim ', 'Medan', 'Lomba Indomie Jingle Daere 3', '2011', '', 'Finalis Regional Sumatera'),
(36, 3, 3, 0, 'Tim ', 'Banda Aceh', 'Lomba Cerdas Cermat UUD 45/TAP MPR', '2011', '', 'Finalis'),
(37, 3, 3, 0, 'Tim ', 'Banda Aceh', 'Paduan Suara Acara Porda Aceh', '2011', '', ''),
(38, 3, 4, 1, 'Fairuz Al Hamdi', 'Banda Aceh', 'Pidato dalam Bahasa Inggris', '2011', '', 'Harapan 2'),
(39, 3, 6, 1, 'Ali Mursalan', 'Banda Aceh', 'FLS2N Cabang Kriya', '2012', '', ''),
(40, 3, 6, 2, 'Nurul Fatin', 'Banda Aceh', 'Duta Kepramukaan Siswa SMA', '2013', '', 'Peserta'),
(41, 3, 6, 1, 'Rayan Melvandro', 'Banda Aceh', 'Duta Kepramukaan Siswa SMA', '2013', '', 'Peserta'),
(42, 3, 6, 2, 'Rudhah', 'Banda Aceh', 'Lomba Tata Ruang : Sketsa', '2013', '', 'Juara 1'),
(43, 3, 6, 0, 'Tim ', 'Banda Aceh', 'Musikalisasi Puisi di Mosa', '2014', '', 'Juara 3'),
(44, 3, 6, 0, 'Tim ', 'Banda Aceh', 'Seleksi Duta Anak', '2014', '', 'Harapan 3'),
(45, 3, 6, 0, 'Tim ', 'Banda Aceh', 'Padus Gita Bahana Nusantara', '2014', '', 'Harapan 2'),
(46, 3, 8, 0, 'Tim ', 'Banda Aceh', 'Tari Berpasangan', '2015', '', 'Juara 2'),
(47, 3, 9, 0, 'Tim ', 'Banda Aceh', 'Cepat Tepat Akuntansi Ekonomi USK', '2016', '', 'Juara 3'),
(48, 3, 9, 2, 'Siti Rozana', 'Banda Aceh', 'Lomba Cberhitung Cepat Akuntansi FE USK', '2016', '', 'Juara 3'),
(49, 3, 9, 0, 'Tim ', 'Banda Aceh', 'Lomba Paduan Suara tk. Provinsi', '2017', '', 'Juara 3'),
(50, 3, 10, 2, 'Ghina Ghefera', 'Amerika Serikat', 'Pertukaran Siswa ke Amerika Serikat (USA)', '2018', '', 'Peserta'),
(51, 3, 10, 0, 'Tim ', 'Jakarta', 'Jambore Nasional', '2017', '', 'Peserta'),
(52, 3, 10, 1, 'T.M Fadhil', 'Banda Aceh', 'Desain Poster FLS2N tk. Provinsi', '2017', '', 'Juara 2'),
(53, 3, 10, 0, 'Tim ', 'Banda Aceh', 'Tari kreasi FLS2N tk. Provinsi', '2017', '', 'Juara 2'),
(54, 1, 11, 2, 'Zata Zamharira', 'Bireuen', 'OSN ', '2019', 'DINAS', 'HARAPAN 1'),
(55, 1, 11, 2, 'Rifqa Daruva', 'Bireuen', 'OSN ', '2019', 'DINAS', 'HARAPAN 2'),
(56, 1, 11, 1, 'Muhammad Rafa Fahlevi', 'Bireuen', 'OSN ', '2019', 'DINAS', 'HARAPAN 1'),
(57, 1, 11, 1, 'Muhammad Rafa Fahlevi', 'Bireuen', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 3'),
(58, 1, 11, 2, 'Benazir Zahirah Taufiq', 'Bireuen', 'OSK', '2019', 'KUARK INTERNASIONAL', 'PESERTA SEMIFINAL'),
(59, 1, 11, 2, 'Benazir Zahirah Taufiq', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA  1'),
(60, 1, 11, 2, 'Khansa Luthfya Indah', 'Bireuen', 'OSK', '2019', 'KUARK INTERNASIONAL', 'PESERTA SEMIFINAL'),
(61, 1, 11, 2, 'Khansa Luthfya Indah', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA  3'),
(62, 1, 11, 1, 'Muhammad Daffa Al - Haziq', 'Bireuen', 'OSK', '2019', 'BABAK PENYISIHAN', 'BABAK SEMIFINAL'),
(63, 1, 11, 2, 'Amira Naila Syakira', 'Bireuen', 'OSK', '2019', 'BABAK PENYISIHAN', 'BABAK SEMIFINAL'),
(64, 1, 11, 2, 'Zahratussyita Muhammad', 'Bireuen', 'FLS2N', '2019', 'DINAS', 'JUARA  1'),
(65, 1, 11, 2, 'Zahratussyita Muhammad', 'Bireuen', 'FLS2N', '2019', 'DINAS', 'JUARA  1'),
(66, 1, 11, 2, 'Kayla Annisa Faiha', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 1'),
(67, 1, 11, 2, 'Kayla Annisa Faiha', 'Bireuen', 'FLS2N', '2019', 'DINAS', 'JUARA 2'),
(68, 1, 11, 2, 'Musayyaratul Barrarah', 'Bireuen', '', '2019', 'DINAS', 'JUARA 2'),
(69, 1, 11, 2, 'Alia Karima', 'Bireuen', '', '2019', 'DINAS', 'JUARA 3'),
(70, 1, 11, 1, 'Farhan Mashuri Lubis', 'Bireuen', 'PANTOMIM', '2019', 'DINAS', 'JUARA 1'),
(71, 1, 11, 1, 'Farhan Mashuri Lubis', 'Bireuen', 'PANTOMIM', '2019', 'DINAS', 'JUARA 2'),
(72, 1, 11, 2, 'Salsabila Askafia', 'Bireuen', 'GAMBAR BERCERITA DAN GEO INTERNATIONAL', '2019', 'DINAS', 'JUARA 2 DAN 50 BESAR GEO INTERNASIONAL'),
(73, 1, 11, 1, 'Muksalmina', 'Bireuen', 'O2SN', '2019', 'DINAS', 'JUARA 2'),
(74, 1, 11, 2, 'Syifa Humaira', 'Bireuen', 'O2SN', '2019', 'DINAS', 'JUARA 1'),
(75, 1, 11, 2, 'Syifa Humaira', 'Bireuen', 'O2SN', '2019', 'DINAS', 'JUARA 2'),
(76, 1, 11, 1, 'Muhammad Rafi', 'Bireuen', 'O2SN', '2019', 'DINAS', 'JUARA 2'),
(77, 1, 11, 1, 'Jolin Koemardi', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 1'),
(78, 1, 11, 2, 'Cut Adila Faradina', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 2'),
(79, 1, 11, 1, 'Kahfi Wahyu Pratama', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 3'),
(80, 1, 11, 1, 'Fathurrahman', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 4'),
(81, 1, 11, 1, 'Leonardo Tandia', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 1'),
(82, 1, 11, 1, 'Fathi Yakan Alkafi', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 2'),
(83, 1, 11, 2, 'Alya Mukhbita', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 2'),
(84, 1, 11, 1, 'M. Asyraf Syahrizal', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 3'),
(85, 1, 11, 1, 'Wafiq Albariki', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 4'),
(86, 1, 11, 1, 'M.Fatih Ar Rafiqi', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 3'),
(87, 1, 11, 1, 'Aqil Ghaufar Effendy', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 4'),
(88, 1, 11, 1, 'Leonardi Wangsa', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 1'),
(89, 1, 11, 2, 'Safira Fieza \'Aqilla', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 2'),
(90, 1, 11, 2, 'Khalil Sy Basyarah', 'Lhokseumawe', 'OSM 3 LOKASI SSB', '2019', 'SSB LHOKSEUMAWE', 'JUARA 3'),
(91, 2, 11, 1, 'Akmal Kautsar', 'Bireuen', 'O2SN (Cabang Badminton)', '2019', 'Pemerintah Kabupaten Bireuen (Dinas Pendidikan, Pemuda dan Olahraga Kab. Bireuen)', 'Juara 1'),
(92, 2, 10, 2, 'Ahya Jazira', 'Bireuen', 'OSN IPS Tingkat Kabupaten', '2018', 'Pemerintah Kabupaten Bireuen (Dinas Pendidikan, Pemuda dan Olahraga Kab. Bireuen)', 'Juara 1'),
(93, 2, 11, 2, 'Nyak Qurratun Aini', 'Bireuen', 'FLS2N Tingkat Kabupaten cabang Vocal Solo', '2019', 'Dinas', 'Juara 2'),
(94, 2, 11, 1, 'Akmal Kautsar', 'Banda Aceh', 'O2SN Cabang Badminton Tingkat Provinsi', '2019', '-', '8 besar'),
(95, 2, 11, 1, 'Victor Ong', 'Bireuen', 'Olimpiade Math Fair ke XIII Se-Kabupaten Bireuen', '2019', 'FMIPA Unsyiah', 'Juara 4'),
(96, 2, 11, 1, 'Fariz Hirzy', 'Bireuen', 'Olimpiade Math Fair ke XIII Se-Kabupaten Bireuen', '2019', 'FMIPA Unsyiah', 'Juara 2'),
(97, 2, 11, 2, 'Rajwa Rajiyya', 'Bireuen', 'Olimpiade Sains Nasional (OSN) Bidang Studi IPS Tingkat Kabupaten', '2019', 'DINAS', 'Juara 1'),
(98, 2, 11, 2, 'Naifa Shabira', 'Bireuen', 'Olimpiade Sains Nasional (OSN) Bidang Studi IPA Tingkat Kabupaten', '2019', 'DINAS', 'Juara 1'),
(99, 2, 11, 2, 'Yasmin Yumna', 'Bireuen', 'Lomba Pentas PAI Bidang Cerdas Cermat Tingkat Rayon', '2019', '-', 'Juara 1'),
(100, 2, 11, 1, 'Fariz Hirzy', 'Bireuen', 'Lomba Pentas PAI Bidang Cerdas Cermat Tingkat Rayon', '2019', '-', 'Juara 1'),
(101, 2, 11, 2, 'Putri Suhaila', 'Bireuen', 'Lomba Pentas PAI Bidang Cerdas Cermat Tingkat Rayon', '2019', '-', 'Juara 1'),
(102, 2, 11, 1, 'Khairal Abdi', 'Bireuen', 'Lomba Pentas PAI Bidang Kaligrafi Tingkat Rayon', '2019', '-', 'Juara 1'),
(103, 2, 11, 2, 'Nyak Qurratun Aini', 'Bireuen', 'Lomba FLS2N cabang vocal Solo Tingkat Rayon', '2019', 'DINAS', 'Juara 1'),
(104, 2, 11, 2, 'TIM', 'Bireuen', 'Lomba FLS2N cabang Tari Kreasi Tingkat Rayon', '2019', 'DINAS', 'Juara 2'),
(105, 2, 11, 1, 'Khairal Abdi', 'Bireuen', 'Lomba FLS2N cabang Desain Grafis Tingkat Rayon', '2019', 'DINAS', 'Juara 2'),
(106, 2, 14, 1, 'Abil Ghoudzan Effendy', 'Bireuen', 'Lomba Desain Logo Se-Kabupaten Bireuen', '2019', 'Lembaga Askafia', 'Juara 1'),
(107, 2, 14, 1, 'Khairal Abdi', 'Bireuen', 'Lomba Desain Logo Se-Kabupaten Bireuen', '2019', 'Lembaga Askafia', 'Juara 2'),
(108, 2, 14, 1, 'Said Deyyan Denansyah', 'Bireuen', 'Lomba Desain Logo Se-Kabupaten Bireuen', '2019', 'Lembaga Askafia', 'Peringkat 7'),
(109, 2, 14, 1, 'Taufiq Atmaja', 'Bireuen', 'Lomba Desain Logo Se-Kabupaten Bireuen', '2019', 'Lembaga Askafia', 'Peringkat 8'),
(110, 2, 14, 1, 'Nathaniel Abed Kianto', 'Bireuen', 'Lomba Olimpiade Bahasa Inggris Se-Kabupaten Bireuen', '2019', 'Lembaga Askafia', 'Juara 4'),
(111, 2, 14, 1, 'Khairal Abdi', 'Banda Aceh', 'Lomba Pentas PAI Bidang Kaligrafi', '2019', 'Kemenag', 'Peserta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lulusan`
--

CREATE TABLE `lulusan` (
  `id_lulusan` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_jk` int(11) NOT NULL,
  `id_statuspt` int(11) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `nama_kampus` varchar(255) NOT NULL,
  `jalur_kampus` varchar(255) NOT NULL,
  `jurusan_kampus` varchar(255) NOT NULL,
  `ket_lulus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lulusan`
--

INSERT INTO `lulusan` (`id_lulusan`, `id_jurusan`, `id_tp`, `id_jk`, `id_statuspt`, `nama_siswa`, `nama_kampus`, `jalur_kampus`, `jurusan_kampus`, `ket_lulus`) VALUES
(1, 1, 1, 1, 1, 'Andrian Anshari', 'USU ', 'SNMPTN', 'MIPA Fisika ', 'Beasiswa Angk 1'),
(2, 1, 1, 2, 2, 'Desi Ulandari', 'STAI Sidi Kalang ', 'Jalur Mandiri', 'PAI', 'Beasiswa Angk 1'),
(3, 1, 1, 2, 0, 'Fakhrida', '-', '-', '-', 'Beasiswa Angk 1'),
(4, 1, 1, 2, 1, 'Munira Miranda', 'UNSYIAH', 'SNMPTN', 'Agro Bisnis', 'Beasiswa Angk 1'),
(5, 1, 1, 2, 1, 'Muthmainnah', 'ITS SURABAYA', 'SNMPTN', 'Planologi', 'Beasiswa Angk 1'),
(6, 1, 1, 2, 1, 'Nur Asma', 'UNSYIAH', 'SNMPTN', 'MIPA Kimia', 'Beasiswa Angk 1'),
(7, 1, 1, 2, 0, 'Nurhayati', '-', '-', '-', 'Beasiswa Angk 1'),
(8, 1, 1, 2, 0, 'Nurmasyitah', '-', '-', '-', 'Beasiswa Angk 1'),
(9, 1, 1, 1, 1, 'Rabuman', 'U I N Syarif Hidayatullah', 'Undangan ', 'Aqifah Filsafat', 'Beasiswa Angk 1'),
(10, 1, 1, 2, 0, 'Rahmayana', '-', '-', '-', 'Beasiswa Angk 1'),
(11, 1, 1, 1, 1, 'Syahrul Ramazi', 'U I N Syarif Hidayatullah', 'Undangan ', 'Perbandingan Agama', 'Beasiswa Angk 1'),
(12, 1, 1, 1, 1, 'Syamsul Bahri', 'U I N Syarif Hidayatullah', 'Undangan ', 'Perbandingan Agama', 'Beasiswa Angk 1'),
(13, 1, 1, 2, 0, 'Taisi Rati', '-', '-', '-', 'Beasiswa Angk 1'),
(14, 1, 1, 2, 2, 'Wirdatun Nafiah', 'PT GL Kuta Cane', 'Jalur Mandiri', 'Pertanian', 'Beasiswa Angk 1'),
(15, 1, 1, 2, 1, 'Yuvi Suriyani', 'UNSYIAH ', 'SNMPTN', 'FKIP Biologi', 'Beasiswa Angk 1'),
(16, 1, 1, 1, 1, 'Zakiyandi', 'Universitas Gajah Putih ', 'Jalur Mandiri', 'FKIP PPKN', 'Beasiswa Angk 1'),
(17, 1, 1, 1, 2, 'Zubir Rahman', 'LP31 Banda Aceh ', 'Jalur Maandiri', 'Teknik Informatika', 'Beasiswa Angk 1'),
(18, 2, 1, 1, 0, 'Adhani', '-', '-', '-', 'Beasiswa Angk 1'),
(19, 2, 1, 1, 2, 'Dirmansyah', 'STAIN Lhokseumawe', 'Jalur Mandiri', 'Bahasa Inggris', 'Beasiswa Angk 1'),
(20, 2, 1, 2, 2, 'Halimatun Sakdiah', 'AKPER Cut Nyak Dien', 'Jalur Mandiri', 'Keperawatan', 'Beasiswa Angk 1'),
(21, 2, 1, 2, 2, 'Jamaliah', 'STIE Kebangsaan Bireuen', 'Jalur Mandiri', 'Ekonomi Manajemen', 'Beasiswa Angk 1'),
(22, 2, 1, 1, 2, 'Jamaluddin', 'Universitas Serambi Mekah', 'Jalur Mandiri', 'Ekonomi', 'Beasiswa Angk 1'),
(23, 2, 1, 2, 0, 'Juliana', '-', '-', '-', 'Beasiswa Angk 1'),
(24, 2, 1, 2, 2, 'Limpah Liana', 'Universitas Gajah Putih', 'Jalur Mandiri', 'Bahasa Inggris', 'Beasiswa Angk 1'),
(25, 2, 1, 2, 1, 'Maria Ulfa', 'STAIN Lhokseumawe', 'Jalur Mandiri', 'Tarbiyah', 'Beasiswa Angk 1'),
(26, 2, 1, 1, 2, 'Mirzaris', 'Universitas Abulyatama', 'Jalur Mandiri', 'Perikanan ', 'Beasiswa Angk 1'),
(27, 2, 1, 2, 0, 'Muha Silmi', '-', '-', '-', 'Beasiswa Angk 1'),
(28, 2, 1, 1, 1, 'Munawar', 'UNSYIAH', 'SNMPTN', 'Ilmu Politik', 'Beasiswa Angk 1'),
(29, 2, 1, 2, 2, 'Munira', 'Universitas Serambi Mekah', 'Jalur Mandiri', 'Pendidikan Ekonomi', 'Beasiswa Angk 1'),
(30, 2, 1, 1, 2, 'Musliadi', 'Universitas Serambi Mekah', 'Jalur Mandiri', 'Ilmu Administrasi', 'Beasiswa Angk 1'),
(31, 2, 1, 1, 0, 'Nasrullah', '-', '-', '-', 'Beasiswa Angk 1'),
(32, 2, 1, 1, 0, 'Nazaruddin', '-', '-', '-', 'Beasiswa Angk 1'),
(33, 2, 1, 2, 2, 'Nora Safrina', 'Universitas Serambi Mekah', 'Jalur Mandiri', 'Bahasa Inggris', 'Beasiswa Angk 1'),
(34, 2, 1, 2, 1, 'Nova Zulfitri', 'Universitas Teuku  Umar', 'Jalur Mandiri', 'Ekonomi Pembangunan', 'Beasiswa Angk 1'),
(35, 2, 1, 2, 0, 'Nur Hasanah', '-', '-', '-', 'Beasiswa Angk 1'),
(36, 2, 1, 1, 1, 'Ramli Syam', 'UNSYIAH', 'SNMPTN', 'FKIP/ Olahraga', 'Beasiswa Angk 1'),
(37, 2, 1, 1, 1, 'Rizki Kadar Reskana', 'UGM', 'SNMPTN', 'Antropologi/ Ilmu Budaya', 'Beasiswa Angk 1'),
(38, 2, 1, 1, 0, 'Sanusi', '-', '-', '-', 'Beasiswa Angk 1'),
(39, 2, 1, 2, 0, 'Sri Rahayu Ningsih', '-', '-', '-', 'Beasiswa Angk 1'),
(40, 2, 1, 1, 0, 'Sudirman', '-', '-', '-', 'Beasiswa Angk 1'),
(41, 2, 1, 1, 2, 'Zulfitri', 'Universitas Serambi Mekah ', 'Jalur Mandiri', 'Manajemen', 'Beasiswa Angk 1'),
(42, 1, 2, 2, 1, 'ASNIDAR', 'UNSYIAH', 'SNMPTN', 'FMIPA KIMIA', 'Non Beasiswa'),
(43, 1, 2, 1, 1, 'BUDI MUFTI', 'UNSYIAH', 'JALUR MANDIRI', 'TEKNIK SIPIL', 'Non Beasiswa'),
(44, 1, 2, 2, 1, 'CITRA PUAN MAULIDZA', 'UNSYIAH', 'JALUR MANDIRI', 'KEDOKTERAN', 'Non Beasiswa'),
(45, 1, 2, 2, 1, 'FANNUL AULA PUTRI', 'UNSYIAH', 'JALUR MANDIRi', 'FKIP BIOLOGI', 'Non Beasiswa'),
(46, 1, 2, 1, 1, 'FIRZA HAZLI', ' UNSYIAH', 'UMB', 'TEKNIK MESIN', 'Non Beasiswa'),
(47, 1, 2, 1, 1, 'FURQAN', 'UNIMAL', 'USMU', 'TEKNIK ELEKTRO', 'Non Beasiswa'),
(48, 1, 2, 1, 1, 'KHALID IMAM', 'UNSYIAH', 'JALUR MANDIRI', 'TEKNIK INFORMATIKA', 'Non Beasiswa'),
(49, 1, 2, 2, 1, 'MAYANK SERUNI', 'UNSYIAH', 'SNMPTN', 'FE MANAJEMEN', 'Non Beasiswa'),
(50, 1, 2, 1, 1, 'MISWARI', 'UNSYIAH', 'UMB', 'FKIP MATEMATIKA', 'Non Beasiswa'),
(51, 1, 2, 1, 1, 'MUHAMMAD RIZKI', 'UNSYIAH', 'JALUR MANDIRI', 'TEKNIK SIPIL', 'Non Beasiswa'),
(52, 1, 2, 2, 1, 'NINA ROZANNA', 'Akademi Farmasi Banda Aceh', 'JALUR MANDIRI', 'FARMASI', 'Non Beasiswa'),
(53, 1, 2, 1, 2, 'NOVA LIADI', 'UNIVERSITAS ABULYATAMA', 'UMB', 'KEDOKTERAN UMUM', 'Non Beasiswa'),
(54, 1, 2, 2, 1, 'NOVIA LESTARI', 'Politeknik Lhokseumawe', 'JALUR MANDIRI', 'TEKNIK KIMIA INDUSTRI', 'Non Beasiswa'),
(55, 1, 2, 2, 2, 'NURFITRIA', 'UNIVERSITAS ABULYATAMA', 'JALUR MANDIRI', 'KEDOKTERAN UMUM', 'Non Beasiswa'),
(56, 1, 2, 2, 1, 'OZA AZZUHRA', 'UNSYIAH', 'UMB', 'KEDOKTERAN GIGI', 'Non Beasiswa'),
(57, 1, 2, 2, 1, 'PUTRI SlTI SYARIFAH', 'UNSYIAH', 'JALUR MANDIRI', 'KEDOKTERAN UMUM', 'Non Beasiswa'),
(58, 1, 2, 2, 1, 'RAYISZA DARA YULIANA', 'Akademi Farmasi Banda Aceh', 'JALUR MANDIRI', 'FARMASI', 'Non Beasiswa'),
(59, 1, 2, 1, 1, 'RENDY ZULFANDI', 'UNSYIAH', 'SNMPTN', 'PETERNAKAN ', 'Non Beasiswa'),
(60, 1, 2, 2, 1, 'RIZKI NANDA SARI', 'Akademi Gizi Banda Aceh', 'JALUR MANDIRI', 'GIZI', 'Non Beasiswa'),
(61, 1, 2, 2, 1, 'SUCI PUTRI MEILITA', 'UNSYIAH', 'SNMPTN', 'FK1P MATEMATIKA', 'Non Beasiswa'),
(62, 1, 2, 2, 1, 'SUSPINA HUSULA', 'UNSYIAH', 'JALUR MANDIRI', 'KEDOKTERAN GIGI ', 'Non Beasiswa'),
(63, 1, 2, 1, 1, 'T. HERI FIANDA', 'UNIMAL', 'USMU', 'PERTANIAN', 'Non Beasiswa'),
(64, 1, 2, 2, 2, 'TIARA ALVIA VELAYATI', 'UNIVERSITAS ALMUSLIM', 'SNMPTN', 'FKIP FISIKA', 'Non Beasiswa'),
(65, 1, 2, 2, 1, 'YUSRA', 'UNSYIAH', 'JALUR MANDIRI', 'KEDOKTERAN UMUM', 'Non Beasiswa'),
(66, 2, 2, 2, 1, 'ASMAUL HUSNA', 'UNIMAL', 'USMU', 'ILMU POLITIK', 'Non Beasiswa'),
(67, 2, 2, 2, 3, 'AUFA ANDHARA', 'IPDN', 'JALUR MANDIRI', 'ILMU PEMERINTAHAN', 'Non Beasiswa'),
(68, 2, 2, 1, 1, 'AULIA RAIS', 'UNSYIAH', 'JALUR MANDIRI', 'D3 FE AKUNTANSI', 'Non Beasiswa'),
(69, 2, 2, 2, 1, 'CUT REZNA JUNIRDA', 'UNSYIAH', 'SNMPTN', 'EKONOMI PEMBANGUNAN', 'Non Beasiswa'),
(70, 2, 2, 1, 1, 'DAIS', 'UNIMAL', 'UMB', 'AKUNTANSI', 'Non Beasiswa'),
(71, 2, 2, 2, 1, 'EVA IKLIMA', 'UNSYIAH', 'JALUR MANDIRI', 'AKUNTANSI', 'Non Beasiswa'),
(72, 2, 2, 2, 2, 'EVI NURSANI', 'AKBID UNIMUS', 'UMB', 'KEBIDANAN', 'Non Beasiswa'),
(73, 2, 2, 1, 1, 'FAROQ AL AMBARI', 'UNSYIAH', 'SNMPTN', 'ILMU POLITIK', 'Non Beasiswa'),
(74, 2, 2, 2, 1, 'HUSNA', 'UNIMAL', 'UMB', 'PDPK', 'Non Beasiswa'),
(75, 2, 2, 2, 1, 'IRMAYANI', 'UNIMAL', 'SNMPTN', 'AKUNTANSI', 'Non Beasiswa'),
(76, 2, 2, 1, 4, 'MUHAJIR MURTALA', 'KURSUS BAHASA INGGRIS', 'JALUR MANDIRI', '-', 'Non Beasiswa'),
(77, 2, 2, 1, 1, 'MUHAMMAD FAUZAN', 'UNSYIAH', 'UMB', 'ILMU POLITIK', 'Non Beasiswa'),
(78, 2, 2, 2, 2, 'NAZIRA ULFA', 'UNIVERSITAS MEDAN AREA', 'JALUR MANDIRI', 'PSIKOLOGI', 'Non Beasiswa'),
(79, 2, 2, 1, 1, 'NUR MUHAMMAD TARQI', 'UNSYIAH', 'UMB', 'EKONOMI PEMBANGUNAN', 'Non Beasiswa'),
(80, 2, 2, 1, 1, 'YUSRI AKBAR', 'UNSYIAH', 'JALUR MANDIRI', 'HUKUM', 'Non Beasiswa'),
(81, 1, 3, 1, 1, 'BAYU PRATHAMA', 'UNSYIAH', 'SNMPTN', 'Ilmu Komunikasi', 'Non Beasiswa'),
(82, 1, 3, 2, 1, 'FAIKA DETIASARI', 'UNSYIAH', 'SNMPTN', 'Kedokteran Gigi', 'Non Beasiswa'),
(83, 1, 3, 2, 2, 'GEBRINA MERLANDA', 'UNIVERSITAS ABULYATAMA', 'JALUR MANDIRI', 'Kedokteran Umum', 'Non Beasiswa'),
(84, 1, 3, 2, 2, 'HILDA SARYATI', 'UNIVERSITAS AL MUSLIM', 'JALUR MANDIRI', 'FKIP B. Inggris', 'Non Beasiswa'),
(85, 1, 3, 2, 1, 'MEILIZA', 'UNSYIAH', 'SNMPTN', 'FKIP B. Indonesia', 'Non Beasiswa'),
(86, 1, 3, 2, 1, 'MIA MENTARI', 'UNSYIAH', 'SNMPTN', 'FMIPA Matematika', 'Non Beasiswa'),
(87, 1, 3, 1, 3, 'MUHAMMAD KHALISH', 'IPDN', 'JALUR MANDIRI', 'Ilmu Pemerintahan', 'Non Beasiswa'),
(88, 1, 3, 1, 1, 'RAHMAT AULIA SAPUTRA', 'UGM', 'SNMPTN', 'Perikanan dan Kelautan', 'Non Beasiswa'),
(89, 1, 3, 1, 1, 'RAHMAT MAULIZAR', 'UGM', 'SNMPTN', 'Statistika', 'Non Beasiswa'),
(90, 1, 3, 2, 1, 'RAIHAN SAPUTRI', 'UNSYIAH', 'SNMPTN', 'Ekonomi Pembangunan', 'Non Beasiswa'),
(91, 1, 3, 2, 2, 'RAIHANIL JANNAH', 'UISU', 'JALUR MANDIRI', 'Kedokteran Umum', 'Non Beasiswa'),
(92, 1, 3, 1, 1, 'RIDHA RADHWA HAMDANI', 'UNSYIAH', 'SNMPTN', 'Teknik Sipil', 'Non Beasiswa'),
(93, 1, 3, 2, 1, 'RIRIN ALVIANITA', 'UNSYIAH', 'SNMPTN', 'Budidaya Perairan', 'Non Beasiswa'),
(94, 1, 3, 2, 1, 'RISKA', 'UNSYIAH', 'SNMPTN', 'Teknik Hasil Pertanian', 'Non Beasiswa'),
(95, 1, 3, 1, 2, 'SALMAN', 'ITM Medan', 'JALUR MANDIRI', 'Teknik Pertambangan', 'Non Beasiswa'),
(96, 1, 3, 2, 1, 'TRYISZA NOVA PERMATA DIANA', 'UNSYIAH', 'SNMPTN', 'Ekonomi Manajemen', 'Non Beasiswa'),
(97, 1, 3, 2, 1, 'VINA INDAH APRIANNI', 'UNDIP', 'UNDANGAN', 'PWK (Planologi)', 'Non Beasiswa'),
(98, 2, 3, 1, 1, 'AL KADRI', 'UNSYIAH', 'SNMPTN', 'Sosek Pertanian', 'Non Beasiswa'),
(99, 2, 3, 1, 1, 'AL KAUTSAR', 'UNSYIAH', 'SNMPTN', 'Akuntansi', 'Non Beasiswa'),
(100, 2, 3, 1, 2, 'ANDRI KURNIAWAN', 'UNIVERSITAS AL MUSLIM', 'JALUR MANDIRI', 'Agroteknologi Pertanian', 'Non Beasiswa'),
(101, 2, 3, 2, 1, 'DEVI MAULIDARNI', 'UNSYIAH', 'SNMPTN', 'Hukum Unsyiah', 'Non Beasiswa'),
(102, 2, 3, 2, 1, 'EKA SARYANTI', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Sastra Arab', 'Non Beasiswa'),
(103, 2, 3, 1, 2, 'FAIRUZ ALHAMDI', 'President University', 'JALUR MANDIRI', 'Hubungan Internasional', 'Non Beasiswa'),
(104, 2, 3, 2, 1, 'FERAWATI', 'UNSYIAH', 'SNMPTN', 'Ekonomi Pembangunan', 'Non Beasiswa'),
(105, 2, 3, 2, 1, 'FITRIANI', 'UNSYIAH', 'SNMPTN', 'FKIP Ekonomi ', 'Non Beasiswa'),
(106, 2, 3, 2, 1, 'INDAH DWI NAYA', 'USU', 'SNMPTN', 'Sastra Arab ', 'Non Beasiswa'),
(107, 2, 3, 1, 2, 'ISRARUDDIN', 'Paramadina University', 'BEASISWA ', 'Hubungan Internasional', 'Non Beasiswa'),
(108, 2, 3, 2, 1, 'MAULIDA', 'UNSYIAH', 'SNMPTN', 'FKIP Ekonomi', 'Non Beasiswa'),
(109, 2, 3, 2, 1, 'MEIZAR FUZIA', 'UNSYIAH', 'SNMPTN', 'Manajemen', 'Non Beasiswa'),
(110, 2, 3, 1, 1, 'MIRZA DWI PUTRA', 'UNSYIAH', 'SNMPTN', 'Manajemen', 'Non Beasiswa'),
(111, 2, 3, 2, 1, 'MISRAWATI', 'UNIMAL', 'SNMPTN', 'Ilmu Administrasi', 'Non Beasiswa'),
(112, 2, 3, 1, 1, 'MIZARWAN RIZKI', 'UNIMAL', 'SNMPTN', 'Ilmu Politik', 'Non Beasiswa'),
(113, 2, 3, 2, 1, 'NADIA PUTRI MEDITARIAN', 'UNSYIAH', 'SNMPTN', 'Ilmu Komunikasi', 'Non Beasiswa'),
(114, 2, 3, 2, 1, 'NINDA MAULIDA', 'UNSYIAH', 'SNMPTN', 'Manajemen', 'Non Beasiswa'),
(115, 2, 3, 2, 1, 'NOVA AMALIA', 'UNSYIAH', 'SNMPTN', 'FKIP Ekonomi', 'Non Beasiswa'),
(116, 2, 3, 2, 1, 'NOVITA MAYASARI', 'UNSYIAH', 'SNMPTN', 'FKIP Ekonomi', 'Non Beasiswa'),
(117, 2, 3, 1, 1, 'REZA ARISMUNANDAR', 'UNSYIAH', 'SNMPTN', 'Pend. Seni dan Musik', 'Non Beasiswa'),
(118, 2, 3, 2, 1, 'RICHA EVA FONNA', 'UNSYIAH', 'SNMPTN', 'Manajemen', 'Non Beasiswa'),
(119, 2, 3, 2, 1, 'RIZKI MARDIANA', 'UNSYIAH', 'SNMPTN', 'Akuntansi', 'Non Beasiswa'),
(120, 2, 3, 1, 3, 'RIZKY AKBAR', 'IPDN', 'JALUR MANDIRI', 'Ilmu Pemerintahan', 'Non Beasiswa'),
(121, 2, 3, 2, 2, 'TRI AYU HARNI', 'PSIK STIKES Medan', 'JALUR MANDIRI', 'Keperawatan', 'Non Beasiswa'),
(122, 2, 3, 1, 1, 'ZULFAHMI PUTRA', 'UNSYIAH', 'SNMPTN', 'Ekonomi Manajemen', 'Non Beasiswa'),
(123, 1, 4, 2, 1, 'Afrina Zahara', 'UNSYIAH', 'SNMPTN', 'Ekonomi Pembangunan', 'Non Beasiswa'),
(124, 1, 4, 1, 1, 'Agil M Caesar', 'USU', 'SNMPTN', 'Teknik Elektro', 'Non Beasiswa'),
(125, 1, 4, 2, 2, 'Astri Ulfani', 'UISU', 'Seleksi Mandiri', 'Teknik Informatika', 'Non Beasiswa'),
(126, 1, 4, 2, 2, 'Ayu Maulida', 'Akper Cut Nyak Dhien', 'Seleksi Mandiri', 'Keperawatan', 'Non Beasiswa'),
(127, 1, 4, 2, 1, 'Cut Dirayati Safira', 'UNSYIAH', 'SNMPTN', 'Teknik Informatika', 'Non Beasiswa'),
(128, 1, 4, 2, 1, 'Cut Farah Naza Adila', 'UIN AR-RANIRY', 'Seleksi Mandiri', 'Tarbiyah English', 'Non Beasiswa'),
(129, 1, 4, 2, 1, 'Evi Safitri', 'UNSYIAH', 'SNMPTN', 'MIPA Matematika', 'Non Beasiswa'),
(130, 1, 4, 2, 1, 'Fitri Muliani', 'UNSYIAH', 'TPBI', 'Teknik Arsitektur', 'Non Beasiswa'),
(131, 1, 4, 1, 1, 'Hardiansyah Putra', 'UNSYIAH', 'TPBI', 'Pendidikan Matematika', 'Non Beasiswa'),
(132, 1, 4, 2, 1, 'Intan Novira', 'UNSYIAH', 'SNMPTN', 'PSIK (Ilmu Keperawatan)', 'Non Beasiswa'),
(133, 1, 4, 2, 1, 'Ira Kasmira', 'UNSYIAH', 'SNMPTN', 'PSIK (Ilmu Keperawatan)', 'Non Beasiswa'),
(134, 1, 4, 2, 1, 'Istia Rahmah', 'UNSYIAH', 'SNMPTN', 'Kedokteran Umum', 'Non Beasiswa'),
(135, 1, 4, 2, 1, 'Nanda Puspa Kemala', 'UNSYIAH', 'SNMPTN', 'MIPA KIMIA', 'Non Beasiswa'),
(136, 1, 4, 2, 1, 'Nevi Youstin', 'UNSYIAH', 'SNMPTN', 'MIPA Matematika', 'Non Beasiswa'),
(137, 1, 4, 2, 1, 'Ovi Nurbalqis', 'UNDIP', 'Undangan', 'PWK (Planologi)', 'Non Beasiswa'),
(138, 1, 4, 2, 1, 'Raihanul Jannah', 'UNSYIAH', 'SNMPTN', 'Manajemen', 'Non Beasiswa'),
(139, 1, 4, 2, 1, 'Rauzatul Husna', 'Politeknik Lhokseumawe', 'Seleksi Mandiri', 'Akuntansi', 'Non Beasiswa'),
(140, 1, 4, 2, 2, 'Rafikah', 'STAI Al Aziziyah Samalanga', 'Seleksi Mandiri', 'Tarbiyah', 'Non Beasiswa'),
(141, 1, 4, 1, 1, 'Reza Aulia', 'UNSYIAH', 'Seleksi Mandiri', 'MIPA KIMIA', 'Non Beasiswa'),
(142, 1, 4, 1, 1, 'Ricky Fakhrozi', 'UNSYIAH', 'SNMPTN', 'Manajemen', 'Non Beasiswa'),
(143, 1, 4, 2, 1, 'Risna Novia Dara', 'UNSYIAH', 'SNMPTN', 'MIPA Matematika', 'Non Beasiswa'),
(144, 1, 4, 1, 2, 'Rizqi Naridha', 'STT Telkom Bandung', 'Undangan Khusus OSN', 'Teknik Fisika', 'Non Beasiswa'),
(145, 1, 4, 2, 1, 'Yunisyah Hazzariah', 'UNSYIAH', 'SNMPTN', 'Teknik Arsitektur', 'Beasiswa RSBI'),
(146, 1, 4, 1, 0, 'Danil Saputra ', 'Mengulang UN ditahun berikutnya', '-', 'Mengulang UN ditahun berikutnya', 'Beasiswa RSBI'),
(147, 2, 4, 1, 2, 'Aidil Sabri', 'President University', 'Seleksi Mandiri', 'Hubungan Internasional', 'Non Beasiswa'),
(148, 2, 4, 2, 1, 'Amalia Mukhtar', 'UNSYIAH', 'Undangan', 'Hukum', 'Non Beasiswa'),
(149, 2, 4, 2, 1, 'Dara Auni', 'UNSYIAH', 'SNMPTN', 'Akuntansi', 'Non Beasiswa'),
(150, 2, 4, 2, 1, 'Destya Darsiana', 'UNSYIAH', 'SNMPTN', 'Sosiologi', 'Non Beasiswa'),
(151, 2, 4, 1, 1, 'Ichwan Azmi', 'UNSYIAH', 'SNMPTN', 'Psikologi', 'Beasiswa RSBI'),
(152, 2, 4, 2, 1, 'Mifta Magfirah', 'UNSYIAH', 'TPBI', 'Akuntansi', 'Non Beasiswa'),
(153, 2, 4, 1, 1, 'Muhammad Furqan', 'UNSYIAH', 'SNMPTN', 'Hukum', 'Non Beasiswa'),
(154, 2, 4, 1, 1, 'Mulya Irzan', 'UNSYIAH', 'TPBI', 'Akuntansi', 'Non Beasiswa'),
(155, 2, 4, 2, 1, 'Putri Namira', 'UNSYIAH', 'SNMPTN', 'Hukum', 'Non Beasiswa'),
(156, 2, 4, 2, 1, 'Siti Nurbayani', 'UNSYIAH', 'SNMPTN', 'Ilmu Komunikasi', 'Non Beasiswa'),
(157, 2, 4, 2, 1, 'Sukma Yulia', 'UNSYIAH', 'UMB', 'Ilmu Komunikasi', 'Non Beasiswa'),
(158, 2, 4, 2, 2, 'Zarizatun Fauza', 'Yayasan Binalita Sudama Medan', 'Seleksi Mandiri', 'Akademi Refraksi Optisi', 'Non Beasiswa'),
(159, 1, 5, 2, 1, 'CUT FARADILLASARI', 'UNSYIAH', 'SNMPTN', 'Teknik Kimia', 'Non Beasiswa'),
(160, 1, 5, 2, 1, 'DESI AGUSTIN', 'UNSYIAH', 'SNMPTN', 'Farmasi', 'Beasiswa RSBI'),
(161, 1, 5, 1, 0, 'FERNANDO M. NUGRAHA', '-', '-', '-', 'Non Beasiswa'),
(162, 1, 5, 2, 1, 'FIRNA ARYATI', 'UNSYIAH', 'SNMPTN', 'MIPA Kimia', 'Non Beasiswa'),
(163, 1, 5, 2, 1, 'INTAN MEUTIA', 'UNSYIAH', 'UMB', 'Teknik Informatika', 'Non Beasiswa'),
(164, 1, 5, 1, 0, 'MUHAJIR SAPUTRA', '-', '', '-', 'Beasiswa RSBI'),
(165, 1, 5, 1, 1, 'MUHAMMAD REZA FAHLEVI AKBAR', 'UNSYIAH', 'SNMPTN', 'Teknik Elektro', 'Beasiswa RSBI'),
(166, 1, 5, 1, 2, 'MUHAMMAD YONI FONSA', 'UMSU', 'UMB', 'Kesehatan Masyarakat', 'Non Beasiswa'),
(167, 1, 5, 1, 0, 'MUKHSALMINA', '-', '', '-', 'Beasiswa RSBI'),
(168, 1, 5, 2, 2, 'MULYA RAHMATI', 'Poltekkes Kesdam', '', 'D3- Keperawatan', 'Non Beasiswa'),
(169, 1, 5, 2, 2, 'NASIHA ALKASINA', 'UMSU', 'UMB', 'Kedokteran Gigi', 'Non Beasiswa'),
(170, 1, 5, 1, 1, 'ORI VA MALQUNA', 'Politeknik Lhokseumawe', '', 'Teknik Kimia', 'Beasiswa RSBI'),
(171, 1, 5, 2, 2, 'PUTRI YOWANA', 'UNIVERISTAS ABULYATAMA', '', 'Kedokteran Umum', 'Non Beasiswa'),
(172, 1, 5, 1, 1, 'RAMADHAN', 'UNIMAL', 'UMB', 'Agribisnis', 'Non Beasiswa'),
(173, 1, 5, 2, 2, 'SITI SARAH DALILA', 'UNMUHA', '', 'Kesehatan Masyarakat', 'Non Beasiswa'),
(174, 1, 5, 2, 1, 'SITTY MAGHFIRAH', 'UNSYIAH', 'SBMPTN', 'Pendidikan Fisika', 'Non Beasiswa'),
(175, 2, 5, 1, 1, 'AHLUL HAFRIANDI', 'UNSYIAH', 'UMB', 'Ekonomi Pembangunan', 'Non Beasiswa'),
(176, 2, 5, 2, 1, 'ALEXANDRIA JAMILATUL QADRI', 'UNSYIAH', 'SNMPTN', 'Manajemen', 'Beasiswa RSBI'),
(177, 2, 5, 1, 1, 'ALI MURSALAN', 'UNSYIAH', 'SBMPTN', 'Pend. Seni', 'Beasiswa RSBI'),
(178, 2, 5, 2, 1, 'AYU RATNA SARI', 'UNSYIAH', 'SNMPTN', 'Akuntansi', 'Beasiswa RSBI'),
(179, 2, 5, 2, 1, 'BAIZATUL AKMAN', 'UNSYIAH', 'SNMPTN', 'Ekonomi Pembangunan', ''),
(180, 2, 5, 1, 1, 'DEDY SAFRIADY', 'UNSYIAH', 'SBMPTN', 'Ilmu Politik', 'Beasiswa RSBI'),
(181, 2, 5, 2, 1, 'FARAHNAZ SAIFA', 'UNSYIAH', 'Ujian Masuk D3', 'D3- Manajemen', ''),
(182, 2, 5, 1, 1, 'FATHUL AQLI', 'UNSYIAH', 'SNMPTN', 'Manajemen', ''),
(183, 2, 5, 2, 1, 'FIRA RAYANTI', 'Poltekkes B.Aceh', '', 'Medical Bedah', ''),
(184, 2, 5, 1, 1, 'GEMASIH', 'UNSYIAH', 'SNMPTN', 'Ilmu Politik', 'Beasiswa RSBI'),
(185, 2, 5, 2, 1, 'HERVINA', 'UNSYIAH', 'SNMPTN', 'Akuntansi', ''),
(186, 2, 5, 2, 1, 'IRMAYANA', 'UNSYIAH', 'SNMPTN', 'Psikologi', 'Beasiswa RSBI'),
(187, 2, 5, 1, 3, 'IZAM RACHMAD YUSRAL', 'SPN Seulawah', '', 'Polisi', ''),
(188, 2, 5, 2, 1, 'JULITA WINANDA', 'UNSYIAH', 'SNMPTN', 'Pendidikan Geografi', 'Beasiswa RSBI'),
(189, 2, 5, 2, 1, 'MAYA ULFA', 'Poltekkes Dep Kes.', '', 'D3-Kebidanan', ''),
(190, 2, 5, 1, 1, 'MUHAMMAD FERDY JOELY', 'UNSYIAH', 'SBMPTN', 'Akuntansi', ''),
(191, 2, 5, 1, 1, 'MUJIBURRAHMAN', 'UNIMAL', 'SBMPTN', 'Ekonomi', 'Beasiswa RSBI'),
(192, 2, 5, 1, 2, 'NOERFAIZI', 'PU', 'Mandiri', 'Ekonomi', ''),
(193, 2, 5, 2, 1, 'NURUL FAJRI', 'UNSYIAH', 'SNMPTN', 'Pendidikan Geografi', 'Beasiswa RSBI'),
(194, 2, 5, 2, 2, 'SITI ISMI REZEKINA', 'UMSU', '', 'Ekonomi', ''),
(195, 2, 5, 2, 1, 'TETTIANA EDWARD', 'UNSYIAH', 'Ujian Masuk D3', 'D3-Akuntansi', ''),
(196, 2, 5, 2, 1, 'ZIADUR ROCKA', 'UNSYIAH', 'SBMPTN', 'Ilmu Sosiologi', ''),
(197, 1, 6, 2, 1, 'Adilla Wiza', 'Poltekkes Aceh', 'JALUR MANDIRI', 'Keperawatan Gigi', 'Non Beasiswa'),
(198, 1, 6, 1, 1, 'Aditya Aziz Fikhri', 'Politeknik Lhokseumawe', 'JALUR MANDIRI', 'Teknik Informatika', 'Non Beasiswa'),
(199, 1, 6, 1, 1, 'Agam Iza Awlia', 'UNIMAL', 'SBMPTN', 'Akuntasi', 'Non Beasiswa'),
(200, 1, 6, 2, 0, 'Ajeng Kurniati', '-', '-', '-', 'Beasiswa RSBI'),
(201, 1, 6, 1, 1, 'Asrul Setyadi', 'IPB Bogor', 'SNMPTN', 'Ilmu Kelautan', 'Non Beasiswa'),
(202, 1, 6, 2, 2, 'Ayuke Rasekina', 'AKBID AL Muslim', 'JALUR MANDIRI', 'Kebidanan', 'Non Beasiswa'),
(203, 1, 6, 2, 1, 'Cut Zaira Adilla Alhumaira', 'UNSYIAH', 'SBMPTN', 'Kedokteran Umum', 'Non Beasiswa'),
(204, 1, 6, 2, 1, 'Dara Nadhira', 'UNSYIAH', 'SBMPTN', 'MIPA Fisika', 'Non Beasiswa'),
(205, 1, 6, 2, 0, 'Dewi Sasmita Sari', '-', '-', '-', 'Beasiswa RSBI'),
(206, 1, 6, 2, 1, 'Dian Manya', 'UNSYIAH', 'SBMPTN', 'FKIP Bahasa Indonesia', 'Non Beasiswa'),
(207, 1, 6, 2, 1, 'Erna Safitri', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Tarbiyah English', 'Non Beasiswa'),
(208, 1, 6, 2, 1, 'Iradatul Hasani', 'UNIMAL', 'SBMPTN', 'Akuntansi', 'Beasiswa RSBI'),
(209, 1, 6, 2, 1, 'Milla Al-Barrah', 'UNSYIAH', 'SBMPTN', 'Teknik Sipil', 'Non Beasiswa'),
(210, 1, 6, 1, 1, 'Muammar Rizki', 'UNIMAL', 'SBMPTN', 'Teknik Elektro', 'Beasiswa RSBI'),
(211, 1, 6, 1, 1, 'Muhammad Aidil Fikri', 'UNSYIAH', 'SBMPTN', 'PSIKA', 'Non Beasiswa'),
(212, 1, 6, 1, 2, 'Muhammad Haikal', 'ITM Medan', 'JALUR MANDIRI', 'Teknik Informatika', 'Non Beasiswa'),
(213, 1, 6, 1, 1, 'Muhammad Iqbal Saputra', 'UNSYIAH', 'SBMPTN', 'MIPA Fisika', 'Non Beasiswa'),
(214, 1, 6, 2, 1, 'Nabila Zuhra', 'UNSYIAH', 'SBMPTN', 'Teknik Kimia', 'Non Beasiswa'),
(215, 1, 6, 2, 1, 'Nanda Rizka Utami', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Tarbiyah English', 'Non Beasiswa'),
(216, 1, 6, 2, 0, 'Nazylla Heidiyatna', '-', '-', '-', 'Non Beasiswa'),
(217, 1, 6, 2, 1, 'Qaulul Yasri', 'AKFarmasi Aceh', 'JALUR MANDIRI', 'Farmasi', 'Non Beasiswa'),
(218, 1, 6, 2, 2, 'Raihan Tasya', 'UNMUHA', 'JALUR MANDIRI', 'Pariwisata', 'Non Beasiswa'),
(219, 1, 6, 2, 1, 'Reigi Suci Shaliha', 'AKZI Bogor', 'JALUR MANDIRI', 'Gizi', 'Non Beasiswa'),
(220, 1, 6, 2, 1, 'Roza Safitri', 'UNIMAL', 'SBMPTN', 'Teknik Informatika', 'Beasiswa RSBI'),
(221, 2, 6, 1, 1, 'Adinur', 'UNSYIAH', 'SBMPTN', 'FKIP Geografi', 'Non Beasiswa'),
(222, 2, 6, 2, 1, 'Alifa Fitria', 'UNSYIAH', 'SBMPTN', 'Ekonomi ', 'Non Beasiswa'),
(223, 2, 6, 2, 0, 'Asmaul Husna', '-', '-', '-', 'Beasiswa RSBI'),
(224, 2, 6, 2, 1, 'Aufa Usrina', 'UNSYIAH', 'SBMPTN', 'Hukum', 'Non Beasiswa'),
(225, 2, 6, 1, 1, 'Bayu Dede Pamungkas', 'UIN AR RANIRY', 'JALUR MANDIRI', 'Tarbiyah English', 'Non Beasiswa'),
(226, 2, 6, 2, 0, 'Cut Shella Meutia Anmar', '-', '-', '-', 'Beasiswa RSBI'),
(227, 2, 6, 2, 1, 'Elfiani', 'UIN AR RANIRY', 'JALUR MANDIRI', 'Ilmu Perpustakaan', 'Beasiswa RSBI'),
(228, 2, 6, 1, 1, 'Firdaus Adiannur', 'UNSYIAH', 'SBMPTN', 'FKIP Bahasa Indonesia', 'Non Beasiswa'),
(229, 2, 6, 1, 1, 'Ikhsan Maulana', 'UNSYIAH', 'SBMPTN', 'FKIP Ekonomi', 'Non Beasiswa'),
(230, 2, 6, 1, 1, 'Kevin Musbar', 'USU', 'SBMPTN', 'Bahasa Inggris', 'Non Beasiswa'),
(231, 2, 6, 1, 1, 'M. Reza Rizky', 'UNIMAL', 'SBMPTN', 'Manajemen', 'Non Beasiswa'),
(232, 2, 6, 1, 1, 'M. Ridwan', 'UNSYIAH', 'SBMPTN', 'Manajemen ', 'Non Beasiswa'),
(233, 2, 6, 2, 1, 'Maya Ulfa', 'UNSYIAH', 'SBMPTN', 'Manajemen', 'Non Beasiswa'),
(234, 2, 6, 1, 1, 'Mohd. Arief Maulana', 'UNSYIAH', 'SBMPTN', 'FKIP', 'Non Beasiswa'),
(235, 2, 6, 1, 0, 'Muhammad Luthfi', '-', '-', '-', 'Beasiswa RSBI'),
(236, 2, 6, 2, 0, 'Nindya Satyandita', '-', '-', '-', 'Non Beasiswa'),
(237, 2, 6, 2, 0, 'Radhiah', '-', '-', '-', 'Non Beasiswa'),
(238, 2, 6, 1, 2, 'Raja Ibadia Syaqqur', 'President University', 'JALURMANDIRI', 'Hubungan Internasional', 'Non Beasiswa'),
(239, 2, 6, 2, 1, 'Rina', 'UNSYIAH', 'SBMPTN', 'Akuntansi', 'Beasiswa RSBI'),
(240, 2, 6, 1, 1, 'Ryan Zamachsyari', 'UNSYIAH', 'SBMPTN', 'Akuntansi', 'Non Beasiswa'),
(241, 2, 6, 2, 0, 'Sarah Ulfa', '-', '-', '-', 'Non Beasiswa'),
(242, 2, 6, 2, 2, 'Sulaiska Gemasih', 'AKBID Medan', 'JALUR MANDIRI', 'Kebidanan', 'Non Beasiswa'),
(243, 2, 6, 2, 1, 'Syarifah Wahidah', 'UIN Sumatra Utara', 'JALUR MANDIRI', 'Bimbingan Konseling', 'Non Beasiswa'),
(244, 2, 6, 2, 1, 'Ulfa Safira', 'UNSYIAH', 'SBMPTN', 'Akuntansi', 'Non Beasiswa'),
(245, 2, 6, 2, 0, 'Veronica', '-', '-', '-', 'Non Beasiswa'),
(246, 1, 7, 2, 1, 'Mitha Zulifa', 'UNSYIAH', 'SNMPTN', 'Kedokteran ', 'Non Beasiswa'),
(247, 1, 7, 2, 3, 'Adelina Wiza', 'STIS', 'PMDK', 'Statistik', 'Non Beasiswa'),
(248, 1, 7, 1, 3, 'Muhammad Rizqi', 'STIS', 'PMDK', 'Statistik', 'Non Beasiswa'),
(249, 1, 7, 1, 2, 'Fadhlur Rivanda', 'President University', 'PMDK-Beasiswa 2 - Bright', 'International Relations', 'Non Beasiswa'),
(250, 1, 7, 1, 2, 'Muhammad Farhan Alfaridzi', 'President University', 'PMDK-Beasiswa 2 ', 'Communication - Public Relations', 'Non Beasiswa'),
(251, 1, 7, 1, 1, 'Agung Al Caesar', 'UNDIP', 'SBMPTN', 'Teknik Perkapalan', 'Beasiswa RSBI'),
(252, 1, 7, 1, 1, 'Ahdiya Syahrir', 'UNIBRAW', 'SBMPTN', 'Ilmu Kelautan', 'Non Beasiswa'),
(253, 1, 7, 2, 1, 'Cindy Yora Nabila', 'UNSYIAH', 'SBMPTN', 'Teknik Geofisika', 'Non Beasiswa'),
(254, 1, 7, 2, 1, 'Fonna Faradina', 'UNSYIAH', 'SBMPTN', 'Biologi', 'Non Beasiswa'),
(255, 1, 7, 1, 1, 'Hidayatul Muttaqin', 'UNSYIAH', 'SBMPTN', 'Teknik Mesin', 'Non Beasiswa'),
(256, 1, 7, 2, 1, 'Ira Indriani', 'UNIMAL', 'SBMPTN', 'Agribisnis ', 'Beasiswa RSBI'),
(257, 1, 7, 2, 1, 'Merna Yulia', 'UNSYIAH', 'SBMPTN', 'Teknologi Hasil Pertanian', 'Non Beasiswa'),
(258, 1, 7, 2, 1, 'Nadya Miftahuljannah', 'USU', 'SBMPTN', 'Kesehatan Masyarakat', 'Non Beasiswa'),
(259, 1, 7, 2, 1, 'Nurul Ulya', 'UNSYIAH', 'SBMPTN', 'Kedokteran ', 'Non Beasiswa'),
(260, 1, 7, 2, 1, 'Raihan Uliya', 'USU', 'SBMPTN', 'Manajemen Sumber Daya Perairan', 'Non Beasiswa'),
(261, 1, 7, 1, 1, 'Ramadhan', 'UPN Jogja', 'SBMPTN', 'Ekonomi', 'Non Beasiswa'),
(262, 1, 7, 2, 1, 'Raziatul Husna', 'UNIMAL', 'SBMPTN', 'Fisika', 'Beasiswa RSBI'),
(263, 1, 7, 1, 1, 'Ridwan', 'UNIMAL', 'SBMPTN', 'Teknologi Informasi', 'Non Beasiswa'),
(264, 1, 7, 2, 1, 'Sarah Azeda', 'UNSYIAH', 'SBMPTN', 'Manajemen', 'Non Beasiswa'),
(265, 1, 7, 2, 1, 'Ulfa Khairina', 'UNSYIAH', 'SBMPTN', 'Perairan', 'Non Beasiswa'),
(266, 1, 7, 2, 1, 'Zuliana Rahmah', 'UNSYIAH', 'SBMPTN', 'MIPA Kimia', 'Non Beasiswa'),
(267, 1, 7, 1, 1, 'Maulida Shafi', 'UNSYIAH', 'SBMPTN', 'Teknik Pertanian', 'Non Beasiswa'),
(268, 1, 7, 2, 0, 'Rina Mutia Fajar', '-', '-', '-', 'Beasiswa RSBI'),
(269, 1, 7, 1, 1, 'Multazamullah', 'UNSYIAH', 'UMB', 'Teknik Sipil', 'Non Beasiswa'),
(270, 1, 7, 1, 1, 'Hafizhuddin Zulkifli', 'UNSYIAH', 'UMB', 'Agribisnis ', 'Non Beasiswa'),
(271, 1, 7, 1, 1, 'Akdam Mubarrok', 'UNSYIAH', 'UMB', 'D3 Elektronika', 'Non Beasiswa'),
(272, 1, 7, 2, 1, 'Ardela Putri Azhari', 'UNSYIAH', 'UMB', 'Ilmu Keperawatan', 'Non Beasiswa'),
(273, 1, 7, 1, 1, 'M. Ihsan', 'UNSYIAH', 'UMB', 'Teknik Industri', 'Non Beasiswa'),
(274, 1, 7, 1, 1, 'Asri Ariefandi Hamdani', 'UNSYIAH', 'UMB', 'Hukum', 'Non Beasiswa'),
(275, 1, 7, 2, 0, 'Cut Putri Mayasari', '-', '-', '-', 'Non Beasiswa'),
(276, 1, 7, 2, 2, 'Dini Rifhany', 'Universitas Medan Area', 'Jalur Mandiri', 'Psikologi', 'Non Beasiswa'),
(277, 1, 7, 2, 1, 'Yuci Maulida', 'Poltekkes Aceh', 'Jalur Mandiri', 'Farmasi', 'Non Beasiswa'),
(278, 1, 7, 2, 0, 'Sry Rezeki', '-', '-', '-', 'Non Beasiswa'),
(279, 1, 7, 2, 2, 'Nadya Tara Fonna Baru Bara', 'Universitas Trisakti', 'Jalur Mandiri', 'Manajemen', 'Non Beasiswa'),
(280, 1, 7, 2, 0, 'Raudhah', '-', '-', '-', 'Non Beasiswa'),
(281, 1, 7, 2, 0, 'Rehan Destrian', '-', '-', '-', 'Non Beasiswa'),
(282, 1, 7, 2, 0, 'Yara Soraya', '-', '-', '-', 'Non Beasiswa'),
(283, 1, 7, 2, 0, 'Ella Rahmayanti', '-', '-', '-', 'Non Beasiswa'),
(284, 1, 7, 2, 0, 'Iklima', '-', '-', '-', 'Beasiswa RSBI'),
(285, 1, 7, 2, 1, 'Raisa Taufik', 'UNIMED', 'SBMPTN', 'TATA BUSANA', 'Non Beasiswa'),
(286, 1, 7, 1, 3, 'Rian Gumiwa', 'SPN Seulawah', 'Jalur Mandiri', 'Polisi', 'Non Beasiswa'),
(287, 2, 7, 2, 1, 'Intan Maulianda', 'UNSYIAH', 'SNMPTN', 'Hukum', 'Non Beasiswa'),
(288, 2, 7, 0, 0, 'Asmaul Husna', '-', '-', '-', 'Beasiswa RSBI'),
(289, 2, 7, 2, 2, 'Amira Rahma Dzikra', 'President University', 'PMDK-Beasiswa 1', 'Management', 'Non Beasiswa'),
(290, 2, 7, 2, 2, 'Rauzatul Jannah', 'President University', 'PMDK-Beasiswa 3 - Bright', 'Law', 'Non Beasiswa'),
(291, 2, 7, 2, 2, 'Millati Amalia', 'President University', 'PMDK-Beasiswa 2 - Bright', 'Desain Komunikasi Visual', 'Non Beasiswa'),
(292, 2, 7, 2, 2, 'Farah Damaya', 'UMSU', 'JALUR MANDIRI', 'Akuntasi', 'Non Beasiswa'),
(293, 2, 7, 2, 1, 'Irda Nova', 'UNIMAL', 'SBMPTN', 'Manajemen', 'Beasiswa RSBI'),
(294, 2, 7, 2, 1, 'Hasinta Ovi Yana', 'UNSYIAH', 'SBMPTN', 'FKIP GEOGRAFI', 'Beasiswa RSBI'),
(295, 2, 7, 1, 1, 'M.Fariz Albar Nabudi', 'UNSYIAH', 'SBMPTN', 'Ilmu Hukum', 'Non Beasiswa'),
(296, 2, 7, 2, 1, 'Mina Adriana', 'UNIMAL', 'SBMPTN', 'Komunikasi', 'Non Beasiswa'),
(297, 2, 7, 2, 2, 'Mutia Rahmi', 'Universitas Al Muslim ', 'Jalur Mandiri', 'Bahasa Inggris', 'Beasiswa RSBI'),
(298, 2, 7, 1, 1, 'Nyak Muhammad Renaldi', 'UNSYIAH', 'SBMPTN', 'FKIP Ekonomi', 'Non Beasiswa'),
(299, 2, 7, 2, 2, 'Frisca Nazhiera', 'President University', 'PMDK-Beasiswa 4', 'International Relations', 'Non Beasiswa'),
(300, 2, 7, 1, 1, 'M. Heri Rizky', 'STP Aceh', 'JALUR MANDIRI', 'Pelayaran ', 'Non Beasiswa'),
(301, 2, 7, 1, 3, 'M. Bilal Maulana', 'SPN Seulawah', 'JALUR MANDIRI', 'Polisi', 'Non Beasiswa'),
(302, 2, 7, 1, 3, 'Nasrullah ', 'SPN Seulawah', 'JALUR MANDIRI', 'Polisi', 'Non Beasiswa'),
(303, 2, 7, 1, 3, 'Muhammad Rafi', 'SPN Seulawah', 'JALUR MANDIRI', 'Polisi', 'Non Beasiswa'),
(304, 2, 7, 2, 1, 'Fata Nilam ', 'UNSYIAH', 'JALUR MANDIRI', 'D3 Akuntansi', 'Non Beasiswa'),
(305, 2, 7, 2, 2, 'Meilinda Aditya', 'UNIVERSITAS GUNADHARMA', 'JALUR MANDIRI', 'Manajemen', 'Non Beasiswa'),
(306, 2, 7, 1, 0, 'Muhammad Ferry Sahyoza', '-', '-', '-', 'Non Beasiswa'),
(307, 2, 7, 1, 1, 'Muhammad Iqram Mirwan', 'UNSYIAH', 'JALUR MANDIRI', 'D3 Akuntansi', 'Non Beasiswa'),
(308, 2, 7, 2, 0, 'Nora Saputri ', '-', '-', '-', 'Non Beasiswa'),
(309, 2, 7, 2, 0, 'Raihan Akmaliana Sari', '-', '-', '-', 'Non Beasiswa'),
(310, 2, 7, 1, 0, 'Samsul Qamar', '-', '-', '-', 'Beasiswa RSBI'),
(311, 2, 7, 2, 1, 'Siti Maisarah', 'UIN AR RANIRY', 'JALUR MANDIRI', 'Bahasa Inggris', 'Non Beasiswa'),
(312, 2, 7, 1, 2, 'Stefanus Marcius', 'UNIVERSITAS PRIMA MEDAN', 'JALUR MANDIRI', 'Manajemen', 'Non Beasiswa'),
(313, 2, 7, 1, 1, 'Sultan Akhbarul Hakeem', 'UNSYIAH', 'JALUR MANDIRI', 'D3 Akuntansi', 'Non Beasiswa'),
(314, 1, 8, 2, 1, 'Khansa Orida Putri', 'UNSYIAH', 'SNMPTN', 'Kedokteran ', 'Non Beasiswa'),
(315, 1, 8, 2, 2, 'Nadia Rahmi', 'Telkom University', 'PMDK- Beasiswa full', 'Komputerisasi Akuntansi', 'Non Beasiswa'),
(316, 1, 8, 2, 2, 'Akmalia', 'Telkom University', 'PMDK', 'Teknik Informatika', 'Non Beasiswa'),
(317, 1, 8, 2, 2, 'Salsabila', 'Telkom University', 'PMDK', 'Administrasi Bisnis', 'Non Beasiswa'),
(318, 1, 8, 2, 1, 'Meisa Fadma', 'UIN Medan', 'SPAN-PTKIN', 'Asuransi Syariah', 'Non Beasiswa'),
(319, 1, 8, 2, 1, 'Ardelia Arfirosa', 'UNSYIAH', 'SBMPTN', 'Teknik Kimia', 'Non Beasiswa'),
(320, 1, 8, 1, 1, 'Muhammad Farhan Bilqisthi', 'UNSYIAH', 'SBMPTN', 'FKIP Biologi', 'Non Beasiswa'),
(321, 1, 8, 1, 1, 'Muhammad Raul Farhan', 'UNSYIAH', 'SBMPTN', 'Teknik Elektro', 'Non Beasiswa'),
(322, 1, 8, 2, 1, 'Nabila', 'UNSYIAH', 'SBMPTN', 'Teknik Kimia', 'Non Beasiswa'),
(323, 1, 8, 1, 1, 'Putra Futtaqi', 'UNSYIAH', 'SBMPTN', 'Teknik Geofisika', 'Non Beasiswa'),
(324, 1, 8, 2, 1, 'Syifa', 'UNSYIAH', 'SBMPTN', 'Kedokteran Gigi', 'Non Beasiswa'),
(325, 1, 8, 1, 1, 'Alifa Gusana', 'USU', 'SBMPTN', 'Kesehatan Masyarakat', 'Non Beasiswa'),
(326, 1, 8, 1, 1, 'Muhammad Alwi', 'UIN Sunan Kalijaga', 'SBMPTN', 'Teknik Industri', 'Non Beasiswa'),
(327, 1, 8, 1, 1, 'Furqansyah', 'Poltekkes Aceh ', 'JALUR MANDIRI', 'Keperawatan Gigi', 'Non Beasiswa'),
(328, 1, 8, 2, 2, 'Yumelia Putri', 'UNIVERSITAS PRIMA Medan', 'JALUR MANDIRI', 'Psikologi', 'Non Beasiswa'),
(329, 1, 8, 1, 1, 'Muhammad Syahridwan', 'UNSYIAH', 'UMB', 'Teknik Sipil', 'Non Beasiswa'),
(330, 1, 8, 1, 1, 'M. Fathul Arif', 'UNSYIAH', 'UMB', 'Kedokteran', 'Non Beasiswa'),
(331, 1, 8, 1, 1, 'Alis Syarmalis', 'UNSYIAH', 'UMB', 'Peternakan', 'Non Beasiswa'),
(332, 1, 8, 1, 1, 'Mikram Syakir', 'UNSYIAH', 'UMB', 'Teknik Arsitektur', 'Non Beasiswa'),
(333, 1, 8, 1, 1, 'Adam Sy Khulafah', 'UNSYIAH', 'UMB', 'Teknik Sipil', 'Non Beasiswa'),
(334, 1, 8, 1, 1, 'Auzan', 'UNSYIAH', 'UMB', 'D3 Akuntansi', 'Non Beasiswa'),
(335, 1, 8, 1, 2, 'Rahmad Kurniawan', 'Universitas Trisakti', 'JALUR MANDIRI', 'Teknik Perminyakan', 'Non Beasiswa'),
(336, 1, 8, 1, 0, 'Zulhajji Putra Mulya', '-', '-', '-', 'Non Beasiswa'),
(337, 1, 8, 1, 1, 'Zulhilmi', 'UNSYIAH', 'SBMPTN', 'FKIP Ekonomi', 'Non Beasiswa'),
(338, 2, 8, 2, 1, 'Azura Mayashi', 'UNIVERSITAS INDONESIA (UI)', 'SBMPTN', 'IIlmu Tata Niaga', 'Non Beasiswa'),
(339, 2, 8, 2, 2, 'Sajida Fasya', 'President University', 'PMDK-Beasiswa 2 ', 'Communication - Public Relations', 'Non Beasiswa'),
(340, 2, 8, 1, 1, 'M. Fatan Asbar', 'UIN AR-RANIRY', 'SPAN-PTKIN', 'Hukum Pidana', 'Non Beasiswa'),
(341, 2, 8, 1, 1, 'Muhammad Akbar', 'UIN AR-RANIRY', 'SPAN-PTKIN', 'Hukum Pidana', 'Non Beasiswa'),
(342, 2, 8, 2, 1, 'Revy Selvyana', 'UIN SUMATRA UTARA', 'SPAN-PTKIN', 'Sastra Inggris', 'Non Beasiswa'),
(343, 2, 8, 1, 1, 'Mishbahuddin', 'UIN AR-RANIRY', 'SBMPTN', 'Ekonomi Syariah', 'Non Beasiswa'),
(344, 2, 8, 2, 1, 'Dwi Sri Wulandari', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Pendidikan Konseling', 'Non Beasiswa'),
(345, 2, 8, 1, 1, 'Zia Ulhaq', 'UNSYIAH', 'SBMPTN', 'Pend.Ekonomi', 'Non Beasiswa'),
(346, 2, 8, 2, 1, 'Safiratu Nada', 'UNSYIAH', 'SBMPTN', 'Bimbingan Konseling', 'Non Beasiswa'),
(347, 2, 8, 1, 1, 'M. Alfathir Akbar', 'UNSYIAH', 'SBMPTN', 'Pend.Sosiologi', 'Non Beasiswa'),
(348, 2, 8, 1, 1, 'Mahathir Muhammad', 'UNSYIAH', 'SBMPTN', 'Ekonomi Pembangunan', 'Non Beasiswa'),
(349, 2, 8, 2, 1, 'Rizka Fazila', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Tarbiyah English', 'Non Beasiswa'),
(350, 2, 8, 2, 1, 'Maghfirah', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Tarbiyah English', 'Non Beasiswa'),
(351, 2, 8, 2, 1, 'Siti Luthfia', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Hukum Keluarga', 'Non Beasiswa'),
(352, 2, 8, 2, 2, 'Nissaul Kamila', 'UII Yogyakarta', 'JALUR MANDIRI', 'Ekonomi Islam', 'Non Beasiswa'),
(353, 2, 8, 2, 2, 'Yolanda Jenifer Anjani', 'AAYKPN Yogyakarta', 'JALUR MANDIRI', 'Akuntansi', 'Non Beasiswa'),
(354, 2, 8, 1, 2, 'M. Mubaraq', 'AKPER Bireuen', 'JALUR MANDIRI', 'Keperawatan', 'Non Beasiswa'),
(355, 2, 8, 1, 2, 'Suhendra Putra', 'UNIVERSITAS PRIMA Medan', 'JALUR MANDIRI', 'Manajemen', 'Non Beasiswa'),
(356, 2, 8, 2, 1, 'Rifa Mauliza', 'UNSYIAH', 'SBMPTN', 'Akuntansi', 'Non Beasiswa'),
(357, 2, 8, 2, 2, 'Yustika Sari', 'UMA ', 'SBMPTN', 'Psikologi', 'Non Beasiswa'),
(358, 2, 8, 2, 0, 'Alma Lidya', '-', '-', '-', 'Non Beasiswa'),
(359, 2, 8, 2, 1, 'Annisa Prathiwy', 'Politeknik Medan', 'JALUR MANDIRI', 'Akuntandi', 'Non Beasiswa'),
(360, 2, 8, 2, 2, 'Ifrah Umami', 'AKBID Munawarah Bireuen', 'JALUR MANDIRI', 'Kebidanan', 'Non Beasiswa'),
(361, 2, 8, 2, 1, 'Khaira Maulidza', 'UNSYIAH', 'JALUR MANDIRI', 'Manajemen', 'Non Beasiswa'),
(362, 2, 8, 2, 1, 'Lena Miska', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Bimbingan Konseling', 'Non Beasiswa'),
(363, 2, 8, 2, 1, 'Maisa Fadma', 'UIN SUMATRA UTARA', 'JALUR MANDIRI', 'Manajemen', 'Non Beasiswa'),
(364, 2, 8, 2, 0, 'Monica Febrina', '-', '-', '-', 'Non Beasiswa'),
(365, 2, 8, 1, 1, 'Muhammad Andika', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'Ekonomi dan Bisnis', 'Non Beasiswa'),
(366, 2, 8, 2, 2, 'Nashiratunnisa F', 'AKBID Munawarah Bireuen', 'JALUR MANDIRI', 'Kebidanan', 'Non Beasiswa'),
(367, 2, 8, 2, 0, 'Ninda Dwi Putri ', '-', '-', '-', 'Non Beasiswa'),
(368, 2, 8, 2, 0, 'Nurul Ihsyi', '-', '-', '-', 'Non Beasiswa'),
(369, 2, 8, 2, 0, 'Rachel Saraswati', '-', '-', '-', 'Non Beasiswa'),
(370, 2, 8, 2, 2, 'Veren Natalia', 'Akademi Design di Medan', 'JALUR MANDIRI', 'Fashion Design', 'Non Beasiswa'),
(371, 1, 9, 1, 1, 'M. DAFFA UMAR SYAUQI', 'UNSRI', 'SNMPTN', 'TEKNIK KIMIA', 'Non Beasiswa'),
(372, 1, 9, 1, 1, 'MAULANA FACHRI FEBRIAN', 'IPB ', 'SNMPTN', 'TEKNOLOGI PERAIRAN', 'Non Beasiswa'),
(373, 1, 9, 2, 1, 'TASYA AULIA RAMADHANI', 'UIN SUMATERA UTARA', 'SPAN PTKIN', 'ILMU ALQUR\'AN DAN TAFSIR', 'Non Beasiswa'),
(374, 1, 9, 2, 1, 'SYARIFAH RAIHAN', 'UNSYIAH ', 'SBMPTN ', 'ILMU KEPERAWATAN ', 'Non Beasiswa'),
(375, 1, 9, 2, 2, 'BAROKAH BUAHATIKA', 'LP3I BUSINESS COLLEGE', 'JALUR MANDIRI', 'SEKRETARIS', 'Non Beasiswa'),
(376, 1, 9, 2, 1, 'KHANSA ASHILA', 'UNSYIAH ', 'SBMPTN ', 'PEND. KESEJAHTERAAN KELUARGA', 'Non Beasiswa'),
(377, 1, 9, 2, 1, 'FADHILLAH RANY SHALLABY', 'UNSYIAH ', 'SBMPTN ', 'AGRIBISNIS', 'Non Beasiswa'),
(378, 1, 9, 1, 1, 'SAID NABIL AMANULLAH', 'UNDIP', 'SBMPTN ', 'TEKNOLOGI HASIL PERIKANAN', 'Non Beasiswa'),
(379, 1, 9, 2, 1, 'GHINA SAFARAH', 'UNSYIAH ', 'SBMPTN ', 'KIMIA', 'Non Beasiswa'),
(380, 1, 9, 1, 1, 'MUHAMMAD NAUFAL ALYA', 'UNSYIAH ', 'SBMPTN ', 'TEKNIK KIMIA', 'Non Beasiswa'),
(381, 1, 9, 1, 1, 'REZA FAHLEVY', 'UNSYIAH ', 'SBMPTN ', 'TEKNIK PERTAMBANGAN', 'Non Beasiswa'),
(382, 1, 9, 1, 1, 'TEUKU  MUHAMMAD FIRLI', 'UNSYIAH ', 'SBMPTN ', 'FISIKA', 'Non Beasiswa'),
(383, 1, 9, 2, 1, 'FARADILA', 'UNSYIAH ', 'SBMPTN ', 'TEKNIK PERTANIAN', 'Non Beasiswa'),
(384, 1, 9, 1, 1, 'GEBRILLE RIZKI NAGATA', 'UNSYIAH ', 'SBMPTN ', 'AGROTEKNOLOGI', 'Non Beasiswa'),
(385, 1, 9, 1, 1, 'RONI SYAFRI NANDA', 'UNSYIAH ', 'SBMPTN ', 'BUDIDAYA PERAIRAN ', 'Non Beasiswa'),
(386, 1, 9, 1, 1, 'ARIQ MUAMMAR', 'UNSYIAH ', 'UMB', 'KEDOKTERAN', 'Non Beasiswa'),
(387, 1, 9, 2, 0, 'AIDA ZURISMA', '-', '-', '-', 'Non Beasiswa'),
(388, 1, 9, 1, 1, 'AULIA RAHMAT', 'UPN Yogyakarta', 'SBMPTN ', 'Teknik Pertambangan', 'Non Beasiswa'),
(389, 1, 9, 2, 1, 'CHAIRATIN ULFA', 'UNSYIAH ', 'UMB', 'ILMU KOMUNIKASI', 'Non Beasiswa'),
(390, 1, 9, 2, 1, 'HERLIANA ', 'USU', 'UMB', 'FMIPA FISIKA', 'Non Beasiswa'),
(391, 1, 9, 2, 0, 'AYU NAZIRA', '-', '-', '-', 'Non Beasiswa'),
(392, 1, 9, 2, 1, 'FIKKA RUHAIYA', 'Politeknik Lhokseumawe', 'JALUR MANDIRI', 'Teknik Sipil', 'Non Beasiswa'),
(393, 1, 9, 1, 0, 'M. SULTANSYAH ZUANDA', '-', '-', '-', 'Non Beasiswa'),
(394, 1, 9, 1, 1, 'MUHAMMAD FASYA', 'UIN AR-RANIRY', 'JALUR MANDIRI', 'HUKUM SYARIAH', 'Non Beasiswa'),
(395, 1, 9, 1, 2, 'MUHAMMAD MAULAWI SAELAN', 'UNIVERSITAS TRISAKTI', 'JALUR MANDIRI', 'TEKNIK PERTAMBANGAN ', 'Non Beasiswa'),
(396, 1, 9, 2, 2, 'NADA SALSABILA', 'ITENAS BANDUNG', 'JALUR MANDIRI', 'TEKNIK ARSITEKTUR', 'Non Beasiswa'),
(397, 1, 9, 2, 2, 'SRY FADHLIA SAFITRI', 'UNIVERSITAS ABULYATAMA', 'JALUR MANDIRI', 'KEDOKTERAN', 'Non Beasiswa'),
(398, 2, 9, 1, 1, 'ASNAWI TAHIR', 'PMCI Medan', 'MANDIRI', 'HOSPITALITY MANAGEMENT', 'Non Beasiswa'),
(399, 2, 9, 2, 1, 'SITI ISMI TAKARINA', 'STT PLN ', 'SBMPTN', 'TEKNIK INFORMATIKA', 'Non Beasiswa'),
(400, 2, 9, 2, 1, 'REKA AUDINA', 'UNSYIAH', 'SBMPTN', 'PEND. SENDRATASIK', 'Non Beasiswa'),
(401, 2, 9, 1, 0, 'SAID RAIHAN MAULANA', 'UNSYIAH', 'SBMPTN', 'AKUNTANSI', 'Non Beasiswa'),
(402, 2, 9, 2, 0, 'ROSNITA', '-', '-', '-', 'Non Beasiswa'),
(403, 2, 9, 2, 1, 'ANNISA MAULIDANI', '-', '-', '-', 'Non Beasiswa'),
(404, 2, 9, 1, 1, 'RIDHA MAULANA', 'UPI BANDUNG', 'SBMPTN', 'PEND. SOSIOLOGI', 'Non Beasiswa'),
(405, 2, 9, 2, 1, 'YOUMIL AIDA', 'UNSYIAH', 'SBMPTN', 'PGSD', 'Non Beasiswa'),
(406, 2, 9, 2, 1, 'CUT RAUZATUL JANNAH', 'UNSYIAH', 'SBMPTN', 'HUKUM', 'Non Beasiswa'),
(407, 2, 9, 2, 1, 'SITTI ROZANA', 'UNAND', 'SBMPTN', 'HUKUM', 'Non Beasiswa'),
(408, 2, 9, 2, 1, 'ALIVIA SALINA', 'USU', 'SBMPTN', 'ILMU KESEJAHTERAAN SOSIAL', 'Non Beasiswa'),
(409, 2, 9, 1, 1, 'RAIYAN MELVANDRO', 'USU', 'SBMPTN', 'ILMU KESEJAHTERAAN SOSIAL', 'Non Beasiswa'),
(410, 2, 9, 1, 1, 'MUHAMMAD DAYANA', 'USK', 'SBMPTN', 'ILMU PEMERINTAHAN', 'Non Beasiswa'),
(411, 2, 9, 1, 1, 'M. HARISQIANSYAH', 'USK', 'SBMPTN', 'MANAJEMEN', 'Non Beasiswa'),
(412, 2, 9, 2, 0, 'PUTRI ADIYANTI', 'AKADEMI PARIWISATA MEDAN', 'MANDIRI', 'TATA BOGA', 'Non Beasiswa'),
(413, 2, 9, 2, 1, 'CUT ANGGARA FARADILA', '-', '-', '-', 'Non Beasiswa'),
(414, 2, 9, 2, 0, 'CUT HUSNUL MAQHFIRAH', 'UNSYIAH', 'SBMPTN', 'HUKUM', 'Non Beasiswa'),
(415, 2, 9, 2, 2, 'CUT RACHIL AMESHANIA', '-', '-', '-', 'Non Beasiswa'),
(416, 2, 9, 2, 0, 'DEVICA ZEIN', 'UISU', 'JALUR MANDIRI', 'SOSIOLOGI', 'Non Beasiswa'),
(417, 2, 9, 2, 0, 'DIFA SALSABILA', 'UMSU', 'JALUR MANDIRI', 'MANAJEMEN', 'Non Beasiswa'),
(418, 2, 9, 1, 0, 'EGIANDA MIERHAD', '-', '-', '-', 'Non Beasiswa'),
(419, 2, 9, 1, 0, 'GILANG TIRTA RANJASWARA', '-', '-', '-', 'Non Beasiswa'),
(420, 2, 9, 1, 1, 'MIFTAHUL FARHAN', '-', '-', '-', 'Non Beasiswa'),
(421, 2, 9, 1, 1, 'MUHAMMAD ALFIE MUNADY', 'UIN SUNAN KALIJAGA', 'JALUR MANDIRI', 'PERBANKAN SYARIAH', 'Non Beasiswa'),
(422, 2, 9, 1, 1, 'MUHAMMAD ALVISYAHRIN', 'UNSYIAH', 'UMB', 'HUKUM', 'Non Beasiswa'),
(423, 2, 9, 1, 0, 'MHD. HAFIZ FACHRI', 'UNIMED', 'SBMPTN', 'GIZI', 'Non Beasiswa'),
(424, 2, 9, 2, 0, 'RAIHAN PUTRI', '-', '-', '-', 'Non Beasiswa'),
(425, 2, 9, 2, 0, 'SITI MUTIA MUHARRAMI', '-', '-', '-', 'Non Beasiswa'),
(426, 2, 9, 1, 0, 'T. ABBAD JUNDI', '-', '-', '-', 'Non Beasiswa'),
(427, 1, 10, 2, 2, 'Alifia Zahra', 'ITENAS BANDUNG ', 'Jalur Mandiri', 'Teknik Arsitektur', 'Non Beasiswa'),
(428, 1, 10, 2, 1, 'Alya Sakinah', 'UNSYIAH', 'SBMPTN', 'Teknik Sipil', 'Non Beasiswa'),
(429, 1, 10, 2, 1, 'Baiduri Orida Putri', 'UNSYIAH', 'SBMPTN', 'Statistika', 'Non Beasiswa'),
(430, 1, 10, 1, 0, 'Daffi Alfansura', '-', '-', '-', 'Non Beasiswa'),
(431, 1, 10, 2, 2, 'Ester Hidayat', 'UNIVERSITAS KRISTEN MARANATHA BANDUNG', 'Jalur Mandiri', 'Fakultas Kedokteran', 'Non Beasiswa'),
(432, 1, 10, 2, 1, 'Faradilla', 'UNSYIAH', 'SMMPTN', 'MIPA Kimia', 'Non Beasiswa'),
(433, 1, 10, 1, 0, 'Hafidh Tiftazani', '-', '-', '-', 'Non Beasiswa'),
(434, 1, 10, 1, 1, 'Muhammad Althaf', 'UNIMAL', 'SBMPTN', 'Fakultas Kedokteran', 'Non Beasiswa'),
(435, 1, 10, 1, 1, 'Muhammad Aufi', 'IPB', 'SNMPTN', 'Agronomi dan hortikultural', 'Non Beasiswa'),
(436, 1, 10, 1, 1, 'Muhammad Thariq Aziz', 'UNSYIAH', 'SBMPTN', 'Teknik Kimia ', 'Non Beasiswa'),
(437, 1, 10, 1, 1, 'Muhammad Zulfataya', 'UNSYIAH', 'SBMPTN', 'Matematika ', 'Non Beasiswa'),
(438, 1, 10, 2, 1, 'Nahya Fathanah Bentara', 'USU', 'SBMPTN', 'Fakultas Kedokteran Gigi', 'Non Beasiswa'),
(439, 1, 10, 2, 1, 'Naviatul Ulfa', 'UNSYIAH', 'SBMPTN', 'Fakultas Kedokteran Gigi', 'Non Beasiswa'),
(440, 1, 10, 1, 1, 'Rizki Kurniawan', 'UNSYIAH ', 'SBMPTN Barat', 'Fakultas Kedokteran Gigi', 'Non Beasiswa'),
(441, 1, 10, 1, 1, 'Rizki Maulana Martin', 'USU', 'SBMPTN', 'Fakultas Kesehatan Masyarakat', 'Non Beasiswa'),
(442, 1, 10, 2, 1, 'Salsabila Az-Zahra', 'USU', 'SBMPTN', 'Fakultas Kedokteran', 'Non Beasiswa'),
(443, 1, 10, 2, 2, 'Shafura', 'UISU', 'Jalur Mandiri', 'Fakultas Kedokteran ', 'Non Beasiswa'),
(444, 1, 10, 2, 2, 'Sitra Yastazia Dipa', 'AKBID HELVETIA MEDAN', 'Jalur Mandiri', 'Kebidanan', 'Non Beasiswa'),
(445, 1, 10, 2, 1, 'Sitty Almatunira', 'UNSYIAH', 'SBMPTN', 'Informatika', 'Non Beasiswa'),
(446, 1, 10, 1, 1, 'Teuku Rifqi Rafif', 'UNSYIAH', 'SMMPTN', 'Agribisnis', 'Non Beasiswa'),
(447, 1, 10, 1, 1, 'Wildan Akbar', 'UNSYIAH', 'SNMPTN', 'PSIK', 'Non Beasiswa'),
(448, 1, 10, 2, 1, 'Aghna Asbar', 'UNSYIAH', 'SBMPTN', 'Teknik  Arsitek', 'Non Beasiswa'),
(449, 1, 10, 2, 1, 'Aqilla Izzati', 'UIN Ar-Raniry', 'Jalur Mandiri', 'FKIP Biologi ', 'Non Beasiswa'),
(450, 1, 10, 2, 1, 'Aufa Aidiana Wiza', 'UIN Ar-Raniry', 'UMPTKIN', 'Ekonomi Syari\'ah', 'Non Beasiswa'),
(451, 1, 10, 2, 1, 'Dinda Savana Diva', 'UNSYIAH', 'SBMPTN', 'Agribisnis', 'Non Beasiswa'),
(452, 1, 10, 2, 2, 'Faradila', 'POLITEKNIK POS INDONESIA', 'PMDK', 'D4 Logistik Bisnis', 'Non Beasiswa'),
(453, 1, 10, 2, 0, 'Fonna Silviani', '-', '-', '-', 'Non Beasiswa'),
(454, 1, 10, 2, 1, 'Hasyifa Fitri', 'Poltekkes Aceh', 'Sipemaru', 'D3 Farmasi', 'Non Beasiswa'),
(455, 1, 10, 1, 2, 'Ikhwanul Muslim', 'PSPP Penerbangan Yogyakarta', 'Jalur Mandiri', 'D1', 'Non Beasiswa'),
(456, 1, 10, 2, 1, 'Intan Najira', 'Poltekkes Aceh', 'Jalur Mandiri', 'Keperawatan Gigi', 'Non Beasiswa'),
(457, 1, 10, 1, 1, 'M. Syahrul Husen', 'UNSYIAH', 'SBMPTN', 'Teknik Sipil', 'Non Beasiswa'),
(458, 1, 10, 1, 1, 'Muhammad Fachry Rola', 'UNSYIAH', 'SBMPTN', 'Teknik komputer', 'Non Beasiswa'),
(459, 1, 10, 1, 1, 'Muhammad Thifal', 'UNSYIAH', 'SBMPTN', 'Teknik Pertanian', 'Non Beasiswa'),
(460, 1, 10, 2, 0, 'Rizki Putri Nurliza', '-', '-', '-', 'Non Beasiswa'),
(461, 1, 10, 2, 1, 'Rizqa Humaira', 'Poltekkes Aceh', 'Sipemaru', 'D3 Farmasi', 'Non Beasiswa'),
(462, 1, 10, 2, 1, 'Salsabilla Taufik', 'UNSYIAH', 'SBMPTN', 'Ilmu hukum', 'Non Beasiswa'),
(463, 1, 10, 2, 1, 'Sausan Salsabila', 'UNSYIAH', 'SBMPTN Barat', 'Teknik Kimia', 'Non Beasiswa'),
(464, 1, 10, 2, 1, 'Siti Zahriati', 'Poltekkes Aceh', 'Jalur Mandiri', 'Kebidanan ', 'Non Beasiswa'),
(465, 1, 10, 2, 1, 'Syifa Safara', 'Poltekkes Aceh', 'Jalur Mandiri', 'Kebidanan', 'Non Beasiswa'),
(466, 1, 10, 1, 0, 'T.M. Fadhil Rizkiansyah', '-', '-', '-', 'Non Beasiswa'),
(467, 1, 10, 1, 1, 'Ulul Azmi', 'UNSYIAH', 'SBMPTN', 'Teknik Elektro', 'Non Beasiswa'),
(468, 1, 10, 1, 1, 'Zidan Zulyadain', 'UNSYIAH', 'SBMPTN', 'Proteksi tanaman', 'Non Beasiswa'),
(469, 1, 10, 1, 1, 'Zuhdi Firdaus', 'UNSYIAH', 'SBMPTN', 'Kehutanan', 'Non Beasiswa'),
(470, 2, 10, 1, 1, 'Abdika Mitana', 'UNSYIAH', 'SBMPTN', 'FKIP GEOGRAFI', 'Non Beasiswa'),
(471, 2, 10, 1, 1, 'Agusti Mahliza', 'UNSYIAH', 'SBMPTN', 'FKIP Ekonomi', 'Non Beasiswa'),
(472, 2, 10, 2, 0, 'Anis Watul Khaira. M', '-', '-', '-', 'Non Beasiswa'),
(473, 2, 10, 2, 1, 'Aulia Al Azka', 'UNIMAL ', 'SBMPTN', 'Ilmu Komunikasi ', 'Non Beasiswa'),
(474, 2, 10, 1, 1, 'Damba Yovani', 'UNSYIAH', 'SNMPTN', 'Manajemen  ', 'Non Beasiswa'),
(475, 2, 10, 2, 0, 'Deby Shinta J', '-', '-', '-', 'Non Beasiswa'),
(476, 2, 10, 2, 1, 'Dinah Mahirah', 'UNSYIAH', 'SBMPTN', 'Manajemen', 'Non Beasiswa'),
(477, 2, 10, 2, 2, 'Elsa Sania Yamuna', 'Universitas Kristen Maranatha', 'Jalur Mandiri', 'Fashion Desain', 'Non Beasiswa'),
(478, 2, 10, 2, 2, 'Firsa Muchtar', 'PSPP Penerbangan Jogjakarta', 'Jalur Mandiri', 'PSPP Penerbangan Jogjakarta', 'Non Beasiswa'),
(479, 2, 10, 1, 1, 'Jauharsyah', 'UNSYIAH ', 'SBMPTN Barat', 'Ilmu Politik', 'Non Beasiswa'),
(480, 2, 10, 1, 2, 'Kenfi Devananta', 'UNIVERSITAS PRIMA MEDAN ', 'Jalur Mandiri', 'Manajemen', 'Non Beasiswa'),
(481, 2, 10, 1, 1, 'Muhammad Abdillah', 'UNIMAL', 'SBMPTN', 'Manajemen Bisnis', 'Non Beasiswa'),
(482, 2, 10, 1, 1, 'Muhammad Furqan', 'UNSYIAH', 'SBMPTN', 'Pendidikan Ekonomi', 'Non Beasiswa'),
(483, 2, 10, 1, 2, 'Owen August Lais', 'UNIVERSITAS PRIMA MEDAN ', 'Jalur Mandiri', 'Manajemen', 'Non Beasiswa'),
(484, 2, 10, 2, 2, 'Putri Nafiqah', 'UISU', 'Jalur Mandiri', 'FKIP PBSI', 'Non Beasiswa'),
(485, 2, 10, 2, 1, 'Rauza Tulmuna', 'UNSYIAH', 'SBMPTN', 'Ilmu Pemerintahan', 'Non Beasiswa'),
(486, 2, 10, 2, 2, 'Rina Ridarana Sari', 'Universitas Nahdlatul Ulama', 'Jalur Maandiri', 'Akuntansi', 'Non Beasiswa'),
(487, 2, 10, 2, 0, 'Sara Indah Utami', '-', '-', '-', 'Non Beasiswa'),
(488, 2, 10, 2, 1, 'Sarah Ardiana', 'UNIMAL', 'SBMPTN', 'Akuntani', 'Non Beasiswa'),
(489, 2, 10, 2, 1, 'Syifa Ul Azkia', 'UNIMAL', 'SBMPTN', 'Akuntansi', 'Non Beasiswa'),
(490, 2, 10, 2, 0, 'Tiara Andra Devi', '-', '-', '-', 'Non Beasiswa'),
(491, 2, 10, 2, 1, 'Zhafira Qaulan Tsaqila Hamdani', 'UIN AR-RANIRY', 'SNMPTN', 'Perbankan Syari\'ah ', 'Non Beasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `manajemen`
--

CREATE TABLE `manajemen` (
  `id_manajemen` int(11) NOT NULL,
  `nama_manajemen` varchar(255) NOT NULL,
  `nip_manajemen` varchar(255) NOT NULL,
  `username_manajemen` varchar(255) NOT NULL,
  `password_manajemen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `manajemen`
--

INSERT INTO `manajemen` (`id_manajemen`, `nama_manajemen`, `nip_manajemen`, `username_manajemen`, `password_manajemen`) VALUES
(1, 'manajemen', 'manajemen', 'manajemen', '19b51f1cbb6146adcacbce46d5bdc3f2'),
(2, 'tatausaha', 'tatausaha', 'tatausaha', '82849c85acf1f4e6e4eec748f0aeddf4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
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
(42, '1', 'SBK'),
(43, '2', 'Bimbingan & Konseling'),
(44, '3', 'Bimbingan & Konseling');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel1`
--

CREATE TABLE `mapel1` (
  `id_mapel1` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel1`
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
(42, '1', 'SBK'),
(43, '2', 'Bimbingan & Konseling'),
(44, '3', 'Bimbingan & Konseling');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel2`
--

CREATE TABLE `mapel2` (
  `id_mapel2` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel2`
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
(42, '1', 'SBK'),
(43, '2', 'Bimbingan & Konseling'),
(44, '3', 'Bimbingan & Konseling');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel3`
--

CREATE TABLE `mapel3` (
  `id_mapel3` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel3`
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
(42, '1', 'SBK'),
(43, '2', 'Bimbingan & Konseling'),
(44, '3', 'Bimbingan & Konseling');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel4`
--

CREATE TABLE `mapel4` (
  `id_mapel4` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `nama_mapel4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel4`
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
(42, '1', 'SBK'),
(43, '2', 'Bimbingan & Konseling'),
(44, '3', 'Bimbingan & Konseling');

-- --------------------------------------------------------

--
-- Struktur dari tabel `minggu`
--

CREATE TABLE `minggu` (
  `id_minggu` int(11) NOT NULL,
  `nama_minggu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `nama_mitra` varchar(255) NOT NULL,
  `bentuk` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `waktu_2` date NOT NULL,
  `laporan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `id_jenjang`, `bidang`, `nama_mitra`, `bentuk`, `waktu_1`, `waktu_2`, `laporan`) VALUES
(2, '3', 'Pendidikan', 'Prodi Bahasa Inggris, Fakultas Tarbiyah dan Keguruan UIN AR-Raniry Banda Aceh', 'Kunjungan dan Penandatanganan MOU', '2018-05-21', '2018-05-21', 'SMA_MOU English Ambassador.docx'),
(3, '3', 'Pendidikan', 'Prodi Bahasa Inggris, Fakultas Tarbiyah dan Keguruan UIN AR-Raniry Banda Aceh ', 'English Ambassador (TSB Corner : Essay clinic, You Talk, Spelling Bee)', '2018-10-17', '2019-10-24', 'SMA_Kegiatan Lomba English Ambassador.docx'),
(4, '3', 'Pendidikan', 'SMAN 1 Jenieb Kabupaten Bireuen', 'Silaturrahmi dan Studi Banding Program Sekolah (Akademik dan Ekstrakurikuler)', '2018-09-02', '2018-09-02', 'SMA_Studi Banding SMAN 1 Jenieb.docx'),
(5, '3', 'Pendidikan', 'Kantor BPS Kabupaten Bireuen', 'Sosialisasi Gerakan Cinta Data', '2018-10-01', '2018-10-01', 'SMA_BPS Sosialisasi Cinta Data.docx'),
(6, '2', 'Pendidikan', 'SMPN 1 dan SMPN 2 Simpang Mamplam, Kabupaten Bireuen', 'Studi Banding Perpustakaan', '2018-10-04', '2018-10-04', 'SMP_Kunjungan SMPN 1 dan 2 Simp Mamplam.docx'),
(7, '3', 'Pendidikan', 'KIES-A Aceh ', 'Seminar Beasiswa Australian Aid', '2019-02-21', '2019-02-21', 'SMA_KIES-A Seminar Beasiswa.docx'),
(8, '1', 'Kesehatan ', 'UPTD Puskesmas Jeumpa, Kabupaten Bireuen', 'Sosialisasi Program \"Petepat Urat\" dan Pemeriksaan Kesehatan', '2019-10-01', '2019-10-01', 'SD_Sosialisasi Petepat Urat dan pemeriksaan kesehatan Puskesmas Jeumpa.docx'),
(9, '3', 'Pendidikan', 'Universitas Prasetiya Mulya Jakarta', 'Sosialisasi Beasiswa dan Promosi Kampus Universitas Prasetiya Mulya', '2019-08-06', '2019-08-06', 'SMA_Univ Prasetiya Mulya.docx'),
(10, '1', 'Kesehatan ', 'UPTD Puskesmas Jeumpa, Kabupaten Bireuen', 'Tampilan Senam Kesehatan pada hari Akreditasi UPTD Puskesmas Jeumpa', '2019-10-18', '2019-10-18', 'SD_Tampilan Senam Kesehatan di Akreditasi Puskesmas Jeumpa.docx'),
(11, '2', 'Pendidikan', 'Lembaga Ruang Guru ', 'Sosialisasi Ruang Guru bagi siswa dan guru SMP', '2019-10-23', '2019-10-23', 'SMP_Sosialisasi Ruang Guru.docx'),
(12, '3', 'Pendidikan', 'National Chi Nan University, Taiwan', 'Pertukaran Budaya dan Pengajaran Bahasa Mandarin oleh Mahasiswa dan Dosen NCNU', '2019-07-15', '2019-08-15', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_ruang` varchar(255) NOT NULL,
  `id_status` varchar(255) NOT NULL,
  `id_status_final` varchar(255) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `id_guru` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `jam` varchar(255) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_ruang`, `id_status`, `id_status_final`, `id_jenjang`, `id_guru`, `waktu_1`, `jam`, `keperluan`, `keterangan`) VALUES
(2, '1', '2', '2', '3', '34', '2019-10-23', '07.40-09.00', 'KBM', ''),
(3, '1', '2', '2', '2', '12', '2019-10-23', '14.10 - 16.00', 'Try Out Ruang Guru', ''),
(4, '3', '2', '2', '2', '12', '2019-10-23', '08.00-09.00', 'Sosialisasi Ruang Guru', ''),
(5, '2', '2', '1', '2', '12', '2019-10-29', '09.30-11.10', 'Remedial test online', 'Jadwal Tryout Dinas Pendidikan Aceh'),
(12, '2', '1', '2', '3', '32', '2019-11-11', '07.30 - 15.30', 'SIMULASI UNBK SMA  (RANGE 11 -15 NOVEMBER 2019)', ''),
(13, '2', '2', '2', '3', '32', '2019-11-25', '07.30 - 15.30', 'SIMULASI UNBK SMA  ii/ GLADI', ''),
(15, '2', '2', '2', '2', '16', '2019-11-13', '08.50 s.d 10.10 WIB', 'TIK tukar jam dengan Prakarya, karena bentrok kegiatan simulasi UNBK SMA pada tanggal 11 Nov 2019', ''),
(16, '2', '2', '2', '2', '16', '2019-11-27', '08.50 s.d 10.10 WIB', 'TIK tukar jam dengan Prakarya, karena bentrok kegiatan simulasi UNBK SMA pada tanggal 25 Nov 2019', ''),
(18, '1', '2', '2', '3', '32', '2019-10-28', '07.30 -8.30', 'Sosialisasi Kelas XII ', ''),
(19, '2', '2', '2', '2', '9', '2019-11-05', '7.30 - 11.50', 'UKD E-Learning', ''),
(20, '2', '2', '2', '2', '9', '2019-11-06', '7.30 - 9.30', 'UKD E-Learning', ''),
(21, '2', '2', '2', '2', '9', '2019-11-07', '8.50 - 13.00', 'UKD E-Learning', ''),
(22, '2', '2', '2', '2', '9', '2019-11-08', '8.00 - 10.00', 'UKD E-Learning', ''),
(23, '1', '2', '2', '1', '30', '2019-10-28', '14.30 - 16.30', 'FGBB', ''),
(24, '2', '2', '2', '2', '12', '2019-11-04', '11.50-13.00', 'UKD B. Inggris Online', ''),
(25, '2', '2', '2', '2', '12', '2019-11-18', '11.50-13.00', 'UKD ELEARNING B. INGGRIS KELAS VII ABRAHAM MASLOW ', ''),
(26, '2', '2', '2', '2', '12', '2019-11-19', '09.50-11.10', 'UKD ELEARNING B. INGGRIS KELAS IX AL BIRUNI ', ''),
(27, '2', '2', '2', '2', '12', '2019-11-18', '08.10-09.30', 'UKD ELEARNING B. INGGRIS KELAS IX HARUN AR RASYID ', ''),
(28, '1', '2', '2', '3', '55', '2019-11-01', '10.20', 'KBM', ''),
(29, '2', '2', '2', '3', '32', '2019-11-04', '09.00 - 11.00', 'SUSULAN TRY OUT SMA KELAS 12', ''),
(30, '1', '2', '2', '3', '32', '2019-11-04', '14.00-15.30', 'kbm', ''),
(31, '1', '2', '2', '3', '65', '2019-11-04', '11.35-13.00', 'KBM', ''),
(32, '1', '2', '2', '3', '28', '2019-11-05', '11.00-15.30', 'KBM', ''),
(33, '3', '2', '2', '1', '7', '2019-11-08', '09.35-11.20', 'KBM', ''),
(34, '1', '2', '2', '3', '56', '2019-11-06', '14.00-15.00', 'Fgbb', ''),
(35, '3', '2', '2', '3', '28', '2019-11-07', '14.00-15.30', 'KBM', ''),
(36, '2', '2', '2', '3', '32', '2019-11-08', '10.15-11.40', 'UKD', ''),
(37, '2', '2', '2', '3', '32', '2019-11-22', '8.15 -11.40', 'UKD 2 KELAS XII IPA & XII IPS', ''),
(38, '2', '2', '2', '3', '32', '2019-11-21', '9.45- 11.05', 'UKD XI IPA', ''),
(39, '1', '2', '2', '3', '65', '2019-11-11', '11.35 - 13.00', 'KBM ', ''),
(40, '1', '2', '2', '3', '32', '2019-11-11', '14.00-15.30', 'KBM', ''),
(41, '2', '2', '2', '2', '9', '2019-11-12', '7.30 - 11.50', 'UKD Susulan, Remedial dan KBM (7 Abraham M & 8 Adam O)', ''),
(42, '2', '2', '2', '2', '9', '2019-11-13', '7.30 - 8.50', 'UKD Susulan, Remedial dan KBM (8 HAMKA)', ''),
(43, '2', '2', '2', '2', '9', '2019-11-14', '8.50 - 13.00', 'UKD Susulan, Remedial dan KBM (9 Harun Ar-Rasyid & 7 Al-Ghafiqy)', ''),
(44, '2', '2', '2', '2', '9', '2019-11-15', '8.00 - 10.00 ', 'UKD Susulan, Remedial dan KBM (9 Al-Biruni)', ''),
(45, '3', '2', '2', '1', '29', '2019-11-14', '07.30 - 09.30', 'KBM (Guest Teacher)', ''),
(46, '1', '2', '2', '2', '28', '2019-11-13', '10.30-12.00', 'KBM', ''),
(47, '2', '2', '2', '2', '12', '2019-11-30', '10.15-12.15', 'UAS Agama', ''),
(48, '2', '2', '2', '2', '12', '2019-12-02', '08.00-15.30', 'UAS IPA Biologi, English, Agama', ''),
(49, '1', '2', '2', '3', '32', '2019-11-13', '15.30 -17.00', 'bimbingan UTBK kelas 12', ''),
(50, '2', '2', '2', '2', '12', '2019-12-03', '08.00-15.30', 'UAS IPA Fisika, B. Indonesia, Agama', ''),
(51, '2', '2', '2', '2', '12', '2019-12-04', '08.00-15.30', 'UAS MAtematika, TIK', ''),
(52, '2', '2', '2', '2', '12', '2019-12-12', '08.00-12.00', 'UAS TIK&English', ''),
(53, '1', '2', '2', '3', '32', '2019-11-14', '9.45-11.05', 'KBM ', ''),
(54, '2', '2', '2', '1', '7', '2019-11-23', '07.30-11.00', 'event ekskul', ''),
(55, '3', '2', '2', '1', '7', '2019-11-23', '07.30-11.00', 'event ekskul', ''),
(56, '3', '2', '2', '3', '21', '2019-11-14', '15:00-17:00', 'Rapat Guru SMA', ''),
(57, '3', '2', '2', '1', '59', '2019-11-18', '08.00-09.15', 'penyuluhan kespro', ''),
(58, '1', '2', '2', '1', '59', '2019-11-18', '08.00-09.15', 'penyuluhan kespro', ''),
(59, '3', '2', '2', '1', '59', '2019-11-19', '10.15-11.30', 'penyuluhan kespro', ''),
(60, '1', '2', '2', '1', '59', '2019-11-19', '10.15-11.30', 'penyuluhan kespro', ''),
(61, '3', '2', '2', '1', '59', '2019-11-20', '11.30-13.00', 'penyuluhan kespro', ''),
(62, '1', '2', '2', '1', '59', '2019-11-20', '11.30-13.00', 'penyuluhan kespro', ''),
(63, '3', '2', '2', '1', '59', '2019-11-21', '10.45-12.00', 'penyuluhan kespro', ''),
(64, '1', '2', '2', '1', '59', '2019-11-21', '10.45-12.00', 'penyuluhan kespro', ''),
(65, '3', '2', '2', '1', '59', '2019-11-22', '10.00-11.30', 'penyuluhan kespro', ''),
(66, '1', '2', '2', '1', '59', '2019-11-22', '10.00-11.30', 'penyuluhan kespro', ''),
(67, '1', '2', '1', '3', '34', '2019-11-15', '08:15 - 09:00', 'Guest Teacher', 'Bentrok dengan jadwal tetap SMP '),
(68, '3', '', '2', '3', '34', '2019-11-15', '08.00-09.00', 'Guest Teacher', ''),
(69, '3', '2', '2', '2', '9', '2019-11-21', '07.30-09.30', 'Guest Teacher Pelajaran PAI tentang Zakat dan Lembaga yang Bertanggungjawab tentang penyalurannya', ''),
(70, '3', '2', '2', '2', '3', '2019-11-19', '14.00-15.30', 'Guest Teacher ', ''),
(71, '1', '2', '2', '3', '32', '2019-11-18', '9.45 - 11', 'KBM', ''),
(72, '1', '2', '2', '1', '31', '2019-11-19', '14.00-16.00', 'Pelatihan Dekorasi Kelas ', ''),
(73, '1', '2', '2', '3', '32', '2019-11-18', '14.00-15.30', 'kbm', ''),
(74, '3', '2', '2', '2', '16', '2019-11-25', '10.20  - 11.50 (Kelas IX AL Biruni)', 'Movie ', ''),
(75, '2', '2', '', '2', '16', '2019-11-22', '08.20-09.30', 'KBM (tukaran dengan jam PAI, karena KBM tetap kelas tersebut dikamis pagi dipakai untuk guest teacher)', ''),
(76, '1', '2', '2', '3', '77', '2019-11-20', '07.40-09.00', 'KBM', ''),
(77, '1', '2', '2', '1', '55', '2019-11-20', '09.15 - 10.25', 'Guest teacher', ''),
(78, '2', '2', '2', '3', '32', '2019-11-30', '07.40-09.00', 'UAS SMA SOSIOLOGI XII IPS', ''),
(79, '2', '1', '2', '3', '32', '2019-11-28', '9.45- 11.00', 'UAS ENGLISH XI IPA', ''),
(80, '3', '2', '2', '2', '3', '2019-11-20', '08.50-10.10', 'Guest Teacher', ''),
(82, '2', '2', '2', '3', '32', '2019-11-26', '07.30- 09.00', 'UAS MATEMATIKA WAJIB KELAS X IPA', ''),
(83, '3', '2', '2', '3', '18', '2020-02-01', '07.40-09.45', 'KBM UTBK', ''),
(84, '3', '2', '1', '3', '18', '2019-11-20', '11.35-13.00', '(KBM)Presentasi', 'Bentrok dengan jadwal penyuluhan kespro '),
(85, '1', '2', '2', '1', '31', '2019-11-20', '14.00-16.00', 'Pelatihan Dekorasi Kelas ', ''),
(86, '1', '2', '', '3', '32', '2019-11-20', '16.00-17.00', 'BIMBEL KELAS 12', ''),
(87, '2', '2', '2', '2', '12', '2019-11-27', '10.30 - 11.50', 'Remedial B. Inggris online', ''),
(88, '2', '2', '1', '2', '12', '2019-11-28', '08.50 - 10.10', 'Remedial B. Inggris online', 'ruangan sudah dipinjam untuk UAS SMA oleh Buk Tika'),
(89, '2', '2', '', '2', '12', '2019-11-25', '11.50 - 13.00', 'Remedial B. Inggris online', ''),
(90, '1', '2', '2', '3', '77', '2019-11-23', '09.30-11.40', 'KBM', ''),
(91, '2', '2', '2', '3', '32', '2019-11-30', '09-10.00', 'UAS SEJARAH MINAT KELAS X IPS', ''),
(92, '3', '2', '2', '3', '25', '2019-11-26', '07.40-09.45', 'Project pidato', ''),
(93, '3', '2', '2', '3', '25', '2019-11-26', '14.00-15.30', 'Project pidato', ''),
(94, '3', '2', '2', '3', '25', '2019-11-28', '10.55-13.00', 'Project pidato', ''),
(95, '2', '2', '2', '3', '26', '2019-11-27', '11.50 - 13.00', 'Praktik Matematika kelas IX Albiruni (SMP) materi Fungsi Kuadrat (menggunakan software Geogebra)', ''),
(96, '1', '2', '2', '1', '55', '2019-11-26', '07.30 - 09.30', 'KBM', ''),
(97, '1', '2', '2', '1', '55', '2019-11-26', '09.45 - 11.05', 'PRAKTIK Geogebra', ''),
(98, '1', '1', '1', '1', '59', '2019-11-27', '11.30-13.00', 'penyuluhan kespro', ''),
(99, '3', '1', '1', '1', '59', '2019-11-27', '11.30-13.00', 'penyuluhan kespro', ''),
(100, '3', '2', '2', '1', '30', '2019-11-27', '14.15 - 15. 20 WIB', 'Rapat rumpun SAINS', ''),
(101, '1', '1', '1', '2', '3', '2019-11-28', '14.00-selesai', 'Rapat rumpun bahasa', 'Bentrok dengan jadwal tetap SMP '),
(102, '1', '2', '2', '3', '21', '2019-11-28', '10:00-11:00', 'Sosialisasi Program Cambridge SMA', ''),
(103, '1', '2', '2', '3', '21', '2019-11-28', '10:00-11:00', 'Sosialisasi Program Cambridge SMA', ''),
(104, '3', '2', '2', '2', '16', '2019-11-30', '07.30 - 10.00', 'DEBAT CALON OSIS SMP', ''),
(105, '3', '2', '2', '3', '32', '2019-12-02', '08.00-10.40', 'UAS PAI & BAHASA INDONESIA ONLINE', ''),
(106, '1', '2', '2', '3', '32', '2019-12-03', '08.00-09.00', 'UAS KELAS X IPA & X IPS (ECONOMICS & ENGLISH)', ''),
(107, '1', '2', '2', '3', '32', '2019-12-04', '08.00 - 11.10', 'UAS SMA KELAS X IPA & X IPS', ''),
(108, '2', '2', '', '3', '32', '2019-12-05', '08.00-11.40', 'UAS SMA', ''),
(109, '2', '2', '', '3', '32', '2019-12-06', '08.00-11.40', 'UAS ONLINE SMA ', ''),
(110, '2', '2', '', '3', '32', '2019-12-07', '08.00-11.30', 'UAS SMA', ''),
(111, '1', '2', '2', '3', '32', '2019-12-06', '08.00-09.10 ', 'UAS GEOGRAPHY KELAS XII IPS', ''),
(112, '3', '2', '2', '3', '32', '2019-12-06', '08.00 -10.00', 'UAS MATH MINAT KELAS XII IPS', ''),
(113, '1', '2', '2', '3', '32', '2019-12-07', '09.30-10.40', 'UAS PENJASORKES KELAS X', ''),
(114, '1', '2', '2', '3', '32', '2019-12-09', '08.00 -10.00', 'UAS KELAS X ', ''),
(115, '3', '2', '2', '3', '32', '2019-12-09', '08.00 -10.00', 'UAS KELAS X ', ''),
(116, '2', '2', '', '3', '32', '2019-12-09', '08.00 - 11.30', 'UAS KELAS X -XII', ''),
(117, '1', '2', '2', '3', '32', '2019-12-10', '08.00 -10.00', 'UAS KELAS X', ''),
(118, '3', '2', '2', '3', '32', '2019-12-10', '08.00-09.00', 'UAS  KELAS X', ''),
(119, '2', '2', '2', '3', '32', '2019-12-10', '08.00 -10.30', 'UAS KELAS XI & XII', ''),
(120, '3', '2', '2', '3', '31', '2019-12-05', '10.00-13.00', 'FGGB Rumpun 3 Lokasi ', ''),
(121, '3', '2', '2', '3', '15', '2019-12-07', '11.00-14.00', 'Wawancara OSIS Periode 2020', ''),
(123, '2', '2', '2', '3', '32', '2019-12-11', '08.00 - 15.30', 'SUSULAN UAS GANJIL', ''),
(124, '3', '2', '2', '3', '32', '2019-12-21', '09.00 -11.00', 'PERTEMUAN WALI MURID KELAS XII PERIHAL LTMPT ', ''),
(125, '1', '2', '2', '1', '59', '2019-12-11', '09.00-10.00', 'penyuluhan kespro', ''),
(126, '3', '2', '2', '1', '59', '2019-12-11', '09.00-10.00', 'penyuluhan kespro', ''),
(127, '3', '2', '2', '2', '38', '2019-12-13', '08.00 - 12.00', 'Seminar parenting SMP', ''),
(128, '3', '2', '2', '2', '38', '2019-12-16', '09.00 - 13.00', 'Pelatihan LDK osis SMP', ''),
(129, '3', '2', '2', '2', '38', '2019-12-17', '09.00 - 13.00', 'Lanjutan pelatihan LDK osis SMP', ''),
(130, '2', '2', '', '3', '32', '2019-12-18', '08.00 -11.00', 'remedial kelas xii', ''),
(131, '2', '2', '', '3', '32', '2019-12-19', '08.00 - 11.30', 'remedial kelas 12', ''),
(132, '2', '2', '', '3', '32', '2019-12-20', '08.00-10.00', 'remedial kelas 12', ''),
(133, '3', '2', '2', '3', '21', '2019-12-21', '09:00-10:00', 'Sosialisasi Program SNMPTN dan UTBK-SBMPTN SMA 2020', ''),
(134, '1', '2', '2', '3', '32', '2020-01-08', '9.45- 11.05', 'KBM', ''),
(135, '1', '2', '2', '1', '59', '2020-01-09', '08.00-12.00', 'Tes perekrutan calon sdk', ''),
(136, '3', '2', '2', '1', '8', '2020-01-11', '11.30-12.30', 'Rapat Open House ', ''),
(137, '1', '2', '2', '3', '32', '2020-01-11', '10.30 - selesai', 'RAPAT SMA', ''),
(138, '1', '2', '2', '3', '32', '2020-01-13', '9.45- 11.05', 'KBM', ''),
(139, '3', '2', '2', '3', '15', '2020-01-14', '11.00-13.00', 'KBM', ''),
(140, '1', '2', '2', '3', '32', '2020-01-15', '8.00- 09.30', 'TES OSN SMA', ''),
(141, '1', '2', '2', '3', '32', '2020-01-16', '8.00- 09.30', 'TES OSN SMA', ''),
(142, '1', '2', '2', '3', '32', '2020-01-17', '14.30- 17.00', 'TES OSN SMA', ''),
(143, '1', '2', '2', '1', '40', '2020-01-15', '09.30-15.30', 'Latihan tari ', ''),
(144, '3', '2', '2', '2', '74', '2020-01-16', '14.10-15.30', 'KBM', ''),
(145, '3', '2', '2', '1', '8', '2020-01-18', '11.00-12.00', 'Rapat OH ', ''),
(146, '1', '2', '2', '3', '32', '2020-01-20', '14.00-15.30', 'Bimbingan UN', ''),
(147, '3', '2', '2', '2', '16', '2020-01-21', '09.30 - 11.10 WIB', 'Guest teacher (Bapak. Noviansyah, polisi lalu lintas) bidang studi TIK kelas VIII Adam Osborne dan VIII Hamka ', ''),
(150, '2', '2', '2', '2', '9', '2020-01-27', '09.30 - 11.10', 'UKD Online', ''),
(151, '2', '2', '2', '2', '9', '2020-01-21', '08.50-10.50', 'UKD Online', ''),
(152, '2', '2', '2', '2', '9', '2020-01-21', '14.10-15.30', 'UKD Online', ''),
(153, '2', '2', '2', '2', '9', '2020-01-22', '07.30-08.50', 'UKD Online', ''),
(154, '2', '2', '', '2', '9', '2020-01-22', '11.50-13.00', 'UKD Online', ''),
(156, '2', '2', '1', '2', '9', '2020-01-24', '08.00-10.00', 'UKD Online', 'dipakai kelas TIK Al-Biruni'),
(157, '2', '2', '2', '2', '9', '2020-01-24', '10.20-11.30', 'UKD Online', ''),
(158, '2', '1', '', '2', '12', '2020-01-27', '09.50 - 11.50', 'UKD English', ''),
(159, '3', '2', '2', '3', '15', '2020-01-21', '15.00-15.30', 'Guest Teacher', ''),
(160, '3', '2', '', '3', '15', '2020-01-21', '15.00-15.30', 'Guest Teacher', ''),
(161, '2', '2', '2', '2', '12', '2020-01-29', '14.10 - 15.30', 'UKD English', ''),
(162, '2', '2', '2', '2', '12', '2020-01-30', '07.30 - 08.50', 'UKD English', ''),
(163, '2', '2', '', '3', '32', '2020-01-24', '10.30 -selesai', 'daftar span ptkin kelas 12', ''),
(164, '1', '2', '2', '1', '40', '2020-01-24', '09.00-15.30', 'Latihan nari 3 Lokasi', ''),
(165, '3', '2', '2', '1', '40', '2020-01-24', '09.00-15.30', 'Latihan nari 3 Lokasi', ''),
(166, '1', '2', '2', '3', '32', '2020-01-27', '10.15 - 11.35', 'kbm', ''),
(167, '3', '2', '2', '3', '15', '2020-01-29', '09.00-15.30', 'Orientasi OSIS Baru SMA dan Raker ', ''),
(168, '1', '2', '1', '3', '32', '2020-01-29', '10.15 - 11.05', 'KBM', 'Bentrok dengan jadwal tetap SMP '),
(169, '1', '2', '2', '3', '51', '2020-01-29', '14.00 - 15.30', 'Bimbingan UN', ''),
(170, '3', '2', '2', '3', '18', '2020-01-29', '14.00-15.30', 'Bimbingan un biologi', ''),
(171, '1', '2', '2', '3', '28', '2020-01-30', '14.00-15.30', 'KBM', ''),
(172, '1', '2', '2', '2', '12', '2020-02-05', '07.30 - 09.30', 'KBM', ''),
(173, '2', '2', '', '3', '32', '2020-02-24', '07.30-16.00', 'GLADI BERSIH UNBK', ''),
(174, '2', '2', '', '3', '32', '2020-02-25', '07.30-16.00', 'GLADI BERSIH UNBK SMA', ''),
(175, '2', '2', '2', '3', '32', '2020-02-26', '07.30-12.30', 'UNBK  SMA Pengenalan soal AKM kepada guru', ''),
(176, '1', '2', '2', '3', '51', '2020-02-05', '10.00 - 11.05', 'mengajar', ''),
(177, '1', '2', '2', '3', '51', '2020-02-26', '14.00 - 15.30', 'Bimbingan UN', ''),
(178, '1', '2', '2', '1', '8', '2020-02-29', '11.00-12.00', 'Rapat Open House dengan anak-anak Osis', ''),
(179, '3', '2', '2', '3', '25', '2020-03-13', '10.15-11.40', 'Guest Teacher Bab Mawaris', ''),
(180, '2', '2', '2', '2', '12', '2020-03-10', '11.10 - 13.10', 'Try Out UN Matematika', ''),
(181, '2', '2', '2', '2', '12', '2020-03-12', '11.10 - 13.10', 'Try Out UN Matematika', ''),
(182, '1', '2', '2', '3', '51', '2020-03-04', '14-15.30', 'Bimbingan UN', ''),
(183, '1', '2', '2', '1', '36', '2020-03-05', '14:00-17:00', 'Latihan persiapan FLS2N', ''),
(184, '2', '2', '2', '2', '83', '2020-03-09', '08.00-13.00', 'TO IPA', ''),
(185, '2', '2', '2', '2', '3', '2020-03-13', '10.00-12.00', 'TO', ''),
(186, '1', '2', '2', '2', '3', '2020-03-14', '07.30-09.30', 'TO kelas albiruni', ''),
(187, '1', '2', '2', '3', '21', '2020-03-12', '07:30 â€“ 09:30', 'TO UNBK', ''),
(188, '1', '2', '2', '3', '21', '2020-03-12', '10:00 â€“ 12:00', 'TO UNBK', ''),
(189, '1', '2', '2', '3', '21', '2020-03-13', '08:15 â€“ 10:15', 'TO UNBK', ''),
(190, '1', '2', '2', '3', '21', '2020-03-13', '14:30 â€“ 16:30', 'TO UNBK', ''),
(191, '3', '2', '2', '3', '21', '2020-03-12', '07:30 â€“ 09:30', 'TO UNBK', ''),
(192, '3', '2', '2', '3', '21', '2020-03-12', '10:00 â€“ 12:00', 'TO UNBK', ''),
(193, '3', '2', '2', '3', '21', '2020-03-13', '08:15 â€“ 10:15', 'TO UNBK', ''),
(194, '3', '2', '2', '3', '21', '2020-03-13', '14:30 â€“ 16:30', 'TO UNBK', ''),
(195, '1', '2', '2', '3', '21', '2020-03-16', '10:00 -11:00', 'Sosialisasi Program UNBK SMA 2020', ''),
(196, '3', '2', '2', '3', '60', '2020-03-14', '07.40 - 09.45', 'Guest Teacher', ''),
(198, '3', '2', '2', '1', '8', '2020-03-12', '15.30-17.00', 'Rapat Open House', ''),
(199, '6', '1', '', '3', '1', '2020-10-21', '07.30-11.30', 'KBM', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `id_guru` varchar(255) NOT NULL,
  `username_pengguna` varchar(255) NOT NULL,
  `password_pengguna` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `id_jenjang`, `id_guru`, `username_pengguna`, `password_pengguna`) VALUES
(2, '3', '1', '10060025', 'b7b9d3c4162ad6171ddf21213bce0819'),
(3, '2', '2', '10181008', 'abf7e93504cc2e54f324e7fd1e7c5ae3'),
(4, '2', '3', '10101066', 'da0beb522e360dbf011cd2af7ff0e770'),
(5, '2', '4', '10130191', 'd6f864ef13d1bc4143f8880d40bb3c67'),
(6, '3', '5', '10101059', 'da87a1ba120671438271dc2f38e1d0fa'),
(7, '1', '6', '10181002', 'd5eae02dd41ea80edd57dd47b9c6fe61'),
(8, '1', '7', '10131085', '39ae638603d245e33ec73d9176ca5f3c'),
(9, '1', '8', '10101056', '5ef3b52bf2d948fb88bd38aa5e244246'),
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
(26, '3', '25', '10061019', 'b7223c17ba4885539b55f32e23757050'),
(27, '3', '26', '10081089', 'cef6087c36791b84670459b57cdcf51b'),
(28, '2', '27', '12061009', 'df9fb0582a14b228722e6ae5ab9223e8'),
(29, '3', '28', '10141003', '932dc0ab07639877fb7865eddc0b2d76'),
(30, '1', '29', '10166003', '62b6bba5f9984cd924fddbc45115e623'),
(31, '1', '30', '10081044', '5b5226ce1132c9c269f6b9eebb66f452'),
(32, '3', '31', '10061013', 'c49dcec621d5f55847e515f01756da03'),
(33, '3', '32', '10151003', '468d84412121579712043359350f768d'),
(34, '1', '33', '10166009', '1ae3b93b94b3548c663a16f1e1df17f7'),
(35, '3', '34', '10176005', '4a0cc115e3acfa4d0210f85517467884'),
(36, '2', '35', '10176007', '0aefd4faf3a600f6844c0bfab60ce647'),
(37, '1', '36', '12101107', '63ec5fcb2bd10faa0f09879c1348f80d'),
(39, '2', '38', '11121004', 'a76adc76393163ec32ed1259adfaf634'),
(40, '3', '39', '10061015', '316a37cdabdbcc35f76b9fe638d79f63'),
(41, '1', '40', '10151004', '556c48640c368af6f43a861cf738e3c9'),
(44, '3', '43', '10121083', 'ed14f4a4d7ecddb6dae8e54900300b1e'),
(45, '1', '44', '10156010', 'a3a7ce7bb5d62a4360e8b3acb8862fe0'),
(47, '2', '46', '10176003', '846d658de5b859d18a00d3a6da0bf555'),
(48, '3', '47', '10151005', 'c34fab86d03d29e0954c7deef4b16c38'),
(49, '1', '48', '10156017', '202cb962ac59075b964b07152d234b70'),
(50, '1', '49', '10141005', '3e9285464b7e2890bf186db889d8df4b'),
(51, '1', '50', '10111078', 'bc5766ab6d36025412287a7703e9f46b'),
(52, '3', '51', '10186006', 'adc45303931ab8f2d52b19a874bae0b3'),
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
(66, '3', '65', '10181020', 'c04ca5bc943ed811dee44210a3378223'),
(67, '2', '66', '10151005@', 'c34fab86d03d29e0954c7deef4b16c38'),
(68, '1', '68', '10186022', '9e21e07515899c011b6d81681125aa30'),
(69, '2', '67', 'meidiana', '89e90c20f48d4bd2e835c9716e2089a5'),
(70, '2', '69', '10176005@', '4a0cc115e3acfa4d0210f85517467884'),
(71, '2', '70', '10176009@', '23196f3f9048e53738e709e72b8ce0c7'),
(72, '1', '72', '10196026', '9283b1a587f319491bee503198d67b23'),
(73, '1', '71', '10196023', 'db321aeb27a2347aeee750692d24c0a5'),
(74, '2', '74', '10196025', '475b24ee5746abf54ea8192eef49ed7c'),
(75, '2', '73', '10196024', 'fbf337bfdc7050e0fda57186a057c438'),
(76, '2', '75', '10176010', 'c2e12d9ffea832edd7d5867e6ddb6293'),
(77, '3', '55', '10181017@', 'bde64ce866da91cc9c6274db983b366c'),
(78, '3', '77', '11161003', '55a61dec5a3418c9268f5f0e96db1aae'),
(79, '3', '3', '10101066@', '4fd242bbc6147be90726f875c7a9fdc4'),
(80, '2', '26', '10081089@', 'cef6087c36791b84670459b57cdcf51b'),
(81, '2', '83', '10166003@', '62b6bba5f9984cd924fddbc45115e623'),
(82, '3', '48', '10156017@', '202cb962ac59075b964b07152d234b70'),
(83, '1', '81', '10156009', '09641a25c5515362c44634a43fb6e8bb'),
(86, '1', '82', '10196024@', '13c62d266557b913b9a791e64573a2aa'),
(87, '2', '48', '10156017#', '202cb962ac59075b964b07152d234b70'),
(88, '1', '85', '10196027', '7f98c1f7a04332f3dda3796676a05ac1'),
(89, '1', '86', '10196028', '967edd01d605d5c35b5ed1cc86200671'),
(90, '1', '87', '10196029', '11812a6e5c072c6f6423f44ded087d9b'),
(91, '3', '89', '10196032', 'f8da66eda0a4e6a14bf62614fb070314'),
(92, '2', '88', '10196030', 'f1ebacfb66bf715a85e1a4c43654e3e0'),
(93, '2', '9', '10081051', '6d95f93c1c5a40f66ca23e111b4c0575'),
(95, '1', '91', '10186011', '2d944b73cf86f7277b684d3f86bf4fa6'),
(99, '3', '93', '10101066@@', '4fd242bbc6147be90726f875c7a9fdc4'),
(100, '2', '26', '10081089@@', 'f410e9571ab6d474573a18f0bf126449'),
(101, '3', '94', 'maina', '29422fcab11ad5872e41f0e110d10f41'),
(102, '3', '95', '10196035', '827ccb0eea8a706c4c34a16891f84e7b'),
(103, '3', '96', '10206039', 'e281f86525e0451551ae4f34282ea8d1'),
(104, '3', '98', '10186017', '3f68f19ef716856d494dbc5c371fd4bd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pjruangan`
--

CREATE TABLE `pjruangan` (
  `id_pjruangan` int(11) NOT NULL,
  `nama_pjruangan` varchar(255) NOT NULL,
  `nip_pjruangan` varchar(255) NOT NULL,
  `username_pjruangan` varchar(255) NOT NULL,
  `password_pjruangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pjruangan`
--

INSERT INTO `pjruangan` (`id_pjruangan`, `nama_pjruangan`, `nip_pjruangan`, `username_pjruangan`, `password_pjruangan`) VALUES
(1, 'pjruangan', 'pjruangan', 'pjruangan', 'c53a31920377fbfe1f48376d1be3e5ec');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `id_project` int(11) NOT NULL,
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
  `proposal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id_project`, `id_jenjang`, `id_semester`, `id_kelas`, `id_kelas2`, `id_kelas3`, `id_kelas4`, `id_guru`, `tema_project`, `waktu_1`, `waktu_2`, `id_mapel1`, `id_mapel2`, `id_mapel3`, `id_mapel4`, `hasil_project`, `biaya_project`, `laporan`, `proposal`) VALUES
(1, '3', '1', '5', '6', '', '', '17', 'Penerapan integral pada kehidupan Nyata serta membuat caption photo', '2018-09-24', '2018-10-06', '15', '26', '22', '', 'Benda-benda yang berkaitan dengan luas, volume dan panjang kurva serta caption photo kegiatan siswa', '22', 'Edited-Format-Class-Project_Rancangan-dan-Laporan-Kegiatan-MTK-xii-ipa.docx', ''),
(2, '1', '1', '16', '17', '', '', '8', 'Indahnya Keberagaman Indonesia', '2018-11-20', '2018-12-10', '', '', '', '', 'Naskah Drama dan tampilan drama', '0', '', ''),
(3, '2', '1', '23', '22', '', '', '66', 'Membuat Poster', '2018-10-01', '2018-10-22', '2', '9', '', '', 'Poster (karya)', '320.000', 'LAPORAN-KEGIATAN-CLASS-PROJECT-bahasa indonesia-prakarya.docx', ''),
(4, '3', '1', '4', '', '', '', '39', 'merancang dan membuat model roller coaster', '2018-11-12', '2018-11-24', '23', '26', '', '', 'Produk ( miniatur roller coaster', '185', '', ''),
(5, '3', '1', '1', '', '', '', '51', 'Uji larutan elektrolit pada tanah dan berbagai macam jenis air yang menyebabkan hilangnya keanekaragaman hayati', '2018-11-09', '2018-11-22', '21', '14', '', '', 'laporan yang telah disiapkan serinci mungkin tentang uji larutan elektrolit dan non elektrolit pada berbagai jenis limbah rumah tangga ', '136', 'LAPORAN KEGIATAN CLASS PROJECT X IPA -.docx', ''),
(6, '3', '1', '4', '', '', '', '51', 'Uji asam basa pada makanan dan minuman kemasan serta dampak konsumsi dari makanan tersebut', '2018-11-05', '2018-11-19', '21', '', '', '', 'Laporan yang telah disiapkan serinci mungkin tentang bahayanya kelebihan asam dalam tubuh', '154', 'LAPORAN KEGIATAN CLASS PROJECT XI IPA.docx', ''),
(7, '3', '1', '5', '6', '', '', '18', 'Uji kadar alkohol pada tapai beras dengan menggunakan pembungkus yang berbeda', '2018-10-29', '2018-11-19', '21', '', '', '', 'Produk akhir yang dihasilkan berupa Produk Tapai dan   Laporan', '152', 'LAPORAN KEGIATAN CLASS PROJECT XII IPA A DAN B.docx', ''),
(8, '3', '1', '2', '', '', '', '60', 'Membuat Peluru ( Atletik Tolak Peluru )', '2018-10-15', '2018-10-16', '', '', '', '', 'Bola Peluru Ukuran Putra dan putri', '0', '', ''),
(9, '2', '1', '25', '', '', '', '38', 'Pola Gambar', '2018-11-23', '2018-11-30', '6', '', '', '', 'Karya berbentuk benda dan presentasi/tampilan secara berkelompok', '0', 'Format-Class-Project_-Laporan-Kegiatan.docx', ''),
(10, '1', '1', '11', '', '', '', '58', 'Melakukan wawancara tentang kesadaran melakukan ibadah salat pada siswa/i kelas VI Citrus ', '2018-11-28', '2018-11-28', '35', '', '', '', 'Laporan', '0', 'RIVANDA-LAPORAN CLASS PROJECT MELAKUKAN WAWANCARA TENTANG KESADARAN MELAKUKAN IBADAH SALAT PADA SISWA KELAS VI CITRUS.doc', ''),
(11, '3', '2', '7', '', '', '', '21', 'Caption', '2019-01-19', '2019-01-20', '20', '17', '', '', 'Video hasil karya siswa dilengkapai dengan text caption yang mengambarkan isi video', '100000', '', ''),
(12, '3', '2', '2', '', '', '', '18', 'Penerapan bioteknologi konvensional berupa proses fermentasi anaerob  dengan membuat roti pizza', '2019-01-21', '2019-01-21', '30', '27', '', '', 'hasil akhir berupa produk roti pizza', '191', '', ''),
(13, '1', '2', '10', '', '', '', '19', 'membuat jam analog', '2019-05-27', '2019-02-25', '39', '42', '', '', 'dalam bentuk produk berupa jam analog', '0', '', ''),
(14, '1', '2', '11', '', '', '', '58', 'MEMBUAT KARTU AGENDA IBADAH', '2019-02-08', '2019-02-08', '33', '', '', '', 'KARTU AGENDA IBADAH', '0', '', ''),
(15, '1', '2', '16', '17', '', '', '7', 'Ilustrasi ekosistem ', '2019-01-30', '2019-02-15', '', '', '', '', 'siswa mampu membuat ilustrasi ekosistem disebuah lingkungan yang didalamnya terdapat komponen biotik dan komponen abiotik', '0', 'ASMAUL HUSNA-LAPORAN CLASS PROJECT MEMBUAT ILUSTRASI EKOSISTEM PADA SISWA KELAS V PHACEOLUS RADIATUS DAN V BAUHINIA PURPUREA.doc', ''),
(16, '3', '2', '5', '6', '', '', '34', 'recount text', '2019-01-18', '2019-01-20', '17', '20', '', '', 'video', '1000', '', ''),
(18, '1', '2', '13', '', '', '', '50', 'Sifat Benda', '2019-02-21', '2019-02-21', '35', '39', '', '', 'Tabel hasil percobaan dan kesimpulan percobaan', '27000', 'NURLAILI LAPORAN CLASS PROJECT SIFAT BENDA.docx', ''),
(19, '3', '2', '6', '', '', '', '60', 'Anatomi Tubuh Manusia', '2019-02-06', '2019-02-27', '', '', '', '', 'Kerangka Tubuh Manusia (Produk)', '200', '', ''),
(20, '2', '1', '24', '', '', '', '11', 'Pola bergambar', '2018-11-14', '2018-11-28', '6', '11', '', '', 'Rangkaian pola bergambar', '0', 'LAPORAN CLASS PROJECT KELAS 9-POLA BILANGAN.docx', ''),
(21, '2', '1', '25', '24', '', '', '', 'telur asin berbagai rasa', '0000-00-00', '0000-00-00', '9', '4', '', '', 'telur asin ', '0', 'class projeck prakarya dan biologi.docx', ''),
(22, '3', '2', '3', '4', '', '', '25', 'Membuat peta dan mencari tokoh', '2019-02-26', '2019-03-01', '12', '', '', '', 'Peta masa pemerintahan Bani Umayyah dan Bani Abbasiyah serta tokoh ilmuwan Islam pada masa kejayaan Islam', '20', '', ''),
(23, '2', '1', '22', '', '', '', '69', 'Invitation Card', '2018-10-29', '2018-10-29', '', '', '', '', 'ïƒ˜	Kartu Undangan', '0', 'Laporan Class Project SMP.docx', ''),
(24, '1', '1', '14', '', '', '', '57', 'Pembuatan Hiasan Dinding dari kain flanel', '2019-03-23', '2019-03-23', '35', '33', '42', '', 'Hiasan Dinding', '200.000', 'laporan kelas projek agama membuat hiasan dinding dari kain flanel.docx', ''),
(25, '3', '2', '2', '', '', '', '65', 'Replika gunung api dan prosese erupsi', '2019-02-27', '2019-03-13', '29', '', '', '', 'Replika tiga jenis gunung api', '154000', 'LAPORAN KEGIATAN CLASS PROJECT X IPS GENAP.docx', ''),
(26, '1', '2', '14', '15', '', '', '40', 'Pahlawan satra Indonesia', '2019-02-14', '2019-02-21', '42', '35', '', '', 'karya', '-', 'Laporan Class Project Membuat bingkai dari cangkang telur yang berisikan puisi..docx', ''),
(27, '1', '2', '16', '17', '', '', '8', 'Iklan', '2019-03-10', '2019-04-10', '41', '35', '', '', 'Video Iklan', '0', 'Laporan Class Project Iklan.docx', ''),
(29, '3', '2', '1', '', '', '', '26', 'Mengukur ketinggian benda menggunakan klinometer', '2019-05-08', '2019-05-09', '15', '', '', '', 'klinometer', '50000', 'LAPORAN KEGIATAN CLASS PROJECT klinometer.docx', ''),
(30, '2', '2', '20', '21', '', '', '3', 'Menulis dan Mendekor Pantun Menjadi Mading', '2019-02-04', '2019-02-22', '2', '', '', '', 'Mading', '0', 'Project_Laporan-Kegiatan mading.docx', ''),
(31, '2', '2', '20', '21', '', '', '3', 'Menceritakan Kembali Fabel Yang Sudah Dibaca Di depan Siswa SD', '2019-03-05', '2019-03-22', '2', '', '', '', 'Video', '0', 'Project_Kegiatan Menceritakan Fabel.docx', ''),
(32, '1', '2', '10', '10', '', '', '19', 'Menentukan Nilai mata uang senilai menggunakan uang mainan', '2019-04-04', '2019-04-04', '39', '', '', '', 'Uang pecahan senilai dari nilai yang ditentukan oleh guru', '0', 'IMG-20190404-WA0023.jpg', ''),
(33, '2', '2', '22', '23', '', '', '66', 'Membuat buku kumpulan puisi', '2019-02-01', '2019-02-28', '2', '', '', '', 'Buku Kumpulan Puisi', '2.000.000', 'LAPORAN-KEGIATAN-CLASS-PROJECT-bahasa indonesia-menulis puisi.docx', ''),
(34, '3', '2', '4', '', '', '', '39', 'merancang dan membuat model jembatan', '2019-03-10', '2019-03-30', '23', '', '', '', 'produk ( model jembatan)', '249.000', 'LAPORAN JEMBATAN.docx', ''),
(35, '1', '1', '10', '', '', '', '19', 'berkebun kangkung. Kegiatan ini dilakukan untuk mengajarkan siswa bercocok tanam dalam rangka mewujudkan misi sekolah yaitu memberikan keterampilan hidup (life skill) pada siswa dan menumbuhkan rasa syukur dan kepedulian terhadap makhluk hidup ciptaan Tuh', '2018-10-01', '2018-11-24', '35', '39', '', '', 'Produk yang dihasilkan adalah berupa sayur kangkung yang ditanam, dirawat, dan dipanen  langsung oleh siswa, lalu siswa membawa pulang dan memakannya. Selanjutnya siswa menulis pengalaman dan pengamatan berkebun dari awal hingga akhir di buku latihan Baha', '80.000', 'LAPORAN CLASS PROJECT kelas 2A.docx', ''),
(36, '1', '1', '15', '14', '', '', '29', 'Percobaan Energi panas menjadi energi gerak', '2018-10-24', '2018-10-25', '37', '', '41', '', 'Karya dan laporan', '-', 'Class Project energi panas menjadi energi gerak.docx', ''),
(37, '1', '1', '15', '14', '', '', '29', 'Membuat Kincir Air', '2018-10-10', '2018-11-10', '37', '35', '', '41', 'Karya dan laporan', '0', 'class project kelas 4 kincir air.docx', ''),
(38, '1', '1', '12', '', '', '', '48', 'Menanam Bunga Melati dengan Stek Pucuk yang diuapkan', '2018-11-14', '2018-12-10', '35', '39', '', '', 'Bunga Melati', '-', 'LAPORAN KEGIATAN CLASS PROJECT STEK PUCUK.docx', ''),
(39, '1', '2', '12', '', '', '', '48', 'Membuat Anemometer Sederhana', '2019-02-18', '2019-02-19', '35', '39', '', '', 'Alat Anemometer sederhana', '-', 'LAPORAN KEGIATAN CLASS PROJECT ANEMOMETER.docx', ''),
(40, '1', '1', '12', '', '', '', '48', 'Siklus Hidup Lalat Buah', '2018-11-24', '2018-11-30', '35', '39', '', '', 'Lalat buah ', '-', 'LAPORAN KEGIATAN CLASS PROJECT LALAT.docx', ''),
(41, '1', '2', '12', '', '', '', '48', 'Membuat Jam Analog', '2019-02-04', '2019-02-04', '39', '42', '', '', 'Jam Analog Sederhana', '-', 'LAPORAN KEGIATAN CLASS PROJECT JAM ANALOG.docx', ''),
(42, '1', '1', '8', '', '', '', '53', 'Warna Dasar dan warna primer', '2018-10-24', '2019-07-24', '42', '35', '', '', 'produk (lukisan cap tangan)', '10.000', 'laporan-Class-Project-(warna dasar dan warna primer)I-cananga-Adorata-2.docx', ''),
(43, '1', '1', '8', '', '', '8', '53', 'Eksperimen Pencampuran warna', '2018-10-25', '2018-10-25', '42', '35', '', '', 'produk ( air pelangi)', '37.000.00', 'laporan-Class-Project-I-Eksperimen pencampuran warna) cananga-Adorata-3.docx', ''),
(44, '1', '1', '8', '', '', '', '53', 'Alat musik perkusi', '2018-11-07', '2018-11-12', '35', '36', '42', '', 'produk ( alat musik dari kaleng bekas) dan tampilan (memainkan alat musik dengan irama yang sesuai', '0', 'laporan-Class-Project- ( Alat musik perkusi)I-cananga-Adorata.docx', ''),
(45, '1', '2', '8', '', '', '', '53', 'Menggunting dan Menempel (membuat karakter gemar membaca)', '2019-05-09', '2019-07-09', '42', '35', '', '', 'produk (karekater gemar membaca)', '0', '', ''),
(46, '1', '2', '8', '', '', '', '53', 'bunyi dan lambang sila pancasila', '2019-04-11', '2019-07-15', '41', '42', '', '', 'Penampilan (menghafal bunyi dan sila pancasila dengan gerak dan ekspresi)', '0', '', ''),
(47, '3', '3', '5', '', '', '', '76', 'Penyajian Data Hasil Penelitian Listrik', '2019-08-01', '2019-08-29', '15', '23', '', '', 'Rangkaian Listrik, Data dan Laporan ', '200.000', 'LAPORAN KEGIATAN CLASS PROJECT XII IPA dan XII IPS GANJIL.docx', ''),
(48, '3', '3', '4', '', '', '', '51', 'Destilasi daun minyak kayu putih dan batang serai', '2019-08-24', '2019-08-26', '24', '14', '', '', 'Minyak kayu putih dan minyak serai ', '90.000', 'LAPORAN KEGIATAN CLASS PROJECT X IPA GANJIL.docx', ''),
(49, '3', '3', '26', '', '', '', '51', 'Penjernihan Air Sederhana Menggunakan Arang Aktif dan Ijuk', '2019-11-23', '2019-11-26', '24', '', '', '', 'Air Bersih dan Alat Penjernihan Air', '160.000', 'LAPORAN Penjernihan Air.docx', ''),
(50, '3', '3', '1', '2', '', '', '23', 'Menentukan usia dan jenis zaman suatu benda bersejarah melalui Tipologi batu nisan', '2019-09-09', '2019-09-09', '22', '', '', '', 'Laporan siswa yang sudah bisa menelaah berbagai macam tipologi bentuk batu nisan makam-makam kerajaan sesuai zaman dan jenis', '300.000', '', ''),
(51, '3', '3', '4', '3', '', '', '78', 'Menulis laporan teks prosedural tentang destilasi daun minyak kayu putih dan batang serai', '2019-07-31', '2019-07-02', '24', '', '', '', 'laporan', '0', 'LAP KEG PROJECT X IPA GANJIL.docx', ''),
(52, '3', '3', '2', '', '', '', '65', 'penciptaan jagad raya dan tata surya', '2019-09-17', '2019-10-01', '29', '', '', '', 'laporan dan replika susunan tata surya ( susunan planet )', '150.000', '', ''),
(53, '3', '4', '1', '2', '', '', '56', 'Ketentuan UUD NRI 1945 dalam kehidupan Berbangsa dan Bernegara(Debat Kebangsaan terkait fatwa MPU Aceh yang mengharamkan game online (PUBG)', '2020-01-12', '2020-01-25', '14', '', '', '', 'Laporan berupa materi debat', '0', '', ''),
(54, '3', '4', '1', '2', '', '', '77', 'Mengukur tinggi bangunan', '2020-03-24', '2020-03-25', '15', '', '', '', 'Klinometer dan Laporan', '50.000', '', ''),
(56, '3', '3', '2', '', '', '', '18', 'Pengaplikasian peranan mikroorganisme dalam pengolahan makanan', '2019-09-10', '2019-09-10', '30', '12', '', '', 'produk makanan dan laporan', '200.000', 'class project x ips.doc', ''),
(57, '3', '3', '4', '', '', '', '18', 'membuat project 3 dimensi sel tumbuhan dan sel hewan', '2019-07-31', '2019-07-31', '21', '', '', '', 'produk 3 dimensi sel hewan dan sel tumbuhan', '200.000', 'class project xi ipa.doc', ''),
(58, '3', '3', '26', '', '', '', '18', 'pertumbuhan dan perkembangan pada tumbuhan ( membedakan perkecambahan hipogeal dan epigeal )', '2019-07-30', '2019-07-30', '21', '', '', '', 'laporan tentang perkecambahan', '200.000', 'CP xii ipa.docx', ''),
(59, '3', '4', '4', '', '', '', '18', 'sistem reproduksi', '2020-01-14', '2020-01-14', '21', '', '', '', 'mading ', '200.000', '', ''),
(60, '3', '3', '3', '4', '', '', '25', 'Khutbah dan dakwah', '2019-11-26', '2019-11-28', '14', '', '', '', 'Siswa dapat membuat teks pidato atau khutbah dan mempraktekkannya', '0', 'Class Project Pidato.docx', ''),
(63, '2', '4', '39', '40', '', '', '70', 'Kerja sama dalam berbagai bidang kehidupan', '2020-01-30', '2020-02-13', '3', '', '', '', 'Laporan Wawancara', '0', '', ''),
(64, '2', '3', '41', '42', '', '', '16', 'Prakarya_Membuat karya dari kerajinan limbah anorganik berupa pot bunga dan ayunan', '2019-07-16', '2019-07-16', '9', '3', '', '', 'Karya pot bunga dan ayunan dari ban bekas', '496.000', 'School Visit Prakarya Limbah Anorganik Kelas VIII Juli 19.docx', ''),
(65, '2', '3', '43', '44', '', '', '16', 'Prakarya_Pengolahan bahan makanan sehat dengan bahan dasar ayam potong', '2019-11-15', '2019-11-16', '9', '1', '3', '', 'Karya berupa makanan olahan dari ayam (Soto Ayam)', '500.000', '', ''),
(66, '3', '3', '1', '', '', '', '34', 'Mendeskripsikan tempat/ bangunan bersejarah (Descrptive Text)', '2019-09-09', '2019-09-09', '22', '20', '', '', 'Descriptive Text', '300.000', 'Class Project Eng Descriptive text X IPA.docx', ''),
(67, '3', '3', '3', '', '', '', '34', 'Analytical Exposition Text', '2019-10-07', '2019-10-14', '28', '29', '', '', 'Analytical Exposition Text dan peta kontur sebaran barang tambang', '100.000', 'Class Project Eng Exposition XI IPS.docx', ''),
(68, '2', '3', '42', '41', '', '', '69', 'Observing and Questioning', '2019-07-26', '2019-08-16', '3', '9', '', '', 'Laporan', '350.000', 'Class Project Eng Observing and Questioning Kelas VIII Juli 19.docx', ''),
(69, '2', '4', '40', '', '', '', '69', 'Interview', '2020-01-30', '2020-02-13', '3', '8', '', '', 'Laporan', '0', '', ''),
(70, '2', '3', '41', '42', '', '', '75', 'mempelajari pola penawaran barang di pasar dengan persamaan garis linier', '2019-08-01', '2019-08-31', '5', '6', '', '', 'laporan', '400.000', '', ''),
(71, '2', '3', '43', '44', '', '', '74', 'Atjeh Peukateun Seni', '2019-07-22', '2019-10-06', '10', '', '', '', 'Pertunjukan Didong ', '350.000', 'Laporan Class Project Didong.docx', ''),
(72, '2', '3', '39', '40', '', '', '74', 'Pengolahan Makanan Khas Aceh (Timphan)', '2019-09-16', '2019-09-16', '9', '6', '2', '11', 'Timphan Aceh', '400.000', 'Laporan Class Project Kue Timphan.docx', ''),
(73, '2', '3', '42', '41', '', '', '74', 'Pertunjukan tari tradisional  ', '2019-07-24', '2019-10-15', '10', '', '', '', 'Pertunjukan Tari Tradisional Aceh', '0', 'Laporan Class Project Tari tradisional.docx', ''),
(76, '2', '3', '41', '42', '', '', '4', 'Tekanan', '2019-10-16', '2019-10-30', '4', '', '', '', 'Laporan', '100.000', 'Laporan Kegiatan Class-Project IPA_ainal.docx', ''),
(77, '3', '3', '26', '', '', '', '80', 'Listrik Dinamis', '2019-08-01', '2019-08-29', '23', '15', '', '', 'Laporan', '200.000', 'LAPORAN KEGIATAN CLASS PROJECT.docx', ''),
(78, '1', '3', '34', '', '', '', '72', 'Permainan tradisional egrang batok kelapa', '2019-10-14', '2019-11-11', '40', '39', '', '', 'Karya permainan tradisional egrang batok kelapa', '200.000', '', ''),
(79, '1', '3', '28', '', '', '', '19', 'melukis dengan menggunakan tangan secara berkelompok', '2019-10-23', '2019-10-23', '42', '41', '35', '', 'lukisan tangan', '-', 'LAPORAN CLASS PROJECT kelas 1B.docx', ''),
(82, '2', '3', '43', '44', '', '', '12', 'procedure text', '2019-08-19', '2019-08-23', '1', '9', '', '', 'laporan', '50.000', '', ''),
(83, '1', '1', '33', '34', '', '', '8', 'Menulis surat pribadi', '2019-08-11', '2019-08-17', '35', '38', '', '', 'Surat', '400000', '', ''),
(84, '1', '2', '33', '34', '', '', '8', 'Market Day (Aku ingin jadi pengusaha)', '2020-01-19', '2020-01-25', '35', '39', '41', '', 'Laporan', '0', '', ''),
(85, '1', '3', '27', '', '', '', '49', 'Keluargaku', '2019-10-01', '2019-10-01', '35', '42', '', '', 'Family tree', '50.000', '', ''),
(86, '1', '4', '33', '34', '', '', '8', 'Membuat mading (Review Materi)', '2020-03-15', '2020-06-03', '35', '42', '', '', 'Mading', '400000', '', ''),
(87, '1', '4', '27', '', '', '', '49', 'Benda, hewan dan tanaman', '2020-03-03', '2020-03-03', '35', '42', '', '', 'Kolase', '50.000', '', ''),
(88, '1', '3', '37', '38', '', '', '30', 'Hidroponik ', '2019-07-29', '2019-07-30', '37', '39', '35', '', 'Produk (tanaman hidroponik) dan Laporan', '1.500.000', '', ''),
(89, '2', '4', '41', '42', '', '', '79', 'Statistika, survey dan meyajikan data serta menuliskan laporan eksposisi tentang penyimpangan sosial', '2019-10-01', '2019-10-31', '6', '2', '11', '5', 'laporan', '300.000', '', ''),
(90, '1', '3', '31', '32', '', '', '81', 'Permainan tradisioanal, pembuatan permainan bakiak', '2019-09-09', '2019-09-25', '40', '', '', '', 'produk', '500.000.000', '', ''),
(91, '1', '3', '32', '', '', '', '82', 'BERKEBUN BAYAN DAN MENGHIAS KEBUN DENGAN BOTOL PLASTIK BEKAS', '2019-10-15', '2019-10-22', '35', '', '', '', 'PAGAR KEBUN YANG TERBUAT DARI BOTOL PLASTIK, MENULIS PENGALAMAN BERKEBUN', '10.000', 'LAPORAN CLASS PROJECT KELAS 3B.docx', ''),
(92, '1', '3', '37', '38', '', '', '30', 'Mencangkok tanaman', '2019-08-26', '2019-11-29', '37', '35', '', '', 'Tanaman hasil mencangkok', '200.000', '', ''),
(93, '1', '3', '29', '', '', '', '71', 'Membuat roster pelajaran ', '2019-11-29', '2019-11-30', '35', '42', '41', '', 'roster pelajaran', '112.000', 'Laporan Class Project 2 Manggeh (Membuat Roster Pelajaran).doc', ''),
(94, '1', '3', '37', '38', '', '', '50', 'Membuat miniatur kota dengan bentuk bangun ruang', '2019-10-01', '2019-11-30', '42', '', '', '', 'karya', '500000', '', ''),
(95, '1', '3', '35', '', '', '', '57', 'membuat model paru-paru', '2019-10-09', '2019-10-09', '37', '', '', '', 'hasil akhir dalam bentuk karya', '100.000', '', ''),
(96, '1', '3', '33', '34', '', '', '57', 'Pengolahan limbah dari kardus', '2019-12-07', '2019-12-07', '38', '42', '35', '', 'hasil akhir dalam bentuk karya', '400.000', '', ''),
(97, '1', '4', '34', '33', '', '', '57', 'membuat miniatur ekosistem', '2020-02-05', '2020-02-05', '37', '', '', '', 'hasil akhir dalam bentuk karya', '200.000', '', ''),
(99, '1', '3', '33', '34', '', '', '40', 'kerajinan montase, membuat montase dengan tema perkotaan', '0000-00-00', '0000-00-00', '42', '38', '', '', 'hasil akhir dalam bentuk karya', '150.000', '', ''),
(100, '3', '3', '3', '4', '', '', '23', 'Sejarah mempertahankan kemerdekaan indonesia', '2019-09-02', '2019-09-02', '20', '12', '14', '22', 'Laporan pengamatan di lapangan', '200000', '', ''),
(101, '2', '3', '43', '44', '', '', '83', 'Bertanam Hidroponik', '2019-08-27', '2019-08-27', '4', '2', '', '', 'Sayuran Hidroponik dan Laporan Penelitian Ilmiah', '500.000', '', ''),
(102, '1', '3', '33', '34', '', '', '53', 'menulis surat pribadi', '2019-08-01', '2019-08-01', '35', '', '', '', 'surat (surat untuk orangtua yang dikirimkan melalui POS)', '400.000,-', '', ''),
(103, '1', '3', '37', '38', '', '', '53', 'membuat iklan', '2019-10-01', '2019-07-16', '35', '', '', '', 'Iklan Visual (Gambar) dan Iklan audio visual (rekaman Video)', '0', '', ''),
(104, '1', '3', '35', '36', '', '', '36', 'Membuat produk dari bahan alam/buatan', '2020-02-04', '2020-03-03', '42', '', '', '', 'Produk yang dihasilkan berupa barang yang bernilai ekonomis', '200.000', '', ''),
(105, '3', '3', '7', '26', '', '', '43', 'menulis teks cerita sejarah', '2019-08-19', '2019-09-05', '20', '22', '', '', 'membuat teks cerita sejarah', '0', '', ''),
(106, '3', '4', '1', '2', '', '', '43', 'mengembangkan permasalahan/isu dari berbagai dari berbagai sudut pandang dilengkapi dengan argumen dalam berdebat.', '2020-01-13', '2020-01-25', '17', '', '', '', 'video debat', '0', '', ''),
(107, '2', '3', '43', '44', '', '', '9', 'Penyembelihan Hewan', '2019-10-17', '2019-10-19', '3', '9', '', '', 'Laporan dan makanan [Soto ayam] ', '500000', '', ''),
(108, '2', '4', '41', '42', '', '', '9', 'Menghindari makanan dan minuman yang Haram', '2020-01-07', '2020-01-29', '2', '5', '11', '4', 'Laporan ', '300000', '', ''),
(109, '3', '3', '3', '4', '', '', '1', 'Budidaya Ikan Lele', '2019-08-02', '2019-10-08', '18', '', '', '', 'Laporan dan hasil budidaya', '800.000', 'Laporan Class Project - Budidaya Lele.docx', ''),
(110, '3', '3', '7', '26', '', '', '1', 'Membuat kerajinan gerabah', '2019-07-30', '2019-08-13', '18', '22', '28', '', 'Laporan dan kerajinan gerabah', '500.000', 'Laporan Class Project - Kerajinan Gerabah.docx', ''),
(112, '1', '3', '38', '37', '', '', '58', 'Membuat peta konsep tentang tajwid dan penentuan waktu salat fardhu  ', '2019-10-14', '2019-10-15', '33', '', '', '', 'alat peraga mengajar berupa peta konsep', '0', 'RIVANDA-LAPORAN CLASS PROJECT MEMBUAT ALAT PERAGA TENTANG TAJWID DAN WAKTU SALAT FARDHU.doc', ''),
(113, '2', '3', '39', '40', '', '', '38', 'Menyelesaikan masalah sehari-hari yang berkaitan dengan operasi hitung bilangan bulat dan pecahan.', '2019-11-07', '2019-11-07', '6', '9', '4', '2', 'Hasil akhir dalam bentuk produk (Timphan khan Aceh)', '132.000', 'laporan Class-Project_-timphan ubi VII.docx', ''),
(114, '2', '3', '39', '40', '', '', '66', 'membuat timphan ubi dengan prosedur yang tepat', '2019-11-07', '2019-11-07', '2', '9', '6', '4', 'timphan ubi', '132.000', 'Laporan Class Project Kue Timphan.docx', ''),
(115, '3', '3', '26', '', '', '', '60', 'Tournamen Bulutangkis', '2019-11-06', '2019-11-13', '16', '', '', '', 'Laporan Sang juara', '0', 'Laporan_Class_Project_Tournamen Bulutangkis.docx', ''),
(116, '3', '3', '3', '', '', '', '77', 'Merumuskan masalah dan model matematika', '2019-08-31', '2019-08-31', '15', '', '', '', 'Laporan', '0', 'LAPORAN KEGIATAN CLASS PROJECT MTK X IPA GANJIL.docx', ''),
(118, '2', '3', '39', '40', '', '', '88', 'membuat turnamen pertandingan bulu tangkis dalam lingkup kelas dan bertanding antar siswa ', '2019-10-28', '2019-11-08', '7', '', '', '', 'mendapatkan pemenang pertandingan bulu tangkis melalui skema turnamen mini', '0', 'FARHAN_Class_Project_Tournamen Bulutangkis.docx', ''),
(119, '3', '3', '2', '', '', '', '89', 'Business Plan', '2019-11-20', '2019-11-27', '27', '', '', '', 'Laporan', '0', 'Class Project Ekonomi (X IPS).docx', ''),
(120, '3', '3', '3', '', '', '', '65', 'Pembuatan peta timbul sebaran barang tambang di Indonesia', '2019-11-19', '2019-11-26', '29', '28', '', '', 'Peta timbul sebaran barang tambang', '255.000', 'PROJECT PETA TIMBUL.docx', ''),
(122, '1', '3', '37', '38', '', '', '7', 'dampak pengaruh globalisasi dikalangan masyarakat Indonesia', '2019-09-18', '2019-09-25', '38', '', '', '', 'hasil akhir yang diperoleh dari penyebaran angket direkapkan sehingga siswa dapat membuat perubahan dikalangan masyarakat akibat globalisasi. Siswa dapat membuat perbandingan yang terjadi dampak positif dan dampak negatif yang ditimbulkan dari globalisasi', '0', 'LAPORAN CLASS PROJECT kelas 6.docx', ''),
(123, '1', '3', '33', '', '', '', '86', 'Membuat Alat peraga tentang Nama-nama Nabi, Rasul yang Ulul Azmi, Mukjizat Nabi atau Rasul dan Sifat-sifat Rasul', '2019-11-28', '2019-11-28', '33', '42', '', '', 'Hiasan dinding', '0 ', '', ''),
(124, '3', '3', '4', '4', '', '', '93', 'kutbah dan ceramah', '2019-11-01', '2019-11-28', '14', '12', '', '', 'Siswa putra mempraktekkan khutbah Jumâ€™at, dan siswa putri mempraktekkan ceramah', '0', 'Class Project ceramah.docx', ''),
(125, '1', '3', '28', '', '', '', '91', 'Membuat Family Tree', '2019-12-03', '2019-12-05', '34', '', '', '', 'hasil akhir dalam bentuk karya', '58.000', 'LAPORAN CLASS PROJECT FAMILY TREE.docx', ''),
(126, '1', '3', '29', '', '', '', '87', 'Membuat papan pintar', '2019-10-15', '2019-10-28', '39', '', '', '', 'Karya papan pintar', '65.000', 'Laporan Class Project Upload.docx', ''),
(127, '1', '3', '33', '', '', '', '8', 'Laporan Pengamatan Pembuatan Pulut Panggang', '2019-11-15', '2019-11-22', '36', '35', '', '', 'Laporan Pengamatan', '119000', 'Laporan Class Project IV Seutui (Bahasa Indonesia - Culture).docx', ''),
(128, '2', '3', '39', '40', '', '', '83', 'Makanan Sebagai Sumber Energi', '2019-12-07', '2019-12-07', '9', '2', '6', '4', ' Timphan Ubi dan Tepung Kanji', '132.000', 'Laporan Class Project Kue Timphan (1).docx', ''),
(129, '3', '4', '2', '', '', '', '21', 'Narrative (telling a story)', '2020-02-27', '2020-02-28', '28', '', '', '', 'Rekaman Hasil Presentasi Story Telling siswa', '0', '', ''),
(130, '2', '4', '43', '44', '', '', '88', 'membuat laporan observasi tentang pertandingan bola persahabatan antara SMP Sukma Bangsa Bireuen vs SMP-IT Azkiya', '2020-01-29', '2020-01-29', '7', '', '', '', 'laporan', '300.000', '', ''),
(131, '3', '4', '4', '3', '', '', '25', 'Drama dalam bahasa Arab', '2020-04-13', '2020-04-14', '12', '13', '', '', 'Siswa menampilkan drama berbahasa Arab', '0', '', ''),
(132, '3', '4', '3', '', '', '', '65', 'Pengolahan potensi (hasil) pertanian dan perkebunan untuk ketahanan pangan nasional', '2020-01-31', '2020-01-31', '29', '', '', '', 'Produk olahan makanan hasil perkebunan', '92.000', 'LAPORAN PROJECT PENGOLAHAN HASIL PERKEBUNAN.docx', ''),
(133, '3', '4', '4', '', '', '', '32', 'Cause and Effect', '2020-03-11', '2020-03-12', '22', '', '', '', ' Cause and Effect Drawing  & Video Explaining the cause and effect ', '100.000', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pustaka`
--

CREATE TABLE `pustaka` (
  `id_pustaka` int(11) NOT NULL,
  `nama_pustaka` varchar(255) NOT NULL,
  `nip_pustaka` varchar(255) NOT NULL,
  `username_pustaka` varchar(255) NOT NULL,
  `password_pustaka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pustaka`
--

INSERT INTO `pustaka` (`id_pustaka`, `nama_pustaka`, `nip_pustaka`, `username_pustaka`, `password_pustaka`) VALUES
(1, 'pustaka', 'pustaka', 'admin_pustaka', '836776ae5eeb1c86a73730452ded37d1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `nama_ruang`) VALUES
(1, 'Ruang Finland'),
(2, 'Ruang Lab.Komputer'),
(3, 'Ruang Meeting'),
(6, 'ZOOM MEETING 1'),
(7, 'ZOOM MEETING 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id_semester` int(11) NOT NULL,
  `nama_semester` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id_semester`, `nama_semester`, `status`) VALUES
(1, 'Ganjil 2018/2019', 'Tidak Aktif'),
(2, 'Genap 2018/2019', 'Tidak Aktif'),
(3, 'Ganjil 2019/2020', 'Tidak Aktif'),
(4, 'Genap 2019/2020', 'Tidak Aktif'),
(5, 'Ganjil 2020/2021', 'Aktif'),
(6, 'Genap 2020/2021', 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `id_kelas` varchar(255) NOT NULL,
  `nis_siswa` varchar(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `jk_siswa` varchar(255) NOT NULL,
  `alamat_siswa` varchar(255) NOT NULL,
  `ayah_siswa` varchar(255) NOT NULL,
  `ibu_siswa` varchar(255) NOT NULL,
  `hp_siswa` varchar(255) NOT NULL,
  `kerja_siswa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_jenjang`, `id_kelas`, `nis_siswa`, `nama_siswa`, `jk_siswa`, `alamat_siswa`, `ayah_siswa`, `ibu_siswa`, `hp_siswa`, `kerja_siswa`) VALUES
(1, '3', '54', '10165001', 'Alifa Azeda', 'Perempuan', 'Komplek PU Desa Geulumpang Payong, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Azhar Daud', 'Eni Yulita', '81360259576', 'Wiraswasta & PNS'),
(2, '3', '54', '10165002', 'Amira Addina Zahra', 'Perempuan', 'Mns. Tgk. Digadong, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Armiya', 'Nurul Fajri, SH', '85206227700', 'PNS'),
(3, '3', '54', '10165003', 'Arief Johansyah', 'Laki-Laki', 'Dsn Kruetmameh, Desa Geudong Alue, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Faisal, SE.Ak', 'Eliza Zuhra, S.Pd', '85261872179', 'Karyawan Bank & Guru'),
(4, '3', '54', '10165005', 'Cut Putroe Sausan', 'Perempuan', 'Desa Glg. Baroe, Kec. Kota Juang, Kab. Bireuen, Aceh', 'T. Juwirman Syah, SE', 'Yulia Fitri, S.Ag', '81360472424', 'PNS'),
(5, '3', '54', '10165007', 'Dinda Fairus Naila', 'Perempuan', 'Desa Glumpang Payong, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Taufik', 'Farrah Dina', '85275333164', 'PNS & IRT'),
(6, '3', '54', '10165008', 'Farid Zulfikar', 'Laki-Laki', 'Mns. Blang, Kec. Kota Juang, kab. Bireuen, Aceh', 'Bachtiar Abdullah', 'Ainul Mardiah', '85260899796', 'Wiraswasta & PNS'),
(7, '3', '54', '10165009', 'Faris Iza Firdaus', 'Laki-Laki', 'Desa Juli Cot Meurak, Desa Cot Meurak, Kec. Juli, kab. Bireuen, Aceh', 'Zainuddin', 'Susi Inda', '85260541966', 'PNS'),
(8, '3', '54', '10165017', 'Intan Zahara', 'Perempuan', 'Mns Dayah, kec. Kota Juang, kab. Bireuen, Aceh', 'Ridwan Dahlan', 'Hazanah, S.Pd', '85362922267', 'Pedagang & Guru'),
(9, '3', '54', '10165019', 'M. Fadhil', 'Laki-Laki', 'DS II Blang Raya Desa Mns. Blang, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Muchtarruddin', 'Rahmawati', '82167831695', 'Wiraswasta & Guru'),
(10, '3', '54', '10165020', 'M. Fardian Bilqisthi', 'Laki-Laki', 'Jl. Pendidikan, Desa Mns. Dayah, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Drs. Marwan, M.Pd', 'Irni Aryani, A.Md.Keb', '85277801975', 'PNS (Dosen) & PNS (Bidan)'),
(11, '3', '54', '10165023', 'M. Zikram Nauval', 'Laki-Laki', 'Depan SDN 11 Desa Geudong-Geudong Kec. Kota Juang, Kab. Bireuen, Aceh', 'Zulkarnaini (Alm)', 'Nurjannah', '81399005788', 'Guru'),
(12, '3', '54', '10165025', 'Maulana', 'Laki-Laki', 'Jl. Jangka No. 3, Dusun Keuchik Lah, Desa Keude Matang Glumpang Dua, Kec. Peusangan, Kab. Bireuen, Aceh.', 'H. Uskar Walidin', 'Hj. Maryani', '85361391077', 'Wiraswasta & IRT'),
(13, '3', '54', '10165027', 'Miftahul Faza', 'Laki-Laki', 'Desa Juli Tambo tanjong, Kec. Juli, Kab. Bireuen, Aceh', 'Drs. M. Isa, M.Pd', 'Nurmasyitah', '85296181239', 'PNS & IRT'),
(14, '3', '54', '10165028', 'Muhammad Alfurqan', 'Laki-Laki', 'Jalan Ule Balang Ben No. 12, Desa Meunasah Blang, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Safren Yusuf', 'Meiliza Musa', '81360262212', 'Wiraswasta & IRT'),
(15, '3', '54', '10165032', 'Muhammad Rafli', 'Laki-Laki', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Ismail', 'Pertiwi, S.Pd', '85277254465', 'Pegawai BUMN & Guru'),
(16, '3', '54', '10165047', 'Rizki Ananda', 'Perempuan', 'Desa Meunasah Dayah, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Tarmizi', 'Dewi Darmawati', '85260032981', 'PNS & IRT'),
(17, '3', '54', '10165050', 'Siti Alisya', 'Perempuan', 'Meunasah Dayah Matang Glumpang Dua, kec. peusangan, Kab. Bireuen, Aceh', 'Rifian', 'Novi Diana', '85277487717', 'Wiraswasta & Dosen'),
(18, '3', '54', '10165051', 'Siti Laiya Humaira', 'Perempuan', 'Desa Mns Blang, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Nurdin Muhammad', 'Asmiati', '85262464981', 'Wiraswasta & IRT'),
(19, '3', '54', '10165054', 'Venica', 'Perempuan', 'Jl. Letda Ishak Ismail Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Marvin Ong', 'Suyeni Raja', '81360331188', 'Wiraswasta & IRT'),
(20, '3', '54', '10165058', 'Yuyun Sulistian', 'Perempuan', 'Desa Balee Aroen Mns. Blang Bireuen Kec. Kota Juang, Kab. Bireuen, Aceh', 'Fadli Alda', 'Aisyah', '85260860076', 'Wiraswasta & PNS'),
(21, '3', '54', '10165063', 'Wilda Safitri', 'Perempuan', 'Jl. Medan - B. Aceh, Desa Geulanggang Gampong, Kab. Bireuen', 'Doni Arianta', 'Uniar', '85372052003', 'Wiraswasta'),
(22, '3', '54', '10165064', 'Amalya Amnina', 'Perempuan', 'Desa Mns. Capa Kec, Kota Juang, kab. Bireuen, Aceh', 'Muhammad Ambia', 'Elly Farida', '85260598859', 'Polri & IRT'),
(23, '3', '54', '10165066', 'Muammar Zaidan', 'Laki-Laki', 'Jl. T. Imum Rakyat No. 90 b.  Mns Capa  Kec. Kota Juang  Kab. Bireuen.', 'Juliadi', 'Tri Rahmayani', '82304512323', 'Wiraswasta'),
(24, '3', '54', '10175063', 'Nakiatul Misqa', 'Perempuan', 'Meunasah Dayah, Kota Juang, Kab.Bireuen, Aceh', 'M. Yunus', 'Martilla', '85372021915', 'Swasta'),
(25, '3', '54', '10165004', 'Athira', 'Perempuan', 'Dusun Ulee Gampong, Desa Geudong Alue, Kec. Kota Juang, kab. Bireuen, Aceh', 'dr. Zulkarnaen Adam', 'dr. Era Muliana, M.Ked (PD) SpPD', '81377489007', 'Dokter PNS'),
(26, '3', '54', '10165006', 'Dara Syafira', 'Perempuan', 'Desa Cot Tarom Baroh, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Syarifuddin', 'Hermawati', '85362539384', 'Wiraswasta & IRT'),
(27, '3', '54', '10165011', 'Firjatullah', 'Perempuan', 'Dusun Jeumpa Puteh Juli KM.2 Desa Juli Seutuy Kec. Juli, Kab. Bireuen, Aceh', 'Abdullah, S.Pd', 'Katijah, S.Pd', '85372675848', 'Guru'),
(28, '3', '54', '10165012', 'Ghaitsa Al-Zahira Zulvita', 'Perempuan', 'Desa Mata Mamplam-Balestuy- Matang Glumpang Dua. Kec. Peusangan. Kab. Bireuen, Aceh', 'Zulkifli, SST.MT', 'Rosnita, AMD.Keb', '85294387445', 'PNS (Staf pengajar Poltek Lhokseumawe) & PNS'),
(29, '3', '54', '10165015', 'Hilwa Salsabila', 'Perempuan', 'Desa Glg. Gampong, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Darkasyi', 'Asriany Nur', '85276110100', 'Wiraswasta & PNS'),
(30, '3', '54', '10165021', 'M. Rafli Syahputra', 'Laki-Laki', 'Jl. Meunasah Pulo Kiton, Desa Pulo Kiton, Kec. Kota Juang, kab. Bireuen, Aceh', 'Mustafa Kamal', 'Ainul Mardhiah', '85371577158', 'Karyawan Swasta & Guru'),
(31, '3', '54', '10165024', 'Maghfirah', 'Perempuan', 'Desa Meunasah Blang, Kec. Kota Juang, Kab. Bireuen, Aceh', 'M. Daud', 'Irwati', '85262185301', 'PNS & IRT'),
(32, '3', '54', '10165030', 'Muhammad Fatih Assilmy', 'Laki-Laki', 'Jl. Tgk. Dipulo No.14 Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Dedi Kuswana', 'Nurlaili', '85260996240', 'Free Lance & IRT'),
(33, '3', '54', '10165031', 'Muhammad Kautsar', 'Laki-Laki', 'Komplek Green Balam Town House No.3 Jln. Balam Ring Road gagak hitam sunggal, Desa Sei Sikambing B, Kec, Sunggal, Kab. Medan, Sumatra Utara', 'Iskandar', 'Mardalena', '81319602221', 'Pegawai Swasta & IRT'),
(34, '3', '54', '10165034', 'Mujirahmatillah', 'Laki-Laki', 'Jl. Banda Aceh - Medan No. 5 Dusun Timur Desa Cot Gapu Kec. Kota Juang, Kab. Bireuen, Aceh', 'Drs. Hazmi', 'Cut Mardian, S.Pd', '85260822125', 'PNS'),
(35, '3', '54', '10165035', 'Nabila Phoenna', 'Perempuan', 'Desa Mns. Capa Kec, Kota Juang, kab. Bireuen, Aceh', 'IR. Jafar', 'Eliana', '82272703549', 'PNS & IRT'),
(36, '3', '54', '10165036', 'Nailus Sarah', 'Perempuan', 'Desa Pulo Naleueng Kec. Peusangan, Kab. Bireuen, Aceh', 'Mawardi, S.P', 'Hasdiana, S.Pd', '85277996742', 'Wiraswasta & Guru'),
(37, '3', '54', '10165037', 'Nanda Riska', 'Perempuan', 'Desa Cot Rabo Tunong, Kec. Peusangan, Kab. Bireuen, Aceh', 'Iskandar', 'Jummiati, S.Pd', '85296019444', 'Jualan & PNS'),
(38, '3', '54', '10165038', 'Nur Haliza', 'Perempuan', 'Desa Cot Gapu, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Mustafa', 'Dra. Roslali', '81360977941', 'PNS'),
(39, '3', '54', '10165044', 'Raja Farhan', 'Laki-Laki', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Jailani Muhammad', 'Cut Nurlaizar', '81360854875', 'Pensiunan BRI & IRT'),
(40, '3', '54', '10165052', 'Siti Shali Zuana', 'Perempuan', 'Jl. Teungku Teungoh No. 2 Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Supriadi', 'Asrawani Abbas', '81269175563', 'Jualan & Guru SMA'),
(41, '3', '54', '10165055', 'Wildan Mumtaz', 'Laki-Laki', 'Desa Cot keutapang, Kec. Jeumpa, Kab. bireuen, Aceh', 'Basiran, S.Ag', 'Hidayani Safari Zanna', '81375238758', 'Guru SSB Bireuen & IRT'),
(42, '3', '54', '10165057', 'Yonesha Naziha', 'Perempuan', 'Jalan Karang Rejo, Desa Bandar, Kec. Kota Juang, Kab. Bireuen', 'Yusrizal', 'Nora Erlina', '8527553955', 'Wiraswasta & Dagang'),
(43, '3', '54', '10175002', 'Rayhal Reychan', 'Perempuan', 'Pulo Ara, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Asnawi Muhammad', 'Purnama Sari', '85260140686', 'Karyawan Swasta & IRT'),
(44, '3', '54', '10165010', 'Fira Salsabila', 'Perempuan', 'Jl. Kol M. Syah Asyeik No. 80, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Edisyah, S.Pd', 'Khairi', '85372026272', 'Guru & IRT'),
(45, '3', '54', '10165013', 'Ghina Gheffira', 'Perempuan', 'Jl. Tgk. Di Beurawang No. 19 Desa Cot Trieng, Kec. Kuala, Kab. Bireuen, Aceh', 'Mirza Fuady', 'Ritahayati', '811672053', 'Wiraswasta dan PNS kantoran'),
(46, '3', '54', '10165014', 'Hassan Al Muhshi', 'Laki-Laki', 'Jalan Pante Dusun Damai Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Muhammad Al Muttaqin, S.Pd, M.Pd', 'Hasnawati, S.Pd', '85277685050', 'PNS'),
(47, '3', '54', '10165016', 'Intan Syaravina', 'Perempuan', 'Dusun Tgk Cut Ali, Desa Meunasah Timu, Kec. Peusangan, Kab. Bireuen, Aceh', 'Sugimin', 'Ramlah Alatif, S.Pd', '85213903048', 'Sopir & PNS (guru)'),
(48, '3', '54', '10165018', 'Luthfia Hani', 'Perempuan', 'Desa Mns. Tambo, Kec. Peudada, Kab. Bireuen, Aceh', 'Mufizal, SE', 'Enik, AMk', '85373262258', 'PNS'),
(49, '3', '54', '10165022', 'M. Rivanza Aqsal', 'Laki-Laki', 'Desa Meusah Capa, Kec Kota Juang, kab. Bireuen, Aceh', 'M. Ajis Fandila', 'Erlina', '85277117999', 'Wiraswasta & IRT'),
(50, '3', '54', '10165026', 'Maulana Wahri Nauval', 'Laki-Laki', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Ir. Musmulyadi', 'Hafniati, S.Pd', '82367266375', 'Karyawan BRI & PNS'),
(51, '3', '54', '10165029', 'Muhammad Farhan', 'Laki-Laki', 'Desa Gampong Baro, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Suyono', 'Nurhayati', '82361308384', 'Guru'),
(52, '3', '54', '10165040', 'Rafi Ramanda', 'Laki-Laki', 'Desa Geulanggang Gampong, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Helmi Sukran', 'Dra. Ainun Mardhiah', '85296660024', 'PNS'),
(53, '3', '54', '10165042', 'Raini Hasna', 'Laki-Laki', 'Juli Mns Teugoh Km.5, Kec. Juli, Kab, Bireuen, Aceh', 'Zulfikar', 'Yusniati', '85262577351', 'Wiraswasta & Bidan (PNS)'),
(54, '3', '54', '10165045', 'Rayan Maulana', 'Laki-Laki', 'Geulanggang Teugoh, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Nurli Ibrahim', 'Mutiawati', '85277689734', 'Jualan & IRT'),
(55, '3', '54', '10165046', 'Rifki Safir Al Zikran', 'Laki-Laki', 'Jl. Langgar No. 21, Desa Bandar, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Bukhari, SE', 'Nurmalawati, S.Ag', '81360421682', 'PNS (Guru)'),
(56, '3', '54', '10165048', 'Sherina Aditya', 'Perempuan', 'Desa Cot Trieng, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Surwandi', 'Mugi Rahayu', '85262742989', 'Wiraswasta & IRT'),
(57, '3', '54', '10165049', 'Silvia Wanda', 'Perempuan', 'Desa Kommes, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Ridwan', 'Eliana', '82364122020', 'Wiraswasta & IRT'),
(58, '3', '54', '10165059', 'T. Rahmat Miftahuddin', 'Laki-Laki', 'Jl. Bireuen-Takengon Km.6 Desa Juli Mee Teungoh, Kec. Juli, Kab. Bireuen, Aceh', 'T. Marwazy Putra Juli', 'Fauziah Razali', '82368586738', 'PNS (Guru) & IRT'),
(59, '3', '54', '10165062', 'Annisa Maulidia', 'Perempuan', 'Desa Geudong Alue, kec kota Juang, kab. Bireuen, Aceh', 'Anwar', 'Asrita', '81269541300', 'PNS dan Guru'),
(60, '3', '54', '10165065', 'Rahmi Rahmadhani', 'Laki-Laki', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Ridwan', 'Maimunah', '85270419668', 'Wiraswasta & PNS'),
(61, '3', '54', '10175001', 'Ditta Permata Rizalmi', 'Perempuan', 'KM. 40 Desa Negeri Antara, Kec. Pintu Rime Gayo, Kab. Bener Meriah, Aceh', 'Edi Afrizal', 'Sulasmi', '85358626397', 'Wiraswasta & IRT'),
(62, '3', '54', '10175006', 'Syibral Malasyi', 'Laki-Laki', 'Jln. Listrik Bireuen', 'Musrizal ', 'Idaryani', '82360031002', 'Wiraswasta'),
(63, '3', '54', '10175007', 'Muhammad Habban Farisy', 'Laki-Laki', 'Cot Tarom Tunong, Jeumpa Bireuen', 'Jufri', 'Nazar Kusuma', '81360099391', 'Wiraswasta'),
(64, '3', '54', '10175009', 'Hairi Rifki Tirmiara', 'Laki-Laki', 'Cot Keutapang Bireuen', 'Ilyas Putra', 'Hairani', '85277763777', 'Petani'),
(65, '3', '54', '10175012', 'Natasya Wihelsa', 'Perempuan', 'Komplek Lap. Voa Bireuen', 'Asnawi', 'Helmiati', '82362475458', 'Wiraswasta'),
(66, '3', '54', '10175014', 'Ridha Sadiqul Akbar', 'Laki-Laki', 'Geulanggang Gampong', 'Amirudin ', 'Cut Agustina', '81269472200', 'Wiraswasta'),
(67, '3', '54', '10175018', 'Vina Chairina', 'Perempuan', 'Geulanggang Kulam, Kota Juang, Bireuen', 'M. Nasir', 'Fatimah', '85260271117', 'Petani/ Kepala Desa'),
(68, '3', '54', '10175025', 'Syifa Puteri Amanda', 'Perempuan', 'Cot Meurak', 'Asnawir Azhar', 'Endang Fitrianty', '85261321805', 'Wiraswasta'),
(69, '3', '54', '10175028', 'Zahra Radhia', 'Perempuan', 'Mns. Reuleut, Kota Juang, Bireuen', 'Rosmiati', 'Ridwan', '85262939801', 'PNS'),
(70, '3', '54', '10175029', 'Hewitt Lais', 'Laki-Laki', 'Pulo Ara, Geudong Teungah, Bireuen', 'Falines Lais', 'Meynawaty Thomas', '85262471118', 'Pedagang'),
(71, '3', '54', '10175031', 'Annisa Geubrina', 'Perempuan', 'Geulanggang Gampoeng Kota Juang Bireuen', 'Yusmadi, SH', 'Kamariah, SH', '85320044656', 'PNS Hakim'),
(72, '3', '54', '10175034', 'Sultan Azzuri Srinanda', 'Laki-Laki', 'Krueng Juli Timu, Kuala, Bireuen', 'Sri Kumar', 'Afrina', '85297667828', 'Wiraswasta'),
(73, '3', '54', '10175038', 'Rahmad Maulana', 'Laki-Laki', 'Jl. Medan-Banda Aceh, Pulo Lawang, Jeumpa Bireuen', 'Mustafa', 'Azimah', '85358454151', 'Pengemudi'),
(74, '3', '54', '10175039', 'Putri Inayatillah', 'Perempuan', 'Gp. Paseh, Kec. Juli Bireuen', 'Mukhtar, SH', 'Mehran', '81377490891', 'Pensiunan'),
(75, '3', '54', '10175040', 'Ahmad Khalil Athari ', 'Laki-Laki', 'Jl. T. Imum Rakyat No 10B, Komes Bireuen', 'Juliadi', 'Tri Rahmayani', '85206571050', 'Wiraswasta'),
(76, '3', '54', '10175041', 'Natasha Rizqina', 'Perempuan', 'Mns. Dayah Kota Juang Bireuen', 'Ir. Zulkifli', 'Cut Shamira', '85240572678', 'Wiraswasta'),
(77, '3', '54', '10175042', 'Risnizal Syaula ', 'Perempuan', 'Cot Trieng, Kec. Kuala, Kab. Bireuen', 'Nyak Arismawan ', 'Nilawati', '81377299253', 'Pedagang Kelontong'),
(78, '3', '54', '10175043', 'Alya Natasya Riva', 'Perempuan', 'Blang Asan, Matang Glumpang Dua', 'Rizanur', 'Eva Safitri', '85233526789', 'Wartawan'),
(79, '3', '54', '10175044', 'Farhan Al Raschel', 'Laki-Laki', 'Cot Keumude, Peusangan, Bireuen', 'Iskandar, ST', 'Mardhiah, S. ST', '85362313460', 'Wiraswasta'),
(80, '3', '54', '10175045', 'Khalil Munazza Simamora', 'Laki-Laki', 'Geulanggang Gampong, Kota Juang, Bireuen', 'M. Siddiq Simamora', 'Rosmani ', '82378937913', 'Karyawan Swasta'),
(81, '3', '54', '10175048', 'Sultan Azis ', 'Laki-Laki', 'Meunasah Dayah, Bireuen', 'Saiful Amri', 'Evi Naimah', '81361612755', 'Pedagang'),
(82, '3', '54', '10175052', 'Muhammad Haikal Akmal', 'Laki-Laki', 'Meunasah Pulo Peudada, Bireuen', 'Drs. Mukhlis', 'Aklima, A. Md', '85260980577', 'PNS'),
(83, '3', '54', '10175054', 'Adhana Nashia Umaira', 'Perempuan', 'Juli Meunasah Seutuy, Bireuen', 'Rinaldi', 'Yulizar', '81362812888', 'Wiraswasta'),
(84, '3', '54', '10175055', 'Israk Miftahul Fajar', 'Laki-Laki', 'Cot Tarom Tunong Kec. Jeumpa Kab. Bireuen', 'Nazaruddin', 'Agusdiana', '85262650402', 'PNS'),
(85, '3', '54', '10175058', 'Nurul Salsabila', 'Perempuan', 'Meunasah Blang, Bireuen', 'M. Rusli', 'Linda Wati', '85276655440', 'Pedagang'),
(86, '3', '54', '10175059', 'Khairun Nisak', 'Perempuan', 'Abeuk Tingkeum, Dsn. Pante Sukon, Jeumpa Bireuen', 'Suherman', 'Rohana', '81269126689', 'Tukang Batu '),
(87, '3', '54', '10175061', 'Sophia Amelia Putri', 'Perempuan', 'Jl. Tgk Dibale, Desa Cot Trieng, Kec. Kuala, Kab. Bireuen, Aceh', 'Taufik Adam', 'Rince Fitria', '8118197688', 'Karyawan Swasta'),
(88, '3', '54', '10175005', 'Daffa Fawwaaz Ramadhan', 'Laki-Laki', 'Jln. Medan-Banda Aceh, Meunasah Blang, Kota Juang, Bireuen', 'Mahlil', 'Debby Yulita', '85260553537', 'Swasta'),
(89, '3', '54', '10175008', 'Idza Nofica ', 'Perempuan', 'Mns. Blang Bireuen', 'Mukhlis', 'Salmiah', '85260542225', 'Wiraswasta'),
(90, '3', '54', '10175010', 'Abdi Dzil Ikram', 'Laki-Laki', 'Dusun Makmur, Desa Lhok Awe Teungah, Bireuen', 'Munzir Mustafa', 'Sastri Hastuti', '85262104217', 'Wiraswasta'),
(91, '3', '54', '10175011', 'Tina Levia', 'Perempuan', 'Geudong Teungah Bireuen', 'Saifullah, S. Ag', 'Fauzah, AMKL', '8116702245', 'PNS'),
(92, '3', '54', '10175013', 'Nabila Rizki', 'Perempuan', 'Juli Seutuy, Dusun Jeumpa Puteh Bireuen', 'Bakhtiar ', 'Mursyidah', '81360058432', 'PNS'),
(93, '3', '54', '10175015', 'Arsyiva Putri Azhari', 'Perempuan', 'Cot Keutapang Bireuen', 'Azhari Nurdin', 'Dewi Lazuwarni', '85261837287', 'Wiraswasta'),
(94, '3', '54', '10175016', 'Lakaeisya Sy Lathifah', 'Perempuan', 'Geulanggang Gampong Kota Juang Bireuen', 'Sofyannur', 'Yenni Dahlia', '8116706127', 'PNS'),
(95, '3', '54', '10175017', 'Sumaiya Shofiya', 'Perempuan', 'Meunasah Reuleut, Bireuen', 'Munawar', 'Yulia Rahmawati', '85260531871', 'POLRI'),
(96, '3', '54', '10175019', 'Aqil Munazza', 'Laki-Laki', 'Jln. Telkom No. 68 B, Pulo Ara, Kota Juang, Bireuen', 'Alm. Maimun, BSC', 'Ratna, S.Pd', '85262655563', 'tidak ada data'),
(97, '3', '54', '10175020', 'Arifurrahman', 'Laki-Laki', 'Geudong-geudong, Kec. Kota Juang, Kab. Bireuen', 'Fakhrizal.B, S. Pd', 'Miranda', '85359824466', 'PNS'),
(98, '3', '54', '10175021', 'Asyura Miranda', 'Perempuan', 'Cot Tarom Tunong, Bireuen', 'Muhammadar', 'Faridah', '81310702476', 'Wiraswasta'),
(99, '3', '54', '10175023', 'Fania Farah Sabila', 'Perempuan', 'Jln. Bakti No. 44, Bireuen', 'Adnan', 'Hafsah', '85260636528', 'Wiraswasta'),
(100, '3', '54', '10175024', 'Sitty Zahwa Triyusa', 'Perempuan', 'Geudong-geudong, Kec. Kota Juang, Kab. Bireuen', 'M. Yunus. B', 'Salmawati', '85262354045', 'PNS'),
(101, '3', '54', '10175026', 'Adam Rany Salabi ', 'Laki-Laki', 'Cureh Barat, Geulanggang Gampong Bireuen', 'Muntasir', 'Faridah Noor Salabi', '81377257171', 'Guru'),
(102, '3', '54', '10175027', 'Farras Althaf Nibras', 'Perempuan', 'Jln. Cut Meutia, No. 635, Bandar Bireuen, Kota Juang Bireuen', 'Eka Saputra', 'Lusiana', '81360000998', 'Wiraswasta'),
(103, '3', '54', '10175030', 'Aufa Rizqia Haz', 'Perempuan', 'Desa Blang Dalam, Kec. Jeumpa, Kab. Bireuen', 'Hamdani. M, S.Pd', 'Azwarni, S.Pd', '81360089078', 'PNS'),
(104, '3', '54', '10175032', 'Nadya Ega Salsabila', 'Perempuan', 'Geulanggang Baro, Kota Juang Bireuen', 'Alie Basyah', 'Hayaton Wardani', '82304613555', 'PNS'),
(105, '3', '54', '10175035', 'Trisya Darsianggi', 'Perempuan', 'Geulanggang Teungah, Kota Juang, Bireuen', 'Darmansyah', 'Nursyamsi, S.Pd', '85260050794', 'Wiraswasta'),
(106, '3', '54', '10175037', 'M. Iqbal ', 'Laki-Laki', 'Cot Geulumpang, Kec. Kuala, Bireuen', 'Ramli', 'Mawardiati', '8126353834', 'Wiraswasta'),
(107, '3', '54', '10175046', 'Hananda Fairezi', 'Laki-Laki', 'Kommes Meunasah Capa Bireuen', 'Faisal', 'Hasmawati', '85260636496', 'Guru'),
(108, '3', '54', '10175047', 'Nabila Amalia', 'Perempuan', 'Mns. Blang, Bireuen', 'M. Daud, S.Ag', 'Irwati, SE', '81360587207', 'PNS'),
(109, '3', '54', '10175049', 'Aufa Rizky Zubair', 'Laki-Laki', 'Geulanggang Gampong, Bireuen', 'M. Zubir', 'Nurliawati', '85260498674', 'PNS'),
(110, '3', '54', '10175050', 'Maghfirah. ZA.', 'Perempuan', 'Juli Km. 7 Blang Keutumba, Bireuen', 'Zainal Abidin', 'Nurlaili', '8126969070', 'PNS'),
(111, '3', '54', '10175053', 'Asyraf Aufa', 'Laki-Laki', 'Gampoeng Baro, Kota Juang Bireuen', 'Broto Sekar Negoro ', 'Asma Wardah ', '85296960265', 'Wiraswasta'),
(112, '3', '54', '10175056', 'Haura Amanatillah', 'Laki-Laki', 'Meunasah Capa', 'Haji Mukhlis', 'Tati Marlina, S. Si', '81360393932', 'Wiraswasta'),
(113, '3', '54', '10175057', 'Hilmiy Daffa Hibatullah ', 'Laki-Laki', 'Geudong Alue Bireuen', 'Rizal Mahfud ', 'Ika Utami Arhayanti', '85260100387', 'Usaha Dagang'),
(114, '3', '54', '10175060', 'Firas Al-Faiz', 'Laki-Laki', 'Cot Gapu Bireuen', 'Zulkarnaini Hasan', 'Cut Meutia Rahmayati', '8126579750', 'Karyawan BRI'),
(115, '3', '54', '10175062', 'Muhammad Fariz Zanetti', 'Laki-Laki', 'Jl. Listrik No.5, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Faisal', 'Rina', '82363270460', 'Wiraswasta'),
(116, '3', '2', '10185003', 'ABDUL FATAH', 'Laki-Laki', 'DESA JULI SEUTUY', 'MAHMUD USMAN', 'SITTY AISYAH', '81361268037', 'WIRASWASTA'),
(117, '3', '2', '10185004', 'ALYSSA NOVRANDA', 'Perempuan', 'PAYA CUT', 'DADANG S', 'CUT DAHLIANUR', '8113279041', 'POLRI'),
(118, '3', '2', '10185008', 'GAZZA GHAZALI', 'Laki-Laki', 'DESA COT TRIENG', 'MIRZA FUADY, ST', 'RITAHAYATI', '8116707375', 'WIRASWASTA'),
(119, '3', '2', '10185011', 'SITI NYAK NEHA', 'Perempuan', 'COT KEUTAPANG', 'KHAIRUN EDON TANI SITORUS', 'NURFATHIAH', '82274895390', 'TANI'),
(120, '3', '2', '10185012', 'KHAIRA RISKA', 'Perempuan', 'ABEUK TINGKEUM', 'MAIMUN ZAINUDDIN', 'NURAINI YUSUF', '85270435031', 'PETANI'),
(121, '3', '2', '10185013', 'ANNISATUR RAIHAN', 'Perempuan', 'DESA COT BADA, KEC. JEUMPA', 'H. BAKHTIAR, S.Pd', 'HJ. HASTATI', '81360255850', 'GURU'),
(122, '3', '2', '10185022', 'TURHAMUN TURFIZAL', 'Laki-Laki', 'DUSUN SELATAN', 'TURFIZAL SYAFARI', 'FAUZIAH', '82168682424', 'WIRASWASTA'),
(123, '3', '2', '10185025', 'SULTAN AULYA', 'Laki-Laki', 'COT KEUTAPANG', 'M.RIZAL', 'SUKMA WATI', '81362622260', 'WIRASWASTA'),
(124, '3', '2', '10185026', 'LATIVA ZUHRA', 'Perempuan', 'DUSUN TENGAH, COT GAPU', 'M.NATSIR, S.Ag', 'BET LINA, SE', '85262674272', 'PNS'),
(125, '3', '2', '10185027', 'CHAIRUN NISA', 'Perempuan', 'BIREUEN, MEUNASAH CAPA', 'RIDWAN HASAN', 'STARIANA', '81260774679', 'WIRASWASTA'),
(126, '3', '2', '10185029', 'LUDFIAN ADRIANSYAH', 'Laki-Laki', 'JULI COT MEURAK BIREUEN', 'ALM. M. ADNAR', 'RIANA MARIA', '82366773813', 'JUALAN'),
(127, '3', '2', '10185030', 'MUHAMMAD KHALIQ ALFAROZI', 'Laki-Laki', 'DESA. COT TAROM TUNONG', 'FAZIL', 'JUARNI', '85260261815', 'WIRASWASTA'),
(128, '3', '2', '10185031', 'XAVIN ADDIS MUSBAR', 'Laki-Laki', 'DESA COT KEUTAPANG, BIREUEN', 'ILDANI MUSBAR ILYAS (ALMARHUM)', 'MILA SUSANTI', '81269668169', 'PNS'),
(129, '3', '2', '10185033', 'CARISSA', 'Perempuan', 'MEUNASAH BLANG, BIREUEN', 'FAUZAN', 'SUSI ANGGRIANI', '811674064', 'WIRASWASTA'),
(130, '3', '2', '10185034', 'EDWARD HIDAYAT', 'Laki-Laki', 'JL. RAMAI NO 50', 'EDY HIDAYAT', 'DEWI', '81372407532', 'WIRASWASTA'),
(131, '3', '2', '10185037', 'NINDA MERSA LINA', 'Perempuan', 'BTN KUPULA INDAH', 'SAIFUL AZHAR', 'FITRIANA', '81361373091', 'WIRASWASTA'),
(132, '3', '2', '10185038', 'FARIDH', 'Laki-Laki', 'JULI SEUTUY KM.2', 'ABDULLAH, S.Pd', 'KATIJAH, S.Pd', '85260342585', 'PNS'),
(133, '3', '2', '10185040', 'FAHRAYZI DARSIANDI', 'Laki-Laki', 'GEULANGGANG TEUNGAH', 'DARMANSYAH', 'NURSYAMSI', '85361199077', 'WIRASWASTA'),
(134, '3', '2', '10185041', 'DINDA BILQIST ZULIANSYAH', 'Perempuan', 'JLN TGK DOMAJID NO 15, BALEE ARUN, MEUNASAH BLANG', 'WATIM', 'DARMAYANTI WULANDARI', '81290063205', 'WIRASWASTA'),
(135, '3', '2', '10185042', 'ADILLA ZAKIAH', 'Perempuan', 'JLN GAYO JULI KMS JULI, MEUNASAH TEUNGOH', 'ZULFIKAR', 'YUSNIATI', '85262597235', 'WIRASWASTA'),
(136, '3', '2', '10185044', 'SAFRIZAL AL-FADHIL', 'Perempuan', 'NICAH', 'AURIA H. MURDANI', 'SUTIANI', '85361917009', 'DAGANG'),
(137, '3', '2', '10185045', 'RIFKA NABILA', 'Perempuan', 'DESA GEULANGGANG KULAM', 'HAFIZ AFRIZAL', 'ROHANA', '82363192020', 'BURUH'),
(138, '3', '2', '10185046', 'FARAH DIBA', 'Perempuan', 'LHOK AWE TEUNGEUH DUSUN MULIA', 'MUKHTAR', 'RAHMAWATI', '82366961526', 'PEGAWAI SWASTA'),
(139, '3', '1', '10185001', 'M. AKMAL', 'Laki-Laki', 'JULI MEUNASAH TEUNGOH', 'ISKANDAR', 'YUNIAR WATI', '85277898610', 'SOPIR'),
(140, '3', '1', '10185002', 'HARIS PUTRA BARONA', 'Laki-Laki', 'PANTE PISANG', 'SURYADI H.HASAN', 'MAISARAH', '85211013212', 'WIRASWASTA'),
(141, '3', '1', '10185005', 'HAFIFATUNNUR', 'Perempuan', 'PEUDADA, BIREUEN', 'MUHAMMAD NUR', 'CHUZAIMAH', '85261454398', 'PNS'),
(142, '3', '1', '10185006', 'NATASYA AULIA PUTRI', 'Perempuan', 'MEUNASAH DAYAH, MATANGGLUMPANG DUA', 'M. MUSHAUWIR', 'JUMIATI', '81360142812', 'PNS'),
(143, '3', '1', '10185007', 'SARAH NADIA', 'Perempuan', 'JL. PESANTREN DARUL ISTIQAMAH LR. BAKTI', 'H. NASIR TAHER', 'HJ. MARHAMAH', '85260038716', 'WIRASWASTA'),
(144, '3', '1', '10185009', 'OKTADUTA MUHAMMAD', 'Laki-Laki', 'JLN. BANDA ACEH-MEDAN KM.218\n\nCOT GAPU, BIREUEN', 'dr. MUHAMMAD, Sp.M', 'SARI FITRI', '82160065555', 'DOKTER'),
(145, '3', '1', '10185010', 'MAYA SIRURRIFKA', 'Perempuan', 'COT KEUTAPANG', 'AMIRUDDIN SE.M.SI.AK', 'ADNEN NURDIN', '8116701716', 'PNS'),
(146, '3', '1', '10185014', 'DIAN NUR FATHINAH', 'Perempuan', 'DESA MEUNASAH CAPA', 'TRIWIYANTO', 'INA SUSANNA', '81360652242', 'PNS'),
(147, '3', '1', '10185015', 'SITI HUMAIRA', 'Perempuan', 'JL. MESJID NO 2. DESA GEUDONG-GEUDONG', 'ALM ZULKARNEN ABBAS', 'MURNIATI', '85277361773', 'WIRASWASTA'),
(148, '3', '1', '10185016', 'MAYA NUR HIKMAH ADONAEN', '', 'MATANGGLUMPANG DUA, MEUNASAH TIMU', 'AGUNG SUHARTONO GANA', 'HAFNI ZAHARA', '81310060444', 'WIRASWASTA'),
(149, '3', '1', '10185017', 'FARAH DEVA RACHMAN', 'Perempuan', 'DESA MEUNASAH TIMU', 'JUNAIDI AR (ALM)', 'NURMALIS', '81370877022', 'tidak ada data'),
(150, '3', '1', '10185018', 'NAZIRA', 'Perempuan', 'MEUNASAH ALUE', 'SARDANI', 'KHAIRIAH', '85361529772', 'PNS'),
(151, '3', '1', '10185019', 'RIZKA MAULIZA', 'Laki-Laki', 'BLANG DALAM', 'SARDANI', 'MURNIATI', '85270357755', 'GURU'),
(152, '3', '1', '10185020', 'WILDA', 'Perempuan', 'DUSUN TGK MUDA SANDANG DESA COT UNOE KEC. KUALA KAB. BIREUEN', 'ARMIADI', 'AGUSTIANUR', '81360596596', 'WIRASWASTA'),
(153, '3', '1', '10185021', 'FINKANAIA WAHAB', 'Perempuan', 'JL.T.A. HAMID NO.7 KOMMES-MEUNASAH CAPA', 'ABDUL WAHAB DAULAY', 'SRI HERLINA WATI', '819890281', 'WIRASWASTA'),
(154, '3', '1', '10185023', 'ALDYA HUMAIRA', 'Perempuan', 'JL. TGK DIPULO. NO 14. PULO KITON', 'JANUAR ABRIAN', 'FENNY WAHYUNI', '82367287892', 'DAGANG'),
(155, '3', '1', '10185024', 'MOUNTTIE SYURGA', 'Perempuan', 'DESA MEUNASAH DAYAH- BIREUEN', 'IR.JAFAR', 'ELIANA', '81360039659', 'PNS'),
(156, '3', '1', '10185028', 'ADRI SEGARA', 'Laki-Laki', 'ASMIL KODIM 0111/BIREUEN', 'JAILANI', 'NURLINA', '85270829568', 'TNI-AD'),
(157, '3', '1', '10185032', 'M. SULTHAN MUNA AKBARSYAH', 'Laki-Laki', 'DESA GELANGGANG GAMPONG', 'H. NASRULLAH', 'MULIYANI', '81361794888', 'PNS'),
(158, '3', '79', '10185035', 'DIVA MAULANA. Z', 'Laki-Laki', 'MEUNASAH BLANG', 'ZAMRI', 'ANISAH', '81360274247', 'PNS'),
(159, '3', '1', '10185036', 'RAHMAT AZRIMA', 'Laki-Laki', 'JALAN BIREUEN- TAKENGON KM.2', 'AZHARI (ALM)', 'FATIMAH', '85260051036', 'PNS'),
(160, '3', '1', '10185039', 'MUHAMMAD FARHAN', 'Laki-Laki', 'UJONG BLANG BIREUEN', 'EDIHAR', 'ROSMILA', '81362680422', 'WIRASWASTA'),
(161, '3', '1', '10185043', 'INDAH MARISA', 'Laki-Laki', 'JULI TAMBO TANJONG', 'MULYADI', 'ELVIDA', '81269699007', 'BUMN'),
(162, '3', '1', '10195001', 'CECILIA OTTO WONGSODINATA', 'Perempuan', 'Jl. Langgar No. 2/4 Kec. Kota Juang Kab. Bireuen', 'Alexandra', 'Ridza Jusri', '8116123238', 'Wiraswasta'),
(163, '2', '53', '10164002', 'Adila Mizana', 'Perempuan', 'Desa Mns. Blang Bireuen, Dusun Blang Raya. Kec. Kots Juang', 'Sulaiman', 'Masnidar', '85262912468', 'Wiraswasta'),
(164, '2', '53', '10164003', 'Agil Fathur Rachman', 'Laki-Laki', 'Asrama Kodim 0111 bireue blang bladeh', 'Vari Yanto', 'Rena Rozana', '82166796960', 'TNI'),
(165, '2', '53', '10164004', 'Agus Triana Putri', 'Perempuan', 'Dusun Geudong Sagoe, Desa Geudong, Kota Juang, Bireuen', 'Surya Dirja', 'Nurhayati', '8126992964', 'Wiraswasta'),
(166, '2', '53', '10164007', 'Alya Nabila', 'Perempuan', 'Jl.Utama, Desa Pulo Ara, Lr. Jeumpa', 'Haji Zulkifli', 'Hajjah Suhartini', '85358229386', 'Wiraswasta'),
(167, '2', '53', '10164010', 'Auva Rizkina', 'Perempuan', 'Dusun nek Paya, Desa Cot Gadong, Kec. Jeumpa, Kab. Bireuen', 'Tgk. Iskandar', 'Karmila', '85260414426', 'Wiraswasta'),
(168, '2', '53', '10164013', 'Edric Felicio', 'Laki-Laki', 'Lr. Dewi, No.188, Desa Pulo Ara geudogng tengoh, Kec. Kota Juang, Kab. Bireuen', 'Edi Yung', 'Susita', '82273130111', 'Wiraswasta'),
(169, '2', '53', '10164014', 'Em Brypo Baginda', 'Laki-Laki', 'Desa Juli cot meurak, Kec. Juli, Kab. Bireuen', 'Muhammad Hidayat', 'Nurhayati', '8126960732', 'Pns'),
(170, '2', '53', '10164020', 'Intan Zakya', 'Perempuan', 'Dusun Pulo Sukon, Desa Abeuk Tingkeum, Kec. Jeumpa. Kb. Bireuen', 'Ibrahim', 'Kemalawati', '82367955808', 'Pns'),
(171, '2', '53', '10164021', 'Kashrina Masyid Azka', 'Perempuan', 'Jl. Medan-B.Aceh, Dusun Selatan, No.2 Desa Cot Gapu', 'Iskandar Abdul karim (Alm)', 'Hayatun', '81360289834', 'PNS'),
(172, '2', '53', '10164023', 'Khairuna Zikri', 'Laki-Laki', 'Bireue. Meunasah Dayah, Kota Juang', 'Usman', 'Khuzainah', '81360092293', 'PNS'),
(173, '2', '53', '10164028', 'Muhammad Firdausi', 'Laki-Laki', 'Desa Cot Keutapag, Kec. Jeumpa. Kab.Bireuen', 'Ismail', 'Pertiwi', '85277254465', 'Karyawan Swasta'),
(174, '2', '53', '10164030', 'Muhammad Zaki', 'Laki-Laki', 'Dusun Sayed, Desa Cot Tarom Baroh, Kec. Jeumpa, Kab.Bireuen', 'Abdullah', 'Suyatmi', '85359742609', 'Swasta'),
(175, '2', '53', '10164031', 'Nabiel Azzam', 'Perempuan', 'Keude Matang Glumpang dua, Kec. Peusangan, kab. bireuen', 'Dr. Yurizal, M.Kes', 'Idialita, S.Pd', '8126966538', 'PNS'),
(176, '2', '53', '10164033', 'Nazhilla Sabrina', 'Perempuan', 'B lang Bladeh, Kec, Jeumpa, Kab.Bireuen', 'Azmier', 'Maryani', '85277575274', 'PNS'),
(177, '2', '53', '10164034', 'Novi Rahmadani', 'Perempuan', 'Jl. Kol. Husen Yusuf, No.3 Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Darkasyi', 'Nuraini', '81360022111', 'PNS'),
(178, '2', '53', '10164035', 'Rania Abharina', 'Perempuan', 'Kp. Baru, Kota Juang, Kab. Bireuen', '(Alm)Saifuddin Gani, SH', 'Yenni Solfiani', '81370001556', 'tidak ada data'),
(179, '2', '53', '10164039', 'Tasya Nurahmah', 'Perempuan', 'desa Krueng Baroe Babah Krueng, Kec. Peusangan,Kab. Bireuen', 'baharuddin Syah', 'Rahmayani', '81265461449', 'Wiraswasta'),
(180, '2', '53', '10164043', 'Sartika Aprilia', 'Perempuan', 'BTN Keupula Indah, Geulangang gampong  Kec. Kota Juang  Kab.  Bireuen', 'Ismail', 'Sakdiah', '85277911600', 'TNI-AD'),
(181, '2', '53', '10174001', 'Dina Maghfirah', 'Perempuan', 'Jl. Medan-Banda Aceh  Mns Capa.  Kec. KLota Juang Kab. Bireuen', 'Bakhtiar', 'Hernawati', '81360373176', 'Jualan'),
(182, '2', '53', '10174003', 'Azizurrahman', 'Laki-Laki', 'Desa Blang Cot Tunong, Kec. Jeumpa, Kab. Bireuen, Aceh', 'Ansari Puteh, ST.M.Si', 'Azizah', '8126907393', 'Wiraswasta'),
(183, '2', '25', '10184002', 'Suratman', 'Laki-Laki', 'Asrama Kodim 0111 Bireuen, Desa Blang Bladeh, Kec. Jeumpa, Kab. Bireuen', 'afrijon', 'Artati', '82166796960', 'Wiraswasta'),
(184, '2', '25', '10184007', 'FERIZAL', 'Laki-Laki', 'Bireuen Meunasah Dayah', 'Efendi Sulaiman', 'Rosdiana A.Thaleb', '81269442999', 'Sopir'),
(185, '2', '25', '10184048', 'ALLYA', 'Perempuan', 'Desa Meuse, Kec.Kuta Blang, Kab.Bireuen, Aceh', 'JUFRI ABD', 'NURMADIAH', '82369212778', 'Wiraswasta'),
(186, '2', '53', '10164001', 'Abizar Al Aqsha', 'Laki-Laki', 'Jl. Gayo, Lr. Tgk.Malem, No.007, Komes, Kab. Bireuen', 'Edwar Jufri', 'Aswina', '811676645', 'PNS'),
(187, '2', '53', '10164005', 'Ahya Jazira', 'Perempuan', 'Meunasah meusjid, Kec.Peudada, Kab.Bireuen', 'Oya Muhammad Akar, S.Ag', 'Imalia, S.Ag', '82366271785', 'Wiraswasta'),
(188, '2', '53', '10164006', 'Alya Diva Namaira', 'Perempuan', 'Desa Seuneubok Gunci, Kec. Juli', 'Iskandar', 'Yuslina,S. Pd', '85260511970', 'Wiraswasta'),
(189, '2', '53', '10164011', 'Azkya Kamila Maharani', 'Perempuan', 'Jl.Petua Banta, No.7, Meunasah Blang, Bireuen', 'Dr.H.Athaillah Abdul Latief', 'Nur Saadah,S.Psi', '8122611980', 'PNS'),
(190, '2', '53', '10164015', 'Firda Amelia Salsabilla', 'Laki-Laki', 'Geulanggang Teungoh, Kec.Kota Juang, Kab.Bireuen', 'Safwan', 'Vina Rhimandiani H', '85360086786', 'PNS'),
(191, '2', '53', '10164016', 'Ghaffari Orida Putra', 'Perempuan', 'Jl.Medan-B.Aceh, No.7, Desa Cot Tarom Tunong, Kec. Jeumpa, Kab.Bireuen', 'Samanrida', 'Fatriawati', '85328686632', 'Wiraswasta'),
(192, '2', '53', '10164017', 'Haura Azelia', 'Perempuan', 'Dusun Bahagia, desa Lhok Awe-Awe, Kec. Kuala, Kab. Bireuen', 'Munizar, SE', 'Siti Junaida, A.Md', '82165514181', 'PNS'),
(193, '2', '53', '10164019', 'Ifa Ghinaya', 'Perempuan', 'Lhok Awe Tengoh, Kec.Juang. Kab.bireuen', 'M. Nasir', 'Nurhusna', '85260201033', 'PNS'),
(194, '2', '53', '10164022', 'Keyzia Vania Elsya', 'Perempuan', 'Jl.Medan-B.Aceh, Matang, Kec.Peusangan. Kab.Bireuen', 'Helmi Abdullah', 'Nina Zurita', '85260545633', 'tidak ada data'),
(195, '2', '53', '10164024', 'M. Reza Mahendra', 'Laki-Laki', 'Lhok Awe awe, Kec. Kuala, Kab.Bireuen, Aceh', 'Suryadi', 'Nilawati', '85276657624', 'Wiraswasta'),
(196, '2', '53', '10164025', 'M.Hadi Mahiru Zihni', 'Laki-Laki', 'Meunasah Tunong, Kec.Peudada, Kab.Bireuen', 'M.Fadhil, S.Ag', 'Maulidiana', '85277745044', 'PNS'),
(197, '2', '53', '10164026', 'Mahdalena', 'Perempuan', 'Bireuen, Meunasah Blang. Kec. Kota Juang', 'Mukhlis', 'Salmiah', '85260542225', 'Wiraswasta'),
(198, '2', '53', '10164027', 'Mellisa', 'Perempuan', 'Jl. Andalas, No. 43/73, Jl. panglima Polem', 'Lulimin', 'Lina', '81377471817', 'Wiraswasta'),
(199, '2', '53', '10164032', 'Nabila Rifqi', 'Perempuan', 'Desa cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Ismail Ali', 'Hafritawati', '85277081528', 'Wiraswasta'),
(200, '2', '53', '10164036', 'Rio Andika Zein', 'Laki-Laki', 'Juli Cot Meurak, Kab. Bireuen', 'Fauzi Zein', 'Risnatalia Siregar', '81360271799', 'Wiraswasta'),
(201, '2', '53', '10164038', 'Syifa Syahirah', 'Perempuan', 'Jl.Tgk Habib Puteh No.14, gampong Baro, Kec. Kota Juang, Kab.Bireuen', 'Drs.Ridwan', 'Elizar', '811685800', 'PNS'),
(202, '2', '53', '10164040', 'Yobel Precious Fusin', 'Laki-Laki', 'Jl. Andalas No.8 Bireuen, Kota Juang', 'Willy Fusin', 'Fitty Kusuma', '85371602777', 'Wiraswasta'),
(203, '2', '53', '10164044', 'Putri Ullir Rahmah', 'Perempuan', 'Cot Keutapang,  Kec. Jempa  Kab. Bireuen', 'Efensi M. Yakob', 'Fajriah', '85206477234', 'Wiraswasta'),
(204, '2', '53', '10174062', 'T. Arif Rifqi', 'Laki-Laki', 'Meunasah Reulet. Kec. Kota Juang. Kab. Bireuen', 'T. Isrin', 'Ivayanita', '85274665599', 'PNS'),
(205, '2', '53', '10174065', 'Anas Arrazi', 'Laki-Laki', 'Desa Glg. Gampong, Kec. Kota Juang, Kab. Bireuen. Aceh', 'Saifullah, MC,S.Ag, M.Pd', 'Fauzah, Amkl', '81269907915', 'PNS'),
(206, '2', '24', '10184001', 'M. Dafa Raihansyah', 'Laki-Laki', 'Komp. PU, Desa Geulumpang Payong, Kec. Jeumpa, Kab. Bireuen', 'Taufik', 'Farrah Dina', '85275333164', 'PNS'),
(207, '2', '24', '10184044', 'Najwa Najmina', 'Perempuan', 'Jalan Habib Puteh No 33, Gampong Baroe, Kota Juang. Bireuen', 'Bukhari', 'Fauziah', '85261319026', 'PNS'),
(208, '2', '24', '10184049', 'Teuku Fatih Inayatsyah', 'Laki-Laki', 'Komplek BTN Kupula Indah, Lrg. Pertama No. 4 B, Desa Glg.Gampong Kec.Kota Juang', 'Teuku Nagoursyah, SH., M. Si', 'Dr. Nyak Hayati, M. M. Ked. PD., Sp', '85260782003', 'PNS'),
(209, '2', '53', '10174006', 'M. ARAYKI', 'Laki-Laki', 'Asrama Kodim. Desa Blang Bladeh. Kec. Jeumpa. Kab. Bireuen', 'Jamaluddin', 'Haslinda, A. Mk', '85206393155', 'TNI'),
(210, '2', '53', '10174007', 'NYAK QURRATU AINI', 'Perempuan', 'Jln. Medan - B. Aceh, Mns. Blang No. 58B. Desa Meunasah Blang. Kelurahan Blang Raya. Kec.Kota JUang. Kab. Bireuen', 'Dr. Sayuti, ST., M.Sc', 'dr. Malahayati, Sp.KK', '85270672369', 'PNS'),
(211, '2', '53', '10174010', 'MICHAEL JONATHAN', 'Laki-Laki', 'Jln. Al Muslim. Desa Keude Matang Glumpang Dua. Kec Peusangan. Kab. Bireuen', 'Novadi', 'Yennywaty', '85210102030', 'Pedagang'),
(212, '2', '53', '10174014', 'YASMIN YUMNA', 'Perempuan', 'Jln. T. Malem No. 6 Kommes. Desa Bireuen Mns. Capa. Kec. Kota Juang. Kab. Bireuen', 'Zahrul Fuadi', 'Khairina', '8126553461', 'PNS'),
(213, '2', '53', '10174015', 'STELLA NATHANIA', 'Perempuan', 'Jln. Panglima Polem. No. 28. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Sukimin', 'Lie Aie', '85276625518', 'Pedagang'),
(214, '2', '53', '10174017', 'A. HARIS HAKIM', 'Laki-Laki', 'Jln. Inpres 1 Dusun Pusu Lawah. Desa geudong Geudong. Kec Kota Juang. Kab. Bireuen', 'Fakhrizal B, S.Pd', 'Miranda', '85359824466', 'Pengawas Sekolah Dinas P&K Prov. Aceh'),
(215, '2', '53', '10174018', 'MUHAMMAD AULIA', 'Laki-Laki', 'Dusun Teladan. Desa Cot Keutapang. Kec. Jeumpa. Kab. Bireuen', 'Masriadi', 'Zulfridiana, S. Pd', '85277239970', 'Wiraswasta'),
(216, '2', '53', '10174021', 'THARIQ AL WAFI', 'Laki-Laki', 'Jl. Pante Dusun Damai. Desa PuloKiton. Kec Kota Juang. Kab. Bireuen', 'M. Al Muttaqin, S.Pd., M.Pd', 'Hasnawati, S.Pd', '85260509595', 'PNS'),
(217, '2', '53', '10174023', 'SAID NAUFAL RIZA', 'Laki-Laki', 'Jl. Tgk. Muda Lasin No. 7. Desa Meunasah Blang. Kec Kota Juang. Kab. Bireuen', 'Said Qadri', 'Noviza', '8116803888', 'PNS'),
(218, '2', '53', '10174024', 'MUHAMMAD HANIF', 'Laki-Laki', 'Jln. Tgk. Dipulo No. 20. Desa Pulo Kiton. Kec. Kota Juang. Kec. Bireuen', 'H. Rizal, SE', 'Hj. Zulfah', '85294169065', 'Wiraswasta'),
(219, '2', '53', '10174025', 'NAIFA SHABIRA', 'Perempuan', 'Jln. Cot Meurak 2 No. 07. Desa Juli Cot Meurak. Kec. Juli. Kab Bireuen', 'Mubarik Juli Saputra, ST., MT', 'Inda Sri Mulyani, ST', '811674329', 'PNS'),
(220, '2', '53', '10174026', 'DIEFA ADILLA HAZ', 'Perempuan', 'Desa Blang Dalam. Kec. Jeumpa. Kab. Bireuen', 'Hamdani M', 'Azwarni', '81360089078', 'PNS'),
(221, '2', '53', '10174028', 'SIVA NARISKA', 'Perempuan', 'Meunasah Blang. Kec. Kota Juang. Kab. Bireuen', 'Saiful Hasballah', 'Dewi Shinta', '811681940', 'Wiraswasta'),
(222, '2', '53', '10174031', 'RIFA FAUHAN', 'Perempuan', 'Dusun Lampoh Dayah. Desa Juli Meunasah Tambo. Kec. Juli. Kab. Bireuen', 'Drs. Marzuki (Alm)', 'Fahmina, S. Pd', '85277403891', 'Guru'),
(223, '2', '53', '10174035', 'THANIA UMIRA', 'Perempuan', 'Jln. Medan-B. Aceh No.1. Desa Blang Cot Baroh. Kec Jeumpa. Kab. Bireuen', 'Chairul Bahri', 'Yulia Fonna', '81360070805', 'PNS'),
(224, '2', '53', '10174038', 'RAHEL ADELIA SETIAWAN', 'Perempuan', 'ASPOL Bireuen. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Bambang Setiawan', 'Feranida', '85260038779', 'POLRI'),
(225, '2', '53', '10174046', 'LUQMANUL HAKIM', 'Laki-Laki', 'Jl. Ayah Thaleb 70. Meunasah Dayah. Kec. Kota JUang. Kab. Bireuen', 'Ir. Zulkifli Adam', 'Cut Shamira', '85240572678', 'Wiraswasta'),
(226, '2', '53', '10174047', 'M. ANGGA PRATAMA', 'Laki-Laki', 'Asrama Polisi. Desa Bandar. Kec. Kota Juang. Kab. Bireuen', 'M. Aris Arianto (Alm)', 'Erfi Julita', '82362470568', 'Pegawai Honorer BPM'),
(227, '2', '53', '10174048', 'RISNA AMANDA', 'Perempuan', 'Meunasah TGK. Digadong. Kec Kota Juang. Kab. Bireuen', 'Junaidi', 'Noni Suminarti', '82368087922', 'Karyawan Swasta'),
(228, '2', '53', '10174049', 'NAVIFA FACHRI NASUTION', 'Perempuan', 'Jl. Jangka. Meunasah Timu. Kec. Matangglumpang Dua. Kab. Bireuen', 'dr. Muhammad Sayuti, Sp.B(K) BD', 'dr. Eva Susanti', '81260162744', 'PNS'),
(229, '2', '53', '10174050', 'NASYA DWI LESTARI', 'Perempuan', 'Jln. Medan - B. Aceh. Kr. Panjo. Kec Kuta Blang. Kab. Bireuen', 'Ridwan', 'Kartika', '85277419851', 'Wiraswasta'),
(230, '2', '53', '10174053', 'TAMLICHA', 'Laki-Laki', 'Gampong Kuala Jeumpa. Kec. Jeumpa. Kab. Bireuen', 'Maksal Mina', 'Dahlia', '81281416635', 'ASN'),
(231, '2', '53', '10174054', 'DWI SALSABILLA', 'Perempuan', 'Desa Meunasah Blang. Kec. Kota Juang. Kab. Bireuen', 'Isra Muddin', 'Agustina', '81370749639', 'Pedagang Ikan'),
(232, '2', '53', '10174055', 'ZIAN UKMUL HAFIDH', 'Laki-Laki', 'Jln. T. Bil Huda. Dusun Bahagia. Desa Lhok Awe Awe. Kec. Kuala. Kab. Bireuen', 'Taufik', 'Jumpa Wati', '82361078295', 'Wiraswasta'),
(233, '2', '53', '10174056', 'NAHWA AL ISLAMI AL HAQ', 'Perempuan', 'Lr. Amal. Dusun Makmur. Desa Gp. Baro. Kec. Kota Juang. Kab. Makmur', 'Didik Novianto', 'Muntaqiah', '82360131178', 'Pedagang'),
(234, '2', '53', '10174057', 'NASYWAN', 'Laki-Laki', 'Desa Juli Cot Meurak. Kec. Juli. Kab Bireuen', 'Marzuki', 'Dara Meutia, S.Sos', '8126955201', 'POLRI'),
(235, '2', '53', '10174063', 'CHILY MELINDA', 'Perempuan', 'Jln. Ramai No. 159. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Fajar Halim', 'Lie Mie Lan', '85277892450', 'Wiraswasta'),
(236, '2', '53', '10174066', 'ZAHRINA AMALIA', 'Perempuan', 'Jln. Letkol M.Syeh Asyiek, No.09, Desa Karang Rejo, Kec. Kota Juang, Kab, Bireuen, Aceh', 'Erwis, Aptnh', 'Elviani Novasari', '8116740156', 'PNS'),
(237, '2', '23', '10184042', 'HAIKAL RAMADHAN', 'Laki-Laki', 'Jl. Laksamana Malahayati, Kampung Baru', 'Awaluddin', 'Risna Yuliyana', '8118075633', 'Pegawai Swasta'),
(238, '2', '23', '10184047', 'MUHAMMAD SYAUQI', 'Laki-Laki', 'Jln Pendidikan Geudong Alue Kec.KOta JUang Bireuen', 'Zaldi Ap S.Sos', 'Eli Maulida A. M. Kep', '81269615506', 'PNS'),
(239, '2', '53', '10174005', 'MUHAMMAD AUFA', 'Laki-Laki', 'Dusun Blang Raya. Desa Mns. Blang. Kec. Kota Juang. Kab. Bireuen', 'Zamri, SE', 'Anisah, SH', '81360274247', 'PNS'),
(240, '2', '53', '10174008', 'ILHAM ADIDIAN TRIWIJAKSANA', 'Laki-Laki', 'Jln. Jangka Lr. Cut ali No. 39. Desa Meunasah Timu. Kec. Peusangan. Kab. Bireuen', 'Daryadi', 'Yusdiana, S.Pd', '82328430313', 'TNI'),
(241, '2', '53', '10174009', 'RIZKI RAMADHAN', 'Laki-Laki', 'Desa Meunasah Dayah. Kec. Kota Juang. Kab. Bireuen', 'Munzilin', 'Fitria Ningrum', '85362437560', 'Guru Honorer TPA'),
(242, '2', '53', '10174011', 'NATHANIEL ABED KIANTO', 'Laki-Laki', 'Jln. Andalas No. 6. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Joshua Abed Kianto', 'Patricia Fusin', '85277457690', 'IRT'),
(243, '2', '53', '10174012', 'GRACE WILDY', 'Perempuan', 'Jln. Bengkel No.175 d/t. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Fuardy Kartolo', 'Wilin', '81362198898', 'Wiraswasta'),
(244, '2', '53', '10174013', 'RAJWA RAJIYYA', 'Perempuan', 'Jl. T. Malem No. 6 Kommes. Desa Bireuen Mns. Capa. Kec. Kota Juang. Kab. Bireuen', 'Zahrul Fuadi', 'Khairina', '8126553461', 'PNS'),
(245, '2', '53', '10174016', 'T.M. AL ASYARI AL-MUCHTARI', 'Laki-Laki', 'Dusun Tgk. Mat Areh. Desa Bireuen Mns. Blang. Kec. Kota Juang. Kab. Bireuen', 'H. Mukhtaruddin, SE', 'Hj. Marhumah Yacob, A.Md', '85277888123', 'PNS'),
(246, '2', '53', '10174019', 'MUHAMMAD FAUZI', 'Laki-Laki', 'Jln. Tgk Mustafa No. 1. Desa Meunasah Blang. Kec. Kota Juang. Kab. Bireuen', 'H. Abu Bakar, SH', 'Hj. Asmawati Berdan', '85290628747', 'Wiraswasta'),
(247, '2', '53', '10174020', 'NAAYELA FAIZA', 'Laki-Laki', 'Lr. Amal No. 13. Dusun Makmur. Gampong Baro. Kec. Kota Juang. Kab. Bireuen', 'Ir. Zulfandisyah', 'Ir. Hj. Meutianur', '85296960571', 'Wiraswasta'),
(248, '2', '53', '10174022', 'RENAL ZAKY MUHAMMAD', 'Laki-Laki', 'Jl.Tgk. Teungoh. Dusun Aman. Pulo Kiton. Kec Kota Juang. Kab. Bireuen', 'yusrizal', 'Sri Malinda, SE', '85260509970', 'Polisi'),
(249, '2', '53', '10174027', 'NASHA AL-MUNIRA', 'Perempuan', 'Dusun Darussalam. Desa Geulanggang Baro. Kec Kota Juang. Kab. Bireuen', 'Munir, SH', 'Gusti Ahmad, S. Sos', '85260722459', 'PNS'),
(250, '2', '53', '10174029', 'DILLA AMANDA RIZALMI', 'Perempuan', 'Desa Negeri Antara KM.40. Kec. Pintu Rime Gayo. Kab. Bener Meriah', 'Edi Afrizal, SE', 'Sulasmi', '8126966882', 'Wiraswasta'),
(251, '2', '53', '10174032', 'INAS AMIRAH', 'Perempuan', 'Gp.Geudong Alue. Kec. Kota Juang. Kab. Bireuen', 'Bakhtiar', 'Sri Martuti', '811685056', 'Anggota DPRK Aceh Besar'),
(252, '2', '53', '10174033', 'THIFAL AULIA', 'Laki-Laki', 'Jln. T. Dibaroh No. 7. Dusun Kommes. esa Bireuen Mns. Capa. Kec. Kota Juang. Kab. Bireuen', 'Rahmat Kurniawan', 'Sisca Rozanna', '85261468567', 'PNS'),
(253, '2', '53', '10174034', 'ABIL GHOUZAN EFFENDY', 'Laki-Laki', 'Dusun Dua. Juli Keude Teungoh. Kec. Juli. Kab Bireuen', 'Des Dwiputra Effendy', 'Nova Roslita', '82132987889', 'Dokter'),
(254, '2', '53', '10174036', 'ULVI HIDAYATI', 'Perempuan', 'Jl.Pemuda No. 35. Geudong Geudong. Kec. Kota Juang. Kab. Bireuen', 'Safrizal, S.Pd', 'Azizah', '85222937582', 'Guru'),
(255, '2', '53', '10174039', 'MUHAMMAD NAUVAL RAZAN', 'Laki-Laki', 'Jln. Bakti No. 46. Desa Bandar Bireuen. Kec. Kota Juang. Kab. Bireuen', 'Nusriadi', 'Nurlaili, S. Kep', '85358440747', 'PNS'),
(256, '2', '53', '10174040', 'NURUL HIDAYATI MAULIDNA', 'Perempuan', 'Jln. Bireuen-Takengon KM 2.7. Desa Juli Meunasah Jok. Kec. Juli. Kab. Bireuen', 'Umar', 'Juliana, A.Ma', '85260561054', 'PNS'),
(257, '2', '53', '10174041', 'FARAHDILA SAPUTRI', 'Perempuan', 'Desa Cot Keutapang. Kec. Jeumpa. Kab Bireuen', 'Afwadi', 'Nilawati', '8,53E+11', 'Karyawan Swasta'),
(258, '2', '53', '10174042', 'TEUKU MUHAMMAD ARRIL JULIANSYAH', '', 'Jl. Kol. Ali Basyah No. 5. Dusun Makmur. Kp. Baru. Kec Kota Juang. Kab. Bireuen', 'T. Munir', 'Cut Danda Lina', '82332953799', 'Purnawirawan'),
(259, '2', '53', '10174043', 'FARIZ HIRZY', 'Laki-Laki', 'Desa Cot Keutapang. Kec. Keumpa. Kab Bireuen', 'Basiran', 'Hidayani Safari Zanna', '81375238758', 'Guru'),
(260, '2', '53', '10174044', 'SILVA SAFITRI', 'Perempuan', 'Desa Geulanggang Teungoh. Kec Kota Juang. Kab. Bireuen', 'Kasdin', 'Sumiati', '85260611247', 'POLRI'),
(261, '2', '53', '10174045', 'NYAK QORI ZIKRIAH', 'Perempuan', 'Jl. Veteran Dusun Tengah. Desa Cot Gapu. Kec. Kota Juang. Kab. Bireuen', 'Bahagia, S. Pd', 'Dra. Reihan Laili', '81362782244', 'Guru'),
(262, '2', '53', '10174051', 'PUTRI SUHAILA', 'Perempuan', 'Jln. Balee Aron. No. 15. Meunasah Blang. Kec. Kota Juang. Kab. Bireuen', 'Amril Usman', 'Fitriani', '85260734398', 'PNS'),
(263, '2', '53', '10174052', 'CUT ZIA KAIZA', 'Perempuan', 'Meunasah Dayah. Kec Kota Juang. Kab. Bireuen', 'Teuku Safrizal', 'Khairanniswaty, SH', '81361603333', 'Wiraswasta'),
(264, '2', '53', '10174058', 'BIFAWAN AULIA', 'Laki-Laki', 'Juli KM.11. Desa Teupin Mane. Kec. Juli. Kab.Bireuen', 'Mery Azwanda', 'Yeni Marni', '85275555546', 'Wiraswasta'),
(265, '2', '53', '10174059', 'NASYWA TADZKIYA', 'Laki-Laki', 'Bireuen Mns.Tgk. Digadong. kota Juang. Bireuen', 'Zubir', 'Meutia', '85260313965', 'Guru'),
(266, '2', '53', '10174060', 'AWFA FARRAH DHIBA', 'Laki-Laki', 'Blang Mee Barat. Kec. Jeunieb. Kab. Bireuen', 'Azhari', 'Zuraida', '81360256089', 'POLRI'),
(267, '2', '53', '10174061', 'MUHAMMAD FATAYA BILQISTHI', 'Laki-Laki', 'Jln. Pendidikan, Dusun Teupum. Desa Mns. Dayah. Kec. Kota Juang. Kab. Bireuen', 'DR. Marwan Hamid, M.Pd', 'Irni Aryani Amd.Keb', '85277801975', 'PNS'),
(268, '2', '22', '10184041', 'M. AL BARIQ ILL SAUWIR', 'Laki-Laki', 'Jl. HB. Puteh, Gampong Baroe', 'Harisman', 'Mardhiah', '81269770070', 'Wiraswasta'),
(269, '2', '22', '10184050', 'T. M. Zaffa Abrar', 'Laki-Laki', 'Dusun Cureh Kupula Indah No. F.63 Desa Geulanggang Gampong Kec. Kota JUang Kab. Bireuen', 'Zubir Putra', 'Wardah', '81362134476', 'PNS'),
(270, '2', '21', '10184004', 'FATIATURRAHMANI', 'Perempuan', 'Desa Beunyot, Kec. Juli, Kab. Bireuen', 'Fauzan. AR', 'Cinta Andriani', '85361536176', 'Wiraswasta'),
(271, '2', '21', '10184005', 'MUHAMMAD ZIDAN', 'Laki-Laki', 'Aspol Bireuen', 'Noviansyah', 'Siti Aflah', '82364180821', 'Polri'),
(272, '2', '21', '10184006', 'MISBAHUL JANNAH', 'Perempuan', 'Desa Geudong Alue', 'Muslim Syammaun, S.Sos', 'Nur Aflah, SE', '82304511978', 'Pensiun PNS'),
(273, '2', '21', '10184008', 'DARA ZASKIA', 'Perempuan', 'Jln. Meunasah, Pulo Kiton', 'Mustafa Kamal', 'Ainul Mardhiah', '81360150637', 'Karyawan Swasta'),
(274, '2', '21', '10184009', 'NASYWA KHANSA', 'Laki-Laki', 'Dusun Komes Bireuen, Meunasah Capa, Kec. Kota Juang', 'Furkan', 'Sinta Malfina', '85260797003', 'Wiraswasta'),
(275, '2', '21', '10184010', 'CLARA OTTO WONGSODINATA', 'Perempuan', 'Geudong-Geudong', 'Alexandra', 'Ridza Jusri', '8116123238', 'Wiraswasta'),
(276, '2', '21', '10184013', 'TAUFIQ ATMAJA', 'Laki-Laki', 'Asrnil Gabungan Kodim 0111, Bireuen', 'Eka Rizinandi', 'Yuyun', '85229487471', 'TNI-AD'),
(277, '2', '21', '10184014', 'ZARATU FARSIA HUMAIRA', 'Perempuan', 'Gp. Bireuen Meunasah Tgk. Digadong', 'Irwan Nabawi', 'Rauza', '85277473751', 'Karyawan'),
(278, '2', '21', '10184017', 'MUHAMMAD REZA ALGHIFARI', 'Laki-Laki', 'Meunasah Blang', 'Jailani', 'Monika Fuanny', '85296692266', 'Wiraswasta'),
(279, '2', '21', '10184021', 'FARIQ AUVA AL MUHTARAM', 'Laki-Laki', 'Jln. Andalas No. 11', 'Safrizal Rusli', 'Dahlia', '85260114447', 'swasta'),
(280, '2', '21', '10184023', 'ADEL SAUSAN ALBIRRA', 'Perempuan', 'Jln. Cut Mutia No. 635', 'Eka Saputra', 'Lusiana', '81360000998', 'Wiraswasta'),
(281, '2', '21', '10184024', 'AKMAL KAUSHAR', 'Laki-Laki', 'Mns. Blang Bireuen, Kec. Kota Juang', 'Muhammad Yani', 'Darwati', '82360060007', 'PNS'),
(282, '2', '21', '10184026', 'KHAIRAL ABDI', 'Laki-Laki', 'Jln. Medan-Banda Aceh simpang sukma', 'Muhammadar', 'Faridah', '82267866672', 'Wiraswasta'),
(283, '2', '21', '10184028', 'SILVIA MAGHFIRAH', 'Perempuan', 'Geudong-geudong', 'Muhajir Chaniago', 'Zulfia', '81269904090', 'Wiraswasta'),
(284, '2', '21', '10184032', 'ANINDA BELTA SHAKIRA', 'Perempuan', 'Mns. Timu, Matang Geulumpang Dua', 'T. Arzani, S.E', 'Nuraidar, Amd. Keb', '85260871476', 'Wiraswasta'),
(285, '2', '21', '10184034', 'AMMAR FATIN', 'Laki-Laki', 'Blang Bladeh', 'Akmal', 'Mila Karmila', 'tidak ada data', 'Dokter'),
(286, '2', '21', '10184037', 'ZITA NADHIRA', 'Perempuan', 'Desa Pante Gajah, Kec. Peusangan', 'Munzir', 'Yusnita', '82362549245', 'Pegawai BRI cabang Bireuen'),
(287, '2', '21', '10184038', 'NAJWA ZAMHAHIRA', 'Perempuan', 'Cot Tarom Tunong', 'H. Bukhari', 'Hj. Heralisda', '811672966', 'Wiraswasta'),
(288, '2', '21', '10184039', 'ROYYAN AULIA NANDA', 'Laki-Laki', 'Juli Cot Meurak', 'Busyri Syafari', 'Rosmani', '85213682368', 'Karyawan BUMN'),
(289, '2', '21', '10194001', 'RAISHA AYUMI', 'Perempuan', 'Desa Padang Kasab Kec. Peulimbang Kab. Bireuen', 'Muhammad Dahlan', 'Ruslaini', '8126908032', 'WIRASWASTA'),
(290, '2', '20', '10184003', 'ISLAH LUQYANA GEUBRINA', 'Laki-Laki', 'Jln. Cot Meurak Utama No. 23 Bireuen', 'IR. Ibrahim Ahmad, M.Si', 'Dr. Syamsyidar, S.H., S.Ps', '811673076', 'Kepala BAPPEDA Bireuen'),
(291, '2', '20', '10184011', 'HAIDAL-AL QASIMY', 'Laki-Laki', 'Desa Meunasah Blang, Kec. Peudada', 'Radhi', 'Rostina', '85230122463', 'Pns'),
(292, '2', '20', '10184012', 'M. FARHAN HAJID NABIL', 'Laki-Laki', 'Blangcot Tunong', 'Dwi Purnomo', 'Herawati', '82179999140', 'Polri'),
(293, '2', '20', '10184015', 'M.ASYRAF', 'Laki-Laki', 'Jln. Gayo KM 1 Komes Mns. Capa Bireuen', 'Zahirsyah', 'Liza Rozana', '81360996777', 'swasta'),
(294, '2', '20', '10184016', 'VICTOR ONG', 'Laki-Laki', 'Jln. Letda Ishak Ibrahim No. 322 Bireuen', 'Marvin Ong', 'Suyenni Raja', '81259331188', 'Wiraswasta'),
(295, '2', '20', '10184018', 'AISHA SYAKIRAH', 'Laki-Laki', 'Jln. Karang Rejo No. 31', 'Eriek Julana Alda', 'Elly Fitriani, A.Md. Keb', '85260750303', 'Wiraswasta');
INSERT INTO `siswa` (`id_siswa`, `id_jenjang`, `id_kelas`, `nis_siswa`, `nama_siswa`, `jk_siswa`, `alamat_siswa`, `ayah_siswa`, `ibu_siswa`, `hp_siswa`, `kerja_siswa`) VALUES
(296, '2', '20', '10184019', 'NAJWA FARHATUN NAURA', 'Perempuan', 'Geulanggang Gampong', 'Fery Irawan', 'Yusrawati', '85358868216', 'Guru'),
(297, '2', '20', '10184020', 'MUHAMMAD RASEUKI', 'Laki-Laki', 'Juli Seutuy', 'Budi Raziannur', 'Novi Putri, SE', '81360080718', 'Wiraswasta'),
(298, '2', '20', '10184022', 'GHEA GHAITSA', 'Perempuan', 'Desa Cot Trieng, Kec. Kuala Kab. Bireuen', 'Mirza Fuady, S.T', 'Ritahayati, S.T', '8116707375', 'Wiraswasta'),
(299, '2', '20', '10184025', 'NAYLA HAFIZA', 'Perempuan', 'Mns. Blang, Bireuen', 'Ir. Yanfitri, S.T', 'Yulia Sari', '81360680754', 'PNS'),
(300, '2', '20', '10184027', 'ARFI HAURA AQILA', 'Perempuan', 'Geudong-geudong', 'Amar Agensyah', 'Mufitra Septaria Murfi, S.P', '85260973787', 'PNS'),
(301, '2', '20', '10184029', 'VINCA CHIRSTY', 'Perempuan', 'Bandar Bireuen', 'Sufendy', 'Susi', '85296274444', 'Wiraswasta'),
(302, '2', '20', '10184030', 'M. DZAKKI', 'Laki-Laki', 'Desa Cot Bada, Blang Bladeh', 'Herman. M. Saleh', 'Maulida Hanum', '85260320472', 'Mekanik Dinamo'),
(303, '2', '20', '10184031', 'SYAFA MAULIDINA', 'Perempuan', 'Blang Bladeh, Jln. Ganepo', 'Adi Sutrisno', 'Murnia Wati', '85260825398', 'TNI-AD'),
(304, '2', '20', '10184033', 'NAZILA KHAIRISA', 'Laki-Laki', 'Cot Keutapang', 'Husaini', 'Rosmini', '82221906133', 'Wiraswasta'),
(305, '2', '20', '10184035', 'IBNU SINA', 'Laki-Laki', 'Dusun Blang Raya, Mns. Blang Bireuen', 'Sayuti', 'Dr. Malahayati, SPPK', 'tidak ada data', 'Dosen'),
(306, '2', '20', '10184036', 'SHUFIA ZUHRA', 'Perempuan', 'Meunasah Blang', 'MUKHTARUDDIN', 'RAHMAWATI', '82364048333', 'PEDAGANG'),
(307, '2', '20', '10184040', 'SITI RASYILA', 'Perempuan', 'Meunasah Blang', 'Suryadi', 'Erlina Sari', '85277248082', 'Wiraswasta'),
(308, '2', '20', '10184043', 'SINGGI ULFA MUSTIRA', 'Perempuan', 'Desa Paya Timu, Kec. Peudada', 'Muslem AR', 'Ratna Juwita', '85277457687', 'Dagang'),
(309, '2', '20', '10184045', 'Muhammad Farhan Musa Kesuma', '', 'Bireuen Meunasah Blang', '-', 'Rosmanidar, S.Pd', 'tidak ada data', 'tidak ada data'),
(310, '2', '20', '10184046', 'AVICENA PANACEA DERRYL', 'Laki-Laki', 'Komp. Sekolah Sukma Bangsa Dusun A Bahagia Desa Panggoi Kec.Muara Dua ', 'Khairil Azhar', 'Deni Rahayu', '81297427961', 'Wiraswasta'),
(311, '2', '20', '10194002', 'Mughli Rasya Alkatiry', 'Laki-Laki', 'Dusun Satu Gp. Beurawang Kec. Jeumpa Kab. Bireuen', 'Sudarman', 'Fathiyah', '81269608644', 'Karyawan Swasta'),
(312, '1', '52', '10130005', 'Aliyah Hanifah', 'Perempuan', 'Jl. Tgk Pulo Dibaroh No. 11 Kommes', 'Mukhlis', 'Tati Marlina', '081360393932/081360123030', 'Wiraswasta'),
(313, '1', '52', '10130006', 'Alvi Syahrin', 'Laki-Laki', 'Glg. Teungoh Dsn. Barat', 'Jalaluddin H.M Nusyah', 'Erlina A. Mahmud', '085370648088/085260722740', 'Wiraswasta'),
(314, '1', '52', '10130008', 'Amela Ulya Asfia', 'Perempuan', 'Mns. Timu Matangglumpang Dua', 'Asril Har', 'Cut Lifia Fitriani', '85261777463', 'Wiraswasta'),
(315, '1', '52', '10130011', 'Asyka Ridhollah', 'Perempuan', 'Geudong geudong', 'Erwin', 'Wirdalena', 'tidak ada data', 'Wiraswasta'),
(316, '1', '52', '10130013', 'Cheryl Marsya', 'Perempuan', 'Asrama Kodim 0111 Blang Bladeh Bireuen', 'Asep Novie Herdiana', 'Evie Dahlianti', '085260252741/085207112889', 'TNI - AD'),
(317, '1', '52', '10130014', 'Cut Inayati Fasya', 'Perempuan', 'BTN KUpula indah No. F68 Bireuen', 'T. Fakhriadi', 'Syafriyanti Nasution', '85262085886', 'PNS'),
(318, '1', '52', '10130015', 'Devrina Suci Aulia', 'Perempuan', 'Asgab Kodim 0111/Brn', 'Rafiudin', 'Irawati', '85373972483', 'TNI-AD'),
(319, '1', '52', '10130016', 'Faika Dila Saputri', 'Perempuan', 'Desa Cot Keutapang', 'Afwadi', 'Nilawati', '0811678643/085260725737', 'Swasta'),
(320, '1', '52', '10130017', 'Faizatunnisa', 'Perempuan', 'Dsn. Teladan Cot Keutapang', 'Munandar', 'Hafni Zahara', '081263699982/085260033555/085201064553', 'PNS'),
(321, '1', '52', '10130020', 'Khalil Sy Basyarah', 'Laki-Laki', 'BTN Kupula Indah, Glg. Gampong. Bireuen.', 'Sofyannur', 'Yenni Dahlia', '85261244412', 'PNS'),
(322, '1', '52', '10130024', 'M. Azril Maulana. BB', 'Laki-Laki', 'Juli Km 2,5 Bireuen', 'Edi M. Jalil BB', 'Fitria', '85222937678', 'Wiraswasta'),
(323, '1', '52', '10130026', 'M. Fajril Maulana Putra', 'Laki-Laki', 'Apotek mitra Jl. Ramai No. 7 Kota Bireuen', 'Faisal', 'Marralenni', '081361209168/081360014747', 'Wiraswasta'),
(324, '1', '52', '10130027', 'Muhammad Faris Islami', 'Laki-Laki', 'Jl. Laksamana malahayati No. 6A Lhok Awe Tengoh', 'Afrianto', 'Susetia Ivana', '081360058285/081360404444', 'PNS'),
(325, '1', '52', '10130028', 'Muhammad Fazhal Al-Fuzari', 'Laki-Laki', 'Jl. H. Abubakar No.16 Bandar Bireuen', 'Fadli', 'Susanti', '85277792642', 'PNS'),
(326, '1', '52', '10130029', 'Muhammad Irgie Ashabul Kahfi', 'Laki-Laki', 'Jl. Banda Aceh - Medan No. 17 A Bireuen', 'Hendra Saputra', 'Erlita', '085260645757/082162006555', 'Wiraswasta'),
(327, '1', '52', '10130036', 'Najla Nahriya Fariha M. Syauqi', 'Perempuan', 'Komplek Villa Jeumpa Beutari Gp. Glg. Baro', 'M. Syauqi', 'Rukayah Ayu', '8126925274', 'Hakim Mahkamah Syariah'),
(328, '1', '52', '10130037', 'Nashiratul Khansa', 'Perempuan', 'dusun II cinta makmur, Cot trieng. Bireuen', 'Munawardi', 'Tini Agustina', '85260109284', 'PNS'),
(329, '1', '52', '10130041', 'Qayzia Salsabila Mulya', 'Perempuan', 'Dsn. Lagang Glg. Teungoh', 'Mulyadi Sulaiman', 'Susilawati', '85260688228', 'PNS'),
(330, '1', '52', '10130042', 'Raghib Fillah', 'Laki-Laki', 'Jl. Gayo Km. 10 Desa Beunyot', 'Faisal Yusuf', 'Syafridah', 'tidak ada data', 'PNS'),
(331, '1', '52', '10130048', 'Said Deyyan Denansyah', 'Laki-Laki', 'Desa Geudong Geudong', 'Dedi Ferdiansyah', 'Murnani', '085260113378/085277599995', 'Swasta'),
(332, '1', '52', '10130052', 'Shafara Natasya', 'Perempuan', 'Gp. Juli Cot Mesjid', 'Mulia Darma', 'Salma Ismail', '85277737187', 'PNS'),
(333, '1', '52', '10130055', 'T. Zahy Nuramal', 'Laki-Laki', 'Desa Glg. Baro', 'T. Mirza Iskandar', 'Eliawati', '85213713443', 'Swasta'),
(334, '1', '52', '10130058', 'Wildan Alfasya', 'Laki-Laki', 'Mns. Dayah No 14 Bireuen', 'Mawardi', 'Asmalina', '0811673433/0811674089', 'Wiraswasta'),
(335, '1', '', '10163057', 'Abiyu Ramzy Aslam', 'Laki-Laki', 'Jl. Pemuda, Lr. Wali Abu Geudong- geudong', 'Abdul Salam', 'Rosmina', '8126550061', 'tidak ada data'),
(336, '1', '', '10163059', 'Mochammad Alfayeed', 'Laki-Laki', 'Gampong Bireuen Mns Reuleut, Kec. Kota Juang  kab. Bireuen', 'Abdul Hamid, STP. MM', 'Nurfazillah, A.Md Kep', '85262807464', 'PNS'),
(337, '1', '70', '10173068', 'REVAN', 'Laki-Laki', 'Jl. Mawar No. 22, Bireuen', 'Piter', 'Nia Susanti', '81320049513', 'Wiraswasta'),
(338, '1', '', '10173070', 'Chelsea Alamanda', 'Perempuan', 'Desa Meunasah Dayah, Dusun Tgk. Di Ibu, Kec. Kota Juang, Kab. Bireuen', 'Sabaruddin', 'Ida Iryanti', '82148811215', 'Wiraswasta'),
(339, '1', '', '10173073', 'Shadrina Kayla Putri', 'Perempuan', 'Lj. Tgk Di Bale, Desa Cot Trieng, Kec. Kuala, Kab. Bireuen. Aceh', 'Taufik Adam', 'Rince Fitria', '8118197688', 'Karyawan Swasta'),
(340, '1', '52', '10130002', 'Ahmad Khair Azmi', 'Laki-Laki', 'Dsn. Tgk. Dihagu Gp. Paseh Kec. Juli Kab. Bireuen', 'Muhammad Haris', 'Hanisah', 'tidak ada data', 'Wiraswasta'),
(341, '1', '52', '10130003', 'Aisyah Azahra', 'Perempuan', 'karang rejo, kota bireuen, desa bandar bireueun', 'Azhary M. Jamil', 'Andalusia', '085260760331/081377258696', 'Wiraswasta'),
(342, '1', '52', '10130007', 'Alyya Nurul Azkia', 'Perempuan', 'Jl. Sekolah Sukma Bangsa Desa Cot Keutapang', 'Fadli', 'Yasri Umaini', '085260255209/081260931223', 'Wiraswasta'),
(343, '1', '52', '10130009', 'Annisa Humaira Hamdani', 'Perempuan', 'Jl. Peutua Raja Pulokiton', 'Hamdani Abdul Gani', 'Hanifah', '085277464745/0811673426', 'PNS'),
(344, '1', '52', '10130010', 'Arina Shulha', 'Perempuan', 'Desa Cot Keutapang', 'Unzir Daud', 'Nurhayati', '085277703911/085370565511', 'PNS'),
(345, '1', '52', '10130012', 'Aufa Salsabila', 'Perempuan', 'Desa Glp. Payong', 'Samsul Bahri', 'Raihan Putri', '81269332336', 'Wiraswasta'),
(346, '1', '52', '10130018', 'Feisha Indriasahnie', 'Perempuan', 'Gampong Baro', 'Andri Gunandar', 'Yuyun Sachronie', '085275852591/085277779483', 'Dagang'),
(347, '1', '52', '10130019', 'Khairal Wara', 'Laki-Laki', 'Desa Cot Keutapang', 'M. Yusuf', 'Muna Zulva', '811678475', 'Wiraswasta'),
(348, '1', '52', '10130021', 'Khalis Muzakky', 'Laki-Laki', 'Mns. Blang', 'Suryahadi', 'Ruwaeda', '81360350005', 'Swasta'),
(349, '1', '52', '10130022', 'Muhammad Aliif', 'Laki-Laki', 'Jl Veteran No 14, Dusun Tengah, Cot Gapu, Kota Juang. Bireuen.', 'Martsafari', 'Nini Purnasari', '81269135073', 'Karyawan BUMD'),
(350, '1', '52', '10130023', 'Muhammad Aziz', 'Laki-Laki', 'Bireuen Mns. Blang', 'Mustafa ZA', 'Dewi Fitriani', '82364476948', 'Wiraswasta'),
(351, '1', '52', '10130025', 'Muhammad El Faizi', 'Laki-Laki', 'Jl. Peutua Banta No. 9 Mns. Blang', 'Nurdin A Birton', 'Mursyidah A Lathief', '0811673758 / 0644324144', 'Wiraswasta'),
(352, '1', '52', '10130030', 'Muhammad Al Fatih', 'Laki-Laki', 'BTN Kupula Indah Blok F4 Cot Gapu', 'Safrizal', 'Nurliana', '82160166160', 'PNS'),
(353, '1', '52', '10130032', 'Muhammad Arif Rizki', 'Laki-Laki', 'Jl. M. Zeen 29 Mns. Blang, Kota Juang. Bireuen.', 'Faisal M. Kasim', 'Sri Uniyati', '81360098018', 'Wiraswasta'),
(354, '1', '52', '10130033', 'Muhammad Danish', 'Laki-Laki', 'Dusun cinta damai, cot trieng, kecamatan kuala. Bireuen.', 'H. Sayuti Rusli', 'Fitri Zuhariyati', '811670604', 'Wiraswasta'),
(355, '1', '52', '10130035', 'Najla Khansa', 'Perempuan', 'Desa Blang Raya Bireuen Mns Blang', 'Abdullah Idris', 'Mayam', '081361364809/085213520067', 'Pensiunan'),
(356, '1', '52', '10130039', 'Nurul Azizah', 'Perempuan', 'Mns. Reulet Bireuen', 'Azhari', 'Siti Sabariah Cut', '85260433987', 'PNS'),
(357, '1', '52', '10130044', 'Rajwa Sausan', 'Perempuan', 'Jl. Kol. Husen Yusuf Ibrahim Kota Juang Bireuen', 'Yuswardi', 'Fitriati', '081269794411/08126908572', 'Wiraswasta'),
(358, '1', '52', '10130045', 'Rasya Hubillah', 'Laki-Laki', 'Jln medan-Banda Aceh. lr tgk imum hasyem, menasah blang bireuen.', 'Riza fahmi', 'Yusefa', '085211671025/082165139196', 'PNS'),
(359, '1', '52', '10130047', 'Safira Fieza Aqilla', 'Perempuan', 'Mns. Tgk Digadong', 'Tarmizi', 'Desi Kamisna', '85260057097', 'Swasta'),
(360, '1', '52', '10130053', 'Sulthan Rafi Zubair', 'Laki-Laki', 'Jl. Kapten Dsn. Cureh Timur', 'M. Zubair', 'Nurliawati', '85260498664', 'PNS'),
(361, '1', '52', '10130056', 'Teuku Muhammad Firmansyah', 'Laki-Laki', 'Geulanggang Baro, ds sejahtera, kota juang. Bireuen', 'T. Juwirmansyah', 'Yulia Fitri', '082160065773/081360472424', 'PNS'),
(362, '1', '52', '10130057', 'Teuku Alvin Pratama', 'Laki-Laki', 'Mns. Tgk. Digadong', 'Teuku Mirza Agusni', 'Rahmil Izzati', '082361798989/085262921818', 'Wiraswasta'),
(363, '1', '52', '10130195', 'Aura Ghadiza Effendy', 'Perempuan', 'Jl. Takengon Km 4 Juli Bireuen', 'Dwi Putra Effendy', 'Nova Roslita', '085230054604/082132987889', 'Dokter'),
(364, '1', '67', '10153023', 'Leonardi Wangsa', 'Laki-Laki', 'Jl. Panglima Polem No.2 Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Gunawan Wangsa', 'Leny', '85260822586', 'Wiraswasta'),
(365, '1', '', '10163060', 'Ukhti Syakira', 'Perempuan', 'Geulanggang Baroe, Kec. Kota Juang  Kab. Bireuen', 'Zairidan Jaya', 'Galuh Rini Gayattri', '85277864823', 'PNS'),
(366, '1', '', '10173075', 'Muhammad Sulthan Rasya', 'Laki-Laki', 'Perum. BTN Bireuen Indah, Jln. Merpati No. 25, Desa Buket Teukueh, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Jafar Siddik', 'Dwi Wulandary', '82363102685', 'Wiraswasta'),
(367, '1', '52', '10143003', 'Aishara ', 'Laki-Laki', 'Jl. Malikussaleh No. 4 Meunasah Capa Kota Juang Bireuen', 'Jamaluddin', 'Sriwahyuni', 'tidak ada data', 'Pedagang'),
(368, '1', '52', '10143005', 'Alfi Yaturrahma', 'Perempuan', 'Komplek Puskesmas kota Juang Buket Teukuh Kab. Bireuen', 'Muhammd Daud', 'Rosdani', '8527733773', 'Wiraswasta'),
(369, '1', '52', '10143006', 'Alia Karima', 'Perempuan', 'Jl. TM Yahya Mns. Dayah Kec. Kota Juang Kab. Bireuen', 'Ir. Zulkifli Adam', 'Cut Shamira', '85240572678', 'Wiraswasta'),
(370, '1', '52', '10143009', 'Aqil Ghoufar Effendy', 'Laki-Laki', 'Jl. Gayo KM. 4,2 Juli Keude Dua Kec. Juli Bireuen', 'Des Dwiputra Effendy', 'Nova Roslita', 'tidak ada data', 'Dokter'),
(371, '1', '52', '10143010', 'Ariva Gebrilia Putri', 'Laki-Laki', 'Kommes Mns Capa Kec. Kota Juang Kab. Bireuen', 'Rudi Syahputra', 'Lili Suryani', 'tidak ada data', 'POLRI'),
(372, '1', '52', '10143012', 'Azniel Askhya Dayahna', 'Laki-Laki', 'Meunasah Dayah Kec. Kota Juang Kab. Bireuen', 'Mahyiddin Abdullah', 'Ningsaih', '85277551351', 'Wiraswasta'),
(373, '1', '52', '10143022', 'Lathifa Azka Humaira', 'Perempuan', 'Jl. T. Hamzah Bendahara No. 15 Karang Rejo Kec. Kota Juang Bireuen', 'H. Azhary M. Jamil', 'drg. Hj. Andalusia', 'tidak ada data', 'Wiraswasta'),
(374, '1', '52', '10143023', 'M. Abiyyu Syahrezi', 'Laki-Laki', 'Desa Geudong2 Kec. Kota Juang Bireuen', 'Ahzar', 'Endang Syahriani', '8126912007', 'Pegawai BUMN'),
(375, '1', '52', '10143024', 'M. Fatih Ar Rafiqi', 'Laki-Laki', 'Desa Geulanggang Baru Dsn Damai Kec. Jeumpa Kab. Bireuen', 'H Safrel Zein Mahmud', 'Susi Dewi', '811670', 'tidak ada data'),
(376, '1', '52', '10143028', 'Muchraja Muna Sidqin', 'Laki-Laki', 'Geulanggang Gampong Kec. Jeumpa Kab. Bireuen', 'Nasrullah', 'Muliyani', '81361794888', 'PNS'),
(377, '1', '52', '10143029', 'Muhammad Azly Maulana', 'Laki-Laki', 'Geulumpang Payong Kec. Jeumpa Kab. Bireuen', 'Surya Bakti', 'Julia Rahmi', '85260851411', 'PNS'),
(378, '1', '52', '10143030', 'Muhammad Haikal', 'Laki-Laki', 'Ds. Geudong-geudong Kec. Juang Kab. Bireuen', 'Azhari Mahmud', 'Nurasmah', '85260715076', 'wiraswasta'),
(379, '1', '52', '10143031', 'Muhammad Nadiaz Yuliawan', 'Laki-Laki', 'Asrama Kompi Bantuan Yonif 113 Kec. Kota Juang Kab. Bireuen', 'Yossafat Yoga Ibrahim', 'Muryani', '81263261949', 'TNI-AD'),
(380, '1', '52', '10143033', 'Muhammad Rafi', 'Laki-Laki', 'Dusun Sayed Desa Cot Tarom Baroh Kec. Jeumpa Kab. Bireuen', 'Abdullah AR', 'Suyatmi', '85359742609', 'tidak ada data'),
(381, '1', '52', '10143034', 'Musayyaratul Barrarah', 'Perempuan', 'Asrama Kodim 0111 Bireuen Blang Bladeh Kab. Jeumpa Kab. Bireuen', 'Denny Yulinora', 'Sri Wahyuni', 'tidak ada data', 'TNI-AD'),
(382, '1', '52', '10143041', 'Said Ghevin Denansyah', 'Laki-Laki', 'Geudong-geudong Desa Kuta trieng Kec. Kota Juang Kab. Bireuen', 'Dedi Ferdiansyah, ST', 'Murnani', 'tidak ada data', 'PNS'),
(383, '1', '52', '10143049', 'Sulthan Arif Maulana', 'Laki-Laki', 'Lr. Ziarah Juli Cot Meurak Kec. Juli Bireuen', 'Asriadi', 'Rahmi', '81269313020', 'POLRI'),
(384, '1', '52', '10143051', 'T. Romi Mubariq', 'Laki-Laki', 'Geulempang Payong Kec. Jeumpa Bireuen', 'T. Khairullah', 'Mimizanna', '81269211616', 'Karyawan swasta'),
(385, '1', '52', '10143052', 'Tiara Salsabila', 'Perempuan', 'Dusun Blang Raya Mns. Blang Kab. Bireuen', 'Razali', 'Rahmah', '85296501302', 'Pedagang'),
(386, '1', '52', '10143054', 'Zata Zamharira', 'Perempuan', 'Jl. Merak II Desa Juli Cot Meurak Kec. JUli Kab. Bireuen', 'Mubarik Juli Saputra', 'Ibda Sri Mulyani', 'tidak ada data', 'tidak ada data'),
(387, '1', '52', '10143055', 'Zia Siti Zayyana', 'Perempuan', 'Dusun Timur Geulanggang Teungoh Kec. Kota Juang Kab. Bireuen', 'Harry Zuanda', 'Misnawaty', 'tidak ada data', 'Pegawai BUMN'),
(388, '1', '52', '10143060', 'M. Farsya Bilqisthi', 'Laki-Laki', 'Jl. Pendidikan Mns Dayah Kec. Kota Juang Bireuen', 'Drs. Marwan', 'Irni Aryani', 'tidak ada data', 'PNS'),
(389, '1', '67', '10153029', 'Muhammad Raja Naufal', 'Laki-Laki', 'Jl. Medan-Banda Aceh Km 231, Desa Pante Pisang, kec. Peusangan , Kab. Bireuen', 'Jafni', 'Fitriani', '8126952935', 'PNS'),
(390, '1', '', '10163063', 'Alfa Munira', 'Perempuan', 'Desa Cot Keutapang, Kec.Jeumpa, Bireuen', 'Mukhlis (Alm)', 'Sufiani', '85359270870', 'PNS'),
(391, '1', '', '10173066', 'DENYS MAULIDIN', 'Laki-Laki', 'Bireuen Meunasah Capa', 'Subarni', 'Efi Safitri', '85277795711', 'Pedagang'),
(392, '1', '', '10173067', 'EGBERT AURICK LIMANDU', 'Laki-Laki', 'Jl. Andalas No. 76, Desa Bandar Bireuen', 'Chen Kin', 'Suryani', '8116710418', 'Wiraswasta'),
(393, '1', '', '10173072', 'Abdul Kadir Ilham', 'Laki-Laki', 'Jln. Angsa, Komp. Pajak, Dusun III Tampok Tengoh, Kec. Banda Sakti, Kota Lhokseumawe. Aceh', 'Akhiruddin', 'Suci Handayani', '85373655747', 'Wiraswasta'),
(394, '1', '', '10193001', 'Bhara Wirasena Marantika', 'Laki-Laki', 'Jl. Komplek Perkantoran Kab. Aceh Barat Daya ', 'Awang Bayu Marantika, SH', 'Era Reni Estuti', '85360474444', 'Polri'),
(395, '1', '52', '10143001', 'Afkaar Hanif', 'Laki-Laki', 'Dusun Kommes Mns. Capa Kec. Kota Juang Kab. Bireuen', 'Salahuddin', 'Khairunnisa', '81360121600', 'Swasta'),
(396, '1', '52', '10143004', 'Akmal Syarif Faiza', 'Laki-Laki', 'Jl. Pendidikan Dusun Blang Raya Mns. Blang Kec. Kota Juang Kab. Bireuen', 'Mursalin', 'Andi Fajri', '85260079481', 'Guru'),
(397, '1', '52', '10143007', 'Alif Fiyanda Saputra', 'Laki-Laki', 'Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Amiruddin', 'Adnen Nurdin', '82362679006', 'PNS'),
(398, '1', '52', '10143011', 'Asyqar Nibras Muda', 'Laki-Laki', 'Juli Cot Merak Kec. Juli Kab. Bireuen', 'Murshal Ridha SE', 'dr. Lindawati', 'tidak ada data', 'tidak ada data'),
(399, '1', '52', '10143013', 'Cut Namira', 'Perempuan', 'Jl. Sukma Bangsa Dusun Tgk Di Cot Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Yusrisia Abdullah', 'Cut Fatimah', '81360496143', 'Pegawai BUMN'),
(400, '1', '52', '10143014', 'Divaul Kamila Ramadhani', 'Perempuan', 'Jl. Melur Pulo Ara Kec. Kota Juang Bireuen', 'Sofyan Ali', 'Linda Lisniati', '85310978031', 'Wiraswasta'),
(401, '1', '52', '10143015', 'Divia Ramadhani', 'Perempuan', 'Dusun Mutiara Mns. Dayah Bireuen Kec. Kota Juang Kab. Bireuen', 'Dodi Irwansyah', 'Novita Astuti', 'tidak ada data', 'Wiraswasta'),
(402, '1', '52', '10143017', 'Fathir Rizkyadi', 'Laki-Laki', 'Mns Dayah Kec. Kota Juang Kab. Bireuen', 'Mawardi', 'Dedek Suryana', '81374357711', 'PNS'),
(403, '1', '52', '10143018', 'Francesco Rau', 'Laki-Laki', 'Jl. Gayo No. 6 Kommes Kec. Kota Juang Kab. Bireuen', 'Mukhtar Nasri', 'Yenny', 'tidak ada data', 'Kontraktor'),
(404, '1', '52', '10143019', 'Husnil Mubarak', 'Laki-Laki', 'Dusun Garuda Mns. Pulo Peudada Bireuen', 'Mukhtar', 'Siti Aminah', '85358441517', 'PNS'),
(405, '1', '52', '10143020', 'Ivan Jarvis', 'Laki-Laki', 'Keude Matang Glumpang II Kec. Peusangan Kab. Bireuen', 'Trianto', 'Nining', '8126364767', 'Wirausaha'),
(406, '1', '52', '10143025', 'M. Iqram', 'Laki-Laki', 'Blang Dalam Kec. Jeumpa Kab. Bireuen', 'Efendi', 'Fajriah', 'tidak ada data', 'Wiraswasta'),
(407, '1', '52', '10143027', 'Mawla Alya Farras', 'Laki-Laki', 'Jln. Ismuha Lr. Petua Adam No. 7 Kota Juang Bireuen', 'Irwan Nabawi', 'Rouza M. Nasir', '85277473751', 'PNS'),
(408, '1', '52', '10143032', 'Muhammad Rafa Fahlevi', 'Laki-Laki', 'Dusun Seulanga No. 7 Mns Dayah Kab. Kota Juang Kab. Bireuen', 'Helmiadi M. Thaib', 'Azizah', 'tidak ada data', 'Wiraswasta'),
(409, '1', '52', '10143037', 'Raiqa Zahira', 'Perempuan', 'Meunasah dayah Kec. Kota Juang Kab. Bireuen', 'Saiful Bahri', 'Linda Yatna', '85277142550', 'Wiraswasta'),
(410, '1', '52', '10143038', 'Rifqa Daruva', 'Perempuan', 'Jl. Medan-B. Aceh Cot Tarom Tunong Kec. Jeumpa Kab. Bireuen', 'Mummadar', 'Faridah', 'tidak ada data', 'Wiraswasta'),
(411, '1', '52', '10143040', 'Risya Zafira Naqiba Ginting', 'Perempuan', 'Jl. Komisaris Moh. Isa No. 14 Mns Dayah Kec. Kota Juang Kab. Bireuen', 'dr Syafruddin Ginting', 'dr Rini Noviyanti', '85277461979', 'PNS'),
(412, '1', '52', '10143042', 'Sadiatun Nufus Jesri', 'Perempuan', 'Jl. Andalas No.26 Desa Bandar Bireuen Kec. Kota Juang Kab. Bireuen', 'Jefrie Hasni', 'Sri Herawati', 'tidak ada data', 'tidak ada data'),
(413, '1', '52', '10143044', 'Salman Al Haitami', 'Laki-Laki', 'Blang Cut Tunong Kec. Jeumpa Kab. Bireuen', 'Fajri', 'Rahimah', '85373808822', 'Wiraswasta'),
(414, '1', '52', '10143045', 'Shadiq Al-Fayed', 'Laki-Laki', 'Jln. Karang Rejo No. 31 Bandar Bireuen Kec. Kota Juang Kab. Bireuen ', 'Eriek Julana Alda', 'Elly Fitriani', '85260740303', 'tidak ada data'),
(415, '1', '52', '10143047', 'Sultan Arif', 'Laki-Laki', 'Mns. Dayah Kec. Kota Juang Kab. Bireuen', 'Saiful Amri', 'Evi Naimah', '85275808755', 'Swasta'),
(416, '1', '52', '10143050', 'Syifaul Aqila', 'Perempuan', 'Jln. Darul Istiqamah No. 4 Glg Gampong Kota Juang Bireuen', 'Darkasyi', 'Asriany Nur', '811670583', 'Wiraswasta'),
(417, '1', '52', '10143053', 'Zalfa Raisal', 'Perempuan', 'Jl. Tgk Dipulo No. 55 Gampong Baro Kec. Kota Juang Bireuen\n\n', 'Mursal', 'Era Safitri', '811670303', 'Wiraswasta'),
(418, '1', '52', '10143056', 'Ziyad Al Wafi', 'Laki-Laki', 'Mns Tgk. Digadong Kec. Kota Juang Kec. Bireuen', 'Azwar', 'muaddah', 'tidak ada data', 'PNS'),
(419, '1', '67', '10153028', 'Muhammad Rafiq Rajasa', 'Laki-Laki', 'Jl Sekolah Sukma, Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Fajar Rajasa, SE', 'Raudatul Jannah, SE', '81370164640', 'Pegawai BUMD'),
(420, '1', '', '10173065', 'MALQAN GHAISAN AZMI', 'Laki-Laki', 'Jl Medan - B. Aceh No. 5, Mns Tunong, Kec. Peudada, Bireuen', 'Ulul Azmi', 'Khaliza', '82363024436', 'PNS'),
(421, '1', '', '10183003', 'Syathir Mutawalli', 'Laki-Laki', 'Jl. Tgk Mustafa No.13A, Desa Mns Blang, Kec. Kota Juang, Kab. Bireuen', 'Ulil Amri', 'Fitriani', '81360191448', 'Pegawai BUMN'),
(422, '1', '', '10183071', 'MARIO MALTA SIHOMBING', 'Laki-Laki', 'Desa Pulo, Peudada', 'MARO ATE MAROLOP', 'ERLITA', '82319159276', 'IRT'),
(423, '1', '67', '10153001', 'Ahmed Deedad Sadli', 'Laki-Laki', 'Jln Medan-banda Aceh, Matang Glumpang Dua , Kec., Peusangan, Kab. Bireuen', 'Sadli', 'Munadia', '85277848586', 'Wiraswasta'),
(424, '1', '67', '10153003', 'Ananda Luthfiyyah Rajasa', 'Perempuan', 'Jl. Sekolah Sukma, Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Fajar Rajasa, SE', 'Raudatul Jannah, SE', '81370164640', 'Pegawai BUMD'),
(425, '1', '67', '10153006', 'Azizi Pratama', 'Laki-Laki', 'Dusun II Cinta Makmur, Desa Cot Trieng kec. Kuala, Kab. Bireuen', 'Syam Wahyuni', 'Sri Suddin', '85297933629', 'Wiraswasta'),
(426, '1', '67', '10153008', 'Bivitri Laisya Al Katiry', 'Perempuan', 'Dusun Satu, Desa Beurawang Kec. Jeumpa, Kab. Bireuen', 'Sudarman', 'Fathiyah', '81269608644', 'Wiraswasta'),
(427, '1', '67', '10153009', 'Btari Aiesha Medina', 'Perempuan', 'Cot Iju  Kec. Peusangan Kab. Bireuen', 'H. Hamdan, S.Sos', 'Hj. Yanti Marlina, S.Pd', '85373610062', 'Wiraswasta'),
(428, '1', '67', '10153010', 'Carryn Christy', 'Perempuan', 'Jln Andalas No 50. Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Sufendy', 'Susi Kesuma', 'tidak ada data', 'Wiraswasta'),
(429, '1', '67', '10153011', 'Chelsia Liuren', 'Perempuan', 'Jl Andalas no 77 Bireuen, Kec. Bandar. Kab. Bireuen', 'halim', 'sandy', '85296025555', 'Wiraswasta'),
(430, '1', '67', '10153018', 'Ghafar Ghaffari', 'Laki-Laki', 'Cot Trieng, Kec. Kuala, Kab. Bireuen', 'Mirza Fuady', 'Ritahayati', '85372836666', 'Wiraswasta'),
(431, '1', '67', '10153022', 'Khansa Syifa', 'Perempuan', 'Cot Keumude , Kec. Peusangan, Kab. bireuen', 'iskandar, ST, MT', 'Mardhiah, S.ST', '85277612238', 'PNS'),
(432, '1', '67', '10153025', 'M. Sulthaan Khaafidh Al Mulki', 'Laki-Laki', 'Jl. Cut Mutia No 635 kec. Bandar, Bireuen', 'Eka Saputra', 'Lusiana', '82166660939', 'Wiraswasta'),
(433, '1', '67', '10153026', 'Muhammad Afdhal Khaira', 'Laki-Laki', 'Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Jamal', 'Serihartati, A.Md. Keb', '85262127857', 'Wiraswasta'),
(434, '1', '67', '10153032', 'Muksalmina', 'Laki-Laki', 'Mns. Blang Kec. Kota Juang, Kab. Bireuen', 'Mustafa. ZA', 'Dewi Fitriani', '82364476948', 'Wiraswasta'),
(435, '1', '67', '10153033', 'Mulkan  Sidqii', 'Laki-Laki', 'Jln Banda Aceh-Medan No 7 Desa Pulo Ara Geudong Teungoh, kec. Kota Juang, Kab. Bireuen', 'Bakhtiar', 'Hernawati', '81360373176', 'Jualan'),
(436, '1', '67', '10153040', 'Raihan Mubarak', 'Perempuan', 'Desa Paya lipah Matang Glp II Peusangan. Bireuen', 'Sayuti Adi Kesuma', 'Sri Suherna', '85277559969', 'Jualan'),
(437, '1', '67', '10153041', 'Cut Rania Zalfa Athira', 'Perempuan', 'Desa Cot Keutapang Bireuen, Kec. Jeumpa, Kab. Bireuen', 'Azhari, AR', 'Cut Adinda fuadilla Alhumaira', '82276740333', 'Wiraswasta'),
(438, '1', '67', '10153043', 'Rifqy Abrar', 'Laki-Laki', 'Juli Km 5 , desa Juli Tgk di Lampoh , Kec. Juli, Kab. Bireuen', 'Nurdin, S.Sos', 'Dahliana, S.Pd', '85277197583', 'PNS'),
(439, '1', '67', '10153044', 'Salsabila Askafia', 'Perempuan', 'Desa Menasah Alue, Kec. Peudada, Kab. Bireuen', 'Astakari A. Gani', 'Fitri YAni, S.Pd', '85260962393', 'Tehnisi'),
(440, '1', '67', '10153047', 'Syarifah Nayla Ramadhani', 'Perempuan', 'Desa bireuen Mns Capa, Kec. Kota Juang, Kab. Bireuen', 'Said Abdurrahman, S.Sos', 'Nurhayati', '8126948717', 'PNS'),
(441, '1', '67', '10153048', 'Syifa Andria', 'Perempuan', 'Dusun Balee Labang, desa Blang Cot Tunong, kec. Jeumpa, Kab. Bireuen', 'Syukri', 'Marlina', '85260097801', 'Wiraswasta'),
(442, '1', '67', '10153052', 'Tazkyatul Khaira', 'Perempuan', 'Dusun Damai, Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen', 'Abdinur', 'Kasmira', '85277616732', 'Wiraswasta'),
(443, '1', '67', '10153053', 'Wafiq Albariki', 'Laki-Laki', 'Dusun utara, Cot gapu Kota Juang. Bireuen', 'H. Sulaimanur, S.Ag', 'Murniati, Amk', '81360050509', 'PNS'),
(444, '1', '67', '10153054', 'Yusuf', 'Laki-Laki', 'Lipah Cut, kec.Jeumpa. Kab. bireuen', 'Bachtiar', 'Erlita', '85372450271', 'Pegawai Swasta'),
(445, '1', '67', '10153055', 'Zahratussyita Muhammad', 'Perempuan', 'Klinik Mata Gading, Jl. Medan-Banda Aceh Km. 218  Cot Gapu, Kec. Kota Juang, Bireuen.', 'dr. Muhammad, Sp. M', 'Sari Fitri', '82166446644', 'Dokter Spesialis Mata'),
(446, '1', '67', '10153056', 'Teuku Zayed Ahmadinejad', 'Laki-Laki', 'Desa Cot Keutapang, Bireuen', 'Azhari. Ar', 'Cut Adinda Fuadilla Alhumaira', 'tidak ada data', 'Wiraswasta'),
(447, '1', '', '10173062', 'AMIRA NUR KARIMA', 'Perempuan', 'Desa Mns Tgk Digadong, Kec. Kota Juang, Bireuen', 'Armiya', 'Nurul Fajri', '85206227700', 'PNS'),
(448, '1', '', '10173064', 'SAYED ZAIZIL MAHFUDH', 'Laki-Laki', 'Matang Glumpang Dua', 'Said Mahdi', 'Syarifah Radhiah', 'tidak ada data', 'tidak ada data'),
(449, '1', '', '10173074', 'Radhwa Khairan', 'Laki-Laki', 'Jl. Gajah No. 87, Desa Pulo Ara Geudong Teungoh, Kec. Kota Juang, Kab. Bireuen, Aceh', 'Mohammad Isnaeni Wilaga Somantri, ST', 'Dr. Irike Ayumi', '81389745676', 'Wiraswasta'),
(450, '1', '', '10183065', 'Nayla Aura Karimadinata', 'Perempuan', 'Aspol, Polres Bireuen, Cot Buket Kec. Peusangan  Kab. Bireuen', 'Joko Kusumadinata', 'Dela Puspita Arini', '85310382006', 'Polri'),
(451, '1', '', '10183076', 'AURA HUMAIRA PUTRI GUNAWAN', 'Perempuan', 'Polres Bireuen Desa Cot Buket', 'Gugun Hardi Gunawan', 'Nunung Widiyawati Dotulong', '81245405868', 'Polri'),
(452, '1', '', '10193002', 'Anjani Sekar Wangi Marantika', 'Perempuan', 'Jl. Komplek Perkantoran Kab. Aceh Barat Daya', 'Awang Bayu Marantika, SH', 'Era Reni Estuti', '81377403767', 'Polri'),
(453, '1', '67', '10153002', 'Alya Mukhbita', 'Perempuan', 'Jl Veteran No. I A desa Cot gapu, Kec. Kota Juang, Kab. Bireuen', 'dr. Khairul Fuadi', 'Drg. Putrihayati', '8126486346', 'PNS (Dokter)'),
(454, '1', '67', '10153004', 'Aufa Syahreza Fakhri', 'Perempuan', 'Jl Tgk. Umar, Desa Matang Sagoe, Kec. Peusangan, kab. Bireuen', 'dr. Heriadi Fakhri, Sppd', 'Nuriah, S.Pd', '8116710477', 'PNS (Dokter)'),
(455, '1', '67', '10153005', 'Aurelia Ramadhini', 'Perempuan', 'Dusun Teungoh . Geulangang Teungoh, Kota Juang . Bireuen', 'Sudirman, S.T', 'Renni Pramita, S.Si', '85260000524', 'Wiraswasta'),
(456, '1', '67', '10153007', 'Basith Rafiq Fauzal', 'Laki-Laki', 'Jalan meurak V No 5 Dusun Selatan Juli cot meurak timue', 'tufrizal syafari', 'fauziah', '81360904451', 'PNS'),
(457, '1', '67', '10153012', 'Davin Koemardi', 'Laki-Laki', 'Jl Mawar No. 36 Desa Bandar, Kec. Kota Juang, Kab. Bireuen', 'Boerhan Koemardi', 'Susanni', '81373087999', 'Wiraswasta'),
(458, '1', '67', '10153014', 'Fairuz Maulana Putra Haz', 'Laki-Laki', 'Desa Blang Dalam, Kec. Jeumpa, Kab Bireuen', 'Hamdani, M', 'Azwarni', '85277811340', 'PNS'),
(459, '1', '67', '10153015', 'Fatin Muhsina', 'Perempuan', 'BTN Kupula Indah Blok E/40, Desa Geulanggang Gampong, Kec. Kota Juang, Kab. Bireuen', 'Arief Hidayat', 'Yetti Yunus', '81360500764', 'PNS'),
(460, '1', '67', '10153016', 'Faza Dina Hawari', 'Perempuan', 'Dusun Tgk Affan, Desa Matang Glp Dua, Kec. Peusangan, Kab. Bireuen', 'Ir. Ansor Hawari', 'dr. cut Masdalena, M.ked Coph, Spm', '85260491973', 'Wiraswasta'),
(461, '1', '67', '10153017', 'Fita Munayya', 'Perempuan', 'Jl Medan-Banda Aceh, lrg Keuchik Doyat. No. 4 Bireuen. Mns Blang', 'Wahyudi', 'fauza, SE', '811677489', 'PNS'),
(462, '1', '67', '10153019', 'Haikal Hafiz', 'Laki-Laki', 'Jl teungoh dusun Aman, desa Pulo Kiton kec. kota juang, kab. Bireuen', 'yusrizal', 'sri malinda, SE', '85260509970', 'Polri'),
(463, '1', '67', '10153021', 'Khansa Suci Alaina', 'Perempuan', 'Ds. Mns dayah Kec. Kota juag kab. bireuen', 'Afrianto', 'Feni Mardiansyah', '81360266686', 'Polri'),
(464, '1', '67', '10153024', 'Liyana Iklil', 'Perempuan', 'Dusun Seulanga, Desa Mns. dayah, Kec. Kota Juang, Kab. Bireuen', 'Safriadi, ST, Msi', 'Herawati, S.Pd', '85210734488', 'PNS'),
(465, '1', '67', '10153031', 'Muhammad Tajul Ulya', 'Laki-Laki', 'Desa Cot Rabo Tunong, Kec. Peusangan Kab. Bireuen', 'Afriadi, S.Sos', 'Epa Fitria, S.Pd', '85260042881', 'Polri'),
(466, '1', '67', '10153035', 'Nadya Ukhtiana', 'Perempuan', 'Desa Cot Keutapang, kec. Jeumpa , Kab. Bireuen', 'Ismail', 'Pertiwi', '85277254465', 'Karyawan BUMN'),
(467, '1', '67', '10153036', 'Nailul Fitri', 'Perempuan', 'Jl Kuala Raja No. 44 Desa Pulo Kiton , Kec. Kota Juang, Kab. Bireuen', 'Saiful Amri', 'Eliana, S.Pd.I', '85260152142', 'Pegawai Swasta'),
(468, '1', '67', '10153037', 'Najwa Hawa Disa', 'Perempuan', 'Jln Cut Hasan No.4 Kommes, Desa Mns. Capa, kec. Kotqa Juang, Kab. Bireuen', 'Sardin, S.Pd', 'Azkannisa', '81360898923', 'Guru'),
(469, '1', '67', '10153038', 'Nasywa Caesar', 'Perempuan', 'Asmil Kompi Bant, Desa Bandar Baru, kec. Kota Juang, Kab. Bireuen', 'Badaruddin', 'Erlinawati', '85260187424', 'TNI-AD'),
(470, '1', '67', '10153042', 'Ridho Murti', 'Laki-Laki', 'Geudong-Geudong, Kec. Kota Juang, Kab. Bireuen', 'Ismail', 'Sakdiah', '85277911600', 'TNI-AD'),
(471, '1', '67', '10153045', 'Shahibil Al- Rafif', 'Laki-Laki', 'Dusun Lam Rusa, Desa Paseh, Kec. Juli, Kab. Bireuen', 'Muhammad Haris', 'Hanisah', '81314103020', 'Wiraswasta'),
(472, '1', '67', '10153049', 'T. Faiz Akbar', 'Laki-Laki', 'Jln. medan-Banda Aceh, desa Glp Payong Kec, Jeumpa Kab. bireuen', 'T. Romel Eriansyah', 'Dara Nuzulla, A.Md', '85360545506', 'PNS'),
(473, '1', '67', '10153057', 'Zulfa Adira Qinaya', 'Perempuan', 'Mns Tgk Digadong, Desa Telaga Manis Tgk Digadong, Kec. Kota Juang. Kab. Bireuen', 'Agus Kusmawan', 'Eno Meli Nurhayati', '85353713938', 'Wiraswasta'),
(474, '1', '67', '10153061', 'Gerrard Christian Kartolo', 'Laki-Laki', 'Jalan Andalas  No.90  Kec. Kota Juang  Kab. Bireuen', 'Fuardy Kartolo', 'Wilim', '81973714446', 'Wiraswasta'),
(475, '1', '', '10163058', 'Mayumi Balillah al Hadroh', 'Laki-Laki', 'Jln. Ramai Kec. Kota Juang, Bireuen', 'Retmawandi', 'Yusneti', '85270207520', 'Wiraswasta'),
(476, '1', '', '10163061', 'Wildan Fayyadh', 'Laki-Laki', 'Juli Cot Mesjid Km.2 Bireuen', 'dr. Muhammad Adi', 'dr. Rachmi, Spog', '8116709384', 'PNS'),
(477, '1', '', '10163065', 'Miranda Ulva', 'Perempuan', 'Geulanggang Gampong  Kec. Kota Juang  Kab. Bireuen', 'Dr. Saifullah, M.Pd', 'Fauzah, SKM', '8116702245', 'tidak ada data'),
(478, '1', '', '10173063', 'MUHAMMAD DAFFA AL - HAZIQ', 'Laki-Laki', 'Cot Gapu, kec. Kota Juang, Bireuen', 'Dedi Purnama', 'Rahmawati', '81362300106', 'PNS'),
(479, '1', '', '10183001', 'Ririn Dhea Arini', 'Perempuan', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Adni Saidi', 'Husniati', '82304051624', 'Wiraswasta'),
(480, '1', '', '10183070', 'ALFA ZAYYAN GHIFARI', 'Laki-Laki', 'Dusun Panjoe Gp. Geulumpang Payong Kec.Jeumpa Kab.Bireuen', 'M. AKHYAR', 'RAHMI MEUTIA', '82273129699', 'PNS'),
(481, '1', '', '10183074', 'M. ASYRAF SYAHRIZAL', 'Laki-Laki', 'Gampong Baro Jl. Habib Puteh No 12C Bireuen\n\n', 'Dr. Syahrizal, Sp. THT - KL', 'Isnaq Mutia, Amd', '811647326', 'PNS'),
(482, '1', '', '10163003', 'ALFIA FARADISA', 'Perempuan', 'Tingkem Manyang, Kec. Kuta blang, Kab. Bireuen', 'Ikandar Muda, A.Md', 'Zahara, S.Pd.i', '82364545006', 'Wiraswasta'),
(483, '1', '', '10163004', 'ALYA DIAN SHATARA', 'Perempuan', 'Kuala Jeumpa  Kec. Jeumpa  kab. Bireuen', 'Silvano Qortamia', 'Agusliana', '81370844767', 'Wiraswasta'),
(484, '1', '', '10163005', 'AMIRA NAILA SYAKIRA', 'Perempuan', 'Mns. Releut  Kec. Kota Juang  Kab. Bireuen', 'Muliadi', 'Sukmawati', '82277589847', 'PNS'),
(485, '1', '', '10163007', 'AURA LATISYA AQUINA', 'Perempuan', 'Desa Pulo Ara  Kec, Kota Juang  kab. Bireuen', 'M. Hidyat', 'Cut Qhatron Nada', '85260722727', 'Karyawan swasta'),
(486, '1', '', '10163008', 'CUT HAURA KHALISHAH', 'Perempuan', 'Geulumpang Payung  Kec. Jeumpa  Kab. Bireuen', 'Teuku Johan', 'Herwindayani', '85260120019', 'Polri'),
(487, '1', '', '10163009', 'CUT IMA SHABIRA FARHANI', 'Perempuan', 'Pulo ara geudong teungoh  Kec. Kota Juang  Kab. Bireuen', 'Farizal', 'Sy. Dahri Hanum', '85260870407', 'PNS'),
(488, '1', '', '10163010', 'ERIC JARVIS', 'Laki-Laki', 'Jl. Tgk Abdul Rahmat, Matang GLP dua, Kec. Peusangan  Kab. Bireuen', 'Trianto', 'Nining', '8126364767', 'Wiraswasta'),
(489, '1', '', '10163011', 'FAIRUZ KHALISAH', 'Laki-Laki', 'Mns. Blang  Kec. Kota Juang  Kab. Bireuen', 'Mukhtar', 'Murniana. S.P', '81269288435', 'Wiraswasta'),
(490, '1', '', '10163013', 'FITRIYATI', 'Perempuan', 'Kuala Jeumpa  Kec. Jeumpa  kab. Bireuen', 'Maksal Mina', 'Dahlia', '85277621957', 'PNS'),
(491, '1', '', '10163016', 'HABIBURRISYAD', 'Laki-Laki', 'Desa Beurawang  Kec. Jeumpa  kab. Bireuen', 'Muchlisin', 'Khairul Husna', '85277428558', 'PNS'),
(492, '1', '', '10163017', 'HAFIZ RIFIANSYAH', 'Laki-Laki', 'Desa Abeuk Usong  Kec. Jeumpa  kab. Bireuen', 'Asep Novie Herdiana', 'Evie Dahlianti, A.Md Keb', '85260252741', 'TNI-AD'),
(493, '1', '', '10163019', 'HIZRI USWA', 'Perempuan', 'Geulanggang Gampong, Kec. Kota Juang  Kab. Bireuen', 'Feri Irawan, S.Si. M.Pd', 'Yusrawati, S.Pd', '85373650664', 'Guru'),
(494, '1', '', '10163021', 'Intan Sharah Jazilla', 'Perempuan', 'Mns. Abeuk Tingkeum  Kec. Jeumpa  kab. Bireuen', 'Muhammad Zaki', 'Hermawati, BSc', '81266154940', 'Wiraswasta'),
(495, '1', '', '10163023', 'Kayla Anisa Faiha', 'Perempuan', 'Pulo ara  Kec. Kota Juang  kab. Bireuen', 'Budi Syafrizal', 'Indriani', '811676605', 'Peg. BUMN'),
(496, '1', '', '10163026', 'Khansa Lathifa', 'Perempuan', 'Dusun Komes . Meunasah capa  Kec. Kota Juang  Kab. Bireuen', 'M. Nasir Sp. S.Pdi', 'Neli Fauziana. S.E', '85277177107', 'Wiraswasta'),
(497, '1', '', '10163028', 'Loetito Nanggroe', 'Laki-Laki', 'matang sagoe, Kec. Peusangan  Kab. Bireuen', 'Alvi Doni', 'Kurniati', '82362050590', 'Wiraswasta'),
(498, '1', '', '10163031', 'M. Nazhif Alghazi', 'Laki-Laki', 'Meunasah Blang  Kec. Kota Juang  Kab. Bireuen', 'Fahrul Razi', 'Yulia Putri', '85207112881', 'Wiraswasta'),
(499, '1', '', '10163032', 'M. Rachel AL Habsy', 'Perempuan', 'Dusun blang raya desa mns blang  Kec. Kota Juang  Kab. Bireuen', 'Eddi Yuswadi', 'Suci Diana', '8116700607', 'Wiraswasta'),
(500, '1', '', '10163037', 'Muhammad Syauki Al-Ghifari', 'Laki-Laki', 'Geudong-Geudong  Kec. Kota Juang  Kab. Bireuen', 'M. Zaman, SH', 'Fitriah, S.Pd', '82169101222', 'Wiraswasta'),
(501, '1', '', '10163039', 'Muhammad Wildan Hafiz', 'Laki-Laki', 'Jl Tgk Di Cot Jrat  Komp, Pusara Indah NO. 10 Reuelut. Bireuen', 'Rakhmayadi, ST', 'Muslimah, A.Md', '81361326033', 'Karyawan swasta'),
(502, '1', '', '10163040', 'Muhammad  zahriyal', 'Laki-Laki', 'Mns. Reuleut   Kec. Kota Juang  Kab. Bireuen', 'Rusdi', 'Sulfitri, S. Kep', '81370827220', 'PNS'),
(503, '1', '', '10163047', 'Safra Ulya Hasya', 'Perempuan', 'Cot Tarom Baroh  Kec. Jeumpa  Kab. Bireuen', 'Saifuddin', 'Hidayati', '85373970109', 'PNS'),
(504, '1', '', '10163049', 'Saskya Dwi Anggreini', 'Perempuan', 'Blang-Blahdeh,  Kec. Jeumpa  Kab. Bireuen', 'Syawaluddin', 'Devi Fitriani', '81370705366', 'TNI-AD'),
(505, '1', '', '10163050', 'Syafiq Shandiatha Fawwaz', 'Laki-Laki', 'meunasah Tgk Gadong,  Kec. Kota Juang  Kab. Bireuen', 'Novi Keny Yandi, ST', 'Santi Windiya Puspitasari, Amk', '85217091170', 'Wiraswasta'),
(506, '1', '', '10163053', 'Teuku Ahmad Nasywan', 'Laki-Laki', 'Desa Geulanggang Gampong  Kec. Kota Juang  Kab. Bireuen', 'Fakrurrazi', 'Karlina Dewi', '85260099146', 'PNS'),
(507, '1', '', '10163054', 'Tiara Larisa Putri', 'Perempuan', 'Mns. Dayah   Kec. Kota Juang  Kab. Bireuen', 'Julfikar, SP', 'Putri Indri Sari', '85260643530', 'PNS'),
(508, '1', '', '10163056', 'Zahira Zawiya Putri Zalia', 'Perempuan', 'Jl andalas. No 11 Bandar Bireuen  Kec. Kota Juang  kab. Bireuen', 'Safrizal Rusli', 'Dahlia', '8126960517', 'Wiraswasta'),
(509, '1', '', '10173058', 'AHMAD BALYA BAYHAQI', 'Laki-Laki', 'Jl. Medan - Banda Aceh, Lr. MDI Puteri No. 4, Desa Geulanggang Teungoh, Kec. Kota Juang, Bireuen', 'Shafwandi', 'Fanny Indriany Polontalo', '81290658445', 'Karyawan swasta'),
(510, '1', '', '10173060', 'MUHAMMAD KHALIL', 'Laki-Laki', 'Dusun teladan, Desa Cot Keutapang, Kec. Jeumpa, Bireuen', 'Munandar', 'Hafni Zahara', '81263699982', 'PNS'),
(511, '1', '', '10183072', 'ARSYA ZHILLA', 'Laki-Laki', 'Jl. T. Chik Ditiro Lr. T. Malem No. 10 Kommes', 'YUSLI ANNUR, ST', 'GITA ANDEVA, A. Md', '8116706771', 'Konsultan Arsitek'),
(512, '1', '', '10163001', 'Aira Sabilla', 'Perempuan', 'Desa Cot Keutapang   Kec. jeumpa  Kab. Bireuen', 'Khairuddin Hasan', 'Nurjannah', '85260167574', 'Perawat'),
(513, '1', '', '10163002', 'Akhdan Ziyad', 'Laki-Laki', 'Meunasah Reuleut , Kec. Kota Juang  Kab. Bireuen', 'Muyasir', 'Dini Fijryati', '81360406091', 'PNS'),
(514, '1', '', '10163006', 'Arifa Fitra', 'Perempuan', 'Cot Keutapang,  Kec. jeumpa  Kab. Bireuen', 'Unzir Daud, A.Mk', 'Nurhayati', '82370565511', 'PNS'),
(515, '1', '', '10163014', 'Gheena Ameera', 'Perempuan', 'Gampong Bireuen Meunasah Reuleut  Kec. Kota Juang  Kab. Bireuen', 'Abdul Hamid, STP. MM', 'Nurfazillah, A.Md Kep', '85262807464', 'PNS'),
(516, '1', '', '10163015', 'Habib Aula', 'Laki-Laki', 'Ds. Blang Blahdeh Asmil Kodim 0111/BRN  Kec. Jeumpa Kab. Bireuen', 'Ginanjar Saputro', 'Wirma Pelita', '82368930007', 'TNI AD'),
(517, '1', '', '10163020', 'Humaira Aditya', 'Perempuan', 'Kp. Cot Trieng.  Kec. Jeumpa  Kab. Bireuen', 'Surwandi', 'Mugi Rahayu', '85262742989', 'Wiraswasta'),
(518, '1', '', '10163022', 'Izza kamila', 'Perempuan', 'Aspol Karang Rejo, Desa Bandar Bireuen Kec. Kota Juang  kab. Bireuen', 'Bukhari', 'Tuti Liana, S.E.', '82272345333', 'Polri'),
(519, '1', '', '10163024', 'Kayyisah Lathifah Ginting', 'Perempuan', 'Meunasah Dayah Kec. Kota Juang.  Kab. Bireuen', 'dr. Syafruddin Ginting', 'dr. Rini Noviyanti', '85277461979', 'PNS'),
(520, '1', '', '10163025', 'Khansa Aurelia', 'Perempuan', 'Mns Capa  Kec. Kota Juang  Kab. Bireuen', 'Ir. Jafar', 'Eliana', '82272703549', 'PNS'),
(521, '1', '', '10163027', 'Leonardo Tandia', 'Laki-Laki', 'Jalan Ramai No.27 Bandar Bireuen  Kec. Kota Juang  Kab. Bireuen', 'Suwanto', 'Linawati', '85296889667', 'Wiraswasta'),
(522, '1', '', '10163029', 'M. Akyas Al Muharriri', 'Laki-Laki', 'Meunasah Blang, Dusun Blang raya, Kec. Kota Juang  kab. Bireuen', 'Ilyas', 'Susilawati', '85207077356', 'Pedagang'),
(523, '1', '', '10163030', 'M. Fatihul Ihsan', 'Laki-Laki', 'Asrama Polisi Polsek Peudada. Desa Meunasah baro. Kec. Peudada  kab. Bireuen', 'Hadriman, S.Sos', 'Afrida, A.Md', '85372909718', 'Polri'),
(524, '1', '', '10163033', 'Mudawali Almaliki', 'Laki-Laki', 'Geulanggang Baroe, Kec. Kota Juang,  Kab. Bireuen', 'Jaswadi H Wahab', 'Muna Sarah Tursina', '85260809970', 'Wiraswasta'),
(525, '1', '', '10163034', 'Muhammad Nawwaf Ayyasi', 'Laki-Laki', 'Meunasah Dayah, kec. Kota Juang  Kab. Bireuen', 'Muhammad Nawawi, S. HI, MH.', 'Raika Wahdini, S. HI', '81269611611', 'PNS'),
(526, '1', '', '10163035', 'Muhammad Rizki Asfia', 'Laki-Laki', 'Meunasah timu, Matang Glp Dua  Kec. Peusangan  Kab. Bireuen', 'Asril Har Skm', 'dr. Cut Lifia Fitriani', '85261022236', 'Wiraswasta'),
(527, '1', '', '10163036', 'Muhammad Rizky Alvatta', 'Laki-Laki', 'Mns Dayah  Kec. Kota Juang  Kab. Bireuen', 'Junaidi', 'Musdalaila', '82363684900', 'Pedagang'),
(528, '1', '', '10163038', 'Muhammad Taufiq', 'Laki-Laki', 'Desa Blangkeutum  Kec. Juli  Kab. Bireuen', 'Eka Satria', 'Mona Sari', '8,53E+12', 'Polri'),
(529, '1', '', '10163041', 'Muhammad Zhafran Azra', 'Laki-Laki', 'Jl. Jangka No. 60 Matang Glp Dua, Meunasah Timue, Kec. Peusangan  Kab. Bireuen', 'Andry Zulkarnaen', 'Farah Meutia', '85260050013', 'PNS'),
(530, '1', '', '10163042', 'Naylatul Salwa', 'Perempuan', 'Asama Kodim  Blang Blahdeh  Kec. Jeumpa  kab. Bireuen', 'Purwanto', 'Muliana', '85360722678', 'TNI-AD'),
(531, '1', '', '10163043', 'Naysyila Syahirah', 'Perempuan', 'Juli Tambo Tanjong  Kec. Juli  Kab. Bireuen', 'Mirza, S. Kom', 'Anisah, S.Pd', '85277405151', 'PNS'),
(532, '1', '', '10163044', 'Qafka Shafiqa Mulya', 'Perempuan', 'Geulanggang Teungoh,  Kec. Kota Juang  Kab. Bireuen', 'Mulyadi, ST. MT', 'Susilawati, A.Md', '8126955225', 'PNS'),
(533, '1', '', '10163045', 'Rafa Anggara', 'Laki-Laki', 'Blang Cot Baroh  Kec. Jeumpa  Kab. Bireuen', 'M. Syah Ibrahim', 'Murniyati', '85262664433', 'Karsyawan RSUD dr. Fauziah Bireuen'),
(534, '1', '', '10163046', 'Resya Zaidan Fayyadh', 'Laki-Laki', 'Desa Gampong Baroe,  Kec. Kota Juang  Kab. Bireuen', 'Safrizal', 'Sari Dewi', '81269020448', 'Wiraswasta'),
(535, '1', '', '10163048', 'Saif Azizi Srinanda', 'Laki-Laki', 'Krueng Juli Timu  Kec. Kuala  Kab. Bireuen', 'Srikumar', 'Afrina', '85260321574', 'PNS'),
(536, '1', '', '10163051', 'Syakira Hasna', 'Perempuan', 'Desa Cot Kutapanag, Kec. Jeumpa  Kab. Bireuen', 'Tgk. H.M Yusuf', 'Muna Zulva', '82368750005', 'Wiraswasta'),
(537, '1', '', '10163052', 'Syifa Humairah', 'Perempuan', 'Geulempang Payong  Kec. Jeumpa  Kab. Bireuen', 'Surya Bakti', 'Julia Rahmi', '85260851411', 'PNS'),
(538, '1', '', '10163055', 'Yusuf Muharram', 'Laki-Laki', 'Jl. T.A Rasyid No.5  Kommes  Kec. Kota Juang  Kab. Bireuen', 'Ir. Yanfitri MT', 'Ratna dewi', '81314382007', 'tidak ada data'),
(539, '1', '', '10173059', 'BRYANT CLERESTA UTAMA', 'Laki-Laki', 'Jl. Medan B. Aceh, Dsn. Cureh Barat, Kec. Kota Juang, Bireuen', 'Hendrik Utama', 'Sanni', '85262341333', 'Mekanik'),
(540, '1', '', '10173061', 'ZAYYAN AYYASY KELANA', 'Laki-Laki', 'Jl. Banda Aceh - Medan (Samping kantor BPS Bireuen)\n\nDesa Cot Keutapang, Kec. Kota Juang, Bireuen', 'Abdul Razak Kelana Ibrahim', 'Yenni Rachmi', '85338360292', 'Dokter'),
(541, '1', '', '10183068', 'Fathi Yakan Alkafi', 'Laki-Laki', 'Geulanggang Kulam Kec.Kota Juang, Kab.Bireuen', 'Kamaruddin, S.Pd. M.M', 'Hildani, A. Md', '81260850605', 'PNS'),
(542, '1', '', '10183075', 'MUHAMMAD RAYYAN', 'Laki-Laki', 'Desa Cot Trieng Kec.Kuala Kab.Bireuen', 'Maswadi', 'Zakiah', '81360300171', 'PNS'),
(543, '1', '', '10173002', 'ARFAN HASHIF', 'Laki-Laki', 'Dusun Pante Bahagia, Desa Lhok awe Teungoh, Kec. Kota Juang, Bireuen', 'Mukhtar', 'Ismawati', '81322612738', 'Wiraswasta'),
(544, '1', '', '10173004', 'AQNATUNNISWAH', 'Perempuan', 'Dusun Ule Gle, Desa Beunyot, Kec. Juli, Bireuen', 'Faisal', 'Syafridah', '85260342114', 'Guru'),
(545, '1', '', '10173007', 'AURA SYAKILA', 'Perempuan', 'Dsn Karang Rejo, Desa Bandar Bireuen Kec. Kota Juang, Bireuen', 'Ramadhani', 'Yuyanti', '85362212450', 'POLRI'),
(546, '1', '', '10173008', 'AQIL AZIZI', 'Laki-Laki', 'Desa Blang Cot Baroh, Kec. Jeumpa, Bireuen', 'Junaidi M Nur', 'Rosnita', '85372747430', 'Tukang kayu'),
(547, '1', '', '10173012', 'FARISYA KAMILA', 'Perempuan', 'Desa Blang Cot Tunong, Kec. Jeumpa, Bireuen', 'Junaidi', 'Nurmasyitah', '85206908908', 'Wiraswasta'),
(548, '1', '', '10173013', 'FIRANNAZWAN WAHAB', 'Perempuan', 'Desa Mns. Capa, Kec. Kota Juang, Bireuen', 'Abdul Wahab Daulay', 'Sri Herlina Wati', '81973900666', 'Wiraswasta'),
(549, '1', '', '10173014', 'FATHUR RAHMAN', 'Laki-Laki', 'Dusun Blang Raya, Desa Mns. Blang, Kec. Kota Juang, Bireuen', 'Affandi', 'Husna', '85260609420', 'PNS'),
(550, '1', '', '10173016', 'FIRYAL NABILA', 'Perempuan', 'Desa Blang Cot Tunong, Kec. Jeumpa, Bireuen', 'Fajri', 'Rahimah', '85373808822', 'Wiraswasta'),
(551, '1', '', '10173017', 'GWYNETHA MEYVANIA LISA', 'Perempuan', 'Jl. Andalas No. 59, Desa Bandar Bireuen, Kec. Kota Juang, Bireuen', 'Mulyadi Lisa', 'Ema Wahyuni', 'tidak ada data', 'Wiraswasta'),
(552, '1', '', '10173018', 'HAZIQ AKRAM', 'Laki-Laki', 'Jl. Sukma, Desa Cot Keutapang, Kec. Jeumpa, Bireuen', 'Balya', 'Fitriani', '85201064581', 'Wiraswasta'),
(553, '1', '', '10173022', 'KAHFI WAHYU PRATAMA', 'Laki-Laki', 'Asmil Kibant Yonif 113/JS Bireuen, Desa Bandar Bireuen, kec. Kota Juang, Bireuen', 'Edi Suratman', 'Nuranisa', '82231782037', 'TNI-AD'),
(554, '1', '', '10173024', 'KEVIN PRATAMA', 'Laki-Laki', 'Lr. Pribadi Dusun Capa Utara, Desa Mns. Capa, Kec. Kota Juang, Bireuen', 'Fahrizal', 'Laura Feniza', '85260777383', 'POLRI'),
(555, '1', '', '10173027', 'MUHAMMAD ZAIDAN AZRA', 'Laki-Laki', 'Jl. Gayo Km. 1, Desa Mns. Capa, Kec. Kota Juang, Bireuen', 'Andry Zulkarnaen', 'Farah Meutia', '85260050013', 'PNS'),
(556, '1', '', '10173028', 'M KHALILUL MUSYFIQ', 'Laki-Laki', 'Komper Villa Jeumpa Beutari, Desa Geulanggang Baro, Kec. Kota Juang, Bireuen', 'M Syauqi', 'Rukayah Ayu', '81360087530', 'Hakim'),
(557, '1', '', '10173032', 'T. MUHAMMAD JIBRIL', 'Laki-Laki', 'Bireuen Mns Reuleut', 'Yusaini', 'Nurhayati', 'tidak ada data', 'PNS'),
(558, '1', '', '10173033', 'MUHAMMAD FUDAIL', 'Laki-Laki', 'JL. Habib Puteh, No. 27, Gampong Baro, Kec. Kota Juang, Bireuen', 'Muhajir', 'Elfia Sari', '82216059668', 'Karyawan swasta'),
(559, '1', '', '10173034', 'MUHAMMAD HARIS AUFA', 'Laki-Laki', 'Lr. Tgk Azhari, Cot Trieng, Bireuen', 'Muhammad Dastur', 'Mardhiati', '85260085799', 'Guru'),
(560, '1', '', '10173035', 'MUHAMMAD AL GHIFARI', 'Laki-Laki', 'Desa Cot Tarom Tunong, Kec. Jeumpa, Bireuen', 'Basri', 'Tety Sapoera', '82361054576', 'Wiraswasta'),
(561, '1', '', '10173036', 'MUHAMMAD FAIDZUL IZZI', 'Laki-Laki', 'Jl. B.Aceh-Medan, Desa Mns Blang, Kec. Kota Juang, Bireuen', 'Suryahadi', 'Ruwaeda', '81360350005', 'Pegawai BRI'),
(562, '1', '', '10173040', 'NAJWA NABILA', 'Perempuan', 'Desa Pulo Ara, Kec. Peudada, Bireuen', 'Basri', 'Darmiati', '82361816488', 'Wiraswasta'),
(563, '1', '', '10173043', 'RAVI QUNNAS', 'Laki-Laki', 'Geudong-geudong, Bireuen', 'Erwin', 'Wirdalena', '82364684773', 'Wiraswasta'),
(564, '1', '', '10173046', 'RAIHAN ULFA', 'Perempuan', 'Dsn Teladan, Desa Cot Keutapang', 'Rahmadsyah', 'Iftriati', '8126918677', 'POLRI'),
(565, '1', '', '10173048', 'SAIF AL AZIZI', 'Laki-Laki', 'Jl. Gayo Km 3.5, Dusun Teungoh, JUli Keude Dua, bireuen', 'Safwan', 'Rakhmil Izzati', '85275016351', 'Wiraswasta'),
(566, '1', '', '10173049', 'SAID NADHIF RIZA', 'Laki-Laki', 'Jl. Tgk Muda Lasin No. 7, Desa Mns. Blang, Kec. Kota Juang, Bireuen', 'Said Qadri', 'Noviza', '85373155888', 'PNS'),
(567, '1', '', '10173050', 'SHAVIQ RIZKY ADITYA', 'Laki-Laki', 'Asrama Kodim 0111 Blang Bladeh, Bireuen', 'Syawaluddin', 'Devi Fitriani', '81370705366', 'TNI-AD'),
(568, '1', '', '10173051', 'SULTHAN PARISYA AL-KATIRY', 'Laki-Laki', 'Dusun Satu, Desa Beurawang, Kec. Jeumpa, Bireuen', 'Sudarman', 'Fathiyah', '81269608644', 'Karyawan swasta'),
(569, '1', '', '10173056', 'YASMIN ATHAMIMI', 'Perempuan', 'Jl. Laksamana Malahayati No.1, Desa Pulo Kiton, Kec. Kota Juang, Bireuen', 'Bahrumsyah', 'Ernawati', '85275303337', 'Wiraswasta'),
(570, '1', '', '10183067', 'AURA SALSABILA', 'Perempuan', 'BTN Keupula Indah, Geulanggang Gampong, Kec.Kota Juang Kab.Bireuen', 'Koharudin', 'Sri Maydelsa Yusuf, S.Pd', '85277225585', 'Wiraswasta'),
(571, '1', '', '10173003', 'AQEELA NAWAL FATHINA', 'Perempuan', 'Jl. Tgk Muda Lasen, Desa Mns. Blang, kec. Kota Juang, Bireuen', 'Mursal Ridha', 'Lindawati', '85260040405', 'PNS'),
(572, '1', '', '10173005', 'AZKA AL FATA', 'Laki-Laki', 'Jl. Tgk Imum Syik Mudalasin No. 11, Desa Mns. Blang, Kec. Kota Juang, Bireuen', 'Safriyady', 'Eka Junizar', '85260762888', 'Karyawan BUMN'),
(573, '1', '', '10173006', 'ATAYA EL RAFIF', 'Laki-Laki', 'Jl. Tgk Raja Blang, Dsn Babut Taqwa, Mns Tgk Digadong, Kec. Kota Juang, Bireuen', 'Azwar', 'Muaddah', '85260050553', 'PNS'),
(574, '1', '', '10173009', 'CARRICK CLASSICO', 'Laki-Laki', 'Keude Matang Glp. Dua, Kec. Peusangan, Bireuen', 'Feri', 'Lilis', '81376531838', 'Wirausaha'),
(575, '1', '', '10173010', 'DINAYRA PUTRI', 'Perempuan', 'Desa Mns. Dayah, Kec. Kota Juang, Bireuen', 'Dodi Irwansyah', 'Novita Astuti', '85277274790', 'Wiraswasta'),
(576, '1', '', '10173011', 'DINASTI ARADHANA NASUTION', 'Perempuan', 'Dusun Sejahtera, Gampong baro, kec. Kota Juang, Bireuen', 'Irpan NST', 'Fatmawati', '85260034709', 'TNI'),
(577, '1', '', '10173015', 'FATIH MURADI RUZIQ', 'Laki-Laki', 'Desa Cot Tarom Tunong, Kec. Jeumpa, Bireuen', 'Iqbal Hasri', 'Suniati', '85277246904', 'Polisi'),
(578, '1', '', '10173020', 'KAISAL KIRAM', 'Laki-Laki', 'Desa Mns. Capa, Kec. Kota Juang. Bireuen', 'Nasruddin', 'Eva Erlia', '85277558280', 'Wiraswasta'),
(579, '1', '', '10173023', 'KHANSA LUTHFYA INDAH', 'Perempuan', 'Jl. Kol Mohd Ali Basyah No. 05, Karang Rejo, Desa Bandar Bireuen, Kec. Kota Juang, Bireuen', 'Yusbiran', 'Mulyati', '85260323201', 'PNS'),
(580, '1', '', '10173025', 'MUHAMMAD LUTHFI', 'Laki-Laki', 'Desa Cot Keutapang, Kec. Jeumpa, Bireuen', 'Muhammad Taufiq', 'Dewi Maya Sari', '85277125260', 'Dokter'),
(581, '1', '', '10173026', 'MUHAMMAD HANIF', 'Laki-Laki', 'Desa Meunasah Tambo, Kec. Peudada, Bireuen', 'Muslim', 'Aina Sufiati', '85260113696', 'Security BRI, Unit Samalanga'),
(582, '1', '', '10173029', 'M. GHAISAN AL-AZZAM', 'Laki-Laki', 'Jl. Syik Mudalansin, Dusun Blang Raya, Desa Mns. Blang, Bireuen', 'Eddi Yuswadi', 'Suci Diana', '8116700607', 'Wiraswasta'),
(583, '1', '', '10173030', 'MUHAMMAD RAFAN UMAR', 'Laki-Laki', 'Keude Matang Glp. Dua, Kec. Peusangan, Bireuen', 'Umar Dhani', 'Syarifah Hanum', '81360006613', 'Dokter'),
(584, '1', '', '10173031', 'MUHAMMAD AQIL SYAUQI', 'Laki-Laki', 'Jl. Pendidikan No. 15, Desa Mns Dayah, Kec. Kota Juang, Bireuen', 'Alviandri', 'Vina Vatia', '85275878004', 'Karyawan swasta'),
(585, '1', '', '10173038', 'MUHAMMAD AQILSUJA', 'Laki-Laki', 'Desa Cot Tarom Tunong, Kec. Jeumpa, Bireuen', 'Rahmat', 'Milza Sari', '85277680090', 'Wiraswasta');
INSERT INTO `siswa` (`id_siswa`, `id_jenjang`, `id_kelas`, `nis_siswa`, `nama_siswa`, `jk_siswa`, `alamat_siswa`, `ayah_siswa`, `ibu_siswa`, `hp_siswa`, `kerja_siswa`) VALUES
(586, '1', '', '10173039', 'MIFZAL GUSTAV AZMI', 'Laki-Laki', 'Mns Tunong, Jl. Medan B. Aceh No. 5, Kec. Peudada, Bireuen', 'Ulul Azmi', 'Khaliza', '82363024436', 'PNs'),
(587, '1', '', '10173041', 'NAILA RAMADHANI', 'Perempuan', 'Desa Blang Bladeh, Kec. Jeumpa, Bireuen', 'Jailani', 'Sri Wardiana', '85221390521', 'PNS'),
(588, '1', '', '10173042', 'RAIZA FATIH ALNAZWAR', 'Perempuan', 'Aspol Karang Rejo, Kec. Kota Juang, Bireuen', 'Rahimansyah', 'Syaflizar', '85260524447', 'Polisi'),
(589, '1', '', '10173044', 'REYAN EL FACHRI', 'Perempuan', 'Desa Blang Cot Tunong, Kec. Jeumpa, Bireuen', 'Zulkhairi', 'Maria Ulfa', '82277717717', 'Wiraswasta'),
(590, '1', '', '10173045', 'RIFQA HUMAIRA', 'Perempuan', 'Desa Mns. Reuleut, Kec. Kota Juang, Bireuen', 'Mirzanur', 'Herdiana', '85373500981', 'Wiraswasta'),
(591, '1', '', '10173047', 'REVAN MAULANA', 'Laki-Laki', 'Dusun Kruet Mameh, Geudong Alue, Kec. Kota Juang, Bireuen', 'Faisal', 'Eliza Zuhra', '85261872179', 'Karyawan Swasta'),
(592, '1', '', '10173052', 'SUQIA RAHMAH', 'Perempuan', 'Desa Mns Pulo, Kec. Peudada, Bireuen', 'Mukhtar', 'Siti Aminah', '85358441517', 'PNS'),
(593, '1', '', '10173053', 'TSAQIF AL-WAFI', 'Perempuan', 'Jl. Karang Rejo No. 31, Desa Bandar Bireuen, Kec. Kota Juang, Bireuen', 'Eriek Julana Alda', 'Elly Fitriani', '85260740303', 'Wiraswasta'),
(594, '1', '', '10173054', 'ULFA KHAIRA FITRI', 'Perempuan', 'Asrama Kompi Bantuan Yonif 113/JS, Desa Bandar Bireuen, Kec. Kota Juang, Bireuen', 'Zulkifli', 'Lasnawati', '85260181831', 'TNI-AD'),
(595, '1', '', '10173055', 'VANESA LIVIANA VENI', 'Perempuan', 'Desa Mns. Capa, Kec. Kota Juang, Bireuen', 'Rudi Syahputra', 'Lili Suryani', '85358222220', 'Polisi'),
(596, '1', '', '10173057', 'YAZID AL - BUSTAMI', 'Perempuan', 'Jl. Sukma, Desa Cot Keutapang, Kec. Jeumpa, Bireuen', 'Mahrizal M Nur', 'Ratna Wati', 'tidak ada data', 'PNS'),
(597, '1', '', '10183002', 'MUHAMMAD FATHIN ARFA', 'Laki-Laki', 'Jl. T. Malem No. 6 Kommes, Desa meunasah Capa, Kec. Kota Juang, Kab. Bireuen', 'Zahrul Fuadi', 'Khairina', '811670294', 'PNS'),
(598, '1', '', '10183004', 'BALWA TAJUSA', 'Laki-Laki', 'Jl. Tgk Mustafa no. 23A, Desa Mns Blang, Kec. Kota Juang, Kab. Bireuen', 'Ulil Amri', 'Fitriani', '81360191448', 'Pegawai BUMN'),
(599, '1', '', '10183069', 'FARIZA DHEANDRA ZAHRA', 'Perempuan', 'Asrama Polres Bireuen', 'Joko Utomo, SH, SIK', 'FITRIA PUTRI AGUSTINA, Amd', '81390422009', 'Polri'),
(600, '1', '', '10183073', 'M. ALTHAF SYAHRIZAL', 'Laki-Laki', 'Gampong Baro Jl. Habib Puteh No 12C Bireuen\n\n', 'Dr. Syahrizal, Sp. THT - KL', 'Isnaq Mutia Amd', '811647326', 'PNS'),
(601, '1', '', '10183007', 'MUHAMMAD ASYRAF RAHFAN', 'Laki-Laki', 'Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Saifannur', 'Rahmiati', '85277958881', 'Karyawan Swasta'),
(602, '1', '', '10183008', 'KEIFA ARDILLA', 'Perempuan', 'Desa Juli Tambo Tanjong, Kec. Juli Kab. Bireuen', 'Jusfardi', 'Faqrah Mykela', '82369687527', 'Pegawai Bank'),
(603, '1', '', '10183009', 'MUBARAK ASKAFIA', 'Laki-Laki', 'Desa Menasah Alue, Kec. Peudada Kab. Bireuen', 'Astakari  Agani', 'Fitri Yani', '85260374923', 'Tehnisi'),
(604, '1', '', '10183012', 'AUFA MUNA', 'Perempuan', 'Paya Meuneng Peusangan Bireuen', 'Sayuti Adi Kesuma', 'Sri Suherna', '85372025678', 'Wiraswasta'),
(605, '1', '', '10183013', 'ZINOYA HILMIRA', 'Perempuan', 'Jl. Banda Aceh - Medan Desa MeunasahTeungoh Kec. Peudada Kab. Bireuen', 'Zulhilmi', 'Zahara Fona', '85277685553', 'PNS'),
(606, '1', '', '10183014', 'ZIFANA NAIRA LATISYA', 'Perempuan', 'Jl. Mayor Abdullah Yacob No. 61 Dusun Sejahtera Desa Pulo Ara Geudong Teungoh Kec. Kota Juang Kab. Bireuen', 'Zulfan', 'Khairul Husna', 'tidak ada data', 'Wiraswasta'),
(607, '1', '', '10183015', 'NADA NADHIFA', 'Perempuan', 'Desa Mns. Dayah Bireuen', 'Saiful Bahri', 'Linda Yatna', '85277142550', 'wiraswasta'),
(608, '1', '', '10183020', 'ADAM FAIZ', 'Laki-Laki', 'Jln. Medan - BandaTgk Syeh Umar dusun Tgk Mustafa desa mns blang kota juang bireuen', 'Martunis', 'Mursyidah', '8126908982', 'wiraswasta'),
(609, '1', '', '10183022', 'MUHAMMAD RIFAI', 'Laki-Laki', 'Juli Setuy Bireuen', 'Anwar', 'Susi Yanti', '8126931949', 'Wiraswasta'),
(610, '1', '', '10183023', 'MUHAMMAD RAZAN', 'Laki-Laki', 'Meunasah Blang Kota Juang Bireuen', 'Murdani', 'Muliawati', '85260321552', 'PNS'),
(611, '1', '', '10183024', 'RAFA KHAIRI ARKAN', 'Laki-Laki', 'Lhok Awe Teungoh Kec. Kota Juang Bireuen', 'Mulyadi Sabil', 'Vika Novita', '85296647001', 'Wiraswasta'),
(612, '1', '', '10183025', 'JASMINE NAURATUL FANNY', 'Perempuan', 'Jl. Medan - Banda Aceh Cot Keutapang Jeumpa Bireuen', 'Basiran', 'Hidayani Safari Zanna', '85296740036', 'Guru'),
(613, '1', '', '10183026', 'MUHAMMAD BIMA ALFAREZI', 'Laki-Laki', 'Asmil Kodim 0111 Blang Bladeh Jeumpa Bireuen', 'Agus Kurniawan', 'Zahniar', '85361150684', 'TNI-AD'),
(614, '1', '', '10183029', 'IZA NAZIRA', 'Perempuan', 'Glp. Payong Jeumpa Bireuen', 'Kamarullah', 'Julianti', '82368208664', 'Guru'),
(615, '1', '', '10183030', 'DESTINY CINTA RIZVIE', 'Perempuan', 'Cot Keutapang Jeumpa Bireuen', 'Syafrizal', 'Siti Alpiyah', '81260245204', 'PNS'),
(616, '1', '', '10183033', 'MIFZAL HAFIZ', 'Laki-Laki', 'Desa Cot Rabo Tunong Kec. Peusangan Bireuen', 'Afriadi', 'Epa Fitria', '85260042881', 'Polri'),
(617, '1', '', '10183037', 'MUNAYA KAMILA', 'Perempuan', 'Aspol Kota Juang Bireuen', 'Yusri', 'Ferina', '85207077354', 'Polri'),
(618, '1', '', '10183039', 'HAFIDH AL KIRAM', 'Laki-Laki', 'Cot Keutapang Jeumpa Bireuen', 'Zainal Efendi', 'Cut Risma Candra Dewi', '85277693002', 'Polri'),
(619, '1', '', '10183040', 'ZIAD MUBARRAK', 'Laki-Laki', 'Mns Blang Kota Juang Bireuen', 'M. Daud', 'Irwati', '81360587207', 'PNS'),
(620, '1', '', '10183041', 'CUT ADILA FARADINA', 'Perempuan', 'Desa Geulanggang Gampong Kota Juang Bireuen', 'Fakrurrazi', 'Karlina Dewi', '85260099146', 'PNS'),
(621, '1', '', '10183042', 'ABBAS RAFIUDDIN', 'Laki-Laki', 'BTN Kupula Indah Cot Gapu Kota Juang Bireuen', 'Muhammad Ari Syahputra', 'Cut Evita', '81167000121', 'Advokat'),
(622, '1', '', '10183043', 'MUHAMMAD FARIS MAULANA', 'Laki-Laki', 'Desa Cot Gadong Jeumpa Bireuen', 'Muntasir', 'Mahdalena', '85277681956', 'PNS'),
(623, '1', '', '10183044', 'FARHANATUL HAFIDHAH', 'Perempuan', 'Meunasah Reuleut Kota Juang Bireuen', 'Irmawan', 'Erna', '81269447021', 'PNS'),
(624, '1', '', '10183045', 'MUHAMMAD ZAFRIN AL GHIFARI', 'Laki-Laki', 'Geulanggang Gampong Kota Juang Bireuen', 'Andri Saputra', 'Iramayanti', '8116701187', 'PNS'),
(625, '1', '', '10183050', 'KEYSHA ATHA HUMAIRA', 'Perempuan', 'Dusun Kommes Mns. CApa Kota Juang Bireuen', 'Islamsyah', 'Desi Mehriani', '85361862707', 'Wiraswasta'),
(626, '1', '', '10183056', 'GHINAA AQIILAH', 'Perempuan', 'Cot Keutapang Jeumpa Bireuen', 'Badlisyah', 'Wardiah', '85261629480', 'Wiraswasta'),
(627, '1', '', '10183061', 'NIZHAM JIRATULLAH SARIZ', 'Laki-Laki', 'Mns Tgk Digadong Kota Juang Bireuen', 'Hendra Saputra', 'Yuyun Rizkiyani', '85277676767', 'Polri'),
(628, '1', '', '10183062', 'NAJWA ZHAAFIRAH CAESAR', 'Perempuan', 'Cot Trieng Bireuen', 'Badaruddin', 'Erlinawati', '85260187424', 'TNI-AD'),
(629, '1', '', '10183064', 'ATHARIZ RAFIIANDRA CHALIEF', 'Laki-Laki', 'Aspol, Polres Bireuen, Cot Buket Kec. Peusangan  Kab. Bireuen', 'Joko Kusumadinata', 'Dela Puspita Arini', '85310382006', 'Polri'),
(630, '1', '', '10183066', 'MUHAMMAD ALFI', 'Laki-Laki', 'Desa Cot Keutapang, kec. Jeumpa  Kab. Bireuen', 'Khairuddin Hasan', 'Nurjannah Daud', '85260535681', 'Jualan'),
(631, '1', '', '10183006', 'AMIRA NURUL FAZLIA', 'Perempuan', 'Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Fadli M. Jamil', 'Yasri Umaini', '81361184566', 'Wiraswasta'),
(632, '1', '', '10183010', 'YUSUF AL QARDHAWI', 'Laki-Laki', 'Jl. Bireuen-Takengon, KM. 2 No. 10 Juli Seutuy Bireuen', 'Mudhar Juli Saputra', 'Intan Maysarah', '8116708553', 'Wiraswasta'),
(633, '1', '', '10183011', 'JOLIN KOEMARDI', 'Laki-Laki', 'Jl. Mawar No. 36 Bireuen', 'Boerhan Koemardi', 'Susanni', '81373087999', 'Wiraswasta'),
(634, '1', '', '10183016', 'MUHAMMAD DWI NOVIAN', 'Laki-Laki', 'Jangka Bireuen', 'Yossafat Yoga Ibrahim Muhammad', 'Muryani', 'tidak ada data', 'TNI AD'),
(635, '1', '', '10183017', 'AERILYN BELLVANIA', 'Perempuan', 'Asrama Polisi Karang Rejo Bandar Bireuen Kota Juang Bireuen', 'Eri Junizar', 'Sutari', '85262034300', 'polisi'),
(636, '1', '', '10183018', 'ZULFIKRI', 'Laki-Laki', 'Cot Keutapang Jeumpa Bireuen', 'Muhammad Taufiq', 'Dewi Maya Sari', '85277125260', 'Wiraswasta'),
(637, '1', '', '10183019', 'BENAZIR ZAHIRAH TAUFIQ', 'Laki-Laki', 'Simp. 4 Beurawang. Jln. M. TawiDusun 2 Cinta Makmur Cot Trieng Kuala Bireuen', 'Taufiq', 'Asrita', '8126923703', 'Pegawai swasta'),
(638, '1', '', '10183021', 'MUHAMMAD ADIL', 'Laki-Laki', 'Juli Cot Mesjid Bireuen', 'Mulia Darma', 'Salma Ismail', '85277737187', 'PNS'),
(639, '1', '', '10183027', 'FARIZ ASYRAF', 'Laki-Laki', 'Cot Rabo Tunong Peusangan Bireuen Aceh', 'Muhammad Sulaiman', 'Anna Sofianti', '81264803828', 'Karyawan BUMN'),
(640, '1', '', '10183028', 'PRAGATA ZHAFIF MAHAWIRA', 'Laki-Laki', 'Meunasah Dayah Kota Juang Bireuen', 'M. Nur Choliq', 'Mega Munawaroh', '85361508650', 'TNI-AD'),
(641, '1', '', '10183031', 'SHAQUILLE ARSYADIWA FAWWAZ', 'Perempuan', 'Mns. Tgk Digadong Kota Juang Bireuen', 'Novi Kenny Yandi', 'Santi Windiya Puspitasari', '81377177887', 'Wiraswasta'),
(642, '1', '', '10183032', 'MUHAMMAD AL FARASYI', 'Laki-Laki', 'Dusun Teratai Desa Geulanggang Baro Kota Juang Bireuen', 'Jaswadi', 'Muna Sarah Tursina', '85260809970', 'Wiraswasta'),
(643, '1', '', '10183034', 'AIDILA NATASYA', 'Perempuan', 'Dusun Masjid Buket Teukuh Kota Juang Bireuen', 'Iskandar Muda', 'Zahara', '82364545006', 'Wiraswasta'),
(644, '1', '', '10183035', 'MUHAMMAD ALIF IZAZ', 'Laki-Laki', 'Mns. Capa Kota Juang Bireuen', 'Yusli Annur', 'Gita Andeva', '8116708116', 'Wiraswasta'),
(645, '1', '', '10183036', 'WARDATUL ULAA', 'Perempuan', 'Dususn blang raya mns. blang kota juang bireuen', 'Saiful Amri', 'Eliana', '85260152142', 'Karyawan Swasta'),
(646, '1', '', '10183038', 'QAIREEN SHAHQUITTA', 'Perempuan', 'Mns Tgk Digadong Kota Juang Bireuen', 'Adi Saska Jalil', 'Isrinawati', '85260382451', 'Karyawan Swasta'),
(647, '1', '', '10183046', 'IZZAH BADRINA HASRA', 'Perempuan', 'Blang Cot Tunong Jeumpa Bireuen', 'Haswandi', 'Rahmawati', '85360061213', 'PNS'),
(648, '1', '', '10183047', 'FATHIR SYAWALUL RIZAL', 'Laki-Laki', 'Geulanggang Baro Kota Juang Bireuen', 'Safwan Rizal', 'Martinah', '85260713004', 'Polri'),
(649, '1', '', '10183048', 'RAISA ZHAFIRA', 'Perempuan', 'Dusun Jeumpa Puteh Juli Seutuy Bireuen', 'Budi Razianur', 'Novi Putri', '8126902436', 'Wiraswasta'),
(650, '1', '', '10183049', 'INAYYAH FAUZIA HABIBIE', 'Perempuan', 'Meunasah Blang Kota Juang Bireuen', 'Habibie', 'Rohana', '8116711979', 'Karyawan BUMN'),
(651, '1', '', '10183051', 'MAHMOUD RIZIQ ALBANNA', 'Laki-Laki', 'Mns. Tgk Digadong Kota Juang Bireuen', 'MuhammadRavi', 'Muliyawati', '85277258777', 'Wiraswasta'),
(652, '1', '', '10183052', 'MUHAMMAD AUFA', 'Laki-Laki', 'Mns. Tgk Digadong Kota Juang Bireuen', 'Imran MD', 'Rita Lestamiana', '8116701067', 'PNS'),
(653, '1', '', '10183053', 'AUREN LEODRA UTAMA', 'Perempuan', 'Dusun Cureh Barat Kota Juang Bireuen', 'Hendrik Utama', 'Sanni', '85262341333', 'Mekanik '),
(654, '1', '', '10183054', 'CHE THARA ALAMANDA', 'Perempuan', 'Mns. Dayah Kota Juang Bireuen', 'Sabaruddin Abdullah', 'Ida Iryanti', '85270834043', 'Wiraswasta'),
(655, '1', '', '10183055', 'SAIF ASHRAF', 'Laki-Laki', 'Desa Lancok Pante Ara Kuala Bireuen', 'Mursal', 'Erawanti', '85277695147', 'Wiraswasta'),
(656, '1', '', '10183057', 'NADHA FILZAH DAYAHNA', 'Perempuan', 'Mns. Dayah Kota Juang Bireuen', 'Mahyuddin', 'Ningsih Shalatiah', '81375622877', 'Wiraswasta'),
(657, '1', '', '10183058', 'LUXVI LATIVA', 'Perempuan', 'Kuta Baro Kuala Bireuen', 'Ridwan', 'Idawahyuni', '85277569509', 'Wiraswasta'),
(658, '1', '', '10183059', 'ATHALLAH ABIYU SIDDIK', 'Laki-Laki', 'Desa Buket Teukuh Kota Juang Bireuen', 'Jafar Siddik', 'Dwi Wulandary', '85296018382', 'Wiraswasta'),
(659, '1', '', '10183060', 'FRANKLIN RAU', 'Laki-Laki', 'KOmmes Kota Juang Bireuen', 'Mukhtar Nasri', 'Rita', '85362873399', 'Wiraswasta'),
(660, '1', '', '10183063', 'MYIESHA NAFEEZA AMIRA', 'Perempuan', 'Cot Keutapang Jeumpa Bireuen', 'Amiruddin', 'Adnen Nurdin', '82369770171', 'PNS'),
(661, 'id_jenjang', 'id_kelas', 'nis_siswa', 'nama_siswa', 'jk_siswa', 'alamat_siswa', 'ayah_siswa', 'ibu_siswa', 'hp_siswa', 'kerja_siswa'),
(662, 'id_jenjang', 'id_kelas', 'nis_siswa', 'nama_siswa', 'jk_siswa', 'alamat_siswa', 'ayah_siswa', 'ibu_siswa', 'hp_siswa', 'kerja_siswa'),
(663, '1', '59', '10193006', 'ABDUL ARIQIN RAMADHANA', 'Laki-Laki', 'Asmil Kodim 0111, Desa Blangbladeh, Kec. Jeumpa, Kab. Bireuen', 'Denny Yulindra', 'Sri Wahyuni', '82277122818', 'TNI'),
(664, '1', '59', '10193009', 'AFIQA ALTHAFUNNISA', 'Perempuan', 'Desa Mns. Blang, Kec. Kota Juang, Kab. Bireuen', 'Khatibbullah', 'Efi Rosdiana', '85260555051', 'Wiraswasta'),
(665, '1', '59', '10193063', 'AFKARRAZIQ ZHAKI HANAN RAMBE', 'Laki-Laki', 'Asrama Kodim 0111 Blangbladeh, Kec. Jeumpa, Kab. Bireuen', 'Zainal Abidin Rambe S. Sos', 'Ika Pratiwi Nasution', '0852 4722 1351', ''),
(666, '1', '59', '10193001', 'ALYA SYARIFA FAKHRI', 'Perempuan', 'Jl. Medan-Banda Aceh Desa Geulanggang Teungoh, Kec. Kota Juang, Kab. Bireuen', 'Heriadi', 'Nuriah', '8116710477', 'Dokter'),
(667, '1', '59', '10193012', 'AMIRA CALISTA', 'Perempuan', 'Desa Mns Teungoh km. 5, Kec. Juli, Kab. Bireuen', 'Seniman', 'Julia', '81362249462', ''),
(668, '1', '59', '10203002', 'ASYRAFFA DIVIAN', 'Laki-Laki', 'Jl. T. Dipulo No. 55 Desa Meunasah Gampung Baru', 'Andi Kurniadi, S.E', 'Novi Herliyanti, S.ST', '082363829465', ''),
(669, '1', '59', '10183068', 'ATHAYA YUDHA ANORAGA', 'Laki-Laki', 'Jl. Gayo Km. 7 Desa Blang Keutumba, Kec. Juli, Kab. Bireuen', 'Sonny Priyandarto', 'Devy Tridiyanti', '81362000654', 'TNI'),
(670, '1', '59', '10183068', 'AUFA RINA', 'Perempuan', 'Dusun Tgk. Lampucok, Desa Cot Rabo Tunong, Kec. Peusangan, Kab. Bireuen', 'Zahrul', 'Leni', '82370516454', ''),
(671, '1', '59', '10193018', 'CHARISE COLLEN', 'Perempuan', 'Jl. Almuslim, Matang Glp. Dua, Kec. Peusangan, Kab. Bireuen', 'Feri', 'Lilis', '81376531838', 'Wirausaha'),
(672, '1', '59', '10193020', 'FAIZA ALYA', 'Perempuan', 'Jl. Gayo Km. 6, Desa Blang Keutumba, Kec. Juli, Kab. Bireuen', 'Hasbi Hamzah', 'Asrita', '85385133550', ''),
(673, '1', '59', '10193023', 'GIBRAN PUTRA RAHADIAN', 'Laki-Laki', 'Dusun Baro, Juli Tambo Tanjong, Kec. Juli, Kab. Bireuen', 'Andi Rahadian', 'Rosinta', '85260089770', 'Wiraswasta'),
(674, '1', '59', '10193026', 'KENZHO FAZILAH', 'Laki-Laki', 'Dusun Sejahtera, Desa Pulo Ara Geudong Teungoh, Kec. Kota Juang, Kab. Bireuen', 'Milza Fazilah', 'Annike Astria Harahap', '85270333242', ''),
(675, '1', '59', '10193027', 'KHAIRANNAS', 'Laki-Laki', 'Desa Cot Keutapang, Kec. Jeumpa Kab. Bireuen', 'M Yusuf', 'Muna Zulva', '82368750005', 'Wiraswasta'),
(676, '1', '59', '10183067', 'MIKHAILA CARISSA AZ-ZAHRA', 'Perempuan', 'Jl. Melur No.25 B, Desa Pulo Ara, Geudong Teungoh, Kec. Kota Juang, Kab. Bireuen', 'Munirul Ula', 'Raden Siti Sepfienia Lasmiufianti', '82367818878', ''),
(677, '1', '59', '10193031', 'MOEDA GHAZY AZMI', 'Laki-Laki', 'Desa Mns. Tunong, Kec. Peudada, Kab. Bireuen', 'Ulul Azmi', 'Khaliza', '82363024436', 'PNS'),
(678, '1', '59', '10193029', 'MUHAMMAD AUFA THUFAILA', 'Laki-Laki', 'Dusun Bahagia, Pulo Ara, Kec. Kota Juang, Kab. Bireuen', 'Alviandri', 'Vina Vatia', '85262840031', ''),
(679, '1', '59', '10193032', 'MUHAMMAD FATHUR AZZAM', 'Laki-Laki', 'Jl. Ramai No. 7, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Faisal', 'Mardalenni', '81361209168', 'Wiraswasta'),
(680, '1', '59', '10193034', 'MUHAMMAD NASUHA', 'Laki-Laki', 'Desa Mns Blang, Kec. Jeumpa, Kab. bireuen', 'Andri Saputra', 'Sri Devi', '85260638866', ''),
(681, '1', '59', '10193035', 'MUHAMMAD RAFA KHAIRUL AZAM', 'Laki-Laki', 'Desa Lhok Awe-awe, Kec. Kuala, Kab. Bireuen', 'Bustami', 'Suhera', '82272281622', ''),
(682, '1', '59', '10193036', 'MUHAMMAD RAISSYAFIQ', 'Laki-Laki', 'Jl. Sp Jurong Lhok No.2, Desa Pulo Kiton, Kec. Kota Juang, Kab. Bireuen', 'Sayuti', 'Fitri Zuhariaty', '811674052', ''),
(683, '1', '59', '10193037', 'MUHAMMAD RASYA ATHAYA', 'Laki-Laki', 'Asrama Polisi Karang Rejo, Kec. Kota Juang, Kab. Bireuen', 'Kamal', 'Siti Aisah', '85277495151', ''),
(684, '1', '59', '10183071', 'MUHAMMAD UZHAIR', 'Laki-Laki', 'Dusun Tgk Tuha, Desa Blang Cot Tunong, Kec. Jeumpa, Kab. Bireuen', 'Muhammad Fadil', 'Azryaningsih', '85260348286', ''),
(685, '1', '59', '10183067', 'NAJWA AUFA SHIDQIA', 'Perempuan', 'Dusun Teladan, Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Akmal Keumari', 'Kasummah', '81360541884', ''),
(686, '1', '59', '10193042', 'NAZILATUL MAGHFIRAH', 'Perempuan', 'Desa Cot Mesjid, Kec. Juli, Kab. Bireuen', 'Imran', 'Cut Hafsah', '82362165353', ''),
(687, '1', '59', '10193048', 'REIKA NATHANIA', 'Perempuan', 'Jl. Mawar/ T. Nyak Arief, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Riki', 'Marinini', '85265207979', ''),
(688, '1', '59', '10193056', 'TASMIRA QALBY', 'Perempuan', 'Jl. Meurak 2 No. 07, Desa Cot Meurak, Kec. Juli, Kab. Bireuen', 'Mubarik Juli Saputra', 'Inda Sri Mulyani', '8126931753', 'PNS'),
(689, '1', '59', '10193057', 'WIRA ADLY PRATAMA', 'Perempuan', 'Jl. Medan-B.Aceh No. 165 Desa Geulanggang Gampong, Kec. Kota Juang, Kab. Bireuen', 'Muhammad Husaini', 'Kasma Yulidar', '85218743380', 'Wiraswasta'),
(690, '1', '60', '10193007', 'ABDULLAH BAHAUDDIN HASJMY', 'Laki-Laki', 'Dusun Al Muslim, Desa Paya Cut, Kec. Peusangan, Kab. Bireuen', 'Fahmi Saputra', 'Meriana', '8116706347', ''),
(691, '1', '60', '10193008', 'ADAM FATA HAFUZA', 'Laki-Laki', 'Jl. Ramai Toko My Hijab, Kec. Kota Juang, Kab. Bireuen', 'Fadhil Husnu', 'Maya Sari', '85260197086', ''),
(692, '1', '60', '10193013', 'ASYRAF NAUFAL GHIFARI', 'Laki-Laki', 'Dusun Panjo, Desa Geulumpang Payong, Kec. Jeumpa, Kab. Bireuen', 'M Akhyar', 'Rahmi Meutia', '8116704847', ''),
(693, '1', '60', '10193001', 'ATHAYA YUDHIS ARADHANA', 'Perempuan', 'Desa Blang Keutumba, Kec. Juli, Kab. Bireuen', 'Sonny Priyandarto', 'Devy Tridiyanti', '85277725113', ''),
(694, '1', '60', '10193017', 'AZZAM ALFA RIZQI', 'Laki-Laki', 'Jl. Veteran No. 1-A Cot Gapu Kec. Kota Juang, Kab. Bireuen', 'Khairul Fuadi', 'Putrihayati', '8126486346', ''),
(695, '1', '60', '10193019', 'FAIHA AQSA SHAFIYA', 'Perempuan', 'Dusun Lagang, Desa Geulanggang Teungoh, Kec. Kota Juang, Kab. Bireuen', 'Safwan', 'Vina Rhimandiani Hataul', '8116708316', ''),
(696, '1', '60', '10193021', 'FAYYADH AZZUFAR', 'Laki-Laki', 'Jl. Veteran No. 6 Dusun Utara, Desa Cot Gapu, Kec. Kota Juang, Kab. Bireuen', 'Sulaimannur', 'Murniati', '811671240', ''),
(697, '1', '60', '10193022', 'FAZKIA NAURA ANINDYA', 'Perempuan', 'Desa Mns. Dayah, Kec. Kota Juang, Kab. Bireuen', 'Marwan', 'Irni Aryani', '85277801975', ''),
(698, '1', '60', '10193024', 'HAFIZA KHAIRA LUBNA', 'Perempuan', 'Asmil Kompi Bantuan, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'Ahmad Solihin', 'Safrida', ' -', ''),
(699, '1', '60', '10193060', 'HAIKAL FIQRI', 'Laki-Laki', 'Toko Feri Jaya Motor, Desa Mns. Blang, Kec. Kota Juang, Kab. Bireuen', 'Feriadi', 'Miftahul Jannah', '081269536969', ''),
(700, '1', '60', '10193025', 'HAYDAR JAVIER EL GHAZZY', 'Laki-Laki', 'BTN Kupula Indah, Desa Geulanggang Gampong, Kec. Kota Juang, Kab. Bireuen', 'Rudi Wahyudi', 'Meytha Mandasari', '', ''),
(701, '1', '60', '10203083', 'KENDRA NAROTTAMA FIKY HIDAYAT', 'Laki-Laki', 'Polres Bireuen', 'Taufik Hidayat', 'Okky Wulan sari', '', ''),
(702, '1', '60', '10193028', 'M FATHAN HAYFA', 'Laki-Laki', 'Lr. Amal, Kp Baro, Kec. Kota Juang, Kab. Bireuen', 'Jumiadi', 'Safrina', '85213271779', ''),
(703, '1', '60', '10193064', 'MUHAMMAD FATHAN AL GHIFARI', 'Laki-Laki', 'Jalan Jurong Lhok Desa Damai Pulo Kiton Kec. Kota Juang Kab. Bireuen', 'Syahril Rusli', 'Adhe Winata Risa', '0852 8803 0330', ''),
(704, '1', '60', '10193033', 'MUHAMMAD KAMIL FAISYA', 'Laki-Laki', 'Desa Cot Keutapang, Kec. Jeumpa, Kab. Bireuen', 'Khairil', 'Nurhafni', '82275166540', ''),
(705, '1', '60', '10193040', 'NASYIFA AYARA', 'Perempuan', 'Dusun Makmur, Desa Gampong Baro, Kec. Kota Juang, Kab. Bireuen', 'Safrizal', 'Sari Dewi', '81360081817', ''),
(706, '1', '60', '10193041', 'NAWAL AZKA', 'Laki-Laki', 'Aspol Karang Rejo, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'M Ichsan', 'Evi Eliza', '85277491931', ''),
(707, '1', '60', '10193043', 'PUTROE AZIZIA', 'Perempuan', 'Kompleks Puskesmas Jeumpa, Desa Cot Bada, Kec. Jeumpa, Kab. Bireuen', 'Phonna Ridha', 'Leni Ramadhan', '81269990266', ''),
(708, '1', '60', '10183071', 'RAFQA AZKA', 'Laki-Laki', 'Juli Km.5, Desa Juli Tgk. Dilampoh, Kec. Juli, Kab. Bireuen', 'Nurdin', 'Dahliana', '811676344', ''),
(709, '1', '60', '10193046', 'RAHIL AZKIA FARIHA', 'Perempuan', 'Desa Juli Seupeung, Kec. Juli, Kab. Bireuen', 'Turhamun', 'Yuliana', '85260577460', ''),
(710, '1', '60', '10193047', 'RAYYAN UBAYDILLAH', 'Laki-Laki', 'Dusun Kuta Mamplam, Desa Teupok Baroh, Kec. Jeumpa, Kab. Bireuen', 'Mukhlisin', 'Rahmawati', '85260875634', ''),
(711, '1', '60', '10193049', 'SAHAFA JALIA BR HASIBUAN', 'Perempuan', 'Jl. Medan-B.Aceh No. 710, Desa Bandar Bireuen, Kec. Kota Juang, Kab. Bireuen', 'AQDAR LATIEFSYAH HSB', 'RENIA S', '', ''),
(712, '1', '60', '10193050', 'SAID MARDHATILLAH', 'Laki-Laki', 'Kuta Trieng, Geudong-Geudong, Kec. Kota Juang, Kab. Bireuen', 'Dedi Ferdiansyah', 'Murnani', '85270512000', ''),
(713, '1', '60', '10193051', 'SHARENNA ALDANISHA', 'Perempuan', 'Asrama Polisi Karang Rejo, Kec. Kota Juang, Kab. Bireuen', 'Muharris', 'Mimi Sandela', '81377173999', ''),
(714, '1', '60', '10193053', 'SYAAKIRAH AZZAHRA', 'Perempuan', 'Lr. Hijrah No. 43 Desa Kuta Baro, Kec. Kuala, Kab. Bireuen', 'Muchyid', 'Maghfirah', '85260851204', ''),
(715, '1', '60', '10193052', 'SYAFIQAH APRILIA MAHARANI', 'Perempuan', 'Asrama Kodim 0111 Blangbladeh', 'Syawaluddin', 'Devi Fitriani', '81395046319', ''),
(716, '1', '60', '10193054', 'SYAKIRAH NURUL IZZAH', 'Perempuan', 'Jl. T.Muda Lasen, Desa Mns.Dayah, Kec. Kota Juang, Kab. Bireuen', 'Iskandar', 'Vera Maulinda', '81231144424', ''),
(717, '1', '60', '10193055', 'T M HANIF AL-QARASYI', 'Laki-Laki', 'Jl. AR. Ahmadi Lr. Mns. Tuha, Dusun Said', 'T M YUSUF', 'MAULIDA ULFA R', '8116705283', ''),
(718, '1', '57', '10203028', 'AINA CALISTA SYAHIRA', 'Perempuan', 'Desa Geudong Sagoe blok sawah, Desa Geudong Geudong, Kecamatan Kota Juang, Bireuen', 'Amar Agensah', 'Mufita Septaria Mufti', '08116703996', 'PNS'),
(719, '1', '57', '10203019', 'DIWA ANUGRAH', 'Laki-Laki', 'Ds.geulanggang gampong Kec.kota juang Kab.Biruen', 'Fahrizal', 'Laura feniza S.pd.', '085262632634', ''),
(720, '1', '57', '10203087', 'HUMAIRA AZKIATUN NAJA', 'Perempuan', 'MEUNASAH TAMBO, PEUDADA', 'MUSLIM', 'AINA SUFIATI', '085260609420', 'Pedagang'),
(721, '1', '57', '10203086', 'INAYATUL LATIFAH', 'Perempuan', 'Juli cot meurak\n', 'Muhammad Yanis', 'Gema Tarianda', '085220373773', 'Karyawan Swasta'),
(722, '1', '57', '10203022', 'KEENAND ATHARKHALIF', 'Laki-Laki', 'Ds Bele Aron , Desa Menasah Blang , Bireuen', 'Anwar', 'Hayatul Wardani', '085360454455', 'WIRASWASTA'),
(723, '1', '57', '10203088', 'KHADZIYA NISRINA INDAH', 'Perempuan', 'Jln.Kol Mohd Alibasyah No.5,Karang Rejo,Bandar Kota,Kota Juang,Bireuen\n', 'Andi Yusbiran', 'Mulyati', '085260323201', 'PNS'),
(724, '1', '57', '10203089', 'LUTHFATUN NAJA', 'Perempuan', 'Juli Cot Meurak\n', 'Muhammad Yanis', 'Gema Tarianda', '085220373773', 'Karyawan Swasta'),
(725, '1', '57', '10203030', 'M. FAIREL ATTHARIZ CHALIEF', 'Laki-Laki', 'Jl Buket Teukuh Glg Baro Kec Kota Juang Bireuen', 'Sudirman ST', 'Renny Pramita S. Si', '085260000528', 'KARYAWAN SWASTA'),
(726, '1', '57', '10203023', 'MUHAMMAD ABIDZAR AL GHIFARI', 'Laki-Laki', 'Asrama polisi bireuen', 'Safrizal', 'Evi eliana', '081360208004', 'POLRI'),
(727, '1', '57', '10203027', 'MUHAMMAD ALFATIH', 'Laki-Laki', 'Cot keutapang', 'Syeh Mustafa Kamal', 'Rita Zahara', '085260316728', 'Karyawan Swasta'),
(728, '1', '57', '10203025', 'MUHAMMAD BILAL GHUFFRAN ALKAUTSAR', 'Laki-Laki', 'Pulo ara', 'Eka saputra', 'Lusiana', '081360000998', 'WIRAUSAHA'),
(729, '1', '57', '10203026', 'MUHAMMAD FATA', 'Laki-Laki', 'Bireuen meunasah blang', 'Reza wahyudi', 'Lisnawati', '085360098338', 'PETANI'),
(730, '1', '57', '10203021', 'MUHAMMAD FIRHAN', 'Laki-Laki', 'Blang bladeh', 'Jafaruddin', 'Juliani', '082310140785', 'WIRASWASTA'),
(731, '1', '57', '10203090', 'MUHAMMAD NABIL FAYADH', 'Laki-Laki', 'DESA BIREUEN MNS.REULET\n', 'JULFIKAR, SP', 'PUTRI INDRI SARI, S.Kom', '085261175667', 'PNS'),
(732, '1', '57', '10203091', 'NAFISA ZUHRA', 'Perempuan', 'Desa Mns Blang Bireuen\n', 'Affandi', 'Husna', '085260609420', 'PNS'),
(733, '1', '57', '10203020', 'NAUFAL AL KHALIFI', 'Laki-Laki', 'Jl. Lancok Desa Cot U sibak, dsn Keutapang kec. kuala kab. Bireuen', 'Armiadi S.pd', 'Rina Marlina', '082275730297', 'PNS'),
(734, '1', '57', '10203029', 'PUTROE HANIFAH', 'Perempuan', 'Jl. Tgk Di Cot Jrat Gampong Bireuen Meunasah Reuleut Kecamatan  Kota Juang Kabupaten Bireuen ', 'Azhari', 'Siti Sabariah Cut', '08113211936', 'PNS'),
(735, '1', '57', '10203092', 'RAJWA SALIHA', 'Perempuan', 'Jl. Gajah No. 87 Pulo Ara\n', 'Mohammad Isnaeni, ST', 'dr. Irike Ayumi, M.Ked(Ped), Sp.A', '085261520000', 'WIRASWASTA'),
(736, '1', '57', '10203024', 'RASYA GIBRAN', 'Laki-Laki', 'Mns Gadong', 'Rudy Chandra', 'Radhiatus Suraiya', '085260638000', 'POLRI'),
(737, '1', '57', '10203031', 'SAILA SAVAIRA', 'Perempuan', 'MEUNASAH BLANG', 'YUSRIZAL', 'CHAIRUNA', '085261677737', 'WIRASWASTA'),
(738, '1', '57', '10203093', 'SAYED JIBRIL HADDAD', 'Laki-Laki', 'Blok E 40 Komplek BTN Kupula Indah Bireuen\n', 'Sayed Farid Amroji', 'Syarifah Fitria', '082267288044', 'PNS'),
(739, '1', '57', '10203094', 'SYAMMIL KHALID ASLAM', 'Laki-Laki', 'Ds. Geulanggang Gampong Kec.Kota Juang Kab. Bireuen\n', 'Chandra Nurmansyah', 'Fitri Arianza', '085261402695', 'Karyawan Swasta'),
(740, '1', '57', '10203018', 'TIJAN FATIN SAHIRA', 'Perempuan', 'Desa Geudong - Geudong, Bireuen', 'Faisal', 'Meutia', '081264397771', 'WIRASWASTA'),
(741, '1', '57', '10203095', 'TSURAYYA KHAYYIRAH', 'Perempuan', 'Jalan mesjid dusun kuta treng desa geudong geudong kec. kota juang kab. bireuen\n', 'Ari Putra', 'Husna', '085296127535', '085296127535'),
(742, '1', '58', '10203047', 'ABIDZAR AL FARISKI', 'Laki-Laki', 'Desa kuta baro Kec. Kuala\n', 'Herry kusuma', 'Sri Wahyuli, Amd. Keb', '085260006361', 'POLRI'),
(743, '1', '58', '10203043', 'ALVARO GRAVIEL KOSIDIN', 'Laki-Laki', 'Jln. Ramai No. 26 Bireuen\n', 'Eddie Kosidin', 'Gustinawati', '085261671879', 'WIRAUSAHA'),
(744, '1', '58', '10203038', 'ATTALA SHAFARAZ', 'Laki-Laki', 'Lorong Durian, Kampung Baru. Bireuen', 'Dede Wahyudi', 'Titin Sumarni', '08126020291', 'PNS'),
(745, '1', '58', '10203035', 'AURORA PUTRI ZEHERLY', 'Perempuan', 'Meunasah Reuleut Bireuen', 'Faisal Zaherly, SE', 'Fitriani, SE. MSM', '08116707376', 'PNS'),
(746, '1', '58', '10203037', 'CUT ANISA LIDIYA ', 'Perempuan', 'Reuleut', 'Teuku Noval Harid', 'Rahmaniah', '085294972970', 'WIRASWASTA'),
(747, '1', '58', '10203033', 'CUT ANNISA FAIHA', 'Laki-Laki', 'Meunasah Capa', 'Aulia Rachmat', 'Fitri Wahyuni', '08116705574', 'WIRASWASTA'),
(748, '1', '58', '10203041', 'CUT LUTHFIA QATRUNNADA', 'Perempuan', 'Gampong Juli Meunasah Tambo Kecamatan Juli Kabupaten Bireuen', 'Teuku Muhammad Hanis, SE', 'Juliya Funna, SE', '085277932626', 'PNS'),
(749, '1', '58', '10203039', 'FAYIZ ARKAN', 'Laki-Laki', 'Desa mns Dayah dusun seulanga kec.kota juang kab. Bireuen', 'Taufik Muhajar', 'Helma', '082294705618', 'POLRI'),
(750, '1', '58', '10203055', 'ISYATUN ASRIAH', 'Laki-Laki', 'Meunasah Reuleut', 'IRMAWAN', 'ERNA', '081269447021', 'GURU'),
(751, '1', '58', '10203054', 'KAISAR RAKA AL ISLAM', 'Laki-Laki', 'Jalan Meurak III Desa Juli Cot Meurak Kecamatan Juli Kabuparen Bireuen Provinsi Aceh\n', 'Muhammad Husni saputra', 'ERIANTI', '08116706962', 'KARYAWAN BUMN'),
(752, '1', '58', '10203050', 'KHALIS SAFNI', 'Laki-Laki', 'Blangcot tunong Bireuen\n', 'H. Saiful Bahri', 'Hj.Sri Murniyanti', '082360614320', 'WIRAUSAHA'),
(753, '1', '58', '10203052', 'M. FATIH PUTRA SHAFI NASUTION', 'Laki-Laki', 'Poskesdes pulo kiton, bireuen\n', 'Fiqi ramadhan syahputra', 'Dian herisa', '085260704107', 'PNS'),
(754, '1', '58', '10203051', 'M. ZHAFRAN MUAZ', 'Laki-Laki', 'Desa Geulanggang Baro, Kec. Kota Juang, Kab. Bireuen, Prov. Aceh\n', 'Mukhlis', 'Nurhilza', '08116709646', 'Karyawan Swasta'),
(755, '1', '58', '10203042', 'MUHAMMAD AL GHAZALI', 'Laki-Laki', 'Cureh Geulanggang Gampong', 'Azwir', 'Nuraini', '082230165598', 'WIRASWASTA'),
(756, '1', '58', '10203044', 'MUHAMMAD SATTAR', 'Laki-Laki', 'Jl.Kol Ali Basyah Gampong Baro, Bireuen\n', 'Mulkan Julisaputra', 'drg.Mulyana M.K.M', '082370509091', 'WIRASWASTA'),
(757, '1', '58', '10203040', 'MUHAMMAD TEUNGKU RIZAL AVIVAN', 'Laki-Laki', 'Menasah releut', 'Kafidin', 'Herawati', '082366445156', 'WIRASWASTA'),
(758, '1', '58', '10203045', 'NADINE SHAFIYAA', 'Perempuan', 'Jln medan- b.aceh, desa mon eungkot, keude matang glumpang dua, kec peusangan, kab bireuen aceh\n', 'dr. Umar dhani SpOG', 'dr. Syarifah hanum M.Kes', '08116707513', 'DOKTER'),
(759, '1', '58', '10203032', 'RALINE AL KHAIRA', 'Laki-Laki', 'Jl. Sultan Iskandar Muda No.17 Bireuen Meunasah Blang, Kota Juang - Bireuen', 'Khairul', 'Ferra Azis', '08116709586', 'PNS'),
(760, '1', '58', '10203049', 'RIFYAL ABIYYU IFFAT', 'Laki-Laki', 'Desa Abeuk Budi, kec. Juli, kab. Bireuen\n', 'Faisal Julianto', 'Siti Aima', '085260948718', 'WIRASWASTA'),
(761, '1', '58', '10203036', 'SYIFA THALITA ZAHRA', 'Perempuan', 'Jl.Bengkel no.15 Dusun Adil Kp.Baru Kec Kota Juang Bireuen', 'Benny El Harris', 'Herita Auliana Amd Keb', '085261333230', 'POLRI'),
(762, '1', '58', '10203053', 'SYUJA BASYSYAR', 'Laki-Laki', 'Mns.capa\n', 'Ridwan Daud', 'Agustilizar', '085297020358', 'WIRASWASTA'),
(763, '1', '58', '10203048', 'TEUKU RAJA ALFATIH', 'Laki-Laki', 'Geulumpang Payong\n', 'Teuku Johan', 'Herwindayani', '085260120019', 'POLRI'),
(764, '1', '58', '10203034', 'ZAHIYA HUMAIRA', 'Perempuan', 'Desa cot gapu jln.veteran no.6', 'Darkasyi', 'Asriany nur', '085276110100', 'WIRASWASTA'),
(765, '1', '58', '10203046', 'ZAHRATUL HUMAIRA', 'Laki-Laki', 'Geulumpang payong\n', 'Mukhtar', 'Nazirah', '085260144380', 'PNS'),
(766, '1', '57', '10203058', 'ARIFAL HAQQI', 'Laki-Laki', 'Bireuen mns blang. Kec kota juang\n', 'FADLI ', 'RAHMA LIA', '085277560500', 'BUMN'),
(767, '1', '57', '10203078', 'ARKAN ALFARIZI', 'Laki-Laki', 'Desa Geulanggang Baro Kec.Kota Juang Kab.Bireuen\n', 'Ambia', 'Afnidar', '081360166889', 'POLRI'),
(768, '1', '57', '10203059', 'ATIKA ZAHRA RATIFA', 'Perempuan', 'Jln. Peutua Raja no.120 Gampong Pulo Kiton kec. Kota Juang Kab. Bireuen\n', 'Jufriadi, S.Pd', 'Yuli Fitri, S.Pd', '082361120224', 'KARYAWAN SWASTA'),
(769, '1', '57', '10203080', 'BALQIS HUMAIRA', 'Laki-Laki', 'MEUNASAH BLANG', 'FERIADI M ADAM', 'MIFTAHUL JANNAH', '081269536969', 'WIRASWASTA'),
(770, '1', '57', '10203079', 'BALQIS NAURA ATHIFA', 'Laki-Laki', 'Jl. Laksamana Malahayati, Pulo Kiton Kabupaten Bireuen\n', 'Bahrumsyah', 'Ernawati, SE', '085275303337', 'WIRASWASTA'),
(771, '1', '57', '10203062', 'CUT AMIRA SYAKIRA', 'Perempuan', 'Jln Tgk Marzuki Usman Dusun Blang Raya Mns Blang Bireuen\n', 'Faisal Riza', 'Cut Adinda Shara,SH', '081360313838', 'WIRASWASTA'),
(772, '1', '57', '10203064', 'FAIQA ZAHIRA', 'Perempuan', 'Desa Cot Mesjid Kec. Juli Kabupaten Bireuen\n', 'ISWADI', 'YANNI', '085260166510', 'POLRI'),
(773, '1', '57', '10203068', 'FATHAN AFKAHUL RIZAL', 'Laki-Laki', 'Desa geulanggang baro\n', 'Safwan Rizal', 'Martinah, SE', '085260713004', 'POLRI'),
(774, '1', '57', '10203077', 'GHUFRAN AL ZAIDAN', 'Laki-Laki', 'Geulumpang Payong\n', 'Hasrul', 'Mirna Sofia Am.Keb', '082256388339', 'WIRASWASTA'),
(775, '1', '57', '10203066', 'HAURA TAMIMI', 'Perempuan', 'ASPOL\n', 'BUKHARI', 'TUTI LIANA', '082266562626', 'POLRI'),
(776, '1', '57', '10203061', 'INAYA TALITA SAKHI', 'Perempuan', 'desa juli seupeng, kec.juli, kab.bireuen\n', 'm.iqbal tawakkal', 'leni aristina', '085296655551', 'PNS'),
(777, '1', '57', '10203057', 'MUHAMMAD ALKHALIFI HAMIZAN', 'Laki-Laki', 'DUSUN TGK DIKAREUNG, DESA COT KEUTAPANG, KECAMATAN JEUMPA, KABUPATEN BIREUEN\n', 'NURUZZAHRI', 'NOVITA SARI', '081362121202', 'WIRASWASTA'),
(778, '1', '57', '10203074', 'MUHAMMAD AQSA ZHEIN', 'Laki-Laki', 'Jl.Prof.ismuha desa tgk meunasah tgk.digadoeng\n', 'Imran,ST', 'Rita Lestamiana,AMF', '08116701167', 'PNS'),
(779, '1', '57', '10203056', 'MUHAMMAD ASYRAAF JAMALUDDIN', 'Laki-Laki', 'Dusun imum basyah. Meunasah reulet.bireun', 'Jamaluddin', 'Sri wahyuni', '08126494330', 'WIRAUSAHA'),
(780, '1', '57', '10203071', 'MUHAMMAD DAFA AL HAFIZ', 'Laki-Laki', 'Jl. Sukma, Desa Cot Keutapang\n', 'Faisal', 'Nurlaili', '085260356074', 'GURU'),
(781, '1', '57', '10203073', 'MUHAMMAD DZAKY ALMAEER', 'Laki-Laki', 'Dusun Kuta Bunjei Desa Meunasah Reuleut Kec.Kota Juang Kab.Bireuen\n', 'Abdul Hamid', 'Nurfazillah', '085262807464', 'PNS'),
(782, '1', '57', '10203072', 'MUHAMMAD FARREL AL ZHARIEF', 'Laki-Laki', 'Ds. Geulanggang Baro, Kec. Kota Juang, Kab. Bireuen\n', 'Harry Zuanda ', 'Misnawaty', '085371903516', 'BUMN'),
(783, '1', '57', '10203070', 'MUHAMMAD KHALIF', 'Laki-Laki', 'Reuleut \n', 'Mohd Nor', 'Malawati', '082294134167', 'WIRASWASTA'),
(784, '1', '57', '10203075', 'MUHAMMAD KHALIL AZIZI', 'Laki-Laki', 'Peudada\n', 'Saiful Amri', 'Eliana', '085260152142', 'KARYAWAN SWASTA'),
(785, '1', '57', '10203069', 'MUHAMMAD ZHAFRAN', 'Laki-Laki', 'Desa Pulo Ara Bireuen\n', 'dr. Safrizal', 'Darlina', '085260908889', 'DOKTER'),
(786, '1', '57', '10203065', 'OSIE KHANZA AZZAHRA', 'Laki-Laki', 'Desa Blang keutumba.kec juli.kab bireuen\n', 'Jawardi', 'Nurul Akmalia', '081375019297', 'TNI'),
(787, '1', '57', '10203067', 'QAIREEN AISYA SIDDIQA', 'Perempuan', 'DESA BLANG DALAM, KEC. JEUMPA, KAB. BIREUEN\n', 'HABIBI', 'JULIANI', '085260272237', 'WIRASWASTA'),
(788, '1', '57', '10203063', 'RIFQAH RAJWAA', 'Perempuan', 'ALUE GANDAI, PEUDADA', 'AFRIZAL', 'JULIANI', '085260502133', 'WIRASWASTA'),
(789, '1', '57', '10203060', 'SALSABILA NADHIFA', 'Perempuan', 'MEUNASAH DAYAH', 'AGUSTIAR', 'ERMIATI', '082369788832', 'PNS'),
(790, '1', '57', '10203076', 'TEUKU SABIQ EL-FATHIN', 'Laki-Laki', 'Asrama Polisi Karang Rejo Bireuen, Desa Bandar Bireuen, Kecamatan Kota Juang, Kabupaten Bireuen.\n', 'Dedi Supendi', 'Haryani', '085314559227', 'POLRI'),
(791, '2', '', '10194004', 'ABIYU RAMZY ASLAM', 'Laki-Laki', 'JALAN PEUMUDA LR.WAKI ABU NO.2 GEUDONG-GEUDONG', 'ABDUL SALAM', 'ROSMINA', '8116823600', 'EX KARYAWAN SWASTA'),
(792, '2', '', '10194048', 'AISHA TALITHA FAHIRA', 'Perempuan', 'DESA GLUMPANG MEUJIM-JIM DUSUN PALOH KEC. JULI ', 'ZULFAHMI', 'IRA SAFHIRA ', '0811 6819 31', 'PNS'),
(793, '2', '', '10204025', 'ALIYAH HANIFAH', 'Perempuan', 'MEUNASAH CAPA KOMMES. KAB. BIREUEN ', 'MUKHLIS ', 'TATI MARLINA ', '0813 6039 3932', 'Wiraswasta'),
(794, '2', '', '10194006', 'ALYA ZASKIYA', 'Perempuan', 'JL.GAJAH NO.48 DSN MENASAH CAPA, KOMES, BIREUEN', 'TARMIZI', 'LENI LIANA', '82304416686', 'Wiraswasta'),
(795, '2', '', '10194007', 'ANNISA AZHARI PUTRI', 'Perempuan', 'COT KEUTAPANG', 'AZAHRI NURDIN', 'DEWI LAZUWARNI', '82361518832', 'WIRASWASTA'),
(796, '2', '', '10194008', 'ANNISA HUMAIRA HAMDANI', 'Perempuan', 'JL.PETUA RAJA PULO KITON, KEC.KOTA JUANG, KAB BIREUEN', 'HAMDANI ABDUL GANI, SH.,M.HUM', 'HANIFAH USMAN', '811673426', 'PENSIUNAN ASN'),
(797, '2', '', '10194012', 'CHERRYL MARSYA', 'Perempuan', 'ABEUK USONG, JEUMPA', 'ASEP NOVIE HERDIANA', 'EVIE DAHLIANTI,AMD.KEB', '85207112889', 'TNI-AD'),
(798, '2', '', '10194013', 'DEVRINA SUCI AULIA', 'Perempuan', 'DUSUN LARA RUJA DESA PASEH, JULI', 'RAFIUDIN', 'IRAWATI,S.SOS', '82318373207', 'TNI-AD'),
(799, '2', '', '10194016', 'FATHIYA MAHFUZA', 'Perempuan', 'Perumahan Annisa Nomor A 9 dan A 10, Gampong Geulanggang Baro, Kecamatan Kota Juang', 'MAULANA FAISAL', 'CUT NANDA RIZKY', '0823 6071 6600', 'POLRI'),
(800, '2', '', '10194046', 'HAIKAL SAFNI', 'Laki-Laki', 'DESA BLANG COT TUNONNG KEC. JEUMPA KAB. BIREUEN ', 'SAIFUL BAHRI', 'SRI MURNI YANTI ', '0852 5096 7038 ', 'PEDAGANG'),
(801, '2', '', '10194050', 'IVA LATHIFAH', 'Perempuan', 'JL. PENDIDIKAN DUSUN BLANG RAYA KEC. KOTA JUANG KAB. BIREUEN', 'ZULHAM', 'DIAN MAIDARINA', '085373818586', 'KARYAWAN BUMN'),
(802, '2', '', '10194017', 'LEONARDI WANGSA', 'Laki-Laki', 'BANDAR BIREUEN', 'GUNAWAN WANGSA', 'LENY', '81361734658', 'WIRASWASTA'),
(803, '2', '', '10204002', 'MEYLA FAIZA ZUHRA', 'Perempuan', 'LHOK AWE-AWE  KEC. KUALA KAB. BIREUEN ', 'ZULFIKRI, S.Ag', 'JULIDA FITRI, S.Pd', '0852 6037 3841', 'PNS'),
(804, '2', '', '10194019', 'MUHAMMAD FADHIL UBAIDILLAH LUBIS', 'Laki-Laki', 'GEULANGGANG BARO', 'MUKLIS MASHURI LUBIS', 'ZUFIDA HANUM,SH.MH', '81361411112', 'PNS'),
(805, '2', '', '10194021', 'MUHAMMAD IRGIE ASHABUL KAHFI', 'Laki-Laki', 'COT TAROM TUNONG', 'HENDRA SAPUTRA', 'ERLITA', '85260645757', 'WIRASWASTA'),
(806, '2', '', '10194023', 'MUHAMMAD DANISH', 'Laki-Laki', 'PULO KITON', 'SAYUTI', 'FITRI ZUHARIATY', '811674052', 'Wiraswasta'),
(807, '2', '', '10194024', 'MUHAMMAD EL FAIZI', 'Laki-Laki', 'MEUNASAH BLANG', 'NURDIN ABDULLAH', 'MURSYIDAH A.LATHIEF', '811676504', 'WIRASWASTA'),
(808, '2', '', '10194026', 'NABIL RIZKYLLAH AKBAR', 'Laki-Laki', 'Jln Tgk Imum Rakyat No 7 dusun Kommes Desa Meunash Capa', 'ISLAMSYAH', 'DESI MEHRIANTI', '85260687916', 'Wiraswasta'),
(809, '2', '', '10204014', 'NADIA FAUZIAH ANDINI', 'Perempuan', 'RUMAH DINAS KPP PRATAMA BIREUEN- PULO ARA ', 'SUSANTO', 'DINI ARIASIH', '0812 8195 8055', 'PNS'),
(810, '2', '', '10194029', 'NAZIRA', 'Perempuan', 'BLANG KEUTUMBA', 'HASBI', 'ASRITA', '85385133550', 'WIRASWASTA'),
(811, '2', '', '10194030', 'QAISRA FATIN LATEEFA', 'Perempuan', 'PULO ARA', 'SUDIRMAN', 'NUR HASRI SATIVA', '8116708677', '-'),
(812, '2', '', '10194033', 'RICFIC KUMAR', 'Laki-Laki', 'PULO ARA', 'NANDA KUMAR', 'ANJELIS', '8126406315', 'WIRASWASTA'),
(813, '2', '', '10194038', 'SALWA ANNAFISAH', 'Perempuan', 'DESA COT TAROM TUNONG', 'FAZIL', 'JUARNI', '85260261815', 'WIRASWASTA'),
(814, '2', '', '10194041', 'YOEL LIURENDO', 'Laki-Laki', 'JLN.ANDALAS NO.86 BIREUEN', 'HALIM', 'SANDY', '85296025555', 'WIRASWASTA'),
(815, '2', '', '10204026', 'ZAKY MURAC', 'Laki-Laki', 'Jln Sukma No 10 Dusun Tgk Dicot Desa Cot Keutapang Kec Jumpa Kab Bireuen', 'MUNZAHRI', 'RACHMI', '0853 6002 7822', 'PNS'),
(816, '2', '', '10194009', 'AURA GHADIZA EFFENDY', 'Perempuan', 'GEULANGGANG BAROE', 'DES DWIPUTRA EFFENDY', 'NOVA ROSLITA', '82132987889', 'DOKTER'),
(817, '2', '', '10194010', 'AYLA ZASKIA ZULFI', 'Perempuan', 'PULO ARA KOTA JUANG', 'ZULFIKAR', 'FITRIANI', '85277233688', 'WIRASWASTA'),
(818, '2', '', '10194011', 'CHELSEA ALAMANDA', 'Perempuan', 'DUSUN MUTIARA MEUNASAH DAYAH BIREUEN', 'SABARUDDIN ABDULLAH', 'IDA IRYANTI', '85270834043', 'WIRASWASTA'),
(819, '2', '', '10204001', 'CUT AYLA AZZURA', 'Perempuan', 'MENASAH DAYAH DUSUN DI IBU KEC. KOTA JUANG KAB. BIREUEN ', 'SAHIMI CUT MUDA', 'DESI ELVIDA ROSA', '082267404080', 'TNI SD'),
(820, '2', '', '10194014', 'FAIZATUNNISA', 'Perempuan', 'COT KEUTAPANG', 'MUNANDAR', 'HAFNI ZAHARA', '85260033555', 'PNS'),
(821, '2', '', '10194043', 'KHALIL SY BASYARAH', 'Laki-Laki', 'KOMPLEK BTN KUPULA INDAH NO E61 GEULANGGANG GAMPONG KEC. KOTA JUANG ', 'SOFYANNUR', 'YENNI DAHLIA', '08116806977', 'PNS'),
(822, '2', '', '10194018', 'M.AZRIL MAULANA BB', 'Laki-Laki', 'JULI SEUTUY', 'EDY JALIL.BB', 'FITRIA', '85358887651', 'WIRASWASTA'),
(823, '2', '', '10194020', 'M.HARIS MULASYIBI', 'Laki-Laki', 'COT UNOE, KUALA', 'YUSRI', 'FERINA', '85207077354', 'POLRI'),
(824, '2', '', '10204027', 'MEISYE HALIM', 'Perempuan', 'JALAN GEUDONG-GEUDONG NO 44, KAB. BIREUEN', 'TJI, HOEI', 'JUSNI', '0852 8558 0739', 'IRT'),
(825, '2', '', '10194022', 'MUHAMMAD ARIF RIZKI', 'Laki-Laki', 'MEUNASAH BLANG', 'ALM. FAISAL', 'SRI UNIYATI', '81360098018', 'WIRASWASTA'),
(826, '2', '', '10194042', 'MUHAMMAD RIZKI', 'Laki-Laki', 'DESA MEUNASAH BLANG KEC KOTA JUANG KAB BIREUEN', 'AZHARI', 'AMINAH', '8126558404', 'PEDAGANG'),
(827, '2', '', '10194025', 'MUHAMMAD SULTHAN RASYA', 'Laki-Laki', 'PERUM BTN BIREUEN INDAH JL.MERPATI NO.25M', 'JAFAR SIDDIK', 'DWI WULANDARY', '82363102685', 'WIRASWASTA'),
(828, '2', '', '10194044', 'NAILA FAIRUZZA', 'Perempuan', 'MEUNASAH REULEUT KEC. KOTA JUANG KAB. BIREUEN ', 'DRS. ZAMZAMI', 'MULIANA, S. Sos', '081269444479', 'PNS'),
(829, '2', '', '10194027', 'NAILA NUZULA', 'Perempuan', 'MEUNASAH BLANG', 'M.DAUD', 'IRWATI', '85262815301', 'PNS'),
(830, '2', '', '10194047', 'NAJLA KHANSA', 'Perempuan', 'DESA DUSUN BLANG RAYA KEC. KOTA JUANG KAB. BIREUEN ', 'ABDULLAH IDRIS, S. Sos', 'MARYAM', '0813 6136 4809', 'PNS'),
(831, '2', '', '10194028', 'NASHIRATUL KHANSA', 'Perempuan', 'COT TRIENG', 'MUNAWARDI,ST', 'TINI AGUSTINA,A.MD.KEP', '85260057577', 'PNS'),
(832, '2', '', '10194049', 'NURUL AZIZAH', 'Perempuan', 'MEUNASAH REULEUT KEC. KOTA JUANG KAB. BIREUEN ', 'AZHARI', 'SITI SABARIAH CUT', '082279113652', 'PNS'),
(833, '2', '', '10204028', 'RAKHA TARANGGA FIKY HIDAYAT', 'Laki-Laki', 'POLRES BIREUEN', 'TAUFIK HIDAYAT', 'OKKY WULAN SARI', '0811 993 339', 'POLRI'),
(834, '2', '', '10194032', 'RASYA HUBILLAH', 'Laki-Laki', 'MEUNASAH BLANG', 'DR.RIZA FAHMI', 'YUSEFA', '85211671025', 'WIRASWASTA'),
(835, '2', '', '10194031', 'REYASH ZILDJIANO LUVRA', 'Laki-Laki', 'JL.BANDA ACEH-MEDAN KM 218 COT GAPU KEC.KOTA JUANG KAB.BIREUEN', 'REDI IRVA YOSEP', 'YASHINTA', '81322222913', 'PEDAGANG'),
(836, '2', '', '10204003', 'RISKY INDRAWAN', 'Perempuan', 'DESA BIREUEN MNS. DAYAH KEC. KOTA JUANG KAB. BIREUEN ', 'INDRA IRWANDA ', 'ELLIDA', '085261175667', 'WIRASWASTA'),
(837, '2', '', '10194034', 'RIZKA AZIFA', 'Perempuan', 'DESA KRUNG JULI BARAT', 'SABARUDDIN AHMAD', 'SUWARNI M.ISA', '81396516617', 'PEDAGANG'),
(838, '2', '', '10194035', 'SAHLA AZRINA', 'Perempuan', 'GEULANGGANG TEUNGEH BIREUEN', 'AZAHRI', 'FERA WULANDARI', '81376933043', 'WIRASWASTA'),
(839, '2', '', '10194036', 'SAID DEYYAN DENANSYAH', 'Laki-Laki', 'GEUDONG-GEUDONG', 'DEDI FERDIANSYAH,ST', 'MURNANI,S.PD', '85270512000', 'PEGAWAI KEMENTRIAN PUPR'),
(840, '2', '', '10194037', 'SAID NAFIS RIZA', 'Laki-Laki', 'MEUNASAH BLANG', 'SAID QADRI', 'NOVIZA', '8116803888', 'PNS'),
(841, '2', '', '10194040', 'VARELIA PUTRI REVALDA', 'Perempuan', 'BLANG BLADEH', 'VARI YANTO', 'RENA ROZANA', '82164200603', 'TNI'),
(842, '2', '', '10204022', 'ABDUL KADIR ILHAM', 'Laki-Laki', 'Dusun Cot Panah Desa Buket Teukueh Kec. Kota Juang Kab. Bireuen', 'AKHIRUDDIN', 'SUCI HANDAYANI', '085277725397', 'PNS'),
(843, '2', '', '10204012', 'AKMAL SYARIF FAIZA ', 'Laki-Laki', 'Jln. Pendididkan Dusun Blang Raya Desa Bireuen Maunasah Blang Kec. Kota Juang Kab. Bireuen', 'Mursalin, M.T', 'Andi Fajri', '085260079481', 'PNS'),
(844, '2', '', '10204017', 'AL TSAQIF SALIM', 'Laki-Laki', 'Dusun Kuta Trieng Desa Geudong Geudong Kec. Kota Juang Kab. Bireuen', 'AGUSSALEM', 'YULIZA', '082260843480', 'Wiraswasta'),
(845, '2', '', '10204049', 'ALIA KARIMA', 'Perempuan', 'Dusun Mutiara Desa Bireuen Meunasah Dayah Kec. Kota Juang Kab. Bireuen', 'Ir. ZULKIFLI A. ', 'CUT SHAMIRA', '085240572678', 'Wiraswasta'),
(846, '2', '', '10204007', 'ALIF', 'Laki-Laki', 'Dusun Tgk Muda Sandang Desa Cot Unoe Kec. Kuala Kab. Bireuen', 'Armiadi', 'Agus Tianur', '081360677439', 'PNS'),
(847, '2', '', '10204034', 'AMALIA RIZKA', 'Perempuan', 'Dusun Balee Aron Desa Bireuen Meunasah Blang Kec. Kota Juang Kab. Bireuen', 'TAUFIK NURDIN', 'NURHASYIMAH', '085277977355', 'PNS'),
(848, '2', '', '10204021', 'AMINUL HAFIZ', 'Laki-Laki', 'Dusun Telaga Manis Desa Meunasah Tgk Di Gadong Kec. Kota Juang Kab. Bireuen', 'SYAMSUDDIN M.A', 'ELLYZAR SOFINA', '085358618699', 'Tukang jahit'),
(849, '2', '', '10204033', 'ARISTA NAZWA ANANDA', 'Perempuan', 'Jln. Bengkel Desa Bandar Bireuen Kec. Kota Juang Kab. Bireuen', 'ANTONI', 'SRI GUSTY WAHYUNI', '082221291997', 'Ibu Rumah Tangga'),
(850, '2', '', '10204056', 'ARIVA GEBRILIA PUTRI', 'Perempuan', 'Dusun Capa Kommes Desa Bireuen Meunasah Capa Kec. Kota Juang Kab. Bireuen', 'RUDI SYAHPUTRA', 'LILI SURYANI', '085358222220', 'POLRI'),
(851, '2', '', '10204062', 'AURELLYALLODIA FAIZA KUSUMA', 'Perempuan', 'Desa Cot Gapu Kec. Kota Juang Kab. Bireuen', 'OKTAVIAN INDRA KUSUMA', 'EVA ZULFAZA', '08563305720', 'PNS'),
(852, '2', '', '10204040', 'CUT AYLA AZZURA', 'Perempuan', 'Desa Gampong Raya Tambo Kec. Peusangan Kab. Bireuen', 'T. BURHANUDDIN', 'AIDA FITRIANI ', '085260076828', 'Wiraswasta'),
(853, '2', '', '10204046', 'FRANCESCO RAU', 'Laki-Laki', 'Dusun Bireuen Timur Jalan Ramai No. 117 Desa Bandar Bireuen Kec. Kota Juang Kab. Bireuen', 'MUKHTAR NASRY', 'YENNY', '08126077339', 'Wiraswasta'),
(854, '2', '', '10204018', 'HUSNIL MUBARAK', 'Laki-Laki', 'Dusun Pelabuhan Desa Pulo Kec. Peudada Kab. Bireuen', 'MUKHTAR AMIN', 'SITI AMINAH', '085358441517', 'PNS'),
(855, '2', '', '10204041', 'M. THARIQ AL-AUSAD', 'Laki-Laki', 'Dusun Lampuuk Desa Blang Dalam Kec. Jeumpa Kab. Bireuen', 'MUNIRWAN', 'AKLIMA', '081360028778', 'Ibu Rumah Tangga'),
(856, '2', '', '10204038', 'MUHAMMAD ALFUS', 'Laki-Laki', 'Dusun Aron Desa Padang Kasab Kec. Peulimbang Kab. Bireuen', 'M. DAHLAN ', 'RUSLAINI', '08126908032', 'Wiraswasta'),
(857, '2', '', '10204023', 'MUHAMMAD FARID ALGIFARI', 'Laki-Laki', 'Dusun Panjo Desa Geulumpang Payong Kec. Jeumpa Kab. Bireuen', 'FADLI, ST, M.S.M', 'CUT FERAWATI, SKM', '08116707070', 'PNS'),
(858, '2', '', '10204058', 'MUHAMMAD RAFA FAHLEVI', 'Laki-Laki', 'Desa Bireuen Meunasah Dayah Kec. Kota Juang Kab. Bireuen', 'HELMIADI', 'AZIZAH', '081360044657', 'Wiraswasta'),
(859, '2', '', '10204015', 'MUHAMMAD RAJA NAUFAL', 'Laki-Laki', 'Dusun Bahagia Desa Pante Pisang Kec. Peusangan Kab. Bireuen', 'JAFNI', 'FITRIANI', '085222539293', 'PNS'),
(860, '2', '', '10204047', 'NABIL DZAKWAAN ', 'Laki-Laki', 'Dusun Tgk Di Cot Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'BADLISYAH', 'WARDIAH', '085261629480', 'Wiraswasta'),
(861, '2', '', '10204052', 'NASYWA FALISHA', 'Perempuan', 'Dusun Cinta Alam Desa Cot Trieng Kec. Kuala Kab. Bireuen', 'IRWANSYAH', 'MURNIATI', '085262829666', 'PNS'),
(862, '2', '', '10204010', 'Patric Valentino', 'Laki-Laki', 'Dusun Geudong Teungoh Desa Pulo Ara Geudong Teungoh Kec. Kota Juang Kab. Bireuen', 'Edi Yung', 'Susita', '082273130111', 'Wiraswasta'),
(863, '2', '', '10204035', 'RACHEL AINAYA FAIZA', 'Perempuan', 'Dusun Seulanga Desa Bireuen Meunasah Dayah Kec. Kota Juang Kab. Bireuen', 'MEIDI IFANDIARI', 'JESSI PURNAULITA', '085270438439', 'Karyawan Swasta'),
(864, '2', '', '10204030', 'RAIHANA QAYSHA AFIFAH', 'Perempuan', 'Dusun Cot Kuthang Desa Seuneubok Aceh Kec. Peusangan Kab. Bireuen', 'RAHMAT RAHYUDI', 'RIKA SUHARJA', '081370664470', 'Wiraswasta'),
(865, '2', '', '10204043', 'RIFQA DARUVA', 'Perempuan', 'Dusun Mesjid Desa Cot Tarom Tunong Kec. Jeumpa Kab. Bireuen', 'MUHAMMADAR', 'FARIDAH', '081315581717', 'Wirausaha'),
(866, '2', '', '10204063', 'SA\'DIATUN NUFUS JESRI', 'Perempuan', 'Dusun Tengah Desa Cot Gapu Kec. Kota Juang Kab. Bireuen', 'JEFRIE HASNI', 'SRI HERAWATI', '081360106600', 'Wiraswasta'),
(867, '2', '', '10204053', 'ZALFA RAISAL ', 'Laki-Laki', 'Dusun Makmur Desa Gampong Baro Kec. Kota Juang Kab. Bireuen', 'MURSAL', 'ERA SAFITRI', '08126487787', 'Wiraswasta'),
(868, '2', '', '10204048', 'ZATA ZAMHARIRA', 'Perempuan', 'Dusun Meurak Tengah Desa Juli Cot Meurak Kec. Juli Kab. Bireuen', 'MUBARIK JULI SAPUTRA', 'INDA SRI MULYANI', '08126931753', 'PNS'),
(869, '2', '', '10204044', 'ZIA SITI ZAYYANA', 'Perempuan', 'Dusun Damai Desa Geulanggang Baro Kec. Kota Juang Kab. Bireuen', 'HARRY ZUANDA', 'MISNAWATI', '085371903516', 'Karyawan BUMN'),
(870, '2', '', '10204013', 'Ainun Ayu Rahmaniah', 'Perempuan', 'Dusun Almuslim Desa Paya Cut Kec. Peusangan Kab. Bireuen', 'Fahmi Saputra', 'Meriana', '08116806347', 'PNS'),
(871, '2', '', '10204008', 'Aisar Musayyar', 'Laki-Laki', 'Dusun Capa Teungoh Desa Bireuen Maunasah Capa Kec. Kota Juang Kab. Bireuen', 'Ridwan Daud', 'Agus Tilizar', '085260763395', 'Wiraswasta'),
(872, '2', '', '10204011', 'Alfa Munira', 'Perempuan', 'Dusun Tgk Di Kareng Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'Mukhlis ', 'Sufiani', '085359270870', 'PNS'),
(873, '2', '', '10204037', 'ANGGI SANJANA', 'Perempuan', 'Dusun Ingin Maju Desa Bireuen Mns. Tgk di Gadong Kec. Kota Juang Kab. Bireuen', 'SANJAYA MULYONO', 'LINAWATI', '081262255158', 'Wirausaha'),
(874, '2', '', '10204036', 'ANNISA AL MAQHVIRA', 'Perempuan', 'Dusun Mee Rayeuk Desa Nicah Kec. Peusangan Kab. Bireuen', 'AURIA H MURDANI', 'SULTIANI', '082369688199', 'Wirausaha'),
(875, '2', '', '10204029', 'AQIL GHOUFAR EFFENDY', 'Laki-Laki', 'Dusun Damai Desa Geulanggang Baro Kec. Kota Juang Kab. Bireuen', 'DES DWIPUTRA EFFENDY, dr.Sp.THT.KL', 'NOVA ROSLITA, dr. Sp.OG', '082132987889', 'PNS'),
(876, '2', '', '10204042', 'ASYIFA MAHARANI', 'Perempuan', 'Dusun Paya Santewan Desa Teupin Mane Kec. Juli Kab. Bireuen', 'MERY AZWANDA', 'YENI MARNI', '08116703591', 'Wiraswasta'),
(877, '2', '', '10204031', 'AZNIEL ASKHYA DAYAHNA', 'Laki-Laki', 'Dusun Mutiara Desa Bireuen Meunasah Dayah Kec. Kota Juang Kab. Bireuen', 'MAHYUDDIN', 'NINGSIH SHOLATIA', '081375622877', 'Wiraswasta'),
(878, '2', '', '10204057', 'CUT NAMIRA', 'Perempuan', 'Dusun Tgk Di Cot Desa Cot Keutapang Kec. Jeumpa Kab. Bireuen', 'YUSTISIA', 'CUT FATIMAHEDI', '081262029297', 'Pengawai BRI'),
(879, '2', '', '10204051', 'CUT SOFIE FARADILA', 'Perempuan', 'Dusun Cot Peulimbot Desa Cot Ijue Kec. Peusangan Kab. Bireuen', 'AWALUDDIN ', 'RATNA MUTIA, SH', '085277755629', 'Wiraswasta'),
(880, '2', '', '10204016', 'DIVA\'UL KAMILA RAMAHANI', 'Perempuan', 'Dusun Bahagia Desa Pulo Ara Geudong Teungoh Kec. Kota Juang Kab. Bireuen', 'SOFYAN ALI', 'LINDA LISNIATI TANJUNG', '082172340036', 'Wiraswasta'),
(881, '2', '', '10204055', 'DIVIA RAMADHANI', 'Perempuan', 'Dusun Mutiara Desa Bireuen Meunasah Blang Kec. Kota Juang Kab. Bireuen', 'DODI IRWANSYAH', 'NOVITA ASTUTI', '085277274790', 'Wiraswasta'),
(882, '2', '', '10204059', 'EGBERT AURICK LIMANDU', 'Laki-Laki', 'Jln. Andalas No 76 Desa Bandar Bireuen Kec. Kota Juang Kab. Bireuen', 'CHEN KHIN', 'SURYANI', '08116710418', 'Karyawan Swasta'),
(883, '2', '', '10204009', 'Islah Nafis Fadillah', 'Laki-Laki', 'JLn. Cot Meurak Utama No 32 Desa Cot Meurak Kec. Juli Kab. Bireuen', 'Ibrahim Ahmad', 'Syamsidar', '081315044194', 'PNS'),
(884, '2', '', '10204050', 'IVAN JARVIS', 'Laki-Laki', 'Dusun Geudong Teungoh Desa Pulo Ara Geudong Teungoh Kec. Kota Juang Kab. Bireuen', 'TRIANTO', 'NINING', '089618055178', 'Wiraswasta');
INSERT INTO `siswa` (`id_siswa`, `id_jenjang`, `id_kelas`, `nis_siswa`, `nama_siswa`, `jk_siswa`, `alamat_siswa`, `ayah_siswa`, `ibu_siswa`, `hp_siswa`, `kerja_siswa`) VALUES
(885, '2', '', '10204019', 'KHAIRA RADHWA', 'Perempuan', 'Desa Cot Bada Kec. Jeumpa Kab. Bireuen', 'JUFRI, SE', 'ROSMALAWARNI, SPd', '0811670265', 'PNS'),
(886, '2', '', '10204061', 'M. ABIYYU SYAHREZI', 'Laki-Laki', 'Desa Geudong Sagoe Kec. Kota Juang Kab. Bireuen', 'AHZAR', 'ENDANG SYAHRIANI', '08126912007', 'PNS'),
(887, '2', '', '10204024', 'MARIO MALTA SIHOMBING', 'Laki-Laki', 'Jln. Banda Aceh-Medan Dusun Pelabuhan Desa Meunasah Pulo Kec. Peudada Kab. Bireuen', 'MARO ATE MAROLOP SIHOMBING', 'ERLITA', '082319159276', 'Ibu Rumah Tangga'),
(888, '2', '', '10204065', 'MUHAMMAD ALGIFARI', 'Laki-Laki', 'Aspol Polres Bireuen ', 'YUSRA APRILLA', 'ASMAYDAR FONA', '0822 7425 3197', 'Polri'),
(889, '2', '', '10204039', 'MUHAMMAD ASRUL FAIZIN', 'Laki-Laki', 'Dusun Bandar Baru Desa Blang Ketumba Kec. Juli Kab. Bireuen', 'HASANUDDIN', 'MEGAWATI', '085261818117', 'TNI-AD'),
(890, '2', '', '10204005', 'Muhammad Nabil Zahran', 'Laki-Laki', 'Dusun Tanjong Desa Juli Tambo Tanjong Kec. Juli Kab. Bireuen', 'Muzakir', 'Elvizar', '081360082828', 'PNS'),
(891, '2', '', '10204064', 'MUHAMMAD ZHAFRAN SHIDQI', 'Laki-Laki', 'Dusun Ulee Gampong Desa Geudong Alue Kec. Kota Juang Kab. Bireuen', 'M. RIZKY PAHLEVI, ST', 'SITI MARDIANI', '085330009292', 'ASN'),
(892, '2', '', '10204020', 'MUSAYYARATUL BARRARAH', 'Perempuan', 'Asrama Kibant Yonif 113/JS Desa Bandar Bireuen Kec. Kota Juang Kab. Bireuen', 'DENNY YULINDRA', 'SRI WAHYUNI', '082277122818', 'TNI-AD'),
(893, '2', '', '10204006', 'Nabil ZA', 'Laki-Laki', 'Dusun Blang Keutumba Desa Blang Keutumba Kec. Juli Kab. Bireuen', 'Zainal Abidin', 'Nurlaili', '08126969070', 'PNS'),
(894, '2', '', '10204066', 'QAISAR NABIL AL-FATHAN', 'Laki-Laki', 'Desa Pertamina Kec. Ranto Peureulak Aceh Timur ', 'Zulkarnaini', 'ELLA ZAHARA', '0823 6467 7800', 'PNS'),
(895, '2', '', '10204004', 'Sultan Arif', 'Laki-Laki', 'Dusun Seulanga, Desa Bireuen Meunasah Dayah, Kec. Kota Juang Kab. Bireuen', 'Saiful Amri', 'Evi Naimah', '085275808755', 'Wiraswasta'),
(896, '2', '', '10204060', 'SYADIQ AL FAYET', 'Laki-Laki', 'Jln. Karang Rejo No 31 Desa Bandar Bireuen Kec. Kota Juang kab. Bireuen', 'ERIEK JULANA ALDA', 'ELLY FITTRIANI', '085260750303', 'Wiraswasta'),
(897, '2', '', '10204032', 'UKHTI TSABITHA', 'Perempuan', 'Jln. Raja Jeumpa No. 09 Desa Bireuen Meunasah Dayah Kec. Kota Juang Kab. Bireuen', 'FAISAL', 'DEASY', '085288662829', 'PNS'),
(898, '2', '', '10204045', 'YASMIN THUFAILAH', 'Perempuan', 'Dusun BTN Keupula Indah Desa Geulanggang Gampong Kec. Kota Juang Kab. Bireuen', 'MHD. ARI SYAHPUTRA', 'CUT EVITA, STP', '08116703999', 'Advokat/Pengacara'),
(899, '3', '', '10195004', 'ABIZAR AL AQSHA', 'Laki-Laki', 'JLN. GAYO, LRG. TGK MALEM NO 007, KOMMES, BIREUEN', 'EDWAR JUFRI', 'ASWINA', '811677777', 'PNS'),
(900, '3', '', '10195005', 'AGIL FATHUR RACHMAN', 'Laki-Laki', 'ASRAMA KODIM 0111 BIREUEN,BLANG BLADEH. JEUMPA', 'VARI YANTO', 'RENA ROZANA S.Tr. Keb', '85280735900', 'TNI-AD'),
(901, '3', '', '10195006', 'AHYA JAZIRA', 'Perempuan', 'DESA MESJID, PEUDADA, BIREUEN', 'OYA MUHAMMAD AKBAR, S.Ag', 'IMALIA, S.Ag', '82366271785', 'PNS'),
(902, '3', '', '10195007', 'ATHIRAH AFRA', 'Perempuan', 'DUSUN LAMPOH BALEE', 'JOEHARI', 'KEUMALA WATI', '81248583348', 'WIRA USAHA'),
(903, '3', '', '10195011', 'EM BRYPO BAGINDA', 'Laki-Laki', 'DESA JULI COT MEURAK, KEC. JULI, KAB. BIREUEN', 'MUHAMMAD HIDAYAT', 'NURYANTI', '8126960732', 'PNS'),
(904, '3', '', '10205002', 'FATHURRAHMAN HAWARI', 'Laki-Laki', 'DUSUN MUTIARA GP. BIREUEN MEUNASAH DAYAH KEC. KOTA JUANG KAB. BIREUEN ', 'SYARIFUDDIN SALIHIN', 'RIZA FITRIANI', '085277692853', 'PNS'),
(905, '3', '', '10195013', 'GIANDRA DWI PASYA', 'Perempuan', 'JL. T. NYAK ARIF NO 24 BIREUEN', 'ANTONI', 'SRI GUSTI WAHYUNI', '81377188999', 'WIRA USAHA'),
(906, '3', '', '10195014', 'ICHA AUREL', 'Perempuan', 'KRUENG JULI TIMU, KEC. KUALA', 'GUNAWAN NURDIN', 'SUSILAWATI', '85260439629', 'WIRASWASTA'),
(907, '3', '', '10195015', 'IFA GHINAYA', 'Perempuan', 'LHOK AWE TEUNGOH', 'M. NASIR', 'NURHUSNA', '85260269024', 'PNS'),
(908, '3', '', '10195016', 'INTAN ZAKYA', 'Perempuan', 'DUSUN PULO SUKON. DESA ABEUK TINGKEUM. KEC. JEUMPA, KAB. BIREUEN', 'IBRAHIM', 'KEMALAWATI, S,Pd', '82304035204', 'PENSIUNAN'),
(909, '3', '', '10195020', 'M. DAFA RAIHANSYAH', 'Laki-Laki', 'GLP PAYONG', 'TAUFIK', 'FARRAH DINA DANIEL', '81360996700', 'PNS'),
(910, '3', '', '10205052', 'MAIZA SRI NURHALIZA', 'Perempuan', 'BTN KEUPULA INDAH DESA GEULANGGANG GAMPONG', 'MUNZIR', 'RAHMAWATI', '0852 6259 7243', 'PNS'),
(911, '3', '', '10195022', 'MUHAMMAD HANNAF', 'Laki-Laki', 'MNS BAROH, PEUDADA', 'H. MASRUR', 'HJ. AZLINA, SE', '82367988080', 'PEGAWAI SWASTA'),
(912, '3', '', '10195024', 'NAJWA NAJMINA', 'Perempuan', 'JLN. HABIB PUTEH. NO. 32, KP. BARU', 'BUKHARI', 'FAUZIAH', '85224458814', 'PNS'),
(913, '3', '', '10195025', 'NOVI RAHMADANI', 'Perempuan', 'JL. KOL. HUSEN YUSUF NO. 3 BIREUEN', 'DARKASYI', 'NURAINI', '81360022111', 'PNS'),
(914, '3', '', '10195026', 'PUTRI ULLIR RAHMAH', 'Perempuan', 'COT KEUTAPANG', 'EFENDI', 'FAJRIAH', '85359327923', 'WIRASWASTA'),
(915, '3', '', '10195027', 'RAIHAN PRIA ZULMAA', 'Laki-Laki', 'LAMPAHAN BARAT, KEC. TIMANG GAJAH, KAB. BENER MERIAH', 'ZULFIKAR', 'IRMA SURYANI', '85260560456', 'Wiraswasta'),
(916, '3', '', '10195028', 'RAISA AMANDA', 'Perempuan', 'DESA ABEUK BUDI, KEC. JULI, KAB. BIREUEN', 'MUHAMMAD RIADI', 'SAFIANI', '85277277073', 'PNS'),
(917, '3', '', '10195029', 'RAUZA MARISA', 'Perempuan', 'MNS. CAPA BIREUEN', 'MUNIZAR', 'WARDANI', '85270958542', 'WIRASWASTA'),
(918, '3', '', '10195033', 'SARTIKA APRILIA', 'Perempuan', 'KOMPLEK BTN KEPEULA INDAH BLOK C8B', 'ISMAIL', 'SAKDIAH', '81360774498', 'TNI-AD'),
(919, '3', '', '10195034', 'SYIFA ANDALIA', 'Perempuan', 'DUSUN MEURAK UTARA, DESA JULI COT MEURAK. JLN. MEURAK 1', 'IFANDRI', 'AMALIA', '8126352110', 'WIRASWASTA'),
(920, '3', '', '10195035', 'SYIFA SYAHIRAH', 'Perempuan', 'KP. BARU, JLN. HABIB PUTEH', 'RIDWAN', 'ELIZAR', '85260852180', 'PENSIUNAN PNS'),
(921, '3', '', '10195036', 'T. ARIF RIFQI', 'Laki-Laki', 'MNS REULEUT', 'T. ISRIN', 'IVAYANITA', '85274665599', 'PNS'),
(922, '3', '', '10195008', 'AZIZURRAHMAN', 'Laki-Laki', 'DUSUN TGK TUHA. DESA BLANG COT TUNONG. KEC. JEUMPA KAB. BIREUEN', 'ANSARI PUTEH. ST. MSI', 'AZIZAH', '8126907393', 'Wiraswasta'),
(923, '3', '', '10195009', 'AZKYA KAMILA MAHARANI', 'Perempuan', 'JL. PEUTUA BANTA NO 7 MNS BLANG, BIREUEN', 'ATHAILLAH A. LATHIEF', 'NUR SAADAH', '8122615586', 'DOKTER'),
(924, '3', '', '10195010', 'EDRIC FELICIO', 'Laki-Laki', 'JLN. KERETA API NO 80 BIREUEN', 'EDI YUNG', 'SUSITA', '82369952716', 'WIRASWASTA'),
(925, '3', '', '10195012', 'FERIZAL', 'Laki-Laki', 'MEUNASAH DAYAH', 'EFENDI', 'ROSDIANA', '81269442999', 'SOPIR'),
(926, '3', '', '10195017', 'KHAIRUNA ZIKRI', 'Perempuan', 'BIREUEN, MNS. DAYAH', 'M. USMAN', 'CHUZAINAH', '81360093922', '(null)'),
(927, '3', '', '10195018', 'M. AIMAN', 'Laki-Laki', 'LORONG LHOK PENTEUT, PULO KITON', 'MUSWADI ABDURRAHMAN', 'SRI WAHYUNI', '81260945575', 'WIRASWASTA'),
(928, '3', '', '10195019', 'M. AQIL ALFARABY', 'Laki-Laki', 'BIREUEN, MNS. TGK DIGADONG, KEC. KOTA JUANG', 'ZAINUDDIN', 'ROSMERI', '82161188693', 'PNS'),
(929, '3', '', '10195021', 'MELLISA', 'Perempuan', 'JLN. ANDALAS NO 43/73', 'LULIMIN', 'LINA', '82367969328', 'WIRASWASTA'),
(930, '3', '', '10195023', 'NABILA RIFQI', 'Perempuan', 'DESA COT KEUTAPANG, SP. TGK. A. RAOF', 'ISMAIL M. ALI', 'HAFRITAWATI', '85260455382', 'WIRASWASTA'),
(931, '3', '', '10195030', 'RENDY WYRA PRATAMA PASI', 'Laki-Laki', 'JLN. NIAGA N0 27, SIDIKALANG, DAIRI, SUMATRA UTARA', 'RAMLAN PASI', 'SAKDIAH', '(null)', 'PEDAGANG'),
(932, '3', '', '10195031', 'RIKMAL BAIHAQI', 'Laki-Laki', 'DUSUN BALE ARON, KEC. KOTA JUANG, MEUNASAH BLANG, BIREUEN', 'M. RUSLI GADE', 'LINDA WATI', '85276655440', 'Dagang'),
(933, '3', '', '10195032', 'SARAH FAZILA', 'Perempuan', 'PULO ARA, PEUDADA', 'JAILANI IBRAHIM', 'SURYATI', '81360078778', 'PNS'),
(934, '3', '', '10195037', 'YOBEL PRECIOUS FUSIN', 'Laki-Laki', 'JL. PANGLIMA POLEM NO 8 BIREUEN', 'WILLY FUSIN', 'FITTY KUSUMA', '81285191913', 'WIRASWASTA'),
(935, '3', '', '10205007', 'Almira Zafira', 'Perempuan', 'Kompek PU  Pengairan No18, Desa Geulumpang Payong Kec. Jeumpa Kab. Bireuen \n', 'Fadli, ST, M.S.M', 'Cut Ferawati, SKM', '08116707070', 'PNS'),
(936, '3', '', '10205048', 'Gebri Fahlevi', 'Perempuan', 'MNS Tgk Digadong, Bireuen', 'Hafidh heriyanur', 'Lisnawati', '085261414848', 'PNS'),
(937, '3', '', '10205032', 'Ilham Adidian Triwijaksana', 'Laki-Laki', 'lr. Tgk. Cut Ali, no 93,Meunasah Timu, Matang Glumpang Dua. \n', 'Daryadi', 'Yusdiana', '085294455846', 'PNS'),
(938, '3', '', '10205006', 'M. Fawwaz Al Kafa', 'Laki-Laki', 'Geulanggang Baro\n', 'Saifullah, Sh', 'Juriani, S.Ag', '085277212512', 'Wiraswasta'),
(939, '3', '', '10205022', 'Muhammad Aufa', 'Laki-Laki', 'Meunasah Blang\n', 'Zamri', 'Anisah', '081360274247', 'PNS'),
(940, '3', '', '10205017', 'Muhammad fariq ulhaq', 'Laki-Laki', 'Mns. Tambo, kec. Peudada, kab bireuen\n', 'Mufizal', 'Enik', '085373262258', 'PNS'),
(941, '3', '', '10205009', 'Muhammad Fauzi', 'Laki-Laki', 'Jalan.Tgk Mustafa,No.1,Bireuen,Meunasah Blang.\n', 'Abubakar', 'Asmawati', '085290628747', 'Wiraswasta'),
(942, '3', '', '10205035', 'Nahwa Al Islami Al Haq', 'Perempuan', 'Gampong Baro\n', 'Didik Novianto', 'Muntaqiah', '082267692138', 'Pedagang'),
(943, '3', '', '10205036', 'Nasywan', 'Laki-Laki', 'Juli cot meurak\n', 'Marzuki Usman ', 'Dara Meutia ', '08126955201', 'POLRI'),
(944, '3', '', '10205038', 'Nathaniel Abed Kianto', 'Laki-Laki', 'Jl. Panglima Polem, No: 06\n', 'Joshua Abed Kianto', 'Patricia Fusin', '085277457690', ''),
(945, '3', '', '10205040', 'Nurul Hidayati Maulidna', 'Perempuan', 'Juli meunasah jok\n', 'Umar', 'Julina', '085260561055', 'PNS'),
(946, '3', '', '10205021', 'Rafi Alkhairan', 'Laki-Laki', 'Geulanggang Teungoh\n', 'M. Rizal', 'Fadhilah', '085260489983', 'PNS'),
(947, '3', '', '10205005', 'Rifa Fauhan', 'Perempuan', 'Dusun Lampoh Dayah Juli Meunasah Tambo. Bireuen\n', 'Drs. Marzuki (Alm)', 'Fahmina, S.Pd', '085277403891', 'Guru'),
(948, '3', '', '10205010', 'T.M Zaffa Abrar', 'Laki-Laki', 'BTN kupula indah Blok F No 63  cot gapu\n', 'Zubir Putra', 'Zubaidah', '081362134476', 'PNS'),
(949, '3', '', '10205015', 'TAMLICHA', 'Laki-Laki', 'Kuala jeumpa\n', 'MAKSAL MINA', 'DAHLIA', '081281416635', 'PNS'),
(950, '3', '', '10205031', 'Yasmin Yumna', 'Perempuan', 'Jalan T. Malem No. 6, Kommes, Bireuen\n', 'Zahrul Fuadi', 'Khairina', '0811670294', 'PNS'),
(951, '3', '76', '10205033', 'Bifawan Aulia', 'Laki-Laki', 'Juli km 11', 'Mery Azwanda', 'Yeni Marni', '08116703591', 'Wiraswasta'),
(952, '3', '', '10205020', 'Diefa Adilla Haz', 'Perempuan', 'Blang Dalam\n', 'Hamdani M', 'Azwarni', '082347935218', 'Guru'),
(953, '3', '', '10205045', 'Dilla Amanda Rizalmi', 'Perempuan', 'Bener meriah km 40\n', 'Edi Afrizal SE', 'Sulasmi', '08126966882', 'Wiraswasta'),
(954, '3', '', '10205013', 'DOMINIC SHIFA', 'Perempuan', 'Desa Matang Sagoe Kecamatan Peusangan Kabupaten Bireuen \n', 'Alvi Doni ', 'Kurniati', '082362050590', 'Wiraswasta'),
(955, '3', '', '10205042', 'Farahdila Saputri', 'Perempuan', 'Desa Cot Keutapang\n', 'Afwadi', 'Nilawati', '085296028385', 'Wiraswasta'),
(956, '3', '', '10205023', 'Hani Zafira Ramadhani', 'Perempuan', 'Blang Bladeh', 'Abdullah', 'Wahdini', '085372555681', 'Guru'),
(957, '3', '', '10205039', 'Inas Amirah ', 'Perempuan', 'Kota juang, gedong alue\n', 'Bakhtiar ', 'Sri Martuti', '085219408915', 'guru'),
(958, '3', '', '10205037', 'Luqmanul Hakim', 'Laki-Laki', 'Jl.Ayah Thaleb 70.Mns Dayah\n', 'Ir.Zulkifli Adam', 'Cut Shamira', '085240572678', 'Wiraswasta'),
(959, '3', '', '10205026', 'Muhammad Aulia', 'Laki-Laki', 'Desa Cot Keutapang\n', 'Masriadi', 'Zulfridiana S.Pd', '085262939704', 'sopir (ayah), PNS (ibu)'),
(960, '3', '', '10205050', 'Muhammad Rizki', 'Laki-Laki', 'Jalan Medan-Banda Aceh no 10 Desa Blang Bladeh Kecamatan Jeumpa Kabupaten Bireuen\n', 'Alm. Munirwan', 'Aklima', '081360028778', 'Wiraswasta'),
(961, '3', '', '10205047', 'MUNNA SALSABILA', 'Perempuan', 'Jalan utama cureh Glg Gampong\n', 'MUNZIR AMIN', 'MARIANA', '08126953537', 'Wiraswasta'),
(962, '3', '', '10205012', 'Raudhatul Jannah', 'Perempuan', 'Desa: Meunasah Teungoh\nKec: Juli\nKab: Bireuen', 'Zulkifli', 'Busrawati', '085277212151', 'PNS'),
(963, '3', '', '10205051', 'Renal Zaky Muhammad', 'Laki-Laki', 'Pulo kiton,bireuen,aceh\n', 'Yusrizal', 'Sri malinda', '085260509970', 'honorer'),
(964, '3', '', '10205019', 'Stella Nathania', 'Perempuan', 'Jln.T. Panglima polem\n\n', 'Sukimin', 'Tjiu lie aie', '085290105793', 'Pedagang'),
(965, '3', '', '10205004', 'Syahreza Bantara Yudha', 'Laki-Laki', 'Desa Meunasah Alue, Kec Peudada', 'Sya`ban Dafid', 'Rita Murni', '085260374923(kakak kandung)', 'IRT'),
(966, '3', '', '10205008', 'Teuku Firman', 'Laki-Laki', 'Juli Meunasah Jok\n', 'DARWANSYAH SE', 'KAMALIAH', '085276105711', 'PNS'),
(967, '3', '', '10205053', 'THIFAL AULIA', 'Laki-Laki', 'Jln T. DIBAROH NO.7 dusun komes Bireun\nMenasah Capa', 'Rahmad Kurniawan', '-', '085261468567', 'PNS'),
(968, '3', '', '10205055', 'Ziaul Mubaraq', 'Laki-Laki', 'Gelanggang Gampong kab. Bireuen', 'Amiruddin ABD', 'Cut Agustina ', '0852 0621 3266', 'Pedagang'),
(969, '3', '', '10205025', 'Awfa Farrah Dhiba', 'Perempuan', 'Jeunieb\n', 'Azhari', 'Zuraida', '081360256089', 'POLRI'),
(970, '3', '', '10205018', 'Lailan Thawila', 'Perempuan', 'Menasah Blang', 'Lalu M.Haris (almarhum)', 'Zanita', '082361169959', 'PNS'),
(971, '3', '', '10205034', 'M. Arayki', 'Laki-Laki', 'Asrama Kodim blang blahdeh\n', 'Jamaluddin', 'Haslinda, S.kep', '085206393155', 'TNI'),
(972, '3', '', '10205054', 'M. ALBARIQILL SAUWIR', 'Laki-Laki', 'Lr. Lhok Punteut Gampong Pulo Kiton Kab. Bireuen ', 'Harisman', 'Mardhiah', '0812 6977 0070', 'Wiraswasta'),
(973, '3', '', '10205016', 'Muhammad Al Ghiffari', 'Laki-Laki', 'Desa Juli Meunasah Teungoh, Kec. Juli Kab. Bireuen\n', 'Saiful(Alm)', 'Nasriyati', '085260457621', 'IRT'),
(974, '3', '', '10205056', 'MUHAMMAD HAFIZ', 'Laki-Laki', 'Aspol Polres Bireuen ', 'YUSRA APRILLA', 'ASMAYDAR FONA', '0822 7425 3197', 'POLRI'),
(975, '3', '', '10205028', 'Muhammad Hanif', 'Laki-Laki', 'Pulo kiton\n', 'Rizal', 'Zulfah', '082167504930', 'Wiraswasta'),
(976, '3', '', '10205046', 'Muhammad Nauval Razan', 'Laki-Laki', 'Jlan bakti No. 46 Bireuen', 'Muhammad Ilham Oto', 'Nurlaili', '085358440747', 'Wiraswasta(ayah), PNS (ibu)'),
(977, '3', '', '10205024', 'Muhammad Syauqi', 'Laki-Laki', 'jalan pendidikan geudong alue kota juang bireuen\n', 'Zaldi, AP, S.Sos, MSM', 'Eli Maulida, S.Kep', '081269615506', 'PNS'),
(978, '3', '', '10205029', 'Naifa Shabira', 'Perempuan', 'Desa Juli Cot Meurak, Jln. Meurak 2, No. 7\n', 'Mubarik Juli Saputra, ST.MT.', 'Inda Sri Mulyani, ST.', '08126931753', 'PNS'),
(979, '3', '', '10205011', 'Nasya Dwi Lestari', 'Perempuan', 'Jln Medan Banda Aceh Krueng Panjo', 'Ridwan', 'Kartika', '085262955682', 'Wiraswasta'),
(980, '3', '', '10205041', 'Rajwa Rajiyya', 'Perempuan', 'Jln.T.Malem No.6 Kommes, Bireuen\n', 'Zahrul Fuadi', 'Khairina', '08126553461', ''),
(981, '3', '', '10205043', 'Said Naufal Riza', 'Perempuan', 'Meunasah Blang\n', 'Said Qadri', 'Noviza', '08116803888', 'PNS'),
(982, '3', '', '10205049', 'T.M Agil Al Hafidh', 'Laki-Laki', 'Desa Gampong Raya Tambo, Kecamatan Peusangan Kab, Bireuen\n', 'T.Burhanuddin', 'Aida Fitriani', '085206002720', 'Wiraswasta'),
(983, '3', '', '10205027', 'Teuku Muhammad Arril Juliansyah', 'Laki-Laki', 'Gampong Baro\n', 'T Munir Ibrahim', 'Cut Danda Lina', '081337696464', 'Wiraswasta'),
(984, '3', '', '10205030', 'Thariq Al Wafi ', 'Laki-Laki', 'Lr. Imum Hasyim No. 5 Dusun Blang Raya, Gampong Meunasah Blang, Kec. Kota Juang\n', 'Muhammad Al Muttaqin', 'Hasnawati', '08126964546', 'PNS'),
(985, '3', '', '10205044', 'Zian Ukmul Hafidh', 'Laki-Laki', 'Lhok Awe Awe\n', 'Taufik', 'Jeumpa Wati', '082361078295', 'Wiraswasta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `nama_status`) VALUES
(1, 'Membatalkan'),
(2, 'Menunggu Persetujuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statuspt`
--

CREATE TABLE `statuspt` (
  `id_statuspt` int(11) NOT NULL,
  `nama_statuspt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statuspt`
--

INSERT INTO `statuspt` (`id_statuspt`, `nama_statuspt`) VALUES
(1, 'PTN'),
(2, 'PTS'),
(3, 'SEKOLAH KEDINASAN'),
(4, 'INFORMAL');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_final`
--

CREATE TABLE `status_final` (
  `id_status_final` int(11) NOT NULL,
  `nama_status_final` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status_final`
--

INSERT INTO `status_final` (`id_status_final`, `nama_status_final`) VALUES
(1, 'Dibatalkan'),
(2, 'Disetujui');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supervisi`
--

CREATE TABLE `supervisi` (
  `id_supervisi` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `mapel` varchar(255) NOT NULL,
  `koordinator_supervisi` varchar(255) NOT NULL,
  `nama_guru` varchar(255) NOT NULL,
  `waktu` date NOT NULL,
  `nilai_akhir` varchar(255) NOT NULL,
  `kriteria` varchar(255) NOT NULL,
  `laporan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tp`
--

CREATE TABLE `tp` (
  `id_tp` int(11) NOT NULL,
  `nama_tp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tp`
--

INSERT INTO `tp` (`id_tp`, `nama_tp`) VALUES
(1, '2008-2009'),
(2, '2009-2010'),
(3, '2010-2011'),
(4, '2011-2012'),
(5, '2012-2013'),
(6, '2013-2014'),
(7, '2014-2015'),
(8, '2015-2016'),
(9, '2016-2017'),
(10, '2017-2018'),
(11, '2018-2019'),
(12, '2006-2007'),
(13, '2007-2008'),
(14, '2019-2020'),
(15, '2020-2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `nip_user` varchar(255) NOT NULL,
  `level_user` varchar(255) NOT NULL,
  `username_user` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `visit`
--

CREATE TABLE `visit` (
  `id_visit` int(11) NOT NULL,
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
  `proposal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visit`
--

INSERT INTO `visit` (`id_visit`, `id_jenjang`, `id_semester`, `id_kelas`, `id_kelas2`, `id_kelas3`, `id_kelas4`, `id_guru`, `tema_visit`, `hasil_visit`, `lokasi_visit`, `waktu_1`, `waktu_2`, `id_mapel1`, `id_mapel2`, `id_mapel3`, `id_mapel4`, `biaya_visit`, `laporan`, `proposal`) VALUES
(1, '1', '1', '17', '16', '', '', '8', 'Menuliskan Informasi Penting dari narasumber', 'Siswa mampu menuliskan point-point penting tentang pengolahan coklat di Pabrik Socolattte', 'Pabrik Coklat Socolattte di Paru, Sigli', '2018-11-29', '2018-11-29', 35, 40, 0, 0, '1600', 'FORMAT LAPORAN KEGIATAN SCHOOL VISIT ke Socolatte.doc', ''),
(2, '1', '1', '11', '10', '', '', '58', 'Mengenal Situs Sejarah Islam ', 'Tujuan dari kegiatan ini adalah dapat melihat secara langsung makam seorang tokoh pembawa ajaran Islam dan dapat mendengar secara langsung cerita tentang Islam pada masa dahulu.  Adapun manfaat kegiatan tersebut adalah untuk menambah wawasan siswa terhada', 'Makam Malikussalih Aceh Utara', '2018-11-07', '2018-11-07', 33, 0, 0, 0, '1341000', 'LAPORAN KEGIATAN SCHOOL VISIT KELAS 5 KE BANK INDONESIA DAN WATERBOOM BLANG MANGAT TP 2019-2020.docx', ''),
(3, '1', '2', '18', '19', '', '', '49', '  Menulis laporan (B.Indonesia), Mengenal Jenis hewan langka (IPA), Cooking class (SBK), Permainan tradisional (Olahraga)  ', '  Menambah pengetahuan dan pengalaman belajar siswa serta meningkatkan keakraban antar sesama siswa dan guru dalam rangka kegiatan perpisahan siswa kelas 6  ', '  Medan (PizzaHut, Galeri Rahmat, Istina Maimun, Dusun Kreatif, Pabrik Sari Roti) ', '2019-02-07', '2019-02-09', 37, 42, 35, 40, '6000000', 'School Visit Medan.docx', ''),
(4, '2', '2', '23', '22', '', '', '12', ' Recount Text ', ' siswa membuat laporan perjalanan dalam bentuk Recount Text ', ' Banda Aceh da sekitarnya ', '2019-02-11', '2019-02-16', 2, 11, 0, 0, '0', 'LAPORAN KEGIATAN SCHOOL VISIT.docx', ''),
(5, '2', '2', '23', '22', '', '', '66', '    Menulis Puisi    ', '   Siswa mampu menceritakan kembali dalam bentuk puisi tempat-tempat yang mereka kunjungi selama di Banda Aceh.    ', '    Benteng Indera Patra, Museum Aceh, Rumoh aceh, Museum Tsunami, dan Kuta Malaka    ', '2019-02-14', '2019-02-16', 2, 5, 7, 0, '0', 'LAPORAN-KEGIATAN-SCHOOL-VISIT SMP.docx', ''),
(6, '2', '2', '21', '20', '', '', '16', '   Laporan Perjalanan   ', '  Tujuan: Menuliskan laporan perjalanan ke tempat-tempat yang dikunjungi di Banda Aceh   ', '   Banda Aceh   ', '2019-02-14', '2019-02-16', 3, 6, 5, 7, '0', 'Laporan School Visit TIK_Banda Aceh.docx', ''),
(7, '2', '2', '20', '21', '', '', '10101070', 'Empati dan Hubungan Interpersonal', 'Siswa mengetahui perannya sebagai individu dalam hubungan interpersonal, serta mampu mengasah dan meningkatkan rasa empati dengan berkunjung ke tempat-tempat bersejarah.', 'Banda Aceh dan Sekitarnya', '2019-02-14', '2019-02-16', 5, 10, 0, 0, '0', 'Laporan Kegiatan School Visit SMP (Bimkos).docx', ''),
(8, '2', '2', '24', '25', '', '', '9', '  PAI = Aplikasi Shalat Jamak Qashar  ', '  1. Menambah pengalaman belajar siswa.     2. Menambah wawasan siswa tentang pengolahan makanan dan minuman kemasan beserta pemasarannya       3. Mempraktikkan Shalat Jamaâ€™ Qashar     4. Mengasah kemampuan menulis siswa dengan metode menulis laporan  ', '  1. Tanjung Morawa = PT Medan Jaya Pangan Mutu   2. Medan Amplas = PT ASW/Hatari      3. Berastagi Sumut = Mikie Holiday  ', '2019-02-14', '2019-02-16', 1, 2, 0, 0, '5.000.000', 'LAPORAN-KEGIATAN-SCHOOL-VISIT Medan ok.docx', ''),
(10, '2', '2', '20', '21', '', '', '64', 'situs sejarah di aceh', 'â€¢	Siswa mampu menuliskan tempat-tempat yang mereka kunjungi selama di Banda Aceh. â€¢	Siswa mampu mengidentifikasi situs-situs sejarah di aceh', 'banda aceh', '2019-02-14', '2019-02-16', 5, 10, 7, 0, '0', 'LAPORAN-KEGIATAN-SCHOOL-VISIT IPS.docx', ''),
(11, '2', '2', '20', '21', '', '', '38', 'Perbandingan dan Aritmatika Sosial', '*Siswa mampu menuliskan tempat-tempat yang mereka kunjungi selama di Banda Aceh yang berkaitan dengan perbandingan senilai, berbalik nilai, maupun mengenai diskon.  *Menambah pemahaman dan pengalaman siswa secara nyata berkaitan dengan materi perbandingan', 'Perjalanan Bireuen-Banda Aceh, Suzuya, dan Gramedia', '2019-02-14', '2019-02-16', 6, 3, 11, 0, '0', 'LAPORAN SCHOOL VISIT BANDA.docx', ''),
(12, '2', '2', '20', '21', '', '', '45', 'Kondisi alam Indonesia', 'Siswa dapat mengunjungi langsung berbagai kenampakan alam seperti gunung, laut dan kemudian mengetahui berbagai fenomena alam yang terjadi ditempat tersebut. Siswa juga mengunjungi mesium Tsunami sehingga dapat melihat berbagai dampak dari fenomena alam y', 'Mesium Tsunami dan Pantai Pasir Putih', '2019-02-13', '2019-02-15', 2, 3, 7, 10, '0', 'LAPORAN-KEGIATAN-SCHOOL-VISIT.docx', ''),
(13, '2', '2', '24', '25', '', '', '41', 'Asam, Basa, dan Garam', 'a.	Tujuan dan Manfaat kegiatan Siswa dapat melihat langsung usaha hidroponik, serta cara menggunakan PH meter, cara mendapatkan air bersih, dan cara merawat sayuran. ', 'Cot Bada, Bireuen.', '2019-02-18', '2019-02-18', 0, 0, 0, 0, '0', 'SCHOOL VISIT KE HIDROPONIK.docx', ''),
(14, '1', '2', '10', '11', '', '', '19', 'Mengenal pemanfaatan sumber daya alam lingkungan sekitar menjadi benda yang bermanfaat bagi masyarakat', 'siswa mengetahui dan Mengenal pemanfaatan sumber daya alam lingkungan sekitar menjadi benda yang bermanfaat bagi masyarakat', 'pabrik batu bata Juli Pasee, Bireuen', '2019-02-27', '2019-02-27', 35, 39, 0, 0, '662', 'LAPORAN KEGIATAN SCHOOL VISIT KELAS 5 KE BANK INDONESIA DAN WATERBOOM BLANG MANGAT TP 2019-2020.docx', ''),
(15, '1', '2', '11', '', '', '', '68', ' Lingkungan ', ' Siswa mampu mengetahui cara pembuatan batu bata dan mampu menghubungkan kegiatan tersebut dengan materi Lingkungan.  ', ' Pabrik pembuatan batu bata Gampong Paseh ', '2019-02-27', '2019-02-27', 35, 0, 0, 0, '277000', 'NAULA-LAPORAN SCHOOL VISIT KE PABRIK PEMBUATAN BATU BATA.doc', ''),
(16, '2', '2', '20', '21', '', '', '45', 'Kondisi alam Indonesia', 'siswa dapat melihat langsung keadaan alam Indonesia dan melihat dampak dari fenomena alam yang terjadi di Indonesia', 'Mesium Tsunami ', '2019-02-14', '2019-03-16', 2, 3, 11, 10, '1', '', ''),
(17, '2', '2', '22', '23', '', '', '38', 'Recount Text', 'â€¢	Siswa mampu menuliskan tempat-tempat yang mereka kunjungi selama di Banda, â€¢	Siswa mampu merangkaikan dalam bentuk Recount Text terkait kunjungan mereka tersebut ', 'â€¢	Mesjid Raya Baiturrahman Banda Aceh, â€¢	Benteng Indra Patra, â€¢	Pantai Pasir Putih, â€¢	Museum Aceh, â€¢	Museum Tsunami, â€¢	Gramedia dan â€¢	Kuta Malaka', '2019-02-14', '2019-02-16', 6, 11, 0, 0, '1000', '', ''),
(18, '2', '2', '22', '', '', '', '69', ' Recount Text ', ' Siswa mampu merangkaikan dalam bentuk Recount Text terkait kunjungan mereka tersebut ', ' Mesjid Raya Baiturrahman Banda Aceh, Benteng Indra Patra,Pasir Putih, Museum Aceh, Museum Tsunami, Gramedia dan Kuta Malaka ', '2019-02-14', '2019-02-16', 3, 6, 6, 0, '0', 'LAPORAN-KEGIATAN-SCHOOL-VISIT SMP SEM GENAP.docx', ''),
(19, '3', '2', '3', '4', '', '', '60', '  Pembelajaran Renang Gaya Bebas  ', '  melatih gerak dasar / pengenalan materi renang dan juga untuk menenangkan pikiran dan mengurangi stres anak-anak (refreshing).  ', '  Water Boom Kuta Malaka, Aceh Besar  ', '2019-04-27', '2019-04-28', 16, 27, 14, 0, '1.000.000', '', ''),
(20, '1', '2', '17', '16', '', '', '8', 'Nilai-nilai Persatuan pada masa Perkembangan Islam di Indonesia', 'â€¢	Siswa mampu memahami proses berkembangnya Islam di Aceh melalui cara-cara damai. Terutama bagaimana Kerajaan Samudra Pasai memiliki peranan penting dalam perkembangan Islam di Indonesia.', 'Makam Malikul saleh dan Waterboom Mangat ceria di Aceh Utara', '2019-03-11', '2019-03-11', 41, 40, 0, 0, '1834000', 'LAPORAN KEGIATAN SCHOOL VISIT Pkn dan Olahraga.docx', ''),
(21, '2', '2', '24', '25', '', '', '3', 'Laporan perjalanan', 'Menambah wawasan siswa tentang beberapa produksi makanan', 'Medan', '2019-02-14', '2019-02-16', 1, 0, 0, 0, '7.500.000', 'LAPORAN-KEGIATAN-SCHOOL-VISIT ok.docx', ''),
(22, '1', '1', '10', '11', '', '', '19', ' Mengenal sejarah Islam dan Mengenal alat transportasi darat yaitu kereta api ', ' Kegiatan ini bertujuan untuk menambah pengetahuan  siswa tentang sejarah Islam di Indonesia. Dan mengenalkan siswa dengan alat transportasi kereta api. ', ' Makam Malikul Saleh dan Stasiun kereta api Krueng Mane ', '2018-11-07', '2018-11-07', 33, 35, 0, 0, '1341000', 'LAPORAN KEGIATAN SCHOOL VISIT kelas 2A.doc', ''),
(23, '1', '1', '15', '14', '', '', '29', 'Mengenal Tempat Wisata Aceh dan Budayanya', 'Sebagai sarana belajar langsung pada sumbernya dan menambah pengalaman belajar siswa', 'Waduk jeulikat dan Water Boom Mangat Ceria', '2018-11-12', '2018-11-11', 37, 38, 36, 35, '1.400.000', 'SCHOOL VISIT KLS 4.doc', ''),
(24, '1', '2', '15', '14', '', '', '29', '  Sumber Daya Alam Hayati dan Non Hayati ', ' Untuk mengetahui pemanfaatan sumber daya alam lingkungan sekitar ', ' Ladang Jagung  desa Ulee Glee ', '2019-04-04', '2019-04-04', 37, 35, 41, 40, '1.697.000 ', 'SCHOOL VISIT KLS 4.doc', ''),
(25, '1', '1', '12', '13', '', '', '48', 'Cara Menanam dan Merawat Tumbuhan', 'Siswa dapat mengetahui cara menanam dan merawat tumbuhan, dan  - Siswa juga belajar melakukan wawancara kepada narasumber.', 'Polem Garden di Paya Meuneng.', '2018-11-14', '2018-11-14', 35, 39, 0, 0, '700.000', 'FORMAT LAPORAN KEGIATAN SCHOOL VISIT.doc', ''),
(27, '1', '2', '8', '9', '', '', '53', 'profesi dan gerakan dasar berenang', 'kegiatan ini bertujuan memperekenalkan siswa pada profesi masinis dan merasakan langsung naik kereta api serta merasakan pengalaman langsung mempraktikkan gerakan dasar berenang pada media air', 'stasiun kereta api Krung mane dan Waterboom Blang  Mangat', '2019-04-11', '2019-04-11', 41, 40, 35, 0, '1.400.000.00', '', ''),
(28, '3', '3', '4', '3', '', '', '51', ' Penyulingan minyak serai  ', ' siswa dapat mengetahui lansung proses pengolahan minyak serai dengan menggunakan destilasi sederhana dan mamfaat dari kegiatan yaitu untuk menambah wawasan siswa dalam mengolah bahan yang lainnya ', ' Bener Meriah ', '2019-08-26', '2019-08-26', 14, 15, 23, 29, '2.300.000', 'LAPORAN KEGIATAN SCHOOL VISIT BENER MERIAH.docx', ''),
(29, '3', '3', '3', '4', '', '', '78', 'Teks prosedural', 'Siswa mampu menulis laporan teks prosedural', 'Bener meriah', '2019-08-26', '2019-08-26', 24, 23, 23, 29, '2.300.000', 'LAP KEG VISIT BENER MERIAH.docx', ''),
(30, '3', '3', '4', '3', '', '', '77', ' Program Linear ', ' Siswa dapat membuat model matematika dari masalah yang didapat dan bisa menghitung keuntungan maksimum dari model tersebut. ', ' Bener Meriah (Parik Penyulingan minyak serai) ', '2019-08-31', '2019-08-31', 14, 24, 23, 0, '2.300.000', 'LAPORAN KEGIATAN SCHOOL VISIT BENER MERIAH.docx', ''),
(31, '3', '3', '3', '4', '', '', '65', 'persebaran flora dan fauna', 'tujuannya adalah untuk menambah wawasan siswa mengenai materi persebaran flora dan fauna dengan melihat langsung dilapangan. manfaatnya adalah siswa dapat langsung berinteraksi dengan alam dimana flora dan fauna itu tersebar, siswa dapat mengetahui bahwa ', 'Kabupaten Bener Meriah', '2019-08-26', '2019-08-26', 29, 14, 24, 15, '2.300.000', 'LAPORAN KEGIATAN SCHOOL VISIT yunda.docx', ''),
(32, '3', '3', '7', '26', '', '', '25', ' Iman Kepada Qadha dan Qadar ', ' Siswa memahami ketentuan takdir yang telah ditetapkan Allah ', ' Rumoh Geudong  ', '2019-08-31', '2019-08-31', 14, 17, 16, 0, '3.000.000', 'School Visit Pidie.docx', ''),
(33, '3', '3', '7', '26', '', '', '23', '  Sejarah mempertahankan kemerdekaan indonesia didalam menghadapi konflik internal dan eksternal  ', '  Siswa bisa melihat langsung bukti peninggalan konflik berupa bangunan yang menjadi pembelajaran sejarah indonesia  ', '  Rumoh Geudong ( tempat penyiksaan terhadap penduduk sipil selama konflik DOM)  ', '2019-10-02', '2019-10-02', 20, 12, 14, 22, '3000000', '', ''),
(34, '3', '3', '7', '26', '', '', '23', ' Hubungan Internasional ', ' Siswa bisa memahami kondisi negara lain lain didalam tujuan utnuk memajukan Indonesia melalui serangkaian kerjasama hubungan internasional', ' Siswa-siswi Mindanao Filipina di SSB Pidie ', '2019-10-02', '2019-10-02', 17, 22, 14, 0, '3000000', '', ''),
(36, '3', '3', '3', '', '', '', '34', 'Opinion & Thought', 'Siswa mampu mengungkapkan pendapat terkait tempat yang dikunjungi ', 'Bener Meriah', '2019-08-26', '2019-08-26', 24, 29, 14, 0, '2.300.000', 'LAPORAN-KEGIATAN-SCHOOL-VISIT SMA OPINION.docx', ''),
(38, '2', '3', '39', '40', '', '', '74', ' Mengidentifikasi motif dan teknik pembuatan kerajinan tektil khas daerah ', ' Siswa mampu membedakan motif dan makna yang terdapat pada motif kerawang Gayo serta mengetahui teknik pembuatan kerajinan tekstil khususnya kerawang Gayo ', ' Gedung Dekranas Bener Meriah ', '2019-08-23', '2019-08-24', 4, 11, 10, 7, '3.000.000', 'NADIA-LAPORAN SCHOOL VISIT KE TAKENGON.doc', ''),
(40, '3', '3', '4', '', '', '', '80', 'Suhu dan Kalor', 'Siswa dapat menerapakan konsep suhu dan kalor pada penyulingan minyak serai', 'Bener Meriah', '2019-08-26', '2019-08-26', 23, 24, 14, 15, '2.300.000', 'LAPORAN KEGIATAN SCHOOL VISIT BENER MERIAH.docx', ''),
(41, '1', '3', '27', '28', '', '', '49', 'Mengenal Budaya Aceh', '  Meningkatkan pengetahuan dan pengalaman belajar siswa tentang Budaya Aceh ', ' Rumoh Aceh Teungku Chiek Awe Geutah, Peusangan. Kabupaten Bireuen ', '2019-10-01', '2019-10-10', 35, 36, 41, 0, '500.000', 'LAPORAN KEGIATAN SCHOOL VISIT.doc', ''),
(42, '1', '4', '27', '28', '', '', '49', 'Benda, Hewan dan tanaman disekitarku', 'Mengenal macam-macam hewan dan cara merawatnya', 'Peternakan', '2020-02-03', '2020-02-03', 41, 35, 0, 0, '1.000.000', '', ''),
(43, '1', '3', '28', '27', '', '', '19', 'mengenal budaya Aceh berupa rumah Aceh', ' siswa mengenal bentuk rumah Aceh dan bagian-bagiannya, serta mengenal alat-alat tradisional Aceh', 'Rumoh Aceh Teungku Chiek Awe Geutah, Peusangan. Kabupaten Bireuen', '2019-10-09', '2019-10-09', 36, 35, 0, 0, '500.000', '', ''),
(44, '1', '3', '37', '38', '', '', '30', 'Perkembangbiakan Makhluk Hidup', 'Siswa dapat melihat pertumbuhan dan perkembangan tumbuhan hidroponik dan dapat diskusi dengan petani hidroponik', 'Lhokseumawe', '2019-08-03', '2019-08-03', 35, 39, 0, 0, '1.700.000', '', ''),
(45, '1', '4', '37', '38', '', '', '30', '  Listrik  ', '  Siswa dapat mengetahui proses aliran listrik dari pembangkit listrik ke rumah warga dan siswa mengetahui cara menghitung biaya listrik  ', '  Kantor PLN  ', '2020-02-10', '2020-02-14', 37, 39, 35, 0, '700.000', '', ''),
(46, '1', '4', '37', '38', '', '', '30', ' mendeskripsikan tugas dan fungsi pemerintah pusat dan daerah ', ' siswa mengetahui tugas anggota dewan daerah dan peran mereka terhadap masyarakat ', ' kantor DPRD Bireuen ', '2019-10-07', '2019-10-11', 35, 38, 41, 0, '700.000', '', ''),
(47, '1', '3', '37', '38', '', '', '30', 'Perkembangbiakan Makhluk Hidup', 'siswa melihat proses cangkok dan stek di lapangan', 'Polem Garden', '2019-08-19', '2019-08-19', 37, 35, 39, 0, '500.000', '', ''),
(48, '1', '3', '29', '30', '', '', '71', '  Bermain di Lingkunganku  ', '  Siswa di ajarkan untuk mengenal tempat wisata di Lingkungannya  ', '  Waduk Jeulingkat  ', '2019-09-11', '2019-09-11', 40, 35, 41, 42, '1.845.000', 'Laporan Kegiatan School Visit Kelas 2 ke Waduk Jeulikat TP.2019-2020.doc', ''),
(49, '2', '4', '43', '44', '', '', '70', '  Persatuan dan Keberagaman Masyarakat Indonesia  ', '  siswa mampu mengetahui keberagaman yang ada di Indonesia khususnya di Sumatera Utara  ', '  Istana Maimun  ', '2020-02-12', '2020-02-15', 2, 4, 5, 10, '0', '', ''),
(50, '1', '3', '31', '32', '', '', '82', ' Perkembanganbiakan hewan     ', 'siswa mampu menuliskan deskripsi kegiatan dan mengamati perkembangbiakan hewan serta menambah pengalaman dan mengembangkan rasa peduli terhadap lingkungan ', ' Blangbladeh ', '2019-09-10', '2019-09-10', 35, 36, 0, 0, '1.442.000', 'LAPORAN KEGIATAN SCHOOL VISIT B.INDONESIA DAN CULTURE.docx', ''),
(51, '1', '4', '29', '30', '', '', '81', 'Merawat Hewan dan Tumbuhan', 'Siswa diharapkan mampu mengenal dan merawat Makluk Hidup seperti Hewan dan Tumbuhan', 'Polem Garden', '2020-02-01', '2020-02-29', 35, 41, 42, 40, '500.000', '', ''),
(52, '2', '4', '39', '40', '', '', '66', 'Menulis surat pribdai dan dikirimkan melalui kantor pos', 'Siswa dapat mengetahui cara mengirim surat di kantor pos. Era milenial saat ini siswa tidak mengenal surat dan kegiatan menyurat. Guru memberi pengalaman baru untuk siswa melalui kegiatan ini.', 'Kantor Pos Bireuen', '2020-02-03', '2020-02-10', 2, 0, 0, 0, '350.000', '', ''),
(53, '1', '3', '35', '36', '', '', '40', 'organ tubuh dan sistem pernapasan manusia', 'siswa mampu mengenal bentuk dan fungsi dari organ tubuh dan sistem pernapasan pada dirinya.', 'rumah sakit umum Dr. Fauziah bireuen', '0000-00-00', '0000-00-00', 37, 42, 35, 40, '700.000', '', ''),
(54, '1', '4', '35', '36', '', '', '40', 'pengaruh letak geografis indonesia', 'siswa mendapatkan pengalaman melihat langsung pembuatan minyak serta mengetahui istilah - istilah berbahasa inggris dalam pembuatan minyak.', 'berkunjung ke PT. ARUN ', '0000-00-00', '0000-00-00', 38, 35, 34, 0, '2.000.000', '', ''),
(55, '2', '3', '44', '43', '', '', '83', '  Kunjungan ke Taman Hidroponik    ', '  untuk menambah wawasan siswa mengenai pemanfaatan Bioteknologi secara modern dan ramah lingkungan  ', '  Desa Cot Bada  ', '2019-08-20', '2019-08-20', 2, 4, 0, 0, '350.000', '', ''),
(56, '1', '3', '33', '34', '', '', '53', 'Taksiran uang dan proses pembuatan', 'siswa mampu mempraktikkan langsung mengolah suatu makanan dengan menentukan taksiran biaya pembuatan serta mampu  memprediksikan laba dari penjualan.  siswa mampu melakukan sesuatu dengan mendengarkan atau membaca intruksi. Siswa dapat mengetahui dan mera', 'KFC  Bireuen', '2019-10-03', '2019-10-03', 39, 35, 41, 0, '400.000,-', '', ''),
(57, '1', '4', '33', '34', '', '', '8', 'Belajar dengan Bupati (Meneladani Tokoh)', 'siswa mengenal dan mengetahui struktur tertinggi pejabat daerah di tingkat kabupaten. Siswa mendengarkan secara langsung cerita pengalaman Hidup tokoh pemimpin Bireuen saat ini. Siswa dapat meneladani nilai-nilai luhur yang mengantar kesuksesan sang tokoh', 'Kantor Bupati Kabupaten Bireuen', '2020-01-28', '2020-01-28', 38, 35, 41, 0, '500.000,-', '', ''),
(58, '1', '4', '33', '34', '', '', '53', 'proses pencetakan surat kabar', ' Kantor Serambi Indonesia Biro Lhokseumawe ', ' gampong meunasah mesjid kecamatan muara dua, lhokseumawe ', '2020-02-25', '2020-02-25', 35, 41, 38, 0, '1.000,000,-', '', ''),
(59, '3', '3', '7', '26', '', '', '43', '  menulis cerita sejarah  ', '  Siwa dapat menuliskan informasi penting terkait sejarah Rumoh Geudong. Mempelajari sejarah konflik Aceh melalui situs peninggalan sejarah.  ', '  Rumoh Geudong, Teupin Raya, Kecamatan: Geulumpang Tiga, Kabupaten Pidie  ', '2019-08-31', '2019-08-31', 20, 16, 12, 22, '3.000.000', 'School Visit Rumoh Geudong.docx', ''),
(60, '1', '1', '33', '34', '', '', '8', 'Kenampakan Alam', 'Siswa bisa mengaamti langsung kenampakan alam baik yang alami maupun buatan', 'Waduk Jeulikat, Aceh Utara', '2019-09-08', '2019-09-14', 37, 35, 38, 0, '2000000', '', ''),
(61, '1', '1', '33', '34', '', '', '8', 'Taksiran Uang', 'Siswa mampu melakukan taksiran uang untuk keperluan belanjanya', 'KFC Suzuya Mall Bireuen', '2019-10-14', '2019-10-19', 39, 35, 41, 0, '800000', '', ''),
(62, '1', '4', '33', '34', '', '', '8', 'Wawancara', 'Siswa mampu mempraktekkan cara mewawancarai dengan baik', 'Kantor Bupati Bireuen', '2020-01-13', '2020-02-07', 35, 41, 38, 0, '500000', '', ''),
(63, '3', '3', '7', '26', '', '', '1', 'Pembuatan gerabah      ', '      Siswa memahami teknik pembuatan gerabah secara tradisional dan mampu membuat karya gerabah      ', '      Sentra kerajinan gerabah Cot Bada Bireuen      ', '2019-07-30', '2019-07-30', 18, 0, 0, 0, '267.000', 'Laporan School Visit - Kerajinan Gerabah.docx', ''),
(64, '3', '3', '3', '', '', '', '89', 'Pertumbuhan dan Pembangunan Ekonomi', 'Siswa dapat mengamati dan menjelaskan struktur dan faktor-faktor peningkatan pembangunan ekonomi.', 'Bener Meriah ', '2019-08-31', '2019-08-31', 15, 29, 14, 0, '2.300.000', 'LAPORAN KEGIATAN SCHOOL VISIT BENER MERIAH.docx', ''),
(65, '2', '4', '43', '44', '', '', '9', ' Aplikasi dari Shalat Jama Qashar ', 'Siswa dapat melaksanakan/mempraktekkan pelaaran Shalat Jama Qashar dengan baik saat dalam keadaan Musafir', 'Medan sekitarnya', '2020-02-12', '2020-02-15', 1, 6, 5, 2, '6.500.000', '', ''),
(66, '3', '3', '26', '7', '', '', '60', ' Latihan Dasar Renang Gaya Bebas dan refresing ', ' Untuk pengenalan materi renang, belajar dasar renang dan refresing ', ' Kolam Renang, Tangse - Pidie ', '2019-08-31', '2019-08-31', 16, 14, 12, 20, '3.000.000', 'Form_Laporan_Class_Project_ke Kolam Renang.docx', ''),
(67, '2', '3', '39', '40', '', '', '38', ' Himpunan ', ' Mendata benda/objek yang ada di kantor Dekranas dalam bentuk himpunan ', ' Kantor Dekranas, Kabupaten Bener Meriah, Aceh Tengah ', '2019-09-05', '2019-09-06', 6, 4, 10, 7, '3.220.000', 'LAPORAN KEGIATAN SCHOOL VISIT -ASYI.docx', ''),
(68, '2', '3', '39', '40', '', '', '88', '  Memperkenalkan siswa dengan lingkungan sehat bersuhu rendah yang mempengaruhi perbedaan tingkat kebugaran jasmani  ', '  1.	Mengenal lingkungan bersuhu dingin. 2.	Mempraktikkan langsung kegiatan kebugaran jasmani ditempat yang bersuhu rendah. 3.	Memahami perbedaan kebugaran jasmani ditempat yang bersuhu rendah 4.	Rekreasi dan mengenal lingkungan daerah dataran tinggi     ', '  Pemandian Kolam air panas,   ', '2019-09-05', '2019-09-06', 10, 6, 11, 4, '3.000.000', 'farhan-laporan school visit.docx', ''),
(69, '2', '3', '39', '40', '', '', '16', '   TIK_Membuat brosur sederhana dengan program pengolah kata    ', '    Menyeleksi benda/objek kerajinan Kerawang Gayo yang ada di kantor Dekranas untuk dijadikan objek foto pada desain brosur sederhana    ', '    Dekranas Bener Meriah    ', '2019-09-05', '2019-09-06', 11, 10, 6, 4, '0', 'School Visit TIK Brosur Sederhana Kelas VII September 19.docx', ''),
(71, '2', '3', '39', '40', '', '', '83', 'Inventarisasi jenis tanaman hias di Takengon', 'Untuk mendata jenis-jenis tanaman hias di takengon dan memberi nama ilmiah', 'Taman Bunga Takengon desa Pintu Rime Gayo', '2019-05-09', '2019-06-09', 4, 6, 11, 10, '3000.0000', 'SCHOOL VISIT (INVENTARISASI JENIS TANAMAN).docx', ''),
(72, '1', '3', '35', '36', '', '', '85', ' Nilai pecahan mata uang dan Teknik dasar Renang ', ' Mengenal dan melestarikan keberagaman Indonesia melalui mata uang ,Mengenal Nominal Pecahan Mata Uang , Menggambar salah satu mata uang, Mempraktekkan teknik dasar berenang , Memperkenalkan permainan air dan belajar teknik dasar berenang, Menambah pengal', ' Bank Indonesia, Lhokseumawe dan Waterboom Blang Mangat (Aceh Utara) ', '2019-09-17', '2019-09-17', 39, 40, 41, 42, 'Rp. 474.000,-', 'LAPORAN KEGIATAN SCHOOL VISIT KELAS 5 KE BANK INDONESIA DAN WATERBOOM BLANG MANGAT TP 2019-2020.docx', ''),
(73, '1', '3', '33', '34', '', '', '57', ' Kenampakan Alam', ' Siswa mampu memb ', ' Waduk Jeulikat ', '2019-09-11', '2019-09-11', 42, 35, 0, 0, '1.180.000,00', 'LAPORAN KEGIATAN SCHOOL VISIT SD SUKMA BANGSA BIREUEN.docx', ''),
(74, '2', '4', '42', '41', '', '', '83', 'Laju transportasi pada tumbuhan', 'Untuk Mengetahui  factor laju  transportasi  pada tumbuhan dipengaruhi oleh fotosintesis', 'Cot Bada', '2020-03-15', '2020-03-15', 4, 0, 0, 0, '500.000', '', ''),
(75, '3', '4', '2', '', '', '', '89', 'Keseimbangan harga dan struktur pasar', 'Mampu menganalisis perubahan harga dan struktur pasar', 'Pasar Induk Kota Juang Bireuen', '2020-01-30', '2020-01-30', 32, 0, 0, 0, '0', '', ''),
(76, '3', '4', '2', '', '', '', '95', 'Internalisasi nilai dan norma dan pembentukan kepribadian', 'mengetahui berbagai nilai dan norma sosial yang berlaku dalam masyarakat', 'Pasar Induk Kota Juang Bireuen', '2020-01-30', '2020-01-30', 27, 0, 0, 0, '0', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visit_home`
--

CREATE TABLE `visit_home` (
  `id_visit_home` int(11) NOT NULL,
  `id_jenjang` varchar(255) NOT NULL,
  `id_semester` varchar(255) NOT NULL,
  `id_kelas` varchar(255) NOT NULL,
  `id_guru` varchar(255) NOT NULL,
  `id_siswa` varchar(255) NOT NULL,
  `ortu` varchar(255) NOT NULL,
  `waktu_1` date NOT NULL,
  `tujuan_visit_home` varchar(255) NOT NULL,
  `hasil_visit_home` varchar(255) NOT NULL,
  `lanjutan_visit_home` varchar(255) NOT NULL,
  `laporan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visit_home`
--

INSERT INTO `visit_home` (`id_visit_home`, `id_jenjang`, `id_semester`, `id_kelas`, `id_guru`, `id_siswa`, `ortu`, `waktu_1`, `tujuan_visit_home`, `hasil_visit_home`, `lanjutan_visit_home`, `laporan`) VALUES
(2, '1', '2', '9', '59', 'Iza Nazira', 'Kamarullah & Julianti', '2019-02-09', 'Untuk memperoleh informasi dari orangtua terkait kegiatan sehari-hari dan kegiatan belajar siswa dirumah serta mendiskusikan hal-hal mengenai penyebab seringnya Iza tidak memperoleh informasi yang telah disampaikan wali kelas kepada orangtua', 'Orangtua Iza mengatakan karena kesibukan ayah Iza dan terlebih ibu Iza yang juga disibukkan dengan kegiatan mengurus kedua adik Iza yang masih bayi sehingga perhatian dan kontrol mereka terhadap perkembangan Iza sangatlah kurang.', 'Orangtua menyanggupi untuk lebih bisa membagi waktu dan memperhatikan berbagai keperluan dan perkembangan Iza di sekolah. Orangtua juga mengatakan untuk kedepannya akan lebih sering mengecek segala informasi yang diberikan oleh wali kelas', ''),
(3, '2', '2', '21', '67', 'Muhammad Reza Alghifari', 'Jailani & Monika Fuanny', '2019-03-20', 'Untuk memeroleh informasi terkait kegiatan Reza di rumah sehari-hari, lalu mendiskusikan hal-hal mengenai penyebab Reza selalu terlambat mengumpulkan tugas dan kurangnya kedisiplinan dan tanggung jawab sebagai seorang siswa.', 'Reza mulai terlihat lalai sejak adiknya lahir saat usianya 10 thn. Ia hanya diizinkan menggunakan HP hari Sabtu & Minggu, namun sesekali mengarang alasan agar diperbolehkan. Ibunya juga jarang memeriksa HP sehingga tidak mengetahui informasi dari wali kls', 'Ibu akan lebih sering memeriksa informasi yang dikirimkan oleh wali kelas melalui WA agar dapat mengingatkan Reza setiap kali ia mulai lalai. Lalu Ibu juga akan lebih sering bertanya tentang tugas sekolah agar ia lebih disiplin dan bertanggungjawab.', ''),
(4, '2', '2', '21', '67', 'Royyan Aulia Nanda', 'Busyri Syafari & Rosmani', '2019-03-20', 'Untuk mengetahui aktivitas Royyan sehari-hari, lalu mendiskusikan hal-hal mengenai performanya di sekolah, terutama karena Royyan sulit memahami pelajaran dan agak tertinggal dari teman-temannya. Akibatnya ia juga sering terlambat mengumpulkan tugas.', 'Royyan adalah anak yang pendiam baik di sekolah maupun di rumah. Ia jarang bercerita mengenai tugas-tugas di sekolah, sehingga Ibunya tidak mengetahui kendala yang ia alami.', 'Royyan akan diberikan guru les untuk menunjang proses pembelajarannya. Selain itu, guru dan orangtua akan lebih meningkatkan komunikasi dengan Royyan agar ia lebih terbuka mengenai kendala yang dialami, sehingga solusi yang diberikan tepat sasaran.', ''),
(5, '1', '2', '19', '59', 'Devrina Suci Aulia', 'Rafiudin & Irawati', '2019-02-02', 'Untuk memperoleh informasi dari orangtua terkait kegiatan sehari-hari dan kegiatan belajar siswa dirumah, mendiskusikan penyebab dan solusi dari permasalahan akademik suci yang belakangan ini semakin menurun.', 'saat ini suci mulai disibukkan dengan hubungan pertemanan selain dengan teman sekolahnya. Suci mulai mengalami masa-masa pubertas layaknya remaja, ia sudah mengenal dan menjalani hubungan seperti pacaran. suci juga sering lalai menggunakan HP-nya ', 'orangtua harus meluangkan waktu lebih agar suci mendapatkan perhatian yang cukup. ibu suci harus bisa menjadi teman berbincang yang baik bagi suci dan tim meminta bantuan orangtua untuk mengontrol penggunaan HP suci sehingga ia ada waktu belajar dirumah', ''),
(6, '2', '2', '24', '67', 'M. Dafa Raihansyah', 'Taufik & Farrah Dina', '2019-03-23', 'Untuk mengetahui aktivitas Dafa sehari-hari, lalu berdiskus tentang sikapnya di sekolah, terutama saat berhadapan dengan guru-guru. Selain itu, Dafa juga sulit fokus dalam proses pembelajaran dan mudah terpengaruh oleh teman-temannya.', 'Teman-teman Dafa sesekali mengunjungi rumah Dafa untuk mengajaknya bermain. Orang tua Dafa pernah berbicara dengan Kepala Sekolah terkait sikapnya di sekolah, namun ia hanya mengubah perilakunya selama beberapa hari saja, lalu kembali mengulanginya lagi.', 'Orang tua membebaskan guru untuk memarahi atau bersikap ', ''),
(7, '2', '2', '24', '67', 'Rio Andika Zein ', 'Fauzi Zein & Risnatalia Siregar', '2019-03-23', 'Untuk mengetahui aktivitas Rio sehari-hari, lalu berdiskusi tentang sikapnya di sekolah, terutama saat berhadapan dengan guru-guru. Selain itu, Rio juga seringkali menyimpulkan secara negatif jika guru menasehatinya dan mudah terpengaruh oleh teman-teman.', 'Rio adalah anak bungsu dan kedua kakaknya sedang menempuh pendidikan di Medan sehingga ia paling disayang oleh org tuanya. Akibatnya, saat dimarahi oleh guru Rio akan merasa bahwa guru tersebut membencinya dan juga memiliki persepsi negatif terhadap guru.', 'Rio akan melanjutkan sekolah ke SMA berasrama yang berlokasi di Medan. Ini adalah salah satu langkah yang orang tua ambil agar Rio menjadi lebih mandiri dan bertanggung jawab', ''),
(8, '2', '2', '20', '67', 'Ibnu Sina', 'Sayuti & Dr. Malahayati, SPPK', '2019-03-09', 'Untuk memperoleh informasi terkait kegiatan Ibnu di rumah sehari-hari, bagaimana pandangan orang tua terhadap Ibnu dan hubungannya dengan keluarga terutama setelah perceraian kedua orang tuanya saat ia masih kecil.', 'Ibnu adalah anak yang bertanggung jawab, rajin belajar/salat 5 waktu, dan protektif terhadap ibunya. Ia juga hobi membaca komik dan lebih mandiri dibandingkan kakaknya. Tidak ada dampak secara psikologis dari perpisahan kedua orang tuanya.', 'Orang tua akan terus memberikan perhatian lebih terhadap tumbuh kembang Ibnu, terutama dalam hal pendidikan dan perkembangannya sebagai remaja. Kerja sama antara orang tua dengan pihak sekolah akan terus terjalin demi mendukung Ibnu mencapai prestasi.', ''),
(9, '2', '2', '23', '67', 'Nyak Qurratu Aini', 'Dr. Sayuti ST., M.Sc & dr. Malahayati Sp. KK', '2019-03-09', 'Untuk memperoleh informasi terkait kegiatan Aini di rumah sehari-hari, bagaimana pandangan orang tua terhadap Aini dan hubungannya dengan keluarga, terutama setelah perceraian kedua orang tuanya saat ia masih kecil.', 'Aini adalah anak pertama dari 2 bersaudara. Ia menyukai bidang marketing, memiliki sifat pelupa, usil, cuek, penyayang dan rajin belajar, serta tidak pernah meninggalkan salat. Tidak ada dampak secara psikologis dari perpisahan kedua orang tuanya.', 'Orang tua akan terus memberikan perhatian lebih terhadap tumbuh kembang Aini, terutama dalam hal pendidikan dan perkembangannya sebagai remaja. Kerja sama antara orang tua dengan pihak sekolah akan terus terjalin demi mendukung Aini mencapai prestasi.', ''),
(12, '1', '3', '11', '59', 'Adam Faiz', 'Martunis & Mursyidah', '2019-10-01', 'untuk menjalin silaturahmi dengan orangtua Adam dan mendiskusikan kegiatan serta gaya belajar Adam baik di rumah maupun di sekolah.', 'Ibu Adam mengatakan bahwa beliau terbiasa menghubungi bu Putri (wali kelas sebelumnya) terkait informasi perkembangan Adam sehingga informasi tersebut tidak tepat sasaran. mengenai Adam yang mudah terdistraksi dikarenakan Adam tidak terbiasa belajar klasi', 'Orangtua akan menghubungi pak amrul sehingga informasi yang disampaikan tepat sasaran. Mengenai gaya belajar Adam, orangtua Adam akan menyesuaikan Adam untuk belajar secara klasikal agar Adam bisa lebih beradaptasi ketika belajar di sekolah.', 'Laporan Home Visit_Yoel.docx'),
(13, '2', '3', '39', '67', 'Yoel Liurendo', 'Halim & Sandy', '2019-09-02', 'Untuk mengetahui hubungan Yoel dengan keluarga dan rutinitasnya di rumah.  Yoel memiliki masalah tekait kemampuan fokusnya, ia mengalami kesulitan bahkan hampir di segala aspek, mulai dari akademik, sosial, maupun kognitif', 'Ayah Yoel telah meninggal, sehingga Ibu Yoel jarang di rumah karena harus menjaga toko milik keluarganya. Ibu Yoel mendukung segala upaya yang dilakukan oleh para guru demi perkembangan Yoel, namun tidak ada tindak lanjut saat di rumah', 'Ibu Yoel akan memiliki nomor HP semua guru yang mengajar agar dapat menghubungi jika diperlukan. Yoel juga akan memiliki buku penghubung yang dibawa ke sekolah dan diperiksa oleh Ibunya setiap hari', 'Laporan Home Visit_Yoel.docx'),
(14, '2', '3', '39', '67', 'Alya Zaskiya', 'Tarmizi & Leni Liana', '2019-08-31', 'Untuk mengetahui bagaimana hubungan Alya dengan keluarga selama di rumah. Alya menunjukkan performa yang rendah dalam hal akademik dan mengalami kesulitan hampir di semua mata pelajaran', 'Sejak SD, Alya mengalami banyak ketertinggalan dibandingkan teman-temannya, sehingga mindset  \"bodoh\" telah tertanam di pikirannya', 'Alya harus mengikuti les khusus untuk mengejar ketertinggalannya. Di sekolah, guru akan lebih sering mengapresiasi dan memberikan pujian atas sesuatu yang Alya lakukan agar kepercayaan dirinya meningkat', 'Laporan Home Visit_Alya.docx');

-- --------------------------------------------------------

--
-- Struktur dari tabel `waka`
--

CREATE TABLE `waka` (
  `id_waka` int(11) NOT NULL,
  `nama_waka` varchar(255) NOT NULL,
  `nip_waka` varchar(255) NOT NULL,
  `username_waka` varchar(255) NOT NULL,
  `password_waka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `waka`
--

INSERT INTO `waka` (`id_waka`, `nama_waka`, `nip_waka`, `username_waka`, `password_waka`) VALUES
(1, 'waka', 'waka', 'waka', 'f43cc1b8c43da88496283e0204909106');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `datapustaka`
--
ALTER TABLE `datapustaka`
  ADD PRIMARY KEY (`id_datapustaka`);

--
-- Indeks untuk tabel `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id_guest`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indeks untuk tabel `jk`
--
ALTER TABLE `jk`
  ADD PRIMARY KEY (`id_jk`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `kelas2`
--
ALTER TABLE `kelas2`
  ADD PRIMARY KEY (`id_kelas2`);

--
-- Indeks untuk tabel `kelas3`
--
ALTER TABLE `kelas3`
  ADD PRIMARY KEY (`id_kelas3`);

--
-- Indeks untuk tabel `kelas4`
--
ALTER TABLE `kelas4`
  ADD PRIMARY KEY (`id_kelas4`);

--
-- Indeks untuk tabel `konselor`
--
ALTER TABLE `konselor`
  ADD PRIMARY KEY (`id_konselor`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `lomba`
--
ALTER TABLE `lomba`
  ADD PRIMARY KEY (`id_lomba`);

--
-- Indeks untuk tabel `lulusan`
--
ALTER TABLE `lulusan`
  ADD PRIMARY KEY (`id_lulusan`);

--
-- Indeks untuk tabel `manajemen`
--
ALTER TABLE `manajemen`
  ADD PRIMARY KEY (`id_manajemen`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `mapel1`
--
ALTER TABLE `mapel1`
  ADD PRIMARY KEY (`id_mapel1`);

--
-- Indeks untuk tabel `mapel2`
--
ALTER TABLE `mapel2`
  ADD PRIMARY KEY (`id_mapel2`);

--
-- Indeks untuk tabel `mapel3`
--
ALTER TABLE `mapel3`
  ADD PRIMARY KEY (`id_mapel3`);

--
-- Indeks untuk tabel `mapel4`
--
ALTER TABLE `mapel4`
  ADD PRIMARY KEY (`id_mapel4`);

--
-- Indeks untuk tabel `minggu`
--
ALTER TABLE `minggu`
  ADD PRIMARY KEY (`id_minggu`);

--
-- Indeks untuk tabel `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `pjruangan`
--
ALTER TABLE `pjruangan`
  ADD PRIMARY KEY (`id_pjruangan`);

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indeks untuk tabel `pustaka`
--
ALTER TABLE `pustaka`
  ADD PRIMARY KEY (`id_pustaka`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `statuspt`
--
ALTER TABLE `statuspt`
  ADD PRIMARY KEY (`id_statuspt`);

--
-- Indeks untuk tabel `status_final`
--
ALTER TABLE `status_final`
  ADD PRIMARY KEY (`id_status_final`);

--
-- Indeks untuk tabel `supervisi`
--
ALTER TABLE `supervisi`
  ADD PRIMARY KEY (`id_supervisi`);

--
-- Indeks untuk tabel `tp`
--
ALTER TABLE `tp`
  ADD PRIMARY KEY (`id_tp`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id_visit`);

--
-- Indeks untuk tabel `visit_home`
--
ALTER TABLE `visit_home`
  ADD PRIMARY KEY (`id_visit_home`);

--
-- Indeks untuk tabel `waka`
--
ALTER TABLE `waka`
  ADD PRIMARY KEY (`id_waka`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `datapustaka`
--
ALTER TABLE `datapustaka`
  MODIFY `id_datapustaka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `guest`
--
ALTER TABLE `guest`
  MODIFY `id_guest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id_hari` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `jenjang`
--
ALTER TABLE `jenjang`
  MODIFY `id_jenjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jk`
--
ALTER TABLE `jk`
  MODIFY `id_jk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `kelas2`
--
ALTER TABLE `kelas2`
  MODIFY `id_kelas2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `kelas3`
--
ALTER TABLE `kelas3`
  MODIFY `id_kelas3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `kelas4`
--
ALTER TABLE `kelas4`
  MODIFY `id_kelas4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `konselor`
--
ALTER TABLE `konselor`
  MODIFY `id_konselor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lomba`
--
ALTER TABLE `lomba`
  MODIFY `id_lomba` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `lulusan`
--
ALTER TABLE `lulusan`
  MODIFY `id_lulusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT untuk tabel `manajemen`
--
ALTER TABLE `manajemen`
  MODIFY `id_manajemen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `mapel1`
--
ALTER TABLE `mapel1`
  MODIFY `id_mapel1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `mapel2`
--
ALTER TABLE `mapel2`
  MODIFY `id_mapel2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `mapel3`
--
ALTER TABLE `mapel3`
  MODIFY `id_mapel3` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `mapel4`
--
ALTER TABLE `mapel4`
  MODIFY `id_mapel4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `minggu`
--
ALTER TABLE `minggu`
  MODIFY `id_minggu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mitra`
--
ALTER TABLE `mitra`
  MODIFY `id_mitra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `pjruangan`
--
ALTER TABLE `pjruangan`
  MODIFY `id_pjruangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT untuk tabel `pustaka`
--
ALTER TABLE `pustaka`
  MODIFY `id_pustaka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id_semester` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1173;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `statuspt`
--
ALTER TABLE `statuspt`
  MODIFY `id_statuspt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `status_final`
--
ALTER TABLE `status_final`
  MODIFY `id_status_final` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `supervisi`
--
ALTER TABLE `supervisi`
  MODIFY `id_supervisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tp`
--
ALTER TABLE `tp`
  MODIFY `id_tp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `visit`
--
ALTER TABLE `visit`
  MODIFY `id_visit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `visit_home`
--
ALTER TABLE `visit_home`
  MODIFY `id_visit_home` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `waka`
--
ALTER TABLE `waka`
  MODIFY `id_waka` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
