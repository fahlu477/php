-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2020 pada 05.09
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activitys`
--

CREATE TABLE `activitys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `activitys`
--

INSERT INTO `activitys` (`id`, `user_id`, `activity`, `time_at`) VALUES
(1, 6, 'Membuat pesanan ERP16122020-001', '2020-12-16 01:05:21'),
(2, 3, 'Menutup pesanan ERP16122020-001', '2020-12-15 19:55:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `entrance_logs`
--

CREATE TABLE `entrance_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `loged_in_at` timestamp NULL DEFAULT NULL,
  `loged_out_at` timestamp NULL DEFAULT NULL,
  `login_hours` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `entrance_logs`
--

INSERT INTO `entrance_logs` (`id`, `user_id`, `loged_in_at`, `loged_out_at`, `login_hours`) VALUES
(1, 1, '2020-12-16 01:01:04', '2020-12-16 01:01:45', 0.01138888888888889),
(2, 1, '2020-12-16 01:01:56', '2020-12-16 01:02:11', 0.004166666666666667),
(3, 2, '2020-12-16 01:02:26', '2020-12-16 01:02:52', 0.007222222222222222),
(4, 3, '2020-12-16 01:03:05', '2020-12-16 01:03:24', 0.005277777777777778),
(5, 6, '2020-12-16 01:04:57', '2020-12-16 01:05:33', 0.01),
(6, 6, '2020-12-16 01:06:37', '2020-12-16 01:07:02', 0.006944444444444444),
(7, 1, '2020-12-16 02:24:55', '2020-12-16 02:31:59', 0.11777777777777777),
(8, 7, '2020-12-16 02:32:26', '2020-12-16 02:41:34', 0.15222222222222223),
(9, 3, '2020-12-16 02:43:35', '2020-12-16 02:44:01', 0.007222222222222222),
(10, 1, '2020-12-16 02:44:16', '2020-12-16 02:55:16', 0.18333333333333332),
(11, 3, '2020-12-16 02:55:32', '2020-12-16 02:55:55', 0.006388888888888889),
(12, 2, '2020-12-16 02:56:14', '2020-12-16 02:56:26', 0.0033333333333333335),
(13, 2, '2020-12-16 02:56:36', '2020-12-16 02:56:48', 0.0033333333333333335),
(14, 1, '2020-12-16 02:57:04', '2020-12-16 03:02:12', 0.08555555555555555),
(15, 1, '2020-12-16 03:24:07', '2020-12-16 03:25:44', 0.026944444444444444),
(16, 2, '2020-12-16 03:26:02', '2020-12-16 03:26:39', 0.010277777777777778),
(17, 1, '2020-12-16 03:26:49', '2020-12-16 03:56:04', 0.4875),
(18, 3, '2020-12-16 03:56:54', '2020-12-16 04:03:29', 0.10972222222222222);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mejas`
--

CREATE TABLE `mejas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mejas`
--

INSERT INTO `mejas` (`id`, `nomor`, `status`, `created_at`, `updated_at`) VALUES
(1, '001', 1, '2019-02-07 13:25:52', '2020-12-15 19:55:39'),
(2, '002', 1, '2019-02-07 13:26:37', '2019-02-08 08:23:33'),
(3, '003', 1, '2019-02-08 06:03:09', '2019-02-08 06:10:49'),
(4, '004', 1, '2019-02-08 06:03:11', '2019-02-08 06:03:11'),
(5, '005', 1, '2020-12-15 18:02:05', '2020-12-15 18:02:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `nama`, `harga`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nasi', 4000, 1, '2019-02-07 00:14:30', '2019-02-08 06:02:28'),
(2, 'Ayam Bakar', 8000, 1, '2019-02-07 05:20:04', '2019-02-07 15:10:38'),
(3, 'Kopi', 3000, 1, '2019-02-07 16:16:53', '2019-02-08 06:02:42'),
(4, 'Teh', 3000, 1, '2019-02-08 06:02:57', '2019-02-08 06:02:57'),
(6, 'Aneka Jus', 5000, 1, '2020-12-15 19:57:49', '2020-12-15 19:57:49'),
(7, 'Ikan Gurame Bakar', 45000, 1, '2020-12-15 20:36:59', '2020-12-15 20:36:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_07_042439_create_menus_table', 2),
(4, '2019_02_07_122925_create_mejas_table', 3),
(5, '2019_02_07_125108_create_mejas_table', 4),
(6, '2019_02_07_221355_create_pesanans_table', 5),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 6),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 6),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 6),
(10, '2016_06_01_000004_create_oauth_clients_table', 6),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('011fc788aa28c23ff7f7a989cfee4d7d6d9a4545d3afacb3cbecf5595c2ccf8020b4bd16c7d02b72', 2, 1, 'Personal Access Token', '[]', 1, '2019-02-08 13:51:16', '2019-02-08 13:51:16', '2020-02-08 20:51:16'),
('e18348305de65f960c460501d3644ae1e2c42348627c9a6ae76dc861f5228be394c73a55bea43989', 2, 1, 'Personal Access Token', '[]', 0, '2019-02-08 14:10:09', '2019-02-08 14:10:09', '2020-02-08 21:10:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'LtdI2DMQTfI1OKvsWMDA4Goky3HTXpfgZNLfkb1n', 'http://localhost', 1, 0, 0, '2019-02-08 06:35:43', '2019-02-08 06:35:43'),
(2, NULL, 'Laravel Password Grant Client', 'w7J2PDkFYfypOw7MVo7YbgfUxUEDW8KoUw31VBKc', 'http://localhost', 0, 1, 0, '2019-02-08 06:35:43', '2019-02-08 06:35:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-02-08 06:35:43', '2019-02-08 06:35:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meja` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesanan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanans`
--

INSERT INTO `pesanans` (`id`, `nomor`, `meja`, `pesanan`, `jumlah_total`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ERP16122020-001', '001', 'a:3:{i:0;a:5:{s:2:\"id\";s:1:\"3\";s:4:\"nama\";N;s:5:\"harga\";N;s:6:\"jumlah\";s:1:\"1\";s:5:\"total\";s:4:\"3000\";}i:1;a:5:{s:2:\"id\";s:1:\"4\";s:4:\"nama\";N;s:5:\"harga\";N;s:6:\"jumlah\";s:1:\"1\";s:5:\"total\";s:4:\"3000\";}i:2;a:5:{s:2:\"id\";s:1:\"1\";s:4:\"nama\";N;s:5:\"harga\";N;s:6:\"jumlah\";s:1:\"3\";s:5:\"total\";s:5:\"12000\";}}', '18000', 0, 6, '2020-12-16 01:05:21', '2020-12-15 19:55:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$Bsn3syXu3oobTgaMVH7U8.YeSAhc66IBJIxS8.i/kuGJAXsBXfE/W', 1, 'xrWNQYa5qgdIFfpnObRYLmnO1urW82h6w0vP04UwhQc3Th0EBQ8fLk0tqRaJ', '2019-02-06 20:32:15', '2019-02-06 20:32:15'),
(2, 'Pelayan', 'pelayan@email.com', NULL, '$2y$10$WxWCZGgqze7oy5Gox6HNCedKtS.629hNq2Sn4wNlLTirV.EaFsQLG', 2, 'rsVGorT8jWBYt7KuQKcUmHaqFLL2oHYXx6cVT2aUyp28PjUZqFAVdvOWByDQ', '2019-02-08 06:49:22', '2019-02-08 06:49:22'),
(3, 'kasir', 'kasir@email.com', NULL, '$2y$10$Agk2a6.UrjXB8/bYdYbam.SaAliohju7OW7n3as24Z24MzawR2MS6', 3, 'gNKnrRTeJdOWzdJnRWOmFjYB2nt0U4uRdPe51H0I79Hp1ELyIB6UKucxVgbM', '2019-02-07 23:26:25', '2019-02-07 23:26:25'),
(5, 'Pela', 'pelayans@email.com', NULL, '$2y$10$qqhAV.kI31dhPfLC3Txfl.cMPDwTOP6SNKqqabkJ/qKdAozR.M3.a', 2, 'bfTsbGdgwzSwZHrc6PLVF0X4Gk2dvX0ub7mJZAWHunjNZrodInMyoFP2z9uM', '2019-02-06 20:41:46', '2019-02-06 20:41:46'),
(7, 'pelayan', 'pelayan@pelayan.com', NULL, '$2y$10$EoIEVK1iqVLyzYOViGkSS.M3oBWemKTIcxucYVb9.25VD2DeZd1Nu', 2, 'k3gcHHLwEfVRnJG2NaCCEC20Err3AWf1Ps5VOvOp36xCOregbxhqA3bHNCaO', '2020-12-15 19:32:26', '2020-12-15 19:32:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activitys`
--
ALTER TABLE `activitys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `entrance_logs`
--
ALTER TABLE `entrance_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mejas`
--
ALTER TABLE `mejas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pesanans_nomor_unique` (`nomor`);

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
-- AUTO_INCREMENT untuk tabel `activitys`
--
ALTER TABLE `activitys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `entrance_logs`
--
ALTER TABLE `entrance_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `mejas`
--
ALTER TABLE `mejas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
