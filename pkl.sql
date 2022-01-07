-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2020 at 10:23 AM
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
(1, 'teddy', 'ted', '123'),
(2, 'la', '12', ''),
(3, 'Teddy Setiawan', 'asdasd', '123'),
(5, 'Teddy Setiawan', 'teddy', '123'),
(7, 'Teddy Setiawan', 'teddy', '532');

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
(1, 'Petugas TU', 'Hahaha', 'Segera', '2020-09-30', 0),
(2, 'qa', '', 'Biasa', '2020-09-30', 0),
(3, 'qm', 'a', 'Segera', '2020-09-26', 0),
(4, 'qaa', 'm', 'Segera', '2020-09-26', 0),
(5, 'qaq', 'b', 'Segera', '2020-09-24', 0),
(6, 'qa', 'n', 'Biasa', '2020-09-26', 0),
(7, '4', 'qa', '', '0000-00-00', 2020),
(8, '4', 'anjay', '', '0000-00-00', 2020),
(9, '4', 'teddy', '', '0000-00-00', 2020),
(10, '4', 'teddy', '', '0000-00-00', 2020),
(14, 'teddy', 'Segera', 'Biasa', '2020-09-26', 4),
(15, 'qa', 'a', 'Segera', '2020-09-26', 2);

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
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_sk`, `tujuan`, `isi_ringkas`, `no_surat`, `tgl_surat`, `tgl_catat`, `file`) VALUES
(2, 'qaq', '<p>a</p>', '1232', '2020-09-18', '2020-09-18', 'AKB48.jpg'),
(3, 'teddy', 'Pengajuan Cuti', '2', '2020-09-05', '2020-09-18', 'vlcsnap-2018-09-21-08h03m09s926.png');

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
  `tujuan` varchar(250) NOT NULL,
  `sifat` enum('Biasa','Segera') NOT NULL,
  `isi` varchar(250) NOT NULL,
  `batas` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_sm`, `isi_ringkas`, `dari`, `no_surat`, `tgl_surat`, `tgl_diterima`, `file`, `tujuan`, `sifat`, `isi`, `batas`) VALUES
(2, '<p>123</p>', 'lkhaa', '1232', '2020-09-26', '2020-09-26', 'AKB48.jpg', '', 'Biasa', '', '0000-00-00'),
(3, 'm', 'lkh', '1232', '2020-09-19', '2020-09-26', '22.png', '', 'Biasa', '', '0000-00-00'),
(4, 'Surat Magang', 'Teddy Setiawan', '1', '2020-09-15', '2020-09-26', 'vlcsnap-2020-08-25-00h02m12s189.png', '', 'Biasa', '', '0000-00-00'),
(5, 'm', '31423ad', '1232', '2020-09-26', '2020-09-26', 'Kabupaten_Bogor.png', '', 'Biasa', '', '0000-00-00'),
(6, '', '', '', '0000-00-00', '0000-00-00', '', 'qa', 'Segera', 'a', '2020-09-21');

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
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_sk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_sm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
