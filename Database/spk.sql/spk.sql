-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Agu 2017 pada 18.19
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp`
--

CREATE DATABASE spk;
USE spk;

CREATE TABLE `ahp` (
  `id_alternatif` int(11) NOT NULL,
  `ahp` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ahp`
--

INSERT INTO `ahp` (`id_alternatif`, `ahp`) VALUES
(4, 2.896),
(5, 1.878),
(6, 4),
(7, 1.878);

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `informasi` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`, `informasi`) VALUES
(4, 'Aziz', '-'),
(5, 'Laksono', '-'),
(6, 'Fajar', '-'),
(7, 'Fajar Laksono', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_kriteria` varchar(60) NOT NULL,
  `id_subkriteria` varchar(60) NOT NULL,
  `hasil` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_kriteria`, `id_subkriteria`, `hasil`) VALUES
('2', '4', 1),
('2', '6', 0.2),
('4', '5', 1),
('4', '7', 0.499),
('all', '1', 2.4),
('all', '2', 0.8),
('all', '4', 0.8),
('1', '3', 1),
('1', '2', 0.54),
('1', '1', 0.116);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(60) NOT NULL,
  `urutan` int(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `urutan`, `keterangan`) VALUES
(1, 'Ilmu Pengetahuan', 1, '-'),
(2, 'Kepemimpinan', 2, '-'),
(4, 'MTK', 4, '99999999');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_alternatif`
--

CREATE TABLE `nilai_alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_alternatif`
--

INSERT INTO `nilai_alternatif` (`id_alternatif`, `id_kriteria`, `id_subkriteria`) VALUES
(4, 1, 2),
(5, 1, 1),
(6, 1, 3),
(7, 1, 1),
(4, 2, 4),
(5, 2, 4),
(6, 2, 4),
(7, 2, 4),
(4, 4, 5),
(5, 4, 5),
(6, 4, 5),
(7, 4, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pb`
--

CREATE TABLE `pb` (
  `kriteria` varchar(60) NOT NULL,
  `colindex` int(11) NOT NULL,
  `rowindex` int(11) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pb`
--

INSERT INTO `pb` (`kriteria`, `colindex`, `rowindex`, `nilai`) VALUES
('2', 4, 4, 1),
('2', 4, 6, 0.2),
('2', 6, 4, 5),
('2', 6, 6, 1),
('4', 5, 5, 1),
('4', 5, 7, 0.5),
('4', 7, 5, 2),
('4', 7, 7, 1),
('all', 1, 1, 1),
('all', 1, 2, 0.333),
('all', 1, 4, 0.333),
('all', 2, 1, 3),
('all', 2, 2, 1),
('all', 2, 4, 1),
('all', 4, 1, 3),
('all', 4, 2, 1),
('all', 4, 4, 1),
('1', 3, 3, 1),
('1', 3, 2, 0.5),
('1', 3, 1, 0.125),
('1', 2, 3, 2),
('1', 2, 2, 1),
('1', 2, 1, 0.2),
('1', 1, 3, 8),
('1', 1, 2, 5),
('1', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama_subkriteria` varchar(60) NOT NULL,
  `urutan` int(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `nama_subkriteria`, `urutan`, `keterangan`) VALUES
(1, 1, 'Baik', 3, '-'),
(2, 1, 'Cukup', 2, '-'),
(3, 1, 'Kurang', 1, 'yoo'),
(4, 2, 'Baik', 1, '-'),
(5, 4, 'Cukup', 1, '-'),
(6, 2, 'Buruk', 2, '-'),
(7, 4, 'Baik', 2, '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
