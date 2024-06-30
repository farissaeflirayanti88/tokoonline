-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2024 pada 13.10
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luminartt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksis`
--

CREATE TABLE `detail_transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_transaksi` bigint(20) UNSIGNED NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_transaksis`
--

INSERT INTO `detail_transaksis` (`id`, `id_transaksi`, `id_barang`, `qty`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 202406111, 1, 8, 7200000, 1, '2024-06-11 08:56:11', '2024-06-11 08:58:25'),
(2, 202406111, 1, 8, 900000, 1, '2024-06-11 08:56:19', '2024-06-11 08:58:25'),
(3, 202406111, 1, 8, 900000, 1, '2024-06-11 08:56:31', '2024-06-11 08:58:25'),
(4, 202406111, 1, 1, 900000, 1, '2024-06-11 08:58:04', '2024-06-11 08:58:25'),
(5, 202406112, 1, 2, 90000, 1, '2024-06-11 10:30:01', '2024-06-11 10:30:33'),
(6, 202406113, 2, 1, 52000, 0, '2024-06-11 12:49:10', '2024-06-11 12:49:10'),
(7, 202406113, 2, 1, 52000, 0, '2024-06-11 12:49:18', '2024-06-11 12:49:18'),
(8, 202406113, 2, 1, 52000, 0, '2024-06-11 13:26:15', '2024-06-11 13:26:15'),
(9, 202406113, 1, 1, 90000, 0, '2024-06-11 13:26:58', '2024-06-11 13:26:58'),
(10, 202406123, 2, 1, 52000, 0, '2024-06-12 12:56:01', '2024-06-12 12:56:01'),
(11, 202406123, 2, 1, 52000, 0, '2024-06-12 12:56:27', '2024-06-12 12:56:27'),
(12, 202406143, 1, 1, 90000, 0, '2024-06-14 07:25:28', '2024-06-14 07:25:28'),
(13, 202406143, 1, 1, 90000, 0, '2024-06-14 07:49:45', '2024-06-14 07:49:45'),
(14, 202406203, 2, 1, 52000, 0, '2024-06-20 15:58:56', '2024-06-20 15:58:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_07_030459_create_m_resis_table', 1),
(6, '2023_06_11_235625_create_products_table', 1),
(7, '2023_06_12_000108_create_transaksis_table', 1),
(8, '2023_07_29_011712_detail_transaksi', 1),
(9, '2023_08_05_094100_tbl_cart', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_resis`
--

CREATE TABLE `m_resis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(255) NOT NULL,
  `awb` varchar(255) NOT NULL,
  `logistic` varchar(255) NOT NULL,
  `warehouse` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `nama_product` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `kategory` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `quantity_out` int(11) NOT NULL DEFAULT 0,
  `foto` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `sku`, `nama_product`, `type`, `kategory`, `harga`, `discount`, `quantity`, `quantity_out`, `foto`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'BRG56274', 'Novel Dilan 1990', 'romantis', 'Remaja', 90000, 0.10, 73, 2, '20240611_111072_f.jpg', 1, '2024-06-11 08:55:18', '2024-06-11 10:30:33'),
(2, 'BRG57106', 'The Chronicles of Narnia #2: The Lion, the Witch and the Wardrobe – C. S. Lewis', 'fantasi', 'remaja', 52000, 0.10, 10, 0, '20240611_Narnia_2_The_Lion_The_Witch_and_The_Wardrobe_cov_page-0001.jpg', 1, '2024-06-11 12:48:18', '2024-06-11 12:48:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUser` varchar(255) NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbl_carts`
--

INSERT INTO `tbl_carts` (`id`, `idUser`, `id_barang`, `qty`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'guest123', 1, 8, 900000, 1, '2024-06-11 08:55:50', '2024-06-11 08:56:31'),
(2, 'guest123', 1, 1, 900000, 1, '2024-06-11 08:57:15', '2024-06-11 08:58:04'),
(3, 'guest123', 1, 2, 90000, 1, '2024-06-11 10:29:45', '2024-06-11 10:30:01'),
(4, 'guest123', 2, 1, 52000, 1, '2024-06-11 12:48:59', '2024-06-11 12:49:18'),
(5, 'guest123', 2, 1, 52000, 1, '2024-06-11 13:25:59', '2024-06-11 13:26:15'),
(6, 'guest123', 1, 1, 90000, 1, '2024-06-11 13:26:04', '2024-06-11 13:26:58'),
(7, 'guest123', 1, 1, 90000, 1, '2024-06-11 13:40:54', '2024-06-14 07:49:45'),
(8, 'guest123', 2, 1, 52000, 1, '2024-06-11 13:40:57', '2024-06-20 15:58:56'),
(9, 'guest123', 2, 1, 52000, 1, '2024-06-12 12:55:42', '2024-06-12 12:56:01'),
(10, 'guest123', 2, 1, 52000, 1, '2024-06-12 12:55:49', '2024-06-12 12:56:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code_transaksi` varchar(255) NOT NULL,
  `total_qty` varchar(255) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `nama_customer` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(255) NOT NULL,
  `ekspedisi` varchar(255) NOT NULL,
  `status` enum('Unpaid','Paid') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`id`, `code_transaksi`, `total_qty`, `total_harga`, `nama_customer`, `alamat`, `no_tlp`, `ekspedisi`, `status`, `created_at`, `updated_at`) VALUES
(1, '202406111', '25', '10999000', 'risa', 'Batam', '081276055937', 'jne', 'Unpaid', '2024-06-11 08:58:25', '2024-06-11 08:58:25'),
(2, '202406112', '2', '109900', 'risa', 'Batam', '081276055937', 'jne', 'Unpaid', '2024-06-11 10:30:33', '2024-06-11 10:30:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 1,
  `is_mamber` tinyint(1) NOT NULL DEFAULT 1,
  `foto` varchar(255) NOT NULL DEFAULT 'default.png',
  `alamat` varchar(255) NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `tglLahir` date NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nik`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `is_mamber`, `foto`, `alamat`, `tlp`, `tglLahir`, `is_active`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Member967', 'farissa', 'farissaelfira88@gmail.com', NULL, '$2y$10$nJD6f6xcQGLYpoPD.6RujeivXI3WhBFiriXHKO.flYMezlM1YLMUS', 0, 1, '20240610_4.jpg', 'Batam batam', '081276055937', '2005-01-01', 1, 2, NULL, '2024-06-10 08:40:37', '2024-06-10 09:21:20'),
(4, '2023110101', 'admin01', 'admin01@gmail.com', NULL, '$2a$12$Yzv5/NNaRgoyDDPGD4AsKuGZvnIGwneuRj8B1m394KkSHaL4xyAva', 1, 0, 'default.png', 'Batam', '087796354347', '2023-11-01', 1, 0, NULL, '2024-06-10 09:10:11', '2024-06-10 09:10:11'),
(5, 'Member852', 'risa', 'shimpalama75369@gmail.com', NULL, '$2y$10$IC4sK2/I1eSqDoIUmt8hkOwlPB97XPzVNQtzJpT6QTCmGRdG.EtTO', 0, 1, 'default.png', 'Batam batam', '081276055937', '1993-01-01', 1, 0, NULL, '2024-06-14 07:24:35', '2024-06-14 07:24:35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_transaksis_id_barang_foreign` (`id_barang`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_resis`
--
ALTER TABLE `m_resis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_carts_id_barang_foreign` (`id_barang`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `m_resis`
--
ALTER TABLE `m_resis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksis`
--
ALTER TABLE `detail_transaksis`
  ADD CONSTRAINT `detail_transaksis_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `products` (`id`);

--
-- Ketidakleluasaan untuk tabel `m_resis`
--
ALTER TABLE `m_resis`
  ADD CONSTRAINT `m_resis_ibfk_1` FOREIGN KEY (`id`) REFERENCES `transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD CONSTRAINT `password_reset_tokens_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD CONSTRAINT `personal_access_tokens_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD CONSTRAINT `tbl_carts_id_barang_foreign` FOREIGN KEY (`id_barang`) REFERENCES `products` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_ibfk_1` FOREIGN KEY (`id`) REFERENCES `detail_transaksis` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
