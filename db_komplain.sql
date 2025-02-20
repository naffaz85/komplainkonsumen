-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Feb 2025 pada 05.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_komplain`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_komplain`
--

CREATE TABLE `data_komplain` (
  `id_komplain` int(11) NOT NULL,
  `tanggal_komplain` timestamp NULL DEFAULT NULL,
  `media_komplain` varchar(50) NOT NULL,
  `nama_store` varchar(50) NOT NULL,
  `nama_konsumen` varchar(50) NOT NULL,
  `no_hp_konsumen` varchar(20) NOT NULL,
  `alamat_konsumen` varchar(255) NOT NULL,
  `kategori_komplain` varchar(50) NOT NULL,
  `foto_komplain` varchar(50) NOT NULL,
  `isi_komplain` varchar(500) NOT NULL,
  `pic_tindak_lanjut` varchar(50) NOT NULL,
  `status_komplain` varchar(50) NOT NULL,
  `foto_status_komplain` varchar(255) NOT NULL,
  `pic_handle` varchar(255) NOT NULL,
  `tanggal_done_komplain` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_komplain`
--

INSERT INTO `data_komplain` (`id_komplain`, `tanggal_komplain`, `media_komplain`, `nama_store`, `nama_konsumen`, `no_hp_konsumen`, `alamat_konsumen`, `kategori_komplain`, `foto_komplain`, `isi_komplain`, `pic_tindak_lanjut`, `status_komplain`, `foto_status_komplain`, `pic_handle`, `tanggal_done_komplain`) VALUES
(1, '2025-02-19 17:00:00', 'WHATSAPP', 'LC ANTAPANI', 'Dodi', '6281320320320', 'jalan a yani', 'PERALATAN / BULIDING', 'http://localhost/apkkomplain/uploads/files/ln9jwxp', 'nampan kotor', 'Crew', 'DONE KOMPLIMENTARY', 'http://localhost/apkkomplain/uploads/files/oy52mgw817bxu9s.jpeg', 'NANA', '2025-02-19 17:00:00'),
(2, '2025-02-19 17:00:00', 'FACEBOOK', 'LC BABAKAN SARI', 'eka', '081321321321', 'jalan baksar', 'ITEM KURANG', 'http://localhost/apkkomplain/uploads/files/p3hk0ya', 'ayam kurang 1', 'Tjatur', 'CUSTOMER NO RESPON', 'http://localhost/apkkomplain/uploads/files/_zmgt403hxdb5ne.jpg', 'IWAN', '2025-02-19 17:00:00'),
(3, '2025-02-19 17:00:00', 'INSTAGRAM', 'LC MARGAHAYU', 'susi', '08123123123', 'jalan venus', 'PELAYANAN', 'http://localhost/apkkomplain/uploads/files/ehvb1mu', 'kasir ketus', 'Crew', 'CUSTOMER FEEDBACK', 'http://localhost/apkkomplain/uploads/files/cby4e60u8f17_2g.png', 'MEIRSYAL', '2025-02-19 17:00:00'),
(4, '2025-02-20 03:50:00', 'TIKTOK', 'LC BALEENDAH', 'aris', '0812233445566', 'jelekong', 'ITEM SALAH', 'http://localhost/apkkomplain/uploads/files/haxls4n', 'beli geprek dikasih original', 'asdik', 'CUSTOMER FEEDBACK', 'http://localhost/apkkomplain/uploads/files/g2u5w97nq_x4a30.jpg', 'BANI', '2025-02-19 17:00:00'),
(5, '2025-02-20 03:52:00', 'APK GOFOOD', 'LC RANCAMANYAR', 'kosim', '08122335566', 'RI', 'QUALITAS PRODUK', 'http://localhost/apkkomplain/uploads/files/n_j4hwp', 'hangus', 'crew', 'DONE NON KOMPLIMENTARY', 'http://localhost/apkkomplain/uploads/files/7ql3gh90autzd2x.jpg', 'WANWAN', '2025-02-20 03:54:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(3, 'Customer Service'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_permissions`
--

CREATE TABLE `role_permissions` (
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `action_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `role_permissions`
--

INSERT INTO `role_permissions` (`permission_id`, `role_id`, `page_name`, `action_name`) VALUES
(112, 1, 'user', 'list'),
(113, 1, 'user', 'view'),
(114, 1, 'user', 'add'),
(115, 1, 'user', 'edit'),
(116, 1, 'user', 'editfield'),
(117, 1, 'user', 'delete'),
(118, 1, 'user', 'import_data'),
(119, 1, 'data_komplain', 'list'),
(120, 1, 'data_komplain', 'view'),
(121, 1, 'data_komplain', 'add'),
(122, 1, 'data_komplain', 'edit'),
(123, 1, 'data_komplain', 'editfield'),
(124, 1, 'data_komplain', 'delete'),
(125, 1, 'user', 'userregister'),
(126, 1, 'user', 'accountedit'),
(127, 1, 'user', 'accountview'),
(128, 1, 'role_permissions', 'list'),
(129, 1, 'role_permissions', 'view'),
(130, 1, 'role_permissions', 'add'),
(131, 1, 'role_permissions', 'edit'),
(132, 1, 'role_permissions', 'editfield'),
(133, 1, 'role_permissions', 'delete'),
(134, 1, 'roles', 'list'),
(135, 1, 'roles', 'view'),
(136, 1, 'roles', 'add'),
(137, 1, 'roles', 'edit'),
(138, 1, 'roles', 'editfield'),
(139, 1, 'roles', 'delete'),
(140, 2, 'data_komplain', 'list'),
(141, 2, 'data_komplain', 'view'),
(142, 2, 'user', 'accountview'),
(143, 3, 'data_komplain', 'list'),
(144, 3, 'data_komplain', 'view'),
(145, 3, 'data_komplain', 'add'),
(146, 3, 'data_komplain', 'edit'),
(147, 3, 'data_komplain', 'editfield'),
(148, 3, 'data_komplain', 'delete'),
(149, 3, 'data_komplain', 'import_data');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2025-05-19 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL,
  `user_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `foto`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`, `user_role_id`) VALUES
(1, 'admin', '$2y$10$60rQiZN8R/Ysv3XmDOwpjOHncBhk2uvjNCfsq2VjNHKnbHROQxu7m', 'admin@gmail.com', 'http://localhost/apkkomplain/uploads/files/6ax5h028ldnmeiv.jpg', 'b990753c6f9fb3d4cd4572c6a958a44d', NULL, '2025-05-19 00:00:00', NULL, 1),
(2, 'Iwan', '$2y$10$rZk63U292BzNOiwux7dYau2XoHRwxiixpZcQ2JQnxMFE.5THZDSRy', '3lf4ngel@gmail.com', 'http://localhost/apkkomplain/uploads/files/9vx1ukj7wts03pg.png', NULL, NULL, '2025-05-19 00:00:00', NULL, 3),
(3, 'am01lc', '$2y$10$693ULjTnOSPxYNJdSHuUx.upsvkr/g.O403xh5XNcXqGvcZ.Idota', 'am01lc@gmail.com', 'http://localhost/apkkomplain/uploads/files/m5oq7d8_09fiens.jpeg', NULL, NULL, '2025-05-19 00:00:00', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_komplain`
--
ALTER TABLE `data_komplain`
  ADD PRIMARY KEY (`id_komplain`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_komplain`
--
ALTER TABLE `data_komplain`
  MODIFY `id_komplain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
