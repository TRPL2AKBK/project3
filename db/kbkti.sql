-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jun 2024 pada 19.10
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
-- Database: `kbkti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `change_logs`
--

CREATE TABLE `change_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `changes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`changes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `change_logs`
--

INSERT INTO `change_logs` (`id`, `user_id`, `changes`, `created_at`, `updated_at`) VALUES
(5, 1, '{\"name\":{\"old_value\":\"admin\",\"new_value\":\"admink\"},\"email\":{\"old_value\":\"admin@gmail.com\",\"new_value\":\"admink@gmail.com\"}}', '2024-06-12 09:48:08', '2024-06-12 09:48:08'),
(6, 4, '{\"name\":{\"old_value\":\"dosenn\",\"new_value\":\"dosen\"}}', '2024-06-12 13:59:21', '2024-06-12 13:59:21'),
(7, 1, '{\"name\":{\"old_value\":\"admink\",\"new_value\":\"admin\"},\"email\":{\"old_value\":\"admink@gmail.com\",\"new_value\":\"admin@gmail.com\"}}', '2024-06-12 14:00:57', '2024-06-12 14:00:57'),
(9, 1, '{\"image\":{\"old_value\":\"Image\\/lS0CqBuNRAPW78jVn8Fq0kGWCITie0Yd5vXa6YPn.webp\",\"new_value\":\"Image\\/GQ0TZpo6SAoG09CzA8d9chsO46FLPUadvcMC9SrT.png\"}}', '2024-06-12 21:45:44', '2024-06-12 21:45:44'),
(10, 1, '{\"image\":{\"old_value\":\"Image\\/GQ0TZpo6SAoG09CzA8d9chsO46FLPUadvcMC9SrT.png\",\"new_value\":\"Image\\/qwVlwbJaIuM1zIp5VvZHj3AwxxYhpaQRvbyYohiV.png\"}}', '2024-06-14 08:17:58', '2024-06-14 08:17:58');

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
(1, '2024_03_08_185829_create_bidang_keahlian_table', 0),
(2, '2024_03_08_185829_create_dosen_table', 0),
(3, '2024_03_08_185829_create_jurusan_table', 0),
(4, '2024_03_08_185829_create_level_table', 0),
(5, '2024_03_08_185829_create_matkul_table', 0),
(6, '2024_03_08_185829_create_pengurus_kbk_table', 0),
(7, '2024_03_08_185829_create_prodi_table', 0),
(8, '2024_03_08_185829_create_rps_table', 0),
(9, '2024_03_08_185829_create_soal_table', 0),
(10, '2024_03_08_185829_create_tahun_ajaran_table', 0),
(11, '2024_03_08_185829_create_user_table', 0),
(12, '2024_03_08_185829_create_verifikasi_rps_table', 0),
(13, '2024_03_08_185829_create_verifikasi_soal_table', 0),
(14, '2024_03_08_185832_add_foreign_keys_to_dosen_table', 0),
(15, '2024_03_08_185832_add_foreign_keys_to_matkul_table', 0),
(16, '2024_03_08_185832_add_foreign_keys_to_pengurus_kbk_table', 0),
(17, '2024_03_08_185832_add_foreign_keys_to_prodi_table', 0),
(18, '2024_03_08_185832_add_foreign_keys_to_rps_table', 0),
(19, '2024_03_08_185832_add_foreign_keys_to_soal_table', 0),
(20, '2024_03_08_185832_add_foreign_keys_to_user_table', 0),
(21, '2024_03_08_185832_add_foreign_keys_to_verifikasi_rps_table', 0),
(22, '2024_03_08_185832_add_foreign_keys_to_verifikasi_soal_table', 0),
(23, '2024_03_09_110337_create_bidang_keahlian_table', 0),
(24, '2024_03_09_110337_create_dosen_table', 0),
(25, '2024_03_09_110337_create_jurusan_table', 0),
(26, '2024_03_09_110337_create_level_table', 0),
(27, '2024_03_09_110337_create_matkul_table', 0),
(28, '2024_03_09_110337_create_pengurus_kbk_table', 0),
(29, '2024_03_09_110337_create_prodi_table', 0),
(30, '2024_03_09_110337_create_rps_table', 0),
(31, '2024_03_09_110337_create_soal_table', 0),
(32, '2024_03_09_110337_create_tahun_ajaran_table', 0),
(33, '2024_03_09_110337_create_user_table', 0),
(34, '2024_03_09_110337_create_verifikasi_rps_table', 0),
(35, '2024_03_09_110337_create_verifikasi_soal_table', 0),
(36, '2024_03_09_110340_add_foreign_keys_to_dosen_table', 0),
(37, '2024_03_09_110340_add_foreign_keys_to_matkul_table', 0),
(38, '2024_03_09_110340_add_foreign_keys_to_pengurus_kbk_table', 0),
(39, '2024_03_09_110340_add_foreign_keys_to_prodi_table', 0),
(40, '2024_03_09_110340_add_foreign_keys_to_rps_table', 0),
(41, '2024_03_09_110340_add_foreign_keys_to_soal_table', 0),
(42, '2024_03_09_110340_add_foreign_keys_to_user_table', 0),
(43, '2024_03_09_110340_add_foreign_keys_to_verifikasi_rps_table', 0),
(44, '2024_03_09_110340_add_foreign_keys_to_verifikasi_soal_table', 0),
(45, '2024_03_21_174429_create_bidang_keahlian_table', 0),
(46, '2024_03_21_174429_create_dosen_table', 0),
(47, '2024_03_21_174429_create_jurusan_table', 0),
(48, '2024_03_21_174429_create_level_table', 0),
(49, '2024_03_21_174429_create_matkul_table', 0),
(50, '2024_03_21_174429_create_pengurus_kbk_table', 0),
(51, '2024_03_21_174429_create_prodi_table', 0),
(52, '2024_03_21_174429_create_rps_table', 0),
(53, '2024_03_21_174429_create_soal_table', 0),
(54, '2024_03_21_174429_create_tahun_ajaran_table', 0),
(55, '2024_03_21_174429_create_user_table', 0),
(56, '2024_03_21_174429_create_verifikasi_rps_table', 0),
(57, '2024_03_21_174429_create_verifikasi_soal_table', 0),
(58, '2024_03_21_174432_add_foreign_keys_to_dosen_table', 0),
(59, '2024_03_21_174432_add_foreign_keys_to_matkul_table', 0),
(60, '2024_03_21_174432_add_foreign_keys_to_pengurus_kbk_table', 0),
(61, '2024_03_21_174432_add_foreign_keys_to_prodi_table', 0),
(62, '2024_03_21_174432_add_foreign_keys_to_rps_table', 0),
(63, '2024_03_21_174432_add_foreign_keys_to_soal_table', 0),
(64, '2024_03_21_174432_add_foreign_keys_to_user_table', 0),
(65, '2024_03_21_174432_add_foreign_keys_to_verifikasi_rps_table', 0),
(66, '2024_03_21_174432_add_foreign_keys_to_verifikasi_soal_table', 0),
(67, '2024_03_24_081032_create_ref_bidang_keahlian_table', 0),
(68, '2024_03_24_081032_create_ref_dosen_table', 0),
(69, '2024_03_24_081032_create_ref_dosen_matakuliah_table', 0),
(70, '2024_03_24_081032_create_ref_jabatan_pimpinan_table', 0),
(71, '2024_03_24_081032_create_ref_jurusan_table', 0),
(72, '2024_03_24_081032_create_ref_kelas_table', 0),
(73, '2024_03_24_081032_create_ref_kurikulum_table', 0),
(74, '2024_03_24_081032_create_ref_level_table', 0),
(75, '2024_03_24_081032_create_ref_matakuliah_table', 0),
(76, '2024_03_24_081032_create_ref_pengurus_kbk_table', 0),
(77, '2024_03_24_081032_create_ref_pimpinan_jurusan_table', 0),
(78, '2024_03_24_081032_create_ref_pimpinan_prodi_table', 0),
(79, '2024_03_24_081032_create_ref_prodi_table', 0),
(80, '2024_03_24_081032_create_ref_rps_table', 0),
(81, '2024_03_24_081032_create_ref_smt_thn_akd_table', 0),
(82, '2024_03_24_081032_create_ref_soal_table', 0),
(83, '2024_03_24_081032_create_user_table', 0),
(84, '2024_03_24_081032_create_verifikasi_rps_table', 0),
(85, '2024_03_24_081032_create_verifikasi_soal_table', 0),
(86, '2024_03_24_081035_add_foreign_keys_to_ref_pengurus_kbk_table', 0),
(87, '2024_03_24_081035_add_foreign_keys_to_ref_rps_table', 0),
(88, '2024_03_24_081035_add_foreign_keys_to_ref_soal_table', 0),
(89, '2024_03_24_081035_add_foreign_keys_to_user_table', 0),
(90, '2024_03_24_081035_add_foreign_keys_to_verifikasi_rps_table', 0),
(91, '2024_03_24_081035_add_foreign_keys_to_verifikasi_soal_table', 0),
(98, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(99, '2024_06_08_161301_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('spongebob.jomblo@gmail.com', 'BQIXZYGUraXdsF9j7Ae0FL2B7xAh15z4Qo4uwMeINyyUBvmUYBHeBf3rYhRj', '2024-06-09 12:06:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Struktur dari tabel `ref_dosen`
--

CREATE TABLE `ref_dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nidn` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ref_dosen`
--

INSERT INTO `ref_dosen` (`id_dosen`, `nama`, `nidn`, `nip`, `gender`, `id_jurusan`, `id_prodi`, `email`, `image`, `status`) VALUES
(13, 'ALDE ALANDA, S.Kom, M.T', '0025088802', '198808252015041002', 'Laki-laki', 7, 19, 'alde@pnp.ac.id', '', '0'),
(14, 'ALDO ERIANDA, M.T, S.ST', '003078904', '198907032019031015', 'Laki-laki', 7, 18, 'aldo@pnp.ac.id', '', '0'),
(40, 'CIPTO PRABOWO, S.T, M.T', '0002037410', '197403022008121001', 'Laki-laki', 7, 19, 'cipto@pnp.ac.id', '', '0'),
(46, 'DEDDY PRAYAMA, S.Kom, M.ISD', '0015048105', '198104152006041002', 'Laki-laki', 7, 19, 'deddy@pnp.ac.id', '', '0'),
(50, 'DEFNI, S.Si, M.Kom', '0007128104', '198112072008122001', 'Perempuan', 7, 18, 'defni@pnp.ac.id', '', '0'),
(52, 'DENI SATRIA, S.Kom, M.Kom', '0028097803', '197809282008121002', 'Laki-laki', 7, 18, 'dns1st@gmail.com', '', '0'),
(66, 'DWINY MEIDELFI, S.Kom, M.Cs', '0009058601', '198605092014042001', 'Perempuan', 7, 20, 'dwinymeidelfi@pnp.ac.id', '', '0'),
(85, 'ERVAN ASRI, S.Kom, M.Kom', '0001097802', '197809012008121001', 'Laki-laki', 7, 18, 'ervan@pnp.ac.id', '', '0'),
(91, 'FAZROL ROZI, M.Sc.', '0021078601', '19860721201012006', 'Laki-laki', 7, 19, 'fazrol@pnp.ac.id', '', '0'),
(103, 'FITRI NOVA, M.T, S.ST', '1029058502', '198505292014042001', 'Perempuan', 7, 19, 'fitrinova85@gmail.com', '', '0'),
(109, 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', '0010056606', '196605101994031003', 'Laki-laki', 7, 19, 'mooduto@pnp.ac.id', '', '0'),
(116, 'HENDRICK, S.T, M.T.,Ph.D', '0002127705', '197712022006041000', 'Laki-laki', 4, 7, 'hendrickpnp77@gmail.com', '', '0'),
(121, 'HIDRA AMNUR, S.E., S.Kom, M.Kom', '0015048209', '198204152012121002', 'Laki-laki', 7, 18, 'hidra@pnp.ac.id', '', '0'),
(122, 'HUMAIRA, S.T, M.T', '0019038103', '198103192006042002', 'Perempuan', 7, 20, 'humaira@pnp.ac.id', '', '0'),
(127, 'IKHSAN YUSDA PRIMA PUTRA, S.H., LL.M', '0001107505', '197510012006041002', 'Laki-laki', 7, 19, '', '', '0'),
(132, 'INDRI RAHMAYUNI, S.T, M.T', '0025068301', '198306252008012004', 'Perempuan', 7, 20, 'indri@pnp.ac.id', '', '0'),
(160, 'MERI AZMI, S.T, M.Cs', '0029068102', '198106292006042001', 'Perempuan', 7, 18, 'meriazmi@gmail.com', '', '0'),
(198, 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', '1015047801', '197804152000121002', 'Laki-laki', 7, 20, 'rahmat@pnp.ac.id', '', '0'),
(206, 'RASYIDAH, S.Si, M.M.', '0001067407', '197406012006042001', 'Perempuan', 7, 18, 'rasyidah@pnp.ac.id', '', '0'),
(212, 'RIKA IDMAYANTI, S.T, M.Kom', '0022017806', '197801222009122002', 'Perempuan', 7, 20, 'rikaidmayanti@pnp.ac.id', '', '0'),
(220, 'RITA AFYENNI, S.Kom, M.Kom', '0018077099', '197007182008012010', 'Perempuan', 7, 18, 'ritaafyenni@pnp.ac.id', '', '0'),
(223, 'RONAL HADI, S.T, M.Kom', '0029017603', '197601292002121001', 'Laki-laki', 7, 19, 'ronalhadi@pnp.ac.id', '', '0'),
(258, 'TAUFIK GUSMAN,  S.S.T, M.Ds', '0010088805', ' 19880810 201903 1 012', 'Laki-laki', 7, 18, 'taufikgusman@gmail.com', '', '0'),
(277, 'YANCE SONATHA, S.Kom, M.T', '0029128003', '198012292006042001', 'Perempuan', 7, 18, 'sonatha.yance@gmail.com', '', '0'),
(289, 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', '0013017604', '197601132006041002', 'Laki-laki', 7, 18, 'yuhefizar@pnp.ac.id', '', '0'),
(292, 'YULHERNIWATI, S.Kom, M.T', '0019077609', '197607192008012017', 'Perempuan', 7, 20, 'yulherniwati@pnp.ac.id', '', '0'),
(310, 'TRI LESTARI, S.Pd.,M.Eng.', '0005039205', '199203052019032025', 'Perempuan', 7, 18, 'trilestari0503@gmail.com', '', '0'),
(311, 'Fanni Sukma, S.ST., M.T', '0006069009', '199006062019032026', 'Perempuan', 7, 20, 'fannisukma@pnp.ac.id', '', '0'),
(312, 'Andre Febrian Kasmar, S.T., M.T.', '0020028804', '198802202019031009', 'Laki-laki', 7, 20, 'andrefebrian@pnp.ac.id', '', '0'),
(351, 'RONI PUTRA, S.Kom, M.T ', '0022078607', '198607222009121004', 'Laki-laki', 7, 18, 'rn.putra@gmail.com', '', '0'),
(352, 'Ardi Syawaldipa, S.Kom.,M.T.', '0029058909', '19890529 202012 1 003', 'Laki-laki', 7, 19, 'ardi.syawaldipa@gmail.com', '', '0'),
(353, 'Harfebi Fryonanda, S.Kom., M.Kom', '0310119101', '19911110 202203 1 008', 'Laki-laki', 7, 20, 'harfebi@pnp.ac.id', '', '0'),
(354, 'Ideva Gaputra, S.Kom., M.Kom', '0012098808', '198809122022031006', 'Laki-laki', 7, 19, 'idevagaputra@pnp.ac.id', '', '0'),
(355, 'Yulia Jihan Sy, S.Kom., M.Kom', '1017078904', '19890717 202203 2 010', 'Perempuan', 7, 19, 'yulia@pnp.ac.id', '', '0'),
(356, 'Andrew Kurniawan Vadreas, S.Kom., M.T	', '1021028702', '19870221 202203 1 001', 'Laki-laki', 7, 18, 'andrew@pnp.ac.id', '', '0'),
(357, 'YORI ADI ATMA, S.Pd., M.Kom', '2010059001', '19900510 202203 1 002', 'Laki-laki', 7, 18, 'yori@pnp.ac.id', '', '0'),
(358, 'Dr. Ulya Ilhami Arsyah, S.Kom., M.Kom', '0130039101', '19910330 202203 1 004', 'Laki-laki', 7, 20, 'ulya@pnp.ac.id', '', '0'),
(359, 'Hendra Rotama, S.Pd., M.Sn', '0218068801', '19880618 202203 1 003', 'Laki-laki', 7, 19, 'hendrarotama@pnp.ac.id', '', '0'),
(360, 'Sumema, S.Ds., M.Ds', '0008069103', '19910608 202203 2 006', 'Perempuan', 7, 19, 'sumema@pnp.ac.id', '', '0'),
(361, 'Raemon Syaljumairi, S.Kom., M.Kom', '0017078407', '19840717 201012 1 002', 'Laki-laki', 7, 19, 'raemon_syaljumairi@pnp.ac.id', '', '0'),
(362, 'Mutia Rahmi Dewi, S.Kom., M.Kom', '0004099601', '19960904 202203 2 018', 'Perempuan', 7, 20, 'mutiarahmi@pnp.ac.id', '', '0'),
(363, 'Novi, S.Kom., M.T', '0001118611', '19861101 202203 2 003', 'Perempuan', 7, 19, 'novi@pnp.ac.id', '', '0'),
(364, 'Rahmi Putri Kurnia, S.Kom., M.Kom', '0027089303', '19930827 202203 2 012', 'Perempuan', 7, 19, 'rahmiputri@pnp.ac.id', '', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_dosen_kbk`
--

CREATE TABLE `ref_dosen_kbk` (
  `id_dosenkbk` int(11) NOT NULL,
  `nidn` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kbk` int(11) NOT NULL,
  `id_jabatan_kbk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_dosen_kbk`
--

INSERT INTO `ref_dosen_kbk` (`id_dosenkbk`, `nidn`, `id_kbk`, `id_jabatan_kbk`) VALUES
(1, '0019038103', 5, 1),
(2, '0025088802', 3, 1),
(3, '0009058601', 1, 1),
(4, '0218068801', 2, 1),
(5, '0008069103', 4, 1),
(6, '0015048105', 5, 3),
(7, '0021078601', 3, 3),
(8, '0022017806', 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_dosen_matakuliah`
--

CREATE TABLE `ref_dosen_matakuliah` (
  `id_dosen_matakuliah` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_smt_thn_akd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_dosen_matakuliah`
--

INSERT INTO `ref_dosen_matakuliah` (`id_dosen_matakuliah`, `id_dosen`, `id_matakuliah`, `id_kelas`, `id_smt_thn_akd`) VALUES
(1, 220, 13, 1, 3),
(2, 66, 14, 2, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_jabatan_kbk`
--

CREATE TABLE `ref_jabatan_kbk` (
  `id_jabatan_kbk` int(11) NOT NULL,
  `nama_jabatan_kbk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_jabatan_kbk`
--

INSERT INTO `ref_jabatan_kbk` (`id_jabatan_kbk`, `nama_jabatan_kbk`) VALUES
(1, 'ketua'),
(2, 'sekretaris'),
(3, 'anggota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_jabatan_pimpinan`
--

CREATE TABLE `ref_jabatan_pimpinan` (
  `id_jabatan_pimpinan` int(11) NOT NULL,
  `jabatan_pimpinan` varchar(20) NOT NULL,
  `kode_jabatan_pimpinan` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_jabatan_pimpinan`
--

INSERT INTO `ref_jabatan_pimpinan` (`id_jabatan_pimpinan`, `jabatan_pimpinan`, `kode_jabatan_pimpinan`, `status`) VALUES
(1, 'Ketua Jurusan', 'KAJUR', '1'),
(2, 'Sekretaris Jurusan', 'SEKJUR', '1'),
(3, 'Koordinator Program ', 'KAPRODI', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_jurusan`
--

CREATE TABLE `ref_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `kode_jurusan` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ref_jurusan`
--

INSERT INTO `ref_jurusan` (`id_jurusan`, `kode_jurusan`, `jurusan`) VALUES
(1, 'AM', 'Administrasi Niaga'),
(2, 'AK', 'Akuntansi'),
(3, 'BI', 'Bahasa Inggris'),
(4, 'EE', 'Teknik Elektro'),
(5, 'ME', 'Teknik Mesin'),
(6, 'SP', 'Teknik Sipil'),
(7, 'TI', 'Teknologi Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kbk`
--

CREATE TABLE `ref_kbk` (
  `id_kbk` int(11) NOT NULL,
  `kode_kbk` varchar(50) NOT NULL,
  `nama_kbk` varchar(50) NOT NULL,
  `ketua_kbk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_kbk`
--

INSERT INTO `ref_kbk` (`id_kbk`, `kode_kbk`, `nama_kbk`, `ketua_kbk`) VALUES
(1, 'SOFTAM', 'fghj', 1),
(2, 'CAIT', '', 2),
(3, 'Programming', '', 3),
(4, 'NCS', '', 4),
(5, 'Multimediaa', '', 5),
(19, 'Baru', '', 6),
(20, 'fghjkl', '7fgucx', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kelas`
--

CREATE TABLE `ref_kelas` (
  `id_kelas` int(11) NOT NULL,
  `kode_kelas` varchar(10) NOT NULL,
  `nama_kelas` varchar(20) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_smt_thn_akd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_kelas`
--

INSERT INTO `ref_kelas` (`id_kelas`, `kode_kelas`, `nama_kelas`, `id_prodi`, `id_smt_thn_akd`) VALUES
(1, 'TRPL1A', 'TRPL 1A', 20, 1),
(2, 'TRPL1B', 'TRPL 1B', 20, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_kurikulum`
--

CREATE TABLE `ref_kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `kode_kurikulum` varchar(20) NOT NULL,
  `nama_kurikulum` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_kurikulum`
--

INSERT INTO `ref_kurikulum` (`id_kurikulum`, `kode_kurikulum`, `nama_kurikulum`, `tahun`, `id_prodi`, `status`) VALUES
(1, 'KUR TRPL 2017', 'Kurikulum TRPL 2017', 2017, 20, '0'),
(2, 'KUR TRPL  2017 REV', 'Kurikulum TRPL 2017 Revisi', 2020, 20, '0'),
(3, 'KUR TRPL 2022', 'Kurikulum TRPL 2022', 2022, 20, '1'),
(4, 'KUR TRPL 2022 V.1', 'Kurikulum TRPL 2022 Versi 1', 2023, 20, '1'),
(5, 'KUR TRPL  2022 V.2', 'Kurikulum TRPL 2022 Versi 2', 2024, 20, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_level`
--

CREATE TABLE `ref_level` (
  `id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_level`
--

INSERT INTO `ref_level` (`id`, `level`) VALUES
(1, 'admin'),
(2, 'kbk'),
(3, 'kaprodi'),
(4, 'dosen'),
(5, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_mahasiswa`
--

CREATE TABLE `ref_mahasiswa` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `nobp` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `prodi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_mahasiswa`
--

INSERT INTO `ref_mahasiswa` (`id`, `user_id`, `nobp`, `nama`, `telp`, `alamat`, `prodi_id`) VALUES
(1, 2424343, '2211083042', 'Muhammad Amir Shafwan', '08123456789', 'padang', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_matakuliah`
--

CREATE TABLE `ref_matakuliah` (
  `id_matakuliah` int(11) NOT NULL,
  `kode_matakuliah` varchar(10) DEFAULT NULL,
  `nama_matakuliah` varchar(50) DEFAULT NULL,
  `TP` enum('T','P','T/P') NOT NULL COMMENT 'Bentuk perkuliahan',
  `sks` int(11) DEFAULT NULL,
  `jam` int(11) NOT NULL,
  `sks_teori` int(11) NOT NULL,
  `sks_praktek` int(11) NOT NULL,
  `jam_teori` int(11) NOT NULL,
  `jam_praktek` int(11) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `id_kurikulum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_matakuliah`
--

INSERT INTO `ref_matakuliah` (`id_matakuliah`, `kode_matakuliah`, `nama_matakuliah`, `TP`, `sks`, `jam`, `sks_teori`, `sks_praktek`, `jam_teori`, `jam_praktek`, `semester`, `id_kurikulum`) VALUES
(13, 'RPL3205', 'Pengantar Rekayasa Perangkat Lunak', 'T', 2, 2, 2, 0, 2, 0, 2, 5),
(14, 'RPL3203', 'Basis Data', 'P', 2, 2, 3, 2, 2, 2, 3, 5),
(15, 'RPL3204', 'Kecerdasan buatan', 'P', 2, 2, 3, 2, 2, 2, 3, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_matakuliah_kbk`
--

CREATE TABLE `ref_matakuliah_kbk` (
  `id_matakuliahkbk` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_kbk` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_matakuliah_kbk`
--

INSERT INTO `ref_matakuliah_kbk` (`id_matakuliahkbk`, `id_matakuliah`, `id_kbk`, `id_kurikulum`) VALUES
(15, 13, 1, 2),
(16, 15, 5, 3),
(17, 14, 4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pimpinan_jurusan`
--

CREATE TABLE `ref_pimpinan_jurusan` (
  `id_pimpinan_jurusan` int(11) NOT NULL,
  `id_jabatan_pimpinan` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `periode` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_pimpinan_jurusan`
--

INSERT INTO `ref_pimpinan_jurusan` (`id_pimpinan_jurusan`, `id_jabatan_pimpinan`, `id_jurusan`, `id_dosen`, `periode`, `status`) VALUES
(1, 1, 7, 223, '2022-2026', '1'),
(2, 2, 7, 122, '2022-2026', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_pimpinan_prodi`
--

CREATE TABLE `ref_pimpinan_prodi` (
  `id_pimpinan_prodi` int(11) NOT NULL,
  `id_jabatan_pimpinan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `periode` varchar(10) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_pimpinan_prodi`
--

INSERT INTO `ref_pimpinan_prodi` (`id_pimpinan_prodi`, `id_jabatan_pimpinan`, `id_prodi`, `id_dosen`, `periode`, `status`) VALUES
(1, 3, 20, 160, '2022-2026', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_prodi`
--

CREATE TABLE `ref_prodi` (
  `id_prodi` int(11) NOT NULL,
  `kode_prodi` varchar(10) NOT NULL,
  `prodi` varchar(500) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_jenjang` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ref_prodi`
--

INSERT INTO `ref_prodi` (`id_prodi`, `kode_prodi`, `prodi`, `id_jurusan`, `id_jenjang`) VALUES
(7, '4EC', 'D4 - Teknik Elektronika', 4, 'D4'),
(18, '3MI', 'Manajemen Informatika D-3', 7, 'D3'),
(19, '3TK', 'Teknik Komputer D-3', 7, 'D3'),
(20, '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 7, 'D4'),
(21, '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', 7, 'D3'),
(22, '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', 7, 'D3'),
(23, '3MI-P', 'Manajemen Informatika (Pelalawan)', 7, 'D3'),
(27, '4AM', 'Animasi', 7, 'D47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_proposal_ta`
--

CREATE TABLE `ref_proposal_ta` (
  `id_proposal_ta` int(11) NOT NULL,
  `nobp` int(11) UNSIGNED NOT NULL,
  `dokumen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_proposal_ta`
--

INSERT INTO `ref_proposal_ta` (`id_proposal_ta`, `nobp`, `dokumen`) VALUES
(4, 2211083042, 'proposal.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_rps`
--

CREATE TABLE `ref_rps` (
  `id_rps` int(11) NOT NULL,
  `id_matakuliah_kbk` int(11) NOT NULL,
  `versi_rps` varchar(20) NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `id_dosen_pengembang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_rps`
--

INSERT INTO `ref_rps` (`id_rps`, `id_matakuliah_kbk`, `versi_rps`, `dokumen`, `id_dosen_pengembang`) VALUES
(42, 15, '1', 'RPS/TfVecLXJAKhs85609mWzlBhrG2H1tN9BKyD9jfQH.pdf', 6),
(43, 15, '12', 'RPS/I2UFm49R4BAZG7CJJv7WeI2hHT9WuEZOzokjbzy6.pdf', 4),
(45, 16, '2', 'RPS/UlC96zN1dbFUQDi0xOhqFmJniV7iXSPsFauxZDl3.pdf', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_smt_thn_akd`
--

CREATE TABLE `ref_smt_thn_akd` (
  `id_smt_thn_akd` int(11) NOT NULL,
  `smt_thn_akd` varchar(30) NOT NULL,
  `status` enum('1','0') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_smt_thn_akd`
--

INSERT INTO `ref_smt_thn_akd` (`id_smt_thn_akd`, `smt_thn_akd`, `status`) VALUES
(1, '2022/2023-Genap', '0'),
(2, '2023/2024-Ganjil', '0'),
(3, '2023/2024-Genap', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ref_soal`
--

CREATE TABLE `ref_soal` (
  `id_soal` int(11) NOT NULL,
  `id_matakuliah_kbk` int(11) NOT NULL,
  `dosen_pengampu` varchar(50) NOT NULL,
  `dokumen` varchar(100) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ref_soal`
--

INSERT INTO `ref_soal` (`id_soal`, `id_matakuliah_kbk`, `dosen_pengampu`, `dokumen`, `id_tahun_akademik`) VALUES
(7, 15, '6', 'SOAL/r2ZlodvJ9kqjhpS0RIOFk3hm7Sra1QjtPacNDcaj.pdf', 2),
(8, 15, '4', 'SOAL/chnyv10iFar5U16mR4ORYVNejaOInKVdlCo8qQeS.xlsx', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(2, 'user', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(3, 'admin', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(4, 'dosen pengampu', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(5, 'pengurus kbk', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(6, 'dosen kbk', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(7, 'pimpinan prodi', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(8, 'pimpinan jurusan', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40'),
(9, 'pengguna umum', 'web', '2024-06-12 07:12:40', '2024-06-12 07:12:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `nidn` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '12345678',
  `id_level` int(11) NOT NULL DEFAULT 5,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nidn`, `name`, `email`, `password`, `id_level`, `image`, `created_at`, `updated_at`) VALUES
(1, '0019038103', 'admin', 'admin@gmail.com', '$2y$12$qxGy4KGlitBr1xE5CABEQOiMlT54hEEshiCpE8avgk1UUBlmvm.Fm', 1, NULL, '2024-06-16 10:07:12', '2024-06-16 10:07:12'),
(2, '0025088802', 'ketua kbk', 'kbk@gmail.com', '$2y$12$uzPXJn.N/x4UJbnWXjMfFeGlUMvRFpEPBFyWsqOSs/psXdTT0DAGG', 2, NULL, '2024-06-16 10:07:12', '2024-06-16 10:07:12'),
(3, '0009058601', 'kaprodi', 'kaprodi@gmail.com', '$2y$12$QFKtFRXx7S.yH0PM1hu6X.Bafe2ROgOr1MZh/ooHPg/vUp1ye0DI6', 3, NULL, '2024-06-16 10:07:12', '2024-06-16 10:07:12'),
(4, '0218068801', 'dosen', 'dosen@gmail.com', '$2y$12$oF65QStsu1O5vOidHxQcU.72KxjZK02raedGmkJ5Wc7I.nfqO1Z5e', 4, NULL, '2024-06-16 10:07:13', '2024-06-16 10:07:13'),
(5, '0008069103', 'user', 'user@gmail.com', '$2y$12$59czMgwY2AxjMIfXfKkP0.6ATI9fTqQ4qxgXn5BuquZug2QYwEFGq', 5, NULL, '2024-06-16 10:07:13', '2024-06-16 10:07:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi_rps`
--

CREATE TABLE `verifikasi_rps` (
  `id_verif_rps` int(11) NOT NULL,
  `id_rps` int(11) DEFAULT NULL,
  `verifikator1` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `verifikator2` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `status1` varchar(10) DEFAULT NULL,
  `status2` varchar(10) DEFAULT NULL,
  `komentar1` varchar(100) DEFAULT NULL,
  `komentar2` varchar(100) DEFAULT NULL,
  `tanggal1` date DEFAULT NULL,
  `tanggal2` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `verifikasi_rps`
--

INSERT INTO `verifikasi_rps` (`id_verif_rps`, `id_rps`, `verifikator1`, `verifikator2`, `status1`, `status2`, `komentar1`, `komentar2`, `tanggal1`, `tanggal2`) VALUES
(20, 42, NULL, '2', NULL, 'terima', NULL, NULL, NULL, '2024-06-12'),
(21, 43, NULL, '1', NULL, 'terima', NULL, NULL, NULL, '2024-06-13'),
(23, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `verifikasi_soal`
--

CREATE TABLE `verifikasi_soal` (
  `id_verif_soal` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `verifikator1` varchar(11) DEFAULT NULL,
  `verifikator2` varchar(11) DEFAULT NULL,
  `status1` varchar(10) DEFAULT NULL,
  `status2` varchar(10) DEFAULT NULL,
  `komentar1` varchar(100) DEFAULT NULL,
  `komentar2` varchar(100) DEFAULT NULL,
  `tanggal1` date DEFAULT NULL,
  `tanggal2` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `verifikasi_soal`
--

INSERT INTO `verifikasi_soal` (`id_verif_soal`, `id_soal`, `verifikator1`, `verifikator2`, `status1`, `status2`, `komentar1`, `komentar2`, `tanggal1`, `tanggal2`) VALUES
(6, 7, '3', '2', 'terima', 'terima', 'gg', 'anjay', '2024-06-06', '2024-06-06'),
(7, 8, NULL, '2', NULL, 'tolak', NULL, 'ok', NULL, '2024-06-12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `change_logs`
--
ALTER TABLE `change_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `ref_dosen`
--
ALTER TABLE `ref_dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `nidn` (`nidn`);

--
-- Indeks untuk tabel `ref_dosen_kbk`
--
ALTER TABLE `ref_dosen_kbk`
  ADD PRIMARY KEY (`id_dosenkbk`),
  ADD KEY `fk_jabatan_kbk` (`id_jabatan_kbk`),
  ADD KEY `fk_kbk` (`id_kbk`),
  ADD KEY `fk_dosenkbk_nidn` (`nidn`);

--
-- Indeks untuk tabel `ref_dosen_matakuliah`
--
ALTER TABLE `ref_dosen_matakuliah`
  ADD PRIMARY KEY (`id_dosen_matakuliah`);

--
-- Indeks untuk tabel `ref_jabatan_kbk`
--
ALTER TABLE `ref_jabatan_kbk`
  ADD PRIMARY KEY (`id_jabatan_kbk`);

--
-- Indeks untuk tabel `ref_jabatan_pimpinan`
--
ALTER TABLE `ref_jabatan_pimpinan`
  ADD PRIMARY KEY (`id_jabatan_pimpinan`);

--
-- Indeks untuk tabel `ref_jurusan`
--
ALTER TABLE `ref_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `ref_kbk`
--
ALTER TABLE `ref_kbk`
  ADD PRIMARY KEY (`id_kbk`),
  ADD KEY `fk_kbk_ketua` (`ketua_kbk`);

--
-- Indeks untuk tabel `ref_kelas`
--
ALTER TABLE `ref_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `ref_kurikulum`
--
ALTER TABLE `ref_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indeks untuk tabel `ref_level`
--
ALTER TABLE `ref_level`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ref_mahasiswa`
--
ALTER TABLE `ref_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nobp` (`nobp`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `fk_mahasiswa_prodi` (`prodi_id`);

--
-- Indeks untuk tabel `ref_matakuliah`
--
ALTER TABLE `ref_matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- Indeks untuk tabel `ref_matakuliah_kbk`
--
ALTER TABLE `ref_matakuliah_kbk`
  ADD PRIMARY KEY (`id_matakuliahkbk`),
  ADD KEY `fk_matakuliah_kbk` (`id_matakuliah`),
  ADD KEY `fk_id_kbk` (`id_kbk`),
  ADD KEY `fk_kurikulum_kbk` (`id_kurikulum`);

--
-- Indeks untuk tabel `ref_pimpinan_jurusan`
--
ALTER TABLE `ref_pimpinan_jurusan`
  ADD PRIMARY KEY (`id_pimpinan_jurusan`);

--
-- Indeks untuk tabel `ref_pimpinan_prodi`
--
ALTER TABLE `ref_pimpinan_prodi`
  ADD PRIMARY KEY (`id_pimpinan_prodi`);

--
-- Indeks untuk tabel `ref_prodi`
--
ALTER TABLE `ref_prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`),
  ADD KEY `jenjang_fk` (`id_jenjang`);

--
-- Indeks untuk tabel `ref_proposal_ta`
--
ALTER TABLE `ref_proposal_ta`
  ADD PRIMARY KEY (`id_proposal_ta`),
  ADD UNIQUE KEY `nobp` (`nobp`);

--
-- Indeks untuk tabel `ref_rps`
--
ALTER TABLE `ref_rps`
  ADD PRIMARY KEY (`id_rps`),
  ADD KEY `fk_rps_matakuliah` (`id_matakuliah_kbk`) USING BTREE,
  ADD KEY `fk_pengembng_rps` (`id_dosen_pengembang`);

--
-- Indeks untuk tabel `ref_smt_thn_akd`
--
ALTER TABLE `ref_smt_thn_akd`
  ADD PRIMARY KEY (`id_smt_thn_akd`);

--
-- Indeks untuk tabel `ref_soal`
--
ALTER TABLE `ref_soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `fk_soal_matakuliah` (`id_matakuliah_kbk`) USING BTREE,
  ADD KEY `fk_soal_tahun` (`id_tahun_akademik`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_nidn_index` (`nidn`),
  ADD KEY `user_id_level_index` (`id_level`);

--
-- Indeks untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  ADD PRIMARY KEY (`id_verif_rps`),
  ADD KEY `fk_verif_rps` (`id_rps`);

--
-- Indeks untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  ADD PRIMARY KEY (`id_verif_soal`),
  ADD KEY `fk_verif_soal` (`id_soal`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `change_logs`
--
ALTER TABLE `change_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ref_dosen`
--
ALTER TABLE `ref_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;

--
-- AUTO_INCREMENT untuk tabel `ref_dosen_kbk`
--
ALTER TABLE `ref_dosen_kbk`
  MODIFY `id_dosenkbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ref_dosen_matakuliah`
--
ALTER TABLE `ref_dosen_matakuliah`
  MODIFY `id_dosen_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ref_jabatan_kbk`
--
ALTER TABLE `ref_jabatan_kbk`
  MODIFY `id_jabatan_kbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ref_jurusan`
--
ALTER TABLE `ref_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `ref_kbk`
--
ALTER TABLE `ref_kbk`
  MODIFY `id_kbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `ref_kelas`
--
ALTER TABLE `ref_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ref_kurikulum`
--
ALTER TABLE `ref_kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ref_level`
--
ALTER TABLE `ref_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ref_mahasiswa`
--
ALTER TABLE `ref_mahasiswa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ref_matakuliah`
--
ALTER TABLE `ref_matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `ref_matakuliah_kbk`
--
ALTER TABLE `ref_matakuliah_kbk`
  MODIFY `id_matakuliahkbk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `ref_pimpinan_jurusan`
--
ALTER TABLE `ref_pimpinan_jurusan`
  MODIFY `id_pimpinan_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ref_pimpinan_prodi`
--
ALTER TABLE `ref_pimpinan_prodi`
  MODIFY `id_pimpinan_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ref_prodi`
--
ALTER TABLE `ref_prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `ref_proposal_ta`
--
ALTER TABLE `ref_proposal_ta`
  MODIFY `id_proposal_ta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ref_rps`
--
ALTER TABLE `ref_rps`
  MODIFY `id_rps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `ref_smt_thn_akd`
--
ALTER TABLE `ref_smt_thn_akd`
  MODIFY `id_smt_thn_akd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `ref_soal`
--
ALTER TABLE `ref_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1053;

--
-- AUTO_INCREMENT untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  MODIFY `id_verif_rps` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  MODIFY `id_verif_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ref_dosen_kbk`
--
ALTER TABLE `ref_dosen_kbk`
  ADD CONSTRAINT `fk_dosenkbk_nidn` FOREIGN KEY (`nidn`) REFERENCES `ref_dosen` (`nidn`),
  ADD CONSTRAINT `fk_jabatan_kbk` FOREIGN KEY (`id_jabatan_kbk`) REFERENCES `ref_jabatan_kbk` (`id_jabatan_kbk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kbk` FOREIGN KEY (`id_kbk`) REFERENCES `ref_kbk` (`id_kbk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ref_kbk`
--
ALTER TABLE `ref_kbk`
  ADD CONSTRAINT `fk_kbk_ketua` FOREIGN KEY (`ketua_kbk`) REFERENCES `ref_dosen_kbk` (`id_dosenkbk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ref_mahasiswa`
--
ALTER TABLE `ref_mahasiswa`
  ADD CONSTRAINT `fk_mahasiswa_prodi` FOREIGN KEY (`prodi_id`) REFERENCES `ref_prodi` (`id_prodi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ref_matakuliah_kbk`
--
ALTER TABLE `ref_matakuliah_kbk`
  ADD CONSTRAINT `fk_id_kbk` FOREIGN KEY (`id_kbk`) REFERENCES `ref_kbk` (`id_kbk`),
  ADD CONSTRAINT `fk_kurikulum_kbk` FOREIGN KEY (`id_kurikulum`) REFERENCES `ref_kurikulum` (`id_kurikulum`),
  ADD CONSTRAINT `fk_matakuliah_kbk` FOREIGN KEY (`id_matakuliah`) REFERENCES `ref_matakuliah` (`id_matakuliah`);

--
-- Ketidakleluasaan untuk tabel `ref_rps`
--
ALTER TABLE `ref_rps`
  ADD CONSTRAINT `fk_rps_matakuliah` FOREIGN KEY (`id_matakuliah_kbk`) REFERENCES `ref_matakuliah_kbk` (`id_matakuliahkbk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ref_soal`
--
ALTER TABLE `ref_soal`
  ADD CONSTRAINT `fk_soal_matakuliah` FOREIGN KEY (`id_matakuliah_kbk`) REFERENCES `ref_matakuliah_kbk` (`id_matakuliahkbk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_soal_tahun` FOREIGN KEY (`id_tahun_akademik`) REFERENCES `ref_smt_thn_akd` (`id_smt_thn_akd`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_rps`
--
ALTER TABLE `verifikasi_rps`
  ADD CONSTRAINT `fk_verif_rps` FOREIGN KEY (`id_rps`) REFERENCES `ref_rps` (`id_rps`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `verifikasi_soal`
--
ALTER TABLE `verifikasi_soal`
  ADD CONSTRAINT `fk_verif_soal` FOREIGN KEY (`id_soal`) REFERENCES `ref_soal` (`id_soal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
