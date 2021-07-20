-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 06:19 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loket`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `agenda` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `file` varchar(150) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `agenda`, `file`) VALUES
(4, 'Mari Menjaga Selama Pandemi', 'agenda_1626195240.jpg'),
(5, 'Hindaru Kontak Langsung, Jaga Jarak, Gunakan Masker', 'agenda_1626195278.jpeg'),
(6, 'BANK INI Akan Melakukan WFH mulai 21 Juli  2021 - 30 Agustus 2021', 'agenda_1626195330.png');

-- --------------------------------------------------------

--
-- Table structure for table `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` int(2) NOT NULL,
  `instansi` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `instansi`, `telp`, `alamat`, `logo`) VALUES
(1, 'BANK INI', '021-00001111222', 'JL. INI NO.0 GG.ITU KEL. INI. KEC. ITU, PROVINSI INI, JAWA BARAT', 'logo_1625983285.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `username` varchar(40) NOT NULL DEFAULT '',
  `nama` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `id_loket` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`username`, `nama`, `telp`, `alamat`, `password`, `level`, `id_loket`) VALUES
('admin', 'Ario Fajar', '081213415687', '-', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Admin', NULL),
('admin2', 'Ario Fajar', '080808088', '-', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Admin', 0),
('loket1', 'Loket 1', '081213415687', 'Jl. ini Gg, itu', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Penjaga', 6),
('loket2', 'Loket 2', '081213415687', 'Jl. jalan ke kota jakarta', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Penjaga', 7),
('loket3', 'Loket 3', '081213415687', 'Jl. itu gg. ini', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Penjaga', 8),
('loket4', 'Loket 4', '081213415687', 'Jl. jl ke kota semarang', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Penjaga', 9),
('loket5', 'Loket 5', '081212311142', '-', '90b9aa7e25f80cf4f64e990b78a9fc5ebd6cecad', 'Penjaga', 12);

-- --------------------------------------------------------

--
-- Table structure for table `loket`
--

CREATE TABLE `loket` (
  `id_loket` int(3) NOT NULL,
  `loket` varchar(40) DEFAULT NULL,
  `suara` varchar(150) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loket`
--

INSERT INTO `loket` (`id_loket`, `loket`, `suara`, `status`) VALUES
(6, '1', NULL, 0),
(7, '2', NULL, 0),
(8, '3', NULL, 0),
(9, '4', NULL, 0),
(12, '5', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `text_jalan`
--

CREATE TABLE `text_jalan` (
  `id_text` int(11) NOT NULL,
  `text` varchar(150) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `no_antrian` int(11) DEFAULT NULL,
  `id_loket` int(3) NOT NULL DEFAULT 0,
  `username` varchar(40) DEFAULT NULL,
  `tgl` int(8) UNSIGNED ZEROFILL DEFAULT 00000000
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `no_antrian`, `id_loket`, `username`, `tgl`) VALUES
(67, 1, 6, 'loket1', 11072021),
(68, 2, 6, 'loket1', 11072021),
(69, 3, 6, 'loket1', 11072021),
(70, 4, 6, 'loket1', 11072021),
(71, 1, 6, 'loket1', 13072021),
(72, 2, 6, 'loket1', 13072021),
(73, 3, 6, 'loket1', 13072021),
(74, 4, 6, 'loket1', 13072021),
(75, 5, 6, 'loket1', 13072021),
(76, 6, 6, 'loket1', 13072021),
(77, 7, 6, 'loket1', 13072021),
(78, 8, 6, 'loket1', 13072021),
(79, 9, 6, 'loket1', 13072021),
(80, 10, 6, 'loket1', 13072021),
(81, 11, 6, 'loket1', 13072021),
(82, 12, 6, 'loket1', 13072021),
(83, 13, 6, 'loket1', 13072021),
(84, 14, 0, NULL, 13072021),
(85, 15, 0, NULL, 13072021),
(86, 1, 6, 'loket1', 20072021),
(87, 2, 6, 'loket1', 20072021),
(88, 3, 12, 'loket5', 20072021),
(89, 4, 7, 'loket2', 20072021),
(90, 5, 7, 'loket2', 20072021),
(91, 6, 7, 'loket2', 20072021),
(92, 7, 7, 'loket2', 20072021),
(93, 8, 7, 'loket2', 20072021),
(94, 9, 7, 'loket2', 20072021),
(95, 10, 7, 'loket2', 20072021),
(96, 11, 7, 'loket2', 20072021),
(97, 12, 12, 'loket5', 20072021),
(98, 13, 12, 'loket5', 20072021),
(99, 14, 12, 'loket5', 20072021),
(100, 15, 0, NULL, 20072021),
(101, 16, 0, NULL, 20072021),
(102, 17, 0, NULL, 20072021),
(103, 18, 0, NULL, 20072021),
(104, 19, 0, NULL, 20072021),
(105, 20, 0, NULL, 20072021),
(106, 21, 0, NULL, 20072021),
(107, 22, 0, NULL, 20072021),
(108, 23, 0, NULL, 20072021),
(109, 24, 0, NULL, 20072021),
(110, 25, 0, NULL, 20072021);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id_loket`);

--
-- Indexes for table `text_jalan`
--
ALTER TABLE `text_jalan`
  ADD PRIMARY KEY (`id_text`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id_instansi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loket`
--
ALTER TABLE `loket`
  MODIFY `id_loket` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `text_jalan`
--
ALTER TABLE `text_jalan`
  MODIFY `id_text` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
