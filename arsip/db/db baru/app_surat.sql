-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 09. Agustus 2023 jam 10:06
-- Versi Server: 5.1.33
-- Versi PHP: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `app_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_disposisi`
--

CREATE TABLE IF NOT EXISTS `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL AUTO_INCREMENT,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_disposisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data untuk tabel `tbl_disposisi`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_instansi`
--

CREATE TABLE IF NOT EXISTS `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepalatoko` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_instansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepalatoko`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Meranti Komputer', 'Meranti Komputer', 'jual komputer', 'JL Abdul Muis, No. 38, Kampung Baru, 0815-1458-6903 ', 'ferry', '11234567891112', 'http://meranti.sch.id/', 'meranti@email.com', 'IMG20220602122843.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_klasifikasi`
--

CREATE TABLE IF NOT EXISTS `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_klasifikasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `kode`, `nama`, `uraian`, `id_user`) VALUES
(1, '01', 'Pemberitahuan', 'Surat Pemberitahuan', 1),
(2, '04', 'terbuka', 'surat lamaran', 1),
(3, '08', 'jaya  baya', 'bukan', 1),
(4, '05', 'papua', 'jaya baya', 1),
(5, '09', 'inggris', 'terlalu terbuka', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sett`
--

CREATE TABLE IF NOT EXISTS `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sett`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 10, 10, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_keluar`
--

CREATE TABLE IF NOT EXISTS `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(4, 1, 'jakarta', '1234', 'bukan aku gila', '1234', '2023-07-24', '2023-07-27', '1861-911-Article Text-1724-1-10-20180820.pdf', 'bukan aku gila', 1),
(5, 2, 'bukan ', 'hantu', 'hantu', '11111', '2023-07-27', '2023-07-27', '8574-Pengertian_Flowchart_Beserta_Fungsi_dan.pdf', 'bukan aku gila', 1),
(6, 3, 'untuk di tindak lanjuti', '5678', 'surat lamara', '5555', '2023-07-25', '2023-07-27', '8835-911-Article Text-1724-1-10-20180820.pdf', 'surat lamaran', 1),
(7, 4, 'hari pembuka ', 'wanita cantik', 'wanita cantik', '22222', '2023-07-26', '2023-07-27', '7531-Pengertian_Flowchart_Beserta_Fungsi_dan.pdf', 'belum acc', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat_masuk`
--

CREATE TABLE IF NOT EXISTS `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL AUTO_INCREMENT,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_surat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(5, 1, '2345', 'lampung', 'maling', '1234', 'maling', '2023-07-27', '2023-07-27', '1265-911-Article Text-1724-1-10-20180820.pdf', 'pembeli leptop', 1),
(6, 2, '234556', 'papua', 'maling', '234556', 'maling', '2023-07-25', '2023-07-27', '5208-911-Article Text-1724-1-10-20180820.pdf', 'maling', 1),
(7, 3, '234456777', 'indonesia', 'bubur', '444444', 'bubur', '2023-07-27', '2023-07-27', '1734-Pengertian_Flowchart_Beserta_Fungsi_dan.pdf', 'bubur', 1),
(8, 4, '22222222', 'pecel lele', 'mati untuk mu', '3333333', 'pecel lele', '2023-07-27', '2023-07-27', '9332-911-Article Text-1724-1-10-20180820.pdf', 'bubur ayam', 1),
(9, 5, '121345', 'surat', 'mal', '555555', 'mal', '2023-07-05', '2023-07-27', '7919-Pengertian_Flowchart_Beserta_Fungsi_dan.pdf', 'surat lamaran', 9),
(10, 6, '7865875', 'bukan', 'bukan hatu ', '222222', 'bukan hatu', '2023-07-24', '2023-07-27', '3513-Pengertian_Flowchart_Beserta_Fungsi_dan.pdf', 'barang leptop', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` tinyint(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', '52654765474', 1),
(2, 'pengguna', '8b097b8a86f9d6a991357d40d3d58634', 'Username', '58647333', 3),
(6, 'manager', '1d0258c2440a8d19e716292b231e3190', 'ferry', '453546', 2),
(7, 'cvindokomputer', 'c1894b8fc059a6c704bb056e52f27102', 'indokomputer', '45657', 3),
(8, 'yujaa', '12fbe6a1f1cb22f28085c41f9cba59d2', 'YUJA', '6789909', 3),
(9, 'iskom', '4dd9b8c904038847c2c7bbc84b4675af', 'iskom', '12345', 3),
(10, 'mirzon', 'e0408e03b207f047cac5bae1fade3f55', 'mirzon', '45657', 3);
