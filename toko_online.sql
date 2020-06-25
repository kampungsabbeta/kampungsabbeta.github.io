-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 14. Juni 2020 jam 04:08
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE IF NOT EXISTS `tb_barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nm_barang` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nm_barang`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Kain Sutra Habutai', 'Ukuran: 115cm x 200cm', 'Kain', 150000, 4, 'habutai.jpg'),
(2, 'Beauty Case Ecoprint', 'Beauty Case ecoprint unik, outer terbuat dari bahan katun ecoprint dengan inner suede.', 'Tas Ecoprint', 150000, 10, 'tas.jpg'),
(3, 'Kemeja Ecoprint Katun Tunjung 16 M', ' Bahan katun jepang 60s menggunakan pewarna alami tunjung dengan motif daun jati, pakis, jarak kepyar dan ketapang.', 'Pakaian Pria', 200000, 2, 'kemeja.jpg'),
(4, 'Kemeja Ecoprint Mahoni', 'Kemeja ecoprint unik terbuat dari bahan katun jepang 60s menggunakan pewarna alami mahoni dengan motif daun pakis, kalpataru dan semak', 'Pakaian Pria', 200000, 1, 'kmjmahoni.jpg'),
(12, 'Mukena Ecoprint Broken White 51', 'Ukuran: mukena atas 130cm x 125cm, mukena bawah 115cm x 160cm', 'Pakaian Wanita', 200000, 2, 'mej-511.jpg'),
(13, 'Kerudung Ecoprint Silkcrepe Tingi 36', 'Ukuran: 140cm x 140cm', 'Pakaian Wanita', 100000, 2, 'ehs-361.jpg'),
(14, 'Giwang Kepompong Bunga Kuning', 'Berat	   : 100 gram', 'Pernak Pernik', 15000, 3, 'Giwang_kepompong_bunga__12_1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE IF NOT EXISTS `tb_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Indah', 'Makassar', '2020-06-13 14:05:48', '2020-06-14 14:05:48'),
(2, 'Dewi', 'Makassar', '2020-06-13 15:57:07', '2020-06-14 15:57:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE IF NOT EXISTS `tb_pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_invoice` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nm_barang` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_barang`, `nm_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 13, 'Kerudung Ecoprint Silkcrepe Tingi 36', 1, 100000, ''),
(2, 2, 1, 'Kain Sutra Habutai', 1, 150000, ''),
(3, 2, 3, 'Kemeja Ecoprint Katun Tunjung 16 M', 1, 200000, ''),
(4, 2, 4, 'Kemeja Ecoprint Mahoni', 1, 200000, ''),
(5, 2, 13, 'Kerudung Ecoprint Silkcrepe Tingi 36', 1, 100000, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
