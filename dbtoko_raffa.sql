-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2024 pada 15.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko_raffa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dtbrg`
--

CREATE TABLE `dtbrg` (
  `kode_barang` int(20) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga` int(55) NOT NULL,
  `stok` int(55) NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dtbrg`
--

INSERT INTO `dtbrg` (`kode_barang`, `nama_barang`, `harga`, `stok`, `tgl_masuk`) VALUES
(33, 'baju', 45000, 20, '2024-06-02'),
(44, 'celana', 45000, 20, '2024-03-24'),
(223, 'handuk', 60000, 20, '2024-06-05'),
(4455, 'buku', 3000, 20, '2024-09-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`username`, `password`) VALUES
('admin', 'admin'),
('user1_admin3', 'password1_admin3'),
('user2_admin3', 'password2_admin3'),
('rara', 'rara.23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_datakasir`
--

CREATE TABLE `tbl_datakasir` (
  `id_ksr` int(20) NOT NULL,
  `jk` varchar(4) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `nohp` int(14) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kasir`
--

CREATE TABLE `tbl_kasir` (
  `id_kasir` int(22) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_registrasi`
--

CREATE TABLE `tbl_registrasi` (
  `id_kasir` int(22) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_registrasi`
--

INSERT INTO `tbl_registrasi` (`id_kasir`, `email`, `username`, `password`) VALUES
(23, 'ani@gmail.com', 'ani', 'ani.2'),
(33, 'rara@gmail.com', 'rara33', '33.'),
(67, 'pp@gmail.com', 'ppp', 'pp99'),
(88, 'ra@gmail.com', 'rara', '888');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `kode_supplier` int(40) NOT NULL,
  `nama_suplier` varchar(70) NOT NULL,
  `alamat` varchar(70) NOT NULL,
  `kota` varchar(70) NOT NULL,
  `negara` varchar(30) NOT NULL,
  `telepon` int(17) NOT NULL,
  `email` varchar(40) NOT NULL,
  `norek` int(40) NOT NULL,
  `npwp` varchar(40) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `kodepos` int(40) NOT NULL,
  `fax` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(70) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `total_harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`kode_barang`, `nama_barang`, `harga_barang`, `jumlah_barang`, `total_harga`) VALUES
(66, 'hapusan', 2000, 2, 4000),
(66, 'hapusan', 2000, 2, 4000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dtbrg`
--
ALTER TABLE `dtbrg`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  ADD KEY `id_kasir` (`id_kasir`);

--
-- Indeks untuk tabel `tbl_registrasi`
--
ALTER TABLE `tbl_registrasi`
  ADD PRIMARY KEY (`id_kasir`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dtbrg`
--
ALTER TABLE `dtbrg`
  MODIFY `kode_barang` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4456;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  ADD CONSTRAINT `tbl_kasir_ibfk_1` FOREIGN KEY (`id_kasir`) REFERENCES `tbl_registrasi` (`id_kasir`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
