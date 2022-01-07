-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 11:52 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `password`) VALUES
(6, 'admin', 'admin', 'admin'),
(7, 'kepsek', 'kepsek', '123'),
(8, 'guru', 'guru', '123');

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `id` int(11) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi` varchar(250) NOT NULL,
  `sifat` enum('Biasa','Segera') NOT NULL,
  `batas` date NOT NULL,
  `id_surat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`id`, `tujuan`, `isi`, `sifat`, `batas`, `id_surat`) VALUES
(1, 'Pegawai Pendidikan Kabupaten Bogor', 'Pemberitahuan Pemberkasan  ', 'Segera', '2020-02-25', 39),
(2, 'SMP, MTS Negeri dan Swasta di Kabupaten Bogor', 'Undangan Sosialisasi', 'Segera', '2020-05-26', 37),
(3, 'Kepala Dinas Pendidikan Kab/Kota, Kepala Cabang Dinas Pendidikan Wil.1-6 Se-Jawa Barat ', 'Pedoman Penyusunan Kalender Pendidikan', 'Biasa', '2020-06-08', 43),
(4, 'Sekretaris Daerah Kab/Kota se-Jawa Barat', 'Pelaksanaan PPDB', 'Biasa', '2020-05-08', 61),
(5, 'Ketua Yayasan Sosialisasi Kanker Indonesia', 'Permohonan Ijin Rekomendasi Sosialisasi Kanker', 'Biasa', '2020-11-18', 73);

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_sk` int(11) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_ringkas` varchar(255) NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(255) NOT NULL,
  `lampiran` varchar(250) NOT NULL,
  `perihal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_sk`, `tujuan`, `isi_ringkas`, `no_surat`, `tgl_surat`, `tgl_catat`, `file`, `lampiran`, `perihal`) VALUES
(23, 'Kepala Dinas Pendidikan Kab.Bogor', '<p>Usulan Kenaikan Gaji Berkala</p>', '800/005-Kepeg.2020', '2020-01-07', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(2).jpeg', '-', 'Usulan Kenaikan Gaji Berkala'),
(24, 'Eva Kartika', 'Surat Keterangan Aktif', '421/015-Kesiswaan.2020', '2020-01-20', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4).jpeg', '-', 'Surat Keterangan Aktif'),
(25, 'Zahra', 'Surat Keterangan Aktif', '421/015-Kesiswaan.2020', '2020-01-20', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(5).jpeg', '-', 'Surat Keterangan Aktif'),
(26, 'Mochammad Atthalah Ghaffar ', 'Surat Ketrangan Akrif', '421/004-Kesiswaan.2020', '2020-01-06', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM.jpeg', '-', 'Surat Keterangan Aktif'),
(27, 'Kukun Kurniawan, S.Pd', 'Rapat Kepegawaian', '800/011.Kepegawaian.2020', '2020-01-17', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1).jpeg', '-', 'Rapat Kepegawaian'),
(28, 'Siswa-Siswa', 'Surat Keterangan Aktif', '421/015-Kesiswaan.2020', '2020-01-20', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(2).jpeg', '-', 'Surat Keterangan Aktif'),
(29, 'Guru dan Staf TU', 'Rapat', '800/027-Kepegawaian.2020', '2020-01-29', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(3).jpeg', '-', 'Rapat Dinas dan IHT'),
(30, 'Linda Musharofah', 'Surat keterangan akitf', '421/016-Kesiswaan.2020', '2020-01-21', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(4).jpeg', '-', 'Surat Keterangan Aktif'),
(31, 'Nurfitria Maulana Putri', '<p>Kesalahan pencetakan tanggal lahir</p>', '421/022-Kesiswaan.2020', '2020-01-27', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(5).jpeg', '-', 'Kesalahan Pencetakan Tanggal Lahir '),
(32, 'Muhammad Fadli', 'Keterangan aktif', '421/010-Kesiswaan.2020', '2020-01-16', '2020-12-26', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM.jpeg', '-', 'Surat Keterangan Aktif'),
(33, 'Assyifa Arwdina', 'Kesalahan Pencetakan Nama', '421/024-Kesiswaan.2020', '2020-01-28', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(1).jpeg', '-', 'Kesalahan Pencetakan Nama Pada SKHUN'),
(34, 'PLN', 'Pengajuan Pembuatan invoice dan virtual account', '900/17/Keu/2020', '2020-01-21', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3).jpeg', '-', 'Pengajuan untuk Pembuatan Invoice dan Virtual Account'),
(35, 'Nova Pitriani', 'Surat keterangan aktif', '421/018-Kesiswaan.2020', '2020-01-22', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5).jpeg', '-', 'Surat Keterangan Aktif'),
(36, 'Orang tua/Wali Siswa', 'Kegiatan Latihan Dasar Kepemimpinan ', '421/015-Kesiswaan.2019', '2020-01-30', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(6).jpeg', '-', 'Pemberitahuan'),
(37, 'Siti Maryam Ravina Handini', 'Kesalahan Pencetakan Nama', '421/024-Kesiswaan.2020', '2020-01-28', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM.jpeg', '-', 'Kesalahan Pencetakan Nama Pada SHUN'),
(38, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Studi Wisata ke Yogyakarta', '421/021-Kesiswaan.2020', '2020-01-28', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1).jpeg', '-', 'Studi Wisata'),
(39, 'Kapolsek Ciampea', 'Surat Permohonan Jalan Studi Wisata', '421/ 221  - Kesiswaan. 2020', '2020-01-28', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(2).jpeg', '-', 'Permohonan Surat Jalan'),
(40, 'Iis Setiwati, S.Pd', 'Mengawas Latihan Ujian', '843/031/Kur.2020', '2020-02-17', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(4).jpeg', '-', 'Mengawas Latihan Ujian 1'),
(41, 'Dra.Hj.Tri Rahayu,M.Pd', 'Mengikuti Seksi PTK', '800/034.Kepegawain.2020', '2020-02-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(1).jpeg', '-', 'Mengikuti Seksi PTK SMP Tahun 2020'),
(42, 'DB. Sussy Novita Dayani, S.Pd', 'Mengikuti latihan penyusunan soal', '800/.Kepegawaian.2020 ', '2020-02-04', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(2).jpeg', '-', 'Mengikuti Latihan Penyusunan Soal'),
(43, 'Ade Nurjaman, S.Pd', 'Membimbing siswa', '800/033-Kepegawaian.2020', '2020-02-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(3).jpeg', '-', 'Membimbing Siswa dalam Kegiatan Pembelajaran Luar Kelas '),
(44, 'Pembimbing Lomba Kesiswaan', 'Membimbing Dalam Lomba Kesiswaan', '421/042-Kesiswaan.2020', '2020-02-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(5).jpeg', 'Tim Pembimbing Lomba Kesiswaan Tahun 2020', 'Melaksanakan Tugas Sebagai Pembimbing Kegiatan Lomba Kesiswaan Jenjang SMP  Tahun 2020'),
(45, 'Yati Sumiati', 'Mengawas Ujian', '843/032/Kur.2020', '2020-02-17', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM.jpeg', '-', 'Mengawas Latihan Ujian 1'),
(46, 'Kurnaen', 'Bukti Tercatat Sebagai Siswa SMPN 1 Ciampea tahun 1996-1997', '421/231-Kesiswaan.2020', '2020-11-05', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_51_PM_(1).jpeg', '-', 'Tercatat Sebagai Siswa SMPN 1 Ciampea Tahun Pelajaran 1996-1997'),
(47, 'Teddy Setiawa', 'Surat Izin Praktik Lapang', '420/163-Pendidikan.2020', '2020-08-16', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_51_PM.jpeg', '-', 'Surat Izin Praktik Lapang'),
(48, 'Ajat Sudrajat', 'Bukti Tercatat Sebagai Siswa', '421/082-Kesiswaan.2020', '2020-03-17', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(1).jpeg', '-', 'Tercatat Sebagai Siswa SMPN 1 Ciampea Tahun Pelajaran 1997/1998'),
(49, 'Syach Reza Arief Akbar Pratama', 'Kesalahan Penulisan', '421/083-Kesiswaan.2020', '2020-03-17', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(2).jpeg', '-', 'Kesalahan Penulisan Pada Buku Raport'),
(50, 'Dra. Nursahedah', 'Mengantarkan Karya Ilmiah', '800/075-Kepegawaian.2020', '2020-03-13', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(3).jpeg', '-', 'Mengantarkan Karya Ilmiah Siswa Lomba Kreativitas Ilmiah Remaja'),
(51, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Studi Wisata', '421/064/Kesiswaan.2020', '2020-03-11', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(4).jpeg', '-', 'Pemberitahuan Studi Wisata'),
(52, 'Jungleland Adventure Theme Park', '<p>Studi Wisata</p>', '800/069-Kepegawaian.2020', '2020-03-10', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(5).jpeg', '-', 'Mengantarkan Berkas Portofolio Guru Berprestasi'),
(53, 'Manajemen TMII', 'Permohonan Izin Kunjungan', '421/060-Kesiswaan.2020', '2020-03-03', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(6).jpeg', '-', 'Permohonan Izin Kunjungan'),
(54, 'Kepala SMA Negeri 1 Rancabungur', 'Permohonan Tenaga Kerja Teknisi Untuk UNBK', '800/063-Kepegawaian.2020', '2020-03-03', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(7).jpeg', '-', 'Permohonan Tenaga Kerja Teknisi'),
(55, 'Muhammad Yoga', 'Surat Keterangan Aktif', '421/061-Kesiswaan.2020', '2020-03-03', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(8).jpeg', '-', 'Surat Keterangan Aktif'),
(56, 'Muhammad Yogai', 'Surat Keterangan Aktif', '421/061-Kesiswaan.2020', '2020-03-03', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(9).jpeg', '-', 'Surat Keterangan Aktif'),
(57, 'Dra. Nursahedah', '<p>Mengikuti Sosialisasi Guru Berprestasi</p>', '800/053.Kepegawaian.2020', '2020-02-16', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(10).jpeg', '-', 'Mengikuti Sosialisasi Guru Berprestasi'),
(58, 'Kamila Husen', 'Surat Keterangan Aktif', '421/040-Kesiswaan.2020', '2020-02-17', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(11).jpeg', '-', 'Surat Keterangan Aktif'),
(59, 'Kukun Kurniawan, S.Pd', 'Mendatangkan SKP 2019', '800/038-Kepegawaian.2020', '2020-02-14', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(12).jpeg', '-', 'Mendatangkan SKP tahun 2019'),
(60, 'Kunti Retno Asih, S.Pd', 'Mengikuti Bimtek', '800/049.Kepegawaian.2020', '2020-02-17', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(13).jpeg', '-', 'Mengikuti Bimtek Peningkatan Kompetensi Pustakawan'),
(61, 'Orang tua/Wali Siswa', 'Pengambilan rapot', '421/ 268  - Kesiswaan. 2020', '2020-12-07', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(14).jpeg', '-', 'Pengambilan Rapot'),
(62, 'Sharla Kiesha Nayla Pajilah', 'Kesalahan Nomor Peserta Ujian Nasional', '421/266-Kesiswaan.2020', '2020-12-14', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(15).jpeg', '-', 'Kesalahan Nomor Peserta Ujian Nasional'),
(63, 'Yani Sobarlianawati', 'Mengantarkan Berkas Mutasi Siswa', '800/260-Kepegawaian.2020', '2020-12-03', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(16).jpeg', '-', 'Mengantarkan Berkas Mutasi Siswa'),
(64, 'Erika Agustina', 'Surat keterangan aktif', '421/259-Kesiswaan.2020', '2020-12-02', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(17).jpeg', '-', 'Surat Keterangan Aktif'),
(65, 'Kukun Kurniawan, S.Pd', 'Mengantarkan usulan KGB', '800/257-Kepegawaian.2020', '2020-12-01', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(18).jpeg', '-', 'Mengantarkan Usulan KGB periode Januari dan Pebruari 2021'),
(66, 'Kukun Kurniawan, S.Pd', 'Mengikuti sosialisasi', '800/262-Kepegawaian.2020', '2020-12-08', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(19).jpeg', '-', 'Mengikuti Sosialisasi dan Pengenalan Aplikasi UHKP Kabupaten Bogor'),
(67, 'Setlim Amarul, S.Pd', 'Mengikuti Sosialisasi', '800/263-Kepegawaian.2020', '2020-12-08', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(20).jpeg', '-', 'Mengikuti Sosialisasi dan Pengenalan Aplikasi UHKP Kabupaten Bogor'),
(68, 'Muhammad Fachrizal', 'Surat Keterangan Aktif', '421/086-Kesiswaan.2020', '2020-04-30', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM.jpeg', '-', 'Surat Keterangan Aktif'),
(69, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Keunangan', '900/001-Keu.2020', '2020-01-02', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)1.jpeg', '-', 'Keuangan'),
(70, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>Keuangan</p>', '900/002-Keu.2020', '2020-01-02', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(5)1.jpeg', '-', 'Keuangan'),
(71, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengantarkan Perangkat', '800/003-Kepegawaian.2020', '2020-01-02', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(6)1.jpeg', '-', 'Mengantarkan Perangkat Ususlan BPP'),
(72, 'Orang tua/Wali Siswa', 'Legalisir', '421/006-Kesiswaan.2020', '2020-01-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4).jpeg', '-', 'Legalisir Raport, SKHUN, Ijazah'),
(73, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>Surat tugas</p>', '800/007-Kepegawaian.2020', '2020-01-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(2)1.jpeg', '-', 'Surat Tugas, KGB'),
(74, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengantarkan berkas laporan', '800/008-Kepegawaian.2020', '2020-01-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(5)2.jpeg', '-', 'Mengantarkan Berkas Laporan'),
(75, 'Sony Septiawan', 'Legalisir', '421/009-Kesiswaan.2020', '2020-01-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM.jpeg', '-', 'Legalisir Raport, SKHUN, Ijazah'),
(76, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengantar SKB', '421/010-Kesiswaan.2020', '2020-01-16', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)1.jpeg', '-', 'Mengantar SKB '),
(77, 'Dra. Nursahedah', 'Mengikuti MGMP', '800/012.Kepegawaian.2020', '2020-01-17', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(3)1.jpeg', '-', 'Mengikuti MGMP'),
(78, 'Halimah, S.E', 'Mengantar Surat BPP', '800/014.Kepegawaian.2020', '2020-01-20', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)2.jpeg', '-', 'Mengantar Surat BPP'),
(79, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengantarkan SK', '800/019.Kepegawaian.2020', '2020-01-22', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)1.jpeg', '-', 'Mengantarkan SK Berkala'),
(80, 'Ketua MGMP', 'MGMP B.inggris', '800/020-Kepegawaian.2020', '2020-01-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)1.jpeg', '-', 'MGMP B.Inggris'),
(81, 'Halimah, S.E', 'Mengambil daftar gaji', '800/023-Kepegawaian.2020', '2020-01-26', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)1.jpeg', '-', 'Mengambil Daftar Gaji Bulan Pebruari'),
(82, 'Mad Enoh', 'Rapat', '800/025-Kepegawaian.2020', '2020-01-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(5)1.jpeg', '-', 'Rapat Masrenbang'),
(83, 'Orang tua/Wali Siswa', 'Pemberitahuan', '421/026-Kesiswaan.2020', '2020-01-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)2.jpeg', '-', 'Pemberitahuan LDKS'),
(84, 'Orang tua/Wali Siswa', 'Legalisir', '421/028-Kesiswaan.2020', '2020-01-31', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)2.jpeg', '-', 'Legalisir SKHUN, Ijazah tahun 2016'),
(85, 'Dra.Hj.Tri Rahayu,M.Pd', 'Rapat', '800/029-Kepegawaian.2020', '2020-02-04', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)2.jpeg', '-', 'Mengikuti Rapat'),
(86, 'Alfiah', 'Legalisir', '421/030-Kesiswaan.2020', '2020-02-04', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)2.jpeg', '-', 'Legalisir siswa 2016'),
(87, 'Halimah, S.E', 'Mengantarkan Gaji', '800/030-Kepegawaian.2020', '2020-02-04', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)3.jpeg', '-', 'Mengantarkan Gaji Bulan Januari 2020'),
(88, 'Halimah, S.E', 'Mengajukan SPP', '800/035-Kepegawaian.2020', '2020-02-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)3.jpeg', '-', 'Mengajukan SPP UP'),
(89, 'Halimah, S.E', 'Mengantarkan SPM', '800/036-Kepegawaian.2020', '2020-02-11', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)4.jpeg', '-', 'Mengantarkan SPM UP'),
(90, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Proposal', '800/037-Kepegawaian.2020', '2020-02-12', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(1)1.jpeg', '-', 'Proposal Alat Peraga'),
(91, 'Kunti Retno Asih, S.Pd', 'Mengikuti BIMTEK', '800/039-Kepegawaian.2020', '2020-02-17', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)5.jpeg', '-', 'Mengikuti Bimtek Peningkatan Kompetensi Pustakawan'),
(92, 'Halimah, S.E', 'Mengantarkan SPP', '800/041.Kepegawaian.2020', '2020-02-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(2).jpeg', '-', 'Mengantarkan SPP Listrik bulan Pebruari 2019'),
(93, 'Ramdhan Sandy Permana', 'Legalisir', '421/043-Kesiswaan.2020', '2020-02-17', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(2)1.jpeg', '-', 'Legalisir Ijazah'),
(94, 'Junaidi', 'Mengantarkan Laporan', '800/044.Kepegawaian.2020', '2020-02-20', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)3.jpeg', '-', 'Mengantarkan Laporan SPJ BOS'),
(95, 'Halimah, S.E', 'Mengantarkan SPM', '800/045.Kepegawaian.2020', '2020-02-20', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(2)1.jpeg', '-', 'Mengantarkan SPM Listrik bulan pebruari 2020'),
(96, 'Halimah, S.E', 'Mengambil daftar gaji', '800/046.Kepegawaian.2020', '2020-02-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)4.jpeg', '-', 'Mengambil Daftar Gaji Bulan Maret 2020'),
(97, 'Halimah, S.E', 'Mengambil SP2D Listrik', '800/046.Kepegawaian.2020', '2020-02-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(5)3.jpeg', '-', 'Mengambil SP2D Listrik'),
(98, 'Yani Sobarlianawati', 'Pencairan PIP', '800/047.Kepegawaian.2020', '2020-02-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)6.jpeg', '-', 'Pencairan PIP 2018/2019'),
(99, 'Halimah, S.E', 'Mengantarkan SPP listrik dan spyd', '800/048.Kepegawaian.2020', '2020-02-25', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)4.jpeg', '-', 'Mengantarkan SPP.LS litsrik dan SPYD bulan Januari 2020'),
(100, 'SMAN Rancabungur', 'Permohonan', '800/050.Kepegawaian.2020', '2020-02-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)7.jpeg', '-', 'Permohonan Tenaga Kerja Teknisi'),
(101, 'Halimah, S.E', 'Mengantarkan SPP Dan SPYD', '800/051.Kepegawaian.2020', '2020-02-26', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3).jpeg', '-', 'Mengantarkan SPP.LS litsrik dan SPYD bulan Januari 2020'),
(102, 'Orang tua/Wali Siswa', 'Surat Legalisir', '800/052.Kesiswaan.2020', '2020-02-26', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM2.jpeg', '-', 'Surat Legalisir Rapot Untuk Fatur'),
(103, 'Ade Hidayat, S.Pd', 'Mengikuti Sosialisasi', '800/013.Kepegawaian.2020', '2020-01-20', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(2)2.jpeg', '-', 'Mengikuti Sosialisasi RPP'),
(104, 'Pengurus OSIS', 'Piagam Penghargaan Pengurus OSIS Periode 2018/2019', '421/054-Kesiswaan.2020', '2020-02-27', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(2)2.jpeg', '-', 'Piagam Penghargaan '),
(105, 'Halimah, S.E', 'Mengantarkan SPP', '800/055.Kepegawaian.2020', '2020-02-27', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)8.jpeg', '-', 'Mengantarkan SPP Guru Piket bulan Januari 2020'),
(106, 'Halimah, S.E', 'Mengantarkan SPP', '800/056.Kepegawaian.2020', '2020-02-28', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM3.jpeg', '-', 'Mengantarkan SPP Guru Piket bulan Januari 2020'),
(107, 'Bapak/Ibu Piket Malam', 'Surat Tugas Piket Malam', '800/057.Kepegawaian.2020', '2020-02-28', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM1.jpeg', '-', 'Surat Tugas Piket Malam'),
(108, 'Halimah, S.E', 'Mengantarkan S2PD', '800/058.Kepegawaian.2020', '2020-03-02', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)5.jpeg', '-', 'Mengantarkan SP2D.LS Listrik'),
(109, 'Ketua Panitia Workshop E-Raport', 'Mengikuti workshop', '800/059.Kepegawaian.2020', '2020-03-02', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM4.jpeg', '-', 'Mengikuti Workshop E-Raport'),
(110, 'Beni', 'Ijazah hilang', '421/062-Kesiswaan.2020', '2020-03-03', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)1.jpeg', '-', 'Ijazah Hilang'),
(111, 'Dra. Nursahedah', 'Mengikuti OGN di SMPN 1 Cileungsi', '800/065-Kepegawaian.2020', '2020-03-04', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)1.jpeg', '-', 'Mengikuti OGN '),
(112, 'Ketua Panitia Workshop Kehumasan', 'Mengikuti workshop kehumasan', '800/066-Kepegawaian.2020', '2020-03-05', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(5)4.jpeg', '-', 'Mengikuti Workshop Kehumasan'),
(113, 'Orang tua/Wali Siswa Rio Winanto', 'Legalisir', '421/067-Kesiswaan.2020', '2020-03-05', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(4)1.jpeg', '-', 'Legalisir SKHUN, Ijazah dan rapot tahun 2019'),
(114, 'Ketua Panitia Workshop UKS', 'Mengikuti workshop UKS', '800/068-Kepegawaian.2020', '2020-03-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)6.jpeg', '-', 'Mengikuti Workshop UKS'),
(115, 'Ketua Panitia Guru Berprestasi', 'Mengantarkan Berkas', '800/070-Kepegawaian.2020', '2020-03-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)5.jpeg', '-', 'Mengantarkan Berkas Portofolio Guru Berprestasi'),
(116, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Usulan NUPTK', '800/071-Kepegawaian.2020', '2020-03-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM5.jpeg', '-', 'Usulan NUPTK'),
(117, 'Halimah, S.E', 'Mengantarkan SPP.LS', '800/071-Kepegawaian.2020', '2020-03-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)7.jpeg', '-', 'Mengantarkan SPP.LS litsrik bulan maret 2020'),
(118, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat Tugas', '800/072-Kepegawaian.2020', '2020-03-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)6.jpeg', '-', 'Surat Tugas Kukun Kurniawan, S.Pd'),
(119, 'Guru SMPN 1 Ciampea', '<p>Surat Tugas</p>', '800/073-Kepegawaian.2020', '2020-03-11', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(4)1.jpeg', '-', 'Surat Tugas Mengawaas Ujian Sekolah'),
(120, 'Halimah, S.E', 'Mengantarkan SPM.LS', '800/073-Kepegawaian.2020', '2020-03-11', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)8.jpeg', '-', 'Mengantarkan SPM.LS Listrik bulan maret 2020'),
(121, 'Ketua Panitia Workshop Inklusif', 'Mengikuti Workshop', '800/074-Kepegawaian.2020', '2020-03-12', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(4)2.jpeg', '-', 'Mengikuti Workshop Inklusif Guru BK'),
(122, 'Orang tua/Wali Siswa', '<p>Legalisir</p>', '421/076-Kepegawaian.2020', '2020-03-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)2.jpeg', '-', 'Legalisir Raport, SKHUN, Ijazah Azmi Fikri Perdana Tahun Lulus 2014'),
(123, 'Kepala SMPN 1 Ciampea', 'Mengajukan SPP.LS', '800/077-Kepegawaian.2020', '2020-03-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)9.jpeg', '-', 'Mengajukan SPP.LS Spidy'),
(124, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>Mengantarkan berkas</p>', '421/078-Kepegawaian.2020', '2020-03-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)3.jpeg', '-', 'Mengantarkan Berkas Mutasi Siswa Kamilia Farla'),
(125, 'Panitia Bimtek', 'Bimtek', '800/079-Kepegawaian.2020', '2020-03-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)3.jpeg', '-', 'Bimtek Pustakawan SMP 2020'),
(126, 'Dinas Pendidikan Kabupaten Bogor', 'TGP TW 1 TA 2020', '800/080-Kepegawaian.2020', '2020-03-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM2.jpeg', '-', 'TGP TW 1 TA 2020 Unit Kerja SMPN 1 Ciampea'),
(127, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengantar SKP', '800/081-Kepegawaian.2020', '2020-03-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM6.jpeg', '-', 'Mengantar SKP'),
(128, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengantar format DPCP', '800/082-Kepegawaian.2020', '2020-03-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)7.jpeg', '-', 'Mengantarkan Format DPCP'),
(129, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengantarkan berkas laporan', '800/084-Kepegawaian.2020', '2020-03-17', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(5)1.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan berkas laporan hasil rekonsilidasi laporan keuangan bulan pebruari 2020'),
(130, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengambil berkas', '800/085-Kepegawaian.2020', '2020-03-18', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)3.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil berkas hasil tanda bunga kepala donas (DPCP) & mengambil SPP.LS'),
(131, 'Bu Mursyidah', 'SKMT', '800/086-Kepegawaian.2020', '2020-03-23', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(2)3.jpeg', '-', 'Surat Keterangan Menjalankan Tugas Pembelajaran Program PAI Bimbingan dan tugas tertulis'),
(132, 'Bapak/Ibu Piket Malam', 'Surat Tugas Piket Malam', '800/087-Kepegawaian.2020', '2020-03-31', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM1.jpeg', '-', 'Surat Tugas Piket Malam, Mengambil data turn out daftar gaji'),
(133, 'Guru SMPN 1 Ciampea', 'Pemberitahuan', '800/088-Kepegawaian.2020', '2020-03-31', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(2)2.jpeg', '-', 'Pemberitahuan Perpanjangan Kegiatan KBM'),
(134, 'Dinas Pendidikan Kabupaten Bogor', 'Surat Tugas', '800/089-Kepegawaian.2020', '2020-04-04', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)4.jpeg', '-', 'Surat Tugas Kukun Kurniawan, S.Pd'),
(135, 'Halimah, S.E', 'Mengantarkan berkas', '800/089-Kepegawaian.2020', '2020-04-02', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)4.jpeg', '-', 'Mengantarkan berkas pengajuan mutasi siswa'),
(136, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>Mengantarkan berkas</p>', '800/090-Kepegawaian.2020', '2020-04-06', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(4)2.jpeg', '-', 'Mengantarkan berkas pengajuan pensiun Mursyidah'),
(137, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat Kelakuan Baik', '800/090-Kepegawaian.2020', '2020-04-06', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)4.jpeg', '-', 'Surat Kelakuan Baik Siswa Kelas XI'),
(138, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat Tugas', '800/090-Kepegawaian.2020', '2020-04-06', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(4)3.jpeg', '-', 'Surat Tugas Kukun Kurniawan, S.Pd'),
(139, 'PT. Telkom Dramaga', 'Permohonan tagihan', '900/091-Keu.2020', '2020-04-06', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)5.jpeg', '-', 'Permohonan tagihan pemakaian Spidy dan indihome dan telpon bulan april 2020'),
(140, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat Tugas', '800/092-Kepegawaian.2020', '2020-04-08', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)10.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengajukan SPP.GU'),
(141, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat Tugas', '800/093-Kepegawaian.2020', '2020-04-09', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)9.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantar SPM.GU'),
(142, 'Halimah, S.E', 'Surat Tugas', '800/094-Kepegawaian.2020', '2020-04-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM2.jpeg', '-', 'Mengajukan SPP.LS'),
(143, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat Tugas', '800/095-Kepegawaian.2020', '2020-04-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)6.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan SPM'),
(144, 'M.Giaz', 'Mengikuti Eskul', '421/096-Kesiswaan.2020', '2020-04-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(2)3.jpeg', '-', 'Mengikuti Extrakulikuler'),
(145, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Daftar nominatif usulan kenaikan pangkat', '800/097-Kepegawaian.2020', '2020-04-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)11.jpeg', '-', 'Daftar nominatif usulan kenaikan pangkat '),
(146, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat Tugas', '800/098-Kepegawaian.2020', '2020-04-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)10.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil SP2.D  dan mengambil SK pensiun Ratnaningsih'),
(147, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat tugas', '800/099-Kepegawaian.2020', '2020-04-16', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)2.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan berkas kekurangan kelengkapan pengajuan pensiun (SKP & KK)'),
(148, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat tugas', '800/100-Kepegawaian.2020', '2020-04-17', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)12.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil NUPTK'),
(149, 'DPKAD Kota Bogor', 'Mengambil daftar gaji', '800/101-Kepegawaian.2020', '2020-04-23', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM7.jpeg', '-', 'Mengambil printout daftar gaji bulan mei 2020'),
(150, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Surat tugas', '800/102-Kepegawaian.2020', '2020-04-27', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)8.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan SPG Gaji Mei 2020'),
(151, 'Bapak/Ibu Piket Malam', 'Surat Tugas', '800/103-Kepegawaian.2020', '2020-04-27', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(2)4.jpeg', '-', 'Surat Tugas Piket Malam'),
(152, 'Kepala SMPN 1 Ciampea', 'berita acara', '421/104-Kesiswaan.2020', '2020-04-28', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)13.jpeg', '-', 'Berita Acara pengadaan barang'),
(153, 'Kepala SMPN 1 Ciampea', 'berita acara', '421/105-Kesiswaan.2020', '2020-04-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(5)2.jpeg', '-', 'Berita Acara survey harga pasar'),
(154, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Mengantarkan setoran uang dinas covid-19', '800/106-Kepegawaian.2020', '2020-05-04', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)5.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan setoran uang dinas covid-19'),
(155, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>Surat tugas</p>', '800/107-Kepegawaian.2020', '2020-05-06', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM3.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan SPG Gaji april 2020'),
(156, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/108-Kepegawaian.2020', '2020-05-06', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM8.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan berkas SPP.LS bulan mei 2020'),
(157, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/109-Kepegawaian.2020', '2020-05-09', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(6)2.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan berkas SPP.LS bulan mei 2020'),
(158, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/110-Kepegawaian.2020', '2020-05-12', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(20)1.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil SP2.D'),
(159, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/111-Kepegawaian.2020', '2020-05-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)3.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan berkas pengajuan kenaikan pangkat'),
(160, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>surat tugas</p>', '800/111-Kepegawaian.2020', '2020-05-16', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(5)5.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil SKPP Eno.S'),
(161, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>surat tugas</p>', '800/112-Kepegawaian.2020', '2020-05-18', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)5.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan berkas pengajuan berkala sulasti dan lia'),
(162, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>surat tugas</p>', '800/113-Kepegawaian.2020', '2020-05-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)9.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengajukan SPP.GU & SPP TD BPP'),
(163, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/114-Kepegawaian.2020', '2020-05-20', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)7.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan SPM.GU'),
(164, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/115-Kepegawaian.2020', '2020-05-27', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)4.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil printout daftar gaji bulan juni 2020'),
(165, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/116-Kepegawaian.2020', '2020-05-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(4)3.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil SP2.D'),
(166, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/117-Kepegawaian.2020', '2020-05-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)14.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan berkas usulan perubahan anggaran'),
(167, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/118-Kepegawaian.2020', '2020-05-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)6.jpeg', '-', 'Surat Tugas Azis & Pa Yan piket malam'),
(168, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/119-Kepegawaian.2020', '2020-05-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(2)1.jpeg', '-', 'Pengajuan kenaikan pangkat'),
(169, 'Kepala Dinas Pendidikan Kab.Bogor ', 'SURAT TUGAS', '800/120-Kepegawaian.2020', '2020-06-03', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(2)2.jpeg', '-', 'Mengambil SP2D'),
(170, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/121-Kepegawaian.2020', '2020-06-04', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(3)1.jpeg', '-', 'Mengambil Daftar Gaji Bulan juni 2020'),
(171, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/122-Kepegawaian.2020', '2020-06-05', '2020-12-28', 'WhatsApp_Image_2020-12-27_at_9_28_52_PM_(2)1.jpeg', '-', 'Mengantarkan SPJ Gaji bulan mei 2020'),
(172, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/123-Kepegawaian.2020', '2020-05-08', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)15.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan uang dinas covid-19'),
(173, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/124-Kepegawaian.2020', '2020-05-09', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(2)5.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengajukan SPP.LS'),
(174, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/125-Kepegawaian.2020', '2020-05-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)16.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan SPM'),
(175, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '421/126-Kesiswaan.2020', '2020-06-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)8.jpeg', '-', 'Berita Acara serah terima barang'),
(176, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '421/127-Kesiswaan.2020', '2020-06-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)7.jpeg', '-', 'Berita Acara penyerahan pekerjaan/barang'),
(177, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '421/128-Kesiswaan.2020', '2020-06-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)11.jpeg', '-', 'Berita Acara administrasi hasil pekerjaan/barang'),
(178, 'Kepala Dinas Pendidikan Kab.Bogor ', 'berita acara', '421/129-Kesiswaan.2020', '2020-06-12', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM1.jpeg', '-', 'Berita Acara pengajuan pembayaran'),
(179, 'Orang tua/Wali Siswa', 'pembagian rapot', '843/130/Kur/VI/.2020', '2020-06-12', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)5.jpeg', '-', 'pembagian rapot'),
(180, 'Ka.BR.Ciampea', 'surat keterangan', '421/131-Kesiswaan.2020', '2020-06-18', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(2)6.jpeg', '-', 'Surat keterangan sekolah bagi siswa pemilu PIP'),
(181, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/132-Kepegawaian.2020', '2020-06-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(5)2.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil pengajuan spp. buku bodas'),
(182, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/133-Kepegawaian.2020', '2020-06-22', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)17.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan berkas spm pengajuan buku bodas yang sudah ditandatangan'),
(183, 'Para peserta didik (calon)', 'Sk penetapan', '421/134-Kesiswaan.2020', '2020-06-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)9.jpeg', '-', 'SK. penetapan penerimaan calon peserta didik baru'),
(184, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/135-Kepegawaian.2020', '2020-06-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM3.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil printout daftar gaji bulan juli 2020'),
(185, 'Kepala DPKAD kota Bogor ', 'surat tugas', '800/136-Kepegawaian.2020', '2020-06-26', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)8.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan berkas pengajuan tunjangan anak, ade hidayat golongan IV/a'),
(186, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/137-Kepegawaian.2020', '2020-06-27', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM4.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil SP2D.LS '),
(187, 'Orang tua/Wali Siswa', 'mutasi siswa', '421/138-Kesiswaan.2020', '2020-06-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)9.jpeg', '-', 'Mutasi siswa, Erri Akbar '),
(188, 'Ka.BR.Ciampea', 'surat keterangan', '421/139-Kesiswaan.2020', '2020-06-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)10.jpeg', '-', 'Surat keterangan PIP'),
(189, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/140-Kepegawaian.2020', '2020-06-30', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)6.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan absen TU'),
(190, 'Bapak/Ibu Piket Malam', 'surat tugas', '800/141-Kepegawaian.2020', '2020-06-30', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM9.jpeg', '-', 'Surat Tugas Piket Malam bulan juli 2020'),
(191, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/142-Kepegawaian.2020', '2020-01-08', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)18.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengajukan SPP GU piket bulan juni'),
(192, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/143-Kepegawaian.2020', '2020-07-02', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(5)3.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan berkas spm pengajuan gu piket & spp bulan juni'),
(193, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/144-Kepegawaian.2020', '2020-07-06', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)12.jpeg', '-', 'Surat Tugas Halimah,S.E, mengajukan SPP.LS internet dan listrik bulan juni 2020 '),
(194, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/145-Kepegawaian.2020', '2020-07-07', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)13.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan berkas spm pengajuan listrik dam internet bulan juli 2020'),
(195, 'Guru dan Staf TU SMPN 1 Ciampea', 'surat tugas', '005/146-Undangan.2020', '2020-07-07', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(5)4.jpeg', '-', 'Rapat dinas sekolah'),
(196, 'Orang tua/Wali Siswa', 'surat keterangan', '421/146-Kesiswaan.2020', '2020-07-08', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM5.jpeg', '-', 'Surat keterangan nazllah agrionara'),
(197, 'Kepala Dinas Pendidikan Kab.Bogor ', 'sosialisasi rapat', '800/148-Kepegawaian.2020', '2020-07-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(2)4.jpeg', '-', 'Mengikuti sosialisasi rapat KMOB'),
(198, 'Kepala Dinas Pendidikan Kab.Bogor ', 'Usulan pengajuan', '800/149-Kepegawaian.2020', '2020-07-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)11.jpeg', '-', 'Usulan pengajuan perbaikan dana siswa'),
(199, 'Orang tua/Wali Siswa', 'surat keterangan', '421/150-Kesiswaan.2020', '2020-07-20', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM2.jpeg', '-', 'Surat Keterangan Siswa'),
(200, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/151-Kepegawaian.2020', '2020-07-20', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(5)12.jpeg', '-', 'Surat Tugas Mengurus Mutasi siswa'),
(201, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/152-Kepegawaian.2020', '2020-07-20', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(5)6.jpeg', '-', 'Surat tugas Junaedi, Pembinaan kepegawaian'),
(202, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/153-Kepegawaian.2020', '2020-07-21', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)6.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil spul perbaikan listrik'),
(203, 'Orang tua/Wali Siswa', 'surat keterangan', '421/154-Kesiswaan.2020', '2020-07-21', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)7.jpeg', '-', 'Surat keterangan Nani Rahmawati'),
(204, 'Orang tua/Wali Siswa', 'legalisir', '421/155-Kesiswaan.2020', '2020-07-21', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM10.jpeg', '-', 'Legalisir Raport, SKHUN, Ijazah Krima'),
(205, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/156-Kepegawaian.2020', '2020-07-22', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(4)4.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan SPM perbaikan listrik'),
(206, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/157-Kepegawaian.2020', '2020-08-07', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)10.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengantarkan uang bantuan covid-19'),
(207, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/158-Kepegawaian.2020', '2020-08-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(1)2.jpeg', '-', 'Surat Tugas Kukun Kurniawan, S.Pd'),
(208, 'Orang tua/Wali Siswa', 'surat keterangan', '421/159-Kesiswaan.2020', '2020-08-10', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)11.jpeg', '-', 'Surat Keterangan Siswa'),
(209, 'Orang tua/Wali Siswa', 'surat keterangan', '421/160-Kesiswaan.2020', '2020-08-11', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(5)3.jpeg', '-', 'Surat Keterangan Siswa'),
(210, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/161-Kepegawaian.2020', '2020-08-13', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(2)3.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengajukan SPP GU piket bulan agustus 2020'),
(211, 'Orang tua/Wali Siswa', 'surat keterangan', '421/162-Kesiswaan.2020', '2020-08-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)7.jpeg', '-', 'Surat Keterangan Siswa'),
(212, 'Guru SMPN 1 Ciampea', 'undangan rapat', '005/164-Undangan.2020', '2020-08-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(1)10.jpeg', '-', 'Undangan rapat'),
(213, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/165-Disdik', '2020-08-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM6.jpeg', '-', 'Surat tugas Eli Kamilah, Mengurus validasi'),
(214, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/166-Kepegawaian.2020', '2020-08-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)19.jpeg', '-', 'Surat tugas Yani Sobarlimasawati, Mengurus rekonondasi KIP'),
(215, 'Orang tua/Wali Siswa', 'surat keterangan', '421/167-Kesiswaan.2020', '2020-08-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)8.jpeg', '-', 'Surat Keterangan Siswa, Keysa'),
(216, 'Kepala Dinas Pendidikan Kab.Bogor ', 'permohonan', '421/168-Kesiswaan.2020', '2020-08-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(2)7.jpeg', '-', 'Permohonan blanko ijazah'),
(217, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat keterangan', '421/169-Kesiswaan.2020', '2020-08-19', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(3)1.jpeg', '-', 'Surat Keterangan Siswa'),
(218, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>surat keterangan</p>', '421/170-Kesiswaan.2020', '2020-08-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM11.jpeg', '-', 'Surat Keterangan Siswa'),
(219, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat keterangan', '421/171-Kesiswaan.2020', '2020-08-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(2)4.jpeg', '-', 'Surat Keterangan Siswa (PKH)'),
(220, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat mutasi', '421/172-Kesiswaan.2020', '2020-08-25', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)12.jpeg', '-', 'Surat Mutasi Siswa'),
(221, 'Orang tua/Wali Siswa', 'surat keterangan', '421/173-Kesiswaan.2020', '2020-08-25', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM12.jpeg', '-', 'Surat keterangan rapot, Andika Bayu'),
(222, 'Orang tua/Wali Siswa', 'surat keterangan', '421/174-Kesiswaan.2020', '2020-08-25', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)8.jpeg', '-', 'Surat Keterangan Siswa'),
(223, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/175-Kepegawaian.2020', '2020-08-26', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(3)2.jpeg', '-', 'Surat Tugas Halimah,S.E, Print out daftar gaji bulan september'),
(224, 'Orang tua/Wali Siswa', 'surat keterangan', '421/176-Kesiswaan.2020', '2020-08-26', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)20.jpeg', '-', 'Surat Keterangan Siswa'),
(225, 'Kepala Dinas Pendidikan Kab.Bogor ', 'SKMT', '800/177-Kepegawaian.2020', '2020-08-26', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(4)13.jpeg', '-', 'SKMT, Mursyidah, S.Pd'),
(226, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/178-Kepegawaian.2020', '2020-08-29', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(1)3.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil print out daftar gaji ke 13'),
(227, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/179-Kepegawaian.2020', '2020-08-31', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)9.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan laporan absen manual TU PNS'),
(228, 'Bapak/Ibu Piket Malam', 'surat tugas', '800/180-Kepegawaian.2020', '2020-09-01', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)9.jpeg', '-', 'Surat Tugas Piket Malam'),
(229, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/193-Kepegawaian.2020', '2020-09-14', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM7.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan laporan berkas hasil rekansolasi'),
(230, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/197-Kepegawaian.2020', '2020-09-23', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)10.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengajukan SPP.GU & SPP  BPP'),
(231, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/198-Kepegawaian.2020', '2020-09-24', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(4)10.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan SPM GU SPD BPP untuk diajukan ke DPKAD'),
(232, 'Orang tua/Wali Siswa', 'SURAT KETERANGAN', '421/205-Kesiswaan.2020', '2020-10-01', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)21.jpeg', '-', 'Surat Keterangan Siswa'),
(233, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/208-Kepegawaian.2020', '2020-10-05', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM8.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan berkas hasil rekansolasi'),
(234, 'Kepala Dinas Sosial', 'surat keterangan', '421/212-Kesiswaan.2020', '2020-10-15', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM_(1)4.jpeg', '-', 'Surat Keterangan Pengajuan KIP'),
(235, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/230-Kepegawaian.2020', '2020-10-26', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)11.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil dok kenaikan pangkat guru'),
(236, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/231-Kepegawaian.2020', '2020-10-27', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_55_PM3.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil SP2D Internet'),
(237, 'Ibu Ratna', 'laporan', '800/236-Kepegawaian.2020', '2020-11-04', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_52_PM_(1)22.jpeg', '-', 'Laporan penyerahan bimtek'),
(238, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/251-Kepegawaian.2020', '2020-11-18', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_54_PM_(4)4.jpeg', '-', 'Surat Tugas Halimah,S.E, mengantarkan SPP Pengajuan baju seragam siswa'),
(239, 'Kepala Dinas Pendidikan Kab.Bogor ', '<p>surat tugas</p>', '800/253-Kepegawaian.2020', '2020-11-23', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_51_PM_(3)12.jpeg', '-', 'Surat Tugas Lukman, S.Pd'),
(240, 'Kepala Dinas Pendidikan Kab.Bogor ', 'surat tugas', '800/254-Kepegawaian.2020', '2020-11-25', '2020-12-28', 'WhatsApp_Image_2020-12-23_at_3_34_53_PM_(3)14.jpeg', '-', 'Surat Tugas Halimah,S.E, Mengambil SK Pensiun');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_sm` int(11) NOT NULL,
  `isi_ringkas` mediumtext NOT NULL,
  `dari` varchar(250) NOT NULL,
  `no_surat` varchar(250) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(255) NOT NULL,
  `lampiran` varchar(250) NOT NULL,
  `perihal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_sm`, `isi_ringkas`, `dari`, `no_surat`, `tgl_surat`, `tgl_diterima`, `file`, `lampiran`, `perihal`) VALUES
(33, '<p>HUT RI ke-75</p>', 'Dinas Pendidikan', '421/437-Disdik', '2020-07-30', '2020-12-26', '11.PNG', '-', 'Memperingati HUT RI ke-75'),
(34, 'Beasiswa', 'KEMENDIKBUD', '52/42/B2/GT/2020', '2020-10-26', '2020-12-27', '2.PNG', '1 Berkas', 'Program Beasiswa Kualifikasi S-2 bagi Guru dan Pendidik'),
(35, 'Pemberian Kuota Internet', 'KEMENDIKBUD', '8310/C/PD/2020', '2020-08-28', '2020-12-27', '3.PNG', '-', 'Pemberitahuan'),
(36, 'Program Guru', 'KEMENDIKBUD', '4030/BI/TU/2020', '2020-09-23', '2020-12-27', '4.PNG', '-', 'Pemberitahuan Peluncuran Program Guru Belajar Seri Masa Pandemi'),
(37, 'Undangan Sosialisasi', 'Dinas Pendidikan Provinsi Jawa Barat', '050/0700/V/Cadisdik.Wil.1/2020', '2020-05-26', '2020-12-27', '5.PNG', '-', 'Undangan Sosialisasi Aplikasi PPDB'),
(38, 'Perpanjangan PSBB', 'Bupati Bogor', '800/735/BKPP', '2020-04-27', '2020-12-27', '6.PNG', '-', 'Perpanjangan Penyesuaian Sistem Kerja Bagi ASN dan Non ASN di Lingkungan Pemerinah Kabupaten Bogor Dengan Adanya Penetapan Pembatasan Sosial Berskala Besar Dalam Upaya Pencegahan Penyebaran Covid-19'),
(39, 'Pemberitahuan Pemberkasan', 'Dinas Pendidikan Kabupaten Bogor', '800/486/Umpeg', '2020-02-25', '2020-12-27', '7.PNG', '1 Daftar', 'Pemberitahuan Pemberkasan Bagi PNS yang Mencapai Batas Usia Pensiun (BUP) tahun 2021'),
(40, 'Perpanjangan Masa Belajar Dirumah', 'Dinas Pendidikan Kabupaten Bogor', '421/408/Disdik', '2020-03-24', '2020-12-27', '8.PNG', '-', 'Perpanjangan Masa Belajar Dirumah Bagi Peserta Didik Jenjang PAUD/TK, SD, SMP dan Lembaga Pendidikan non Formal di Kabupaten Bogor'),
(41, 'Pendaftaran Guru, Kepsek dan Pengawas Berprestasi', 'Dinas Pendidikan Kabupaten Bogor', '821/217/Disdik', '2020-01-16', '2020-12-27', '9.PNG', '-', 'Pendaftaran Guru, Kepala Sekolah, Pengawas Berprestasi dan OGN tahun 2020'),
(42, 'Pengumuman Kelulusan', 'Bupati Bogor', '810/1208/-BKPP', '2020-03-23', '2020-12-27', '10.PNG', '-', 'Pengumuman Kelulusan Seleksi Kompetensi Dasar Calon PNS di Lingkungan Pemerintahan Kabupaten Bogor Formasi Tahun 2019'),
(43, 'Pedoman Penyusunan Kalender Pendidikan', 'Dinas Pendidikan Provinsi Jawa Barat', '422/8176/-Set.Disdik', '2020-06-08', '2020-12-27', '111.PNG', '2 Lembar', 'Pedoman Penyusunan Kalender Pendidikan Tahun Pelajaran 2020/2021'),
(44, 'Salinan Keputusan', 'KEMENDIKBUD', '67586/A5/HK/2020', '2020-08-05', '2020-12-27', '12.PNG', '1 Berkas', 'Salinan Keputusan MENDIKBUD nomor 719/P/2020'),
(45, 'Perpanjangan PSBB', 'Bupati Bogor', '800/2074/BKPP', '2020-05-29', '2020-12-27', '13.PNG', '-', 'Perpanjangan Penyesuaian Sistem Kerja Bagi ASN dan Non ASN di Lingkungan Pemerinah Kabupaten Bogor Dengan Adanya Penetapan Pembatasan Sosial Berskala Besar Dalam Upaya Pencegahan Penyebaran Covid-19'),
(46, 'Seleksi Program Pendidikan', 'KEMENDIKBUD', '1141/E/PB/2019', '2020-01-01', '2020-12-27', '14.PNG', '-', 'Seleksi Program Pendidikan Profesi Guru Prajabatan tahun 2020'),
(47, 'Petunjuk Pelaksanaan PPDB', 'Dinas Pendidikan Kabupaten Bogor', '421/2.616-Disdik', '2020-04-30', '2020-12-27', '15.PNG', '-', 'Petunjuk Pelaksanaan PPDB Pada PAUD, SD Dan SMP Tahun Pelajaran 2020/2021 '),
(48, 'Surat Edaran', 'Dinas Pendidikan Kabupaten Bogor', '800/160-Disdik', '2020-07-15', '2020-12-27', '17.PNG', '-', 'Surat Edaran Tahun Ajaran Baru Dimasa Pandemi'),
(49, 'Perpanjangan Masa Belajar Pandemi', 'Dinas Pendidikan Kabupaten Bogor', '421/241-Disdik', '2020-05-29', '2020-12-27', '18.PNG', '-', 'Perpanjangan Masa Belajar Dirumah Bagi Peserta Didik Jenjang PAUD/TK, SD, SMP dan Lembaga Pendidikan non Formal di Kabupaten Bogor'),
(50, 'Pelaksanaan Kebijakan Pendidikan Dimasa Pandemi', 'Dinas Pendidikan Kabupaten Bogor', '421/455-Disdik', '2020-04-01', '2020-12-27', '19.PNG', '-', 'Pelaksanaan Kebijakan Pendidikan Dalam Masa Darurat Penyebab Corona Virus Desease (Covid-19)'),
(51, 'Perubahan Atas Surat Edaran', 'Menteri Pendayagunaan Aparatur Negara Dan Reformasi Birokrasi Republik Indonesia', '34/2020', '2020-03-30', '2020-12-27', '20.PNG', '-', 'Perubahan Atas Surat Edaran Menteri Pendayagunaan Aparatur Negara Dan Reformasi Birokrasi Nomor 19 Tahun 2020 Tentang Penyesuauan Sistem Kerja Aparatur Sipil Negara Dalam Upaya Pencegahan Penyebaran Covid-19 di Lingkungan Instansi Pemerintah '),
(52, 'Pelaksanaan Kebijakan Pendidikan', 'MENDIKBUD', '4/2020', '2020-03-24', '2020-12-27', '21.PNG', '-', 'Pelaksanaan Kebijakan Pendidikan Dalam Masa Darurat Penyebaran Coronavirus Desease (Covid-19)'),
(53, 'Perpanjangan Penyesuaian Sistem Kerja', 'Bupati Bogor', '800/2119/BKKP', '2020-06-19', '2020-12-27', '22.PNG', '-', 'Perpanjangan Penyesuaian Sistem Kerja Bagi ASN dan Non ASN di Lingkungan Pemerinah Kabupaten Bogor Dengan Adanya Penetapan Pembatasan Sosial Berskala Besar Dalam Upaya Pencegahan Penyebaran Covid-19'),
(54, 'Perpanjangan PSBB', 'Bupati Bogor', '800/2856/BKPP', '2020-07-16', '2020-12-27', '23.PNG', '-', 'Perpanjangan Penyesuaian Sistem Kerja Bagi ASN dan Non ASN di Lingkungan Pemerinah Kabupaten Bogor Dengan Adanya Penetapan Pembatasan Sosial Berskala Besar Dalam Upaya Pencegahan Penyebaran Covid-19'),
(55, 'Pelaksanaan Kebijakan Pendidikan', 'Dinas Pendidikan Kabupaten Bogor', '421/2.422-Disdik', '2020-04-13', '2020-12-27', '24.PNG', '-', 'Pelaksanaan Kebijakan Pendidikan Dalam Masa Darurat Penyebaran Coronavirus Desease (Covid-19)'),
(56, 'Bimbingan Teknsi', 'Badan Kepegawaian Pendidikan Dan Pelatihan', '800/3508/BKPP', '2020-10-27', '2020-12-27', '25.PNG', '-', 'Bimbingan Teknis Penyusunan Daftar Usulan Penetapan Angka Kredit Guru di Lingkungan Pemerintah Kabupaten Bogor'),
(57, 'Surat Edaran Dinas Pendidikan', 'Dinas Pendidikan Kabupaten Bogor', '800/261-Pemb-SMP', '2020-08-19', '2020-12-27', '26.PNG', '-', 'Surat Edaran Dinas Pendidikan Melaksanakan Monitoring dan Evaluasi Pembelajaran Jarak Jauh Jenjang SMP'),
(58, 'Program Pembagian Internet', 'KEMENDIKBUD', '8202/C/PD/2020', '2020-08-27', '2020-12-27', '27.PNG', '-', 'Program Pemberian Kuota Internet Bagi Peserta Didik '),
(59, 'Penetapan Status Siaga Darurat', 'Bupati Bogor', '360/06-BPBD/2020', '2020-03-19', '2020-12-27', '28.PNG', '-', 'Penetapan Status Siaga Darurat Bencana Non Alam Akibat Virus Corona Di Kabupaten Bogor Tahun 2020'),
(60, 'Pencegahan Penyebaran Covid-19', 'Walikota Bogor', '433.1/1075-Umum', '2020-03-15', '2020-12-27', '29.PNG', '-', 'Pencegahan Penyebaran Corona Virus Desease (Covid-19) Di Kota Bogor'),
(61, 'Pelaksanaan PPDB', 'Sekretariat Daerah', '420/2203/Disdik', '2020-05-08', '2020-12-27', '30.PNG', '-', 'Pelaksanaan PPDB Jenjang SMA/SMK/SLB Tahun Pelajaran 2020/2021'),
(62, 'Penetapan PSBB', 'MENKES', 'HK.01.07/MENKES/248/2020', '2020-04-11', '2020-12-27', '31.PNG', '-', 'Penetapan Pembatasan Sosial Berskala Besar Di Wilayah Kabupaten Bogor, Kota Bogor, Kota Depok, Kabupaten Bekasi dan Kota Bekasi, Provinsi Jawa Barat Dalam Rangka Percepatan Penanganan Corona Virus Desease (Covid-19) '),
(63, 'Pedoman Pembelajaran Jarak Jauh', 'Dinas Pendidikan Kabupaten Bogor', '800/34-Disdik', '2020-08-06', '2020-12-27', '32.PNG', '-', 'Pedoman Pembelajaran Jarak Jauh'),
(64, 'Undangan Bimtek', 'Dinas Pendidikan Kabupaten Bogor', '005/435-PTK SMP', '2020-10-23', '2020-12-27', '33.PNG', '-', 'Undangan Bimtek Guru Mapel'),
(65, 'Workshop Pendampingan Kegiatan Program Indonesia PintarJenjang SD dan SMP Tingkat Kabupaten Bogor Tahun 2020', 'Dinas Pendidikan Kabupaten Bogor', '005/183/Bid.SMP', '2020-11-09', '2020-12-27', '37.PNG', '-', 'Undangan'),
(66, 'MUSRENBANG RKPD Tahun Anggaran 2021', 'Kecamatan Ciampea', '003/02-Ekbang', '2020-02-06', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_08_25_PM.jpeg', '1 Berkas', 'Undangan'),
(67, 'Persiapan MUSRENBANG RKPD', 'Kecamatan Ciampea', '005/054-Ekbang', '2020-01-27', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_08_26_PM_(1).jpeg', '1 Berkas', 'Undangan'),
(68, 'Permohonan Permintaan Hibah', 'Madrasah Tsanawiyah Al-Idrus', '156/MTs-Al/YPIA/I/2020', '2020-01-07', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_08_26_PM_(3).jpeg', '-', 'Permohonan Permintaan Hibah Meja dan Kursi'),
(69, 'Permohonan Hibah Meja dan Kursi', 'SMP PGRI Ciampea', '050/SATDIK-SMP/1.2/R.2020', '2020-01-07', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_08_27_PM_(1).jpeg', '-', 'Permohonan'),
(70, 'Permohonan Pengajuan Mebeler', 'SMP Madano', '001/SMP-MDN/TFM/I/2019', '2020-01-06', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_08_27_PM_(2).jpeg', '-', 'Surat Permohonan Pengajuan Mebeler'),
(71, 'Permohonan Hibah', 'SMP Sejahtera 4 Dramaga', '-', '2020-01-07', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_08_27_PM.jpeg', '-', 'Surat Permohonan Hibah'),
(72, 'Rapat Koordinasi Peningkatan Kerja', 'Kecamatan Ciampea', '001/II/Ds.Cps/2020', '2020-03-02', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_09_38_PM.jpeg', '-', 'Permohonan'),
(73, 'Ijin Rekomendasi Penyuluhan Kanker', 'Dinas Kesehatan Kabupaten Bogor', '481/8122.P2P', '2020-11-18', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_10_15_PM.jpeg', '-', 'Permohonan Ijin Rekomendasi'),
(74, 'Izin PKL', 'Universitas Islam Indonesia', 'B-237/Un.05/III.3/PP.00.9/07/2020', '2020-07-22', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_13_08_PM_(1).jpeg', '-', 'Izin Praktik Kerja Lapangan'),
(75, 'Permohonan PKMI', 'Universitas Pakuan', '315/Wadek.1/VOKASI-UP/VIII/2020', '2020-08-07', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_13_08_PM_(2).jpeg', '-', 'Permohonan Magang/Praktek Kerja Magang Industri (PKMI)'),
(76, 'Permohonan Sosialisasi', 'Yayasan Sosialisasi Kanker Indonesia', '001/SPS/YSKI-JAWA BARAT/II/2020', '2020-02-12', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_7_13_08_PM.jpeg', '-', 'Permohonan Sosialisasi Kanker dan Tumor'),
(77, 'Peminjaman Ruang Kelas Untuk Workshop Pembelajaran Daring', 'SMA Terbuka Leuwiliang', '423/864/Sarpas/Smanell/XII/2020', '2020-12-16', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_8_55_06_PM_(1).jpeg', '-', 'Permohonan Peminjaman Ruang Kelas'),
(78, 'Studi Wisata ke The Jungle Adventure', 'Kecamatan Ciampea', '421/064/Kesiswaan.2020', '2020-03-11', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_8_55_06_PM.jpeg', '-', 'Pemberitahuan Studi Wisata'),
(79, 'Undangan Musyawarah Perencanaan Pembangunan (MUSRENBANG)', 'Kecamatan Ciampea', '005/02-Ekbang', '2020-02-06', '2020-12-27', 'WhatsApp_Image_2020-12-27_at_9_14_31_PM.jpeg', '1 Berkas', 'Undangan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_sk`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_sm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_sm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
