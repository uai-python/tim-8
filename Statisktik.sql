-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 05, 2017 at 01:25 
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Statisktik`
--

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `jawaban` longtext NOT NULL,
  `pertanyaan` longtext NOT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`jawaban`, `pertanyaan`, `id`) VALUES
('Siswa Berprestasi Dalam Kejuaraan pada tahun 2011 - 2014 = 286', 'Berapa Siswa Berprestasi Dalam Kejuaraan pada tahun 2011 - 2014 ?', NULL),
('Jumlah Yayasan Aktif = 379', 'Ada Berapa Yayasan Yang Aktif Sedang Aktif ?', NULL),
('Persentase Kemiskinan Pada Tahun 2012 = 3.69', 'Berapa Persentase Kemiskinan Pada Tahun 2012 ?', NULL),
('Ketinggian Air Laut Pada Januari 2017 = 1500', 'Berapa Ketinggian Air Laut Pada Januari 2017 ?', NULL),
('Ketinggian Air Sungai Ciliwung Pada Januari 2017 = 5400', 'Berapa Ketinggian Air Sungai Ciliwung Pada Januari 2017 ?', NULL),
('Ketinggian Air Banjir Kanal Timur Pada Januari 2017 =1870', 'Berapa Ketinggian Air Banjir Kanal Timur Pada Januari 2017 ?', NULL),
('Persentase Kelulusan Universitas Pada Tahun 2013 = 37.99', 'Berapa Persentase Kelulusan Universitas Pada Tahun 2013 ?', NULL),
('Persentase Kelulusan Sekolah Menengah Atas Pada Tahun 2012 = 37.99', 'Berapa Persentase Kelulusan Sekolah Menengah Atas Pada Tahun 2012 ?', NULL),
('Persentase Kelulusan Sekolah Menengah Pertama Pada Tahun 2013 = 37.99', 'Berapa Persentase Kelulusan Sekolah Menengah Pertama Pada Tahun 2013 ?', NULL),
('Persentase Kelulusan Sekolah Dasar Pada Tahun 2012 = 17.75', 'Persentase Kelulusan Sekolah Dasar Pada Tahun 2012 Di DKI Jakarta ?', NULL),
('Banyaknya Museum = 9', 'Berapa Banyaknya Museum = 9', NULL),
('Banyaknya Taman Interaktif = 94', 'Ada Berapa Taman Interaktif di DKI Jakarta ?', NULL),
('Banyaknya Usaha Jenis Restoran = 3958', 'Banyaknya Usaha Jenis Restoran ?', NULL),
('Banyaknya Halte Transjakarta Pada Tahun 2014 = 13', 'Banyaknya Halte Transjakarta Pada Tahun 2014 ?', NULL),
('Banyaknya Bus Sekolah Pada Tahun 2015 = 173', 'Banyaknya Bus Sekolah Pada Tahun 2015 ?', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nama` varchar(20) NOT NULL,
  `jeniskelamin` varchar(15) NOT NULL,
  `kota` varchar(15) NOT NULL,
  `umur` int(11) NOT NULL,
  `no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
