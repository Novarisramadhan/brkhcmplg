-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 04:38 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berkahcumplung`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `status_berita` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(3) NOT NULL,
  `id_produk` int(3) NOT NULL,
  `judul_gambar` varchar(50) DEFAULT NULL,
  `gambar` varchar(50) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_header_transaksi` int(3) NOT NULL,
  `id_pelanggan` int(3) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` varchar(20) NOT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `rekening_pembayaran` varchar(30) DEFAULT NULL,
  `rekening_pelanggan` varchar(30) DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `id_rekening` int(3) DEFAULT NULL,
  `tanggal_bayar` varchar(20) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `header_transaksi`
--

INSERT INTO `header_transaksi` (`id_header_transaksi`, `id_pelanggan`, `nama_pelanggan`, `email`, `telepon`, `alamat`, `kode_transaksi`, `tanggal_transaksi`, `jumlah_transaksi`, `status_bayar`, `jumlah_bayar`, `rekening_pembayaran`, `rekening_pelanggan`, `bukti_bayar`, `id_rekening`, `tanggal_bayar`, `nama_bank`, `tanggal_post`, `tanggal_update`) VALUES
(51, 16, 'CUSTOMER', 'customer@gmail.com', '6289000676987', 'Jalan HR. Bunyamin No.106, Sumampir Wetan, Pabuaran, Kec. Purwokerto Utara, Kabupaten Banyumas, Jawa Tengah 53124', 'GG4LNU', '2024-06-03 00:00:00', 50000, 'Konfirmasi', 50000, '111222333444', 'CUSTOMER', '1_set_spatula.jpg', 5, '03-06-2024', 'BANK MANDIRI', '2024-06-03 15:58:09', '2024-06-03 13:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(3) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `urutan` int(3) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `slug_kategori`, `nama_kategori`, `urutan`, `gambar`, `tanggal_update`) VALUES
(9, 'aksesoris', 'Aksesoris', 3, 'AKSESORIS1.png', '2020-07-10 02:29:37'),
(10, 'alat-makan', 'Alat Makan', 2, 'ALAT_MAKAN.png', '2020-07-09 22:15:00'),
(11, 'alat-dapur', 'Alat Dapur', 1, 'ALAT_DAPUR.png', '2020-07-10 02:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `namaweb` varchar(50) NOT NULL,
  `tagline` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `id_user`, `namaweb`, `tagline`, `email`, `website`, `keywords`, `metatext`, `telepon`, `alamat`, `facebook`, `instagram`, `deskripsi`, `logo`, `icon`, `tanggal_update`) VALUES
(1, 15, 'BERKAH CUMPLUNG', 'Kerajinan Tangan Dari Tempurung Kelapa & Kayu', 'berkahcumplung@gmail.com', 'berkahcumplung', 'ok', 'ok', '62895627787865', 'J949+948, Purbalingga Wetan, Kec. Purbalingga, Kabupaten Purbalingga, Jawa Tengah', 'berkahcumplung', 'berkahcumplung', 'ok', 'logo.png', 'icon_kelapa.png', '2020-08-07 13:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(3) NOT NULL,
  `status_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `status_pelanggan`, `nama_pelanggan`, `email`, `password`, `telepon`, `alamat`, `tanggal_daftar`, `tanggal_update`) VALUES
(16, 'Pending', 'CUSTOMER', 'customer@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '6289000676987', 'Jalan HR. Bunyamin No.106, Sumampir Wetan, Pabuaran, Kec. Purwokerto Utara, Kabupaten Banyumas, Jawa Tengah 53124', '2024-06-03 15:51:11', '2024-06-03 13:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `keywords` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(3) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `ukuran` varchar(20) DEFAULT NULL,
  `status_produk` varchar(20) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori`, `kode_produk`, `nama_produk`, `slug_produk`, `keterangan`, `keywords`, `harga`, `stok`, `gambar`, `ukuran`, `status_produk`, `tanggal_post`, `tanggal_update`) VALUES
(24, 15, 11, 'DPR-IRS-02', 'Sendok Sayur Sedang', 'sendok-sayur-sedang-dpr-irs-02', '<p>Berbahan Dasar Kayu &amp; Tempurung Kelapa Berkualitas</p>\r\n', 'Sendok Sayur Tempurung', 4000, 10, 'SENDOK_SAYU_SEDANG.png', NULL, 'Publish', '2020-07-10 00:23:50', '2020-07-10 12:51:57'),
(25, 15, 9, 'AKS-KTK-01', 'Kotak Serbaguna', 'kotak-serbaguna-aks-ktk-01', '<p>Berbahan Dasar Kayu Berkualitas</p>\r\n', 'Kotak Serbaguna Kayu', 40000, 10, 'KOTAK_SERBAGUNA.png', NULL, 'Publish', '2020-07-10 00:27:10', '2020-07-10 04:49:34'),
(26, 15, 9, 'AKS-GRK-01', 'Garukan Punggung', 'garukan-punggung-aks-grk-01', '<p>Berbahan Dasar Tempurung Kelapa Berkualitas</p>\r\n', 'Garukan Punggung Kayu', 30000, 10, 'GARUKAN_PUNGGUNG.png', NULL, 'Publish', '2020-07-10 00:29:45', '2020-07-13 16:40:17'),
(27, 15, 11, 'DPR-CTG-02', 'Centong Nasi ', 'centong-nasi-dpr-ctg-02', '<p>Berbahan Dasar Kayu Berkualitas</p>\r\n', 'Centong Nasi Kayu', 10000, 10, 'CENTONG_NASI.png', NULL, 'Publish', '2020-07-10 04:42:11', '2020-07-10 04:46:53'),
(28, 15, 11, 'DPR-CTG-01', 'Centong Nasi Bulat', 'centong-nasi-bulat-dpr-ctg-01', '<p>Berbahan Dasar Kayu &amp; Tempurung Kelapa Berkualitas</p>\r\n', 'Centong Nasi Tempurung', 5000, 10, 'CENTONG_NASI_BULAT.png', NULL, 'Publish', '2020-07-10 05:33:21', '2020-07-10 04:47:05'),
(29, 15, 10, 'ALTMKN-GLS-01', 'Gelas', 'gelas-altmkn-gls-01', '<p>Berbahan Dasar Tempurung Kelapa Berkualitas</p>\r\n', 'Gelas Tempurung', 25000, 10, 'GELAS.png', NULL, 'Publish', '2020-07-10 05:35:18', '2020-07-13 17:57:18'),
(33, 15, 10, 'ALTMKN-MGK-01', 'Mangkok', 'mangkok-altmkn-mgk-01', '<p>Berbahan Dasar Kayu Berkualitas</p>\r\n', 'Mangkok Kayu', 20000, 10, 'MANGKOK.png', NULL, 'Publish', '2020-07-10 05:44:59', '2020-07-10 04:47:50'),
(36, 15, 10, 'ALTMKN-SDK-01', 'Sendok Makan', 'sendok-makan-altmkn-sdk-01', '<p>Berbahan Dasar Kayu Berkualitas</p>\r\n', 'Sendok Kayu', 10000, 10, 'SENDOK.png', NULL, 'Publish', '2020-07-10 05:53:18', '2020-07-10 13:00:56'),
(38, 15, 11, 'DPR-IRS-01', 'Sendok Sayur Kecil', 'sendok-sayur-kecil-dpr-irs-01', '<p>Berbahan Dasar Kayu &amp; Tempurung Kelapa Berkualitas</p>\r\n', 'Sendok Sayur Tempurung', 3000, 10, 'SENDOK_SAYUR_KECIL.png', NULL, 'Publish', '2024-06-05 16:30:52', '2024-06-05 14:30:52'),
(39, 15, 11, 'DPR-IRS-03', 'Sendok Sayur Besar', 'sendok-sayur-besar-dpr-irs-03', '<p>Berbahan Dasar Kayu &amp; Tempurung Kelapa Berkualitas</p>\r\n', 'Sendok Sayur Tempurung', 5000, 10, 'SENDOK_SAYUR_BESAR.png', NULL, 'Publish', '2024-06-05 16:32:14', '2024-06-05 14:32:14'),
(40, 15, 11, 'DPR-SPT-01', 'Spatula', 'spatula-dpr-spt-01', '<p>Berbahan Dasar Kayu Berkualitas</p>\r\n', 'Spatula Kayu', 10000, 10, 'SPATULA.png', NULL, 'Publish', '2024-06-05 16:33:18', '2024-06-05 14:33:18'),
(41, 15, 11, 'DPR-ULK-01', 'Ulekan', 'ulekan-dpr-ulk-01', '<p>Berbahan Dasar Kayu Berkualitas</p>\r\n', 'Ulekan Kayu', 10000, 10, 'ULEKAN.png', NULL, 'Publish', '2024-06-05 16:34:03', '2024-06-05 14:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(3) NOT NULL,
  `id_user` int(3) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `nomor_rekening` varchar(30) NOT NULL,
  `nama_pemilik` varchar(50) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `id_user`, `nama_bank`, `nomor_rekening`, `nama_pemilik`, `gambar`, `tanggal_post`) VALUES
(2, 0, 'BANK BCA', '111222333444', 'ISYA NABIILAH', NULL, '2020-06-27 06:16:52'),
(3, 0, 'BANK MANDIRI', '222333444555', 'WIWI ALAWIYAH', NULL, '2020-06-27 06:17:54'),
(5, 0, 'BANK BRI', '333444555666', 'ADMINISTRATOR', NULL, '2020-08-06 18:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(3) NOT NULL,
  `id_pelanggan` int(3) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_produk` int(3) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `kode_transaksi`, `id_produk`, `harga`, `jumlah`, `total_harga`, `tanggal_transaksi`, `tanggal_update`) VALUES
(69, 16, 'GG4LNU', 33, 20000, 1, 20000, '2024-06-03 00:00:00', '2024-06-03 13:58:09'),
(70, 16, 'GG4LNU', 29, 30000, 1, 30000, '2024-06-03 00:00:00', '2024-06-03 13:58:09');

--
-- Triggers `transaksi`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN
	UPDATE produk SET stok = stok-NEW.jumlah
    WHERE id_produk = NEW.id_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `tanggal_update`) VALUES
(15, 'Admin', 'admin@gmail.com', 'administrator', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Admin', '2024-06-02 07:06:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_header_transaksi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_rekening` (`id_rekening`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`),
  ADD UNIQUE KEY `nomor_rekening` (`nomor_rekening`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_header_transaksi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `gambar_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD CONSTRAINT `header_transaksi_ibfk_3` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `header_transaksi_ibfk_4` FOREIGN KEY (`id_rekening`) REFERENCES `rekening` (`id_rekening`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD CONSTRAINT `konfigurasi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`kode_transaksi`) REFERENCES `header_transaksi` (`kode_transaksi`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
