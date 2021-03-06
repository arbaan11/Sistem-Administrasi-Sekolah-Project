-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 06:42 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem-administrasi-sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nama` varchar(100) DEFAULT NULL,
  `nip` int(20) NOT NULL,
  `jeniskelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nama`, `nip`, `jeniskelamin`, `alamat`, `created_at`, `updated_at`) VALUES
('Susi', 2021005678, 'Perempuan', 'Jl. Rambutan', '2021-06-14 08:50:43', '2021-06-14 08:50:43'),
('Rayhan', 2021134080, 'Laki-laki', 'Jl. Banaran', '2021-06-14 08:58:16', '2021-06-14 08:58:16'),
('Adella', 2021338902, 'Perempuan', 'Jl. Sirandu', '2021-06-14 08:54:41', '2021-06-14 08:54:41'),
('Budi', 2021379087, 'Laki-laki', 'Jl. Mangga', '2021-06-14 08:51:29', '2021-06-14 08:51:29'),
('Fuad', 2021389002, 'Laki-laki', 'Jl. Cokro', '2021-06-14 09:02:32', '2021-06-14 09:02:32'),
('Henny', 2021441250, 'Perempuan', 'Jl. Nangka', '2021-06-14 09:00:30', '2021-06-14 09:00:30'),
('Anton', 2021450908, 'Laki-laki', 'Jl. Cokro', '2021-06-14 08:55:13', '2021-06-14 08:55:13'),
('Virna', 2021512009, 'Perempuan', 'Jl. Gahari', '2021-06-14 08:56:58', '2021-06-14 08:56:58'),
('Mila', 2021621224, 'Perempuan', 'Jl. Waru', '2021-06-14 08:53:40', '2021-06-14 08:53:40'),
('Gita', 2021625331, 'Perempuan', 'Jl. Rusak', '2021-06-14 09:03:08', '2021-06-14 09:03:08'),
('Arya', 2021653422, 'Laki-laki', 'Jl. Pisang', '2021-06-14 08:53:00', '2021-06-14 08:53:00'),
('Elena', 2021654009, 'Perempuan', 'Jl. Kalimasada', '2021-06-14 09:02:00', '2021-06-14 09:02:00'),
('Ramzi', 2021678943, 'Laki-laki', 'Jl. Manggis', '2021-06-14 08:52:15', '2021-06-14 08:52:15'),
('Sulis', 2021721321, 'Perempuan', 'Jl. Kalimasada', '2021-06-14 08:59:44', '2021-06-14 08:59:44'),
('Kirno', 2021760900, 'Laki-laki', 'Jl. Cempaka', '2021-06-14 08:59:02', '2021-06-14 08:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `nama` varchar(100) DEFAULT NULL,
  `nip` int(20) NOT NULL,
  `jeniskelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nama`, `nip`, `jeniskelamin`, `alamat`, `created_at`, `updated_at`) VALUES
('Airin', 1981062919, 'Perempuan', 'Jl. Pertama', '2021-06-14 08:31:36', '2021-06-14 08:31:36'),
('Rendi', 1983053076, 'Laki-laki', 'Jl. Rindu', '2021-06-14 08:37:48', '2021-06-14 08:37:48'),
('Raini', 1984102346, 'Perempuan', 'Jl. Santai', '2021-06-14 08:32:26', '2021-06-14 08:32:26'),
('Bara', 1986112254, 'Laki-laki', 'Jl. Rute', '2021-06-14 08:33:10', '2021-06-14 08:33:10'),
('Faiz', 1987092397, 'Laki-laki', 'Jl. Kedua', '2021-06-14 08:39:22', '2021-06-14 08:39:22'),
('Sendi', 1987121423, 'Perempuan', 'Jl. Bersama', '2021-06-14 08:33:53', '2021-06-14 08:33:53'),
('Resa', 1988090892, 'Perempuan', 'Jl. Berhenti', '2021-06-14 08:40:19', '2021-06-14 08:40:19'),
('Rara', 1991062148, 'Perempuan', 'Jl. Sania', '2021-06-14 08:34:32', '2021-06-14 08:34:32'),
('Deki', 1992010288, 'Laki-laki', 'Jl. Sukaindah', '2021-06-14 08:29:36', '2021-06-14 08:30:45'),
('Amanda', 1992121868, 'Perempuan', 'Jl. Kasih', '2021-06-14 08:37:03', '2021-06-14 08:37:03'),
('Dendra', 1993042126, 'Laki-laki', 'Jl. Sukamaju', '2021-06-14 08:30:29', '2021-06-14 08:30:29'),
('Budi', 1995071498, 'Laki-laki', 'Jl. Sulit', '2021-06-14 08:35:11', '2021-06-14 08:35:11'),
('Ira', 1996032658, 'Perempuan', 'Jl. Kangen', '2021-06-14 08:38:38', '2021-06-14 08:38:38'),
('Surya', 1996071261, 'Laki-laki', 'Jl. Setia', '2021-06-14 08:41:47', '2021-06-14 08:41:47'),
('Elang', 1997082135, 'Laki-laki', 'Jl. Awan', '2021-06-14 08:36:24', '2021-06-14 08:36:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(15) NOT NULL,
  `nis` int(15) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(10) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `kode_pembayaran` varchar(100) NOT NULL,
  `total_pembayaran` varchar(100) NOT NULL,
  `jenis_pembayaran` varchar(100) NOT NULL,
  `bukti_pembayaran` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `nis`, `nama`, `kelas`, `tgl_pembayaran`, `kode_pembayaran`, `total_pembayaran`, `jenis_pembayaran`, `bukti_pembayaran`, `created_at`, `updated_at`) VALUES
(1, 1234567, NULL, '10', '2021-06-09', '23456', '23456', 'SPP', 'asdfgh.png', '2021-06-08 10:28:14', '2021-06-08 10:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `presensi`
--

CREATE TABLE `presensi` (
  `nip` int(20) DEFAULT NULL,
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` int(20) NOT NULL,
  `tgl` date NOT NULL,
  `jammasuk` time DEFAULT NULL,
  `jamkeluar` time DEFAULT NULL,
  `jamkerja` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `presensi`
--

INSERT INTO `presensi` (`nip`, `id`, `user_id`, `tgl`, `jammasuk`, `jamkeluar`, `jamkerja`, `created_at`, `updated_at`) VALUES
(NULL, 2, 1, '2021-06-14', '14:51:55', '14:52:01', '00:00:06', '2021-06-14 00:51:55', '2021-06-14 00:52:01');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(20) NOT NULL,
  `id_kelas` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `id_kelas`, `nama`, `jenis_kelamin`, `alamat`, `created_at`, `updated_at`) VALUES
(213043001, 'X MIPA 1', 'Ahmad', 'Laki-laki', 'Jl. Sejahtera', '2021-06-14 08:08:04', '2021-06-14 08:15:03'),
(213043002, 'X MIPA 2', 'Alfina', 'Perempuan', 'Jl. Gaharu', '2021-06-14 08:11:12', '2021-06-14 08:15:16'),
(213043003, 'X MIPA 3', 'Ariqah', 'Perempuan', 'Jl. Mangga', '2021-06-14 08:11:40', '2021-06-14 08:11:40'),
(213043004, 'X MIPA 4', 'Arba\'an', 'Perempuan', 'Jl. in aja', '2021-06-14 08:12:16', '2021-06-14 08:15:42'),
(213043005, 'X MIPA 5', 'Samuel', 'Laki-laki', 'Jl. Manggis', '2021-06-14 08:12:38', '2021-06-14 08:15:53'),
(213043025, 'X IPS 3', 'Anya', 'Perempuan', 'Jl. Rambutan', '2021-06-14 09:39:49', '2021-06-14 09:39:49'),
(213044001, 'XI MIPA 1', 'Abay', 'Laki-laki', 'Jl. Sehati', '2021-06-14 08:16:49', '2021-06-14 08:16:49'),
(213044002, 'XI MIPA 2', 'Audrey', 'Perempuan', 'Jl. Cempaka Sari', '2021-06-14 08:18:02', '2021-06-14 08:18:02'),
(213044003, 'XI MIPA 3', 'Nova', 'Laki-laki', 'Jl. Belimbing', '2021-06-14 08:18:50', '2021-06-14 08:18:50'),
(213044004, 'XI MIPA 4', 'Diana', 'Perempuan', 'Jl. Seharian', '2021-06-14 08:19:24', '2021-06-14 08:19:24'),
(213044005, 'XI MIPA 5', 'Edo', 'Laki-laki', 'Jl. Kelengkeng', '2021-06-14 08:19:53', '2021-06-14 08:19:53'),
(213045001, 'XII MIPA 1', 'Vivin', 'Perempuan', 'Jl. Pete', '2021-06-14 08:20:49', '2021-06-14 08:20:49'),
(213045002, 'XII MIPA 2', 'Tasya', 'Perempuan', 'Jl. Cakrawala', '2021-06-14 08:21:31', '2021-06-14 08:21:31'),
(213045003, 'XII MIPA 3', 'Riyan', 'Laki-laki', 'Jl. Santai', '2021-06-14 08:22:52', '2021-06-14 08:22:52'),
(213045004, 'XII MIPA 4', 'Julian', 'Laki-laki', 'Jl. Sahara', '2021-06-14 08:23:42', '2021-06-14 08:23:42'),
(213045005, 'XII MIPA 5', 'Rangga', 'Laki-laki', 'Jl. Kenangan', '2021-06-14 08:24:20', '2021-06-14 08:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` enum('Admin','Guru','Karyawan','Siswa') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Agus Bayu Pamungkas', 'Admin', 'abay@students.unnes.ac.id', '2021-06-08 10:25:54', '$2y$10$I0a/L3sehabg4KO0UoME/uEHrNJg6VVN3rEPs1mztYf15W.kQCPr6', NULL, '2021-06-08 10:25:54', '2021-06-08 10:25:54'),
(2, 'Ariqah Salma Intannisa', 'Admin', 'ariqahsalma@students.unnes.ac.id', '2021-06-14 07:56:52', '$2y$10$GAce7HYNm3gALnEQA/uvTOCqXptSNItxyDnpEu5eDJuUY4h2V2emq', NULL, '2021-06-14 07:56:52', '2021-06-14 07:56:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
