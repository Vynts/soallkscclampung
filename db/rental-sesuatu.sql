-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 06:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental-apapunitu`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_`
--

CREATE TABLE `t_` (
  `id_` int(11) NOT NULL,
  `no_` char(10) NOT NULL,
  `merk_` varchar(20) NOT NULL,
  `nama_` varchar(20) NOT NULL,
  `harga_` int(10) NOT NULL,
  `status_` char(2) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_konfirmasi`
--

CREATE TABLE `t_konfirmasi` (
  `id_konfirmasi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `ket` char(2) NOT NULL,
  `tgl_konfirmasi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_lacak`
--

CREATE TABLE `t_lacak` (
  `id_lacak` int(11) NOT NULL,
  `id_` int(11) NOT NULL,
  `x` varchar(50) NOT NULL,
  `y` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi`
--

CREATE TABLE `t_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_` int(11) NOT NULL,
  `lama` int(2) NOT NULL,
  `tgl_ambil` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `total_harga` int(10) NOT NULL,
  `tgl_sewa` datetime NOT NULL,
  `status_sewa` char(2) NOT NULL,
  `status_bayar` char(2) NOT NULL,
  `ket` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(11) NOT NULL,
  `nik_ktp` char(20) NOT NULL,
  `no_sim` char(15) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `level_user` varchar(20) NOT NULL,
  `akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `t_user`
--

INSERT INTO `t_user` (`id_user`, `nik_ktp`, `no_sim`, `nama_user`, `email_user`, `no_hp`, `alamat`, `password`, `level_user`, `akses`) VALUES
(1, '1111111111111111', '111111111111', 'Administration', 'admin@email.com', '081212345678', 'Bogor', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_`
--
ALTER TABLE `t_`
  ADD PRIMARY KEY (`id_`);

--
-- Indexes for table `t_konfirmasi`
--
ALTER TABLE `t_konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indexes for table `t_lacak`
--
ALTER TABLE `t_lacak`
  ADD PRIMARY KEY (`id_lacak`);

--
-- Indexes for table `t_transaksi`
--
ALTER TABLE `t_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_`
--
ALTER TABLE `t_`
  MODIFY `id_` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_konfirmasi`
--
ALTER TABLE `t_konfirmasi`
  MODIFY `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_lacak`
--
ALTER TABLE `t_lacak`
  MODIFY `id_lacak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_transaksi`
--
ALTER TABLE `t_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
