-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2021 pada 15.02
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `Id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_admin` varchar(255) DEFAULT NULL,
  `role_user` varchar(255) DEFAULT NULL,
  `id_user` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`Id`, `email`, `password`, `nama_admin`, `role_user`, `id_user`) VALUES
(2, 'admin@gmail.com', '$2y$10$AIxith3klXwMIMT/t3CpHOasClDF8l1JWV66U1zob78mXT4wksaJq', 'ARIFIN', '0', NULL),
(20, 'test@gmail.com', '$2y$10$GK/Vsz.N/wTbKijTQw31qOgTZFqeLNwZgofVP0Nst4zJ/XFmwKEoa', '', '1', 9),
(21, 'test2@gmail.com', '$2y$10$gg12u7EggBdGgI7lO6ZC2eeF3vmfsEJjAqiFyrrjptYvESBu//PEy', '', '1', 10),
(22, 'mahasiswa01@gmail.com', '$2y$10$wH0WGDggG9ZiA8lG8cj0l.pC.Rf4SCl/kzZWmlAEFBUWMf6/KpcX6', '', '1', 11),
(23, 'rizkifucek@gmaill.com', '$2y$10$U944JVlyJmONQIKRKggT4O2dLe4o8tdXvLZ.Zcu6kkmVJ9kWlyusC', '', '1', 12),
(24, 'admin02@gmail.com', '$2y$10$nadyX7/QxGK8X8EbzjOrtujkYcZYylSH228Bpd0GPlfVEK2IaXAm6', 'User', '0', NULL),
(25, '', '', '', '1', 13),
(26, 'mahasiswa02@gmail.com', '$2y$10$gNyzAkSJb2nNkIE.v2q.B.qSTKSiPizb0Q67uCLBcD09Htt2WxmBq', '', '1', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cicilan_pendaftaran`
--

CREATE TABLE `cicilan_pendaftaran` (
  `Id` int(11) NOT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `id_detail_pendaftaran` int(11) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `tanggal_pembayaran` varchar(255) DEFAULT NULL,
  `status_cicilan` int(11) NOT NULL,
  `cicilan_ke` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `cicilan_pendaftaran`
--

INSERT INTO `cicilan_pendaftaran` (`Id`, `bukti_pembayaran`, `id_detail_pendaftaran`, `nominal`, `tanggal_pembayaran`, `status_cicilan`, `cicilan_ke`) VALUES
(16, '04-12-252. Gagal signup (data kurang atau sudah terpakai).PNG', 8, 895000, '2017-12-27', 1, 1),
(17, '10-12-24background2.jpg', 9, 500000, '2017-12-29', 1, 1),
(18, '10-12-11button.png', 9, 395000, '2017-12-29', 1, 2),
(19, '04-06-321.jpg', 10, 440000, '2021-06-18', 1, 1),
(20, '04-06-08cover.jpg', 10, 440000, '2021-06-18', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pendaftaran`
--

CREATE TABLE `detail_pendaftaran` (
  `Id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `metode_pembayaran_pendaftaran` varchar(255) DEFAULT NULL COMMENT 'metode_pembayaran',
  `kelas` varchar(255) DEFAULT NULL,
  `usia` varchar(255) DEFAULT NULL,
  `status_pendaftaran` varchar(255) DEFAULT NULL,
  `status_kegiatan` int(11) NOT NULL DEFAULT 0,
  `biaya_kegiatan` int(11) DEFAULT 0,
  `tanggal_kegiatan` date DEFAULT NULL,
  `bukti_konfirmasi_pembayaran_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pendaftaran`
--

INSERT INTO `detail_pendaftaran` (`Id`, `id_user`, `id_admin`, `tanggal_daftar`, `metode_pembayaran_pendaftaran`, `kelas`, `usia`, `status_pendaftaran`, `status_kegiatan`, `biaya_kegiatan`, `tanggal_kegiatan`, `bukti_konfirmasi_pembayaran_kegiatan`) VALUES
(8, 9, 2, '2017-12-27', 'L', 'A', '12 tahun 6 bulan', '1', 0, 0, NULL, NULL),
(9, 10, 2, '2017-12-29', 'C', 'B', '8 tahun 11 bulan', '4', 0, 0, NULL, NULL),
(10, 11, 2, '2021-06-13', NULL, 'A', '22 tahun 4 bulan', '1', 1, 500000, '2021-06-18', '04-06-4510.jpg'),
(11, 12, 2, '2021-06-20', NULL, 'B', '15 tahun 9 bulan', '1', 0, 0, NULL, NULL),
(12, 13, NULL, '2021-07-03', NULL, NULL, NULL, '0', 0, 0, NULL, NULL),
(13, 14, NULL, '2021-07-08', NULL, NULL, NULL, '0', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `Id` int(11) NOT NULL,
  `nip` char(7) DEFAULT NULL,
  `nama_guru` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `Id` int(11) NOT NULL,
  `nama_hari` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`Id`, `nama_hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat'),
(6, 'PR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_hari` int(11) DEFAULT NULL,
  `id_mapel` varchar(255) DEFAULT NULL,
  `kelas` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_hari`, `id_mapel`, `kelas`) VALUES
(1, 1, 'P0002', 'A'),
(2, 1, 'P0003', 'A'),
(3, 1, 'P0004', 'A'),
(4, 1, 'P0005', 'A'),
(5, 1, 'P0006', 'A'),
(6, 1, 'P0017', 'A'),
(7, 1, 'P0008', 'A'),
(8, 1, 'P0002', 'B'),
(9, 1, 'P0003', 'B'),
(10, 1, 'P0004', 'B'),
(11, 1, 'P0005', 'B'),
(12, 1, 'P0006', 'B'),
(13, 1, 'P0017', 'B'),
(14, 1, 'P0007', 'B'),
(15, 2, 'P0009', 'B'),
(16, 2, 'P0005', 'B'),
(17, 2, 'P0010', 'B'),
(18, 2, 'P0011', 'B'),
(19, 2, 'P0006', 'B'),
(20, 2, 'P0017', 'B'),
(21, 2, 'P0007', 'B'),
(22, 1, 'P0008', 'B'),
(23, 2, 'P0008', 'B'),
(24, 3, 'P0012', 'B'),
(25, 3, 'P0013', 'B'),
(26, 3, 'P0014', 'B'),
(27, 3, 'P0015', 'B'),
(28, 3, 'P0006', 'B'),
(29, 3, 'P0017', 'B'),
(30, 3, 'P0007', 'B'),
(31, 3, 'P0008', 'B'),
(32, 4, 'P0003', 'B'),
(33, 4, 'P0005', 'B'),
(34, 4, 'P0011', 'B'),
(35, 4, 'P0004', 'B'),
(36, 4, 'P0006', 'B'),
(37, 4, 'P0017', 'B'),
(38, 4, 'P0007', 'B'),
(39, 4, 'P0008', 'B'),
(40, 5, 'P0009', 'B'),
(41, 5, 'P0010', 'B'),
(42, 5, 'P0016', 'B'),
(43, 5, 'P0006', 'B'),
(44, 5, 'P0007', 'B'),
(45, 5, 'P0008', 'B'),
(47, 6, 'P0004', 'B'),
(48, 6, 'P0018', 'B'),
(49, 6, 'P0011', 'B'),
(50, 6, 'P0018', 'B'),
(51, 6, 'P0010', 'B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `kode_mapel_kegiatan` char(5) NOT NULL DEFAULT '',
  `nama_mapel_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`kode_mapel_kegiatan`, `nama_mapel_kegiatan`) VALUES
('P0001', 'Matematika'),
('P0002', 'Upacara'),
('P0003', 'Membaca'),
('P0004', 'Bahasa'),
('P0005', 'Seni'),
('P0006', 'Istirahat'),
('P0007', 'Doa'),
('P0008', 'Pulang'),
('P0009', 'Iqro'),
('P0010', 'Hijaiyah'),
('P0011', 'Angka'),
('P0012', 'Olah Raga'),
('P0013', 'Bhs Inggris'),
('P0014', 'Melukis'),
('P0015', 'Menari'),
('P0016', 'Sholat Dhuha'),
('P0017', 'Evaluasi'),
('P0018', 'Majalah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran_spp`
--

CREATE TABLE `pembayaran_spp` (
  `Id` int(11) NOT NULL,
  `tanggal_pembayaran_spp` date DEFAULT NULL,
  `cicilan_ke` int(11) NOT NULL,
  `status_spp` int(11) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran_spp`
--

INSERT INTO `pembayaran_spp` (`Id`, `tanggal_pembayaran_spp`, `cicilan_ke`, `status_spp`, `user_id`) VALUES
(19, '2017-12-21', 1, 1, '8'),
(20, '2017-12-21', 1, 1, '8'),
(21, '2017-12-24', 3, 1, '8'),
(22, '2017-12-24', 4, 1, '8'),
(23, '2017-12-24', 5, 1, '8'),
(24, '2017-12-24', 6, 1, '8'),
(25, '2017-12-27', 1, 1, '9'),
(26, '2017-12-27', 2, 1, '9'),
(27, '2017-12-27', 3, 1, '9'),
(28, '2017-12-27', 4, 1, '9'),
(29, '2017-12-27', 5, 1, '9'),
(30, '2017-12-27', 6, 1, '9'),
(31, '2017-12-27', 1, 1, '9'),
(32, '2017-12-29', 1, 1, '10'),
(33, '2021-06-18', 1, 1, '11'),
(34, '2021-06-18', 2, 1, '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `Id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nama_panggilan` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `jumlah_saudara` int(11) DEFAULT NULL,
  `di_jakarta_ikut` varchar(100) DEFAULT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `tempat_lahir_ayah` varchar(255) DEFAULT NULL,
  `tanggal_lahir_ayah` date DEFAULT NULL,
  `pendidikan_terakhir_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) DEFAULT NULL,
  `agama_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `tempat_lahir_ibu` varchar(255) DEFAULT NULL,
  `tanggal_lahir_ibu` date DEFAULT NULL,
  `pendidikan_terakhir_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` varchar(255) DEFAULT NULL,
  `agama_ibu` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `upload_akte` varchar(255) DEFAULT NULL,
  `upload_kartu_keluarga` varchar(255) DEFAULT NULL,
  `foto_anak` varchar(255) DEFAULT NULL,
  `foto_keluarga` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`Id`, `nama`, `nama_panggilan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `anak_ke`, `jumlah_saudara`, `di_jakarta_ikut`, `nama_ayah`, `tempat_lahir_ayah`, `tanggal_lahir_ayah`, `pendidikan_terakhir_ayah`, `pekerjaan_ayah`, `agama_ayah`, `nama_ibu`, `tempat_lahir_ibu`, `tanggal_lahir_ibu`, `pendidikan_terakhir_ibu`, `pekerjaan_ibu`, `agama_ibu`, `telp`, `upload_akte`, `upload_kartu_keluarga`, `foto_anak`, `foto_keluarga`) VALUES
(9, 'test', 'test', 'test', '2009-01-01', 'L', 1, 2, 'test', 'test', 'test', '1980-01-01', 'SMA', 'test', 'test', 'test', 'test', '1980-01-01', 'test', 'test', 'test', '908080', '03-12-391. Berhasil signup.PNG', '03-12-392. Gagal signup (data kurang atau sudah terpakai).PNG', '03-12-502. Gagal signup (data kurang atau sudah terpakai).PNG', '03-12-501. Berhasil signup.PNG'),
(10, 'test2', 'test2', 'test2', '2009-01-01', 'L', 2, 2, 'test2', 'test2', 'test2', '1980-01-01', 'test2', 'test2', 'test2', 'test2', 'test2', '1980-01-01', 'test2', 'test2', 'test2', 'test2', '10-12-35filter.png', '10-12-35icon.JPG', '10-12-45edittext.png', '10-12-45cloud-internet-symbol.png'),
(11, 'AMINUDDIN', 'AMIN', 'GRESIK', '1999-03-02', 'L', 1, 8, 'DUSUN SUNGAI RAYA DESA LEBAK', 'Marhab', 'Madura', '1980-01-01', 'SD', 'TANI', 'ISLAM', 'Natun', 'GRESIK', '1985-02-01', 'SMP', 'Ibu Rumah Tangga', 'Islam', '082234871084', '10-06-037.jpg', '10-06-0312.jpg', '10-06-248.jpg', '10-06-2413.jpeg'),
(12, 'RIZKI', 'IKY', 'GRESIK', '2005-09-01', 'L', 2, 2, 'DUSUN SUNGAI RAYA DESA LEBAK', 'JATIM', 'GRESIK', '1980-01-07', 'SD', 'TANI', 'ISLAM', 'TIUK', 'GRESIK', '1985-04-08', 'SD', 'GURU', 'Islam', '082234871084', '04-06-49Screenshot (81).png', '04-06-49Screenshot (90).png', '04-06-13Screenshot (91).png', '04-06-13Screenshot (87).png'),
(13, '', '', '', '0000-00-00', '', 0, 0, '', '', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', ''),
(14, 'EREN YEAGER', 'EREN', 'GRESIK', '2000-12-23', 'L', 1, 5, 'SEGOROMADU KEBOMAS GRESIK', 'YEAGER', 'GRESIK', '1980-04-28', 'S1 KEDOKTERAN ', 'DOKTER', 'ISLAM', 'MIKASA', 'JOMBANG', '1985-11-04', 'S1 GURU', 'GURU', 'ISLAM', '082228182323', '04-07-23Screenshot (91).png', '04-07-23Screenshot (110).png', '05-07-05Screenshot (92).png', '05-07-05Screenshot (101).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` char(6) NOT NULL DEFAULT '0',
  `kelas` varchar(255) DEFAULT NULL,
  `id_detail_pendaftaran` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `kelas`, `id_detail_pendaftaran`, `nama`) VALUES
('170001', 'B', 7, 'Anggit Prayogo'),
('170002', 'B', 8, 'test'),
('170003', 'B', 8, 'test'),
('170004', 'B', 9, 'test2'),
('210005', 'A', 10, 'AMINUDDIN');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_user_2` (`id_user`);

--
-- Indeks untuk tabel `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_detail_pendaftaran` (`id_detail_pendaftaran`);

--
-- Indeks untuk tabel `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_hari` (`id_hari`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kode_mapel_kegiatan`);

--
-- Indeks untuk tabel `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `pembayaran_spp`
--
ALTER TABLE `pembayaran_spp`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cicilan_pendaftaran`
--
ALTER TABLE `cicilan_pendaftaran`
  ADD CONSTRAINT `cicilan_pendaftaran_ibfk_1` FOREIGN KEY (`id_detail_pendaftaran`) REFERENCES `detail_pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pendaftaran`
--
ALTER TABLE `detail_pendaftaran`
  ADD CONSTRAINT `detail_pendaftaran_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `pendaftaran` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pendaftaran_ibfk_2` FOREIGN KEY (`id_admin`) REFERENCES `akun` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`kode_mapel_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`id_hari`) REFERENCES `hari` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
