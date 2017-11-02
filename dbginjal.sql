-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10 Jul 2015 pada 10.31
-- Versi Server: 5.1.22-rc-community
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbginjal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE IF NOT EXISTS `gejala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` int(11) DEFAULT NULL,
  `pertanyaan` char(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id`, `no`, `pertanyaan`) VALUES
(1, 1, 'Rasa panas dan nyeri ketika buang air kecil'),
(2, 1, 'Rasa ingin sering buang air kecil'),
(3, 1, 'Kencing terasa sakit, sering tetapi sedikit-sedikit disertai rasa panas atau nyeri dan muntah'),
(4, 1, 'Demam dan menggigil'),
(5, 1, 'Ditemukannya kuman E.coli, Klebsiela dan Enterobakter atau proteus'),
(6, 1, 'Jumlah koloni bakteri lebih dari atau sama dengan 100000/ml'),
(7, 1, 'Urin berbau busuk, mengandung darah atau nanah, dan terlihat keruh'),
(8, 1, 'Rasa sakit yang menetap di perut bagian bawah'),
(9, 2, 'Rasa nyeri yang hebat pada pinggang di atas ginjal, yang dapat menyebar ke perut bagian bawah. Nyeri berlangsung 1 menit, reda sebentar, kemudian terasa lagi selama beberapa menit'),
(10, 2, 'Sering buang air kecil, atau dorongan ingin buang air kecil'),
(11, 2, 'Nyeri ketika buang air kecil'),
(12, 2, 'Darah di dalam urin'),
(13, 2, 'Demam dan bengkak pada pinggang menandakan batu ginjal yang disertai dengan infeksi, atau terjadi sumbatan yang membengkak'),
(14, 2, 'Muntah'),
(15, 3, 'Rasa sakit yang menetap pada salah satu daerah pinggang sedikit di bawah tulang rusuk'),
(16, 3, 'Berat badan turun'),
(17, 3, 'Ada benjolan di ginjal, ditmukan pada waktu dilakukan pemeriksaan'),
(18, 3, 'Kelelahan yang tidak diketahui sebabnya'),
(19, 3, 'Demam yang berulang'),
(20, 3, 'Rasa sakit pada daerah tubuh lainnya di sekitar ginjal'),
(21, 4, 'Perut terasa kembung akibat terjadinya pembesaran ginjal'),
(22, 4, 'Urin keluar dalam jumlah yang banyak, karena ginjal tidak dapat lagi memekatkannya'),
(23, 4, 'Adanya gumpalan besar pada bagian kanan atau kiri pinggul'),
(24, 5, 'Penurunan jumlah urin'),
(25, 5, 'Tidak ada urin sama sekali'),
(26, 5, 'Peninggian kadar ureum dan kreatinin darah dalam beberapa hari'),
(27, 5, 'Pusing, mual, kehilangan nafsu makan, lemas dan sesak nafas'),
(28, 6, 'Penurunan nilai tes kliren kreatinin'),
(29, 6, 'Sesak nafas karena penumpukan air di paru-paru'),
(30, 6, 'Adanya sumbatan karena batu dan infeksi'),
(31, 6, 'Adanya gelembung berisi cairan pada ginjal'),
(32, 7, 'Perubahan frekuensi kencing, sering ingin berkemih pada malam hari'),
(33, 7, 'Pembengkakan pada pergelangan kaki'),
(34, 7, 'Kram otot pada malam hari'),
(35, 7, 'Lemah dan lesu, kurang berenergi, nafsu makan turun, mual dan muntah'),
(36, 7, 'Sulit tidur'),
(37, 7, 'Bengkak seputar mata pada pagi waktu bangun pagi hari atau mata merah dan berair karena deposit garam kalsium fosfat yang dapat menyebabkan iritasi hebat pada selaput lendir mata'),
(38, 7, 'Kulit gatal dan kering');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `nama` char(50) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`no`, `nama`, `nilai`) VALUES
(1, 'Infeksi Saluran Kemih', 0.8),
(2, 'Batu Ginjal', 0.8),
(3, 'Kanker Ginjal', 0.6),
(4, 'Kista Ginjal', 0.6),
(5, 'Gagal Ginjal Akut', 0.8),
(6, 'Gagal Ginjal Kronik', 0.6),
(7, 'Gagal Ginjal Terminal', 0.6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
